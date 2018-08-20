import boto3

def lambda_handler(event, context):
    ec2 = boto3.resource('ec2')
    instance = ec2.create_instances(
    ImageId='ami-b70554c8',
    MinCount=1,
    MaxCount=1,
    InstanceType='t2.micro')
