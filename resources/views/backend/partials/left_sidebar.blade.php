  <!-- partial:partials/_sidebar.html -->
  <nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav"> 

      <li class="nav-item nav-profile">
        <a href="#" class="nav-link">
          <div class="profile-image">
            <img class="img-xs rounded-circle" src="/images/faces/face8.jpg" alt="profile image">
            <div class="dot-indicator bg-success"></div>
          </div>
          <div class="text-wrapper">
            <p class="profile-name">Allen Moreno</p>
            <p class="designation">Premium user</p>
          </div>
        </a>
      </li>

      <li class="nav-item nav-category">Main Menu</li>
      <li class="nav-item">
        <a class="nav-link" href="{{route('admin.index')}}">
          <i class="menu-icon typcn typcn-document-text"></i>
          <span class="menu-title">Dashboard</span>
        </a>
      </li>


      <li class="nav-item">
        <a class="nav-link" data-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages">
          <i class="menu-icon typcn typcn-document-add"></i>
          <span class="menu-title">Manage Products</span>
          <i class="menu-arrow"></i>
        </a>
        <div class="collapse" id="general-pages">
          <ul class="nav flex-column sub-menu">
            <li class="nav-item">
              <a class="nav-link" href="{{ route('admin.products') }}">Manage Products </a>                
            </li>
            <li class="nav-item">
             <a class="nav-link" href="{{ route('admin.product.create') }}">Add Products </a>                
           </li>

         </ul>
       </div>
     </li> 

     <li class="nav-item">
        <a class="nav-link" data-toggle="collapse" href="#order-pages" aria-expanded="false" aria-controls="order-pages">
          <i class="menu-icon typcn typcn-document-add"></i>
          <span class="menu-title">Manage Orders</span>
          <i class="menu-arrow"></i>
        </a>
        <div class="collapse" id="order-pages">
          <ul class="nav flex-column sub-menu">
            <li class="nav-item">
              <a class="nav-link" href="{{ route('admin.orders') }}">Manage Orders </a>                
            </li>

         </ul>
       </div>
     </li>


     <li class="nav-item">
      <a class="nav-link" data-toggle="collapse" href="#category-pages" aria-expanded="false" aria-controls="category-pages">
        <i class="menu-icon typcn typcn-document-add"></i>
        <span class="menu-title">Manage Category</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="category-pages">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item">
            <a class="nav-link" href="{{ route('admin.categories') }}">Manage Category </a>                
          </li>
          <li class="nav-item">
           <a class="nav-link" href="{{ route('admin.category.create') }}">Add Category </a>                
         </li>

       </ul>
     </div>
   </li> 


   <li class="nav-item">
    <a class="nav-link" data-toggle="collapse" href="#brand-pages" aria-expanded="false" aria-controls="brand-pages">
      <i class="menu-icon typcn typcn-document-add"></i>
      <span class="menu-title">Manage Brands</span>
      <i class="menu-arrow"></i>
    </a>
    <div class="collapse" id="brand-pages">
      <ul class="nav flex-column sub-menu">
        <li class="nav-item">
          <a class="nav-link" href="{{ route('admin.brands') }}">Manage Brand </a>                
        </li>
        <li class="nav-item">
         <a class="nav-link" href="{{ route('admin.brand.create') }}">Add Brand </a>                
       </li>

     </ul>
   </div>
 </li>


 <li class="nav-item">
  <a class="nav-link" data-toggle="collapse" href="#division-pages" aria-expanded="false" aria-controls="division-pages">
    <i class="menu-icon typcn typcn-document-add"></i>
    <span class="menu-title">Manage Divisions</span>
    <i class="menu-arrow"></i>
  </a>
  <div class="collapse" id="division-pages">
    <ul class="nav flex-column sub-menu">
      <li class="nav-item">
        <a class="nav-link" href="{{ route('admin.divisions') }}">Manage Divisions </a>                
      </li>
      <li class="nav-item">
       <a class="nav-link" href="{{ route('admin.division.create') }}">Add Division </a>                
     </li>

   </ul>
 </div>
</li>

<li class="nav-item">
  <a class="nav-link" data-toggle="collapse" href="#district-pages" aria-expanded="false" aria-controls="district-pages">
    <i class="menu-icon typcn typcn-document-add"></i>
    <span class="menu-title">Manage Districts</span>
    <i class="menu-arrow"></i>
  </a>
  <div class="collapse" id="district-pages">
    <ul class="nav flex-column sub-menu">
      <li class="nav-item">
        <a class="nav-link" href="{{ route('admin.districts') }}">Manage Districts </a>                
      </li>
      <li class="nav-item">
       <a class="nav-link" href="{{ route('admin.district.create') }}">Add Districts </a>                
     </li>

   </ul>
 </div>
</li> 


<li class="nav-item">
  <a class="nav-link" data-toggle="collapse" href="#slider-pages" aria-expanded="false" aria-controls="slider-pages">
    <i class="menu-icon typcn typcn-document-add"></i>
    <span class="menu-title">Manage Sliders</span>
    <i class="menu-arrow"></i>
  </a>
  <div class="collapse" id="slider-pages">
    <ul class="nav flex-column sub-menu">
      <li class="nav-item">
        <a class="nav-link" href="{{ route('admin.sliders') }}">Manage Sliders </a>                
      </li>  
   </ul>
 </div>
</li>

<li class="nav-item">
  <a class="nav-link" href="#logout">
    <form class="form-inline" action="{{ route('admin.logout') }}" method="post">
      @csrf
      <input type="submit" value="Logout Now" class="btn btn-danger">
    </form>
  </a>
</li>



</ul>
</nav>

            {{-- partials --}}