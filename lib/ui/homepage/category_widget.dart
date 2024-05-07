import 'package:flutter/material.dart';
import 'package:intra_events/app_state.dart';
import 'package:intra_events/styleguide.dart';
import 'package:provider/provider.dart';
import '../../model/category.dart';

// for each category button, creating a CategoryWidget
class CategoryWidget extends StatelessWidget{
  const CategoryWidget({super.key, required this.cat});
  final Category cat;

  @override
  Widget build(BuildContext context){
    final appState = Provider.of<AppState>(context);
    final isSelected = (appState.selectedCategoryId == cat.categoryId);
    return GestureDetector(
      onTap: (){
        if(!isSelected){
          appState.updateCategoryId(cat.categoryId);
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        height: 90,
        width: 90,
        decoration: BoxDecoration(
          border: Border.all(color: isSelected? Colors.white : const Color(0x99FFFFFF), width: 3),
          borderRadius: const BorderRadiusDirectional.all(Radius.circular(16)),
          color: isSelected? Colors.white : Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              cat.icon,
              size: 40,
              color: isSelected? Theme.of(context).primaryColor : Colors.white,
            ),
            const SizedBox(height: 10,),
            Text(
              cat.name,
              style: isSelected? selectedCategoryTextStyle : categoryTextStyle,
            ),
            
          ],
          )
      ),
    );
  }
}