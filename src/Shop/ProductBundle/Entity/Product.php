<?php

namespace Shop\ProductBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\HttpFoundation\File\UploadedFile;

/**
 * Product
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="Shop\ProductBundle\Entity\ProductRepository")
 * @ORM\HasLifecycleCallbacks
 */
class Product
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
     *
     * @ORM\Column(name="product_name", type="string", length=255)
     */
    private $productName;

    /**
     * @var string
     *
     * @ORM\Column(name="product_size", type="string", length=255)
     */
    private $productSize;

    /**
     * @var integer
     *
     * @ORM\Column(name="product_price", type="integer")
     */
    private $productPrice;

    /**
     * @var integer
     *
     * @ORM\Column(name="product_rabat", type="integer")
     */
    private $productRabat;

    /**
     * @var string
     *
     * @ORM\Column(name="product_description", type="string", length=255)
     */
    private $productDescription;

    /**
     * @var string
     * @ORM\ManyToOne(targetEntity="Category", inversedBy="products")
     * @ORM\JoinColumn(name="category_id", referencedColumnName="id")
     */
    private $category;

    /**
     * @var string
     * @ORM\ManyToOne(targetEntity="Brand", inversedBy="products")
     * @ORM\JoinColumn(name="brand_id", referencedColumnName="id")
     */
    private $brand;

    /**
     * Uploaded image
     */
    private $image;

    private $temp;

    /**
     * Path of uploaded image
     *
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    public $path;

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
     * Set productName
     *
     * @param string $productName
     * @return Product
     */
    public function setProductName($productName)
    {
        $this->productName = $productName;

        return $this;
    }

    /**
     * Get productName
     *
     * @return string
     */
    public function getProductName()
    {
        return $this->productName;
    }

    /**
     * Set productDescription
     *
     * @param string $productDescription
     * @return Product
     */
    public function setProductDescription($productDescription)
    {
        $this->productDescription = $productDescription;

        return $this;
    }

    /**
     * Get productDescription
     *
     * @return string
     */
    public function getProductDescription()
    {
        return $this->productDescription;
    }

    /**
     * Set category
     *
     * @param string $category
     * @return Product
     */
    public function setCategory($category)
    {
        $this->category = $category;

        return $this;
    }

    /**
     * Get category
     *
     * @return string
     */
    public function getCategory()
    {
        return $this->category;
    }

    /**
     * Set brand
     *
     * @param string $brand
     * @return Product
     */
    public function setBrand($brand)
    {
        $this->brand = $brand;

        return $this;
    }

    /**
     * Get brand
     *
     * @return string
     */
    public function getBrand()
    {
        return $this->brand;
    }

    /**
     * @return int
     */
    public function getProductPrice()
    {
        return $this->productPrice;
    }

    /**
     * @param int $productPrice
     */
    public function setProductPrice($productPrice)
    {
        $this->productPrice = $productPrice;

        return $this;
    }

    /**
     * @return int
     */
    public function getProductRabat()
    {
        return $this->productRabat;
    }

    /**
     * @param int $productRabat
     */
    public function setProductRabat($productRabat)
    {
        $this->productRabat = $productRabat;

        return $this;
    }

    public function productSalePrice()
    {
        $productSalePrice = ($this->productPrice - ($this->productPrice * $this->productRabat * 0.01));

        return $productSalePrice;
    }

    /**
     * @return string
     */
    public function getProductSize()
    {
        return $this->productSize;
    }

    /**
     * @param string $productSize
     */
    public function setProductSize($productSize)
    {
        $this->productSize = $productSize;
    }

    /**
     * Returns path relative and absolute to uploaded image
     */
    public function getAbsolutePath()
    {
        return null === $this->path
            ? null
            : $this->getUploadRootDir().'/'.$this->path;
    }

    public function getWebPath()
    {
        return null === $this->path
            ? null
            : $this->getUploadDir().'/'.$this->path;
    }

    protected function getUploadRootDir()
    {
        // the absolute directory path where uploaded
        // documents should be saved
        return __DIR__.'/../../../../web/'.$this->getUploadDir();
    }

    protected function getUploadDir()
    {
        // get rid of the __DIR__ so it doesn't screw up
        // when displaying uploaded doc/image in the view.
        return 'uploads/documents';
    }

    /**
     * Sets image.
     *
     * @param UploadedFile $image
     */
    public function setImage(UploadedFile $image = null)
    {
        $this->image = $image;

        // check if we have an old image path
        if (isset($this->path))
        {
            // store the old name to delete after the update
            $this->temp = $this->path;
            $this->path = null;

        }
        else
        {
            $this->path = 'initial';
        }
    }

    /**
     * @ORM\PrePersist()
     * @ORM\PreUpdate()
     */
    public function preUpload()
    {
        if (null !== $this->getImage())
        {
            // do whatever you want to generate a unique name
            $imagename = 'product_'.sha1(uniqid(mt_rand(), true));
            $this->path = $imagename.'.jpg';
        }
    }

    /**
     * Get image.
     *
     * @return UploadedFile
     */
    public function getImage()
    {
        return $this->image;
    }

    /**
     * @ORM\PostPersist()
     * @ORM\PostUpdate()
     */
    public function upload()
    {
        // the file property can be empty if the field is not required
        if (null === $this->getImage()) {
            return;
        }

        // if there is an error when moving the file, an exception will
        // be automatically thrown by move(). This will properly prevent
        // the entity from being persisted to the database on error
        $this->getImage()->move($this->getUploadRootDir(), $this->path);

        // check if we have an old image
        if (isset($this->temp))
        {
            // delete the old image
            unlink($this->getUploadRootDir().'/'.$this->temp);
            // clear the temp image path
            $this->temp = null;
        }
        // clean up the file property as you won't need it anymore
        $this->image = null;
    }

    /**
     * @ORM\PostRemove()
     */
    public function removeUpload()
    {
        $image = $this->getImage();
        if ($image == $this->getAbsolutePath())
        {
            unlink($image);
        }
    }

}