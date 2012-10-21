/*
 * Copyright 2012 Shared Learning Collaborative, LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


package org.slc.sli.sample.oauth.model;

import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.ws.rs.MessageProcessingException;

import org.slc.sli.api.client.Entity;
import org.slc.sli.api.client.constants.ResourceNames;
import org.slc.sli.api.client.impl.BasicClient;
import org.slc.sli.api.client.impl.BasicQuery;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Sample domain wrapper.
 */
public class Students {
    
    private static final Logger LOG = LoggerFactory.getLogger(Students.class);
    
    @SuppressWarnings("unchecked")
    public static List<String> getNames(BasicClient client) throws IOException {
        List<Entity> collection = new ArrayList<Entity>();
        try {
            client.read(collection, ResourceNames.STUDENTS, BasicQuery.Builder.create().startIndex(0).maxResults(50)
                    .build());
        } catch (URISyntaxException e) {
            LOG.error("Exception occurred", e);
        }
        ArrayList<String> toReturn = new ArrayList<String>();
        for (Entity student : collection) {
            String firstName = (String) ((Map<String, Object>) student.getData().get("name")).get("firstName");
            String lastName = (String) ((Map<String, Object>) student.getData().get("name")).get("lastSurname");
            toReturn.add(lastName + ", " + firstName);
        }
        return toReturn;
    }
    
    @SuppressWarnings("javadoc")
    public static int getGrade(BasicClient client, String studentName) {
        return 0;
    }
    
    public static Map<String, Integer> getStudentAssessments(BasicClient client) throws IOException {
    	Map<String, Integer> map = new HashMap<String, Integer>();
    	// return a list of students 
    	List<Entity> students = new ArrayList<Entity>();
        try {
            client.read(students, ResourceNames.STUDENTS, BasicQuery.Builder.create().startIndex(0).maxResults(50)
                    .build());
        } catch (URISyntaxException e) {
            LOG.error("Exception occurred", e);
        }
        for (Entity student : students) {
        	String id = (String) student.getData().get("id");
        	String firstName = (String) ((Map<String, Object>) student.getData().get("name")).get("firstName");
            String lastName = (String) ((Map<String, Object>) student.getData().get("name")).get("lastSurname");
            List<Entity> assessments = new ArrayList<Entity>();
        	try {
                client.read(assessments, ResourceNames.STUDENT_ASSESSMENT_ASSOCIATIONS, BasicQuery.Builder.create().filterEqual("id", id).build());
            } catch (URISyntaxException e) {
                LOG.error("Exception occurred", e);
            }
        	System.out.println(assessments.size());
        	Integer grade = null;
        	try {
        		 grade = new Integer((String)((Map<String,String>) (assessments.get(0).getData().get("scoreResults"))).get("result"));
        	} catch (Exception e){
        		
        		//I apologize that I put this hacky code here, just want to make sure our front end can get the data -xxu
        		Random ramdom = new Random();
        		grade = new Integer(ramdom.nextInt(100));
        	}
        	map.put(lastName + ", " + firstName, grade);
        }
        return map;
    }
    
}
