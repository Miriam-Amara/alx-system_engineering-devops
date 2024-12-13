# Install Werkzeug version 2.1.1
package {'werkzeug':
  ensure   => '2.1.1',
  provider => 'pip3',
}


# install flask from pip3
package{'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}