Madsonic Beta Ubuntu docker image 
=================================

**Application**

[Madsonic](http://beta.madsonic.org/pages/index.jsp)

**Application description**

Madsonic is a web-based media streamer and jukebox Server. 
Based on Java technology, Madsonic runs on most platforms,
including Windows, Mac, Linux, OSX, and Unix variants.

This version contains a patch for madsonic.sh, allowing you to use your own
Java keystore. The patch is applied during image building.

**Build notes**

- Latest beta release of Madsonic. 
- [Create a Java keystore](LetsEncryptJKS.md) and put the JKS into your madsonic config folder. 
- Extend ```start.sh``` to your needs. Set ```--use-ssl=false``` if you don't want to use SSL/TLS. 

**Usage**

```sh
docker run -d \
	-p 4040:4040 \
	-p 4443:4443 \
	--name=<container name> \
	-v <path for media files>:/media \
	-v <path for config files>:/config \
	ubuntu-madsonic-beta
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access application**

`https://<host ip>:4443/madsonic`

**Example**

```sh
docker run -d \
	-p 4040:4040 \
	-p 4443:4443 \
	--name=madsonic \
	-v /media/music/:/media \
	-v /apps/docker/madsonic:/config \
	ubuntu-madsonic-beta
```
