#!/bin/bash
# create-post.sh

# Check if a title was provided
if [ -z "$1" ]; then
    echo "Usage: ./create-post.sh \"My Post Title\""
    exit 1
fi

# Create filename from title
DATE=$(date +%Y-%m-%d)
FILENAME="${DATE}-$(echo $1 | tr ' ' '_').md"

# Create the file with a template
cat > "posts/$FILENAME" << EOL
# $1

Your content here...
EOL

# Run the generate-index script
./generate-index.sh

# Add both files to git
# git add "posts/$FILENAME" posts/index.json

echo "Edit your post at: posts/$FILENAME"
