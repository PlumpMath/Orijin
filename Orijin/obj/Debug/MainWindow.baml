   M S B A M L   `   `   `  ����U  QAwesomium.Core, Version=1.7.3.0, Culture=neutral, PublicKeyToken=e1a0d7c8071a5214G4clr-namespace:Awesomium.Core;assembly=Awesomium.CoreAwesomium.Core  5   	   
 Orijin   Orijin.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Ecore4clr-namespace:Awesomium.Core;assembly=Awesomium.Core     5   	   a ]Awesomium.Windows.Controls, Version=1.7.3.0, Culture=neutral, PublicKeyToken=7a34e179b8b61c392data'http://schemas.awesomium.com/winfx/data  5   	   ,awe"http://schemas.awesomium.com/winfx  5   	   $	��800��5   	   $	��485��5	   	     � WindowStartupLocation$  CenterScreen=�5   	    � AllowsTransparency . 
������  � WindowStyle$
 None=�5   	    � Title 5
   	   �� *Title+ �� ElementName$ 
webControl�� � 	Resources 5      3  -Awesomium.Windows.Controls.WebSessionProvider   
webSession   DataPath   DataSources1  +Awesomium.Windows.Data.DataSourceDictionary7  1Awesomium.Windows.Data.ResourceDataSourceProvider  Key   Type	   Preferences#   Awesomium.Core.WebPreferences
   SmoothScrolling   DefaultEncoding��%�   &	          5   
   $ .\Cache��64    5         5      	local $ Packed=�6@   5      .	 5        
 . $ utf-8��69   5      5      .��5      ]� .+�5   
   +  %Awesomium.Windows.Controls.WebControl  -   5        $��
webControl��5   h      IsTransparent .    Source+   %Awesomium.ComponentModel.UriConverter$" asset://local/app/index.html 6�      
WebSession 6.   ��  �� Source# [  6�   5      5      