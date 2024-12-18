#!/bin/bash

input_file=$1


count_bal=$(grep -o -w "бал" "$input_file" | wc -l)

count_start_a=$(grep -o -w '\ba[a-zA-Zа-яА-Я]*' "$input_file" | wc -l)

count_end_a=$(grep -o -w '[a-zA-Zа-яА-Я]*а\b' "$input_file" | wc -l)


count_a_smth_a=$(grep -o '\ba[a-zA-Zа-яА-Я]*а\b' "$input_file" | wc -l)


count_a_more_b=$(grep -o -w '[a-zA-Zа-яА-Я]*' "$input_file" | while read -r word; do
    a_count=$(echo "$word" | grep -o "а" | wc -l)
    b_count=$(echo "$word" | grep -o "б" | wc -l)
    if (( a_count > b_count )); then
        echo "$word"
    fi
done | wc -l)


echo "бал: $count_bal" > info
echo "а*: $count_start_a" >> info
echo "*а: $count_end_a" >> info
echo "а*а: $count_a_smth_a" >> info
echo "а>б: $count_a_more_b" >> info

