/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aspose.tasks.api;

import static org.junit.Assert.assertNull;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import com.aspose.storage.api.StorageApi;
import com.aspose.tasks.client.ApiException;
import com.aspose.tasks.model.AssignmentItemResponse;
import com.aspose.tasks.model.AssignmentItemsResponse;
import com.aspose.tasks.model.AssignmentResponse;
import com.aspose.tasks.model.AssignmentsResponse;
import com.aspose.tasks.model.Calendar;
import com.aspose.tasks.model.CalendarException;
import com.aspose.tasks.model.CalendarExceptionsResponse;
import com.aspose.tasks.model.CalendarItemResponse;
import com.aspose.tasks.model.CalendarItemsResponse;
import com.aspose.tasks.model.CalendarResponse;
import com.aspose.tasks.model.DocumentPropertiesResponse;
import com.aspose.tasks.model.DocumentProperty;
import com.aspose.tasks.model.DocumentPropertyResponse;
import com.aspose.tasks.model.ExtendedAttributeItemsResponse;
import com.aspose.tasks.model.ExtendedAttributeResponse;
import com.aspose.tasks.model.OutlineCodeItemsResponse;
import com.aspose.tasks.model.OutlineCodeResponse;
import com.aspose.tasks.model.ResourceItemResponse;
import com.aspose.tasks.model.ResourceItemsResponse;
import com.aspose.tasks.model.ResourceResponse;
import com.aspose.tasks.model.ResponseMessage;
import com.aspose.tasks.model.SaaSposeResponse;
import com.aspose.tasks.model.TaskItemResponse;
import com.aspose.tasks.model.TaskItemsResponse;
import com.aspose.tasks.model.TaskLink;
import com.aspose.tasks.model.TaskLinkResponse;
import com.aspose.tasks.model.TaskLinksResponse;
import com.aspose.tasks.model.TaskResponse;

/**
 *
 * @author SQL
 */
public class TasksApiTest {

	TasksApi tasksApi;
	StorageApi storageApi;
	// Please get the appSID and apiKey from https://cloud.aspose.com
	String appSID = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx";
	String apiKey = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";

	public TasksApiTest() {
	}

	@BeforeClass
	public static void setUpClass() {
	}

	@AfterClass
	public static void tearDownClass() {
	}

	@Before
	public void setUp() {
		tasksApi = new TasksApi("http://api.aspose.com/v1.1",apiKey,appSID);
	}

	@After
	public void tearDown() {
	}

	/**
	 * Test of DeleteProjectAssignment method, of class TasksApi.
	 */
	@Test
	public void testDeleteProjectAssignment() {
		System.out.println("DeleteProjectAssignment");
		String name = "test_tasks.mpp";
		Integer assignmentUid = 1;
		String storage = "";
		String folder = "";
		String fileName = "";

		try {
			SaaSposeResponse result = tasksApi.DeleteProjectAssignment(name, assignmentUid, storage, folder, fileName);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetProjectAssignment method, of class TasksApi.
	 */
	@Test
	public void testGetProjectAssignment() {
		System.out.println("GetProjectAssignment");
		String name = "test_tasks.mpp";
		Integer assignmentUid = 1;
		String storage = "";
		String folder = "";

		try {
			AssignmentResponse result = tasksApi.GetProjectAssignment(name, assignmentUid, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}
	}

	/**
	 * Test of GetProjectAssignments method, of class TasksApi.
	 */
	@Test
	public void testGetProjectAssignments() {
		System.out.println("GetProjectAssignments");
		String name = "test_tasks.mpp";
		String storage = "";
		String folder = "";

		try {
			AssignmentItemsResponse result = tasksApi.GetProjectAssignments(name, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of PostProjectAssignment method, of class TasksApi.
	 */
	@Test
	public void testPostProjectAssignment() {
		System.out.println("PostProjectAssignment");
		String name = "test_tasks.mpp";
		Integer taskUid = 1;
		Integer resourceUid = 1;
		Double units = 1.0;
		String fileName = "";
		String storage = "";
		String folder = "";

		try {
			AssignmentItemResponse result = tasksApi.PostProjectAssignment(name, taskUid, resourceUid, units, fileName, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of DeleteCalendarException method, of class TasksApi.
	 */
	@Test
	public void testDeleteCalendarException() {
		System.out.println("DeleteCalendarException");
		String name = "test_tasks.mpp";
		Integer calendarUid = 1;
		Integer index = 1;
		String fileName = "";
		String storage = "";
		String folder = "";

		try {
		        tasksApi.PostCalendarExceptions(name, calendarUid, fileName, storage, folder, new CalendarException());		        
			SaaSposeResponse result = tasksApi.DeleteCalendarException(name, calendarUid, index, fileName, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of DeleteProjectCalendar method, of class TasksApi.
	 */
	@Test
	public void testDeleteProjectCalendar() {
		System.out.println("DeleteProjectCalendar");
		String name = "test_tasks.mpp";
		Integer calendarUid = 1;
		String storage = "";
		String folder = "";
		String fileName = "tasks.mpp";

		try {
		         CalendarItemResponse result = tasksApi.PostProjectCalendar(name, fileName, storage, folder, new Calendar());
		         calendarUid = result.getCalendarItem()!=null?result.getCalendarItem().getUid():1;
			 SaaSposeResponse result2 = tasksApi.DeleteProjectCalendar(name, calendarUid, storage, folder, fileName);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetCalendarExceptions method, of class TasksApi.
	 */
	@Test
	public void testGetCalendarExceptions() {
		System.out.println("GetCalendarExceptions");
		String name = "test_tasks.mpp";
		Integer calendarUid = 1;
		String storage = "";
		String folder = "";

		try {
			CalendarExceptionsResponse result = tasksApi.GetCalendarExceptions(name, calendarUid, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetProjectCalendar method, of class TasksApi.
	 */
	@Test
	public void testGetProjectCalendar() {
		System.out.println("GetProjectCalendar");
		String name = "test_tasks.mpp";
		Integer calendarUid = 1;
		String storage = "";
		String folder = "";

		try {
			CalendarResponse result = tasksApi.GetProjectCalendar(name, calendarUid, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetProjectCalendars method, of class TasksApi.
	 */
	@Test
	public void testGetProjectCalendars() {
		System.out.println("GetProjectCalendars");
		String name = "test_tasks.mpp";
		String storage = "";
		String folder = "";

		try {
			CalendarItemsResponse result = tasksApi.GetProjectCalendars(name, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of PostCalendarExceptions method, of class TasksApi.
	 */
	@Test
	public void testPostCalendarExceptions() {
		System.out.println("PostCalendarExceptions");
		String name = "test_tasks.mpp";
		Integer calendarUid = 1;
		String fileName = "tasks.mpp";
		String storage = "";
		String folder = "";
		CalendarException body = new CalendarException();

		try {
			SaaSposeResponse result = tasksApi.PostCalendarExceptions(name, calendarUid, fileName, storage, folder, body);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of PostProjectCalendar method, of class TasksApi.
	 */
	@Test
	public void testPostProjectCalendar() {
		System.out.println("PostProjectCalendar");
		String name = "test_tasks.mpp";
		String fileName = "tasks.mpp";
		String storage = "";
		String folder = "";
		Calendar body = new Calendar();
		
		try {
			CalendarItemResponse result = tasksApi.PostProjectCalendar(name, fileName, storage, folder, body);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of PutCalendarException method, of class TasksApi.
	 */
	@Test
	public void testPutCalendarException() {
		System.out.println("PutCalendarException");
		String name = "test_tasks.mpp";
		Integer calendarUid = 1;
		Integer index = 1;
		String fileName = "tasks.mpp";
		String storage = "";
		String folder = "";
		CalendarException body = new CalendarException();
		body.setEnteredByOccurrences(true);
		body.setFromDate("2015-04-21T00:00:00");
		body.setToDate("2015-04-21T23:59:00");
		body.setOccurrences(0);
		body.setName("NewCalenderException");
		body.setType(0);
		body.setPeriod(1);
		body.setDayWorking(true);
		
		try {
		        //SaaSposeResponse result0 = tasksApi.GetCalendarExceptions(name, calendarUid, fileName, storage, folder, body);
		         CalendarExceptionsResponse result0 = tasksApi.GetCalendarExceptions(name, calendarUid, storage, folder);
		         
		         if(result0.getCalendarExceptions()!=null && !result0.getCalendarExceptions().isEmpty())
		                 body = result0.getCalendarExceptions().get(0);
		         else
		               tasksApi.PostCalendarExceptions(name, calendarUid, fileName, storage, folder, body);
		         
			SaaSposeResponse result = tasksApi.PutCalendarException(name, calendarUid, index, fileName, storage, folder, body);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetCriticalPath method, of class TasksApi.
	 */
	@Test
	public void testGetCriticalPath() {
		System.out.println("GetCriticalPath");
		String name = "test_tasks.mpp";
		String storage = "";
		String folder = "";

		try {
			TaskItemsResponse result = tasksApi.GetCriticalPath(name, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetTaskDocument method, of class TasksApi.
	 */
	@Test
	public void testGetTaskDocument() {
		System.out.println("GetTaskDocument");
		String name = "test_tasks.mpp";
		String storage = "";
		String folder = "";

		try {
			ResponseMessage result = tasksApi.GetTaskDocument(name, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetTaskDocumentWithFormat method, of class TasksApi.
	 */
	@Test
	public void testGetTaskDocumentWithFormat() {
		System.out.println("GetTaskDocumentWithFormat");
		String name = "test_tasks.mpp";
		String format = "pdf";
		String storage = "";
		String folder = "";

		try {
			ResponseMessage result = tasksApi.GetTaskDocumentWithFormat(name, format, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetDocumentProperties method, of class TasksApi.
	 */
	@Test
	public void testGetDocumentProperties() {
		System.out.println("GetDocumentProperties");
		String name = "test_tasks.mpp";
		String storage = "";
		String folder = "";

		try {
			DocumentPropertiesResponse result = tasksApi.GetDocumentProperties(name, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetDocumentProperty method, of class TasksApi.
	 */
	@Test
	public void testGetDocumentProperty() {
		System.out.println("GetDocumentProperty");
		String name = "test_tasks.mpp";
		String propertyName = "TaskItem";
		String storage = "";
		String folder = "";

		try {
			DocumentPropertyResponse result = tasksApi.GetDocumentProperty(name, propertyName, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of PostDocumentProperty method, of class TasksApi.
	 */
	@Test
	public void testPostDocumentProperty() {
		System.out.println("PostDocumentProperty");
		String name = "test_tasks.mpp";
		String propertyName = "TaskItem";
		String storage = "";
		String folder = "";
		String filename = "tasks.mpp";
		DocumentProperty body = new DocumentProperty();

		try {
			DocumentPropertyResponse result = tasksApi.PostDocumentProperty(name, propertyName, storage, folder, filename, body);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of PutDocumentProperty method, of class TasksApi.
	 */
	@Test
	public void testPutDocumentProperty() {
		System.out.println("PutDocumentProperty");
		String name = "test_tasks.mpp";
		String propertyName = "TaskItem";
		String storage = "";
		String folder = "";
		String filename = "tasks.mpp";
		DocumentProperty body = new DocumentProperty();

		try {
			DocumentPropertyResponse result = tasksApi.PutDocumentProperty(name, propertyName, storage, folder, filename, body);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of DeleteExtendedAttributeByIndex method, of class TasksApi.
	 */
	@Test
	public void testDeleteExtendedAttributeByIndex() {
		System.out.println("DeleteExtendedAttributeByIndex");
		String name = "test_tasks.mpp";
		Integer index = 1;
		String storage = "";
		String folder = "";

		try {
			//SaaSposeResponse result = tasksApi.DeleteExtendedAttributeByIndex(name, index, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetExtendedAttributeByIndex method, of class TasksApi.
	 */
	@Test
	public void testGetExtendedAttributeByIndex() {
		System.out.println("GetExtendedAttributeByIndex");
		String name = "test_tasks.mpp";
		Integer index = 1;
		String storage = "";
		String folder = "";

		try {
			ExtendedAttributeResponse result = tasksApi.GetExtendedAttributeByIndex(name, index, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetExtendedAttributes method, of class TasksApi.
	 */
	@Test
	public void testGetExtendedAttributes() {
		System.out.println("GetExtendedAttributes");
		String name = "test_tasks.mpp";
		String storage = "";
		String folder = "";

		try {
			ExtendedAttributeItemsResponse result = tasksApi.GetExtendedAttributes(name, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of DeleteOutlineCodeByIndex method, of class TasksApi.
	 */
	@Test
	public void testDeleteOutlineCodeByIndex() {
		System.out.println("DeleteOutlineCodeByIndex");
		String name = "test_tasks.mpp";
		Integer index = 1;
		String storage = "";
		String folder = "";

		try {
			//SaaSposeResponse result = tasksApi.DeleteOutlineCodeByIndex(name, index, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetOutlineCodeByIndex method, of class TasksApi.
	 */
	@Test
	public void testGetOutlineCodeByIndex() {
		System.out.println("GetOutlineCodeByIndex");
		String name = "test_tasks.mpp";
		Integer index = 1;
		String storage = "";
		String folder = "";

		try {
			OutlineCodeResponse result = tasksApi.GetOutlineCodeByIndex(name, index, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetOutlineCodes method, of class TasksApi.
	 */
	@Test
	public void testGetOutlineCodes() {
		System.out.println("GetOutlineCodes");
		String name = "test_tasks.mpp";
		String storage = "";
		String folder = "";

		try {
			OutlineCodeItemsResponse result = tasksApi.GetOutlineCodes(name, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetReportPdf method, of class TasksApi.
	 */
	@Test
	public void testGetReportPdf() {
		System.out.println("GetReportPdf");
		String name = "test_tasks.mpp";
		String type = "CostOverview";
		String storage = "";
		String folder = "";

		try {
			ResponseMessage result = tasksApi.GetReportPdf(name, type, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of DeleteProjectResource method, of class TasksApi.
	 */
	@Test
	public void testDeleteProjectResource() {
		System.out.println("DeleteProjectResource");
		String name = "test_tasks.mpp";
		Integer resourceUid = 1;
		String storage = "";
		String folder = "";
		String fileName = "tasks.mpp";

		try {
			SaaSposeResponse result = tasksApi.DeleteProjectResource(name, resourceUid, storage, folder, fileName);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetProjectResource method, of class TasksApi.
	 */
	@Test
	public void testGetProjectResource() {
		System.out.println("GetProjectResource");
		String name = "test_tasks.mpp";
		Integer resourceUid = 1;
		String storage = "";
		String folder = "";

		try {
			ResourceResponse result = tasksApi.GetProjectResource(name, resourceUid, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetProjectResources method, of class TasksApi.
	 */
	@Test
	public void testGetProjectResources() {
		System.out.println("GetProjectResources");
		String name = "test_tasks.mpp";
		String storage = "";
		String folder = "";

		try {
			ResourceItemsResponse result = tasksApi.GetProjectResources(name, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetResourceAssignments method, of class TasksApi.
	 */
	@Test
	public void testGetResourceAssignments() {
		System.out.println("GetResourceAssignments");
		String name = "test_tasks.mpp";
		Integer resourceUid = 1;
		String storage = "";
		String folder = "";

		try {
			AssignmentsResponse result = tasksApi.GetResourceAssignments(name, resourceUid, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of PostProjectResource method, of class TasksApi.
	 */
	@Test
	public void testPostProjectResource() {
		System.out.println("PostProjectResource");
		String name = "test_tasks.mpp";
		String resourceName = "";
		Integer beforeResourceId = 1;
		String fileName = "tasks.mpp";
		String storage = "";
		String folder = "";

		try {
			ResourceItemResponse result = tasksApi.PostProjectResource(name, resourceName, beforeResourceId, fileName, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of DeleteProjectTask method, of class TasksApi.
	 */
	@Test
	public void testDeleteProjectTask() {
		System.out.println("DeleteProjectTask");
		String name = "test_tasks.mpp";
		Integer taskUid = 1;
		String storage = "";
		String folder = "";
		String fileName = "tasks.mpp";

		try {
			SaaSposeResponse result = tasksApi.DeleteProjectTask(name, taskUid, storage, folder, fileName);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetProjectTask method, of class TasksApi.
	 */
	@Test
	public void testGetProjectTask() {
		System.out.println("GetProjectTask");
		String name = "test_tasks.mpp";
		Integer taskUid = 1;
		String storage = "";
		String folder = "";

		try {
			TaskResponse result = tasksApi.GetProjectTask(name, taskUid, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetProjectTasks method, of class TasksApi.
	 */
	@Test
	public void testGetProjectTasks() {
		System.out.println("GetProjectTasks");
		String name = "test_tasks.mpp";
		String storage = "";
		String folder = "";

		try {
			TaskItemsResponse result = tasksApi.GetProjectTasks(name, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetTaskAssignments method, of class TasksApi.
	 */
	@Test
	public void testGetTaskAssignments() {
		System.out.println("GetTaskAssignments");
		String name = "test_tasks.mpp";
		Integer taskUid = 1;
		String storage = "";
		String folder = "";

		try {
			AssignmentsResponse result = tasksApi.GetTaskAssignments(name, taskUid, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of PostProjectTask method, of class TasksApi.
	 */
	@Test
	public void testPostProjectTask() {
		System.out.println("PostProjectTask");
		String name = "test_tasks.mpp";
		String taskName = "";
		Integer beforeTaskId = 1;
		String fileName = "";
		String storage = "";
		String folder = "";

		try {
			TaskItemResponse result = tasksApi.PostProjectTask(name, taskName, beforeTaskId, fileName, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of DeleteTaskLink method, of class TasksApi.
	 */
	@Test
	public void testDeleteTaskLink() {
		System.out.println("DeleteTaskLink");
		String name = "test_tasks.mpp";
		Integer index = 1;
		String storage = "";
		String folder = "";
		String fileName = "tasks.mpp";

		try {
			SaaSposeResponse result = tasksApi.DeleteTaskLink(name, index, storage, folder, fileName);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of GetTaskLinks method, of class TasksApi.
	 */
	@Test
	public void testGetTaskLinks() {
		System.out.println("GetTaskLinks");
		String name = "test_tasks.mpp";
		String storage = "";
		String folder = "";

		try {
			TaskLinksResponse result = tasksApi.GetTaskLinks(name, storage, folder);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of PostTaskLink method, of class TasksApi.
	 */
	@Test
	public void testPostTaskLink() {
		System.out.println("PostTaskLink");
		String name = "test_tasks.mpp";
		String storage = "";
		String folder = "";
		String fileName = "tasks.mpp";
		TaskLink body = new TaskLink();
		body.setIndex(2);
		body.setPredecessorUid(1);
		body.setSuccessorUid(2);
		try {
			SaaSposeResponse result = tasksApi.PostTaskLink(name, storage, folder, fileName, body);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}

	/**
	 * Test of PutTaskLink method, of class TasksApi.
	 */
	@Test
	public void testPutTaskLink() {
		System.out.println("PutTaskLink");
		String name = "test_tasks.mpp";
		Integer index = 1;
		String storage = "";
		String folder = "";
		String fileName = "task.mpp";
		TaskLink body = new TaskLink();

		try {
			TaskLinkResponse result = tasksApi.PutTaskLink(name, index, storage, folder, fileName, body);

		} catch (ApiException apiExp) {
			System.out.println("exp:" + apiExp.getMessage());
			assertNull(apiExp);
		}

	}
}
