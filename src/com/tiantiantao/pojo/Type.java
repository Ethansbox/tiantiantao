package com.tiantiantao.pojo;

import java.io.Serializable;

public class Type implements Serializable {

    private static final long serialVersionUID = 1L;

    private String typeId;
    private String typename;

    public String getId() {
        return typeId;
    }

    public void setId(String typeId) {
        this.typeId = typeId;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }
}
