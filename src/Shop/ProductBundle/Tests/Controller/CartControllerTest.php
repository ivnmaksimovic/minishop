<?php

namespace Shop\ProductBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class CartControllerTest extends WebTestCase
{
    public function testAdd()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/add');
    }

    public function testRemove()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/remove');
    }

    public function testEmpty()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/empty');
    }

    public function testMycart()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/myCart');
    }

    public function testCheckout()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/checkOut');
    }

    public function testOrder()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/order');
    }

}
