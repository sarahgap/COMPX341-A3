echo "Running pipeline..."

if npm install; then
    echo "npm install completed successfully"
else
    echo "npm install failed"
    exit
fi 

if npm run build; then
    echo "npm run build completed successfully"
    git add .
    git commit -m "COMPX341-22A-A3 Commiting from CI/CD Pipeline"
    git push
else
    echo "npm run build failed"
    exit
fi 

npm run start
