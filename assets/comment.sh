for file in $(find . -type f -name *.ts); do
    { echo '//Sarah Pitts 1567183'; cat "$file"; } > temp && mv temp "$file"
done