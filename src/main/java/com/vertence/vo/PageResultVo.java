/**
 * 
 */
package com.vertence.vo;

import java.util.List;

/** 
 * @ClassName: PageResult 
 * @author dongye
 * @date 2017年4月27日 上午10:18:57  
 */
public class PageResultVo {
	private Integer sEcho;//
    private Integer iTotalRecords;//实际的行数
    private Integer iTotalDisplayRecords;//过滤之后，实际的行数。
    private String sColumns;//可选，以逗号分隔的列名，;
    private List aaData;
    
    
    
    public Integer getsEcho() {
		return sEcho;
	}

	public void setsEcho(Integer sEcho) {
		this.sEcho = sEcho;
	}

	public Integer getiTotalRecords() {
		return iTotalRecords;
	}

	public void setiTotalRecords(Integer iTotalRecords) {
		this.iTotalRecords = iTotalRecords;
	}

	public Integer getiTotalDisplayRecords() {
		return iTotalDisplayRecords;
	}

	public void setiTotalDisplayRecords(Integer iTotalDisplayRecords) {
		this.iTotalDisplayRecords = iTotalDisplayRecords;
	}

	public String getsColumns() {
		return sColumns;
	}

	public void setsColumns(String sColumns) {
		this.sColumns = sColumns;
	}

	public PageResultVo() {
        super();
    }

    public Integer getSEcho() {
        return sEcho;
    }

    public void setSEcho(Integer sEcho) {
        this.sEcho = sEcho;
    }

    public Integer getITotalRecords() {
        return iTotalRecords;
    }

    public void setITotalRecords(Integer iTotalRecords) {
        this.iTotalRecords = iTotalRecords;
    }

    public Integer getITotalDisplayRecords() {
        return iTotalDisplayRecords;
    }

    public void setITotalDisplayRecords(Integer iTotalDisplayRecords) {
        this.iTotalDisplayRecords = iTotalDisplayRecords;
    }

    public String getSColumns() {
        return sColumns;
    }

    public void setSColumns(String sColumns) {
        this.sColumns = sColumns;
    }

    public List getAaData() {
        return aaData;
    }

    public void setAaData(List aData) {
        this.aaData = aData;
    }

}
