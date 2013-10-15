<?php

namespace Shop\ProductBundle\Controller;

use Shop\ProductBundle\Entity\ShippingDetail;
use Shop\ProductBundle\Form\ShippingType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Shop\ProductBundle\Entity\Cart;
use Shop\ProductBundle\Entity\Shipping;
use Shop\ProductBundle\Form\CartType;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\Security\Core\SecurityContext;

/**
 * Cart controller.
 *
 * @Route("/cart")
 */
class CartController extends Controller
{
    /**
     * Add selected product to cart or increase quantity by 1
     *
     * @Route("/add", name="cart_add")
     * @MEthod("GET")
     * @Template("ProductBundle:Cart:cart.html.twig")
     */
    public function addAction(Request $request)
    {
        $selectedProductId = $request->get('productId');
        $sessionId = $request->getSession()->getId();

        $criteria = array(
            'product' => $selectedProductId,
            'sessionId' => $sessionId,
        );
        $em = $this->getDoctrine()->getManager();
        $existingProduct = $em->getRepository('ProductBundle:Cart')->findOneBy($criteria);
        $selectedProduct = $em->getRepository('ProductBundle:Product')->findOneBy(array(
            'id' => $selectedProductId,
        ));

        if(!$existingProduct)
        {
            $qty = 1;

            $cart = new Cart();
            $cart->setSessionId($sessionId);
            $cart->setProduct($selectedProduct);
            $cart->setQuantity($qty);

            $em->persist($cart);
            $em->flush();
        }
        else
        {
            $existingQty = $existingProduct->getQuantity();
            $qty = $existingQty + 1;

            $existingProduct->setQuantity($qty);

            $em->persist($existingProduct);
            $em->flush();
        }

        $userCart = $em->getRepository('ProductBundle:Cart')->findBy(array(
            'sessionId' => $sessionId,
        ));

        $categories = $em->getRepository('ProductBundle:Category')->findAll();
        $recomendedProducts = $em->getRepository('ProductBundle:Product')->findAll();
        shuffle($recomendedProducts);

        return array(
            'entities' => $userCart,
            'categories' => $categories,
            'recomendedProducts' => $recomendedProducts,
        );

    }

    /**
     * Remove selected product from cart or decrease quantity by 1
     *
     * @Route("/remove", name="cart_remove")
     * @MEthod("GET")
     * @Template("ProductBundle:Cart:cart.html.twig")
     */
    public function removeAction(Request $request)
    {
        $selectedProductId = $request->get('productId');
        $sessionId = $request->getSession()->getId();

        $criteria = array(
            'product' => $selectedProductId,
            'sessionId' => $sessionId,
        );
        $em = $this->getDoctrine()->getManager();
        $existingProduct = $em->getRepository('ProductBundle:Cart')->findOneBy($criteria);
        $existingQty = $existingProduct->getQuantity();

        if($existingQty == 1)
        {
            $em->remove($existingProduct);
            $em->flush();
        }
        else
        {
            $qty = $existingQty - 1;
            $existingProduct->setQuantity($qty);

            $em->persist($existingProduct);
            $em->flush();
        }

        $userCart = $em->getRepository('ProductBundle:Cart')->findBy(array(
            'sessionId' => $sessionId,
        ));

        $categories = $em->getRepository('ProductBundle:Category')->findAll();
        $recomendedProducts = $em->getRepository('ProductBundle:Product')->findAll();
        shuffle($recomendedProducts);

        return array(
            'entities' => $userCart,
            'categories' => $categories,
            'recomendedProducts' => $recomendedProducts,
        );

    }

    /**
     * Deletes product from cart.
     *
     * @Route("/delete", name="cart_delete")
     * @Method("GET")
     * @Template("ProductBundle:Cart:cart.html.twig")
     */
    public function deleteAction(Request $request)
    {
        $selectedProductId = $request->get('productId');
        $sessionId = $request->getSession()->getId();

        $criteria = array(
            'product' => $selectedProductId,
            'sessionId' => $sessionId,
        );
        $em = $this->getDoctrine()->getManager();
        $existingProduct = $em->getRepository('ProductBundle:Cart')->findOneBy($criteria);


        $em->remove($existingProduct);
        $em->flush();

        $userCart = $em->getRepository('ProductBundle:Cart')->findBy(array(
            'sessionId' => $sessionId,
        ));

        $categories = $em->getRepository('ProductBundle:Category')->findAll();
        $recomendedProducts = $em->getRepository('ProductBundle:Product')->findAll();
        shuffle($recomendedProducts);

        return array(
            'entities' => $userCart,
            'categories' => $categories,
            'recomendedProducts' => $recomendedProducts,
        );
    }

    /**
     * Lists all Cart entities.
     *
     * @Route("/", name="cart")
     * @Method("GET")
     * @Template("ProductBundle:Cart:index.html.twig")
     */
    public function indexAction(Request $request)
    {
        $sessionId = $request->getSession()->getId();

        $criteria = array(
            'sessionId' => $sessionId,
        );
        $em = $this->getDoctrine()->getManager();
        $userCart = $em->getRepository('ProductBundle:Cart')->findBy($criteria);

        $categories = $em->getRepository('ProductBundle:Category')->findAll();
        $recomendedProducts = $em->getRepository('ProductBundle:Product')->findAll();
        shuffle($recomendedProducts);

        return array(
            'entities' => $userCart,
            'categories' => $categories,
            'recomendedProducts' => $recomendedProducts,
        );
    }

    /**
     * Go to checkout page to enter delivery address...
     *
     * @Route("/checkout", name="cart_checkout")
     * @Method("GET")
     * @Template()
     */
    public function checkoutAction()
    {
        $em = $this->getDoctrine()->getManager();

        $shipping = new Shipping();
        $form = $this->createForm(new ShippingType(), $shipping);

        $categories = $em->getRepository('ProductBundle:Category')->findAll();
        $recomendedProducts = $em->getRepository('ProductBundle:Product')->findAll();
        shuffle($recomendedProducts);

        return array(
            'categories' => $categories,
            'recomendedProducts' => $recomendedProducts,
            'form' => $form->createView(),
        );
    }

    /**
     * Finish the order by submiting delivery details
     *
     * @Route("/checkout", name="cart_finish")
     * @Method("POST")
     * @Template("ProductBundle:Cart:checkout.html.twig")
     */
    public function finishAction(Request $request)
    {
        $sessionId = $request->getSession()->getId();
        $em = $this->getDoctrine()->getManager();

        $criteria = array(
            'sessionId' => $sessionId,
        );
        $cartProducts = $em->getRepository('ProductBundle:Cart')->findBy($criteria);

        $shipping = new Shipping();

        $form = $this->createForm(new ShippingType(), $shipping);
        $form->handleRequest($request);
        $shipping->setShippingNumber(006);
        if ($form->isValid()) {

            foreach ($cartProducts as $cartProduct)
            {
                $productId = $cartProduct->getProduct();
                $productQty = $cartProduct->getQuantity();
                $price = $cartProduct->getProduct()->getProductPrice();


                $shippingDetail = new ShippingDetail();
                $shippingDetail->setProductId($productId);
                $shippingDetail->setPrice($price);
                $shippingDetail->setQty($productQty);
                $shippingDetail->setShippingId($shipping);

                $em->persist($shippingDetail);
            }

            $em->persist($shipping);
            $em->flush();

            return $this->redirect($this->generateUrl('cart_message'));
        }

        $categories = $em->getRepository('ProductBundle:Category')->findAll();
        $recomendedProducts = $em->getRepository('ProductBundle:Product')->findAll();
        shuffle($recomendedProducts);

        return array(
            'categories' => $categories,
            'recomendedProducts' => $recomendedProducts,
            'form' => $form->createView(),
        );
    }

    /**
     * Displays message after order is confirmed
     *
     * @Route("/message", name="cart_message")
     * @Method("GET")
     * @Template("ProductBundle:Cart:cart_message.html.twig")
     */
    public function messageAction()
    {
        $em = $this->getDoctrine()->getManager();
        $categories = $em->getRepository('ProductBundle:Category')->findAll();
        $recomendedProducts = $em->getRepository('ProductBundle:Product')->findAll();
        shuffle($recomendedProducts);

        $menuItems = $this->get('menu_creator')->createCategoryMenu();

        return array(
            'categories' => $categories,
            'recomendedProducts' => $recomendedProducts,
            'menuItems' => $menuItems['menuItems'],
        );
    }


}
