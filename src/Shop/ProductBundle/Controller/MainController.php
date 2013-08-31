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
        $em = $this->getDoctrine()->getManager();
        $categories = $em->getRepository('ProductBundle:Category')->findAll();
        $recomendedProducts = $em->getRepository('ProductBundle:Product')->findAll();
        shuffle($recomendedProducts);


        return array(
            'categories' => $categories,
            'recomendedProducts' => $recomendedProducts,
        );
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

        $categories = $em->getRepository('ProductBundle:Category')->findAll();
        $selectedCategory = $em->getRepository('ProductBundle:Category')->findOneBy($criteria);
        $recomendedProducts = $em->getRepository('ProductBundle:Product')->findAll();
        shuffle($recomendedProducts);

        $products = $selectedCategory->getProducts();

        return array(
            'categories' => $categories,
            'products' => $products,
            'recomendedProducts' => $recomendedProducts,
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

        $categories = $em->getRepository('ProductBundle:Category')->findAll();
        $product = $em->getRepository('ProductBundle:Product')->find($id);
        $recomendedProducts = $em->getRepository('ProductBundle:Product')->findAll();
        shuffle($recomendedProducts);


        return array(
            'categories' => $categories,
            'product' => $product,
            'recomendedProducts' => $recomendedProducts,
        );
    }




}
