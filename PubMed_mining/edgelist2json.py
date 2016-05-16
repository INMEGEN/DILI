#!/usr/bin/python3
"""
This script takes from stdin a tsv containing an edgelist in the form:

node1	node2	weight

And outputs a json containing an equivalent network.

Quits on invalid input.
"""

from pprint import pprint
import json
import sys
import networkx as nx
from networkx.readwrite import json_graph

def die():
	print("input does not comply with required format:\n\tnode1 <tab> node2 <tab> weight", file=sys.stderr)
	exit(1)

graph = nx.Graph()

for line in sys.stdin:
	try:
		node1, node2, weight = line.rsplit("\t")
		graph.add_edge(node1, node2, w=int(weight))
	except:
		die()

data = json_graph.node_link_data(graph)
pprint(data)
