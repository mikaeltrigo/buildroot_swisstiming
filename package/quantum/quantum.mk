################################################################################
#
# quantum
#
################################################################################

QUANTUM_VERSION = e0acdece5325a6c43a272a59f2bf0fd362a1a9e0
QUANTUM_SITE_METHOD = git
QUANTUM_SITE = 	https://github.com/mikaeltrigo/Quantum.git

$(eval $(cmake-package))
