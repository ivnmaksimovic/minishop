<?php

namespace Shop\ProductBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\HttpFoundation\File\UploadedFile;

/**
 * Brand
 *
 * @ORM\Table(name="brand")
 * @ORM\Entity(repositoryClass="Shop\ProductBundle\Entity\BrandRepository")
 * @ORM\HasLifecycleCallbacks
 */
class Brand
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
     * @ORM\Column(name="brand_name", type="string", length=255)
     */
    private $brandName;

    /**
     * @var string
     *
     * @ORM\Column(name="brand_description", type="text")
     */
    private $brandDescription;

    /**
     *
     * @ORM\OneToMany(targetEntity="Product", mappedBy="brand")
     */
    private $products;

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
    public $imgPath;


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
     * Set name
     *
     * @param string $brandName
     * @return Brand
     */
    public function setBrandName($brandName)
    {
        $this->brandName = $brandName;
    
        return $this;
    }

    /**
     * Get name
     *
     * @return string 
     */
    public function getBrandName()
    {
        return $this->brandName;
    }

    /**
     * Set brandDescription
     *
     * @param string $brandDescription
     * @return Brand
     */
    public function setBrandDescription($brandDescription)
    {
        $this->brandDescription = $brandDescription;
    
        return $this;
    }

    /**
     * Get brandDescription
     *
     * @return string 
     */
    public function getBrandDescription()
    {
        return $this->brandDescription;
    }
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->products = new ArrayCollection();
    }
    public function __toString()
    {
        return $this->brandName;
    }
    
    /**
     * Add products
     *
     * @param \Shop\ProductBundle\Entity\Product $products
     * @return Brand
     */
    public function addProduct(\Shop\ProductBundle\Entity\Product $products)
    {
        $this->products[] = $products;
    
        return $this;
    }

    /**
     * Remove products
     *
     * @param \Shop\ProductBundle\Entity\Product $products
     */
    public function removeProduct(\Shop\ProductBundle\Entity\Product $products)
    {
        $this->products->removeElement($products);
    }

    /**
     * Get products
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getProducts()
    {
        return $this->products;
    }

    /**
     * Returns path relative and absolute to uploaded image
     */
    public function getAbsolutePath()
    {
        return null === $this->imgPath
            ? null
            : $this->getUploadRootDir().'/'.$this->imgPath;
    }

    public function getWebPath()
    {
        return null === $this->imgPath
            ? null
            : $this->getUploadDir().'/'.$this->imgPath;
    }

    protected function getUploadRootDir()
    {
        // the absolute directory imgPath where uploaded
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

        // check if we have an old image imgPath
        if (isset($this->imgPath))
        {
            // store the old name to delete after the update
            $this->temp = $this->imgPath;
            $this->imgPath = null;

        }
        else
        {
            $this->imgPath = 'initial';
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
            $imagename = 'brand_'.sha1(uniqid(mt_rand(), true));
            $this->imgPath = $imagename.'.jpg';
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
        $this->getImage()->move($this->getUploadRootDir(), $this->imgPath);

        // check if we have an old image
        if (isset($this->temp))
        {
            // delete the old image
            unlink($this->getUploadRootDir().'/'.$this->temp);
            // clear the temp image imgPath
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
