using Com.Aspose.Tasks.Api;
using Com.Aspose.Tasks.Model;
using Com.Aspose.Storage.Api;

using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace TasksTest
{
    
    
    /// <summary>
    ///This is a test class for TestTasksApi and is intended
    ///to contain all TestTasksApi Unit Tests
    ///</summary>
    [TestClass()]
    public class TestTasksApi
    {

        protected string APIKEY = "xxxxxx";
        protected string APPSID = "xxxxxx";
        protected string BASEPATH = "http://api.aspose.com/v1.1";
        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Additional test attributes
        // 
        //You can use the following additional attributes as you write your tests:
        //
        //Use ClassInitialize to run code before running the first test in the class
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //Use ClassCleanup to run code after all tests in a class have run
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //Use TestInitialize to run code before running each test
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //Use TestCleanup to run code after each test has run
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///A test for DeleteCalendarException
        ///</summary>
        [TestMethod()]
        public void TestDeleteCalendarException()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "sample-project.mpp";
            int? calendarUid = 1;
            int? index = 1;
            string fileName = null;
            string storage = null;
            string folder = null;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            SaaSposeResponse actual;
            actual = target.DeleteCalendarException(name, calendarUid, index, fileName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new SaaSposeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for DeleteExtendedAttributeByIndex
        ///</summary>
        [TestMethod()]
        public void TestDeleteExtendedAttributeByIndex()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "ExtendedAttribute.mpp";
            int? index = 1;
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            SaaSposeResponse actual;
            actual = target.DeleteExtendedAttributeByIndex(name, index, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new SaaSposeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for DeleteOutlineCodeByIndex
        ///</summary>
        [TestMethod()]
        public void TestDeleteOutlineCodeByIndex()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "Outlinecode.mpp";
            int? index = 1;
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            SaaSposeResponse actual;
            actual = target.DeleteOutlineCodeByIndex(name, index, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new SaaSposeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for DeleteProjectAssignment
        ///</summary>
        [TestMethod()]
        public void TestDeleteProjectAssignment()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? assignmentUid = 1;
            string storage = null;
            string folder = null;
            string fileName = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            SaaSposeResponse actual;
            actual = target.DeleteProjectAssignment(name, assignmentUid, storage, folder, fileName);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new SaaSposeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for DeleteProjectCalendar
        ///</summary>
        [TestMethod()]
        public void TestDeleteProjectCalendar()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project.mpp";
            int? calendarUid = 2;
            string storage = null;
            string folder = null;
            string fileName = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            SaaSposeResponse actual;
            actual = target.DeleteProjectCalendar(name, calendarUid, storage, folder, fileName);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new SaaSposeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for DeleteProjectResource
        ///</summary>
        [TestMethod()]
        public void TestDeleteProjectResource()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project.mpp";
            int? resourceUid = 1;
            string storage = null;
            string folder = null;
            string fileName = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            SaaSposeResponse actual;
            actual = target.DeleteProjectResource(name, resourceUid, storage, folder, fileName);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new SaaSposeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for DeleteProjectTask
        ///</summary>
        [TestMethod()]
        public void TestDeleteProjectTask()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? taskUid = 1;
            string storage = null;
            string folder = null;
            string fileName = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            SaaSposeResponse actual;
            actual = target.DeleteProjectTask(name, taskUid, storage, folder, fileName);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new SaaSposeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for DeleteTaskLink
        ///</summary>
        [TestMethod()]
        public void TestDeleteTaskLink()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? index = 1;
            string storage = null;
            string folder = null;
            string fileName = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            SaaSposeResponse actual;
            actual = target.DeleteTaskLink(name, index, storage, folder, fileName);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new SaaSposeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetCalendarExceptions
        ///</summary>
        [TestMethod()]
        public void TestGetCalendarExceptions()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project.mpp";
            int? calendarUid = 1;
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            CalendarExceptionsResponse actual;
            actual = target.GetCalendarExceptions(name, calendarUid, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new CalendarExceptionsResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetCriticalPath
        ///</summary>
        [TestMethod()]
        public void TestGetCriticalPath()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project.mpp";
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            TaskItemsResponse actual;
            actual = target.GetCriticalPath(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new TaskItemsResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetDocumentProperties
        ///</summary>
        [TestMethod()]
        public void TestGetDocumentProperties()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            DocumentPropertiesResponse actual;
            actual = target.GetDocumentProperties(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new DocumentPropertiesResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetDocumentProperty
        ///</summary>
        [TestMethod()]
        public void TestGetDocumentProperty()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string propertyName = "Title";
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            DocumentPropertyResponse actual;
            actual = target.GetDocumentProperty(name, propertyName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new DocumentPropertyResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetExtendedAttributeByIndex
        ///</summary>
        [TestMethod()]
        public void TestGetExtendedAttributeByIndex()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? index = 1;
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            ExtendedAttributeResponse actual;
            actual = target.GetExtendedAttributeByIndex(name, index, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new ExtendedAttributeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetExtendedAttributes
        ///</summary>
        [TestMethod()]
        public void TestGetExtendedAttributes()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            ExtendedAttributeItemsResponse actual;
            actual = target.GetExtendedAttributes(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new ExtendedAttributeItemsResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetOutlineCodeByIndex
        ///</summary>
        [TestMethod()]
        public void TestGetOutlineCodeByIndex()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? index = 1;
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            OutlineCodeResponse actual;
            actual = target.GetOutlineCodeByIndex(name, index, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new OutlineCodeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetOutlineCodes
        ///</summary>
        [TestMethod()]
        public void TestGetOutlineCodes()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            OutlineCodeItemsResponse actual;
            actual = target.GetOutlineCodes(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new OutlineCodeItemsResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetProjectAssignment
        ///</summary>
        [TestMethod()]
        public void TestGetProjectAssignment()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? assignmentUid = 1;
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            AssignmentResponse actual;
            actual = target.GetProjectAssignment(name, assignmentUid, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new AssignmentResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetProjectAssignments
        ///</summary>
        [TestMethod()]
        public void TestGetProjectAssignments()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            AssignmentItemsResponse actual;
            actual = target.GetProjectAssignments(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new AssignmentItemsResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetProjectCalendar
        ///</summary>
        [TestMethod()]
        public void TestGetProjectCalendar()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? calendarUid = 1;
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            CalendarResponse actual;
            actual = target.GetProjectCalendar(name, calendarUid, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new CalendarResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetProjectCalendars
        ///</summary>
        [TestMethod()]
        public void TestGetProjectCalendars()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            CalendarItemsResponse actual;
            actual = target.GetProjectCalendars(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new CalendarItemsResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetProjectResource
        ///</summary>
        [TestMethod()]
        public void TestGetProjectResource()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? resourceUid = 1;
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            ResourceResponse actual;
            actual = target.GetProjectResource(name, resourceUid, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new ResourceResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetProjectResources
        ///</summary>
        [TestMethod()]
        public void TestGetProjectResources()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            ResourceItemsResponse actual;
            actual = target.GetProjectResources(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new ResourceItemsResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetProjectTask
        ///</summary>
        [TestMethod()]
        public void TestGetProjectTask()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? taskUid = 1;
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            TaskResponse actual;
            actual = target.GetProjectTask(name, taskUid, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new TaskResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetProjectTasks
        ///</summary>
        [TestMethod()]
        public void TestGetProjectTasks()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            TaskItemsResponse actual;
            actual = target.GetProjectTasks(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new TaskItemsResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetProjectWbsDefinition
        ///</summary>
        [TestMethod()]
        public void TestGetProjectWbsDefinition()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            WBSDefinitionResponse actual;
            actual = target.GetProjectWbsDefinition(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new WBSDefinitionResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetReportPdf
        ///</summary>
        [TestMethod()]
        public void TestGetReportPdf()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string type = "WorkOverview";
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            ResponseMessage actual;
            actual = target.GetReportPdf(name, type, storage, folder);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType());
        }

        /// <summary>
        ///A test for GetResourceAssignments
        ///</summary>
        [TestMethod()]
        public void TestGetResourceAssignments()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? resourceUid = 1;
            string storage = null;
            string folder = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            AssignmentsResponse actual;
            actual = target.GetResourceAssignments(name, resourceUid, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new AssignmentsResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetRiskAnalysisReport
        ///</summary>
        [TestMethod()]
        public void TestGetRiskAnalysisReport()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? taskUid = 1;
            string type = null;
            int? optimistic = null;
            int? pessimistic = null;
            string level = null;
            int? iterations = null;
            string storage = null;
            string folder = null;
            string fileName = null;
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            ResponseMessage actual;
            actual = target.GetRiskAnalysisReport(name, taskUid, type, optimistic, pessimistic, level, iterations, storage, folder, fileName);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType());
        }

        /// <summary>
        ///A test for GetTaskAssignments
        ///</summary>
        [TestMethod()]
        public void TestGetTaskAssignments()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? taskUid = 1;
            string storage = null;
            string folder = null;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            AssignmentsResponse actual;
            actual = target.GetTaskAssignments(name, taskUid, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new AssignmentsResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetTaskDocument
        ///</summary>
        [TestMethod()]
        public void TestGetTaskDocument()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string storage = null;
            string folder = null;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            ResponseMessage actual;
            actual = target.GetTaskDocument(name, storage, folder);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType());
        }

        /// <summary>
        ///A test for GetTaskDocumentWithFormat
        ///</summary>
        [TestMethod()]
        public void TestGetTaskDocumentWithFormat()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string format = "PDF";
            string storage = null;
            string folder = null;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            ResponseMessage actual;
            actual = target.GetTaskDocumentWithFormat(name, format, storage, folder);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new ResponseMessage(), actual.GetType());
        }

        /// <summary>
        ///A test for GetTaskLinks
        ///</summary>
        [TestMethod()]
        public void TestGetTaskLinks()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string storage = null;
            string folder = null;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            TaskLinksResponse actual;
            actual = target.GetTaskLinks(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new TaskLinksResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for GetTaskRecurringInfo
        ///</summary>
        [TestMethod()]
        public void TestGetTaskRecurringInfo()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? taskUid = 1;
            string storage = null;
            string folder = null;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            RecurringInfoResponse actual;
            actual = target.GetTaskRecurringInfo(name, taskUid, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new RecurringInfoResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PostCalendarExceptions
        ///</summary>
        [TestMethod()]
        public void TestPostCalendarExceptions()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? calendarUid = 1;
            string fileName = "tasks.mpp";
            string storage = null;
            string folder = null;
            CalendarException body = new CalendarException();
            body.Name = null;
            body.FromDate = new DateTime(2016, 2, 18);
            body.ToDate = new DateTime(2016, 2, 28);

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            SaaSposeResponse actual;
            actual = target.PostCalendarExceptions(name, calendarUid, fileName, storage, folder, body);
            Assert.AreEqual("201", actual.Code);
            Assert.IsInstanceOfType(new SaaSposeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PostDocumentProperty
        ///</summary>
        [TestMethod()]
        public void TestPostDocumentProperty()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string propertyName = "Title";
            string storage = null;
            string folder = null;
            string filename = null;
            DocumentProperty body = new DocumentProperty();
            body.Name = "Title";
            body.Value = "Tasks";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            DocumentPropertyResponse actual;
            actual = target.PostDocumentProperty(name, propertyName, storage, folder, filename, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new DocumentPropertyResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PostProjectAssignment
        ///</summary>
        [TestMethod()]
        public void TestPostProjectAssignment()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? taskUid = 1;
            int? resourceUid = 1;
            double? units = null;
            string fileName = null;
            string storage = null;
            string folder = null;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            AssignmentItemResponse actual;
            actual = target.PostProjectAssignment(name, taskUid, resourceUid, units, fileName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new AssignmentItemResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PostProjectCalendar
        ///</summary>
        [TestMethod()]
        public void TestPostProjectCalendar()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project.mpp";
            string fileName = null;
            string storage = null;
            string folder = null;
            Calendar body = new Calendar();
            body.Name = "NewCalander";
            body.Uid = 0;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            CalendarItemResponse actual;
            actual = target.PostProjectCalendar(name, fileName, storage, folder, body);
            Assert.AreEqual("201", actual.Code);
            Assert.IsInstanceOfType(new CalendarItemResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PostProjectResource
        ///</summary>
        [TestMethod()]
        public void TestPostProjectResource()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project.mpp";
            string resourceName = "Resource6";
            int? beforeResourceId = 1;
            string fileName = null;
            string storage = null;
            string folder = null;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            ResourceItemResponse actual;
            actual = target.PostProjectResource(name, resourceName, beforeResourceId, fileName, storage, folder);
            Assert.AreEqual("201", actual.Code);
            Assert.IsInstanceOfType(new ResourceItemResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PostProjectTask
        ///</summary>
        [TestMethod()]
        public void TestPostProjectTask()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project.mpp";
            string taskName = "NewTask";
            int? beforeTaskId = 1;
            string fileName = null;
            string storage = null;
            string folder = null;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            TaskItemResponse actual;
            actual = target.PostProjectTask(name, taskName, beforeTaskId, fileName, storage, folder);
            Assert.AreEqual("201", actual.Code);
            Assert.IsInstanceOfType(new TaskItemResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PostTaskLink
        ///</summary>
        [TestMethod()]
        public void TestPostTaskLink()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string storage = null;
            string folder = null;
            string fileName = null;
            TaskLink body = new TaskLink();
            body.Index = 2;
            body.PredecessorUid = 1;
            body.SuccessorUid = 2;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            SaaSposeResponse actual;
            actual = target.PostTaskLink(name, storage, folder, fileName, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new SaaSposeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PutCalendarException
        ///</summary>
        [TestMethod()]
        public void TestPutCalendarException()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project.mpp";
            int? calendarUid = 1;
            int? index = 1;
            string fileName = null;
            string storage = null;
            string folder = null;
            CalendarException body = new CalendarException();
            body.Name = "NewTask";
            body.FromDate = new DateTime(2016, 2, 18);
            body.ToDate = new DateTime(2016, 2, 22);

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            SaaSposeResponse actual;
            actual = target.PutCalendarException(name, calendarUid, index, fileName, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new SaaSposeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PutDocumentProperty
        ///</summary>
        [TestMethod()]
        public void TestPutDocumentProperty()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string propertyName = "Title";
            string storage = null;
            string folder = null;
            string filename = null;
            DocumentProperty body = new DocumentProperty();
            body.Name = "Title";
            body.Value = "NewTask";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            DocumentPropertyResponse actual;
            actual = target.PutDocumentProperty(name, propertyName, storage, folder, filename, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new DocumentPropertyResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PutMoveTask
        ///</summary>
        [TestMethod()]
        public void TestPutMoveTask()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project.mpp";
            int? taskUid = 1;
            int? parentTaskUid = 2;
            string fileName = null;
            string storage = null;
            string folder = null;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            SaaSposeResponse actual;
            actual = target.PutMoveTask(name, taskUid, parentTaskUid, fileName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new SaaSposeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PutProjectAssignment
        ///</summary>
        [TestMethod()]
        public void TestPutProjectAssignment()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "Outlinecode.mpp";
            int? assignmentUid = 1;
            string mode = null;
            bool? recalculate = null;
            string storage = null;
            string folder = null;
            string fileName = null;
            ResourceAssignment body = new ResourceAssignment();
            body.TaskUid = 1;
            body.ResourceUid = -1;
            body.Uid = 1;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            AssignmentResponse actual;
            actual = target.PutProjectAssignment(name, assignmentUid, mode, recalculate, storage, folder, fileName, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new AssignmentResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PutProjectResource
        ///</summary>
        [TestMethod()]
        public void TestPutProjectResource()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? resourceUid = 1;
            string mode = null;
            bool? recalculate = null;
            string storage = null;
            string folder = null;
            string fileName = null;
            Resource body = new Resource();
            body.Uid = 0;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            ResourceResponse actual;
            actual = target.PutProjectResource(name, resourceUid, mode, recalculate, storage, folder, fileName, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new ResourceResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PutProjectTask
        ///</summary>
        [TestMethod()]
        public void TestPutProjectTask()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? taskUid = 0;
            string mode = null;
            bool? recalculate = null;
            string storage = null;
            string folder = null;
            string fileName = null;
            Task body = new Task();
            body.Uid = 0;
            body.Id = 1;
            body.Name = "Tasks";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            TaskResponse actual;
            actual = target.PutProjectTask(name, taskUid, mode, recalculate, storage, folder, fileName, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new TaskResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PutRecalculateProject
        ///</summary>
        [TestMethod()]
        public void TestPutRecalculateProject()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string mode = null;
            string fileName = null;
            string storage = null;
            string folder = null;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            SaaSposeResponse actual;
            actual = target.PutRecalculateProject(name, mode, fileName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new SaaSposeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PutRecalculateProjectResourceFields
        ///</summary>
        [TestMethod()]
        public void TestPutRecalculateProjectResourceFields()
        {
            //TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            //StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            //string name = "sample-project-2.mpp";
            //string storage = null;
            //string folder = null;
            //string fileName = null;

            //storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            //SaaSposeResponse actual;
            //actual = target.PutRecalculateProjectResourceFields(name, storage, folder, fileName);
            //Assert.AreEqual("500", actual.Code);
            //Assert.IsInstanceOfType(new SaaSposeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PutRecalculateProjectUncompleteWorkToStartAfter
        ///</summary>
        [TestMethod()]
        public void TestPutRecalculateProjectUncompleteWorkToStartAfter()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            string storage = null;
            string folder = null;
            string fileName = null;
            DateTime body = new DateTime(2016, 1, 1);


            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            SaaSposeResponse actual;
            actual = target.PutRecalculateProjectUncompleteWorkToStartAfter(name, storage, folder, fileName, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new SaaSposeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PutRecalculateProjectWorkAsComplete
        ///</summary>
        [TestMethod()]
        public void TestPutRecalculateProjectWorkAsComplete()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            bool? setZeroOrHundredPercentCompleteOnly = null;
            string storage = null;
            string folder = null;
            string fileName = null;
            DateTime body = new DateTime(2016, 1, 1);

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            SaaSposeResponse actual;
            actual = target.PutRecalculateProjectWorkAsComplete(name, setZeroOrHundredPercentCompleteOnly, storage, folder, fileName, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new SaaSposeResponse(), actual.GetType());
        }

        /// <summary>
        ///A test for PutTaskLink
        ///</summary>
        [TestMethod()]
        public void TestPutTaskLink()
        {
            TasksApi target = new TasksApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);


            string name = "sample-project-2.mpp";
            int? index = 1;
            string storage = null;
            string folder = null;
            string fileName = null;
            TaskLink body = new TaskLink();
            body.SuccessorUid = 1;
            body.PredecessorUid = 0;
            body.Index = 1;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\tasks\\resources\\" + name));
            TaskLinkResponse actual;
            actual = target.PutTaskLink(name, index, storage, folder, fileName, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new TaskLinkResponse(), actual.GetType());
        }



    }
}
