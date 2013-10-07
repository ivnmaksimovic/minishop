<?php

namespace Shop\CommonBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class MenuController extends Controller
{

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
}
