# le-opsman

A Concourse pipeline for automatically rotating the SSL certificates for Pivotal Operations Manager.

## Getting Started

Clone this project, create a `parameters.yml` file to supply any sensitive parameters for the pipeline and use the `fly` CLI to set the pipeline in Concourse.  Unpause the pipeline in Concourse, and it should trigger to begin running.  If not, you can manually trigger the job in Concourse.


### Prerequisites

- A Concourse deployment.  Concourse has a variety of ways to deploy ranging from single machine, to large scale deployments.
- A install of Pivotal Operations Manager

### Installing

Change directory to the place you cloned this repository to, and set the pipeline in Concourse.

```
fly -t my-target set-pipeline -p le-opsman -c pipeline.yml -l parameters.yml
```

Unpause the pipeline

```
fly -t my-target unpause-pipeline -p le-opsman
```

Trigger the job if you want to start immediately

```
fly -t my-target trigger-job -j le-opsman/le-retrieve
```

## Built With

* [Concourse](https://concourse-ci.org/) - The container based, continuous, "thing doer"
* [ACME.sh](https://github.com/Neilpang/acme.sh) - Script used to talk with Let's Encrypt

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/cdelashmutt-pivotal/le-opsman/tags). 

## Author

* **Chris DeLashmutt** - *Initial work* - [cdelashmutt-pivotal](https://github.com/cdelashmutt-pivotal)

## License

This project is licensed under the Apache License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* [Let's Encrypt](https://letsencrypt.org/) for making a free, API driven service for generating SSL certificates
