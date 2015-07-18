ApachePath="/etc/apache2"
MysqlPath="/etc/mysql"
PHPPath="/var/lib/php5"

if [ -d "$ApachePath" ]; then
  # Control will enter here if $DIRECTORY exists.
  echo "Apache2 has been installed.Test Pass"	
fi

if [ ! -d "$ApachePath" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  echo "Check if Apache2 is installed correctly.Test Failed"
  break
fi

if [ -d "$MysqlPath" ]; then
  # Control will enter here if $DIRECTORY exists.
  echo "MYSQL has been installed. Test Pass"
fi

if [ ! -d "$MysqlPath" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  echo "Check if MYSQL is installed correctly.Test Failed"
  break
fi

if [ -d "$PHPPath" ]; then
  # Control will enter here if $DIRECTORY exists.
  echo "PHP has been installed. Test Pass"
fi

if [ ! -d "$PHPPath" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  echo "Check if PHP is installed correctly.Test Failed"
  break
fi

echo "Check Apache2 service is running or not"
service apache2 status
echo "Check mysql service is running or not"
service mysql status
