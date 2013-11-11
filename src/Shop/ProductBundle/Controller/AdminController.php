<?php

namespace Shop\ProductBundle\Controller;

use Shop\ProductBundle\Form\ContactType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Shop\ProductBundle\Entity\Category;

use Shop\ProductBundle\Entity\Product;
use Shop\ProductBundle\Entity\Brand;
use Shop\ProductBundle\Form\CategoryType;


/**
 * Main controller.
 *
 * @Route("/admin")
 */
class AdminController extends Controller
{
    /**
     * Displays Administration page with Admin Menu. Superuser permission required.
     *
     * @Route("/", name="admin_home")
     * @Method("GET")
     * @Template("ProductBundle::admin_home.html.twig")
     */
    public function adminAction()
    {
        return array();
    }

    /**
     * Finds and display all sales
     *
     * @Route("/sales", name="sales")
     * @Method("GET")
     * @Template("ProductBundle::sales.html.twig")
     */
    public function salesAction()
    {
        $em = $this->getDoctrine()->getManager();

        $sales = $em->getRepository('ProductBundle:Shipping')->findAll();

        return array(
            'sales' => $sales,
        );
    }

    /**
     * Finds and display selected sale details
     *
     * @Route("/sale/{id}", name="sale_details")
     * @Method("GET")
     * @Template("ProductBundle::sale_details.html.twig")
     */
    public function saleDetailsAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $criteria = array('shippingId' => $id);

        $saleDetails = $em->getRepository('ProductBundle:ShippingDetail')->findBy($criteria);

        return array(
            'saleDetails' => $saleDetails,
        );
    }

    /**
     * Finds and display all sales by selected customer
     *
     * @Route("/sales/{customer}", name="sales_customer")
     * @Method("GET")
     * @Template("ProductBundle::sales_customer.html.twig")
     */
    public function customerOrdersAction($customer)
    {
        $criteria = array('name' => $customer);
        $em = $this->getDoctrine()->getManager();

        $customerSales = $em->getRepository('ProductBundle:Shipping')->findBy($criteria);

        return array(
            'customerSales' => $customerSales,
            'customer' => $customer,
        );
    }


}
