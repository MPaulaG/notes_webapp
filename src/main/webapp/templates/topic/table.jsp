<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div id="toolbarModal">
  <button
    type="button"
    class="btn btn-success"
    data-bs-toggle="modal"
    data-bs-target="#createModalTopic"
  >
    <i class="fa fa-plus"></i> Añadir Asunto
  </button>
</div>
<div id="modalTable" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal table</h5>
        <button
          type="button"
          class="btn-close"
          data-bs-dismiss="modal"
          aria-label="Close"
        ></button>
      </div>
      <div class="modal-body">
        <table
          id="table"
          data-toggle="table"
          data-locale="es-ES"
          data-toolbar="#toolbarModal"
          data-height="345"
          data-url="api/topic"
        >
          <thead>
            <tr>
              <th data-field="id_topic">ID</th>
              <th data-field="name">NOMBRE</th>
              <th data-field="description">DESCRIPCION</th>
              <th
              data-field="operate"
              data-formatter="operateFormatterTopic"
              data-width="100"
              data-align="center"
              data-valign="middle"
            >
              ACCION
            </th>
            </tr>
          </thead>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
          Close
        </button>
      </div>
    </div>
  </div>
</div>
