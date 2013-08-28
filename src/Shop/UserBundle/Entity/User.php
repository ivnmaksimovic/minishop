<?php

namespace Shop\UserBundle\Entity;

use FOS\UserBundle\Model\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="shop_user")
 */
class User extends BaseUser
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    public function __construct()
    {
        parent::__construct();
        // your own logic
    }

    /**
     * @var string
     *
     * @ORM\Column(name="ime", type="string", length=255)
     * @Assert\NotBlank(message="Upisite vase ime.", groups={"Registration", "Profile"})
     * @Assert\Length(
     *     min=3,
     *     max="255",
     *     minMessage="Ime je prekratko.",
     *     maxMessage="Ime ima previse karaktera.",
     *     groups={"Registration", "Profile"}
     * )
     */
    protected $ime;

    /**
     * @var string
     *
     * @ORM\Column(name="prezime", type="string", length=255)
     * @Assert\NotBlank(message="Upisite vase prezime.", groups={"Registration", "Profile"})
     * @Assert\Length(
     *     min=3,
     *     max="255",
     *     minMessage="Prezime je prekratko.",
     *     maxMessage="Prezime ima previse karaktera.",
     *     groups={"Registration", "Profile"}
     * )
     */
    protected $prezime;

    /**
     * Set ime
     *
     * @param string $ime
     * @return User
     */
    public function setIme($ime)
    {
        $this->ime = $ime;

        return $this;
    }

    /**
     * Get ime
     *
     * @return string
     */
    public function getIme()
    {
        return $this->ime;
    }

    /**
     * Set prezime
     *
     * @param string $prezime
     * @return User
     */
    public function setPrezime($prezime)
    {
        $this->prezime = $prezime;

        return $this;
    }

    /**
     * Get prezime
     *
     * @return string
     */
    public function getPrezime()
    {
        return $this->prezime;
    }

}