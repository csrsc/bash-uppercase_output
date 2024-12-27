  GNU nano 6.2                            uppercase.sh
#!/bin/bash

# Check if input is provided through pipe or asking for user input
if [ -t 0 ]; then
    # No pipe, ask for user input
    echo "Enter text to convert to uppercase:"
    read input
else
    # Read from pipe
    read input
fi

# Convert to uppercase using tr command
echo "$input" | tr '[:lower:]' '[:upper:]'

