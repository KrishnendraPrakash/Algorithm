func mergesort<T:Comparable>(array:inout [T]) -> [T]{
           // Base condition if array has only element
           if array.count <= 1{
               return array
           }else{
               let midIndex = array.count/2
               var leftArray = Array(array[0..<midIndex])
               let l = mergesort(array: &leftArray)
               print(l)
               var rightArray = Array(array[midIndex..<array.endIndex])
               let r = mergesort(array: &rightArray)
               print(r)
               array = merging(leftArray: leftArray, rightArray: rightArray)
               return array
       }
   }

   
   func merging<T:Comparable>(leftArray:[T], rightArray:[T]) -> [T]{
       var i=0, j = 0
       var tempArray = [T]()
       while (i<leftArray.count && j<rightArray.count) {
          if leftArray[i] <= rightArray[j]{
               tempArray.append(leftArray[i])
               i = i+1
           }else{
               tempArray.append(rightArray[j])
               j = j+1
           }
       }
       while (i<leftArray.count){
           tempArray.append(leftArray[i])
           i = i+1
       }
       while (j<rightArray.count){
                  tempArray.append(rightArray[j])
                  j = j+1
       }
       return tempArray
   }

//var A = [5,4,3,2,1]
var A = ["Tom", "Harry", "Ron", "Chandler", "Monica"]
let c = mergesort(array: &A)
print(c)
