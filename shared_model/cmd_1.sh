docker run \
  -v "$(pwd)/../shared_model:/workspace/shared" \
  -w /workspace/TripoSR \
  -it triposr \
  python run.py /workspace/shared/pole.jpeg\
  --output-dir /workspace/shared \
  --model-save-format obj \
  --device cpu

