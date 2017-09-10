package com.rollingstone.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.rollingstone.spring.model.Student;

@Repository
public class StudentDAOImpl implements StudentDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(StudentDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	@Override
	public void addStudent(Student p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Student saved successfully, Student Details="+p);
	}

	@Override
	public void updateStudent(Student p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Student updated successfully, Student Details="+p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Student> listStudents() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Student> StudentsList = session.createQuery("from Student").list();
		for(Student p : StudentsList){
			logger.info("Student List::"+p);
		}
		return StudentsList;
	}

	@Override
	public Student getStudentById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Student p = (Student) session.load(Student.class, new Integer(id));
		logger.info("Student loaded successfully, Student details="+p);
		return p;
	}

	@Override
	public void removeStudent(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Student p = (Student) session.load(Student.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		logger.info("Student deleted successfully, Student details="+p);
	}

}
