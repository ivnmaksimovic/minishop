<?php

namespace Shop\ProductBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Shop\ProductBundle\Entity\Cart;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\Security\Core\SecurityContext;

/**
 * Cart Controller
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
     * @Template("ProductBundle:Cart:add.html.twig")
     */
    public function addAction(Request $request)
    {
        $productId = $request->get('productId');
        $sessionId = $request->getSession()->getId();

        $cart = new Cart();
        $cart->setSessionId($sessionId);
        $cart->setProduct($productId);
        $cart->setQuantity(1);

        $em = $this->getDoctrine()->getManager();
        $em->persist($cart);
        $em->flush();

        return array(
            'productId' => $productId,
        );
    }

    /**
     * Remove selected product from cart or decrease quantity by 1
     *
     * @Route("/remove/{id}", name="cart_remove")
     * @Template()
     */
    public function removeAction($id)
    {
    }

    /**
     * Empty the cart completly
     *
     * @Route("/empty", name="cart_empty")
     * @Template()
     */
    public function emptyAction()
    {
    }

    /**
     * Go to MyCart page
     *
     * @Route("/", name="cart")
     * @Method("GET")
     * @Template("ProductBundle:Cart:my_cart.html.twig")
     */
    public function myCartAction(Request $request)
    {
        $sessionId = $request->getSession()->getId();

        $criteria = array(
            'sessionId' => $sessionId,
        );
        $em = $this->getDoctrine()->getManager();
        $userCart = $em->getRepository('ProductBundle:Cart')->findBy($criteria);
        $categories = $em->getRepository('ProductBundle:Category')->findAll();
        $recomendedProducts = $em->getRepository('ProductBundle:Product')->findAll();

        return array(
            'userCart' => $userCart,
            'categories' => $categories,
            'recomendedProducts' => $recomendedProducts,
        );
    }

    /**
     * Go to CheckOut page, review and select payment and shiping methods
     *
     * @Route("/checkOut")
     * @Method("GET")
     * @Template("ProductBundle:Cart:check_out.html.twig")
     */
    public function checkOutAction()
    {
    }

    /**
     * Confirm order after reviewed at CheckOut page, sends email to Admin and Customer
     *
     * @Route("/order")
     * @Method("GET")
     * @Template()
     */
    public function orderAction()
    {
    }

    /**
     * @Route("/ajax", name="ajax")
     * @Method("GET")
     * @Template("ProductBundle:Cart:my_cart.html.twig")
     */
    public function ajaxAction()
    {


            $data = array(
                'productId' => 'neki proizvod',
                'quantity' => '+1',
            );



        return $data;



    }

}
