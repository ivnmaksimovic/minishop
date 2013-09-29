<?php

namespace Shop\ProductBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Shop\ProductBundle\Entity\Cart;
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

        if(!$existingProduct)
        {
            $productId = $selectedProductId;
            $qty = 1;

            $cart = new Cart();
            $cart->setSessionId($sessionId);
            $cart->setProduct($productId);
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
     * Finds and displays a Cart entity.
     *
     * @Route("/{id}", name="cart_show")
     * @Method("GET")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('ProductBundle:Cart')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Cart entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),
        );
    }

}