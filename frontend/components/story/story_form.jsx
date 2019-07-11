import React from 'react';
// import {Dropzone, useDropzone} from 'react-dropzone';
// import styled from 'styled-components';

// const getColor = (props) => {
//   if (props.isDragAccept) {
//     return '#00e676';
//   }
//   if (props.isDragReject) {
//     return '#ff1744';
//   }
//   if (props.isDragActive) {
//     return '#2196f3';
//   }
//   return '#eeeeee';
// }

// const Container = styled.div`
//   flex: 1;
//   display: flex;
//   flex-direction: column;
//   align-items: center;
//   padding: 20px;
//   border-width: 2px;
//   border-radius: 2px;
//   border-color: ${props => getColor(props)};
//   border-style: dashed;
//   background-color: #fafafa;
//   color: #bdbdbd;
//   outline: none;
//   transition: border .24s ease-in-out;
// `;

// function StyledDropzone(props) {
//   const {
//     getRootProps,
//     getInputProps,
//     isDragActive,
//     isDragAccept,
//     isDragReject
//   } = useDropzone({ accept: 'image/jpeg, image/png' });
//   return (
//     <div className="container">
//       <Container {...getRootProps({ isDragActive, isDragAccept, isDragReject })}>
//         <input {...getInputProps()} />
//         <p>Drag 'n' drop some files here, or click to select files</p>
//       </Container>
//     </div>
//   );
// }

class StoryForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.story;
    this.update = this.update.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleImage = this.handleImage.bind(this);
  }

  update(field) {
    return event => {
      this.setState({ [field]: event.target.value })
    };
  };

  // handleImage(event) {
  //   this.setState({['image']: event.acceptedFile[0]})
  // }

  handleImage(event) {
    this.setState({['image']: event.currentTarget.files[0]});
  }

  handleSubmit(event) {
    event.preventDefault();
    const formData = new FormData();
    formData.append("story[title]", this.state.title);
    formData.append("story[body]", this.state.body);
    formData.append("story[image]", this.state.image);
    this.props.submitStory(formData, this.state.id)
      .then(() => this.props.history.push(`/users/${this.props.currentUserId}`));
  }

  render() {
    return (
      <div className="new-story-container">
        <form className="new-story-form" onSubmit={this.handleSubmit}>
          <input className="new-story-form-title" type="text" value={this.state.title} onChange={this.update('title')} 
            placeholder="Title"/>
          <textarea className="new-story-form-body" value={this.state.body} onChange={this.update('body')} 
            placeholder="Tell your story..."></textarea>

          {/* React Drop-zone */}
          {/* <StyledDropzone className="image-drop-zone" onDrop={this.handleImage}/> */}

          {/* <Dropzone onDrop={acceptedFile => this.updateImage(acceptedFile)}>
            {({ getRootProps, getInputProps }) => (
              <section>
                <div {...getRootProps()}>
                  <input {...getInputProps()} />
                  <p>Drag 'n' drop some files here, or click to select files</p>
                </div>
              </section>
            )}
          </Dropzone> */}

          <input type="file" onChange={this.handleImage}/>

          <div>
            {this.props.formType === 'Edit Story'
              ? <input className="submit-button" type="submit" value="Update Story" />
              : <input className="submit-button" type="submit" value="Create Story" />}
          </div>
          
        </form>
      </div>
    );
  }
}

export default StoryForm;