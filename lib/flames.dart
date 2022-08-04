List eliminate(n1,n2){
    for(int i=0;i<n1.length;i++){
        for(int j=0;j<n2.length;j++){
            if(n1[i]==n2[j]){
                var c = n1[i];
                n1.remove(c);
                n2.remove(c);
                var l3=n1+['*']+n2;
                return [l3,true];
            }
        }
    }
    var l3=n1+['*']+n2;
    return [l3,false];
}


String flames(x,y){
     String x1 = x;
     String x2 = y;
    x1=x1.toLowerCase();
    x2=x2.toLowerCase();
    x1=x1.replaceAll(' ','');
    x2=x2.replaceAll(' ','');
    List<String>n1 = x1.split('');
    List<String>n2 = x2.split('');
    bool proceed = true;
    while(proceed){
    List retlist = eliminate(n1,n2);
    var c1=retlist[0];
    proceed = retlist[1];
      int index = c1.indexOf('*');
       n1=c1.sublist(0,index);
       n2=c1.sublist(index+1);
    }
  int count = n1.length +n2.length;
  List<String> res = ["Friends", "Lovers", "Affectionate", "Marriage", "Enemies", "Siblings"];
  
  while(res.length >1){
    int splitindex= count%res.length -1;
    if(splitindex>=0){
      List<String> right = res.sublist(splitindex+1);
      List<String> left = res.sublist(0,splitindex);
      res = right + left;
      
    }
    else{
      res = res.sublist(0,res.length-1);
    }
  }
  return res[0];
}