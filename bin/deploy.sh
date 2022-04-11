aws s3 cp --recursive --acl public-read ./udagram-frontend/www s3://udagram-frontend1345234/
cd udagram-api
eb deploy