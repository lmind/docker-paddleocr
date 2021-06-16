FROM lmind/docker-paddlepaddle:v1.0


RUN \
  git clone https://github.com/PaddlePaddle/PaddleOCR.git /usr/local/lib/python3.9/dist-packages/paddleocr \
  && git -C /usr/local/lib/python3.9/dist-packages/paddleocr checkout v2.1.1 \
  && pip install shapely scikit-image imgaug pyclipper lmdb tqdm visualdl python-Levenshtein \
  && python3 -c "from paddleocr import PaddleOCR; PaddleOCR(use_angle_cls=True, lang='ch')" \
  && python3 -c "from paddleocr import PaddleOCR; PaddleOCR(use_angle_cls=True, lang='en')"
