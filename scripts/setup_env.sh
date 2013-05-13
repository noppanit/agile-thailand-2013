
if [ -z "$AWS_CLOUDFORMATION_HOME" ]; then
	export AWS_CLOUDFORMATION_HOME=$PROJECT_CLOUD_FORMATION_HOME/library/cloud-formation/
	export PATH=${PATH}:$AWS_CLOUDFORMATION_HOME/bin
	echo Set AWS_CLOUDFORMATION_HOME to $AWS_CLOUDFORMATION_HOME
else
	echo AWS_CLOUDFORMATION_HOME is set already, not updating path!
fi 

if [ -z "$AWS_CREDENTIAL_FILE" ]; then
	export AWS_CREDENTIAL_FILE=$PROJECT_CLOUD_FORMATION_HOME/.aws
	echo set AWS_CREDENTIAL_FILE to $PROJECT_CLOUD_FORMATION_HOME/.aws
fi

source $AWS_CREDENTIAL_FILE

if [ -z "$AWS_ACCESS_KEY" ]; then
	export AWS_ACCESS_KEY=$AWSAccessKeyId
	echo Set AWS_ACCESS_KEY from $AWS_CREDENTIAL_FILE
else 
	echo AWS_ACCESS_KEY is already set
fi

if [ -z "$AWS_SECRET_KEY" ]; then
	export AWS_SECRET_KEY=$AWSSecretKey
	echo Set AWS_SECRET_KEY from $AWS_CREDENTIAL_FILE
else
	echo AWS_SECRET_KEY is already set
fi

export PATH=$PATH:/$AWS_CLOUDFORMATION_HOME/bin