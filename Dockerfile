FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.5.7

RUN gem install ec2-host --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ec2-host"]
CMD ["--help"]
