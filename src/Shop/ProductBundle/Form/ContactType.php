<?php

namespace Shop\ProductBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Symfony\Component\Validator\Constraints\Email;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\Validator\Constraints\NotBlank;
use Symfony\Component\Validator\Constraints\Collection;

class ContactType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('Ime', 'text', array(
                'constraints' => new NotBlank(array('message' => 'Ime je obavezno.')),
                'attr' => array(
                    'placeholder' => 'Vase ime'
                )
            ))
            ->add('Email', 'email', array(
                'constraints' => new NotBlank(array('message' => 'Email je obavezan.')),
                'attr' => array(
                    'placeholder' => 'Kako bismo vas kontaktirali'
                )
            ))
            ->add('Naslov', 'text', array(
                'constraints' => new NotBlank(array('message' => 'Poruka mora imati naslov.')),
                'attr' => array(
                    'placeholder' => 'Naslov vase poruke'
                )
            ))
            ->add('Tekst', 'textarea', array(
                'constraints' => new NotBlank(array('message' => 'Tekst poruke ne moze biti prazan.')),
                'attr' => array(
                    'cols' => 90,
                    'rows' => 10,
                    'placeholder' => 'Tekst vase poruke...'
                )
            ));
    }


    public function getName()
    {
        return 'shop_productbundle_contacttype';
    }
}
