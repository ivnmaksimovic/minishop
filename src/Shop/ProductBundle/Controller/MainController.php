<?php

namespace Shop\ProductBundle\Controller;

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
 * @Route("/")
 */
class MainController extends Controller
{
    /**
     * Displays Home page with Main Menu that lists all categories
     *
     * @Route("/", name="homepage")
     * @Method("GET")
     * @Template("ProductBundle::home.html.twig")
     */
    public function indexAction()
    {
        return array();
    }

    /**
     * Displays Administration page with Admin Menu. Superuser permission required.
     *
     * @Route("/admin/", name="admin_home")
     * @Method("GET")
     * @Template("ProductBundle::admin_home.html.twig")
     */
    public function adminAction()
    {
        return array();
    }

    /**
     * Finds and display all products from selected category
     *
     * @Route("/products/{categoryName}/", name="category_products")
     * @Method("GET")
     * @Template("ProductBundle::display_products.html.twig")
     */
    public function productsFromCategoryAction($categoryName)
    {
        $criteria = array('categoryName' => $categoryName);
        $em = $this->getDoctrine()->getManager();

        $selectedCategory = $em->getRepository('ProductBundle:Category')->findOneBy($criteria);
        $products = $selectedCategory->getProducts();

        return array(
            'products' => $products,
        );
    }

    /**
     * Displays single selected product
     *
     * @Route("/products/{categoryName}/{id}", name="selected_product")
     * @Method("GET")
     * @Template("ProductBundle::display_product.html.twig")
     */
    public function selectedProductAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $product = $em->getRepository('ProductBundle:Product')->find($id);

        return array(
            'product' => $product,
        );
    }


}
