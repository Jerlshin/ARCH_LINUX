import re 

def process_requirements_file(input_file, output_file):
    pattern = re.compile(r'^([^=]+)==.*$')

    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        for line in infile:
            match = pattern.match(line.strip())
            if match:
                package_name = match.group(1)
                outfile.write(f"{package_name}\n")

input_file = "installed_packages.txt"
output_file = "cleaned_requirements.txt"
process_requirements_file(input_file, output_file)



