# rdm-binderhub:hash:e12be37e790625567859e9636b072504
FROM gcr.io/nii-ap-ops/base/matlab-notebook:r2023b

USER root
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		fonts-noto-cjk-extra \
		fonts-noto-cjk \
		git \
	&& rm -rf /var/lib/apt/lists/*

USER $NB_USER

COPY --chown=$NB_UID:$NB_GID . .
