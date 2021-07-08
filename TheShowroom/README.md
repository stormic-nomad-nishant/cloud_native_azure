# TOC Bullets 

```
The Showroom: Software Distribution
Publishing Software with Notary
Deploying Notary
The Update framework aka Tuf
```

# Problem Space

Similiar to 3rd Party vulnerability space in RubyGems, NPM, PyPy, etc. 

Most of the focus is on containers

## Out of Scope
- Protection of CI/CD Pipeliens
- Runtime Container/Cluster Protection
- Protection of Registry
- Open Source Licensing Compliance (Black Duck)

# Solutions Space 

## Tools
### Notary
- https://www.youtube.com/watch?v=JK70k_B87mw
- [Notary v2: Redesigning the Secure Supply Chain for Containers - Justin Cormack & Steve Lasker](https://www.youtube.com/watch?v=LKpFynI0S_w)


### Docker Content Trust
- https://docs.docker.com/engine/security/trust/

### Container Scanning
- Anchore
- Snyk (now built into Docker,somehow)
- [Clair](https://github.com/quay/clair)

### Software Bill of Materials (SBOM)
- https://spdx.dev/
- https://cyclonedx.org/

# References & Videos
- [Securing your Kubernetes Delivery Pipelines with Notary and TUF - Liam White & Michael Hough](https://www.youtube.com/watch?v=JK70k_B87mw)
- [Introduction to Notary - Justin Cormack, Docker](https://www.youtube.com/watch?v=Hnzc6va4l6k) - Nov 2019
- [Intro: TUF / Notary - Justin Cappos, NYU & Justin Cormack, Docker](https://www.youtube.com/watch?v=gIFRQObHbZk)


## Supply Chain Security 
- https://www.cncf.io/blog/2021/05/14/evaluating-your-supply-chain-security/
