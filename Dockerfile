FROM eschoute/python3-qiskit:0.0.2

#RUN echo "http://dl-8.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk --no-cache --update-cache add --virtual lint-build \
		build-base linux-headers
RUN pip install --no-cache-dir pylint mypy
RUN apk del lint-build
