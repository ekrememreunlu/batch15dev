List<String> coloursList = new List<String>{'Red', 'Green', 'Blue', 'Yellow', 'Black'};
system.debug('Colors List: ' +coloursList);
system.debug('size of colors list: ' + coloursList.size());
System.debug('Does colour list contain red?' +coloursList.contains('Red'));
string lastColour = coloursList[coloursList.size()-1];
system.debug('Last colour in Upper case:' + lastColour.toUpperCase());
string thirdElement = coloursList.get(3);
string third = thirdElement.toUpperCase();
System.debug('fourt element in upper case: ' + third);

List<String> colourCodesList = new List<String>{'#FF0000', '#00FF00', '#0000FF', '#FFFF00', '#800080'};
System.debug('Are colourCodesList and coloursList equal? ' + (colourCodesList == coloursList));
List<String> mergedList = new List<String>();
mergedList.addAll(colourCodesList);
mergedList.addAll(coloursList);
System.debug('Merged List: ' + mergedList);
