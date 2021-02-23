Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBK7T2SAQMGQETXBCHMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F432322F80
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 18:21:51 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id d8sf12436727ion.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 09:21:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614100909; cv=pass;
        d=google.com; s=arc-20160816;
        b=TorTq/xC4d8xAj7dAgdfuUt40lILASHELgl4SJb3RGzQ95uvbWlZjpj4nLLP0mKRmT
         rZ1FxYrPIvMJbAGTcFkYQ+9rk7qBP99O+dMaDM2B7i1eeaZSTJ1rT7AOYg0fPJqxCuWl
         IUC1S5mTqT1WWwG7wbmeD/vxifqBkCiyFVp6ZkQSLogAcoTE2fPcrkmdQM8+K8KNlN4w
         Zk/75gsxf5B/RMlCxfbVj8bYolKZ6LLH1K282VaieMTrF8E6iTbvsogdyAGW7PK3RdL8
         xQsnFLEQSdKb3oqgiDaEhhxMXpyBWYLZ/g10iB9Hb5R9QsW1ZR0/9aDyzl+/Qd0qrmP9
         Nukw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=erW3H8fbrSsqgn5A5cnYv7pFengYrLQm4p7auG7hTTs=;
        b=Q2xGTyIiMvfvaxoD+ppRD/mFlK/TewoL5ndVUD0IWgsujHn8Gjj/4E3RRQYAsU+gR6
         13O61IjUtNNHbKC740AMxxA1MzoLiZaGprffHszkZIZ3OwEXl93axT7n3Lm7f29NUeYB
         Ixx310XWkxhBRuih1Me03VgvdpZO0bP8xwlL/8bba9k16ZNoL6bDyEctTnu49LeemZhT
         uuPpocN0kV55zbXMENor/qltYDirIiuGT6Fu4+OA3cetlimRVkmb8WcUt+d2+53iOesu
         lCXK01dKNkp4yN09PTFyxhGh9LpLCPLBQgZ/iU+4axXrxUZCsl3PbRzhF/UU/XQxqtDP
         sGXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=erW3H8fbrSsqgn5A5cnYv7pFengYrLQm4p7auG7hTTs=;
        b=sqwIQV06mHDayqa2gMbXMyd+VBsjbqe18V52+HjF8tro2GNlUkiz2ha8bRbDg7wrTL
         h6dNpzIVUjlpfDGsPXAzIvBreoH5qnY9R4cBIfi4kxkT5zvaPgnTJqTc8yjTBpXOVh0x
         yiMs1frHBAasRQb9ZDjXrUwqkt9EdrfySO/NknlwmKUH3vClcT/Z6xbBFyBVjJ7Ik030
         JQyLCQi3zf4rvuOMlYx9rnRKlolO1Fro/VSeIF3107D0a6OFUivmkxmg7ZnvatuXlGRY
         mHDeep+kAsGfdFtWhgSAajc3mJ6UJJcBmN9Ifd67fGvqc6NyJYlmHN1f1HNn4gaNNkyl
         gpxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=erW3H8fbrSsqgn5A5cnYv7pFengYrLQm4p7auG7hTTs=;
        b=YzCCaXeuT+es5RqRcV1NpnZL7rIqgKelLubuE1EVyRUu6ic46rdeeXyjjP8KOuBwWk
         TkaM6Hr0V9ne4M09hTOuZVKy3IQvrBlvBB4QalEMTLcvUxRViLSns/8KieaAFWc7Ebc6
         PPoqEKIkqLNJhi8xnc7LvZIa4FueqsReuKu9c1uxiQXRYWoJ7ifvtitAd2cWTMAra1RO
         mLvC7wAk2W4lXz8P+auyt2naexcsfvzJ0C4qQKxWOR/oUOpV1PoCYUqAiGs/HR/z7ems
         8Ezmuq5fVl/2clR+8P8/dpnn1b8XrWIGTwhDdiKJZl90oDdKGIDLKvZJUVwWJnAX+MIi
         ibBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kr1wkRxn2kBBmYOXZNtOf33X1bID3ndTm/1yFJaCRmoacUcEa
	/JIJ8QHM212ytO+W1017jn4=
X-Google-Smtp-Source: ABdhPJyhAhaTge2afBLPj1NRLKaR/nbQlJtXwriG4iElQmoVvo71wtOWhlvWXFkklxILiAw86sNMHA==
X-Received: by 2002:a05:6e02:4a3:: with SMTP id e3mr19570722ils.77.1614100908047;
        Tue, 23 Feb 2021 09:21:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:80c:: with SMTP id u12ls5389380ilm.0.gmail; Tue, 23
 Feb 2021 09:21:47 -0800 (PST)
X-Received: by 2002:a92:6b04:: with SMTP id g4mr2098576ilc.223.1614100907459;
        Tue, 23 Feb 2021 09:21:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614100907; cv=none;
        d=google.com; s=arc-20160816;
        b=pUCwE1HCXDUQNmqmYQKX2TfEIyqtCb3AgyGF5oSpUCsdPr/1bZE2XxgRqLUlaLw2SQ
         RaE1CiYHATki7ELB9PPrIiWuGYk2qyqp+vaAEIE9EkgSSajZS85FXoEDligf4w266Su6
         2M2wcauQw9XJrUtnhM7voPkAhWhXYr74JoC4pHqOxnZTU6+WgzFLFOHwSW3kKlHUbII2
         W1g1QxNvD8YPLfd5BYVL2HLnWVf8lmt6IiiC76ly9Ak71fRQvId267NadtZ9QSgQV6+2
         /mlFkSE3v2pTCQq2zmp4dL/PqNQ7XZ1mWIe23+ge28Du4l8ORj0TPOdGoOpG4BAqiAwj
         ++3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=PQtzzKIj+Q/P3zYvQPs8zDy+PEPxOPj2ZVTXnUOmDe0=;
        b=Fkdsf/fCb8fBzQ6Y19oP501YCw3ptJy2QnaFiG27lpKlDzekcMV3hpO///M+gkMsVA
         4lt70sJoAPCQI8pCMc8K+iHXfDfR3nb0671mFn8wnOybTamzttZJma/+CMIVh8DJ9FRl
         EzZ3nf6sKnmc30Gk4uanr9XcqzoLKcc5Gf2zUL4uYtn9naeHEZZVhQ/z3MG//5pnHGjI
         WaXHheyeMgYcpDmShBbfl46e5O783umuWRUwEmRYTxCcxarbNAo2/dyab99DFT5xatev
         ckmWS6kShmCuKoE4mbueblUljNbzSCwk/Q3X3KolT7sifCFarjS1AU5NraMIwLP5JFPp
         za+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id r2si972370ilb.3.2021.02.23.09.21.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2021 09:21:47 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: j/alkWA+VsmBmrcFzgJ4Fq25GbA/iNlzLedM+fGHCj7YmD9zj39tOCasSqm1Ofqe7E1hWH2NAt
 cvYPMj5hUawQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="184177586"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; 
   d="gz'50?scan'50,208,50";a="184177586"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Feb 2021 09:21:43 -0800
IronPort-SDR: 3McdCUmRl4ISjWqBi7Sm+nvj3tZ+BN863RrHX5FEzIf1DocCgCeVqn7k71RGYuJ0PSwAnHiFd+
 d+RhMknryimg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; 
   d="gz'50?scan'50,208,50";a="380577815"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 23 Feb 2021 09:21:41 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lEbNV-0001QM-7P; Tue, 23 Feb 2021 17:21:41 +0000
Date: Wed, 24 Feb 2021 01:21:05 +0800
From: kernel test robot <lkp@intel.com>
To: Jiri Pirko <jiri@nvidia.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [jpirko-mlxsw:jiri_devel_linecards 13/36]
 drivers/net/ethernet/mellanox/mlxsw/spectrum.c:1442:4: warning: variable
 'mlxsw_sp_port' is uninitialized when used here
Message-ID: <202102240158.buPh1DKO-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="k1lZvvs/B4yU6o8G"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--k1lZvvs/B4yU6o8G
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/jpirko/linux_mlxsw jiri_devel_linecards
head:   0b9c936ef2087b6f5dd2d8340f5d8ef43f7d6ac1
commit: ec9ea82b8dec118ed83cecacdcff5bb1e7fe1a6f [13/36] mlxsw: spectrum: Move port module mapping before core port init
config: x86_64-randconfig-a003-20210223 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/jpirko/linux_mlxsw/commit/ec9ea82b8dec118ed83cecacdcff5bb1e7fe1a6f
        git remote add jpirko-mlxsw https://github.com/jpirko/linux_mlxsw
        git fetch --no-tags jpirko-mlxsw jiri_devel_linecards
        git checkout ec9ea82b8dec118ed83cecacdcff5bb1e7fe1a6f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/mellanox/mlxsw/spectrum.c:1442:4: warning: variable 'mlxsw_sp_port' is uninitialized when used here [-Wuninitialized]
                           mlxsw_sp_port->local_port);
                           ^~~~~~~~~~~~~
   include/linux/dev_printk.h:112:32: note: expanded from macro 'dev_err'
           _dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
                                         ^~~~~~~~~~~
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:1433:37: note: initialize the variable 'mlxsw_sp_port' to silence this warning
           struct mlxsw_sp_port *mlxsw_sp_port;
                                              ^
                                               = NULL
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:108:1: warning: unused function 'mlxsw_tx_hdr_version_get' [-Wunused-function]
   MLXSW_ITEM32(tx, hdr, version, 0x00, 28, 4);
   ^
   drivers/net/ethernet/mellanox/mlxsw/item.h:355:19: note: expanded from macro 'MLXSW_ITEM32'
   static inline u32 mlxsw_##_type##_##_cname##_##_iname##_get(const char *buf)    \
                     ^
   <scratch space>:99:1: note: expanded from here
   mlxsw_tx_hdr_version_get
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:115:1: warning: unused function 'mlxsw_tx_hdr_ctl_get' [-Wunused-function]
   MLXSW_ITEM32(tx, hdr, ctl, 0x00, 26, 2);
   ^
   drivers/net/ethernet/mellanox/mlxsw/item.h:355:19: note: expanded from macro 'MLXSW_ITEM32'
   static inline u32 mlxsw_##_type##_##_cname##_##_iname##_get(const char *buf)    \
                     ^
   <scratch space>:132:1: note: expanded from here
   mlxsw_tx_hdr_ctl_get
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:120:1: warning: unused function 'mlxsw_tx_hdr_proto_get' [-Wunused-function]
   MLXSW_ITEM32(tx, hdr, proto, 0x00, 21, 3);
   ^
   drivers/net/ethernet/mellanox/mlxsw/item.h:355:19: note: expanded from macro 'MLXSW_ITEM32'
   static inline u32 mlxsw_##_type##_##_cname##_##_iname##_get(const char *buf)    \
                     ^
   <scratch space>:165:1: note: expanded from here
   mlxsw_tx_hdr_proto_get
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:125:1: warning: unused function 'mlxsw_tx_hdr_rx_is_router_get' [-Wunused-function]
   MLXSW_ITEM32(tx, hdr, rx_is_router, 0x00, 19, 1);
   ^
   drivers/net/ethernet/mellanox/mlxsw/item.h:355:19: note: expanded from macro 'MLXSW_ITEM32'
   static inline u32 mlxsw_##_type##_##_cname##_##_iname##_get(const char *buf)    \
                     ^
   <scratch space>:198:1: note: expanded from here
   mlxsw_tx_hdr_rx_is_router_get
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:125:1: warning: unused function 'mlxsw_tx_hdr_rx_is_router_set' [-Wunused-function]
   drivers/net/ethernet/mellanox/mlxsw/item.h:359:20: note: expanded from macro 'MLXSW_ITEM32'
   static inline void mlxsw_##_type##_##_cname##_##_iname##_set(char *buf, u32 val)\
                      ^
   <scratch space>:210:1: note: expanded from here
   mlxsw_tx_hdr_rx_is_router_set
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:131:1: warning: unused function 'mlxsw_tx_hdr_fid_valid_get' [-Wunused-function]
   MLXSW_ITEM32(tx, hdr, fid_valid, 0x00, 16, 1);
   ^
   drivers/net/ethernet/mellanox/mlxsw/item.h:355:19: note: expanded from macro 'MLXSW_ITEM32'
   static inline u32 mlxsw_##_type##_##_cname##_##_iname##_get(const char *buf)    \
                     ^
   <scratch space>:17:1: note: expanded from here
   mlxsw_tx_hdr_fid_valid_get
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:131:1: warning: unused function 'mlxsw_tx_hdr_fid_valid_set' [-Wunused-function]
   drivers/net/ethernet/mellanox/mlxsw/item.h:359:20: note: expanded from macro 'MLXSW_ITEM32'
   static inline void mlxsw_##_type##_##_cname##_##_iname##_set(char *buf, u32 val)\
                      ^
   <scratch space>:29:1: note: expanded from here
   mlxsw_tx_hdr_fid_valid_set
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:136:1: warning: unused function 'mlxsw_tx_hdr_swid_get' [-Wunused-function]
   MLXSW_ITEM32(tx, hdr, swid, 0x00, 12, 3);
   ^
   drivers/net/ethernet/mellanox/mlxsw/item.h:355:19: note: expanded from macro 'MLXSW_ITEM32'
   static inline u32 mlxsw_##_type##_##_cname##_##_iname##_get(const char *buf)    \
                     ^
   <scratch space>:50:1: note: expanded from here
   mlxsw_tx_hdr_swid_get
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:142:1: warning: unused function 'mlxsw_tx_hdr_control_tclass_get' [-Wunused-function]
   MLXSW_ITEM32(tx, hdr, control_tclass, 0x00, 6, 1);
   ^
   drivers/net/ethernet/mellanox/mlxsw/item.h:355:19: note: expanded from macro 'MLXSW_ITEM32'
   static inline u32 mlxsw_##_type##_##_cname##_##_iname##_get(const char *buf)    \
                     ^
   <scratch space>:83:1: note: expanded from here
   mlxsw_tx_hdr_control_tclass_get
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:147:1: warning: unused function 'mlxsw_tx_hdr_etclass_get' [-Wunused-function]
   MLXSW_ITEM32(tx, hdr, etclass, 0x00, 0, 4);
   ^
   drivers/net/ethernet/mellanox/mlxsw/item.h:355:19: note: expanded from macro 'MLXSW_ITEM32'
   static inline u32 mlxsw_##_type##_##_cname##_##_iname##_get(const char *buf)    \
                     ^
   <scratch space>:116:1: note: expanded from here
   mlxsw_tx_hdr_etclass_get
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:147:1: warning: unused function 'mlxsw_tx_hdr_etclass_set' [-Wunused-function]
   drivers/net/ethernet/mellanox/mlxsw/item.h:359:20: note: expanded from macro 'MLXSW_ITEM32'
   static inline void mlxsw_##_type##_##_cname##_##_iname##_set(char *buf, u32 val)\
                      ^
   <scratch space>:128:1: note: expanded from here


vim +/mlxsw_sp_port +1442 drivers/net/ethernet/mellanox/mlxsw/spectrum.c

  1426	
  1427	static int mlxsw_sp_port_create(struct mlxsw_sp *mlxsw_sp, u8 local_port,
  1428					u8 split_base_local_port,
  1429					struct mlxsw_sp_port_mapping *port_mapping)
  1430	{
  1431		struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan;
  1432		bool split = !!split_base_local_port;
  1433		struct mlxsw_sp_port *mlxsw_sp_port;
  1434		u32 lanes = port_mapping->width;
  1435		struct net_device *dev;
  1436		bool splittable;
  1437		int err;
  1438	
  1439		err = mlxsw_sp_port_module_map(mlxsw_sp, local_port, port_mapping);
  1440		if (err) {
  1441			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to map module\n",
> 1442				mlxsw_sp_port->local_port);
  1443			return err;
  1444		}
  1445	
  1446		splittable = lanes > 1 && !split;
  1447		err = mlxsw_core_port_init(mlxsw_sp->core, local_port,
  1448					   port_mapping->module + 1, split,
  1449					   port_mapping->lane / lanes,
  1450					   splittable, lanes,
  1451					   mlxsw_sp->base_mac,
  1452					   sizeof(mlxsw_sp->base_mac));
  1453		if (err) {
  1454			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to init core port\n",
  1455				local_port);
  1456			goto err_core_port_init;
  1457		}
  1458	
  1459		dev = alloc_etherdev(sizeof(struct mlxsw_sp_port));
  1460		if (!dev) {
  1461			err = -ENOMEM;
  1462			goto err_alloc_etherdev;
  1463		}
  1464		SET_NETDEV_DEV(dev, mlxsw_sp->bus_info->dev);
  1465		dev_net_set(dev, mlxsw_sp_net(mlxsw_sp));
  1466		mlxsw_sp_port = netdev_priv(dev);
  1467		mlxsw_sp_port->dev = dev;
  1468		mlxsw_sp_port->mlxsw_sp = mlxsw_sp;
  1469		mlxsw_sp_port->local_port = local_port;
  1470		mlxsw_sp_port->pvid = MLXSW_SP_DEFAULT_VID;
  1471		mlxsw_sp_port->split = split;
  1472		mlxsw_sp_port->split_base_local_port = split_base_local_port;
  1473		mlxsw_sp_port->mapping = *port_mapping;
  1474		mlxsw_sp_port->link.autoneg = 1;
  1475		INIT_LIST_HEAD(&mlxsw_sp_port->vlans_list);
  1476	
  1477		mlxsw_sp_port->pcpu_stats =
  1478			netdev_alloc_pcpu_stats(struct mlxsw_sp_port_pcpu_stats);
  1479		if (!mlxsw_sp_port->pcpu_stats) {
  1480			err = -ENOMEM;
  1481			goto err_alloc_stats;
  1482		}
  1483	
  1484		INIT_DELAYED_WORK(&mlxsw_sp_port->periodic_hw_stats.update_dw,
  1485				  &update_stats_cache);
  1486	
  1487		dev->netdev_ops = &mlxsw_sp_port_netdev_ops;
  1488		dev->ethtool_ops = &mlxsw_sp_port_ethtool_ops;
  1489	
  1490		err = mlxsw_sp_port_swid_set(mlxsw_sp_port, 0);
  1491		if (err) {
  1492			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to set SWID\n",
  1493				mlxsw_sp_port->local_port);
  1494			goto err_port_swid_set;
  1495		}
  1496	
  1497		err = mlxsw_sp_port_dev_addr_init(mlxsw_sp_port);
  1498		if (err) {
  1499			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Unable to init port mac address\n",
  1500				mlxsw_sp_port->local_port);
  1501			goto err_dev_addr_init;
  1502		}
  1503	
  1504		netif_carrier_off(dev);
  1505	
  1506		dev->features |= NETIF_F_NETNS_LOCAL | NETIF_F_LLTX | NETIF_F_SG |
  1507				 NETIF_F_HW_VLAN_CTAG_FILTER | NETIF_F_HW_TC;
  1508		dev->hw_features |= NETIF_F_HW_TC | NETIF_F_LOOPBACK;
  1509	
  1510		dev->min_mtu = 0;
  1511		dev->max_mtu = ETH_MAX_MTU;
  1512	
  1513		/* Each packet needs to have a Tx header (metadata) on top all other
  1514		 * headers.
  1515		 */
  1516		dev->needed_headroom = MLXSW_TXHDR_LEN;
  1517	
  1518		err = mlxsw_sp_port_system_port_mapping_set(mlxsw_sp_port);
  1519		if (err) {
  1520			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to set system port mapping\n",
  1521				mlxsw_sp_port->local_port);
  1522			goto err_port_system_port_mapping_set;
  1523		}
  1524	
  1525		err = mlxsw_sp_port_speed_by_width_set(mlxsw_sp_port);
  1526		if (err) {
  1527			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to enable speeds\n",
  1528				mlxsw_sp_port->local_port);
  1529			goto err_port_speed_by_width_set;
  1530		}
  1531	
  1532		err = mlxsw_sp->port_type_speed_ops->ptys_max_speed(mlxsw_sp_port,
  1533								    &mlxsw_sp_port->max_speed);
  1534		if (err) {
  1535			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to get maximum speed\n",
  1536				mlxsw_sp_port->local_port);
  1537			goto err_max_speed_get;
  1538		}
  1539	
  1540		err = mlxsw_sp_port_max_mtu_get(mlxsw_sp_port, &mlxsw_sp_port->max_mtu);
  1541		if (err) {
  1542			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to get maximum MTU\n",
  1543				mlxsw_sp_port->local_port);
  1544			goto err_port_max_mtu_get;
  1545		}
  1546	
  1547		err = mlxsw_sp_port_mtu_set(mlxsw_sp_port, ETH_DATA_LEN);
  1548		if (err) {
  1549			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to set MTU\n",
  1550				mlxsw_sp_port->local_port);
  1551			goto err_port_mtu_set;
  1552		}
  1553	
  1554		err = mlxsw_sp_port_admin_status_set(mlxsw_sp_port, false);
  1555		if (err)
  1556			goto err_port_admin_status_set;
  1557	
  1558		err = mlxsw_sp_port_buffers_init(mlxsw_sp_port);
  1559		if (err) {
  1560			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to initialize buffers\n",
  1561				mlxsw_sp_port->local_port);
  1562			goto err_port_buffers_init;
  1563		}
  1564	
  1565		err = mlxsw_sp_port_ets_init(mlxsw_sp_port);
  1566		if (err) {
  1567			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to initialize ETS\n",
  1568				mlxsw_sp_port->local_port);
  1569			goto err_port_ets_init;
  1570		}
  1571	
  1572		err = mlxsw_sp_port_tc_mc_mode_set(mlxsw_sp_port, true);
  1573		if (err) {
  1574			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to initialize TC MC mode\n",
  1575				mlxsw_sp_port->local_port);
  1576			goto err_port_tc_mc_mode;
  1577		}
  1578	
  1579		/* ETS and buffers must be initialized before DCB. */
  1580		err = mlxsw_sp_port_dcb_init(mlxsw_sp_port);
  1581		if (err) {
  1582			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to initialize DCB\n",
  1583				mlxsw_sp_port->local_port);
  1584			goto err_port_dcb_init;
  1585		}
  1586	
  1587		err = mlxsw_sp_port_fids_init(mlxsw_sp_port);
  1588		if (err) {
  1589			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to initialize FIDs\n",
  1590				mlxsw_sp_port->local_port);
  1591			goto err_port_fids_init;
  1592		}
  1593	
  1594		err = mlxsw_sp_tc_qdisc_init(mlxsw_sp_port);
  1595		if (err) {
  1596			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to initialize TC qdiscs\n",
  1597				mlxsw_sp_port->local_port);
  1598			goto err_port_qdiscs_init;
  1599		}
  1600	
  1601		err = mlxsw_sp_port_vlan_set(mlxsw_sp_port, 0, VLAN_N_VID - 1, false,
  1602					     false);
  1603		if (err) {
  1604			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to clear VLAN filter\n",
  1605				mlxsw_sp_port->local_port);
  1606			goto err_port_vlan_clear;
  1607		}
  1608	
  1609		err = mlxsw_sp_port_nve_init(mlxsw_sp_port);
  1610		if (err) {
  1611			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to initialize NVE\n",
  1612				mlxsw_sp_port->local_port);
  1613			goto err_port_nve_init;
  1614		}
  1615	
  1616		err = mlxsw_sp_port_pvid_set(mlxsw_sp_port, MLXSW_SP_DEFAULT_VID,
  1617					     ETH_P_8021Q);
  1618		if (err) {
  1619			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to set PVID\n",
  1620				mlxsw_sp_port->local_port);
  1621			goto err_port_pvid_set;
  1622		}
  1623	
  1624		mlxsw_sp_port_vlan = mlxsw_sp_port_vlan_create(mlxsw_sp_port,
  1625							       MLXSW_SP_DEFAULT_VID);
  1626		if (IS_ERR(mlxsw_sp_port_vlan)) {
  1627			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to create VID 1\n",
  1628				mlxsw_sp_port->local_port);
  1629			err = PTR_ERR(mlxsw_sp_port_vlan);
  1630			goto err_port_vlan_create;
  1631		}
  1632		mlxsw_sp_port->default_vlan = mlxsw_sp_port_vlan;
  1633	
  1634		/* Set SPVC.et0=true and SPVC.et1=false to make the local port to treat
  1635		 * only packets with 802.1q header as tagged packets.
  1636		 */
  1637		err = mlxsw_sp_port_vlan_classification_set(mlxsw_sp_port, false, true);
  1638		if (err) {
  1639			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to set default VLAN classification\n",
  1640				local_port);
  1641			goto err_port_vlan_classification_set;
  1642		}
  1643	
  1644		INIT_DELAYED_WORK(&mlxsw_sp_port->ptp.shaper_dw,
  1645				  mlxsw_sp->ptp_ops->shaper_work);
  1646	
  1647		mlxsw_sp->ports[local_port] = mlxsw_sp_port;
  1648	
  1649		err = mlxsw_sp_port_overheat_init_val_set(mlxsw_sp_port);
  1650		if (err) {
  1651			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to set overheat initial value\n",
  1652				mlxsw_sp_port->local_port);
  1653			goto err_port_overheat_init_val_set;
  1654		}
  1655	
  1656		err = register_netdev(dev);
  1657		if (err) {
  1658			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to register netdev\n",
  1659				mlxsw_sp_port->local_port);
  1660			goto err_register_netdev;
  1661		}
  1662	
  1663		mlxsw_core_port_eth_set(mlxsw_sp->core, mlxsw_sp_port->local_port,
  1664					mlxsw_sp_port, dev);
  1665		mlxsw_core_schedule_dw(&mlxsw_sp_port->periodic_hw_stats.update_dw, 0);
  1666		return 0;
  1667	
  1668	err_register_netdev:
  1669	err_port_overheat_init_val_set:
  1670		mlxsw_sp_port_vlan_classification_set(mlxsw_sp_port, true, true);
  1671	err_port_vlan_classification_set:
  1672		mlxsw_sp->ports[local_port] = NULL;
  1673		mlxsw_sp_port_vlan_destroy(mlxsw_sp_port_vlan);
  1674	err_port_vlan_create:
  1675	err_port_pvid_set:
  1676		mlxsw_sp_port_nve_fini(mlxsw_sp_port);
  1677	err_port_nve_init:
  1678	err_port_vlan_clear:
  1679		mlxsw_sp_tc_qdisc_fini(mlxsw_sp_port);
  1680	err_port_qdiscs_init:
  1681		mlxsw_sp_port_fids_fini(mlxsw_sp_port);
  1682	err_port_fids_init:
  1683		mlxsw_sp_port_dcb_fini(mlxsw_sp_port);
  1684	err_port_dcb_init:
  1685		mlxsw_sp_port_tc_mc_mode_set(mlxsw_sp_port, false);
  1686	err_port_tc_mc_mode:
  1687	err_port_ets_init:
  1688		mlxsw_sp_port_buffers_fini(mlxsw_sp_port);
  1689	err_port_buffers_init:
  1690	err_port_admin_status_set:
  1691	err_port_mtu_set:
  1692	err_port_max_mtu_get:
  1693	err_max_speed_get:
  1694	err_port_speed_by_width_set:
  1695	err_port_system_port_mapping_set:
  1696	err_dev_addr_init:
  1697		mlxsw_sp_port_swid_set(mlxsw_sp_port, MLXSW_PORT_SWID_DISABLED_PORT);
  1698	err_port_swid_set:
  1699		free_percpu(mlxsw_sp_port->pcpu_stats);
  1700	err_alloc_stats:
  1701		free_netdev(dev);
  1702	err_alloc_etherdev:
  1703		mlxsw_core_port_fini(mlxsw_sp->core, local_port);
  1704	err_core_port_init:
  1705		mlxsw_sp_port_module_unmap(mlxsw_sp, local_port);
  1706		return err;
  1707	}
  1708	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102240158.buPh1DKO-lkp%40intel.com.

--k1lZvvs/B4yU6o8G
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
zGiAUQ8ryE5dwq9kL7+Jcvb4H3AJNANiOAIA

--k1lZvvs/B4yU6o8G--
