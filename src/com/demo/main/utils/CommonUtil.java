package com.demo.main.utils;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Field;
import java.security.Timestamp;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class CommonUtil {
  public static final String IS_LOGIN = "is_login";
  public static final String USERNAME = "username";

  public static final String USER_ID = "user_id";

  public static String getTimeFormat(Timestamp time) {
    return DateFormat.getDateTimeInstance().format(time);
  }

  public interface Transition<E> {
    E function(E e);
  }

  /** 将数据库查询resultSet结果转换为List。需要手动设定转换规则 */
  public static <T> List<T> resultSetToList(
      ResultSet resultSet, Class<T> tClass, Transition<T> transition) {
    try {
      List<T> list = new ArrayList<>();

      while (resultSet.next()) {
        T t = tClass.getConstructor().newInstance();
        list.add(transition.function(t));
      }
      return list;
    } catch (Exception e) {
      throw new RuntimeException(e);
    }
  }

  /** 将数据库查询resultSet结果转换为List。在已预先设定类型范围内，自动设定转换规则 */
  public static <T> List<T> autoToList(ResultSet resultSet, Class<T> tClass) {
    return resultSetToList(
        resultSet,
        tClass,
        obj -> {
          try {
            int i = 1;

            List<Field> fieldList = new ArrayList<>();
            Collections.addAll(fieldList, tClass.getDeclaredFields());

            // 如果当前类的父类不为Object，则将父类属性添加到当前类
            if (!tClass.getSuperclass().getName().equals("java.lang.Object")) {
              fieldList.addAll(0, Arrays.asList(tClass.getSuperclass().getDeclaredFields()));
            }

            for (Field declaredField : fieldList) {
              declaredField.setAccessible(true);
              switch (declaredField.getType().getName()) {
                case "int":
                case "java.lang.Integer":
                  declaredField.set(obj, resultSet.getInt(i));
                  break;
                case "java.lang.String":
                  declaredField.set(obj, resultSet.getString(i));
                  break;
                case "double":
                case "java.lang.Double":
                  declaredField.set(obj, resultSet.getDouble(i));
                  break;
                case "boolean":
                case "java.lang.Boolean":
                  declaredField.set(obj, resultSet.getBoolean(i));
                  break;
                case "java.sql.Timestamp":
                  declaredField.set(obj, resultSet.getTimestamp(i));
                  break;
              }
              i++;
            }
          } catch (Exception e) {
            e.printStackTrace();
            return null;
          }
          return obj;
        });
  }

  public static <T> T autoToOne(ResultSet result, Class<T> tClass) {
    List<T> list = autoToList(result, tClass);
    return (list.size() > 0) ? list.get(0) : null;
  }

  public static boolean getIsLogin(HttpServletRequest request) {
    Object flag = request.getSession().getAttribute(CommonUtil.IS_LOGIN);
    return flag != null;
  }
  public static boolean getIsLogin(ServletRequest request) {
    return getIsLogin((HttpServletRequest) request);
  }
}
