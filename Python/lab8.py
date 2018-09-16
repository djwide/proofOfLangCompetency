from scapy.all import *
import sys

	

def parsePCAP(pkts):
  # iterate through packets	
  ipSDict= {}
  for pkt in pkts:
    # if there is a TCP header 	
    if TCP in pkt:
      if "GET" in str(pkt[TCP].payload)and '204.12.68.73' in pkt[IP].src:
        ls = []
        if str(pkt[IP].src) in ipSDict:
          pass#ipSDict[str(pkt[IP].src)]+=str(pkt[TCP].payload)
        else:
          ipSDict[str(pkt[IP].src)]=ls.append(str(pkt[TCP].payload))
     
      # grab payload and put it in a string
      # dump relevant packet info
      
      #print "Source IP: " + pkt[IP].src	
      #print "Destination IP: " + pkt[IP].dst	
      #print "Source port: " + str(pkt[TCP].sport)	
      #print "Destinations port: " + str(pkt[TCP].dport)	
      
  print ipSDict
  #for mem in ipSDict:
   # str(pkt[TCP].payl
    
    
    
if __name__ == "__main__":
  if len(sys.argv) < 2:
    print "usage: python lab8.py [pcap]"
    sys.exit()	 
  pcap= rdpcap(sys.argv[1])
  parsePCAP(pcap)

