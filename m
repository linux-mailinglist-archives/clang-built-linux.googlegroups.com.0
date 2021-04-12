Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBV42KBQMGQEQDB353I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id C76D535D0F2
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 21:22:47 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id d20-20020a170902b714b02900e6ef448042sf3728013pls.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 12:22:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618255366; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dcwfd553Tik4eTwB1k9L8eEutNb6gNn8jkcDZqWkDsuADjGzEF32fZPiRBUlxzjhTH
         4+faYUVkj/TDh1d21211Bn5j1gI1EDeuIwNu1uVV9tVr0PJaZKDQjO5uhfxnq//3RWiL
         /M8UhlKEIbEvdAqF6UblxnHz07HpM71l+ki15XeYTVZCj31SKCTCAjFkBeNm92PXP+WK
         LvBpWWhwnV8lwpbLpffb6beQL42bqE7B3zQDl62x6oGYFnEbiNM+77dWVrH+6+Ey1tg9
         2VZGr4O87utxLel74Hmydsht7Bx39t9xsdnYSS421xbXpxKMsGOsgWBNxcxKhnmjy27l
         JR7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=II42SxMIIWxcXv8JSCoe2oHyCHTHm+kzWQO2UvOpndo=;
        b=jb3UtYDsuaiqZULBpcmwCqQiWFHESNcvw5ur2wAFfPnr3lS0szOndt7qe8esTdi8iD
         9PYEulbykZ62HLiqpLkZC99V0q55ziSNisu1uKdrXzbShHMsCRBtOD/E9Jf+8BoZnjcy
         d5IXvRgF3Xm0PHio3KRslpt8qQWo7JicmVTCV+Z02RBiokhMnByc7408OSshJ3EY0r1l
         dx08Iy1302wc0JxA2/5sd4ILBaY+9WrpdCa4dRpONfBySkRyK7g4ETvn3VqcOf2d9bVa
         MoQM/QMFnBOk8YiNRlxx1BZ5z07JkNE77ga0juD3rqBm2DRVjAHOHLtIlLMf2Zm9v6KE
         443w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=II42SxMIIWxcXv8JSCoe2oHyCHTHm+kzWQO2UvOpndo=;
        b=eDvQijkiJBw7JtI68C2R2GbZYNz9EWFpreLplzV4Sx+GAvUw5hhon1gnZa6qY4fFU7
         I3K9Ob6w4v5D1d87ONpfo7MxjJNBLP255cJ41ICHOhzMOtICDC+7yYKcq85whuj+D6ov
         Y1xaqAdhvwqLM7+vTQPd9/0Ip9+rxgpyT+vOx65wsxi2ptJ0J7R+HQI6uXa1UnjAyXoz
         OmEpgkKz0Qt0Hlut5QXd65o1dlJpakPp0WXEqhQrn/ejVTPTSA8zkJX2H7WB8178nl8T
         GX+tqKcH+gl/RIx2zETFUzax+fsVjuiqE/53UcnCWbqr2t0EkNCqIapTTYTWayFA3iut
         0yxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=II42SxMIIWxcXv8JSCoe2oHyCHTHm+kzWQO2UvOpndo=;
        b=pFd+lxZ7nyV+Nk+bTwt9eWVEdEZ6ff7afW3IhQpTBgPpGeYfrK0zliEX8J4CMyexIu
         q0O+NI2LWw6an1dRFNFCYsqLknRBGahXi/GYJvOS5AcI2WQcdGhUvnHMnQHlGinndq6K
         wu4u6tfBx+NOcIEFH+HwjJjVrrVONecophx6JiPJmyOSFTuMhC1rSApB9am9qsm6gi1e
         /LBDqRp1N2qe1EMb+Leqq25n0EBZY7DAwhBfF98OjIIs66D5AmLt6//6MOtd092T0EbW
         swYIo62yaImvrxuf6XifnN/21VueUj0BEzPoiLj2UwWdVyiELkVeB4dWUxgigiEmI36t
         2PYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531JmE6wdS9lb4RJ9jYgkE4a2E6eeG0tzYoMEAZzzKajxKVC9VOi
	HorM6hePg+OBJuiDx/uNFQ0=
X-Google-Smtp-Source: ABdhPJxkjixGCEYWZpgrL9wh312bAma7OBzVAQGy1MUnidICSfCOk/a4zaKzXGtp9J4fQb9F0A6sXg==
X-Received: by 2002:a63:3dc7:: with SMTP id k190mr29685849pga.181.1618255366164;
        Mon, 12 Apr 2021 12:22:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8a57:: with SMTP id n23ls3199233pfa.7.gmail; Mon, 12 Apr
 2021 12:22:45 -0700 (PDT)
X-Received: by 2002:a63:4652:: with SMTP id v18mr20269013pgk.386.1618255365403;
        Mon, 12 Apr 2021 12:22:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618255365; cv=none;
        d=google.com; s=arc-20160816;
        b=R+HFY38fymWeHGYVdySfLO3SkkZpg4RXRp8x/lnyNg0LHmIVlmgqsRHQuPl1kq/4zF
         KlnAB1OT9enLQhFteGFCW0fIFT6OzNYxcfbOsNZ2ayZi7ryk9r3UG8AtOlVGDjlCFlcU
         bZpTCNuzaaNN9bLNS0xlmeQ83M0SGX1xTpRn7Elt52SGNkwjwnDAmT2DBAzg9F/KF7Pp
         EqxV46ae9cjWseKbY2UPygWllbSxOcTq+Q7fWjrwXR1dQVP7tID9byqaHrUVozQAqDjQ
         OZG6ySOcRJt+Jm2S6aTbbVDJQtO+K3Ab/bh5kgIF7RM+f9eaAzNOGSV/Y3ImB4q59dU8
         ZqHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=krh4XuB30JwhRonqJfPn2VNdKGXjMiNXQDGvf0xFDSk=;
        b=QUcGwWU+aNCXAbG1VAML7CcPMZD8WzRXbPAyPPD3JfUDOwhKhQF0IBCALk4US4CTut
         JW5k+LWlPPEAW88yaJD5Nb1cgZ+cBnOMFBd//nJX/E+aSH65gl4cMwWEk5vmNkfF+PS4
         bWFjotgoe2h3jZOxJIihkWMVO1D3dKdQw9Esz/0spQIOYvgFJI/QxzFZit12g3v9i4aq
         Ijpkq9xBjGv+2l4notpGmY5jgJSmpV81YPW6y0sNeEXKh13e/0yGRIGTZfnZ4NgM5YHQ
         CV0mGAwZsGJsS3a8rW6SGaD+Y8YDYcBBFhSkHBjlJ67hFE7ilx6GbNVI9zp2fRfa1zv1
         lQdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id q5si198087pfs.5.2021.04.12.12.22.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 12:22:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: PDPJsyF5QjP1uvGCvly9Bhy6N/o/4et2op7mrSFu1EL2CdsJS5rtoTfy8d62CEH8SIae8LL0cv
 X1KQgzK0jaRA==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="192132931"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="gz'50?scan'50,208,50";a="192132931"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 12:22:44 -0700
IronPort-SDR: pPhCds6cod1snG6Y0vHy7Nok7jco5gNxvSCkadqrsVS6vjEjf9vHlgL6z3rZbhr3x85jhHDL/T
 X4MvVFwHN4wA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="gz'50?scan'50,208,50";a="423933586"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 12 Apr 2021 12:22:40 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lW28t-0000cS-TH; Mon, 12 Apr 2021 19:22:39 +0000
Date: Tue, 13 Apr 2021 03:21:45 +0800
From: kernel test robot <lkp@intel.com>
To: Jiri Pirko <jiri@nvidia.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [jpirko-mlxsw:linecards 2/84]
 drivers/net/ethernet/mellanox/mlxsw/spectrum.c:1467:4: warning: variable
 'mlxsw_sp_port' is uninitialized when used here
Message-ID: <202104130340.tjLvqVqR-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="45Z9DzgjV8m4Oswq"
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


--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/jpirko/linux_mlxsw linecards
head:   2e31b790e3ce7f8f51e24d5e26b4faff7e7de330
commit: b2cc947307eceabed71ba5b2df31dfb839451c8d [2/84] mlxsw: spectrum: Move port SWID set before core port init
config: x86_64-randconfig-a001-20210412 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9829f5e6b1bca9b61efc629770d28bb9014dec45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/jpirko/linux_mlxsw/commit/b2cc947307eceabed71ba5b2df31dfb839451c8d
        git remote add jpirko-mlxsw https://github.com/jpirko/linux_mlxsw
        git fetch --no-tags jpirko-mlxsw linecards
        git checkout b2cc947307eceabed71ba5b2df31dfb839451c8d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/mellanox/mlxsw/spectrum.c:1467:4: warning: variable 'mlxsw_sp_port' is uninitialized when used here [-Wuninitialized]
                           mlxsw_sp_port->local_port);
                           ^~~~~~~~~~~~~
   include/linux/dev_printk.h:112:32: note: expanded from macro 'dev_err'
           _dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
                                         ^~~~~~~~~~~
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:1451:37: note: initialize the variable 'mlxsw_sp_port' to silence this warning
           struct mlxsw_sp_port *mlxsw_sp_port;
                                              ^
                                               = NULL
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:110:1: warning: unused function 'mlxsw_tx_hdr_version_get' [-Wunused-function]
   MLXSW_ITEM32(tx, hdr, version, 0x00, 28, 4);
   ^
   drivers/net/ethernet/mellanox/mlxsw/item.h:355:19: note: expanded from macro 'MLXSW_ITEM32'
   static inline u32 mlxsw_##_type##_##_cname##_##_iname##_get(const char *buf)    \
                     ^
   <scratch space>:11:1: note: expanded from here
   mlxsw_tx_hdr_version_get
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:117:1: warning: unused function 'mlxsw_tx_hdr_ctl_get' [-Wunused-function]
   MLXSW_ITEM32(tx, hdr, ctl, 0x00, 26, 2);
   ^
   drivers/net/ethernet/mellanox/mlxsw/item.h:355:19: note: expanded from macro 'MLXSW_ITEM32'
   static inline u32 mlxsw_##_type##_##_cname##_##_iname##_get(const char *buf)    \
                     ^
   <scratch space>:44:1: note: expanded from here
   mlxsw_tx_hdr_ctl_get
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:122:1: warning: unused function 'mlxsw_tx_hdr_proto_get' [-Wunused-function]
   MLXSW_ITEM32(tx, hdr, proto, 0x00, 21, 3);
   ^
   drivers/net/ethernet/mellanox/mlxsw/item.h:355:19: note: expanded from macro 'MLXSW_ITEM32'
   static inline u32 mlxsw_##_type##_##_cname##_##_iname##_get(const char *buf)    \
                     ^
   <scratch space>:77:1: note: expanded from here
   mlxsw_tx_hdr_proto_get
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:127:1: warning: unused function 'mlxsw_tx_hdr_rx_is_router_get' [-Wunused-function]
   MLXSW_ITEM32(tx, hdr, rx_is_router, 0x00, 19, 1);
   ^
   drivers/net/ethernet/mellanox/mlxsw/item.h:355:19: note: expanded from macro 'MLXSW_ITEM32'
   static inline u32 mlxsw_##_type##_##_cname##_##_iname##_get(const char *buf)    \
                     ^
   <scratch space>:110:1: note: expanded from here
   mlxsw_tx_hdr_rx_is_router_get
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:127:1: warning: unused function 'mlxsw_tx_hdr_rx_is_router_set' [-Wunused-function]
   drivers/net/ethernet/mellanox/mlxsw/item.h:359:20: note: expanded from macro 'MLXSW_ITEM32'
   static inline void mlxsw_##_type##_##_cname##_##_iname##_set(char *buf, u32 val)\
                      ^
   <scratch space>:122:1: note: expanded from here
   mlxsw_tx_hdr_rx_is_router_set
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:133:1: warning: unused function 'mlxsw_tx_hdr_fid_valid_get' [-Wunused-function]
   MLXSW_ITEM32(tx, hdr, fid_valid, 0x00, 16, 1);
   ^
   drivers/net/ethernet/mellanox/mlxsw/item.h:355:19: note: expanded from macro 'MLXSW_ITEM32'
   static inline u32 mlxsw_##_type##_##_cname##_##_iname##_get(const char *buf)    \
                     ^
   <scratch space>:143:1: note: expanded from here
   mlxsw_tx_hdr_fid_valid_get
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:133:1: warning: unused function 'mlxsw_tx_hdr_fid_valid_set' [-Wunused-function]
   drivers/net/ethernet/mellanox/mlxsw/item.h:359:20: note: expanded from macro 'MLXSW_ITEM32'
   static inline void mlxsw_##_type##_##_cname##_##_iname##_set(char *buf, u32 val)\
                      ^
   <scratch space>:155:1: note: expanded from here
   mlxsw_tx_hdr_fid_valid_set
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:138:1: warning: unused function 'mlxsw_tx_hdr_swid_get' [-Wunused-function]
   MLXSW_ITEM32(tx, hdr, swid, 0x00, 12, 3);
   ^
   drivers/net/ethernet/mellanox/mlxsw/item.h:355:19: note: expanded from macro 'MLXSW_ITEM32'
   static inline u32 mlxsw_##_type##_##_cname##_##_iname##_get(const char *buf)    \
                     ^
   <scratch space>:176:1: note: expanded from here
   mlxsw_tx_hdr_swid_get
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:144:1: warning: unused function 'mlxsw_tx_hdr_control_tclass_get' [-Wunused-function]
   MLXSW_ITEM32(tx, hdr, control_tclass, 0x00, 6, 1);
   ^
   drivers/net/ethernet/mellanox/mlxsw/item.h:355:19: note: expanded from macro 'MLXSW_ITEM32'
   static inline u32 mlxsw_##_type##_##_cname##_##_iname##_get(const char *buf)    \
                     ^
   <scratch space>:209:1: note: expanded from here
   mlxsw_tx_hdr_control_tclass_get
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:149:1: warning: unused function 'mlxsw_tx_hdr_etclass_get' [-Wunused-function]
   MLXSW_ITEM32(tx, hdr, etclass, 0x00, 0, 4);
   ^
   drivers/net/ethernet/mellanox/mlxsw/item.h:355:19: note: expanded from macro 'MLXSW_ITEM32'
   static inline u32 mlxsw_##_type##_##_cname##_##_iname##_get(const char *buf)    \
                     ^
   <scratch space>:242:1: note: expanded from here
   mlxsw_tx_hdr_etclass_get
   ^
   drivers/net/ethernet/mellanox/mlxsw/spectrum.c:149:1: warning: unused function 'mlxsw_tx_hdr_etclass_set' [-Wunused-function]
   drivers/net/ethernet/mellanox/mlxsw/item.h:359:20: note: expanded from macro 'MLXSW_ITEM32'
   static inline void mlxsw_##_type##_##_cname##_##_iname##_set(char *buf, u32 val)\
                      ^
   <scratch space>:254:1: note: expanded from here


vim +/mlxsw_sp_port +1467 drivers/net/ethernet/mellanox/mlxsw/spectrum.c

  1444	
  1445	static int mlxsw_sp_port_create(struct mlxsw_sp *mlxsw_sp, u8 local_port,
  1446					u8 split_base_local_port,
  1447					struct mlxsw_sp_port_mapping *port_mapping)
  1448	{
  1449		struct mlxsw_sp_port_vlan *mlxsw_sp_port_vlan;
  1450		bool split = !!split_base_local_port;
  1451		struct mlxsw_sp_port *mlxsw_sp_port;
  1452		u32 lanes = port_mapping->width;
  1453		struct net_device *dev;
  1454		bool splittable;
  1455		int err;
  1456	
  1457		err = mlxsw_sp_port_module_map(mlxsw_sp, local_port, port_mapping);
  1458		if (err) {
  1459			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to map module\n",
  1460				local_port);
  1461			return err;
  1462		}
  1463	
  1464		err = mlxsw_sp_port_swid_set(mlxsw_sp, local_port, 0);
  1465		if (err) {
  1466			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to set SWID\n",
> 1467				mlxsw_sp_port->local_port);
  1468			goto err_port_swid_set;
  1469		}
  1470	
  1471		splittable = lanes > 1 && !split;
  1472		err = mlxsw_core_port_init(mlxsw_sp->core, local_port,
  1473					   port_mapping->module + 1, split,
  1474					   port_mapping->lane / lanes,
  1475					   splittable, lanes,
  1476					   mlxsw_sp->base_mac,
  1477					   sizeof(mlxsw_sp->base_mac));
  1478		if (err) {
  1479			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to init core port\n",
  1480				local_port);
  1481			goto err_core_port_init;
  1482		}
  1483	
  1484		dev = alloc_etherdev(sizeof(struct mlxsw_sp_port));
  1485		if (!dev) {
  1486			err = -ENOMEM;
  1487			goto err_alloc_etherdev;
  1488		}
  1489		SET_NETDEV_DEV(dev, mlxsw_sp->bus_info->dev);
  1490		dev_net_set(dev, mlxsw_sp_net(mlxsw_sp));
  1491		mlxsw_sp_port = netdev_priv(dev);
  1492		mlxsw_sp_port->dev = dev;
  1493		mlxsw_sp_port->mlxsw_sp = mlxsw_sp;
  1494		mlxsw_sp_port->local_port = local_port;
  1495		mlxsw_sp_port->pvid = MLXSW_SP_DEFAULT_VID;
  1496		mlxsw_sp_port->split = split;
  1497		mlxsw_sp_port->split_base_local_port = split_base_local_port;
  1498		mlxsw_sp_port->mapping = *port_mapping;
  1499		mlxsw_sp_port->link.autoneg = 1;
  1500		INIT_LIST_HEAD(&mlxsw_sp_port->vlans_list);
  1501	
  1502		mlxsw_sp_port->pcpu_stats =
  1503			netdev_alloc_pcpu_stats(struct mlxsw_sp_port_pcpu_stats);
  1504		if (!mlxsw_sp_port->pcpu_stats) {
  1505			err = -ENOMEM;
  1506			goto err_alloc_stats;
  1507		}
  1508	
  1509		INIT_DELAYED_WORK(&mlxsw_sp_port->periodic_hw_stats.update_dw,
  1510				  &update_stats_cache);
  1511	
  1512		dev->netdev_ops = &mlxsw_sp_port_netdev_ops;
  1513		dev->ethtool_ops = &mlxsw_sp_port_ethtool_ops;
  1514	
  1515		err = mlxsw_sp_port_dev_addr_init(mlxsw_sp_port);
  1516		if (err) {
  1517			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Unable to init port mac address\n",
  1518				mlxsw_sp_port->local_port);
  1519			goto err_dev_addr_init;
  1520		}
  1521	
  1522		netif_carrier_off(dev);
  1523	
  1524		dev->features |= NETIF_F_NETNS_LOCAL | NETIF_F_LLTX | NETIF_F_SG |
  1525				 NETIF_F_HW_VLAN_CTAG_FILTER | NETIF_F_HW_TC;
  1526		dev->hw_features |= NETIF_F_HW_TC | NETIF_F_LOOPBACK;
  1527	
  1528		dev->min_mtu = 0;
  1529		dev->max_mtu = ETH_MAX_MTU;
  1530	
  1531		/* Each packet needs to have a Tx header (metadata) on top all other
  1532		 * headers.
  1533		 */
  1534		dev->needed_headroom = MLXSW_TXHDR_LEN;
  1535	
  1536		err = mlxsw_sp_port_system_port_mapping_set(mlxsw_sp_port);
  1537		if (err) {
  1538			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to set system port mapping\n",
  1539				mlxsw_sp_port->local_port);
  1540			goto err_port_system_port_mapping_set;
  1541		}
  1542	
  1543		err = mlxsw_sp_port_speed_by_width_set(mlxsw_sp_port);
  1544		if (err) {
  1545			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to enable speeds\n",
  1546				mlxsw_sp_port->local_port);
  1547			goto err_port_speed_by_width_set;
  1548		}
  1549	
  1550		err = mlxsw_sp->port_type_speed_ops->ptys_max_speed(mlxsw_sp_port,
  1551								    &mlxsw_sp_port->max_speed);
  1552		if (err) {
  1553			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to get maximum speed\n",
  1554				mlxsw_sp_port->local_port);
  1555			goto err_max_speed_get;
  1556		}
  1557	
  1558		err = mlxsw_sp_port_max_mtu_get(mlxsw_sp_port, &mlxsw_sp_port->max_mtu);
  1559		if (err) {
  1560			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to get maximum MTU\n",
  1561				mlxsw_sp_port->local_port);
  1562			goto err_port_max_mtu_get;
  1563		}
  1564	
  1565		err = mlxsw_sp_port_mtu_set(mlxsw_sp_port, ETH_DATA_LEN);
  1566		if (err) {
  1567			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to set MTU\n",
  1568				mlxsw_sp_port->local_port);
  1569			goto err_port_mtu_set;
  1570		}
  1571	
  1572		err = mlxsw_sp_port_admin_status_set(mlxsw_sp_port, false);
  1573		if (err)
  1574			goto err_port_admin_status_set;
  1575	
  1576		err = mlxsw_sp_port_buffers_init(mlxsw_sp_port);
  1577		if (err) {
  1578			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to initialize buffers\n",
  1579				mlxsw_sp_port->local_port);
  1580			goto err_port_buffers_init;
  1581		}
  1582	
  1583		err = mlxsw_sp_port_ets_init(mlxsw_sp_port);
  1584		if (err) {
  1585			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to initialize ETS\n",
  1586				mlxsw_sp_port->local_port);
  1587			goto err_port_ets_init;
  1588		}
  1589	
  1590		err = mlxsw_sp_port_tc_mc_mode_set(mlxsw_sp_port, true);
  1591		if (err) {
  1592			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to initialize TC MC mode\n",
  1593				mlxsw_sp_port->local_port);
  1594			goto err_port_tc_mc_mode;
  1595		}
  1596	
  1597		/* ETS and buffers must be initialized before DCB. */
  1598		err = mlxsw_sp_port_dcb_init(mlxsw_sp_port);
  1599		if (err) {
  1600			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to initialize DCB\n",
  1601				mlxsw_sp_port->local_port);
  1602			goto err_port_dcb_init;
  1603		}
  1604	
  1605		err = mlxsw_sp_port_fids_init(mlxsw_sp_port);
  1606		if (err) {
  1607			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to initialize FIDs\n",
  1608				mlxsw_sp_port->local_port);
  1609			goto err_port_fids_init;
  1610		}
  1611	
  1612		err = mlxsw_sp_tc_qdisc_init(mlxsw_sp_port);
  1613		if (err) {
  1614			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to initialize TC qdiscs\n",
  1615				mlxsw_sp_port->local_port);
  1616			goto err_port_qdiscs_init;
  1617		}
  1618	
  1619		err = mlxsw_sp_port_vlan_set(mlxsw_sp_port, 0, VLAN_N_VID - 1, false,
  1620					     false);
  1621		if (err) {
  1622			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to clear VLAN filter\n",
  1623				mlxsw_sp_port->local_port);
  1624			goto err_port_vlan_clear;
  1625		}
  1626	
  1627		err = mlxsw_sp_port_nve_init(mlxsw_sp_port);
  1628		if (err) {
  1629			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to initialize NVE\n",
  1630				mlxsw_sp_port->local_port);
  1631			goto err_port_nve_init;
  1632		}
  1633	
  1634		err = mlxsw_sp_port_pvid_set(mlxsw_sp_port, MLXSW_SP_DEFAULT_VID,
  1635					     ETH_P_8021Q);
  1636		if (err) {
  1637			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to set PVID\n",
  1638				mlxsw_sp_port->local_port);
  1639			goto err_port_pvid_set;
  1640		}
  1641	
  1642		mlxsw_sp_port_vlan = mlxsw_sp_port_vlan_create(mlxsw_sp_port,
  1643							       MLXSW_SP_DEFAULT_VID);
  1644		if (IS_ERR(mlxsw_sp_port_vlan)) {
  1645			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to create VID 1\n",
  1646				mlxsw_sp_port->local_port);
  1647			err = PTR_ERR(mlxsw_sp_port_vlan);
  1648			goto err_port_vlan_create;
  1649		}
  1650		mlxsw_sp_port->default_vlan = mlxsw_sp_port_vlan;
  1651	
  1652		/* Set SPVC.et0=true and SPVC.et1=false to make the local port to treat
  1653		 * only packets with 802.1q header as tagged packets.
  1654		 */
  1655		err = mlxsw_sp_port_vlan_classification_set(mlxsw_sp_port, false, true);
  1656		if (err) {
  1657			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to set default VLAN classification\n",
  1658				local_port);
  1659			goto err_port_vlan_classification_set;
  1660		}
  1661	
  1662		INIT_DELAYED_WORK(&mlxsw_sp_port->ptp.shaper_dw,
  1663				  mlxsw_sp->ptp_ops->shaper_work);
  1664	
  1665		mlxsw_sp->ports[local_port] = mlxsw_sp_port;
  1666	
  1667		err = mlxsw_sp_port_overheat_init_val_set(mlxsw_sp_port);
  1668		if (err) {
  1669			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to set overheat initial value\n",
  1670				mlxsw_sp_port->local_port);
  1671			goto err_port_overheat_init_val_set;
  1672		}
  1673	
  1674		err = register_netdev(dev);
  1675		if (err) {
  1676			dev_err(mlxsw_sp->bus_info->dev, "Port %d: Failed to register netdev\n",
  1677				mlxsw_sp_port->local_port);
  1678			goto err_register_netdev;
  1679		}
  1680	
  1681		mlxsw_core_port_eth_set(mlxsw_sp->core, mlxsw_sp_port->local_port,
  1682					mlxsw_sp_port, dev);
  1683		mlxsw_core_schedule_dw(&mlxsw_sp_port->periodic_hw_stats.update_dw, 0);
  1684		return 0;
  1685	
  1686	err_register_netdev:
  1687	err_port_overheat_init_val_set:
  1688		mlxsw_sp_port_vlan_classification_set(mlxsw_sp_port, true, true);
  1689	err_port_vlan_classification_set:
  1690		mlxsw_sp->ports[local_port] = NULL;
  1691		mlxsw_sp_port_vlan_destroy(mlxsw_sp_port_vlan);
  1692	err_port_vlan_create:
  1693	err_port_pvid_set:
  1694		mlxsw_sp_port_nve_fini(mlxsw_sp_port);
  1695	err_port_nve_init:
  1696	err_port_vlan_clear:
  1697		mlxsw_sp_tc_qdisc_fini(mlxsw_sp_port);
  1698	err_port_qdiscs_init:
  1699		mlxsw_sp_port_fids_fini(mlxsw_sp_port);
  1700	err_port_fids_init:
  1701		mlxsw_sp_port_dcb_fini(mlxsw_sp_port);
  1702	err_port_dcb_init:
  1703		mlxsw_sp_port_tc_mc_mode_set(mlxsw_sp_port, false);
  1704	err_port_tc_mc_mode:
  1705	err_port_ets_init:
  1706		mlxsw_sp_port_buffers_fini(mlxsw_sp_port);
  1707	err_port_buffers_init:
  1708	err_port_admin_status_set:
  1709	err_port_mtu_set:
  1710	err_port_max_mtu_get:
  1711	err_max_speed_get:
  1712	err_port_speed_by_width_set:
  1713	err_port_system_port_mapping_set:
  1714	err_dev_addr_init:
  1715		free_percpu(mlxsw_sp_port->pcpu_stats);
  1716	err_alloc_stats:
  1717		free_netdev(dev);
  1718	err_alloc_etherdev:
  1719		mlxsw_core_port_fini(mlxsw_sp->core, local_port);
  1720	err_core_port_init:
  1721		mlxsw_sp_port_swid_set(mlxsw_sp, local_port,
  1722				       MLXSW_PORT_SWID_DISABLED_PORT);
  1723	err_port_swid_set:
  1724		mlxsw_sp_port_module_unmap(mlxsw_sp, local_port);
  1725		return err;
  1726	}
  1727	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104130340.tjLvqVqR-lkp%40intel.com.

--45Z9DzgjV8m4Oswq
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
rh79XhkTjl75H4M/gt+3gwIA

--45Z9DzgjV8m4Oswq--
