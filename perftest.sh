host="fabmedical-615394.mongo.cosmos.azure.com"
username="fabmedical-615394"
password="NuVMKQtxErWYrpqN0YW9h4wdiwx05JTajLDWTjRQnTvhIWhQsglf54PMK7ZLNvui4imcaJFJXfPLgQilYI34AQ=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done