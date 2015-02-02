#
#  Copyright 2015 yafra.org
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

#
# yafra.org base docker image
#

# source is docker's ubuntu
FROM ubuntu:latest

MAINTAINER Martin Weber <info@yafra.org>

# Install common packages
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -yq upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y curl git htop man unzip vim-nox wget doxygen && \
  apt-get autoremove -yq && \
  apt-get clean all && \
  rm -rf /var/lib/apt/lists/*

# Create yafra directories
RUN mkdir -p /work/repos && mkdir -p /work/yafra-runtime

# Add root home
ADD root/.bashrc /root/.bashrc
ENV HOME /root
WORKDIR /root
