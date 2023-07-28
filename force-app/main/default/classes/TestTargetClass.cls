public with sharing class TestTargetClass {
  public static Object getNull() {
    return 'null';
  }

  public static Boolean isOddNumber(Integer num) {
    return Math.mod(num, 2) == 0;
  }

  public static void getError() {
    throw new AuraHandledException('エラーだよ');
  }
}
