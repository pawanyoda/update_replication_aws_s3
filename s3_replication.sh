


aws iam create-role --role-name role-name --assume-role-policy-document file://s3_iam.json

aws iam put-role-policy --role-name role-name \
--policy-document file://s3_replication_iam_policy.json \
--policy-name policy-name

aws s3api put-bucket-replication --replication-configuration file://s3_replication_rules.json \
--bucket bucketA
