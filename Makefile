install-box: box.phar
box.phar:
	@curl -LSs https://box-project.github.io/box2/installer.php | php -d "phar.readonly=Off"
box: install-box
	@php -d "phar.readonly=Off" box.phar build

