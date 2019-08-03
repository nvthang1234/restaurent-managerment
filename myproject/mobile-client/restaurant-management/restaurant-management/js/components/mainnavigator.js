import { createStackNavigator, createAppContainer } from "react-navigation";
import homeview from "../views/homescreen";
import login from "../views/login";

const AppNavigator = createStackNavigator(
    {
        Home: {
            screen: homeview
        },
        Login:{
            screen:login,
            navigationOptions: {
                header: null,
                tabBarVisible: true ,
              }
        }
    },
    {
        initialRouteName: "Login"
    });

export default createAppContainer(AppNavigator);