FROM docker.io/library/alpine:latest

LABEL org.opencontainers.image.description='A containerized installation of the web-based Fontra font-editing app'
LABEL org.opencontainers.image.base.name="docker.io/_/alpine:latest"
LABEL org.opencontainers.image.url="https://github.com/5310/oci-fontra"

# Runlabels

LABEL RUN='\
	podman run -itq --rm --pull \
		-p 8000:8000 \
		-v .:/root/volume \
		\${IMAGE} \
		filesystem /root/volume \
'

RUN <<-EOR
	apk add --no-cache git python3 nodejs npm
	git clone https://github.com/googlefonts/fontra.git /root/fontra
	cd /root/fontra
	python3 -m venv venv --prompt=fontra
	source venv/bin/activate
	pip install --no-cache-dir --upgrade pip
	pip install --no-cache-dir -r requirements.txt
	pip install --no-cache-dir -e .
EOR

ENTRYPOINT ["/root/fontra/venv/bin/fontra", "--launch"]
CMD ["filesystem", "/root"]