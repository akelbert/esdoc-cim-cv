#! /usr/bin/env python
import glob
from lxml import etree as ET
from copy import deepcopy

realmNamesList=['Atmosphere','Ocean','LandIce','Aerosols','AtmosphericChemistry','OceanBioChemistry','LandSurface','SeaIce']
XSLFILENAME="xml2ESGOWL.xsl"

finalResult=[]
fileNameList=glob.glob("*_bdl.xml")
assert len(fileNameList)==8 ,'Error, expecting 8 files, one for each realm'

METAFOR_OWL_NAMESPACE = "http://dataportal.ucar.edu/schemas/metafor.owl#"
OWL2XML_NAMESPACE = "http://www.w3.org/2006/12/owl2-xml#"
OWL2XML_NAMESPACE_BRACKETS="{"+OWL2XML_NAMESPACE+"}"
RDF_NAMESPACE = "http://www.w3.org/1999/02/22-rdf-syntax-ns#"
RDF_NAMESPACE_BRACKETS="{"+RDF_NAMESPACE+"}"
RDFS_NAMESPACE = "http://www.w3.org/2000/01/rdf-schema#"
RDFS_NAMESPACE_BRACKETS="{"+RDFS_NAMESPACE+"}"
OWL_NAMESPACE = "http://www.w3.org/2002/07/owl#"
OWL_NAMESPACE_BRACKETS="{"+OWL_NAMESPACE+"}"
ESG_NAMESPACE = "http://dataportal.ucar.edu/schemas/esg.owl#"
ESG_NAMESPACE_BRACKETS="{"+ESG_NAMESPACE+"}"
NSMAP = {None      : METAFOR_OWL_NAMESPACE,     \
         "owl2xml" : OWL2XML_NAMESPACE, \
         "rdf"     : RDF_NAMESPACE,             \
         "rdfs"    : RDFS_NAMESPACE,            \
         "owl"     : OWL_NAMESPACE,             \
         "esg"     : ESG_NAMESPACE}
myOutput=ET.Element(RDF_NAMESPACE_BRACKETS+'RDF',nsmap=NSMAP)
ont=ET.SubElement(myOutput, OWL_NAMESPACE_BRACKETS+'Ontology',{RDF_NAMESPACE_BRACKETS+'about' : ''})
ET.SubElement(ont, OWL_NAMESPACE_BRACKETS+'imports',{RDF_NAMESPACE_BRACKETS+'resource' : 'http://dataportal.ucar.edu/schemas/esg_data.owl'})
ET.SubElement(ont, OWL_NAMESPACE_BRACKETS+'imports',{RDF_NAMESPACE_BRACKETS+'resource' : 'http://dataportal.ucar.edu/schemas/grid.owl'})

for filename in fileNameList :
    realmName=filename[:filename.find('_')]
    assert realmName in realmNamesList, 'Error, unexpected file name found : '+filename
    doc = ET.parse(filename)
    styledoc = ET.parse("xsl/"+XSLFILENAME)
    style = ET.XSLT(styledoc)
    result = style(doc)
    root=result.getroot()
    idx=1
    for child in root :
        if not(idx==1) :
            myOutput.append( deepcopy(child) )
        idx+=1
print(ET.tostring(myOutput,pretty_print=True))
