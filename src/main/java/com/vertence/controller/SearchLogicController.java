package com.vertence.controller;

import java.io.IOException;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.commons.lang.StringUtils;
import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.StringField;
import org.apache.lucene.index.CorruptIndexException;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.IndexWriterConfig.OpenMode;
import org.apache.lucene.index.Term;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.WildcardQuery;
import org.apache.lucene.search.highlight.Highlighter;
import org.apache.lucene.search.highlight.QueryScorer;
import org.apache.lucene.search.highlight.SimpleHTMLFormatter;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author dongye
 */
@Controller
@RequestMapping(value = "/backend/file")
public class SearchLogicController {
	
	 private Directory directory = null;  
	    public static Connection getConnection() throws SQLException,  
	            java.lang.ClassNotFoundException {  
	        String url = "jdbc:mysql:///db_contract";  
	        Class.forName("com.mysql.jdbc.Driver");  
	        String userName = "root";  
	        String password = "root";  
	        Connection con = DriverManager.getConnection(url, userName, password);  
	        return con;  
	    }  
	      
	      
	    public void index() throws SQLException, ClassNotFoundException, IOException {  
	        IndexWriter writer = null;  
	        try {  
	            directory = FSDirectory.open(Paths.get("C:/lucene/index02"));  
	            Analyzer analyzer = new StandardAnalyzer();  
	    		IndexWriterConfig conf=new IndexWriterConfig(analyzer);
	    		
	            conf.setOpenMode(OpenMode.CREATE_OR_APPEND);  
	            conf.setMaxBufferedDocs(100);  
	            writer = new IndexWriter(directory, conf);  
	            Connection conn = getConnection();  
	            Statement st = conn.createStatement();  
	            long count = 0;  
//	            for(int i = 0 ; i < 10; i ++){  
	                String query = "select * from news";  
	                ResultSet result = st.executeQuery(query);  
	                while (result.next()) {  
	                    Document document = new Document();  
	                    document.add(new StringField("id", result.getString("id"),  
	                            Field.Store.YES));  
	                    document.add(new StringField("title", result  
	                            .getString("title"), Field.Store.YES));  
	                    document.add(new StringField("content", StringUtils.defaultIfBlank(result  
	                            .getString("content"), ""), Field.Store.YES));  
	                    writer.addDocument(document);  
	                    count ++;  
//	                }  
	            }  
	              
	            System.out.println("Total record : "+count);  
	            writer.close();  
	            st.close();  
	            conn.close();  
	        } finally {  
	            try {  
	                if (writer != null) {  
	                    writer.close();  
	                }  
	            } catch (CorruptIndexException e) {  
	                e.printStackTrace();  
	            } catch (IOException e) {  
	                e.printStackTrace();  
	            }  
	        }  
	    }  
	      
	      
	    public IndexSearcher getSearcher() throws IOException {  
	        IndexReader reader = DirectoryReader.open(directory);  
	        IndexSearcher searcher = new IndexSearcher(reader);  
	        return searcher;  
	    }  
	      
	    public void searchByTerm(String field, String name, int num) throws IOException {  
	        IndexSearcher searcher = getSearcher();  
	        // WildcardQuery 模糊查找  
	        // TermQuery 精确查找  
	        WildcardQuery query = new WildcardQuery(new Term(field, name)) ;
	        TopDocs tds = searcher.search(query, num);  
	        System.out.println("count:" + tds.totalHits);  
	        for (ScoreDoc sd : tds.scoreDocs) {
	            Document doc = searcher.doc(sd.doc);  
	            System.out.println("id:" + doc.get("id"));  
	            System.out.println("title:" + doc.get("title"));  
	            System.out.println("content:" + doc.get("content"));  
	        }  
	    }  
	      
	    public static void main(String[] args) throws ClassNotFoundException,  
	            SQLException, IOException {  
	    	SearchLogicController indexUtil = new SearchLogicController();  
	        indexUtil.index();  
	        int i = 0 ;  
	        long start = System.currentTimeMillis();  
	        //查找前90分前2名的信息  
	        indexUtil.searchByTerm("title", "*【*", 5);  
//	        indexUtil.searchByTerm("content", "*的惊喜*", 1);  
	        System.out.println(i+" Spend time:"+(System.currentTimeMillis() - start) + " ms");  
	    }  

}