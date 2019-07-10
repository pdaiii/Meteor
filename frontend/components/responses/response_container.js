import { connect } from 'react-redux';
import { openModal } from '../../actions/modal_actions';
import { createResponse } from '../../actions/response_actions';
import Response from './response';

const mapStateToProps = state => ({

});

const mapDispatchToProps = dispatch => ({
  openModal: (modal) => dispatch(openModal(modal)),
  createResponse: (response) => dispatch(createResponse(response))
});

export default connect(mapStateToProps, mapDispatchToProps)(Response);