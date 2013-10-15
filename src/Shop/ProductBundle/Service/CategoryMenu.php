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
        //$menu = 'menu_item1';

        return array(
            //'menu' => $menu,
            'categories' => $categories,
        );
    }
}