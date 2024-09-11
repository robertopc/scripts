conv(){
docker run -v "$(pwd)":/usr/app/out --rm nevermendel/heif-convert *.$1 -f jpg 2>/dev/null
}

conv HEIC
conv heic
conv HEIF
conv heif
