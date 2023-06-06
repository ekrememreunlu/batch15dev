public class ListExtra_Assignment {
    public static List<String> schoolsList() {
        List<String> schools = new List<String>{'S1 English', 'S2 English', 'S3 Turkish', 'S4 English', 'S5 Turkish', 'S6 Japanese'};
        return schools;
    }
    
    public static Map<String,List<String>> schoolsMaps() {
        List<String> schools = schoolsList();
        Map<String,List<String>> mediumMap = new Map<String,List<String>>();
        for (String school : schools) {
            if (school.contains('English')) {
                if (!mediumMap.containsKey('English')) {
                    mediumMap.put('English', new List<String>{school});
                } else {
                    mediumMap.get('English').add(school);
                }
            } else if (school.contains('Turkish')) {
                if (!mediumMap.containsKey('Turkish')) {
                    mediumMap.put('Turkish', new List<String>{school});
                } else {
                    mediumMap.get('Turkish').add(school);
                }
            } else if (school.contains('Japanese')) {
                if (!mediumMap.containsKey('Japanese')) {
                    mediumMap.put('Japanese', new List<String>{school});
                } else {
                    mediumMap.get('Japanese').add(school);
                }
            }
        }
        return mediumMap;
    }
}