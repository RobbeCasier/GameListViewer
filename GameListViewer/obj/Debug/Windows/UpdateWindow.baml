   M S B A M L   `   `   `  ����I  EGameListViewer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:GameListViewer.ModelGameListViewer.Model  5   	   C&clr-namespace:GameListViewer.ViewModelGameListViewer.ViewModel  5   	   ?$clr-namespace:GameListViewer.WindowsGameListViewer.Windows  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5	   	   )    #GameListViewer.Windows.UpdateWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   .m"clr-namespace:GameListViewer.Model    5   	   3vm&clr-namespace:GameListViewer.ViewModel    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:GameListViewer.Windows     5   	   6sys&clr-namespace:System;assembly=mscorlib     5	   	     � Title$
  Edit��5   	   $	��300��6   $	��500��6#    � 	Resources 5         Platform S� 
MethodName S� 
ObjectType  System.Enum S� MethodParameters M� TypeName��%q   &	        S� 5   
   $ 	GetValues��6.   "  6E    5      M� 5      $ 
m:Platform��6   5      5       � DataContext 5      %  GameListViewer.ViewModel.MainVM  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $
��0.5* �6   �� 5      $
��0.2* �6    � ColumnDefinitions 5   
   �� 5       $��1* �6   �� 5!      $��4* �6   �� 5"      $��1* �6   .+�5$   
   �� $��0��6   $��1��6!   $��	Edit game��61   $��Center=�6B   $��Center=�6_   $��20(�6z   �� 5%   
   $��1��6   $��1��6"   	 �� Orientation$	 Vertical=�62   $��Stretch=�6I   $��Bottom=�6g   .+�5&      �� $��Title��6   �� 5'      ��6   �� *UpdateGame._Name+5(      �� 5)   
   $��2��6   $��1��6"   $	 Vertical=�62   $��Stretch=�6I   $��Bottom=�6g   .+�5*      �� $��Platform��6   �� 5+      ��6   �� 
 �� Source#
 [   �� SelectedItem 6P   �� *UpdateGame._Platform+5,      �� 5-   
   $��4��6   $��1��6   $��UPDATE��6.   ��6?   �� *	EditEntry+5.      5/      