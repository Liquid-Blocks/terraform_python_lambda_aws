import http.client

def lambda_handler(event, context):
    conn = http.client.HTTPSConnection("www.google.com")
    conn.request("GET", "/")
    response = conn.getresponse()

    status_code = response.status
    body = response.read().decode("utf-8")

    print(f"Status Code: {status_code}")
    print(f"Response Body: {body}")

    return {
        "statusCode": status_code,
        "body": body
    }