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
        $em = $this->getDoctrine()->getManager();
        $selectedProductId = $request->get('productId');
        $sessionId = $request->getSession()->getId();

        //Prevents more than 10 products in cart
        $session_criteria = array(
            'sessionId' => $sessionId,
        );
        $cartItems = $em->getRepository('ProductBundle:Cart')->findBy($session_criteria);

        $itemsQty = array();
        foreach ($cartItems as $cartItem)
        {
            $itemsQty[] = $cartItem->getQuantity();
        }
        $cartItemsCount = array_sum($itemsQty);

        if ($cartItemsCount > 9)
        {
            return array(
                'message' => 'Ne mozete dodati vise od 10 proizvoda u korpu. Kontaktirajte nas ukoliko zelite vise proizvoda',
                'entities' => $cartItems,
            );
        }
        //end prevent more than...

        $criteria = array(
            'product' => $selectedProductId,
            'sessionId' => $sessionId,
        );

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

        return array(
            'entities' => $userCart,
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

        return array(
            'entities' => $userCart,
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

        return array(
            'entities' => $userCart,
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

        return array(
            'entities' => $userCart,
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

        $shipping = new Shipping();
        $form = $this->createForm(new ShippingType(), $shipping);

        return array(
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

        $date = new \DateTime("now");
        $shipping->setDate($date);
        $dateString = $date->format('Y');
        $randUnique = 5;
        $shippingNumber = $dateString . $randUnique;
        $shipping->setShippingNumber($shippingNumber);
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

                //Izbrisi cart table data nakon potvrde kupovine
                $em->remove($cartProduct);


//                var_dump($cartProduct);
            }



            $em->persist($shipping);
            $em->flush();

            return $this->redirect($this->generateUrl('cart_message'));
        }

        return array(
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

        return array();
    }


}
