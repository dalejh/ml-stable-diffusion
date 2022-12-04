input := "input/input.txt"

output_str := "--output-path output/"
resource_str := "--resource-path mlpackages/Resources/"

setup:
  mkdir output && pip install -r requirements.txt && python -m python_coreml_stable_diffusion.torch2coreml --convert-unet --convert-text-encoder --convert-vae-decoder --convert-safety-checker --bundle-resources-for-swift-cli -o mlpackages/ 

run *ARGS:
  swift run StableDiffusionSample "$(cat {{input}})" {{resource_str}} {{output_str}} {{ARGS}}

test *ARGS:
  echo {{input}}
