################################################################################
#
# pwrt3 lcd app
#
################################################################################

PWRT3LCDAPP_VERSION = 3.0
PWRT3LCDAPP_SITE_METHOD = git
PWRT3LCDAPP_SITE = 	https://github.com/mikaeltrigo/pwrt3_lcd_app.git

$(eval $(cmake-package))
