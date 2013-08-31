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
            ->add('category')
            ->add('brand')
            ->add('productName')
            ->add('productSize')
            ->add('productDescription', 'textarea', array(
                'attr' => array('class' => 'tinymce'),
                'required' => false,
            ))
            ->add('productPrice')
            ->add('productRabat')
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
