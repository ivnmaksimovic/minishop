<?php

namespace Shop\CommonBundle\Twig;

use Doctrine\ORM\EntityManager;

class ShopExtension extends \Twig_Extension
{
    /**
     *
     * @var EntityManager
     */
    protected $em;

    public function __construct(EntityManager $entityManager)
    {
        $this->em = $entityManager;
    }

    public function createCategoryMenu()
    {
        $categories = $this->em->getRepository('ProductBundle:Category')->findAll();

        return $categories;
    }

    public function selectRandomProducts()
    {
        $recomendedProducts = $this->em->getRepository('ProductBundle:Product')->findAll();
        shuffle($recomendedProducts);

        return $recomendedProducts;
    }

    public function getGlobals()
    {
        return array(
            'categories' => $this->createCategoryMenu(),
            'recomendedProducts' => $this->selectRandomProducts(),
        );
    }

    public function getName()
    {
        return 'shop_extension';
    }

}