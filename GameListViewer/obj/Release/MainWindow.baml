   M S B A M L   `   `   `  ���� I  EGameListViewer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:GameListViewer.ModelGameListViewer.Model  C&clr-namespace:GameListViewer.ViewModelGameListViewer.ViewModel  E'clr-namespace:GameListViewer.ConvertersGameListViewer.Converters  /clr-namespace:GameListViewerGameListViewer  O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem     GameListViewer.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    .m"clr-namespace:GameListViewer.Model    3vm&clr-namespace:GameListViewer.ViewModel    6conv'clr-namespace:GameListViewer.Converters    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     8
syncfusion!http://schemas.syncfusion.com/wpf     .localclr-namespace:GameListViewer     6sys&clr-namespace:System;assembly=mscorlib       � Title$  
Games List��$	��450��$	��800�� � 	Resources    	GameState S� 
MethodName S� 
ObjectType  System.Enum S� MethodParameters M� TypeName  AchievementState  Platform��%�   &	        &	 ;     &	 x     S� $ 	GetValues��"   M� $ m:CompletionState��S� $ 	GetValues��"   M� $ m:AchievementsState��S� $ 	GetValues��"   M� $ 
m:Platform�� � DataContext %  GameListViewer.ViewModel.MainVM   J� InputBindings �� 
 �� Key$ S��	 �� 	Modifiers$	 
Ctrl+Shiftf�
 �� Command
 �� *SaveAs+�� $ S��$
	 Ctrlf�
 �� *Save+�� $ N��$	 
Ctrl+Shiftf�
 �� *New+.��]� .+�o� $	��Top=�$��16(�.@�m� $��_File��.@�m� $
��_New�� m� InputGestureText$ Ctrl+Shift+N�� m� Command �� *New+m� $��_Open�� �� *Open+m� $��_Save��$ Ctrl+S�� �� *Save+m� $��_SaveAs��$ Ctrl+Shift+S�� �� *SaveAs+�  *  $GameListViewer.Converters.EnumSpacer  
EnumSpacer��%   &	          � RowDefinitions �� $
��1.5* ��� $��1* ��� $��8* ��� $��1* �.+��  � ColumnDefinitions �� $��6* ��� $��1* �.+�� $��Center=� �� �� �� ��  �� $
��auto ��� $
��auto �.+��� $��0��$��0��$��16(�$��Total Games:���� $��0��$��1��$��16(�$��20,0,0,0q����� *AllGames.Count+�� $��1��$��0��$��16(�$��Completed Games:���� $��1��$��1��$��16(�$��20,0,0,0q����� *CompletedGames+�� $��2��$��0��$��16(�$��Endless Games:���� $��2��$��1��$��16(�$��20,0,0,0q����� *EndlessGames+�� $��3��$��0��$��16(�$��Not Completed Games:���� $��3��$��1��$��16(�$��20,0,0,0q����� *NotCompletedGames+� $��1��$��Center=�$��Center=� �� $
��auto ��� $
��auto �.+��� ����  �� Source# [  �� SelectedItem �� *SearchPlatform+ �� UpdateSourceTrigger$ PropertyChanged=��� $��1��$��Center=�$��16(�$��20,0,0,0q����� *PlatformCounter+�� $��1�� �� Orientation$ 
Horizontal=�.+��� $��	All Games������ *AllGamesCMD+�� $��Completed Games������ *CompletedGamesCMD+�� $��Not Completed Games������ *NotCompletedGamesCMD+�� $��Endless Games������ *EndlessGamesCMD+&   System.Windows.Controls.DataGrid  -   $��	DataGrid1��$��2��   AutoGenerateColumns .     
IsReadOnly . $��Stretch=�$��16(����� *Games+   Columns 4  .System.Windows.Controls.DataGridTemplateColumn  ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 4*    Header �� $��Title��   HeaderStyle ��  �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  .���  �� Property � �� �� Value$ Center=�   CellTemplate �� .R��� $��Stretch=����� *_Name+  $
 1.5*  �� $��State�� �� "  .���  � ��$ Center=� �� .R��� ���� # [   �� *_State+$ PropertyChanged=����� .R��� ����  �� 	Converter# [   $
 1.5*  �� $��Achievements�� �� "  .���  � ��$ Center=� �� .R��� ���� # [  �� *_AchievementState+$ PropertyChanged=����� .R��� ���� # [   $ 1*  �� $��Platform�� �� "  .���  � ��$ Center=� �� .R��� $��Center=����� *	_Platform+   �� .R��� $
��Edit������  �� Path$ DataContext.Edit� �� RelativeSource ��   �� AncestorType"   ���� �� $��3��$��ADD GAME������ *	AddGame+y��� *
FullList+