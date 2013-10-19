<?php

namespace Shop\ProductBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * Shipping
 *
 * @ORM\Table(name="shipping")
 * @ORM\Entity(repositoryClass="Shop\ProductBundle\Entity\ShippingRepository")
 */
class Shipping
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
     * @var integer
     *
     * @ORM\Column(name="shipping_number", type="integer")
     */
    private $shippingNumber;

    /**
     * @Assert\NotBlank(message="Obavezno polje")
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=255)
     */
    private $name;

    /**
     * @var string
     * @ORM\Column(name="phone", type="string", length=255)
     *
     * @Assert\NotBlank(message="Obavezno polje")
     * @Assert\Length(
     *      min = "8",
     *      max = "14",
     *      minMessage = "Telefon mora imati minimum {{ limit }} cifara",
     *      maxMessage = "Telefon mora imati maksimum {{ limit }} cifara"
     * )
     */
    private $phone;

    /**
     * @Assert\NotBlank(message="Obavezno polje")
     * @var string
     *
     * @ORM\Column(name="address", type="string", length=255)
     */
    private $address;

    /**
     * @var string
     * @ORM\Column(name="zip", type="string", length=255)
     *
     * @Assert\NotBlank(message="Obavezno polje")
     * @Assert\Length(
     *      min = "5",
     *      max = "5",
     *      exactMessage = "Postanski broj mora imati {{ limit }} cifara"
     * )
     */
    private $zip;

    /**
     * @Assert\NotBlank(message="Obavezno polje")
     * @var string
     *
     * @ORM\Column(name="city", type="string", length=255)
     */
    private $city;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="date", type="datetime")
     */
    private $date;

    /**
     *
     * @ORM\OneToMany(targetEntity="ShippingDetail", mappedBy="shippingId")
     */
    private $details;

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
     * Set shippingNumber
     *
     * @param integer $shippingNumber
     * @return Shipping
     */
    public function setShippingNumber($shippingNumber)
    {
        $this->shippingNumber = $shippingNumber;

        return $this;
    }

    /**
     * Get shippingNumber
     *
     * @return integer
     */
    public function getShippingNumber()
    {
        return $this->shippingNumber;
    }

    /**
     * Set name
     *
     * @param string $name
     * @return Shipping
     */
    public function setName($name)
    {
        $this->name = $name;
    
        return $this;
    }

    /**
     * Get name
     *
     * @return string 
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set address
     *
     * @param string $address
     * @return Shipping
     */
    public function setAddress($address)
    {
        $this->address = $address;
    
        return $this;
    }

    /**
     * Get address
     *
     * @return string 
     */
    public function getAddress()
    {
        return $this->address;
    }

    /**
     * Set zip
     *
     * @param integer $zip
     * @return Shipping
     */
    public function setZip($zip)
    {
        $this->zip = $zip;
    
        return $this;
    }

    /**
     * Get zip
     *
     * @return integer 
     */
    public function getZip()
    {
        return $this->zip;
    }

    /**
     * Set city
     *
     * @param string $city
     * @return Shipping
     */
    public function setCity($city)
    {
        $this->city = $city;
    
        return $this;
    }

    /**
     * Get city
     *
     * @return string 
     */
    public function getCity()
    {
        return $this->city;
    }

    /**
     * Set date
     *
     * @param \DateTime $date
     * @return Shipping
     */
    public function setDate($date)
    {
        $this->date = $date;
    
        return $this;
    }

    /**
     * Get date
     *
     * @return \DateTime 
     */
    public function getDate()
    {
        return $this->date;
    }

    public function __construct()
    {
        $this->details = new ArrayCollection();
    }
    public function __toString()
    {
        return $this->shippingNumber;
    }

    /**
     * Add details
     *
     * @param \Shop\ProductBundle\Entity\ShippingDetail $products
     * @return Shipping
     */
    public function addDetail(\Shop\ProductBundle\Entity\ShippingDetail $details)
    {
        $this->details[] = $details;

        return $this;
    }

    /**
     * Remove details
     *
     * @param \Shop\ProductBundle\Entity\ShippingDetail $details
     */
    public function removeDetail(\Shop\ProductBundle\Entity\ShippingDetail $details)
    {
        $this->details->removeElement($details);
    }

    /**
     * Get details
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getDetails()
    {
        return $this->details;
    }

    /**
     * @return string
     */
    public function getPhone()
    {
        return $this->phone;
    }

    /**
     * @param string $phone
     */
    public function setPhone($phone)
    {
        $this->phone = $phone;
    }


}
