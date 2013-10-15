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

        $menuItems = array();

        foreach ($categories as $category)
        {
            $menuItems[] = $category->getCategoryName();
        }

        return array(
            'menuItems' => $menuItems,
        );
    }
}