# Vivaldo

Vivaldo is a tool to provide real-time feedback to musicians as they play a song. It consists of a server application (Python) and hardware running on the Nexys DDR 4 board. The current iteration of Vivaldo contains:
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

### Generating Bitstream
Open vivaldo_fresh_eth_xadc_fft_dma_corr.xpr in Vivado and elect to generate the bistream. The ip_repo might need to be added in Tools/settings/IP/repository. 

### Running Test
* Launch the Xilinx SDK from within the Vivaldo project in Vivado
* Program the FPGA with the most recently generated bitstream
* Connect the board to a server containing the vivaldo-server code with an Ethernet cable (be sure to disable firewalls that might interfere with transfer)
* Run echo_server.py (vivaldo-server/echo_server.py) on the server
* Modify the requested song name in [https://github.com/tramblei/vivaldo/blob/master/vivaldo_fresh_eth_xadc_fft_dma_corr.sdk/eth_with_dma_fft_xadc/src/main.c](https://github.com/tramblei/vivaldo/blob/master/vivaldo_fresh_eth_xadc_fft_dma_corr.sdk/eth_with_dma_fft_xadc/src/main.c) (ensuring that it is also located in the vivaldo-server/sample_wav_files directory)
* Run the eth_plain test from the Xilinx SDK
* Wait for the LED prompt before starting to play the requested song (song start denoted by LED flashing 3 times at correct tempo)


## Authors

* **Joshua Calafato** [https://github.com/JCalafato/](https://github.com/JCalafato/)
* **Rohan Pavone** [https://github.com/rohpavone](https://github.com/rohpavone)
* **Ian Tramble** [https://github.com/tramblei/](https://github.com/tramblei/)

## License

This project is licensed under the MIT License

## Acknowledgments

* University of Toronto ECE532 instructor and TAs (2018)
