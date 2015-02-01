#
#  Copyright 2002 yafra.org
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
  apt-get update &&
  apt-get upgrade -y && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential git
  apt-get autoremove -y && \
  apt-get clean all

# Create yafra directories
RUN mkdir -p /work/repos && mkdir -p /work/yafra-runtime

#ENV AUTHORIZED_KEYS **None**
