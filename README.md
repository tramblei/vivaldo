# Vivaldo

Vivaldo is a tool to provide real-time feedback to musicians. It consists of a server application (Python) and hardware running on the Nexys DDR 4 board. The current iteration of Vivaldo contains:
* A server containing a centralized repository of songs (in .wav format)
* The ability to download a song from the server to a Nexys DDR 4 board
* An LED prompt indicating when to start playing the song and an LED metronome indicating the tempo at which to play the song (tempo fixed by .wav file on server)
* Real time LED feedback indicating correlation between song stored on server and actual audio inputted by user
* Plot of correlation values (vs. time) that is sent back to server and saved

A video demostrating functionality and complete documentation are located in the docs/ directory. 

## Getting Started

The main project is called vivaldo_fresh_eth_xadc_fft_dma_corr.xpr. All custom IP is located immediately inside the ip_repo/ directory. Custom IP projects (for editing) are located in the ip_repo/ip_projects directory.

The server application is tracked via a git submodule [https://github.com/tramblei/vivaldo-server](https://github.com/tramblei/vivaldo-server).

### Prerequisites

Project created using Vivado 2017.2 on Ubuntu.

Server uses Python3.

### Running on FPGA
Open vivaldo_fresh_eth_xadc_fft_dma_corr.xpr in Vivado and elect to generate the bistream. The ip_repo might need to be added in Tools/settings/IP/repository. 

Open the SDK, program Nexys DDR 4 board and run the eth_test_plain run configuration.


## Authors

* **Joshua Calafato**
* **Rohan Pavone**
* **Ian Tramble**

## License

This project is licensed under the MIT License

## Acknowledgments

* University of Toronto ECE532 instructor and TAs (2018)
