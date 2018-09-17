# Veronite GUI Wallet


WARNING!: THIS IS A ALPHA WALLET (TEMPORARY) GUI.
We are working on finishing the official GUI, but for now we decided that this GUI is better than NO GUI.


This is a fork of the **Sumokoin GUI Wallet**: https://github.com/sumoprojects/SumoGUIWallet
It is changed to be compatible with Veronite.

1. Ez Set up for Ubuntu ( Tested on Ubuntu 16.04 )
	* Run:
		
			./xvv-setup.sh

1. Install dependencies (with Python 2.7):

	* Generally, you can use Python `pip` to install required components:
		
			pip install PySide, requests, psutil
	
	* or
			
			pip install -r requirements.txt 
	
	* On some OSes, PySide may be required to install from pre-built packages. For example, on Ubuntu 16.04, install PySide with the following command:
			
			sudo apt install python-pyside


2. Build/download Veronite binaries from Veronite repo and put it to `Resources/bin` sub-directory.

3. Run the wallet (Python 2.7):
		
		cd /path/to/VeroniteGUI
		python wallet.py

4. Contribution

	Pull-requests and help is always welcome. 
	
