<?php

namespace Shop\ProductBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ShippingDetail
 *
 * @ORM\Table(name="shipping_detail")
 * @ORM\Entity(repositoryClass="Shop\ProductBundle\Entity\ShippingDetailRepository")
 */
class ShippingDetail
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     * @ORM\ManyToOne(targetEntity="Shipping", inversedBy="details")
     * @ORM\JoinColumn(name="shipping_id", referencedColumnName="id")
     */
    private $shippingId;

    /**
     * @var string
     *
     * @ORM\ManyToOne(targetEntity="Product")
     * @ORM\JoinColumn(name="product_id", referencedColumnName="id")
     */
    private $productId;

    /**
     * @var integer
     *
     * @ORM\Column(name="price", type="integer")
     */
    private $price;

    /**
     * @var integer
     *
     * @ORM\Column(name="qty", type="integer")
     */
    private $qty;


    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set shippingId
     *
     * @param integer $shippingId
     * @return ShippingDetail
     */
    public function setShippingId($shippingId)
    {
        $this->shippingId = $shippingId;
    
        return $this;
    }

    /**
     * Get shippingId
     *
     * @return integer 
     */
    public function getShippingId()
    {
        return $this->shippingId;
    }

    /**
     * Set productId
     *
     * @param integer $productId
     * @return ShippingDetail
     */
    public function setProductId($productId)
    {
        $this->productId = $productId;
    
        return $this;
    }

    /**
     * Get productId
     *
     * @return integer 
     */
    public function getProductId()
    {
        return $this->productId;
    }

    /**
     * Set price
     *
     * @param integer $price
     * @return ShippingDetail
     */
    public function setPrice($price)
    {
        $this->price = $price;
    
        return $this;
    }

    /**
     * Get price
     *
     * @return integer 
     */
    public function getPrice()
    {
        return $this->price;
    }

    /**
     * Set qty
     *
     * @param integer $qty
     * @return ShippingDetail
     */
    public function setQty($qty)
    {
        $this->qty = $qty;
    
        return $this;
    }

    /**
     * Get qty
     *
     * @return integer 
     */
    public function getQty()
    {
        return $this->qty;
    }
}
