import re

def offset(value):
    return r'"x": ' + str(int(value.group(1)) - 2340) + ','

with open('../locations/overworld_past.json', 'r') as file:
  filedata = file.read()

result = re.sub(r'"x":[ \t]*(\d+),', offset, filedata)

with open('NEW.json', 'w') as file:
  file.write(result)