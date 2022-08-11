<form id="addForm">
{{ csrf_field() }}
<div class="modal fade" id="add-modal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-body">
                <div class="box box-solid box-primary">
                   <div class="box-header" style="cursor: pointer; text-align: center;" data-toggle="tooltip">
                    <h3 class="box-title">Thêm danh mục sản phẩm</h3>
                    </div>
                <div class="box-content">
                    <div class="row mt-10">
                        <div class="col-sm-12">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-sm-3 control-label">Tên</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="name" class="form-control" style="width: 200px;" placeholder="Type name of category">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-sm-4 control-label">Loại danh mục</label>
                                    <div class="col-sm-8">
                                        <div class="col-sm-4">
                                            <input type="radio" name="checkparent" value="1" class="checkparent"> Cấp 1 
                                        </div>
                                        <div class="col-sm-8">
                                            <input type="radio" name="checkparent" value="2" checked="" class="checkparent"> Cấp 2 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="row mt-10" id="parentCategory">
                        <div class="col-sm-12">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-sm-3 control-label">Danh mục cha</label>
                                    <div class="col-sm-9">
                                        <select name="parent" class="form-control select2" style="width: 200px;">
                                            <option value="">Chọn danh mục cha</option>
                                            @foreach($listCategoryParent as $category)
                                            <option value="{{$category->id}}">{{$category->name}}</option>
                                            @endforeach
                                    </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                 
       <div class="row" style="margin-top:10px;">
        <div class="col-sm-12" style="text-align: center;">
            <div class="form-group">
                <div class="row">
                   <button type="submit" class="btn btn-success" id="save">Thực hiện </button>
               </div>
           </div>
       </div>
   </div> 
</div>
</div>
</div>
</div>
</div>
</div>
</form>