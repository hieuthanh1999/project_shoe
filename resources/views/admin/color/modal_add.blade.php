<form id="addForm">
{{ csrf_field() }}
<div class="modal fade" id="add-modal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-body">
                <div class="box box-solid box-primary">
                   <div class="box-header" style="cursor: pointer; text-align: center;" data-toggle="tooltip">
                    <h3 class="box-title">THÊM MÀU SẮC</h3>
                    </div>
                <div class="box-content">
                    <div class="row mt-10">
                        <div class="col-sm-12">
                        <div class="col-sm-5">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-sm-3 control-label">Tên</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="name" class="form-control" style="width: 200px;" placeholder="Nhập tên">
                                        <input type="hidden" name="code" value="" id="inputCode">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-sm-3 control-label">Mã màu</label>
                                    <div class="col-sm-9" id="colorpickerHolder">
                                      
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
                   <button type="submit" class="btn btn-success" id="save">Thực hiện</button>
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