import React from 'react';
import { StyleSheet, Text, View, TextInput,Dimensions } from 'react-native';

const screenWidth = Math.round(Dimensions.get('window').width);
const screenheight = Math.round(Dimensions.get('window').height);
class login extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            username: '',
            password: ''
        };
    }

    handleChange = (evt,name) => {
        this.setState({
            [name]:evt.nativeEvent
        })
    }
    render() {
        return (
            <View style={styles.container}>
                <Text style={styles.h1}>LOGIN</Text>
                <View style={styles.container_input}>
                    <TextInput name="username" placeholder="username" style={styles.input} value={this.state.username} onChange={e=>this.handleChange(e,'username')} />
                    <TextInput placeholder="password" secureTextEntry={true} name="password" style={styles.input} value={this.state.password} onChange={e=>this.handleChange(e,'password')} />
                </View>
            </View>
        );
    }
}
export default login

const styles = StyleSheet.create({
    container: {
        height:screenheight,
        paddingTop:screenheight/4
    },
    container_input:{
        marginHorizontal: 30,
        marginTop:50
    },
    input: {
        borderWidth: 1,
        borderColor: "black",
        marginBottom: 10,
        padding: 10,
        borderRadius: 6
    },
    h1:{
        fontSize:30,
        textAlign:"center",
        marginTop:10
    }
});