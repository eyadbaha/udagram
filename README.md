# Udagram

This is a documentation if the app "Udagram" provided by udacity.

## Dependencies

These are the main decencies and services used for building this app:

1.  [Node.js And NPM](https://nodejs.org/).

2.  [Angular](https://expressjs.com/).

3.  [Express](https://expressjs.com/).

4.  [PostgreSQL](https://www.postgresql.org/).

5.  [AWS](https://aws.amazon.com/).

### NPM Packages

```
- TypeScript

- Jasmine (for testing)

- Tslint
```

### AWS Services

```
- S3 (for hosting static frontend content)

- Elastic Beanstalk (for hosting backend api)

- RDS (for hosting the postgres database)
```

## Scripts

With this app comes various NPM scripts for maintenance, to use them run "npm run </script-name/>" on the command line in the project-level directory.

```
- frontend:install (installs node modules needed for the frontend application)

- backend:install (installs node modules needed for the api)

- frontend:test (test the frontend application)

- backend:test (does nothing)

- frontend:build (builds the applicaion)

- backend:build (builds the api)

- deploy (for deploying the frontend and backend to the aws servers)
```

## Pipeline

Using CircleCI, a pipeline is available in this application for auto deploying each time a commit is made to the GitHub repository, the process goes as follows:

- Npm installs the necessary node modules.
- Source code (typescript) is compiled into the final build.

- The frontend is uploaded into the s3 bucket using the aws cli command `aws s3 cp --recursive --acl public-read ./udagram-frontend/www s3://udagram-frontend1345234/`
- The backend is then deployed into a node.js environment using the elastic beanstalk cli command `eb deploy`

## CORS

To run this application, you must run your browser _Without CORS_, here is how to run Chrome without it:

- windows 7 or below: Create a shortcut of Chrome, then open the properties, change the target to
  `"<path-to-chrome>" --disable-web-security --user-data-dir=~/chromeTemp`
- windows 10: run this in the command line:
  `bash "<path-to-chrome>" --disable-web-security --user-data-dir=~/chromeTemp `

## Application Links

1.  [Udagram](udagram-frontend1345234.s3-website-us-east-1.amazonaws.com).

2.  [Api Endpoint](http://udagramapi-env.eba-63vcsmjt.us-east-1.elasticbeanstalk.com).
