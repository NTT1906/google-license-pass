trans = dict()
root = dict()
out = dict()
def addLine(str $lfile_name, str line):
	file = open(filename, "a")
	file.write(line)
	file.close()
with open("trans.lang") as lines:
    m = ""
    if 
with open(".lang") as lines:
	old_prefix = "a"
	for line in lines:
		eol = ""
		if f == "\n":
			m = "\n"
		epos = line.find("=")
		xpos = line.find("##")
		dpos = line.find(".")
		if epos > 0:
			key = line[:epos]
			if not key[0].isalpha():
				key = key[1:]
			if key[:dpos] != old_prefix:
				old_prefix = key[:dpos]
				addLine("thaythe.lang", "\n")
			if xpos > 0:
				val = line[epos+1:].rstrip(line[xpos:])+ eol
			else:
				val = line[epos+1:].rstrip("\n") + eol
			a[key] = val