import * as React from 'react';
import * as signalR from '@aspnet/signalr';

class Index extends React.Component {


    componentDidMount() {

        console.log('creating connecion');
        try {
            return new signalR.HubConnectionBuilder()
                .withUrl(`https://staging-api.parkner.pe/hub`)
                .build();
        } catch(err) {
            console.log(err);
        }
    }

    render() {
        return <div>Hello</div>
    }
}

export default Index;