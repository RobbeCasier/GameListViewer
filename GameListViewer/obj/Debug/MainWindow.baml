   M S B A M L   `   `   `  ����I  EGameListViewer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:GameListViewer.ModelGameListViewer.Model  5   	   C&clr-namespace:GameListViewer.ViewModelGameListViewer.ViewModel  5   	   E'clr-namespace:GameListViewer.ConvertersGameListViewer.Converters  5   	   /clr-namespace:GameListViewerGameListViewer  5
   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	       GameListViewer.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   .m"clr-namespace:GameListViewer.Model    5   	   3vm&clr-namespace:GameListViewer.ViewModel    5   	   6conv'clr-namespace:GameListViewer.Converters    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8
syncfusion!http://schemas.syncfusion.com/wpf     5	   	   .localclr-namespace:GameListViewer     5
   	   6sys&clr-namespace:System;assembly=mscorlib     5   	     � Title$  
Games List��5   	   $	��450��6   $	��800��6)    � 	Resources 5         	GameState S� 
MethodName S� 
ObjectType  System.Enum S� MethodParameters M� TypeName  AchievementState  Platform��%c  &	        &	 n     &	 �     S� 5   
   $ 	GetValues��6/   "  6F    5      M� 5      $ m:CompletionState��6   5      S� 5   
   $ 	GetValues��66   "  6M    5      M� 5      $ m:AchievementsState��6   5      S� 5   
   $ 	GetValues��6.   "  6E    5      M� 5      $ 
m:Platform��6   5      5       � DataContext 5      %  GameListViewer.ViewModel.MainVM  5    
    J� InputBindings 5"      �� 5#   
   
 �� Key$ S��6   	 �� 	Modifiers$	 
Ctrl+Shiftf�6   
 �� Command
 64   �� *SaveAs+�� 5$   
   $ S��6   $
	 Ctrlf�6   
 6.   �� *Save+�� 5%   
   $ N��6   $	 
Ctrl+Shiftf�6   
 64   �� *New+.��5'      ]� .+�5(   
   o� $	��Top=�6   $��16(�6$   .@�5)      m� $��_File��6   .@�5*      m� $
��_New��6    m� InputGestureText$ Ctrl+Shift+N��6A    m� Command 6)   �� *New+6A   m� 5+      $��_Open��6    6*   �� *Open+m� 5,      $��_Save��6   $ Ctrl+S��6C    6*   �� *Save+6C   m� 5-      $��_SaveAs��6   $ Ctrl+Shift+S��6G    6,   �� *SaveAs+6G   5.      5/      � 50   
    51      *  $GameListViewer.Converters.EnumSpacer  
EnumSpacer��%   &	         52      6"   53       � RowDefinitions 54      �� 55      $
��1.5* �6    �� 56      $��1* �6    �� 57      $��8* �6    �� 58      $��1* �6    .+�5:      �  � ColumnDefinitions 5;      �� 5<      $��6* �6'   �� 5=      $��1* �6'   .+�5?      � $��Center=�6    5@      �� 5A      �� 5B      �� 5C      �� 5D       5F      �� 5G      $
��auto �6+   �� 5H      $
��auto �6+   .+�5K      �� $��0��6    $��0��6-   $��16(�6=   $��Total Games:��6K   �� 5L      $��0��6    $��1��6-   $��16(�6=   ��6K   �� *AllGames.Count+�� 5N      $��1��6    $��0��6-   $��16(�6=   $��Completed Games:��6K   �� 5O      $��1��6    $��1��6-   $��16(�6=   ��6K   �� *CompletedGames+�� 5Q      $��2��6    $��0��6-   $��16(�6=   $��Endless Games:��6K   �� 5R      $��2��6    $��1��6-   $��16(�6=   ��6K   �� *EndlessGames+�� 5T      $��3��6    $��0��6-   $��16(�6=   $��Not Completed Games:��6K   �� 5U      $��3��6    $��1��6-   $��16(�6=   ��6K   �� *NotCompletedGames+5V      � 5W      $��1��6   $��Center=�6'   $��Center=�6D    5X      �� 5Y      $
��auto �6+   �� 5Z      $
��auto �6+   .+�5\      �� ��6   ��  �� Source# [  �� SelectedItem 6X   �� *SearchPlatform+ �� UpdateSourceTrigger$ PropertyChanged=��� 5]      $��1��6    $��Center=�6Q   $��16(�6l   $��20,0,0,0q�6z   ��60   �� *PlatformCounter+6z   5^      5_      �� 5`      $��1��6    �� Orientation$ 
Horizontal=�6&   .+�5a      �� $��	All Games��6   ��6-   �� *AllGamesCMD+�� 5b      $��Completed Games��6   ��63   �� *CompletedGamesCMD+�� 5c      $��Not Completed Games��6   ��67   �� *NotCompletedGamesCMD+�� 5d      $��Endless Games��6   ��61   �� *EndlessGamesCMD+5e      &   System.Windows.Controls.DataGrid  5f      -   5        $��	DataGrid1��5f      $��2��6(      AutoGenerateColumns .     
IsReadOnly . $��Stretch=�6�   $��16(�6�   ��6Q   �� *Games+   Columns 5g      4  .System.Windows.Controls.DataGridTemplateColumn  5h      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 4* 6-      Header 5i      �� 5j      $��Title��6(      HeaderStyle 5l      �� 5m       �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6$   .�5n   "   ��  �� Property � �� �� Value$ Center=�6O   5o         CellTemplate 5q      �� 5r      .R�5s   "   �� $��Stretch=�6C   ��6,   �� *_Name+6C   5t      5v        5w      $
 1.5* 6-    5x      �� 5y      $��State��6(    5{      �� 5|      "  6$   .�5}   "   ��  � ��$ Center=�6O   5~       5�      �� 5�      .R�5�   "   �� ��6+   �� # [   6e   �� *_State+$ PropertyChanged=���5�   &   �� 5�   *   .R�5�   .   �� ��68   ��  �� 	Converter# [ 5�   +   5�   #   5�      5�        5�      $
 1.5* 6-    5�      �� 5�      $��Achievements��6(    5�      �� 5�      "  6$   .�5�   "   ��  � ��$ Center=�6O   5�       5�      �� 5�      .R�5�   "   �� ��6+   �� # [  6l   �� *_AchievementState+$ PropertyChanged=���5�   &   �� 5�   *   .R�5�   .   �� ��68   �� # [ 5�   +   5�   #   5�      5�        5�      $ 1* 6-    5�      �� 5�      $��Platform��6(    5�      �� 5�      "  6$   .�5�   "   ��  � ��$ Center=�6O   5�       5�      �� 5�      .R�5�   "   �� $��Center=�6G   ��6,   �� *	_Platform+6G   5�      5�        5�       5�      �� 5�      .R�5�   "   �� $
��Edit��6)   ��68   ��  �� Path$ DataContext.Edit� �� RelativeSource ��   �� AncestorType"   ��6�   �� 5�      5�      5�      �� 5�      $��3��6   $��ADD GAME��6"   ��65   �� *	AddGame+y�6Q   �� *
FullList+5�      5�      5�      