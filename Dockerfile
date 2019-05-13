FROM continuumio/anaconda3:latest

# Update conda
RUN conda update -n base -c defaults conda

# Add conda channels 
RUN conda config --add channels conda-forge
RUN conda config --add channels tango-controls

# run conda environment and install packages (python3)
RUN conda create -n keras -y \
    pip \
    python=3 \
    pyqt=5 \
    itango \
    pytango \
    lxml \
    future \
    guidata \
    guiqwt \
    ipython \
    pillow \
    pint \
    ply \
    pyqtgraph \
    pythonqwt \
    numpy \
    scipy \
    keras \
    matplotlib \
    scikit-learn


# Same with python2.7
# RUN conda create -n keras2 -y \
#     pip \
#     python=2.7 \
#     pyqt=5 \
#     itango \
#     pytango \
#     lxml \
#     future \
#     guidata \
#     guiqwt \
#     ipython \
#     pillow \
#     pint \
#     ply \
#     pyqtgraph \
#     pythonqwt \
#     numpy \
#     scipy \
#     keras \
#     matplotlib \
#     scikit-learn
    
    

