## First
- Run build.sh for create new images of telegraf_mib.

## Influxdb
- Restart the service every you add new device, use this command /etc/init.d/influxdb restart, dont worry if you see failed message while service is restarting.
- Check databases by access the databases using command influx.

## Telegraf
- Follow the rule in telegraf.conf for add new device or any measurements.
- Use telegraf --config telegraf.conf --test for testing your configuration and use --debug for debuging mode.

## Grafana
- You dont need any configuration for this service, just add the json file and change some configuration as you need.
