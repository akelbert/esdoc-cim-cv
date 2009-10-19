#! /usr/bin/env python
from optparse import OptionParser
import re
import sys
import libxml2
import libxslt
import os

usage = "usage: %prog [options] mindmap_[flat,bdl].mm"
version = "1.0"
parser = OptionParser(usage)
parser.add_option("-p", "--preprocess",
                  action="store_true", dest="preprocess", default=True,
                  help="preprocess mindmaps to turn '[]' to '<>'")
parser.add_option("-k", "--keep",
                  action="store_true", dest="keep", default=False,
                  help="don't delete any temporary files")
parser.add_option("-f", "--flat",
                  action="store_true", dest="flat", default=False,
                  help="parse a flattened mindmap rather than a bundled one")
parser.add_option("-c", "--coupling",
                  action="store_true", dest="coupling", default=False,
                  help="output coupling parameters")
(options, args) = parser.parse_args()

if len(args) != 1:
  parser.error("incorrect number of arguments")

if options.flat:
  if not(args[0].endswith("_flat.mm")):
     parser.error("expecting input file with name mindmap_flat.mm. Do not use the -f option is you want to parse a mindmap_bdl.mm file.")
  foutname=args[0].replace("_flat.mm",".xml")
  XSLFileName="MMReader_flat.xsl"
else:
  if not(args[0].endswith("_bdl.mm")):
     parser.error("expecting input file with name mindmap_bdl.mm. Use the -f option is you want to parse a mindmap_flat.mm file.")
  foutname=args[0].replace("_bdl.mm",".xml")
  XSLFileName="MMReader_bdl.xsl"

try:
  fin = open(args[0], 'r')
except IOError, (errno, strerror):
  print "I/O error(%s) for file %s: %s" % (errno, args[0], strerror)
  sys.exit(1)

if options.preprocess:
  fpre = open(args[0]+'.pre', 'w')
  print "preprocessing mm xml from %s to %s" % (fin.name,fpre.name)
  for line in fin:
    if re.match("^<text>",line):
      line=line.replace('[','<')
      line=line.replace(']','>')
    fpre.write(line)
  fpre.close()
else:
  fpre=fin

if (options.coupling):
  couple="'yes'"
else:
  couple="'no'"

print "translating mm xml from file %s" % fpre.name
styledoc = libxml2.parseFile("xsl/"+XSLFileName)
style = libxslt.parseStylesheetDoc(styledoc)
doc = libxml2.parseFile(fpre.name)
result = style.applyStylesheet(doc,{"Couple" : couple})
style.saveResultToFilename(foutname, result, 0)
style.freeStylesheet()
doc.freeDoc()
result.freeDoc()

print "written output to file %s" % foutname

if not(options.keep) and options.preprocess:
  print "removed temporary file %s" % fpre.name
  os.remove(args[0]+'.pre')
