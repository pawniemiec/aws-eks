# AWS EKS infrastructure
This repository allows you to  setup AWS Kubernetes service 


#### Prerequisites
You need the following environment variables set:
```bash
AWS_DEFAULT_REGION=...
AWS_ACCESS_KEY_ID=...
AWS_SECRET_ACCESS_KEY=...
```

You need to have the following programs installed:
- docker server >= 18.06.1-ce
- docker client >= 18.06.1-ce

#### Build Docker image

Build local `aws-eks` docker image with code inside
```bash
docker build --network host -t aws-eks:dev .
```

#### Deploy AWS EKS infrastructure
```bash
docker run \
  --rm \
  --net=host \
  -v $(pwd)/src:/src \
  -e AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION} \
  -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
  -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
  aws-eks:dev \
  plan
```

#### Destroy AWS EKS infrastructure


## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct,
and the process for submitting pull requests.


## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the
[tags on this repository](https://github.com/pawniemiec/aws-eks/tags).


## Authors

See the list of 
[contributors](https://github.com/pawniemiec/aws-eks/graphs/contributors)
who participated in this project.


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.