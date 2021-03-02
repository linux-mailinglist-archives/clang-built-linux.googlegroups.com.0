Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5H662AQMGQE5L5GMVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id A01823295E5
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 05:30:45 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id w8sf14328653iox.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Mar 2021 20:30:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614659444; cv=pass;
        d=google.com; s=arc-20160816;
        b=FrEXs3IRlLXBZaiFw5QCFZmQyObJ+MAdm4Nl/sMoly0Away7xlfmF072UEA9XlxdTW
         NIOW3k2UfHCvmKnisQOhZ9H4TZIgOQYadEhGGTAnvafRhP4iSMcbFdL581vd9Iq45Ad0
         UGj8JZ/hoZX0/noH3pMrbOjp/5c7cfdFeeLXXwh2mM/B0sSOPw4r5yej+TsyrlxaqZpy
         g6NimrcIdakgbSvLVy42yzmy33DXh8Ajya6VWolcnx24liNkRJkXQHvjIByeJRWEF+Fm
         wRg/PP4zR2wQxM4TS08+ARRsaHODzQsGmUM+NlbknDCrylSyoMul9TpHjf60HWTaNn8E
         jZCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=gP1F/xGH3OulWbNhYASHCVYpv4et/so4NtAEmxeJjY4=;
        b=B5fzItIWHlUTCgrqVpVHmlDAmG8EniG3cL0KRZpZw0dR4xRlROrY2DVdl66M7MLwr0
         6UB6iy7JpeOczdnSdiDVKSi4+nDX+rEKkF25ShALV9ubYMo5CtzIdXuekpQpyYOsIvhH
         0nVGh4vh7vJ17EVq4iTBFojXBPj9bPPPYjvgxuVXjiMsj58m7OY4uss38EytqVR19KpJ
         21IF42twxeSfS7Bww2gY1zJb8i1Ww1kPV0XFtcK6NicTTRImmDNHfk6MEo5Uv4c5qVJI
         E2D/mOB60JZVW3UY+kMzb+OCS5XeyvtTXCgIvYlv7/MOopF4WVw+rDYHIwR6XA2wAn0p
         guwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gP1F/xGH3OulWbNhYASHCVYpv4et/so4NtAEmxeJjY4=;
        b=onCZUTjLgVT+gthXBNz2e+Kq7onU5W7Joq2To8h5Nc94CfhQ3r4oAV/zQINXFeu2Oe
         gbMBL0e05DbjrpAO+XZay2UDXM6W8CdL4nA7BUqQCjabl43XLEBm9x4EpxGj048dYbNI
         ZdC0Tp60f5LccEc5pGdJVYLOQUV890eD2pf5/HOkDbjutYcEPDx5RovYk4iQ+OgsmbmH
         wuh2qi1UO4n8oj1Aayshfss7/QMw1fh48MQSCJpDzryeMW1RQYPb8p9x+IF84fGakjza
         zqBRZvqoggyWewXTnBf/tQZjtNE6txK8ZTWbs8/+qv57bjOsNu9Dvlc0ik8EXgfNgwNB
         c/0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gP1F/xGH3OulWbNhYASHCVYpv4et/so4NtAEmxeJjY4=;
        b=HTFY6KqWq61SSLKRPzuefIz/q+KYaYQmRP5kDyFGVOCuW8qxjwH7kCvOkEH/qOnQvw
         3NgEpL+x5+H5ZePs9Y9VU/XRK4WhnVeptRf1VMZIA50Q7actagWECQwdAYL7ILxY7idz
         94/KFJI7Px90WSJ05beWYWxUQNaJlYnYPM2THwlJjj+quZj8HBF87DpzbrxMuNZUS4uU
         BdPRI3PnvksAJ80f6u6WwKS8apBe2TGF/THvUMMNZ45k4PGzGFUK93+ZCnsM+KIWGQYc
         N7pGkTJ5Mu/fq2G/fFErCN1GMPnbQDj3g1aEGrIeARlWlQxxRsQAx97g7SzgjFZn2Hpc
         ch5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320Y7HXP/lGX9U7ymZig9PV16Cg4Axgy4fzIR0TA09tNzgo0OpB
	RICVoh299nITpEby6lZc8Tk=
X-Google-Smtp-Source: ABdhPJyePoSqZbTXs+c/NQoy2JBITLT+4C0saoQ0p3hTxce75nTz91999BmxO18jtDZdaz6X5UTO6w==
X-Received: by 2002:a05:6e02:b4d:: with SMTP id f13mr15528933ilu.138.1614659444398;
        Mon, 01 Mar 2021 20:30:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1d14:: with SMTP id i20ls4561606ila.2.gmail; Mon,
 01 Mar 2021 20:30:44 -0800 (PST)
X-Received: by 2002:a92:d7ce:: with SMTP id g14mr15444505ilq.255.1614659443798;
        Mon, 01 Mar 2021 20:30:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614659443; cv=none;
        d=google.com; s=arc-20160816;
        b=OHAtHBXHB+XPJdxsdxtxYpEguoSlRmR9A5MQClz+Qfc8dQEmYukwlj1sbArMtM/knC
         XtA40iDHlBNMmIfzNJF19C0v8l7tlISPB7sXS1/8v+2HR0uVhMIocuP0rlA81JmDQsaH
         rsCwhp0m9e9Gat6L5brST0rWrK+6N8NIdKZyMU7AZsoEuZIsuhd06fsezHsv5N/qkft9
         JHjhzRVoDZj+9K7ZJsLTF7O84fe3iuQZ7sIJeHufTKhqSKj0XxZhoTZm3457vN9MDKNY
         8uPfBoxDdZttND+b8nUk5d2uAFc0dEid9EFPkHu62gowJCMPmXshUfqUTpYzg21uKRZx
         JVgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=zs6Ujs4BWv6ZT4fI3qO04TuLRxs7sfAMl3G5tmCi8c4=;
        b=tDeOrnh2CfsGdJkaxkegZ5F3rhVMi36az30XDqiCIiSV/gOphB8ffeZEkK4xpdmoTy
         nN7a+b9C9acw+fzL+u+3SUlhbq2kv5Dt7yWya7zUkxWVKsXMi1nty7zYp6yfSYEUbIYr
         1IArNTlw6qzxgrk2P8/s3NeQf91c2Y1VGCuc6HJhoiCSnXuFMG/uaoIoUVvTvh3JY9xZ
         3rdpqJdvreDljTivb+u9FWZX5An7qHuAwJBu/QdwerWWNMblUzE74yjXExm+qgneR3Ov
         fdus7uAwDNwllGtmn7ug2pAAmTQjA6+AaUMBrnbLtDe9ARP0l2UnuZ6KnTsCVqB3ZG5l
         lf/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id o7si829898ilu.0.2021.03.01.20.30.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Mar 2021 20:30:43 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: qz6jiWzbUO4ynnxJ3j8U3JAkTVWnUMKxwTpr/2r8CVhIOxRheZOX/uNkO48Mr1DLLruUf/3TPm
 2zCfxDx/8Erw==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="184246833"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; 
   d="gz'50?scan'50,208,50";a="184246833"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Mar 2021 20:30:42 -0800
IronPort-SDR: M2hSjQ20586VORFIG+sW16p++JE09rwDqDZsI+mdacHDStH5/VcVR9PpWn6euClxPg0Cz0xu/s
 L3k7MZO1Nr1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; 
   d="gz'50?scan'50,208,50";a="368828154"
Received: from lkp-server02.sh.intel.com (HELO 2482ff9f8ac0) ([10.239.97.151])
  by orsmga006.jf.intel.com with ESMTP; 01 Mar 2021 20:30:39 -0800
Received: from kbuild by 2482ff9f8ac0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lGwgB-000038-A3; Tue, 02 Mar 2021 04:30:39 +0000
Date: Tue, 2 Mar 2021 12:29:55 +0800
From: kernel test robot <lkp@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [jgunthorpe:pr/3 41/49] drivers/vfio/pci/vfio_pci.c:891:26: warning:
 variable 'pdev' is uninitialized when used within its own initialization
Message-ID: <202103021253.j3iCSUC7-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="x+6KMIRAuhnl3hBn"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>


--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/jgunthorpe/linux pr/3
head:   149ed847a48641c2da496c00eec4d077d1ce61a6
commit: a310ee236e20e2bc5defd5d5c3bec23d89c132bd [41/49] vfio/pci: Get rid of vfio_pci_device pdev
config: powerpc-randconfig-r036-20210301 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5de09ef02e24d234d9fc0cd1c6dfe18a1bb784b0)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/jgunthorpe/linux/commit/a310ee236e20e2bc5defd5d5c3bec23d89c132bd
        git remote add jgunthorpe https://github.com/jgunthorpe/linux
        git fetch --no-tags jgunthorpe pr/3
        git checkout a310ee236e20e2bc5defd5d5c3bec23d89c132bd
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/vfio/pci/vfio_pci.c:891:26: warning: variable 'pdev' is uninitialized when used within its own initialization [-Wuninitialized]
                   struct pci_dev *pdev = pdev;
                                   ~~~~   ^~~~
   1 warning generated.


vim +/pdev +891 drivers/vfio/pci/vfio_pci.c

   824	
   825	static long vfio_pci_ioctl(struct vfio_device *core_vdev,
   826				   unsigned int cmd, unsigned long arg)
   827	{
   828		struct vfio_pci_device *vdev =
   829			container_of(core_vdev, struct vfio_pci_device, vdev);
   830		struct pci_dev *pdev = to_pci_dev(vdev->vdev.dev);
   831		unsigned long minsz;
   832	
   833		if (cmd == VFIO_DEVICE_GET_INFO) {
   834			struct vfio_device_info info;
   835			struct vfio_info_cap caps = { .buf = NULL, .size = 0 };
   836			unsigned long capsz;
   837			int ret;
   838	
   839			minsz = offsetofend(struct vfio_device_info, num_irqs);
   840	
   841			/* For backward compatibility, cannot require this */
   842			capsz = offsetofend(struct vfio_iommu_type1_info, cap_offset);
   843	
   844			if (copy_from_user(&info, (void __user *)arg, minsz))
   845				return -EFAULT;
   846	
   847			if (info.argsz < minsz)
   848				return -EINVAL;
   849	
   850			if (info.argsz >= capsz) {
   851				minsz = capsz;
   852				info.cap_offset = 0;
   853			}
   854	
   855			info.flags = VFIO_DEVICE_FLAGS_PCI;
   856	
   857			if (vdev->reset_works)
   858				info.flags |= VFIO_DEVICE_FLAGS_RESET;
   859	
   860			info.num_regions = VFIO_PCI_NUM_REGIONS + vdev->num_regions;
   861			info.num_irqs = VFIO_PCI_NUM_IRQS;
   862	
   863			ret = vfio_pci_info_zdev_add_caps(vdev, &caps);
   864			if (ret && ret != -ENODEV) {
   865				pci_warn(pdev, "Failed to setup zPCI info capabilities\n");
   866				return ret;
   867			}
   868	
   869			if (caps.size) {
   870				info.flags |= VFIO_DEVICE_FLAGS_CAPS;
   871				if (info.argsz < sizeof(info) + caps.size) {
   872					info.argsz = sizeof(info) + caps.size;
   873				} else {
   874					vfio_info_cap_shift(&caps, sizeof(info));
   875					if (copy_to_user((void __user *)arg +
   876							  sizeof(info), caps.buf,
   877							  caps.size)) {
   878						kfree(caps.buf);
   879						return -EFAULT;
   880					}
   881					info.cap_offset = sizeof(info);
   882				}
   883	
   884				kfree(caps.buf);
   885			}
   886	
   887			return copy_to_user((void __user *)arg, &info, minsz) ?
   888				-EFAULT : 0;
   889	
   890		} else if (cmd == VFIO_DEVICE_GET_REGION_INFO) {
 > 891			struct pci_dev *pdev = pdev;
   892			struct vfio_region_info info;
   893			struct vfio_info_cap caps = { .buf = NULL, .size = 0 };
   894			int i, ret;
   895	
   896			minsz = offsetofend(struct vfio_region_info, offset);
   897	
   898			if (copy_from_user(&info, (void __user *)arg, minsz))
   899				return -EFAULT;
   900	
   901			if (info.argsz < minsz)
   902				return -EINVAL;
   903	
   904			switch (info.index) {
   905			case VFIO_PCI_CONFIG_REGION_INDEX:
   906				info.offset = VFIO_PCI_INDEX_TO_OFFSET(info.index);
   907				info.size = pdev->cfg_size;
   908				info.flags = VFIO_REGION_INFO_FLAG_READ |
   909					     VFIO_REGION_INFO_FLAG_WRITE;
   910				break;
   911			case VFIO_PCI_BAR0_REGION_INDEX ... VFIO_PCI_BAR5_REGION_INDEX:
   912				info.offset = VFIO_PCI_INDEX_TO_OFFSET(info.index);
   913				info.size = pci_resource_len(pdev, info.index);
   914				if (!info.size) {
   915					info.flags = 0;
   916					break;
   917				}
   918	
   919				info.flags = VFIO_REGION_INFO_FLAG_READ |
   920					     VFIO_REGION_INFO_FLAG_WRITE;
   921				if (vdev->bar_mmap_supported[info.index]) {
   922					info.flags |= VFIO_REGION_INFO_FLAG_MMAP;
   923					if (info.index == vdev->msix_bar) {
   924						ret = msix_mmappable_cap(vdev, &caps);
   925						if (ret)
   926							return ret;
   927					}
   928				}
   929	
   930				break;
   931			case VFIO_PCI_ROM_REGION_INDEX:
   932			{
   933				void __iomem *io;
   934				size_t size;
   935				u16 cmd;
   936	
   937				info.offset = VFIO_PCI_INDEX_TO_OFFSET(info.index);
   938				info.flags = 0;
   939	
   940				/* Report the BAR size, not the ROM size */
   941				info.size = pci_resource_len(pdev, info.index);
   942				if (!info.size) {
   943					/* Shadow ROMs appear as PCI option ROMs */
   944					if (pdev->resource[PCI_ROM_RESOURCE].flags &
   945								IORESOURCE_ROM_SHADOW)
   946						info.size = 0x20000;
   947					else
   948						break;
   949				}
   950	
   951				/*
   952				 * Is it really there?  Enable memory decode for
   953				 * implicit access in pci_map_rom().
   954				 */
   955				cmd = vfio_pci_memory_lock_and_enable(vdev);
   956				io = pci_map_rom(pdev, &size);
   957				if (io) {
   958					info.flags = VFIO_REGION_INFO_FLAG_READ;
   959					pci_unmap_rom(pdev, io);
   960				} else {
   961					info.size = 0;
   962				}
   963				vfio_pci_memory_unlock_and_restore(vdev, cmd);
   964	
   965				break;
   966			}
   967			case VFIO_PCI_VGA_REGION_INDEX:
   968				if (!vdev->has_vga)
   969					return -EINVAL;
   970	
   971				info.offset = VFIO_PCI_INDEX_TO_OFFSET(info.index);
   972				info.size = 0xc0000;
   973				info.flags = VFIO_REGION_INFO_FLAG_READ |
   974					     VFIO_REGION_INFO_FLAG_WRITE;
   975	
   976				break;
   977			default:
   978			{
   979				struct vfio_region_info_cap_type cap_type = {
   980						.header.id = VFIO_REGION_INFO_CAP_TYPE,
   981						.header.version = 1 };
   982	
   983				if (info.index >=
   984				    VFIO_PCI_NUM_REGIONS + vdev->num_regions)
   985					return -EINVAL;
   986				info.index = array_index_nospec(info.index,
   987								VFIO_PCI_NUM_REGIONS +
   988								vdev->num_regions);
   989	
   990				i = info.index - VFIO_PCI_NUM_REGIONS;
   991	
   992				info.offset = VFIO_PCI_INDEX_TO_OFFSET(info.index);
   993				info.size = vdev->region[i].size;
   994				info.flags = vdev->region[i].flags;
   995	
   996				cap_type.type = vdev->region[i].type;
   997				cap_type.subtype = vdev->region[i].subtype;
   998	
   999				ret = vfio_info_add_capability(&caps, &cap_type.header,
  1000							       sizeof(cap_type));
  1001				if (ret)
  1002					return ret;
  1003	
  1004				if (vdev->region[i].ops->add_capability) {
  1005					ret = vdev->region[i].ops->add_capability(vdev,
  1006							&vdev->region[i], &caps);
  1007					if (ret)
  1008						return ret;
  1009				}
  1010			}
  1011			}
  1012	
  1013			if (caps.size) {
  1014				info.flags |= VFIO_REGION_INFO_FLAG_CAPS;
  1015				if (info.argsz < sizeof(info) + caps.size) {
  1016					info.argsz = sizeof(info) + caps.size;
  1017					info.cap_offset = 0;
  1018				} else {
  1019					vfio_info_cap_shift(&caps, sizeof(info));
  1020					if (copy_to_user((void __user *)arg +
  1021							  sizeof(info), caps.buf,
  1022							  caps.size)) {
  1023						kfree(caps.buf);
  1024						return -EFAULT;
  1025					}
  1026					info.cap_offset = sizeof(info);
  1027				}
  1028	
  1029				kfree(caps.buf);
  1030			}
  1031	
  1032			return copy_to_user((void __user *)arg, &info, minsz) ?
  1033				-EFAULT : 0;
  1034	
  1035		} else if (cmd == VFIO_DEVICE_GET_IRQ_INFO) {
  1036			struct vfio_irq_info info;
  1037	
  1038			minsz = offsetofend(struct vfio_irq_info, count);
  1039	
  1040			if (copy_from_user(&info, (void __user *)arg, minsz))
  1041				return -EFAULT;
  1042	
  1043			if (info.argsz < minsz || info.index >= VFIO_PCI_NUM_IRQS)
  1044				return -EINVAL;
  1045	
  1046			switch (info.index) {
  1047			case VFIO_PCI_INTX_IRQ_INDEX ... VFIO_PCI_MSIX_IRQ_INDEX:
  1048			case VFIO_PCI_REQ_IRQ_INDEX:
  1049				break;
  1050			case VFIO_PCI_ERR_IRQ_INDEX:
  1051				if (pci_is_pcie(pdev))
  1052					break;
  1053				fallthrough;
  1054			default:
  1055				return -EINVAL;
  1056			}
  1057	
  1058			info.flags = VFIO_IRQ_INFO_EVENTFD;
  1059	
  1060			info.count = vfio_pci_get_irq_count(vdev, info.index);
  1061	
  1062			if (info.index == VFIO_PCI_INTX_IRQ_INDEX)
  1063				info.flags |= (VFIO_IRQ_INFO_MASKABLE |
  1064					       VFIO_IRQ_INFO_AUTOMASKED);
  1065			else
  1066				info.flags |= VFIO_IRQ_INFO_NORESIZE;
  1067	
  1068			return copy_to_user((void __user *)arg, &info, minsz) ?
  1069				-EFAULT : 0;
  1070	
  1071		} else if (cmd == VFIO_DEVICE_SET_IRQS) {
  1072			struct vfio_irq_set hdr;
  1073			u8 *data = NULL;
  1074			int max, ret = 0;
  1075			size_t data_size = 0;
  1076	
  1077			minsz = offsetofend(struct vfio_irq_set, count);
  1078	
  1079			if (copy_from_user(&hdr, (void __user *)arg, minsz))
  1080				return -EFAULT;
  1081	
  1082			max = vfio_pci_get_irq_count(vdev, hdr.index);
  1083	
  1084			ret = vfio_set_irqs_validate_and_prepare(&hdr, max,
  1085							 VFIO_PCI_NUM_IRQS, &data_size);
  1086			if (ret)
  1087				return ret;
  1088	
  1089			if (data_size) {
  1090				data = memdup_user((void __user *)(arg + minsz),
  1091						    data_size);
  1092				if (IS_ERR(data))
  1093					return PTR_ERR(data);
  1094			}
  1095	
  1096			mutex_lock(&vdev->igate);
  1097	
  1098			ret = vfio_pci_set_irqs_ioctl(vdev, hdr.flags, hdr.index,
  1099						      hdr.start, hdr.count, data);
  1100	
  1101			mutex_unlock(&vdev->igate);
  1102			kfree(data);
  1103	
  1104			return ret;
  1105	
  1106		} else if (cmd == VFIO_DEVICE_RESET) {
  1107			int ret;
  1108	
  1109			if (!vdev->reset_works)
  1110				return -EINVAL;
  1111	
  1112			vfio_pci_zap_and_down_write_memory_lock(vdev);
  1113			ret = pci_try_reset_function(pdev);
  1114			up_write(&vdev->memory_lock);
  1115	
  1116			return ret;
  1117	
  1118		} else if (cmd == VFIO_DEVICE_GET_PCI_HOT_RESET_INFO) {
  1119			struct vfio_pci_hot_reset_info hdr;
  1120			struct vfio_pci_fill_info fill = { 0 };
  1121			struct vfio_pci_dependent_device *devices = NULL;
  1122			bool slot = false;
  1123			int ret = 0;
  1124	
  1125			minsz = offsetofend(struct vfio_pci_hot_reset_info, count);
  1126	
  1127			if (copy_from_user(&hdr, (void __user *)arg, minsz))
  1128				return -EFAULT;
  1129	
  1130			if (hdr.argsz < minsz)
  1131				return -EINVAL;
  1132	
  1133			hdr.flags = 0;
  1134	
  1135			/* Can we do a slot or bus reset or neither? */
  1136			if (!pci_probe_reset_slot(pdev->slot))
  1137				slot = true;
  1138			else if (pci_probe_reset_bus(pdev->bus))
  1139				return -ENODEV;
  1140	
  1141			/* How many devices are affected? */
  1142			ret = vfio_pci_for_each_slot_or_bus(pdev,
  1143							    vfio_pci_count_devs,
  1144							    &fill.max, slot);
  1145			if (ret)
  1146				return ret;
  1147	
  1148			WARN_ON(!fill.max); /* Should always be at least one */
  1149	
  1150			/*
  1151			 * If there's enough space, fill it now, otherwise return
  1152			 * -ENOSPC and the number of devices affected.
  1153			 */
  1154			if (hdr.argsz < sizeof(hdr) + (fill.max * sizeof(*devices))) {
  1155				ret = -ENOSPC;
  1156				hdr.count = fill.max;
  1157				goto reset_info_exit;
  1158			}
  1159	
  1160			devices = kcalloc(fill.max, sizeof(*devices), GFP_KERNEL);
  1161			if (!devices)
  1162				return -ENOMEM;
  1163	
  1164			fill.devices = devices;
  1165	
  1166			ret = vfio_pci_for_each_slot_or_bus(pdev,
  1167							    vfio_pci_fill_devs,
  1168							    &fill, slot);
  1169	
  1170			/*
  1171			 * If a device was removed between counting and filling,
  1172			 * we may come up short of fill.max.  If a device was
  1173			 * added, we'll have a return of -EAGAIN above.
  1174			 */
  1175			if (!ret)
  1176				hdr.count = fill.cur;
  1177	
  1178	reset_info_exit:
  1179			if (copy_to_user((void __user *)arg, &hdr, minsz))
  1180				ret = -EFAULT;
  1181	
  1182			if (!ret) {
  1183				if (copy_to_user((void __user *)(arg + minsz), devices,
  1184						 hdr.count * sizeof(*devices)))
  1185					ret = -EFAULT;
  1186			}
  1187	
  1188			kfree(devices);
  1189			return ret;
  1190	
  1191		} else if (cmd == VFIO_DEVICE_PCI_HOT_RESET) {
  1192			struct vfio_pci_hot_reset hdr;
  1193			int32_t *group_fds;
  1194			struct vfio_pci_group_entry *groups;
  1195			struct vfio_pci_group_info info;
  1196			struct vfio_devices devs = { .cur_index = 0 };
  1197			bool slot = false;
  1198			int i, group_idx, mem_idx = 0, count = 0, ret = 0;
  1199	
  1200			minsz = offsetofend(struct vfio_pci_hot_reset, count);
  1201	
  1202			if (copy_from_user(&hdr, (void __user *)arg, minsz))
  1203				return -EFAULT;
  1204	
  1205			if (hdr.argsz < minsz || hdr.flags)
  1206				return -EINVAL;
  1207	
  1208			/* Can we do a slot or bus reset or neither? */
  1209			if (!pci_probe_reset_slot(pdev->slot))
  1210				slot = true;
  1211			else if (pci_probe_reset_bus(pdev->bus))
  1212				return -ENODEV;
  1213	
  1214			/*
  1215			 * We can't let userspace give us an arbitrarily large
  1216			 * buffer to copy, so verify how many we think there
  1217			 * could be.  Note groups can have multiple devices so
  1218			 * one group per device is the max.
  1219			 */
  1220			ret = vfio_pci_for_each_slot_or_bus(pdev,
  1221							    vfio_pci_count_devs,
  1222							    &count, slot);
  1223			if (ret)
  1224				return ret;
  1225	
  1226			/* Somewhere between 1 and count is OK */
  1227			if (!hdr.count || hdr.count > count)
  1228				return -EINVAL;
  1229	
  1230			group_fds = kcalloc(hdr.count, sizeof(*group_fds), GFP_KERNEL);
  1231			groups = kcalloc(hdr.count, sizeof(*groups), GFP_KERNEL);
  1232			if (!group_fds || !groups) {
  1233				kfree(group_fds);
  1234				kfree(groups);
  1235				return -ENOMEM;
  1236			}
  1237	
  1238			if (copy_from_user(group_fds, (void __user *)(arg + minsz),
  1239					   hdr.count * sizeof(*group_fds))) {
  1240				kfree(group_fds);
  1241				kfree(groups);
  1242				return -EFAULT;
  1243			}
  1244	
  1245			/*
  1246			 * For each group_fd, get the group through the vfio external
  1247			 * user interface and store the group and iommu ID.  This
  1248			 * ensures the group is held across the reset.
  1249			 */
  1250			for (group_idx = 0; group_idx < hdr.count; group_idx++) {
  1251				struct vfio_group *group;
  1252				struct fd f = fdget(group_fds[group_idx]);
  1253				if (!f.file) {
  1254					ret = -EBADF;
  1255					break;
  1256				}
  1257	
  1258				group = vfio_group_get_external_user(f.file);
  1259				fdput(f);
  1260				if (IS_ERR(group)) {
  1261					ret = PTR_ERR(group);
  1262					break;
  1263				}
  1264	
  1265				groups[group_idx].group = group;
  1266				groups[group_idx].id =
  1267						vfio_external_user_iommu_id(group);
  1268			}
  1269	
  1270			kfree(group_fds);
  1271	
  1272			/* release reference to groups on error */
  1273			if (ret)
  1274				goto hot_reset_release;
  1275	
  1276			info.count = hdr.count;
  1277			info.groups = groups;
  1278	
  1279			/*
  1280			 * Test whether all the affected devices are contained
  1281			 * by the set of groups provided by the user.
  1282			 */
  1283			ret = vfio_pci_for_each_slot_or_bus(pdev,
  1284							    vfio_pci_validate_devs,
  1285							    &info, slot);
  1286			if (ret)
  1287				goto hot_reset_release;
  1288	
  1289			devs.max_index = count;
  1290			devs.devices = kcalloc(count, sizeof(struct vfio_device *),
  1291					       GFP_KERNEL);
  1292			if (!devs.devices) {
  1293				ret = -ENOMEM;
  1294				goto hot_reset_release;
  1295			}
  1296	
  1297			/*
  1298			 * We need to get memory_lock for each device, but devices
  1299			 * can share mmap_lock, therefore we need to zap and hold
  1300			 * the vma_lock for each device, and only then get each
  1301			 * memory_lock.
  1302			 */
  1303			ret = vfio_pci_for_each_slot_or_bus(pdev,
  1304						    vfio_pci_try_zap_and_vma_lock_cb,
  1305						    &devs, slot);
  1306			if (ret)
  1307				goto hot_reset_release;
  1308	
  1309			for (; mem_idx < devs.cur_index; mem_idx++) {
  1310				struct vfio_pci_device *tmp = devs.devices[mem_idx];
  1311	
  1312				ret = down_write_trylock(&tmp->memory_lock);
  1313				if (!ret) {
  1314					ret = -EBUSY;
  1315					goto hot_reset_release;
  1316				}
  1317				mutex_unlock(&tmp->vma_lock);
  1318			}
  1319	
  1320			/* User has access, do the reset */
  1321			ret = pci_reset_bus(pdev);
  1322	
  1323	hot_reset_release:
  1324			for (i = 0; i < devs.cur_index; i++) {
  1325				struct vfio_pci_device *tmp = devs.devices[i];
  1326	
  1327				if (i < mem_idx)
  1328					up_write(&tmp->memory_lock);
  1329				else
  1330					mutex_unlock(&tmp->vma_lock);
  1331				vfio_device_put(&tmp->vdev);
  1332			}
  1333			kfree(devs.devices);
  1334	
  1335			for (group_idx--; group_idx >= 0; group_idx--)
  1336				vfio_group_put_external_user(groups[group_idx].group);
  1337	
  1338			kfree(groups);
  1339			return ret;
  1340		} else if (cmd == VFIO_DEVICE_IOEVENTFD) {
  1341			struct vfio_device_ioeventfd ioeventfd;
  1342			int count;
  1343	
  1344			minsz = offsetofend(struct vfio_device_ioeventfd, fd);
  1345	
  1346			if (copy_from_user(&ioeventfd, (void __user *)arg, minsz))
  1347				return -EFAULT;
  1348	
  1349			if (ioeventfd.argsz < minsz)
  1350				return -EINVAL;
  1351	
  1352			if (ioeventfd.flags & ~VFIO_DEVICE_IOEVENTFD_SIZE_MASK)
  1353				return -EINVAL;
  1354	
  1355			count = ioeventfd.flags & VFIO_DEVICE_IOEVENTFD_SIZE_MASK;
  1356	
  1357			if (hweight8(count) != 1 || ioeventfd.fd < -1)
  1358				return -EINVAL;
  1359	
  1360			return vfio_pci_ioeventfd(vdev, ioeventfd.offset,
  1361						  ioeventfd.data, count, ioeventfd.fd);
  1362		} else if (cmd == VFIO_DEVICE_FEATURE) {
  1363			struct vfio_device_feature feature;
  1364			uuid_t uuid;
  1365	
  1366			minsz = offsetofend(struct vfio_device_feature, flags);
  1367	
  1368			if (copy_from_user(&feature, (void __user *)arg, minsz))
  1369				return -EFAULT;
  1370	
  1371			if (feature.argsz < minsz)
  1372				return -EINVAL;
  1373	
  1374			/* Check unknown flags */
  1375			if (feature.flags & ~(VFIO_DEVICE_FEATURE_MASK |
  1376					      VFIO_DEVICE_FEATURE_SET |
  1377					      VFIO_DEVICE_FEATURE_GET |
  1378					      VFIO_DEVICE_FEATURE_PROBE))
  1379				return -EINVAL;
  1380	
  1381			/* GET & SET are mutually exclusive except with PROBE */
  1382			if (!(feature.flags & VFIO_DEVICE_FEATURE_PROBE) &&
  1383			    (feature.flags & VFIO_DEVICE_FEATURE_SET) &&
  1384			    (feature.flags & VFIO_DEVICE_FEATURE_GET))
  1385				return -EINVAL;
  1386	
  1387			switch (feature.flags & VFIO_DEVICE_FEATURE_MASK) {
  1388			case VFIO_DEVICE_FEATURE_PCI_VF_TOKEN:
  1389				if (!vdev->vf_token)
  1390					return -ENOTTY;
  1391	
  1392				/*
  1393				 * We do not support GET of the VF Token UUID as this
  1394				 * could expose the token of the previous device user.
  1395				 */
  1396				if (feature.flags & VFIO_DEVICE_FEATURE_GET)
  1397					return -EINVAL;
  1398	
  1399				if (feature.flags & VFIO_DEVICE_FEATURE_PROBE)
  1400					return 0;
  1401	
  1402				/* Don't SET unless told to do so */
  1403				if (!(feature.flags & VFIO_DEVICE_FEATURE_SET))
  1404					return -EINVAL;
  1405	
  1406				if (feature.argsz < minsz + sizeof(uuid))
  1407					return -EINVAL;
  1408	
  1409				if (copy_from_user(&uuid, (void __user *)(arg + minsz),
  1410						   sizeof(uuid)))
  1411					return -EFAULT;
  1412	
  1413				mutex_lock(&vdev->vf_token->lock);
  1414				uuid_copy(&vdev->vf_token->uuid, &uuid);
  1415				mutex_unlock(&vdev->vf_token->lock);
  1416	
  1417				return 0;
  1418			default:
  1419				return -ENOTTY;
  1420			}
  1421		}
  1422	
  1423		return -ENOTTY;
  1424	}
  1425	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103021253.j3iCSUC7-lkp%40intel.com.

--x+6KMIRAuhnl3hBn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--x+6KMIRAuhnl3hBn--
