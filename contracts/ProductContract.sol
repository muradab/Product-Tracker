pragma solidity ^0.5.0;

contract TodoList{
    uint m_id = 0;
    uint u_id = 0;

   
   
    struct track {
        uint mobileid;
        uint owner_id;
        address owner;
    } 

   

    mapping (uint => track[]) tracks;
    
    struct mobile {
        bytes32 mtype;
        bytes32 mname;
        bytes32 mspecs;
        address ownership;
    }

    mapping (uint => mobile) mobiles;

    struct stakeholder {
        uint id ;
        string name;
        string password; 
        address USERAddress;
        string type_user;
    }
    
    mapping(uint => stakeholder) public stakeholders;

    // function totMobile() public returns (uint){
    //     return m_id;
    // }
    // function getLength(uint _mid) returns (uint) {
    //     return tracks[_mid].length;
    // }
    
    // function gettrack(uint mid, uint id) returns (uint, uint , address){
    //     track t = tracks[mid][id];
    //     return (t.mobileid, t.owner_id, t.owner);
    // }
        
    
    
    // modifier onlyOwner(uint id){
    //     if(msg.sender != mobiles[id].ownership) throw;
    //     _;
    // }
     constructor() public{
        setstakeholders("First Task","12345",0x686c626E48bfC5DC98a30a9992897766fed4Abd3,"Manufacturer");
    }
    
    // function setMobile(uint sid, bytes32  types, bytes32 name, bytes32 specs) returns (uint){
    //     if(stakeholders[sid].type_user == "Manufacturer"){
    //         uint mobId = m_id+1;
            
    //         mobiles[mobId].mtype = types;
    //         mobiles[mobId].mname = name;
    //         mobiles[mobId].ownership = stakeholders[sid].USERAddress;
    //         mobiles[mobId].mspecs = specs;
            
    //         track t;
    //         t.mobileid = mobId;
    //         t.owner = stakeholders[sid].USERAddress;
    //         t.owner_id = sid; 
    //         tracks[mobId].push(t);
             
    //         return mobId;
    //     }else return 0;
    // } 
    
    // function getMobile(uint id) returns(bytes32, bytes32, address, bytes32){
    //     return (mobiles[id].mtype, mobiles[id].mname, mobiles[id].ownership, mobiles[id].mspecs);
    // }

    //======================================================================================
    //Stakeholders of Mobile Phone
    event setStakeHolder(
        uint id ,
        string name,
        string password,
        address USERAddress,
        string type_user
    );
    
    function setstakeholders(string memory _name, string memory pass, address Add, string memory typeuser) public{
        u_id++;
        stakeholders[u_id] = stakeholder ( u_id , _name , pass ,Add , typeuser);
        
        emit  setStakeHolder(  u_id ,  _name, pass ,Add,typeuser) ;
    }
    //     function createTask (string memory _content ) public{
//         taskCount ++;
//         tasks[taskCount] = Task(taskCount,_content,false);
//         emit TaskCreated(taskCount,_content,false);
//     }
    
    // function getstakeholders(uint id) returns (bytes32 , bytes32 , address , bytes32 ){
    //     return (stakeholders[id].name,  stakeholders[id].password , stakeholders[id].USERAddress, stakeholders  [id].type_user);
    // }
    
    //==================================================================================
    //Login StakeHolders
    // function login (uint id, bytes32 pass, bytes32 types) returns (bool){
    //     if(stakeholders[id].type_user == types){    
    //         if(stakeholders[id].password == pass){
    //             return true;
    //         }
    //     }
    //     return false;
    // }
    
    
    //Transfer the mobile(m_id) from one stakeholder(u_id1) to another stakeholder(u_id2). 
    // function transferOwnershipOfMobile(uint u_id1, uint u_id2, uint _mid) onlyOwner(_mid) returns (bool){
    //     stakeholder s1 = stakeholders[u_id1];
    //     stakeholder s2 = stakeholders[u_id2];
    //     track t;
    //     if(s1.type_user == "Manufacturer" && s2.type_user == "Distributor"){
    //         t.mobileid = _mid;
    //         t.owner=stakeholders[u_id2].USERAddress;
    //         t.owner_id = u_id2;
    //         tracks[_mid].push(t);
    //         mobiles[_mid].ownership = s2.USERAddress;
    //        return (true);
    //     }
    //     else if(s1.type_user =="Distributor" && s2.type_user == "User"){
    //         t.mobileid = _mid;
    //         t.owner=stakeholders[u_id2].USERAddress;
    //         t.owner_id = u_id2;
    //         tracks[_mid].push(t);
    //         mobiles[_mid].ownership = s2.USERAddress;
    //        return  (true);
    //     }
    //     else 
    //         return (false);
        
        
    // }
    
    
     
}

// contract TodoList{
//     uint public taskCount = 0 ;

//     struct Task {
//         uint id ;
//         string content ;
//         bool completed;
//     }

//     mapping (uint => Task) public tasks ;

//     event TaskCreated(
//         uint id ,
//         string content ,
//         bool completed 
//     );

//     event taskCompleted(
//         uint id ,
//         bool completed 
//     );
    // constructor() public{
    //     createTask("First Task");
    // }

//     function createTask (string memory _content ) public{
//         taskCount ++;
//         tasks[taskCount] = Task(taskCount,_content,false);
//         emit TaskCreated(taskCount,_content,false);
//     }
//     function toggleCompleted(uint _id ) public {
//         Task memory  _task = tasks[_id];
//         _task.completed = !_task.completed ;
//         tasks[_id] = _task;
//         emit taskCompleted(_id,_task.completed);
//     }
// }