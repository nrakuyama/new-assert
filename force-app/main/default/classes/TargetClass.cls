public with sharing class TargetClass {
  public static Object getNull() {
    return 'null';
  }

  public static Boolean isOddNumber(Integer num) {
    return Math.mod(num, 2) == 0;
  }

  public static void throwHandledException() {
    throw new AuraHandledException('エラーだよ');
  }
}
