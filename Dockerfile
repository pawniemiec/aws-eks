FROM hashicorp/terraform:0.11.13

COPY src/ /src

WORKDIR /src
