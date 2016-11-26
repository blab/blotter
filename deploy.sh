echo "Building site"
jekyll build
echo "Deploying site to s3"
s3_website push
