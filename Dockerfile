FROM harbor.vcloud.nii.ac.jp/vcpjupyter/cloudop-notebook:20220725-ssl-cc
WORKDIR /notebooks/notebook
RUN curl -fsSL https://s3-ap-northeast-1.amazonaws.com/vcp-jupyternotebook/23.11.0/jupyternotebook_vcpsdk-23.11.0.tgz | tar zxf - -C /notebooks/notebook

ENTRYPOINT ["sh", "-c", "/opt/conda/bin/jupyterhub-singleuser"]
