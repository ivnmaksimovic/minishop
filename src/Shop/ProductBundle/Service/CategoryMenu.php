<?php

namespace Shop\ProductBundle\Service;

use Doctrine\ORM\EntityManager;

class CategoryMenu
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

    public function updateMenuItems($menuItems)
    {
        $categories = 'kategorije';

        return $categories;
    }
}