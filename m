Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLMXQ2AAMGQEDWUD44Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id E05CC2F790C
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 13:33:50 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id p77sf4474939iod.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 04:33:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610714029; cv=pass;
        d=google.com; s=arc-20160816;
        b=FqgTXIXPOZIJSOn6HBSZRgHYyA7xpRuM4k+anmazBFra38QcK6dYuDwNnn33JXksfV
         RHmmZTucvV0Pz18BCncbVkMIR6nklgV4bUKQp2MmSQIxtF9fxA/RRqEInMYM28akp+Z0
         5wNwH5ITM8jDPGWZXgMKuSnqZNGNih+T/L9yc6qtr7vuyNDqbdjQFfL0gJRvvlB5SuDb
         kSeUViEzh6s5Zs7gf7xE2rnT+rC5MnJEmuk5IWoxh/vPnzhheBu82+Sf1gijVXY112Z3
         GFUk1WfMUGze9ujKLQR7Kpio2UkxfhFuOYw0+Ygri3CazZutJcp2BIeLPDxvpsUbwEcp
         4Jtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=bdOnVMuNDlGnDVmeq1DLsC1S6xs8GJMDO5Oe1JYD3pM=;
        b=G5ghyr/0kC6d7c1EUOQu/3Cx1Iqeo5yxxhzRC/kqEk7Qa07XxyV0107NUl0RJlf3Nl
         d/1//b2iGP4IKEDR4R3UMCoOtKXV2IXl1tcKZjCBHgFaCBb6qVH61FTSYXizfu/zBqWZ
         pL7ddJvZYVX9kvfczRoZmvIGcxIn7cwPnHUIkU+Kxfux+A1CB4TgDkpfQ2wt7EFxILzf
         vm3FqXGloub6wu2GUA6wy3f11wymMVAyG04HiD3pASKio0zY08FcdW6kYgcUZ7FMn4ZP
         YmlqaZ4VsRZn/blBWgfZTUsjfadn1wYWxzsrXyfdMkT/oqoMGCd62oY7fFY9WLV1rOg/
         7COw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bdOnVMuNDlGnDVmeq1DLsC1S6xs8GJMDO5Oe1JYD3pM=;
        b=aOF7ac6jF9rNmUMR483NqKvPbkTVsNtZqzTCAreB7J9GU9YnviXdhGFgcLZ7S1Woad
         Xir2flXMppqQ8VKUCJMkUCjQP4n0icxEFE31daCYsvc9L8e8RDB/z6Qx9Dy428qK79FQ
         mkSIjWhnoDdLdkGtI5Db06Gj8w88Dcxu3fpAd0Skgs+TFbBAsvIveT9QX+Aita1MgO8F
         0lm7D7Cek9Z+4cHyPunL2NYQjJas8zYN7oH3sphc4v/fOW1tmzc+elx9P0dHvA15+BUg
         O2esWf331t5Z3PhyLtG9vg1vLeT3ODJPvpTFCqjhK7Jf8+su6YOPC2GFSiD5y4S+wWZt
         ZDvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bdOnVMuNDlGnDVmeq1DLsC1S6xs8GJMDO5Oe1JYD3pM=;
        b=dpMfURCwXW5ot/QisjXwaK/j9bqXTO2w15Wfl/fKfJXbINlSsD9JVXif3ZH4KG0HmV
         /oi5aEJ47msZCaazmIO5qF4NmelFKygxwVPIriRvuPWK9+9PdEPRtXY/1zP7ceoNzIoR
         Oz9dsq8chKhGUhekMhjWZApt1wPUCUYg/98SeBgGU6+iT3AxLtlNZwrtIKCleA2nAuTt
         80eJMeQC7gwNSEToMypfMIGT+vEku6M2GXwZYhLF0/PvOXQkep13HdhTakcTzJ+h6tmA
         E5nJJ3cr+RgtVr87fYjNSosLEGIKYyDVQeglGoCUYjMe5a5LXeEhx5UZhcBsv8grstru
         pRfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321DkzacfwIcWNdSwT7tIreLn5r572gh4qPoUvZZkCSbX79wgRc
	tuEmudTfsBj/cE2MhyrWq6o=
X-Google-Smtp-Source: ABdhPJyA3tkMvHpuZT1ZXSW+6x1c07aAs8eP5gT+hZXi2XTaxnF/U8EVrKtskj27B+ZMOgGKpr1yqQ==
X-Received: by 2002:a92:ce09:: with SMTP id b9mr10290399ilo.69.1610714029426;
        Fri, 15 Jan 2021 04:33:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:d83:: with SMTP id i3ls2523589ilj.1.gmail; Fri, 15
 Jan 2021 04:33:49 -0800 (PST)
X-Received: by 2002:a92:90e:: with SMTP id y14mr10329917ilg.219.1610714028867;
        Fri, 15 Jan 2021 04:33:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610714028; cv=none;
        d=google.com; s=arc-20160816;
        b=Lfkp9cJL3/Jy7wfuCrnLq9sEoQGA9iZD9eBvbvghLz6BOI2D9dPJa9ZUugiSam+QSa
         8ZR5ilyK7MbtIaC2EIUBRTZmTtfPaeqw3GZEQlfEVtbZlrvuOjC8zqfsvCdo/AW/vHlm
         4VXekRXge4B0DZQAREC7plH/jO3LFLMb+0+e0JOz/dPeqr9CT0TXhyua63f/SrXqV2N4
         esqLObUxoOzdYmNRMk5PqCOy2+LbfS4jbQJqaFTjc1CfaiD2M2820y2M7T+PQj97h1Ja
         OT7z0by1tuI3BOBS6NVIpKE3ROVUJBfKb2EFdvZ8tfc8yfqJC2QYPlQK6EzNF1r4ZwR8
         oktg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=+keZOPrl6o+I6HuOKrBMMfDPR/Z1uEQXzfzqor9W0KM=;
        b=CsUWi1CrP5fhYQvobzYxVb9LPY0CcFZv1btaGM8mkvQ4z7sKMJh00ZX0yCeAx3XW9L
         QQ8kXaa6ke7N9Q044IeQ8PUT4f1oGINJjHNbI+wflSIYK3lVXTY6i34Lt/5Z7rys2vl6
         TlD6EEi/+HF2aixPSlgwbgAgSBK+Zn35Jw7G9MipITdTd/v4GWYRg9Q7uxYvXVFjQn0h
         dmNxA0YnpDGr66S3qfDWgXoQOYYcefD96WgIhV8+x7A/7Lmg23sHW6hgI6IcYeABjDdp
         vXOBF5gutVbFgY1jC00kmT/xBEmP2PUNtb0FDQ1pte2gVGhA0LJ6NBRC7MJU183ZnCLn
         o3VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id e26si572603ios.2.2021.01.15.04.33.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 04:33:48 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: lRv255/gTbg1omMlv7Dk2BPgUynTp/EoVc90CL7SCCavzQmIcC0F17xjS6QRk2Zo6XRwR8nWNc
 U8Vq75+ClUwg==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="166210520"
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; 
   d="gz'50?scan'50,208,50";a="166210520"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jan 2021 04:33:47 -0800
IronPort-SDR: lzUB6qN7ks+PKdzlIDXNW20CWY1mtXdASUN33LgmcqYh2rczNbP+2u1c63PRJw4/OFzPBgY2Bt
 lhacuUZ7ZXFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; 
   d="gz'50?scan'50,208,50";a="570015956"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 15 Jan 2021 04:33:44 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l0OIS-0000Ls-6I; Fri, 15 Jan 2021 12:33:44 +0000
Date: Fri, 15 Jan 2021 20:33:03 +0800
From: kernel test robot <lkp@intel.com>
To: Edward Cree <ecree@solarflare.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: drivers/net/ethernet/sfc/farch.c:1257:5: warning: stack frame size
 of 1072 bytes in function 'efx_farch_ev_process'
Message-ID: <202101152051.A7xSROHU-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3MwIy2ne0vdjdPXF"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   5ee88057889bbca5f5bb96031b62b3756b33e164
commit: 35ff765f8d508e56d09ef470395324298550c415 sfc: fix W=1 warnings in efx_farch_handle_rx_not_ok
date:   5 months ago
config: powerpc64-randconfig-r025-20210115 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 6077d55381a6aa3e947ef7abdc36a7515c598c8a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=35ff765f8d508e56d09ef470395324298550c415
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 35ff765f8d508e56d09ef470395324298550c415
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/sfc/farch.c:1257:5: warning: stack frame size of 1072 bytes in function 'efx_farch_ev_process' [-Wframe-larger-than=]
   int efx_farch_ev_process(struct efx_channel *channel, int budget)
       ^
   1 warning generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for ATA
   Depends on HAS_IOMEM && BLOCK
   Selected by
   - AKEBONO && PPC_47x
   WARNING: unmet direct dependencies detected for NETDEVICES
   Depends on NET
   Selected by
   - AKEBONO && PPC_47x
   WARNING: unmet direct dependencies detected for ETHERNET
   Depends on NETDEVICES && NET
   Selected by
   - AKEBONO && PPC_47x
   WARNING: unmet direct dependencies detected for HOTPLUG_CPU
   Depends on SMP && (PPC_PSERIES || PPC_PMAC || PPC_POWERNV || FSL_SOC_BOOKE
   Selected by
   - PM_SLEEP_SMP && SMP && (ARCH_SUSPEND_POSSIBLE || ARCH_HIBERNATION_POSSIBLE && PM_SLEEP
   WARNING: unmet direct dependencies detected for NET_DEVLINK
   Depends on NET
   Selected by
   - ICE && NETDEVICES && ETHERNET && NET_VENDOR_INTEL && PCI_MSI
   - MLX5_CORE && NETDEVICES && ETHERNET && NET_VENDOR_MELLANOX && PCI && (VXLAN || !VXLAN && (MLXFW || !MLXFW && (PTP_1588_CLOCK || !PTP_1588_CLOCK && (PCI_HYPERV_INTERFACE || !PCI_HYPERV_INTERFACE
   - MLXSW_CORE && NETDEVICES && ETHERNET && NET_VENDOR_MELLANOX
   - MLXFW && NETDEVICES && ETHERNET && NET_VENDOR_MELLANOX
   WARNING: unmet direct dependencies detected for GRO_CELLS
   Depends on NET
   Selected by
   - RMNET && NETDEVICES && ETHERNET && NET_VENDOR_QUALCOMM
   WARNING: unmet direct dependencies detected for FAILOVER
   Depends on NET
   Selected by
   - NET_FAILOVER && NETDEVICES
   WARNING: unmet direct dependencies detected for PAGE_POOL
   Depends on NET
   Selected by
   - STMMAC_ETH && NETDEVICES && ETHERNET && NET_VENDOR_STMICRO && HAS_IOMEM && HAS_DMA


vim +/efx_farch_ev_process +1257 drivers/net/ethernet/sfc/farch.c

86094f7f38ff711f Ben Hutchings     2013-08-21  1256  
86094f7f38ff711f Ben Hutchings     2013-08-21 @1257  int efx_farch_ev_process(struct efx_channel *channel, int budget)
86094f7f38ff711f Ben Hutchings     2013-08-21  1258  {
86094f7f38ff711f Ben Hutchings     2013-08-21  1259  	struct efx_nic *efx = channel->efx;
86094f7f38ff711f Ben Hutchings     2013-08-21  1260  	unsigned int read_ptr;
86094f7f38ff711f Ben Hutchings     2013-08-21  1261  	efx_qword_t event, *p_event;
86094f7f38ff711f Ben Hutchings     2013-08-21  1262  	int ev_code;
86094f7f38ff711f Ben Hutchings     2013-08-21  1263  	int spent = 0;
86094f7f38ff711f Ben Hutchings     2013-08-21  1264  
75363a4676cdb046 Eric W. Biederman 2014-03-14  1265  	if (budget <= 0)
75363a4676cdb046 Eric W. Biederman 2014-03-14  1266  		return spent;
75363a4676cdb046 Eric W. Biederman 2014-03-14  1267  
86094f7f38ff711f Ben Hutchings     2013-08-21  1268  	read_ptr = channel->eventq_read_ptr;
86094f7f38ff711f Ben Hutchings     2013-08-21  1269  
86094f7f38ff711f Ben Hutchings     2013-08-21  1270  	for (;;) {
86094f7f38ff711f Ben Hutchings     2013-08-21  1271  		p_event = efx_event(channel, read_ptr);
86094f7f38ff711f Ben Hutchings     2013-08-21  1272  		event = *p_event;
86094f7f38ff711f Ben Hutchings     2013-08-21  1273  
86094f7f38ff711f Ben Hutchings     2013-08-21  1274  		if (!efx_event_present(&event))
86094f7f38ff711f Ben Hutchings     2013-08-21  1275  			/* End of events */
86094f7f38ff711f Ben Hutchings     2013-08-21  1276  			break;
86094f7f38ff711f Ben Hutchings     2013-08-21  1277  
86094f7f38ff711f Ben Hutchings     2013-08-21  1278  		netif_vdbg(channel->efx, intr, channel->efx->net_dev,
86094f7f38ff711f Ben Hutchings     2013-08-21  1279  			   "channel %d event is "EFX_QWORD_FMT"\n",
86094f7f38ff711f Ben Hutchings     2013-08-21  1280  			   channel->channel, EFX_QWORD_VAL(event));
86094f7f38ff711f Ben Hutchings     2013-08-21  1281  
86094f7f38ff711f Ben Hutchings     2013-08-21  1282  		/* Clear this event by marking it all ones */
86094f7f38ff711f Ben Hutchings     2013-08-21  1283  		EFX_SET_QWORD(*p_event);
86094f7f38ff711f Ben Hutchings     2013-08-21  1284  
86094f7f38ff711f Ben Hutchings     2013-08-21  1285  		++read_ptr;
86094f7f38ff711f Ben Hutchings     2013-08-21  1286  
86094f7f38ff711f Ben Hutchings     2013-08-21  1287  		ev_code = EFX_QWORD_FIELD(event, FSF_AZ_EV_CODE);
86094f7f38ff711f Ben Hutchings     2013-08-21  1288  
86094f7f38ff711f Ben Hutchings     2013-08-21  1289  		switch (ev_code) {
86094f7f38ff711f Ben Hutchings     2013-08-21  1290  		case FSE_AZ_EV_CODE_RX_EV:
86094f7f38ff711f Ben Hutchings     2013-08-21  1291  			efx_farch_handle_rx_event(channel, &event);
86094f7f38ff711f Ben Hutchings     2013-08-21  1292  			if (++spent == budget)
86094f7f38ff711f Ben Hutchings     2013-08-21  1293  				goto out;
86094f7f38ff711f Ben Hutchings     2013-08-21  1294  			break;
86094f7f38ff711f Ben Hutchings     2013-08-21  1295  		case FSE_AZ_EV_CODE_TX_EV:
5227ecccea2d645d Bert Kenward      2018-01-25  1296  			efx_farch_handle_tx_event(channel, &event);
86094f7f38ff711f Ben Hutchings     2013-08-21  1297  			break;
86094f7f38ff711f Ben Hutchings     2013-08-21  1298  		case FSE_AZ_EV_CODE_DRV_GEN_EV:
86094f7f38ff711f Ben Hutchings     2013-08-21  1299  			efx_farch_handle_generated_event(channel, &event);
86094f7f38ff711f Ben Hutchings     2013-08-21  1300  			break;
86094f7f38ff711f Ben Hutchings     2013-08-21  1301  		case FSE_AZ_EV_CODE_DRIVER_EV:
86094f7f38ff711f Ben Hutchings     2013-08-21  1302  			efx_farch_handle_driver_event(channel, &event);
86094f7f38ff711f Ben Hutchings     2013-08-21  1303  			break;
7fa8d547049aae54 Shradha Shah      2015-05-06  1304  #ifdef CONFIG_SFC_SRIOV
86094f7f38ff711f Ben Hutchings     2013-08-21  1305  		case FSE_CZ_EV_CODE_USER_EV:
327c685eb745e3c5 Shradha Shah      2014-11-05  1306  			efx_siena_sriov_event(channel, &event);
86094f7f38ff711f Ben Hutchings     2013-08-21  1307  			break;
7fa8d547049aae54 Shradha Shah      2015-05-06  1308  #endif
86094f7f38ff711f Ben Hutchings     2013-08-21  1309  		case FSE_CZ_EV_CODE_MCDI_EV:
86094f7f38ff711f Ben Hutchings     2013-08-21  1310  			efx_mcdi_process_event(channel, &event);
86094f7f38ff711f Ben Hutchings     2013-08-21  1311  			break;
86094f7f38ff711f Ben Hutchings     2013-08-21  1312  		case FSE_AZ_EV_CODE_GLOBAL_EV:
86094f7f38ff711f Ben Hutchings     2013-08-21  1313  			if (efx->type->handle_global_event &&
86094f7f38ff711f Ben Hutchings     2013-08-21  1314  			    efx->type->handle_global_event(channel, &event))
86094f7f38ff711f Ben Hutchings     2013-08-21  1315  				break;
86094f7f38ff711f Ben Hutchings     2013-08-21  1316  			/* else fall through */
86094f7f38ff711f Ben Hutchings     2013-08-21  1317  		default:
86094f7f38ff711f Ben Hutchings     2013-08-21  1318  			netif_err(channel->efx, hw, channel->efx->net_dev,
86094f7f38ff711f Ben Hutchings     2013-08-21  1319  				  "channel %d unknown event type %d (data "
86094f7f38ff711f Ben Hutchings     2013-08-21  1320  				  EFX_QWORD_FMT ")\n", channel->channel,
86094f7f38ff711f Ben Hutchings     2013-08-21  1321  				  ev_code, EFX_QWORD_VAL(event));
86094f7f38ff711f Ben Hutchings     2013-08-21  1322  		}
86094f7f38ff711f Ben Hutchings     2013-08-21  1323  	}
86094f7f38ff711f Ben Hutchings     2013-08-21  1324  
86094f7f38ff711f Ben Hutchings     2013-08-21  1325  out:
86094f7f38ff711f Ben Hutchings     2013-08-21  1326  	channel->eventq_read_ptr = read_ptr;
86094f7f38ff711f Ben Hutchings     2013-08-21  1327  	return spent;
86094f7f38ff711f Ben Hutchings     2013-08-21  1328  }
86094f7f38ff711f Ben Hutchings     2013-08-21  1329  

:::::: The code at line 1257 was first introduced by commit
:::::: 86094f7f38ff711f3db8497fcb4d2e109100f497 sfc: Move and rename Falcon/Siena common NIC operations

:::::: TO: Ben Hutchings <bhutchings@solarflare.com>
:::::: CC: Ben Hutchings <bhutchings@solarflare.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101152051.A7xSROHU-lkp%40intel.com.

--3MwIy2ne0vdjdPXF
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
X9c/tlJy4QEA

--3MwIy2ne0vdjdPXF--
