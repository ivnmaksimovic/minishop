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

//    /**
//     * Displays a form to send Contact message.
//     *
//     * @Route("/contact", name="contact")
//     * @Template("ProductBundle::contact.html.twig")
//     */
//    public function ContactAction()
//    {
//        $form = $this->createForm(new ContactType());
//
//        return array('form' => $form->createView());
//    }

    /**
     * Displays Contact form so user can contact admin
     *
     * @Route("/contact", name="contact")
     * @Method({"GET", "POST"})
     * @Template("ProductBundle::contact.html.twig")
     */
    public function contactAction(Request $request)
    {

        $form = $this->createForm(new ContactType());

        if ($request->isMethod('POST'))
        {
            $form->handleRequest($request);

            if ($form->isValid())
            {
                $data = $form->getData();


                $message = \Swift_Message::newInstance()
                    ->setSubject($form->get('Naslov')->getData())
                    ->setFrom($form->get('Email')->getData())
                    ->setTo('poslatiivanu@yahoo.com')
                    ->setBody(
                        $this->renderView(
                            'ProductBundle:Mail:mail.html.twig',
                            array(
                                'ip' => $request->getClientIp(),
                                'name' => $form->get('Ime')->getData(),
                                'message' => $form->get('Tekst')->getData()
                                )
                            )
                    );

                $this->get('mailer')->send($message);

                $request->getSession()->getFlashBag()->add('success', 'Your email has been sent! Thanks!');
                return $this->redirect($this->generateUrl('homepage'));

                }

        }

        return array('form' => $form->createView());
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
