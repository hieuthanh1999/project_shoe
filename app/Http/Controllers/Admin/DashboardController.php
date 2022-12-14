<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Interfaces\ProductRepositoryInterface;
use App\Repositories\Interfaces\UserRepositoryInterface;
use App\Repositories\Interfaces\BillRepositoryInterface;
use App\Charts\BillChart;

use Carbon\Carbon;
use App\Models\Bill;
use Auth;

class DashboardController extends Controller
{   
    
    private $product;
    private $user;
    private $bill;
    public function __construct(
        ProductRepositoryInterface $productRepository,
        BillRepositoryInterface $billRepository,
        UserRepositoryInterface $userRepository
    )
    {
        $this->middleware('employee');
        $this->product = $productRepository;
        $this->user = $userRepository;
        $this->bill = $billRepository;
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $view['listTopProduct'] = $this->product->listTopProduct(3);

        $view['listNewProduct'] = $this->product->listNewProduct();

        $view['listLatestUser'] = $this->user->listLatestUser();
        
        $query['per_page'] = 10;

        $view['listBill'] = $this->bill->getListBill($query, $request->url());
        // dd($view['listBill']);

        return view('admin.dashboard.main', $view);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function getChart(){
        $currentYear = Carbon::now()->year;
        $mot = Bill::whereBetween('created_at', [$currentYear.'-1-1 00:00:00', $currentYear.'-1-31 23:59:59'])->sum('total');
        $hai = Bill::whereBetween('created_at', [$currentYear.'-2-1 00:00:00', $currentYear.'-2-30 23:59:59'])->sum('total');
        $ba =Bill::whereBetween('created_at', [$currentYear.'-3-1 00:00:00', $currentYear.'-3-31 23:59:59'])->sum('total');
        $bon =Bill::whereBetween('created_at', [$currentYear.'-4-1 00:00:00', $currentYear.'-4-30 23:59:59'])->sum('total');
        $nam =Bill::whereBetween('created_at', [$currentYear.'-5-1 00:00:00', $currentYear.'-5-31 23:59:59'])->sum('total');
        $sau =Bill::whereBetween('created_at', [$currentYear.'-6-1 00:00:00', $currentYear.'-6-30 23:59:59'])->sum('total');
        $bay =Bill::whereBetween('created_at', [$currentYear.'-7-1 00:00:00', $currentYear.'-7-31 23:59:59'])->sum('total');
        $tam =Bill::whereBetween('created_at', [$currentYear.'-8-1 00:00:00', $currentYear.'-8-31 23:59:59'])->sum('total');
        $chin =Bill::whereBetween('created_at', [$currentYear.'-9-1 00:00:00', $currentYear.'-9-30 23:59:59'])->sum('total');
        $muoi =Bill::whereBetween('created_at', [$currentYear.'-10-1 00:00:00', $currentYear.'-10-31 23:59:59'])->sum('total');
        $muoimot =Bill::whereBetween('created_at', [$currentYear.'-11-1 00:00:00', $currentYear.'-11-30 23:59:59'])->sum('total');
        $muoihai =Bill::whereBetween('created_at', [$currentYear.'-12-1 00:00:00', $currentYear.'-12-31 23:59:59'])->sum('total');
        $total = ["Th??ng 1" => $mot,"Th??ng 2" => $hai, "Th??ng 3" =>$ba,"Th??ng 4" => $bon, "Th??ng 5" =>$nam, "Th??ng 6" =>$sau, "Th??ng 7" =>$bay, "Th??ng 8" =>$tam, "Th??ng 9" =>$chin,"Th??ng 10" => $muoi, "Th??ng 11" =>$muoimot,"Th??ng12" => $muoihai];
        
        $cateLabel = ["Th??ng 1","Th??ng 2" , "Th??ng 3","Th??ng 4", "Th??ng 5", "Th??ng 6","Th??ng 7","Th??ng 8","Th??ng 9","Th??ng 10","Th??ng 11","Th??ng12"];
        $cateData = [$mot,$hai, $ba,$bon, $nam, $sau, $bay, $tam,$chin, $muoi,$muoimot,$muoihai];
        $cateChart = new BillChart();
        $cateChart->labels($cateLabel);
        $cateChart->dataset("Total amount of the month",'bar', collect($cateData));
        return $cateChart;
    }

    public function getStatistical()
    {   
        

     
        // return $cateChart;
        $cateChart= $this->getChart();
       $listTopProduct = getPercentProduct($this->product->listTopProduct(10));
       $kday = 0;
        $countProductWeek = $this->product->countProductWeek();
        // dd($view['countProductWeek']);
        return view('admin.statistical.main',compact( 'listTopProduct', 'cateChart', 'countProductWeek', 'kday'));
    }

    public function search(Request $request)
    {   
       $listTopProduct = getPercentProduct($this->product->listTopProduct(10));

        $countProductWeek = $this->product->countProductWeek();
        $kday = $request->kday;

        $order = Bill::whereDate('created_at', $kday)->orderBy('created_at', 'DESC')->get();
        $cateLabel = [];
         $cateData = [];
        $total =Bill::whereDate('created_at',$kday)->orderBy('total', 'desc')->sum('total');

        // dd(($order));
        if($kday) {
           
            $data = [];
            $data_price =[];
            foreach($order as $key => $value) {
                array_push($data, date('d-m-Y', strtotime($value->created_at->toDateString())));
               
            }
            $data =array_unique($data);
            // dd($data);
            //$data = implode(',', $data);
            // dd(array_unique($data));
            // $cateLabel = [$data];
            $cateData = [];
            $cateChart = new BillChart();
            $cateChart->labels($data);
            //  dd($cateChart);
            $cateChart->dataset("T???ng ti???n",'bar', collect($total));
            return view('admin.statistical.main',compact( 'listTopProduct', 'cateChart', 'countProductWeek', 'kday'));
        }
        else{
            $kday = 0;
            $cateChart= $this->getChart();
            return view('admin.statistical.main',compact( 'listTopProduct', 'cateChart', 'countProductWeek', 'kday'));
        }
      
    }
}
