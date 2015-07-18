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

Environment Preparation 
=============

0. Please "sudo su" before you execute any commands below. 

1. Clone from GITHUB
cd ~
git clone https://github.com/ningma116/CHEF-LAMP.git

2. Rename folder CHEF-LAMP to chef-repo
mv CHEF-LAMP chef-repo

3. Install chef-solo
cd ~
curl -L https://www.opscode.com/chef/install.sh | bash
chef-solo -v

Build LAMP using our script
=============

1. Run chef-solo for building up our LAMP
cd chef-repo
chef-solo -c solo.rb -j web.json

2. Running test script to check
./ChefTestScript.sh

Test your LAMP on your browser
=============

1. Copy test.php file to /var/www/html/
cd chef-repo
rm /var/www/html/index.html
cp test.php /var/www/html/

2. Open a browser and type http://yourhost/test.php


Next Steps
==========

Read the README file in each of the subdirectories for more information about what goes in those directories.
