package com.example.book;

import com.example.book.BookVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookDAO {
	@Autowired
	SqlSession sqlSession;

	public int insertBook(BookVO vo) {
		int result = sqlSession.insert("Book.insertBook", vo);
		return result;
	}

	public int updateBook(BookVO vo) {
		int result = sqlSession.update("Book.updateBook", vo);
		return result;
	}

	public int deleteBook(int sid) {
		int i = sqlSession.delete("Book.deleteBook", sid);
		return i;
	}

	public BookVO getBook(int sid) {
		BookVO one = sqlSession.selectOne("Book.getBook", sid);
		return one;
	}

	public List<BookVO> getBookList() {
		List<BookVO> list = sqlSession.selectList("Book.getBookList");
		return list;
	}

	public String getPhotoFilename(int sid) {
		String filename = null;
		BookVO one = sqlSession.selectOne("Book.getBook", sid);
		filename = one.getPhoto();
		return filename;
	}
}
