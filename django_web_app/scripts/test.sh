    echo "hi"
    url="http://localhost:8001/"
    httpStatus=script: "curl -s -o /dev/null -w \"%{http_code}\" $url", returnStatus: true.trim().toInteger()
    if (httpStatus == 200) {
        echo "Success! HTTP Status Code: $httpStatus"
    } else {
        error "Failed! HTTP Status Code: $httpStatus"
    }