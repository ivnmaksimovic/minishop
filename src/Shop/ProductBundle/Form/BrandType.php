<?php

namespace Shop\ProductBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class BrandType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('brandName')
            ->add('brandDescription', 'textarea', array(
                'attr' => array('class' => 'tinymce'),
                'required' => false,
            ))
            ->add('image', 'file')
        ;
    }

    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Shop\ProductBundle\Entity\Brand'
        ));
    }

    public function getName()
    {
        return 'shop_productbundle_brandtype';
    }
}
