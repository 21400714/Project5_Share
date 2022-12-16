package com.example.book;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class BookDAO {
	@Autowired
	SqlSession sqlSession;

	public int insertBook(BookVO vo) {
		return sqlSession.insert("Book.insertBook", vo);
	}

	public int updateBook(BookVO vo) {
		return sqlSession.update("Book.updateBook", vo);
	}

	public int deleteBook(int sid) {
		return sqlSession.delete("Book.deleteBook", sid);
	}

	public BookVO getBook(int sid) {
		return sqlSession.selectOne("Book.getBook", sid);
	}

	public List<BookVO> getBookList() {
		return sqlSession.selectList("Book.getBookList");
	}
}
