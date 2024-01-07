# check_tasmota

Simple script to get metrics from Tasmota devices into checkmk.

# Usage

Install `jq` and `curl` on your system.

Place this script into `/usr/lib/check_mk_agent/local/60/check_tasmota.sh` and mark it as executable. Then change the variables according to your URL.

Then run a service discovery after about 60 seconds on your checkmk site. It should now be visible as new metrics!

# TODO

* Add WARN and CRIT parameters

# Contribute

You are welcome to help this little project by contributing changes, fixes or additional features as pull requests.

You can reach me on the Fediverse on my instance: @Ventor@social.ventora.net 😊

# License

This is licensed under GPL v3. 

