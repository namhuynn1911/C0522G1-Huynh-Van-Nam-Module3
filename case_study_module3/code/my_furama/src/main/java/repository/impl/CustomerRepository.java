package repository.impl;

import model.Customer;
import repository.BaseRepository;
import repository.ICustomerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private final String SELECT_ALL = "select* from customer where is_delete=0;";

    @Override
    public List<Customer> findByAll() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int customerId = resultSet.getInt("customer_id");//lấy tên trùng vớI tên trường trong SQL
                String customerName = resultSet.getString("customer_name");
               String customerBirthday=resultSet.getString("customer_birthday");
               int customerGender=resultSet.getInt("customer_gender");
               String customerIdCard=resultSet.getString("customer_id_card");
               String customerPhone=resultSet.getString("customer_phone");
               String customerEmail=resultSet.getString("customer_email");
               String customerAddress=resultSet.getString("customer_address");
               int customerTypeId=resultSet.getInt("customer_type_id");
               Customer customer=new Customer(customerId,customerName,customerBirthday,customerGender,customerIdCard,customerPhone,
                       customerEmail,customerAddress,customerTypeId);
               customerList.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }
}
