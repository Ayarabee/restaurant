abstract class ConstantsManager
{
  static const String fontFamily = 'Tajawal';
  static const String appTitle = 'Restaurant';

  static int onAddMinus ({required String value, required bool add}){
    late int valueReturned ;
    if(value.isNotEmpty) {
      try
      {
        if(add)
        {
        valueReturned = int.parse(value) + 1;
        }
        else
        {
          valueReturned = int.parse(value) - 1;
        }
      }
      catch (e)
      {
        // todo toast to enter only numbers
        valueReturned =0;
      }
    }
    return valueReturned;
  }
}