FROM pytorch/pytorch:2.1.0-cuda11.8-cudnn8-devel

WORKDIR /workspace

# Install dependencies
RUN apt-get update && apt-get install -y \
    git wget unzip python3-pip && \
    pip install onnxruntime && \
    pip install --upgrade pip


# Clone TripoSR and install Python dependencies
RUN git clone https://github.com/VAST-AI-Research/TripoSR.git && \
    cd TripoSR && \
    pip install -r requirements.txt

WORKDIR /workspace/TripoSR

