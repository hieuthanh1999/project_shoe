<?php 
namespace App\Repositories\Repository; 
 
use App\Repositories\Interfaces\BillDetailRepositoryInterface; 
use App\Repositories\Interfaces\BaseRepositoryInterface; 
use App\Models\BillDetail; 
 
class BillDetailRepository implements BillDetailRepositoryInterface 
{ 
	private $BillDetail; 
	private $Base; 
	public function __construct(BaseRepositoryInterface $baseRepository) { $this->BillDetail = new BillDetail();$this->base = $baseRepository;}
                 
    
    public function updateBill($id)
    {
        $data = $this->BillDetail->where('bill_id',$id)->get();
        return $data;
    }  

	public function get($id,$columns = array('*'))
        {
                    $data = $this->BillDetail->find($id, $columns);
                        if ($data)
                        {
                            return $data;
                        }
                        return null;
        
        }  
	public function all($columns = array('*'))
        {
            $listData = $this->BillDetail->get($columns);
            return $listData;
        }  
	public function paginate($perPage = 15,$columns = array('*'))
        {
            $listData = $this->BillDetail->paginate($perPage, $columns);
            return $listData;
        }  
	public function save(array $data) 
        {
        return $this->BillDetail->create($data);
            
        }  
	public function update(array $data,$id) {
         $dep =  $this->BillDetail->find($id);
        if ($dep)
        {
            foreach ($dep->getFillable() as $field)
            {
                if (array_key_exists($field,$data)){
                    $dep->$field = $data[$field];
                }
            }
            if ($dep->save())
            {
                return true;
            }
            else{
                return false;
            }
        }
        else{
            return false;
        }
        }  
	public function getByColumn($column,$value,$columnsSelected = array('*')) 
        {
        
             $data = $this->BillDetail->where($column,$value)->first();
            if ($data)
            {
                return $data;
            }
            return null;
        
        
        }  
	public function getByMultiColumn(array $where,$columnsSelected = array('*')) 
        {
        
             $data = $this->BillDetail;
           
            foreach ($where as $key => $value) {
                $data = $data->where($key, $value);
            }
    
            $data = $data->first();
             
           
            if ($data)
            {
                return $data;
            }
            return null;
        
        
        }  
	public function getListByColumn($column,$value,$columnsSelected = array('*')) 
        {
        
             $data = $this->BillDetail->where($column,$value)->get();
            if ($data)
            {
                return $data;
            }
            return null;
        
        
        }  
	public function getListByMultiColumn(array $where,$columnsSelected = array('*')) 
        {
        
             $data = $this->BillDetail;
             
              foreach ($where as $key => $value) {
            $data = $data->where($key, $value);
        }

        $data = $data->get();
        
            if ($data)
            {
                return $data;
            }
            return null;
        
        
        }  
	public function delete($id)
        {
            $del = $this->BillDetail->find($id);
            if ($del !== null)
            {
                $del->delete();
                return true;
            }
            else{
                return false;
            }
        } 
         
	public function deleteMulti(array $data)
        {
            $del = $this->BillDetail->whereIn("id",$data["list_id"])->delete();
            if ($del)
            {
              
                return true;
            }
            else{
                return false;
            }
        } 
         
} 