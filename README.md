# CC2-Cluster
Campus Connect 2 Cluster &amp; CI/CD Repository

### Repository Map: 
<!-- REPO_MAP_START -->
```bash
.
├── .github
│   └── workflows
│       ├── ansible-deploy.yml
│       ├── terraform_apply.yml
│       └── update-repo-map.yml
├── .repo_map_block.md
├── .repo_tree.txt
├── LICENSE
├── README.md
├── ansible
│   ├── ansible.cfg
│   ├── inventory.ini
│   ├── playbooks
│   │   ├── bootstrap.yml
│   │   └── roles
│   │       ├── base
│   │       ├── cni-flannel
│   │       ├── containerd
│   │       ├── external-dns
│   │       ├── helm
│   │       ├── ingress-app
│   │       ├── ingress-nginx
│   │       ├── kube-tools
│   │       ├── kubeadm-init
│   │       ├── kubeadm-join
│   │       ├── metallb
│   │       └── python-k8s
│   ├── requirements.yml
│   └── vault
│       └── cloudflare.yml
├── deliverables
│   └── Deliverable1.pdf
├── helm
│   └── ingress
│       ├── Chart.yaml
│       ├── templates
│       │   └── ingress.yml
│       └── values.yaml
└── infra
    ├── main.tf
    ├── outputs.tf
    ├── providers.tf
    └── variables.tf

24 directories, 20 files
```
<!--REPO_MAP_END --> 
## Architecture Diagram: 
<img width="3840" height="1440" alt="ArchitectureDiagramLR" src="https://github.com/user-attachments/assets/4366554c-10d9-4218-8391-b413e0f1d30b" />
