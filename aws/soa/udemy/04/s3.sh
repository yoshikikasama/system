aws s3api create-bucket --bucket udemy20200190 --region ap-northeast-1 --create-bucket-confguration LocationConstraint=ap-northeast-1

aws s3api put-bucket-versioning --bucket udemy20200190 --versioning-configuration Status=Enabled

aws s3api put-public-access-block --bucket udemy20200190 --public-access-block-configuration "BlockPublicAcls=true"