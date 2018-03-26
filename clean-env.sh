 #!/bin/bash
 kubectl get node
 kubectl get pod
 kubectl get deployment
 kubectl get rc
 kubectl get svc
 
 

 kubectl delete deployment  hello-baby
 kubectl delete svc  hello-baby
 kubectl delete pod  hello-baby-5b6b899ff9-j7g89
 kubectl delete rc   xxx
 


rc 复制控制器
rs 副本集
