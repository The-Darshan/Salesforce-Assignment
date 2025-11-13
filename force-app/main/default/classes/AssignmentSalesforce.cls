public class AssignmentSalesforce{

    public static void insertCollege(){
        List<College__c> collegeList = new List<College__c>();

        for(Integer i=1;i<=10;i++){
            College__c college = new College__c(Name='College'+i , CollegeEmail__c='college'+i+'@gmail.com');
            collegeList.add(college);
        }

        insert collegeList;

    }

    public static void insertStudent(){

        List<Student__c>studentList = new List<Student__c>();
        List<College__c> collegeList = [SELECT Id from College__c];

        for(Integer i=1;i<=10;i++){
            Student__c student = new Student__c(Name='Student'+i ,Email__c='student'+i+'@gmail.com', Marks__c=80+i , DateOfBirth__c= System.today());
            student.College__c = collegeList.get(i).Id;
            studentList.add(student);
        }

        insert studentList;
    }

}