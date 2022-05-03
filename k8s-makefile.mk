
hello:
 		echo 'k8s makefile'
		

nodes/describe:
	kubectl -n ${namespace} desribe nodes 
	
nodes:
	kubectl -n ${namespace} get nodes
	
nodes/view-labels:
	kubectl -n ${namespace} get nodes --view-labels
	
# create label on node
label/node:
	kubectl label node ${node-name} ${key}=${value}
	
# delete label on node
label/node/delete:
	kubectl label node ${node-name} -${key}
	

	
  
