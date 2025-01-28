#!/bin/bash

# Get the current date and time
current_date_time=$(date +"%Y-%m-%d_%H-%M-%S")

# Create the main directory
mkdir "$current_date_time"

# Array of programming languages
languages=("Python" "Java" "C++" "JavaScript" "Ruby" "Go" "C#" "Swift" "PHP" "Rust")

# Create 10 subdirectories and corresponding .txt files
for i in {101..110}; do
    subdir_name="file$i"
    mkdir "$current_date_time/$subdir_name"

    # Extract the index to match the programming language
    language_index=$((i - 101))
    language="${languages[$language_index]}"

    # Create a .txt file and write the programming language to it
    echo "$language" > "$current_date_time/$subdir_name/tuser50${i}.txt"
done

echo "Directory and file creation complete."

