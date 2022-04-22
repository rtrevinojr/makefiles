
hello:
 		echo 'k8s makefile'
		

nodes:
	kubectl -n ${namespace} desribe nodes 
	
  
