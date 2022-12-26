
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
	
# top
top:
	kubectl -n ${namespace} top pods
	kubectl -n ${namespace} top nodes
	
# create & wait
wait:
	kubectl -n ${namespace} wait pods --for=condition=Ready -l job-name=${job-name} --timeout=90s
	kubectl -n ${namespace} wait pods --for=condition=Ready -l subgroup=ai3-server --timeout=90s
	
  
