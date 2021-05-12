# AWS Tooling

Docker image that includes the AWS CLI and CDK

* Build the image

  `sudo docker build -t aws-tooling .`

* Run the image. Mount the ~/.aws directory to pass your aws config to the container. Mount the current directory as the working directory.

  ``sudo docker run -v ~/.aws:/root/.aws -v `pwd`:`pwd` -w `pwd` -it --rm aws-tooling``

  Running without arguments will show you the versions of installed tools

*  Example: 
  
    Run `cdk diff` in the current directory
   
  ``sudo docker run -v ~/.aws:/root/.aws -v `pwd`:`pwd` -w `pwd` -it --rm aws-tooling cdk diff``
  