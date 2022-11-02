import json
import boto3

def lambda_handler(event, context):
    # TODO implement
    subject="Autoscaling detected"
    client=boto3.client("ses")
    body="""
         <br>
           Autoscaling detected
         <br>
        """
    message={"Subject":{"Data":subject},"Body":{"Html":{"Data":body}}}
    response=client.send_email(Source="mayur.vispute@nice.com",Destination={"ToAddresses":["mayur.vispute@nice.com"]},Message=message)
    print("Mail sent")
