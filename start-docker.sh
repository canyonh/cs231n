DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker run -it --rm  -p 8888:8888 -v ${DIR}:/root/cs231n cs231n-docker sh -c "jupyter notebook --ip=0.0.0.0 --no-browser"

