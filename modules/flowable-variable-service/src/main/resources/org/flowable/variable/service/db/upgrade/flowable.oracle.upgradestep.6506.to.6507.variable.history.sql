
begin
  execute immediate 'create index ACT_IDX_HI_TYPE_TEXT_NAME_PIID on ACT_HI_VARINST(VAR_TYPE_,TEXT_,NAME_,PROC_INST_ID_)';
exception
  when others then
    if sqlcode != -1408 then
      raise;
    end if;
end;
/

begin
  execute immediate 'create index ACT_IDX_HI_NAME_PIID on ACT_HI_VARINST(NAME_,PROC_INST_ID_)';
exception
  when others then
    if sqlcode != -1408 then
      raise;
    end if;
end;
/
