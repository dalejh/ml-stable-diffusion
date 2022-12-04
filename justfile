input := "input/input.txt"

output_str := "--output-path output/"
resource_str := "--resource-path mlpackages/Resources/"

run *ARGS:
  swift run StableDiffusionSample "$(cat {{input}})" {{resource_str}} {{output_str}} {{ARGS}}

test *ARGS:
  echo {{input}}
