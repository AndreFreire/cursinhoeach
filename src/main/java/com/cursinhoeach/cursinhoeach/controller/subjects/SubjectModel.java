package com.cursinhoeach.cursinhoeach.controller.subjects;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class SubjectModel {

	private Map<String, List<Entry<String, String>>> subject = new HashMap<>();

	public List<String> getSubjectsTitle() {
		List<String> subjectTitle = new ArrayList<>();
		subjectTitle.addAll(subject.keySet());
		return subjectTitle;
	}

	public List<Entry<String, String>> getSubjectContent(String title) {
		return subject.get(title);
	}

	public void addSubject(String title, String content, String link) {
		if (subject.get(title) == null) {
			subject.put(title, new ArrayList<Entry<String, String>>());
		}
		subject.get(title).add(new AbstractMap.SimpleEntry<String, String>(content, link));

	}

}
