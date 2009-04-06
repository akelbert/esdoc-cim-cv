#
## First attempt to understand the mindmap syntax in code ...
# Not much functionality ... yet ...
#

from xml.etree import ElementTree as ET
iconXOR='button_cancel'
iconOR='button_ok'
iconFREETEXT='pencil'
iconTBD='messagebox_warning'
icons={iconXOR:'XOR',iconOR:'OR',iconFREETEXT:'UserDefined',iconTBD:'ToBeDone'}
logicIcons={iconXOR:'XOR',iconOR:'OR'}

class mm:
    ''' implements a python version of a freemind mindmap. '''
    def __init__(self,filename,usefulNodes):
        ''' Initialise from mindmap file '''
        self.etree=ET.parse(filename)
        mmap=self.etree.getroot()
        topnode=mmap.find('node')
        output=ET.Element('vocab')
        #we're interested in those children which are node, and which appear in the usefulNodes list
        nodes=topnode.findall('node')
        for node in nodes:
            try:
                text=node.attrib['TEXT']
                if text in usefulNodes:
                    output.append(self.load(node)[0])
                else:
                    print '(not loading %s)'%text
            except KeyError:
                print '%s does not have text attribute '% node.keys()
        s=ET.tostring(output)
        f=file('output.xml','w')
        f.write(s)
        f.close()
            
    def load(self,parent,param=False):
        ''' Set a rather more nicely formatted xml unit for a child:
        based on a component structure from the mindmap ... '''
        try:
            fontcol=parent.attrib['COLOR']
        except KeyError:
            fontcol='none'
        #discriminate on parameters based on font color
        if fontcol=='#996600':
            e=ET.Element('parameters')
        else:
            e=ET.Element('component')
        #now find out what the actual mind map entry was
        try:
            text=parent.attrib['TEXT']
            e.attrib['name']=parent.attrib['TEXT']
        except KeyError:
            raise "no TEXT found in node %s [%s]"%(parent.tag,parent.keys())
        print 'bnl',text
        # now the children we're interested in are either more nodes, or properties of this node, or 
        # both.  Start by finding out if there are any icons associated with this node.
        logic=None
        eicons=parent.findall('icon')
        for i in eicons:
            try:
                icon=i.attrib['BUILTIN']
            except KeyError:
                print 'problem handling icon'
            if icon in icons: 
                if icon in logicIcons:
                     if logic is None:
                         logic=logicIcons[icon]
                     elif logicIcons[icon]!=logic:
                         print 'multiple icons within entry:',text,logic,logicIcons[icon]
                else:
                    print 'ignoring icon %s for %s'%(icon,text)
            else:
                raise('unknown icon %s:%s'%(icon,text))
        nodes=parent.findall('node')
        for n in nodes:
            s,l=self.load(n)
            if l is not None: logic=l
            if l != logic:
                print 'multiple icons across children',text,logic,l
            e.append(s)
        if e.tag=='parameters': 
            e.attrib['logic']=logic or ''
        return e,logic
            
            
if __name__=="__main__":
    import sys
    f=sys.argv[1]
    # this useful node list is currently constructed by hand, and at the moment we only support the Atmosphere mind map, and
    # not even that ocmpletely.
    cmip5={'Atmosphere.mm':['Atmosphere']}
    froot=cmip5[f]
    MM=mm(f,froot)
        