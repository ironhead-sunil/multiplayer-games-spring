// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package games.model.dummy;

import games.model.dummy.Dummy;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Dummy_Roo_Jpa_Entity {
    
    declare @type: Dummy: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Dummy.id;
    
    @Version
    @Column(name = "version")
    private Integer Dummy.version;
    
    public Long Dummy.getId() {
        return this.id;
    }
    
    public void Dummy.setId(Long id) {
        this.id = id;
    }
    
    public Integer Dummy.getVersion() {
        return this.version;
    }
    
    public void Dummy.setVersion(Integer version) {
        this.version = version;
    }
    
}
