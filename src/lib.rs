use zed::LanguageServerId;
use zed_extension_api::{self as zed, Result};

struct JqExtension {}

impl zed::Extension for JqExtension {
    fn new() -> Self {
        Self {}
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        match worktree.which("jq-lsp") {
            Some(path) => Ok(zed::Command {
                command: path,
                args: vec![],
                env: vec![],
            }),
            None => Err("Unable to find jq-lsp from worktree".into()),
        }
    }
}

zed::register_extension!(JqExtension);
