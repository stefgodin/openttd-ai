using("MBAi.Data.Storable")

class MBAi.Company.Task.Task extends MBAi.Data.Storable
{
    constructor()
    {
        ::MBAi.Data.Storable.constructor();
        this.division = null;
        this.assignedPersonnel = null;
        this.type = null;
        this.info = {};
    }

    function assignTo(_personnel)
    {
        this.assignedPersonnel = _personnel.id;
    }

    function unassign()
    {
        this.assignedPersonnel = null;
    }

    function getStorageKey()
    {
        return "tasks";
    }
}