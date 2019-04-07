#! /usr/bin/env sh

# arg 1) file name
# arg 2) line range 'begin,end'
file="$1"
range="$2"
sed -i $range'{s|\\sum\\limits|\\sum|g}' "$file"
sed -i $range'{s|\\in\([^a-zA-Z]\)|∈\1|g}' "$file"
sed -i $range'{s|\\sum|Σ|g}' "$file"
sed -i $range'{s|\\cdot| · |g}' "$file"
sed -i $range'{s|\\gamma| γ |g}' "$file"
sed -i $range'{s|\\int\([^a-zA-Z]\)|∫\1|g}' "$file"
sed -i $range'{s|\\partial K|\\Rand K |g}' "$file"
sed -i $range'{s|\\partial Ω|\\Rand{Ω}|g}' "$file"
sed -i $range'{s|\\partial|∂|g}' "$file"  # often wrong if Rand is meant
sed -i $range'{s|:=| \coloneqq |g}' "$file"
sed -i $range'{s|\\Delta|\\laplace |g}' "$file"
sed -i $range'{s|\\nabla|∇|g}' "$file"
sed -i $range'{s|  | |g}' "$file"
sed -i $range'{s|{ |{|g}' "$file"
sed -i $range'{s| }|}|g}' "$file"
sed -i $range'{s| $||g}' "$file"
