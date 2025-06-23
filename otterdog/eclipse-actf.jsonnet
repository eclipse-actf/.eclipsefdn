local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('technology.actf', 'eclipse-actf') {
  settings+: {
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('actf-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
    },
    orgs.newRepo('org.eclipse.actf') {
      allow_merge_commit: true,
      allow_update_branch: false,
      code_scanning_default_languages+: [
        "javascript-typescript",
      ],
      code_scanning_default_setup_enabled: true,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "ACTF project",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('org.eclipse.actf.ai') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
    },
    orgs.newRepo('org.eclipse.actf.common') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
    },
    orgs.newRepo('org.eclipse.actf.examples') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "Eclipse37x",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
    },
    orgs.newRepo('org.eclipse.actf.visualization') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
    },
    orgs.newRepo('org.eclipse.actf.visualization.releng') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
    },
  ],
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
}