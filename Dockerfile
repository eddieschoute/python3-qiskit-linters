FROM eschoute/python3-qiskit:0.0.2

RUN echo "http://dl-8.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
# RUN apk add openblas-dev
RUN apk --no-cache --update-cache add --virtual lint-build \
		build-base
RUN pip install --no-cache-dir -r requirements-lint.txt
RUN apk del lint-build
