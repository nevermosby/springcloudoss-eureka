export HOSTNAME=eureka-0
export EUREKA_ADDRESS_LIST="http://eureka-0.eureka:28888/eureka/,http://eureka-1.eureka:28881/eureka/,http://eureka-2.eureka:28882/eureka/"

java -jar ./target/registry-0.0.1.jar &

export HOSTNAME=eureka-1
export SERVER_PORT=28881
java -jar ./target/registry-0.0.1.jar &

export HOSTNAME=eureka-2
export SERVER_PORT=28882

java -jar ./target/registry-0.0.1.jar &