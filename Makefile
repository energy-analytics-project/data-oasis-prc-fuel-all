DATA_SOURCE=data-oasis-prc-fuel-all

.PHONE: all
all: help

.PHONY: help
help:
	# -----------------------------------------------------------------------------
	# Processor for $(DATA_SOURCE)
	#
	# Targets:
	#
	#     proc    : invoke targets [new,down,injest,save,publish]
	#     down    : download all (absent) resources   : 20_down.py 
	#     injest  : injest resources into sqlite db   : 30_inje.py
	#     save    : persist data to store (git)       : 40_save.py
	#
	# Created by:
	# [YOUR NAME] <YOUR EMAIL>
	# [YOUR COMPANY]
	# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
# TARGETS
# -----------------------------------------------------------------------------
.PHONY: setup
setup:  
	pipenv install requests

.PHONY: proc
proc:  down unzip injest save

.PHONY: down
down:  
	src/10_down.py

.PHONY: unzip
unzip:  
	src/20_unzp.py

.PHONY: injest
injest:  
	src/30_inse.py

.PHONY: save
save:  
	src/40_save.sh
