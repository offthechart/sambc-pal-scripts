# SAM Broadcaster PAL Scripts
[Playlist Automation Language (PAL)](https://support.spacial.com/hc/en-us/articles/229536687-PAL-Scripting-Quick-Start-Guide) scripts used by OTC's [SAM Broadcaster](https://spacial.com/what-we-do-features/) instances

## Disclaimer
The code in this repository is rather old and is unlikely to work out of the box. It is also highly likely that it suffers from security vulnerabilities.

## Background
The PAL scripts in this repository were used to control two (or more) instances of SpacialAudio's SAM Broadcaster software. They carried out the following tasks (amongst others):

* Read a schedule of events from the local database, as programmed by a management user interface
* Loaded up pre-recorded and replay programming as scheduled
* Connected and played out live DJs' streams from an IceCast server
* Provided the means to remotely perform a limited set of commands on the playout system (such as re-connecting live DJs)
* Played out station imaging on a schedule during automated programming

## Questions?
Feel free to create an issue. It's an awfully long time since I maintained this code however, so I can't guarantee I can remember how it works!
