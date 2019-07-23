CREATE TABLE communication_manager.encoded_pii (
    unique_identifier text PRIMARY KEY,
    pii_data text
);

/* Permissions for the table */
GRANT MODIFY PERMISSION ON communication_manager.encoded_pii TO smsusr;
GRANT MODIFY PERMISSION ON communication_manager.encoded_pii TO smartusr;
GRANT MODIFY PERMISSION ON communication_manager.encoded_pii TO masschusr;
GRANT MODIFY PERMISSION ON communication_manager.encoded_pii TO reportsusr;
GRANT MODIFY PERMISSION ON communication_manager.encoded_pii TO adminusr;
//adding a dummy line here
