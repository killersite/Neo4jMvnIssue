package com.ex.search;

import org.apache.lucene.document.Document;
import org.hibernate.search.bridge.FieldBridge;
import org.hibernate.search.bridge.LuceneOptions;


public class TestBridge implements FieldBridge {

	@Override
	public void set(String name, Object value, Document document,
			LuceneOptions luceneOptions) {
		// TODO Auto-generated method stub
		
	}

}
