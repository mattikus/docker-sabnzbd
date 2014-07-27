docker sabnzbd
==============

This is a Dockerfile to set up "SABnzbd" - (http://sabnzbd.org/)

```bash
$ docker run -d --name sabnzbd -p 8080:8080 \
    -v ${your_config_location}:/config \
    -v ${your_videos_location}:/data \
    mattikus/sabnzbd
```
