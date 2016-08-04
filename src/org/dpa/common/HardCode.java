package org.dpa.common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Calendar;
import java.util.Date;

public class HardCode {
	public static Connection CNDB = ConnectDB.getInstance().getConnect();;
	public static PreparedStatement PTME;
	public static ResultSet RESE;
	public static final Date DATETIME = new Date(Calendar.getInstance().getTime().getTime());
}
