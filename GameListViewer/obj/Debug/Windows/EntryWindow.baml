   M S B A M L   `   `   `  ����I  EGameListViewer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:GameListViewer.ModelGameListViewer.Model  5   	   C&clr-namespace:GameListViewer.ViewModelGameListViewer.ViewModel  5   	   E'clr-namespace:GameListViewer.ConvertersGameListViewer.Converters  5   	   ?$clr-namespace:GameListViewer.WindowsGameListViewer.Windows  5	   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5
   	   (    "GameListViewer.Windows.EntryWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   .m"clr-namespace:GameListViewer.Model    5   	   3vm&clr-namespace:GameListViewer.ViewModel    5   	   6conv'clr-namespace:GameListViewer.Converters    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:GameListViewer.Windows     5	   	   6sys&clr-namespace:System;assembly=mscorlib     5
   	     � Title$  Add Game��5   	   $	��450��6   $	��500��6'    � 	Resources 5         	GameState S� 
MethodName S� 
ObjectType  System.Enum S� MethodParameters M� TypeName  AchievementState  Platform��%c  &	        &	 n     &	 �     S� 5   
   $ 	GetValues��6/   "  6F    5      M� 5      $ m:CompletionState��6   5      S� 5   
   $ 	GetValues��66   "  6M    5      M� 5      $ m:AchievementsState��6   5      S� 5   
   $ 	GetValues��6.   "  6E    5      M� 5      $ 
m:Platform��6   5      5       � DataContext 5      %  GameListViewer.ViewModel.MainVM  5   
   .��5!      �  5"   
   *  $GameListViewer.Converters.EnumSpacer  
EnumSpacer��%   &	         5#      6   5$       � RowDefinitions 5%   
   �� 5&      $��1* �6   �� 5'      $��1* �6   �� 5(      $��1* �6   �� 5)      $��1* �6   �� 5*      $��1* �6   �� 5+      $��1* �6   �� 5,      $
��0.5* �6   �� 5-      $
��0.2* �6    � ColumnDefinitions 5/   
   �� 50      $��1* �6   �� 51      $��4* �6   �� 52      $��1* �6   .+�54   
   �� $��0��6   $��1��6!   $��Add game to list��61   $��Center=�6I   $��Center=�6f   $��20(�6�   �� 55   
   $��1��6   $��1��6"   	 �� Orientation$	 Vertical=�62   $��Stretch=�6I   $��Bottom=�6g   .+�56      �� $��Title��6   �� 57      ��6   �� *NewGame._Name+58      �� 59   
   $��2��6   $��1��6"   $	 Vertical=�62   $��Stretch=�6I   $��Bottom=�6g   .+�5:      �� $��State��6   �� 5;      ��6   �� 
 �� Source#
 [   �� SelectedItem 6Q   �� *NewGame._State+��5<      �� 5=      .R�5>      �� ��6$   ��  �� 	Converter# [ 5?      5A      5B      �� 5C   
   $��3��6   $��1��6"   $	 Vertical=�62   $��Stretch=�6I   $��Bottom=�6g   .+�5D      �� $��AchievementsState��6   �� 5E      ��6   �� #
 [  6X   �� *NewGame._AchievementState+��5F      �� 5G      .R�5H      �� ��6$   �� # [ 5I      5K      5L      �� 5M   
   $��4��6   $��1��6"   $	 Vertical=�62   $��Stretch=�6I   $��Bottom=�6g   .+�5N      �� $��Platform��6   �� 5O      ��6   �� #
 [  6P   �� *NewGame._Platform+5P      �� 5Q   
   $��6��6   $��1��6   $	��ADD��6.   ��6<   �� *AddGameToList+5R      5S      