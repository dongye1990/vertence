/**
 * 
 */
package com.vertence.vo;

/**
 * @ClassName: BaseVo
 * @author dongye
 * @date 2017年4月10日 下午5:06:39
 */
public class BaseVo {
	private int page_size;
	private int page_index;
	@SuppressWarnings("unused")
	private int page_from;

	public int getPage_size() {
		return page_size;
	}

	public void setPage_size(int page_size) {
		this.page_size = page_size;
	}

	public int getPage_index() {
		return page_index;
	}

	public void setPage_index(int page_index) {
		this.page_index = page_index;
	}

	public int getPage_from() {
		return (page_index-1)*page_size;
	}

	public void setPage_from(int page_from) {
		this.page_from = page_from;
	}

}
