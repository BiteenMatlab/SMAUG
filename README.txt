# SMAUG
Code needed for running the SMAUG analysis program.  


Single Molecule Analysis by Unsupervised Gibbs sampling accurately and precisely determines estimates for several parameter values from single molecule tracking data using a Bayesian statistical framework. 


Written by Josh Karslake at the University of Michigan.

## Installation

Download the entire folder and unzip if you downloaded the .zip folder. Change the working directory in Matlab to this folder. 

## Usage

SMAUG is an entirely contained code suite for analysis of single molecule tracking data. If you are using the Biteen lab SMALL-labs and/or the masterfit3 code simply call the main function (‘SMAUG’) in the command window and then navigate and multi-select the files containing the tracking information.  
You can change the parameter values inside the code such as integration time of the camera or max iterations by either by using paired inputs (SMAUG(‘ImgIntTime’,0.04)) or by changing the value inside the SMAUG function itself and saving. 

If you are using data files of your own creation then some formatting will have to happen to get the data into SMAUG-readable format. SMAUG needs 5 columns of data with the first column being the track number, second column is the step of that track, third is a placeholder I used for some simulations and testing, 4th is x position and 5th is y position. A small example below shows 2 tracks the first with 4 localizations and the second with 5 to show how the data needs to be formatted. SMAUG can then take any number of data files with any number of rows of data in them. 

EXAMPLE: Column 
1		2		3		4		5
—————————————————————————————————————————————————
1		1		NA		X1		Y1
1		2		NA		X2		Y2
1		3		NA		X3		Y3
1		4		NA		X4		Y4	
2		1		NA		X1		Y1
2		2		NA		X2		Y2
2		3		NA		X3		Y3
2		4		NA		X4		Y4
2		5		NA		X5		Y5

NOTE: the X and Y positions are in PIXEL values by default and get scaled by ImgNPP (image nanometers per pixel) later so if your localizations are already in nanometers change Params.ImgNPP to 1. 


## Contributing

Please inform us (joshkars@umich.edu) before making any changes, then follow the directions below: 
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## Credits
The development of this code is greatly indebted to the work of David J Rowland and also to Keegan E Hines. The MakeSteps function was used from Daves’ CPDGlobal function (Rowland 2016) and parts of the the latent variable calculation, hyper parameter calculations and some skeleton organization were taken/inspired from Hines 2015. 


## License

                      GNU GENERAL PUBLIC LICENSE
                       Version 3, 29 June 2007

  See LICENSE.txt
