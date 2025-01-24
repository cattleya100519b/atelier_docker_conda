FROM continuumio/anaconda3:latest

# Conda の初期化（初回ビルド時に必要）
RUN conda init bash

# 必要なパッケージをインストール（例）
# RUN conda install -y some-package

# ENTRYPOINT で base 環境を有効化
ENTRYPOINT ["bash", "-c", "source ~/.bashrc && conda activate && exec bash"]