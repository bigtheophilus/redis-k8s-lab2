#!/bin/bash

read -p "Enter the key: " key
read -p "Enter the value: " value

BASE_URL="http://localhost:8080/api"

echo "Storing value..."
curl -s -X POST "${BASE_URL}/cache?key=${key}&value=${value}"
echo

echo "Retrieving value..."
curl -s "${BASE_URL}/cache?key=${key}"
echo

