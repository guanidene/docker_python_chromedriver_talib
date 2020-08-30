# This iamge has Python3.8, Chrome and Chromedriver installed
FROM joyzoursky/python-chromedriver:3.8

# Install TA-Lib libraries
RUN wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz \
  && tar -xzf ta-lib-0.4.0-src.tar.gz \ 
  && cd ta-lib \
  && ./configure --prefix=/usr \
  && make \
  && make install \
  && cd .. \ 
  && rm -rf ta-lib*
