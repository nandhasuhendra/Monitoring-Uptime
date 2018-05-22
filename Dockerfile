################################### Initialize
# Use ubuntu lastest image
FROM ubuntu:16.04

# Update and Install SNMP MIBS for use MIB table from SNMP
RUN apt-get update && \
    apt-get install -y iputils-ping wget vim snmp snmp-mibs-downloader

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf_1.6.1-1_amd64.deb && \
    dpkg -i telegraf_1.6.1-1_amd64.deb && \
    rm telegraf_1.6.1-1_amd64.deb

EXPOSE 8125/udp 8092/udp 8094

CMD ["telegraf"]
