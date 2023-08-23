sushi -s -o.
rm ./temp/*
cp ./fsh-generated/resources/EpisodeOfCare-*.json ./temp
java -jar ~/validator_cli.jar ./temp  -ig ./output/full-ig/site/package.tgz -profile NesEnrolment -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation.html
