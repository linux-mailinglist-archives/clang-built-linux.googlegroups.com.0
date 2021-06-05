Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLEL5OCQMGQEIKEU7RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id B417439C46B
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Jun 2021 02:30:39 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id l13-20020a9d734d0000b02903db3d2b53fasf1642420otk.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 17:30:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622853036; cv=pass;
        d=google.com; s=arc-20160816;
        b=sjRunsdQCENjJDwJw2fGTZXmoX5eNQZnRSw5o5HHrdOff1W4M3Sy3Qztov/eMdyM88
         HIH1jmmfeRqscBBqic/c7TSIx05QfNWL3iI1nsKdyFEBGXHzElX4YrBbaEii6w0fwGtP
         +ZujAXdqEO0KkiwxKDcLTOnrgGXmCIQVEOCmnaXe5JZ3X3bcb66H6VAIt4jZTShVy9Pr
         8dlwYCjaeKVlUKfTZw0pQ4IoFho8QcpGoaU5CQOH8jYKwOYk3MWBrFAnxf05Dj6t3zV+
         xJ+719z7uMFAD9p86YJK0WLm14fFj/Sd5CeJ5D1ph/Zwea8WuAFIGDEs+ICkSkgugla2
         sDyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=KYuuXpRRAHqid8tf1nhOEE6oJL/4/fqdG98JDfA2+dg=;
        b=JJ+/I2LYsZaQljW92u+XQsYMIyvJR9iPbehfHNvZ+/1L7vRffkovUZ3k3FHsQPNPwJ
         0c0IL/tV1jpuOmDF08ydzspBa+h7GZrQHbTEA9tNPDHcyOKcOtAWB3g7kp25PV1pEMo2
         dsZc2BQJcA5i5YEioGHhLcL4ACeFrOv/3o1QFchHFxPKCINufXgJBIh0RBPn3ixxEHqV
         U5yk9qv6vx6/WaGynTYYNV3tfiv+++/VcZyzWUMNL6GjneqFxVBO0fxJwwz3s+pnS21l
         +/gGKrfFf2vdGpMOiS9nSem0KKoE63B4ksF6QR5Q41DBcHhO1Uxr16vzn8chnNejg2qh
         6wiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KYuuXpRRAHqid8tf1nhOEE6oJL/4/fqdG98JDfA2+dg=;
        b=cRQTvkif1jPPYAxonAYHf1+jknCSED7q3iXinwo4qEJwroBQpY7jMnzHJOvcpN7Y09
         dWPMYs3kmo3p5z7B0f9LOd/vWFtefeDqtW1ey0uz68ZllltJeSWnnskhunuA7yhSxwo/
         ypU0H54N8phgZgncePIzzs9zZzX8whXB0kSXUYGsI6y/m++p0h5JtgvJqBQ+MZ4qGCCH
         6mZpf4iQeI+39kPsB8DpzU21EdJac00peiL4YJG2tiyOrfAcalhM9lHGnOCwzKg3uzmE
         +4dffjqFw/Ixf3qZWEHyoR76QGnb9Qe99IVg7rhlXIHdkx2WJi5aN3dw1G2orpYqaA92
         Z/iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KYuuXpRRAHqid8tf1nhOEE6oJL/4/fqdG98JDfA2+dg=;
        b=l72Q6tXHsbzLbcFR6EosJu0xJ/C5oRPRNnDhSNGlo4d0RTyqNwDChoVhlAgrk9z7jM
         GKd3CBPQeXieHJ9XwFrNYZZT+9XvNKplHoDpI6YNnKAary5jgOgNMltBR0/OvgesJbiJ
         b0EcwbqsJAKVdAMOw4mAp5bVOzzERLDFmx2e7ssZs6r8aI2GAvz8sfLk2MlPeIng2fR1
         y0OiVuaJZ1zZ5s1w3vlMhd6nmDP8CSl1xioAmtnXq+v0vy1+l5p7dUe1VZKzc4cXNppb
         q37/1Ij55knB0uzqWPD6biOEhtX9RNlnSgPYIpWikkUbv6rK1Xx28ZgxXmBO+lLcuYM4
         PxEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wMCzR9ZglNnl9C8c3nHsHyGFmUJbRuptStxSW3cB4Xh7stWsY
	9AdqO/wGFP9ZywIsChZ6rGs=
X-Google-Smtp-Source: ABdhPJyGSub9Y5xDnJMIMwqyOvj9Gt+4Edw306fhRKG8Fvw/kqp+JS2DsVDE9V2zW3gc9/FBxJEW/g==
X-Received: by 2002:a05:6830:1646:: with SMTP id h6mr5665916otr.118.1622853036132;
        Fri, 04 Jun 2021 17:30:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6959:: with SMTP id p25ls2872525oto.3.gmail; Fri, 04 Jun
 2021 17:30:35 -0700 (PDT)
X-Received: by 2002:a9d:6acb:: with SMTP id m11mr2493273otq.246.1622853035557;
        Fri, 04 Jun 2021 17:30:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622853035; cv=none;
        d=google.com; s=arc-20160816;
        b=tqpt3gJ3F65VhIH2vG1l803tfh53OOwl18V825PO4ZnotiwsxxPl9lzOK9AnVzeOsI
         RF3d2PX0oS/BrC4X1Gn2jYiTDvP8cCqWfgvJEEjxYeFIAAE5ZEGrTXSHQa0WXB+ZIDiV
         DIIkRztodQvU0OHlPx01LRo/scIgXZDEvJlxK++4jm78Xnn1qOKmRYLvI7ZbCWzKJ4/i
         BWtfwsYD8ir8+rIqZoZTwwTgTeIZ8b/gH/Ae3RWgh30mwl/CvZ43DxKkQDHNfRimTbDG
         L7A0JA/u6w+rby6jjFD3AiY3PLljbFY7zZ4OEu7hkNDNIg+YBskGhdcvGDzo/3ZirQep
         1xsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=PsvMXF9gfGwyzehT8BAmrWIr4kksrCbxwqPYnW+NvdY=;
        b=FIHAQfUGwIStEwPzAVaQf3mX2kOOwcgLA/dKA05bQCHCpMWTr8rglUUw7bpPcUjDO9
         TpJS227Q6jnLboEkET7OaCTFmZ86qsTlSE6u5cHI1rRgfZyEGL8RF2xQwmFu9HYmpeNb
         KxyacjoN1oHYm7UE+/chYwEQ1Ap67pV1NX0u4ulQdGjKmJlb6aVCSSNAZIeLsjCTeEEs
         Ro8Xl7hXyfhB9jivN+4bLOBoTP1NT1Q9CKFTpp+CQMyxM2kn8/WQiS6J/qWAA0v9m4Yd
         ZaZXrUSzSQJLfWY0ItkEIdHPjwpwLkiz4baVODvtcfWbebdTggVNaK7ERgdkJz6K2muY
         x1Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id 12si475507oin.2.2021.06.04.17.30.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Jun 2021 17:30:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: 77A5RZt15Lom4rVRFCV9D/yIyQolxFH0wj/BQDhMoQjX/v9dQdJDd050sbDfGGgBpSim3P0QaH
 wxLVkC2KaZeQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="191506367"
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; 
   d="gz'50?scan'50,208,50";a="191506367"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jun 2021 17:30:32 -0700
IronPort-SDR: biAA67LobkFwyTX5NCiQTQS1Rsm6NP7gr9UrXeOgGYnlM7iduO3oI5szwHSJtNwlEG94HKlqoW
 NO4yQVQvmTHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; 
   d="gz'50?scan'50,208,50";a="480828880"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 04 Jun 2021 17:30:29 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lpKCr-0007Bi-6b; Sat, 05 Jun 2021 00:30:29 +0000
Date: Sat, 5 Jun 2021 08:29:56 +0800
From: kernel test robot <lkp@intel.com>
To: Shyam Prasad N <sprasad@microsoft.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-cifs@vger.kernel.org, samba-technical@lists.samba.org,
	Steve French <stfrench@microsoft.com>
Subject: [cifs:for-next 4/6] fs/cifs/smb2transport.c:429:15: warning: format
 specifies type 'unsigned long' but the argument has type 'size_t' (aka
 'unsigned int')
Message-ID: <202106050844.79Z4bKrz-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IS0zKkzwUGydFO0o"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--IS0zKkzwUGydFO0o
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   git://git.samba.org/sfrench/cifs-2.6.git for-next
head:   83d7ff3d0f48e6bce8a4655579df24dd33975638
commit: 9f970434e908cfa698658d54d63d356573f091d8 [4/6] cifs: get rid of bin=
ding_chan and use chans_need_reconnect instead
config: powerpc-randconfig-r023-20210604 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5c0d1b=
2f902aa6a9cf47cc7e42c5b83bb2217cf9)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        git remote add cifs git://git.samba.org/sfrench/cifs-2.6.git
        git fetch --no-tags cifs for-next
        git checkout 9f970434e908cfa698658d54d63d356573f091d8
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dpowerpc=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from fs/cifs/smb2transport.c:25:
   In file included from include/linux/fs.h:6:
   In file included from include/linux/wait_bit.h:8:
   In file included from include/linux/wait.h:7:
   In file included from include/linux/list.h:9:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:32:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redef=
ined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : :=
 :"memory")
           ^
   <built-in>:309:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
>> fs/cifs/smb2transport.c:429:15: warning: format specifies type 'unsigned=
 long' but the argument has type 'size_t' (aka 'unsigned int') [-Wformat]
                            __func__, chan_index);
                                      ^~~~~~~~~~
   fs/cifs/cifs_debug.h:77:36: note: expanded from macro 'cifs_dbg'
                   cifs_dbg_func(once, type, fmt, ##__VA_ARGS__);          =
\
                                             ~~~    ^~~~~~~~~~~
   fs/cifs/cifs_debug.h:66:23: note: expanded from macro 'cifs_dbg_func'
                                         __FILE__, ##__VA_ARGS__);         =
\
                                                     ^~~~~~~~~~~
   include/linux/printk.h:497:38: note: expanded from macro 'pr_debug_once'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
>> fs/cifs/smb2transport.c:429:15: warning: format specifies type 'unsigned=
 long' but the argument has type 'size_t' (aka 'unsigned int') [-Wformat]
                            __func__, chan_index);
                                      ^~~~~~~~~~
   fs/cifs/cifs_debug.h:77:36: note: expanded from macro 'cifs_dbg'
                   cifs_dbg_func(once, type, fmt, ##__VA_ARGS__);          =
\
                                             ~~~    ^~~~~~~~~~~
   fs/cifs/cifs_debug.h:68:38: note: expanded from macro 'cifs_dbg_func'
                   pr_err_ ## ratefunc("VFS: " fmt, ##__VA_ARGS__);        =
\
                                               ~~~    ^~~~~~~~~~~
   include/linux/printk.h:474:38: note: expanded from macro 'pr_err_once'
           printk_once(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:445:17: note: expanded from macro 'printk_once'
                   printk(fmt, ##__VA_ARGS__);                     \
                          ~~~    ^~~~~~~~~~~
>> fs/cifs/smb2transport.c:429:15: warning: format specifies type 'unsigned=
 long' but the argument has type 'size_t' (aka 'unsigned int') [-Wformat]
                            __func__, chan_index);
                                      ^~~~~~~~~~
   fs/cifs/cifs_debug.h:77:36: note: expanded from macro 'cifs_dbg'
                   cifs_dbg_func(once, type, fmt, ##__VA_ARGS__);          =
\
                                             ~~~    ^~~~~~~~~~~
   fs/cifs/cifs_debug.h:70:32: note: expanded from macro 'cifs_dbg_func'
                   pr_debug_ ## ratefunc(fmt, ##__VA_ARGS__);              =
\
                                         ~~~    ^~~~~~~~~~~
   include/linux/printk.h:497:38: note: expanded from macro 'pr_debug_once'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
>> fs/cifs/smb2transport.c:429:15: warning: format specifies type 'unsigned=
 long' but the argument has type 'size_t' (aka 'unsigned int') [-Wformat]
                            __func__, chan_index);
                                      ^~~~~~~~~~
   fs/cifs/cifs_debug.h:79:43: note: expanded from macro 'cifs_dbg'
                   cifs_dbg_func(ratelimited, type, fmt, ##__VA_ARGS__);   =
\
                                                    ~~~    ^~~~~~~~~~~
   fs/cifs/cifs_debug.h:66:23: note: expanded from macro 'cifs_dbg_func'
                                         __FILE__, ##__VA_ARGS__);         =
\
                                                     ^~~~~~~~~~~
   include/linux/printk.h:562:38: note: expanded from macro 'pr_debug_ratel=
imited'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
>> fs/cifs/smb2transport.c:429:15: warning: format specifies type 'unsigned=
 long' but the argument has type 'size_t' (aka 'unsigned int') [-Wformat]
                            __func__, chan_index);
                                      ^~~~~~~~~~
   fs/cifs/cifs_debug.h:79:43: note: expanded from macro 'cifs_dbg'
                   cifs_dbg_func(ratelimited, type, fmt, ##__VA_ARGS__);   =
\
                                                    ~~~    ^~~~~~~~~~~
   fs/cifs/cifs_debug.h:68:38: note: expanded from macro 'cifs_dbg_func'
                   pr_err_ ## ratefunc("VFS: " fmt, ##__VA_ARGS__);        =
\
                                               ~~~    ^~~~~~~~~~~
   include/linux/printk.h:526:45: note: expanded from macro 'pr_err_ratelim=
ited'
           printk_ratelimited(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
                                              ~~~     ^~~~~~~~~~~
   include/linux/printk.h:512:17: note: expanded from macro 'printk_ratelim=
ited'
                   printk(fmt, ##__VA_ARGS__);                             =
\
                          ~~~    ^~~~~~~~~~~
>> fs/cifs/smb2transport.c:429:15: warning: format specifies type 'unsigned=
 long' but the argument has type 'size_t' (aka 'unsigned int') [-Wformat]
                            __func__, chan_index);
                                      ^~~~~~~~~~
   fs/cifs/cifs_debug.h:79:43: note: expanded from macro 'cifs_dbg'
                   cifs_dbg_func(ratelimited, type, fmt, ##__VA_ARGS__);   =
\
                                                    ~~~    ^~~~~~~~~~~
   fs/cifs/cifs_debug.h:70:32: note: expanded from macro 'cifs_dbg_func'
                   pr_debug_ ## ratefunc(fmt, ##__VA_ARGS__);              =
\
                                         ~~~    ^~~~~~~~~~~
   include/linux/printk.h:562:38: note: expanded from macro 'pr_debug_ratel=
imited'
           no_printk(KERN_DEBUG pr_fmt(fmt), ##__VA_ARGS__)
                                       ~~~     ^~~~~~~~~~~
   include/linux/printk.h:140:17: note: expanded from macro 'no_printk'
                   printk(fmt, ##__VA_ARGS__);             \
                          ~~~    ^~~~~~~~~~~
   7 warnings generated.


vim +429 fs/cifs/smb2transport.c

373512ec5c105e Steve French           2015-12-18  403 =20
373512ec5c105e Steve French           2015-12-18  404  static int
373512ec5c105e Steve French           2015-12-18  405  generate_smb3signing=
key(struct cifs_ses *ses,
9f970434e908cf Shyam Prasad N         2021-06-02  406  			struct TCP_Server=
_Info *server,
373512ec5c105e Steve French           2015-12-18  407  			const struct deri=
vation_triplet *ptriplet)
373512ec5c105e Steve French           2015-12-18  408  {
373512ec5c105e Steve French           2015-12-18  409  	int rc;
9f970434e908cf Shyam Prasad N         2021-06-02  410  	size_t chan_index;
373512ec5c105e Steve French           2015-12-18  411 =20
d70e9fa5588476 Aurelien Aptel         2019-09-20  412  	/*
d70e9fa5588476 Aurelien Aptel         2019-09-20  413  	 * All channels use=
 the same encryption/decryption keys but
d70e9fa5588476 Aurelien Aptel         2019-09-20  414  	 * they have their =
own signing key.
d70e9fa5588476 Aurelien Aptel         2019-09-20  415  	 *
d70e9fa5588476 Aurelien Aptel         2019-09-20  416  	 * When we generate=
 the keys, check if it is for a new channel
d70e9fa5588476 Aurelien Aptel         2019-09-20  417  	 * (binding) in whi=
ch case we only need to generate a signing
d70e9fa5588476 Aurelien Aptel         2019-09-20  418  	 * key and store it=
 in the channel as to not overwrite the
d70e9fa5588476 Aurelien Aptel         2019-09-20  419  	 * master connectio=
n signing key stored in the session
d70e9fa5588476 Aurelien Aptel         2019-09-20  420  	 */
d70e9fa5588476 Aurelien Aptel         2019-09-20  421 =20
9f970434e908cf Shyam Prasad N         2021-06-02  422  	if (!CIFS_ALL_CHANS=
_NEED_RECONNECT(ses)) {
9f970434e908cf Shyam Prasad N         2021-06-02  423  		chan_index =3D cif=
s_ses_get_chan_index(ses, server);
373512ec5c105e Steve French           2015-12-18  424  		rc =3D generate_ke=
y(ses, ptriplet->signing.label,
d70e9fa5588476 Aurelien Aptel         2019-09-20  425  				  ptriplet->sign=
ing.context,
9f970434e908cf Shyam Prasad N         2021-06-02  426  				  ses->chans[cha=
n_index].signkey,
373512ec5c105e Steve French           2015-12-18  427  				  SMB3_SIGN_KEY_=
SIZE);
aed2a5f0a2bf7b Shyam Prasad N         2021-05-22  428  		cifs_dbg(FYI, "%s:=
 Generated key for chan %lu\n",
aed2a5f0a2bf7b Shyam Prasad N         2021-05-22 @429  			 __func__, chan_i=
ndex);
373512ec5c105e Steve French           2015-12-18  430  		if (rc)
373512ec5c105e Steve French           2015-12-18  431  			return rc;
d70e9fa5588476 Aurelien Aptel         2019-09-20  432  	} else {
d70e9fa5588476 Aurelien Aptel         2019-09-20  433  		rc =3D generate_ke=
y(ses, ptriplet->signing.label,
d70e9fa5588476 Aurelien Aptel         2019-09-20  434  				  ptriplet->sign=
ing.context,
d70e9fa5588476 Aurelien Aptel         2019-09-20  435  				  ses->smb3signi=
ngkey,
373512ec5c105e Steve French           2015-12-18  436  				  SMB3_SIGN_KEY_=
SIZE);
373512ec5c105e Steve French           2015-12-18  437  		if (rc)
373512ec5c105e Steve French           2015-12-18  438  			return rc;
ff6b6f3f916097 Paulo Alcantara (SUSE  2019-11-22  439)=20
ff6b6f3f916097 Paulo Alcantara (SUSE  2019-11-22  440) 		memcpy(ses->chans[=
0].signkey, ses->smb3signingkey,
ff6b6f3f916097 Paulo Alcantara (SUSE  2019-11-22  441) 		       SMB3_SIGN_K=
EY_SIZE);
ff6b6f3f916097 Paulo Alcantara (SUSE  2019-11-22  442)=20
d70e9fa5588476 Aurelien Aptel         2019-09-20  443  		rc =3D generate_ke=
y(ses, ptriplet->encryption.label,
d70e9fa5588476 Aurelien Aptel         2019-09-20  444  				  ptriplet->encr=
yption.context,
d70e9fa5588476 Aurelien Aptel         2019-09-20  445  				  ses->smb3encry=
ptionkey,
45a4546c6167a2 Shyam Prasad N         2021-03-25  446  				  SMB3_ENC_DEC_K=
EY_SIZE);
d38de3c6156b97 Aur=C3=A9lien Aptel         2017-05-24  447  		rc =3D genera=
te_key(ses, ptriplet->decryption.label,
373512ec5c105e Steve French           2015-12-18  448  				  ptriplet->decr=
yption.context,
d70e9fa5588476 Aurelien Aptel         2019-09-20  449  				  ses->smb3decry=
ptionkey,
45a4546c6167a2 Shyam Prasad N         2021-03-25  450  				  SMB3_ENC_DEC_K=
EY_SIZE);
d70e9fa5588476 Aurelien Aptel         2019-09-20  451  		if (rc)
d70e9fa5588476 Aurelien Aptel         2019-09-20  452  			return rc;
d70e9fa5588476 Aurelien Aptel         2019-09-20  453  	}
d38de3c6156b97 Aur=C3=A9lien Aptel         2017-05-24  454 =20
d38de3c6156b97 Aur=C3=A9lien Aptel         2017-05-24  455  	if (rc)
d38de3c6156b97 Aur=C3=A9lien Aptel         2017-05-24  456  		return rc;
d38de3c6156b97 Aur=C3=A9lien Aptel         2017-05-24  457 =20

:::::: The code at line 429 was first introduced by commit
:::::: aed2a5f0a2bf7bf6190712bf35ac53e571824a02 cifs: changes to support mu=
ltichannel during channel reconnect

:::::: TO: Shyam Prasad N <sprasad@microsoft.com>
:::::: CC: Steve French <stfrench@microsoft.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202106050844.79Z4bKrz-lkp%40intel.com.

--IS0zKkzwUGydFO0o
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--IS0zKkzwUGydFO0o--
