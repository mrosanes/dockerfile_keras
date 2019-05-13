FROM continuumio/anaconda3:latest

# Add conda channels 
RUN conda config --add channels conda-forge
RUN conda config --add channels tango-controls

# run conda environment and install packages
RUN conda create -n keras -y anaconda pip python=3 pyqt=5 itango \
    pytango lxml future guidata guiqwt ipython pillow pint ply pyqtgraph \
    pythonqwt numpy scipy keras






