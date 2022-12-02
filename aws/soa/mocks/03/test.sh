for i in {1..10}
do
  aws s3 ls
  echo $i
  aws iam wait user-exists --user-name "yoshiki.kasama"
done