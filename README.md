minishop
========

Online shop application developed with Symfony2 and Doctrine2.
Under development, it can be installed for testing/preview but not on
production sites.

Installation
============

These instructions have been tested under Linux/Unix, Windows users will
need to make all the changes needed by their OS.

1.  Install Composer and run the following command:

        php composer.phar create-project ivnmaksimovic/minishop path/to/install

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

Features
============

- Dynamicly created menu from created categories
- Calculation of Sale price when editing Artical rabat
- Responsive design