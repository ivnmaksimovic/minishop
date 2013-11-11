<?php

namespace Shop\ProductBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class ProductType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('productCode')
            ->add('active', 'checkbox', array(
                'label' => 'Artikal aktivan?',
                'required' => false,
            ))
            ->add('category')
            ->add('brand')
            ->add('productName')
            ->add('productColor')
            ->add('productSize', 'text', array(
                'required' => false,
            ))
            ->add('productDescription', 'textarea', array(
                'attr' => array('class' => 'tinymce'),
                'required' => false,
            ))
            ->add('productPrice', 'text')
            ->add('productRabat', 'text')
            ->add('image', 'file')
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Shop\ProductBundle\Entity\Product'
        ));
    }

    public function getName()
    {
        return 'shop_productbundle_producttype';
    }
}
