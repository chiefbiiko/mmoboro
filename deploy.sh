# aws cloudformation deploy --stack-name zyzx --template-file ./stack.yml

stack_name=zyzx
change_set_name=$stack_name-change-set-$(date +%s)

if &>/dev/null aws cloudformation describe-stacks --stack-name $stack_name;
then
  change_set_type=UPDATE
else
  change_set_type=CREATE
fi

aws cloudformation create-change-set \
  --stack-name $stack_name \
  --change-set-name $change_set_name \
  --change-set-type $change_set_type \
  --template-body file://stack.yml

aws cloudformation describe-change-set \
  --stack-name $stack_name \
  --change-set-name $change_set_name \
| \
jq '.Changes'
    