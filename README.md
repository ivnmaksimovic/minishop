minishop
========

Online shop application developed with Symfony2 and Doctrine2.
Still under development. It can be installed for testing/preview but not on
production sites. Although there is live examle on skateshopstance.com
but admin area can't be accessed (only shop administrator has permisions).
Only FOS User Bundle is used.

Installation
============

These instructions have been tested under Linux/Unix, Windows users will
need to make all the changes needed by their OS.

1.  Install Composer and run the following command:

        php composer.phar create-project -s dev ivnmaksimovic/minishop path/to/install

    `path/to/install` is the path to the folder where "minishop" application will be
    installed; it must not exist because it will be created by Composer.

2.  Customize configuration parameters

    Edit `app/config/parameters.yml` and enter values for *database_host*,
    *database_name*, *database_user*, and *database_password* parameters.

3.  Create database

    If database doesn't already exist, create it with the follwing command:

        php app/console doctrine:database:create

4.  Create database tables

        b) Skate Shop STANCE sample content to see and test features
            - Download shop.sql from /database folder
            - Import shop.sql in your database

        a) New empty shop
            php app/console doctrine:schema:update --force

5.  Access site

    http://localhost/minishop/web/app_dev.php

    You can enter backend by clicking "magacin" button or by going directly to

    http://localhost/minishop/web/app_dev.php/admin/

You might need to check permisions if you experience any problems, and clear cache after you change permisions

See http://symfony.com/doc/current/book/installation.html - Setting up Permissions (method 2) works fine on Ubuntu)

Features
============

- Dynamicly created menu from created categories (like in CMS)
- Calculation of Sale price when editing Artical rabat
- Cart functionality
- Responsive design (desktop, tablet, phone)
- Orders reports on http://localhost/minishop/web/app_dev.php/admin/sales
(Access order detail by clicking order id link)