TAG=$(awk -F'-' '/IMAGE_VERSION/{printf("%0.4f",$(NF-1)/10000-2000)}' Dockerfile | head -1 | awk -F'.' '{print $1"."(0+$2)}')
