Overview
==========

Use of this chef script is for building LAMP from scratch based on chef-solo for ubuntu servers (supports 12.04 and 14.04). git and chef-solo needs to be installed before running the chef-script.


Repository Directories and files
======================

* `cookbooks/` - All cookbooks.
* `cookbooks/apache2` Apache cookbook.
* `cookbooks/php` php cookbook.
* `cookbooks/mysql` mysql cookbook.
* `web.json` run list and mysql root password config.
* `solo.json` cookbook path.

Configuration
=============

The repository contains a knife configuration file.

* .chef/knife.rb

The knife configuration file `.chef/knife.rb` is a repository specific configuration file for knife. If you're using Hosted Chef, you can download one for your organization from the management console. If you're using the Open Source Chef Server, you can generate a new one with `knife configure`. For more information about configuring Knife, see the Knife documentation.

https://docs.chef.io/knife.html

Next Steps
==========

Read the README file in each of the subdirectories for more information about what goes in those directories.
