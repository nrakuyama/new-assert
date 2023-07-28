@isTest
public with sharing class TestTargetClassTest {
  @isTest
  static void getNullTest() {
    Assert.isNull(TestTargetClass.getNull());
  }

  @isTest
  static void getFalseTest() {
    Assert.isFalse(TestTargetClass.isOddNumber(12));
  }

  @isTest
  static void getErrorTest() {
    try {
      TestTargetClass.getError();
      Assert.fail();
    } catch (Exception e) {
      Assert.isInstanceOfType(e, HandledException.class);
      Assert.areEqual('エラーだよ', e.getMessage());
    }
  }
}
