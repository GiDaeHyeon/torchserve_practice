docker run --rm -it \
-p 3000:8080 -p 3001:8081 \
-v $(pwd)/model-store:/home/model-server/model-store \
--name torchserve \
pytorch/torchserve:0.4.2-cpu \
torchserve --start --model-store model-store --models resnet34=/resnet34.mar