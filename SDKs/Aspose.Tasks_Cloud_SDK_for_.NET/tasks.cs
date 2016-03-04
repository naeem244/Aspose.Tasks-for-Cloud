using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Com.Aspose.Tasks.Api;
using Com.Aspose.Storage.Api;
using Com.Aspose.Tasks.Model;
namespace AsposeTasks
{
    class tasks
    {
        public static void Main(String[] args)
        {

string APIKEY = "xxxxx";
string APPSID = "xxxxx";
string BASEPATH = "http://api.aspose.com/v1.1";

///*
//*  Working with Tasks   
//*  Retrieve Task Information 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-project.mpp";
//int taskUid = 1;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    TaskResponse apiResponse = tasksApi.GetProjectTask(name, taskUid, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Task task = apiResponse.Task;
//        Console.WriteLine("Task Name " + task.Name);
//        Console.WriteLine("Start Date " + task.Start);
//        Console.WriteLine("Actual Duration " + task.ActualDuration);
//        Console.WriteLine("Retrieve Task Information, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}

///*
//*  Working with Tasks   
//*  Delete a Task from Project 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-project.mpp";
//int taskUid = 1;
//String storage = "";
//String folder = "";
//String fileName = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = tasksApi.DeleteProjectTask(name, taskUid, storage, folder, fileName);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Delete a Task from Project, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}

///*
//*  Working with Tasks   
//*  Add a Task to Project 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-project.mpp";
//String taskName = "NewTask";
//int beforeTaskId = 1;
//String fileName = "";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    TaskItemResponse apiResponse = tasksApi.PostProjectTask(name, taskName, beforeTaskId, fileName, storage, folder);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Add a Task to Project, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}

///*
//*  Working with Resources    
//*  Delete Resource From Project 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-project.mpp";
//int resourceUid = 1;
//String storage = "";
//String folder = "";
//String fileName = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = tasksApi.DeleteProjectResource(name, resourceUid, storage, folder, fileName);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Delete Resource From Project, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}


///*
//*  Working with Resources    
//*  Add a Resource To Project 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-project.mpp";
//String resourceName = "Resource6";
//int beforeResourceId = 1;
//String fileName = "";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResourceItemResponse apiResponse = tasksApi.PostProjectResource(name, resourceName, beforeResourceId, fileName, storage, folder);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Add a Resource To Project, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with Resources    
//*  Retrieve Resource Information 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

////set input file name
//String name = "sample-project.mpp";
//int resourceUid = 1;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResourceResponse apiResponse = tasksApi.GetProjectResource(name, resourceUid, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Resource resource = apiResponse.Resource;
//        Console.WriteLine("Resource Id " + resource.Id);
//        Console.WriteLine("Resource Name  " + resource.Name);
//        Console.WriteLine("Retrieve Resource Information, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with Calendars     
//*  Retrieve Calendars Information from a Project 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-project.mpp";
//String storage = null;
//String folder = null;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    CalendarItemsResponse apiResponse = tasksApi.GetProjectCalendars(name, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        foreach (CalendarItem calendarItem in apiResponse.Calendars.List)
//        {
//            Console.WriteLine("Calendar Name " + calendarItem.Name);
//            Console.WriteLine("Calendar Uid  " + calendarItem.Uid);
//        }
//        Console.WriteLine("Retrieve Calendars Information from a Project, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}




///*
//*  Working with Calendars     
//*  Add Calendar to Project 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-project.mpp";
//String fileName = null;
//String storage = null;
//String folder = null;
//Calendar body = new Calendar();
//body.Uid = 0;
//body.Name = "TestCalender";
//body.IsBaseCalendar = true;
//body.IsBaselineCalendar = false;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    CalendarItemResponse apiResponse = tasksApi.PostProjectCalendar(name, fileName, storage, folder, body);


//    if (apiResponse != null)
//    {
//        Console.WriteLine("Add Calendar to Project, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}




///*
//*  Working with Calendars     
//*  Delete a Calendar from Project 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-project.mpp";
//int calendarUid = 2;
//String storage = null;
//String folder = null;
//String fileName = null;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = tasksApi.DeleteProjectCalendar(name, calendarUid, storage, folder, fileName);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Delete a Calendar from Project, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}




///*
//*  Working with Assignments      
//*  Retrieve Assignments Information from Project 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-project.mpp";
//String storage = null;
//String folder = null;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    AssignmentItemsResponse apiResponse = tasksApi.GetProjectAssignments(name, storage, folder);


//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        foreach (AssignmentItem assignmentItem in apiResponse.Assignments.AssignmentItem)
//        {
//            Console.WriteLine("Calendar Name " + assignmentItem.Uid);
//            Console.WriteLine("Calendar Uid  " + assignmentItem.TaskUid);
//            Console.WriteLine("Calendar Uid  " + assignmentItem.ResourceUid);
//        }
//        Console.WriteLine("Retrieve Assignments Information from Project, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with Assignments      
//*  Add Assignment to Project 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-project.mpp";
//int taskUid = 1;
//int resourceUid = 1;
//Double units = 1.0;
//String fileName = "";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    AssignmentItemResponse apiResponse = tasksApi.PostProjectAssignment(name, taskUid, resourceUid, units, fileName, storage, folder);



//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Add Assignment to Project , Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}




///*
//*  Working with Assignments      
//*  Delete an Assignment from a Project 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-project-2.mpp";
//int assignmentUid = 1;
//String storage = "";
//String folder = "";
//String fileName = "";


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = tasksApi.DeleteProjectAssignment(name, assignmentUid, storage, folder, fileName);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Delete an Assignment from a Project, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}





///*
//*  Working with Links       
//*  Retrieve Task Links Information from a Project 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-project.mpp";
//String storage = null;
//String folder = null;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    TaskLinksResponse apiResponse = tasksApi.GetTaskLinks(name, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        foreach (TaskLink taskLink in apiResponse.TaskLinks)
//        {
//            Console.WriteLine("Task Link Index  " + taskLink.Index);
//            Console.WriteLine("PredecessorUid " + taskLink.PredecessorUid);
//            Console.WriteLine("SuccessorUid " + taskLink.SuccessorUid);
//        }
//        Console.WriteLine("Retrieve Task Links Information from a Project, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}




///*
//*  Working with Links       
//*  Add a Task Link to Project 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-project.mpp";
//String storage = "";
//String folder = "";
//String fileName = "";

//TaskLink body = new TaskLink();
//body.Index = 2;
//body.PredecessorUid = 1;
//body.SuccessorUid = 2;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = tasksApi.PostTaskLink(name, storage, folder, fileName, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Add a Task Link to Project, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}




///*
//*  Working with Links       
//*  Delete a Task Link 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-project.mpp";
//int index = 1;
//String storage = "";
//String folder = "";
//String fileName = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = tasksApi.DeleteTaskLink(name, index, storage, folder, fileName);


//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Delete a Task Link, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with Outline Codes and Extended Attributes        
//*  Retrieve Outline Codes Information 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-project.mpp";
//String storage = null;
//String folder = null;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    OutlineCodeItemsResponse apiResponse = tasksApi.GetOutlineCodes(name, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Retrieve Outline Codes Information, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}

///*
//*  Working with Outline Codes and Extended Attributes        
//*  Delete A Project Outline Code 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "Outlinecode.mpp";
//int index = 1;
//String storage = null;
//String folder = null;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = tasksApi.DeleteOutlineCodeByIndex(name, index, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Delete A Project Outline Code, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with Outline Codes and Extended Attributes        
//*  Retrieve Extended Attributes Information 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "ResourceWithExtAttribs.xml";
//String storage = null;
//String folder = null;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ExtendedAttributeItemsResponse apiResponse = tasksApi.GetExtendedAttributes(name, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Retrieve Extended Attributes Information , Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with Outline Codes and Extended Attributes        
//*  Delete A Project Extended Attribute 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "ExtendedAttribute.mpp";
//int index = 1;
//String storage = null;
//String folder = null;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = tasksApi.DeleteExtendedAttributeByIndex(name, index, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Delete A Project Extended Attribute , Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



///*
//*  Working with Project Documents       
//*  Convert Project Data to Other Formats 
//*/

//TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "sample-project";
//String fileName = name + ".mpp";
//String format = "pdf";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + fileName));

//    //invoke Aspose.PDF Cloud SDK API to append word document
//    ResponseMessage apiResponse = tasksApi.GetTaskDocumentWithFormat(fileName, format, storage, folder);

//    if (apiResponse != null)
//    {
//        //download appended document from storage server
//        System.IO.File.WriteAllBytes("\\temp\\" + name + "." + format, apiResponse.ResponseStream);
//        Console.WriteLine("Retrieve Outline Codes Information, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

//}



/*
*  Working with Outline Codes and Extended Attributes        
*  Retrieve Project Properties 
*/

TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

String name = "sample-project.mpp";
String storage = null;
String folder = null;

try
{
    //upload source file to aspose cloud storage
    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

    //invoke Aspose.PDF Cloud SDK API to append word document
    DocumentPropertiesResponse apiResponse = tasksApi.GetDocumentProperties(name, storage, folder);

    if (apiResponse != null && apiResponse.Status.Equals("OK"))
    {
        foreach (DocumentProperty docProp in apiResponse.Properties.List)
        {
            Console.WriteLine(docProp.Name + " :: " + docProp.Value);
        }
        Console.WriteLine("Retrieve Project Properties, Done!");
        Console.ReadKey();
    }
}
catch (Exception ex)
{
    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

}



            ///*
            //*  Working with Outline Codes and Extended Attributes        
            //*  Retrieve Outline Codes Information 
            //*/

            //TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
            //StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            //String name = "sample-project.mpp";
            //String storage = null;
            //String folder = null;

            //try
            //{
            //    //upload source file to aspose cloud storage
            //    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

            //    //invoke Aspose.PDF Cloud SDK API to append word document
            //    OutlineCodeItemsResponse apiResponse = tasksApi.GetOutlineCodes(name, storage, folder);

            //    if (apiResponse != null && apiResponse.Status.Equals("OK"))
            //    {
            //        Console.WriteLine("Retrieve Outline Codes Information, Done!");
            //        Console.ReadKey();
            //    }
            //}
            //catch (Exception ex)
            //{
            //    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

            //}



            ///*
            //*  Working with Outline Codes and Extended Attributes        
            //*  Retrieve Outline Codes Information 
            //*/

            //TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
            //StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            //String name = "sample-project.mpp";
            //String storage = null;
            //String folder = null;

            //try
            //{
            //    //upload source file to aspose cloud storage
            //    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

            //    //invoke Aspose.PDF Cloud SDK API to append word document
            //    OutlineCodeItemsResponse apiResponse = tasksApi.GetOutlineCodes(name, storage, folder);

            //    if (apiResponse != null && apiResponse.Status.Equals("OK"))
            //    {
            //        Console.WriteLine("Retrieve Outline Codes Information, Done!");
            //        Console.ReadKey();
            //    }
            //}
            //catch (Exception ex)
            //{
            //    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

            //}



            ///*
            //*  Working with Outline Codes and Extended Attributes        
            //*  Retrieve Outline Codes Information 
            //*/

            //TasksApi tasksApi = new TasksApi(APIKEY, APPSID, BASEPATH);
            //StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            //String name = "sample-project.mpp";
            //String storage = null;
            //String folder = null;

            //try
            //{
            //    //upload source file to aspose cloud storage
            //    storageApi.PutCreate(name, "", "", System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));

            //    //invoke Aspose.PDF Cloud SDK API to append word document
            //    OutlineCodeItemsResponse apiResponse = tasksApi.GetOutlineCodes(name, storage, folder);

            //    if (apiResponse != null && apiResponse.Status.Equals("OK"))
            //    {
            //        Console.WriteLine("Retrieve Outline Codes Information, Done!");
            //        Console.ReadKey();
            //    }
            //}
            //catch (Exception ex)
            //{
            //    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);

            //}





//
// End...
//
        }
    }
}
