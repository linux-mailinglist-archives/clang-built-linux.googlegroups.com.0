Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBSUN5CDQMGQEH2IIODY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FB13D309C
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 02:01:15 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id i22-20020a056e021d16b02902166568c213sf4463050ila.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Jul 2021 17:01:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626998474; cv=pass;
        d=google.com; s=arc-20160816;
        b=s9iNGpsGW7xIDZzaTGBp//4mYiXI5szQxmFvCrcLRpfQt3VR0YYdmOSZRhgM71qrT6
         ceF2fSjaGOEHruggZ44m6g35IAmTm0rfgVZLXz1qzUTuNlr8M+9TFP8g1GWBRHTU4LIx
         k5rMQgR5Ig3jvluoilxsgd+qWjqXGS2OAH/hIwfIGFHu+vxF+c5cYe3StSgqwBr02hjj
         4rH3dRlxV5wlbxpOwPD5J4wBrwPOgm1gNX5K41czl1t6wXk8Dn0kuDoAnWtyJSbt7+vd
         iNNdDzrrPBmaNZ0Y18/0rEGTO9SsQqM2aAh+OpNnrdIVCHiVPdmkksvBjkULfWubupRz
         ibqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=k2YiWBz/UA9n/PA2O60I/dOv+82Mwd84HKAUAdd2b2o=;
        b=QN4stA/Lzdv7eGcGhDiJTRP4ScEqspM6WMBex8+4vjceA3TRu3/kYv96en1kgt7uVQ
         7XQVepnQqtUlKb5YpSb3x69DpZ7QWANbyGtNcH/0MHWTCG1GHbij+w1Te1ovw6X41tDD
         WMhR6J06MALJDoNOb7ZEByLGN0oyxMBf1jBT3TKmN4bE2oFBP/IWhSR6/2iwKIE9v+0a
         gHsl+C8qWRxpuCrmuA+ei051g+ls3RNHAOSBrk/4kEgqRS/PHFz6cu7p7O2atClBQsqU
         XGL32pOEKMBeTCE0ebQxBJ6plTSZ8BtBSbkvAjctuMXkdBVCYq2CwW8ANrNDpv0yN6b+
         AUrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k2YiWBz/UA9n/PA2O60I/dOv+82Mwd84HKAUAdd2b2o=;
        b=YoA8AvXwwuqGntj7wZJ+EFJKxlf1dyVrdUz3bntUvWLFrcflZFF4yAoy9EqHPAtbxY
         MaiGVTsgaLGm5BvCjAQ+caG9wvWtJ0KkixAWUqoxYzNDDZzkdNoYoWDhWZJqBnoWmN4J
         0KRn+llHOhmEVFlZ5FI3zMPYo6DDVsJANo1SDTA6vI2dBQ4NwCMADyRiivgY9I7ur/jQ
         aDihuJviCHDxDY0PaVE4Wu/37iTdjXjJFjRiwGweh2t4VJZ2mBKWlOKPSzNsDYR+xOul
         VoLehxs//KCE9FFjx2dc9wT7GSOD7lhxRjtis1zSZXZgd67ZeRrX4sy6O0a8nbpiAVKU
         7qhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k2YiWBz/UA9n/PA2O60I/dOv+82Mwd84HKAUAdd2b2o=;
        b=Zkusxiy/czTsGeu6YtyMXcPDKlNnsGrQfwFrNc7yuXN71ZhDcyMQrycp0SrDVWlBPx
         7goGCtrVTNsxLivWhHszT+mdjJQnTb3Zun/7n6iai5vEdZ021JSPOaKOGHhjvAemyAzE
         PayxkHQF59VizuEQIxy0HAoPQZXLoUCdDFb7ZmoSJXXgLCSc4xcDfV+3trBhNtMHNOQP
         NUja16xFbhi/52TWiM96t9Rj86YOkWOm4jXD9F0B8jO3KaqgxHShfwozGf7IeKzQjMAY
         T1EGTgRq+09wu4N76ZfZUPauphT2HOUTh83s3dj+Rh+jddLPfkjNj6zAoeR2PIhgZKab
         4rxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oq4ZQuZG4Thh6ojXwErSVlGNnD/OxYzpQokek5zAQyPsGItTZ
	KoD6qcMLHsXRQqEVvMUHsw8=
X-Google-Smtp-Source: ABdhPJwDw77XFNtLGV96A9pQlyJmARKGt49rrvr4+rQY4nmrZE1eIAlyKrsXooLYPiyRwmgt03UB3w==
X-Received: by 2002:a92:c24c:: with SMTP id k12mr1671772ilo.28.1626998474332;
        Thu, 22 Jul 2021 17:01:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:da42:: with SMTP id p2ls2043760ilq.11.gmail; Thu, 22 Jul
 2021 17:01:14 -0700 (PDT)
X-Received: by 2002:a05:6e02:1154:: with SMTP id o20mr1632925ill.168.1626998473750;
        Thu, 22 Jul 2021 17:01:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626998473; cv=none;
        d=google.com; s=arc-20160816;
        b=LE8wKctPsnotNn8/oXedKbOtDzy7rMZwsG0ZT5bdtKnBrYakCGsPb6Izrc63LoImdr
         3peL/Bn1Izqby0UaxiuC/DVmx6gDeb5yApBf8QY3L1HB0S6sYsluTnqLsIBYrnzMGSBx
         78qdNiFjXiEO/7esNTKwFHwqGXpm4jJXHcO08UYS6x9w2sjnAUuv52KEr4j4rRg2mNsl
         /FNhrBrBWjyb41XnQ2ebdRB9MJBQRSRIqhavseW5lEsZVoXrF6CBrCY32NisqORkXi3N
         WDTpKFE6XSVUJzr4YNP4wln8yoCMap4vtAuVHq9ADj04oW8R+GaxKqryAslExLxLaFvC
         fKqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=l3oTC4whXjtvKQEAMtF5tcCdiqej8BWJtCUChXHRS8w=;
        b=IkHz99w0S9rJI7646P824f1QPYqV9dwjYd74Xc6ZmMl6wKuGMy8m+KBZiBtVAx5nJe
         nI9+sGuD3UP1R8pXFFhZ5CC53Vqc5f1YmdVB8dKKmWUZBZz0rxA1KDc+xj+PwLFfp6JW
         RCS6XqQQI3GUFsbwT+EzMztQd1ai5QA6yRDU3uWr+/tNBHlweQMGFy/YI4Eq6YpoquKy
         NlooGdcMT44LV3khnAbophnxLnQcGBnqGyyvZBtjbvn0CRhZB8Qml+rSJw2ehRBXZi30
         +d1CsAWMkid+foUs56QLTjEwBJZKhNavvS+lI4uU2Y1OWtp4B95W3AUQCMYMs0V5cUXX
         yF+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id e12si1925731ile.4.2021.07.22.17.01.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Jul 2021 17:01:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="198978250"
X-IronPort-AV: E=Sophos;i="5.84,262,1620716400"; 
   d="gz'50?scan'50,208,50";a="198978250"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jul 2021 17:01:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,262,1620716400"; 
   d="gz'50?scan'50,208,50";a="659307057"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 22 Jul 2021 17:01:10 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m6icn-0000yM-D3; Fri, 23 Jul 2021 00:01:09 +0000
Date: Fri, 23 Jul 2021 08:01:03 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: [hch-block:scsi-ioctl 14/24] include/linux/blkdev.h:541:26: error:
 field has incomplete type 'struct bsg_class_device'
Message-ID: <202107230841.MfPxu70M-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="h31gzZEtNLTqOjlF"
Content-Disposition: inline
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


--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/hch/block.git scsi-ioctl
head:   0d6e95412bd07b6406be6d368ea60513807caf83
commit: 075e28806125ae286114e55557067e340f30a93a [14/24] bsg: move bsg_scsi_ops to drivers/scsi/
config: mips-randconfig-r035-20210722 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9625ca5b602616b2f5584e8a49ba93c52c141e40)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        git remote add hch-block git://git.infradead.org/users/hch/block.git
        git fetch --no-tags hch-block scsi-ioctl
        git checkout 075e28806125ae286114e55557067e340f30a93a
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=mips olddefconfig

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
>> include/linux/blkdev.h:541:26: error: field has incomplete type 'struct bsg_class_device'
           struct bsg_class_device bsg_dev;
                                   ^
   include/linux/blkdev.h:541:9: note: forward declaration of 'struct bsg_class_device'
           struct bsg_class_device bsg_dev;
                  ^
   arch/mips/kernel/asm-offsets.c:26:6: warning: no previous prototype for function 'output_ptreg_defines' [-Wmissing-prototypes]
   void output_ptreg_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:26:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_ptreg_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:78:6: warning: no previous prototype for function 'output_task_defines' [-Wmissing-prototypes]
   void output_task_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:78:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_task_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:92:6: warning: no previous prototype for function 'output_thread_info_defines' [-Wmissing-prototypes]
   void output_thread_info_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:92:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_info_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:108:6: warning: no previous prototype for function 'output_thread_defines' [-Wmissing-prototypes]
   void output_thread_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:108:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:136:6: warning: no previous prototype for function 'output_thread_fpu_defines' [-Wmissing-prototypes]
   void output_thread_fpu_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:136:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_fpu_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:179:6: warning: no previous prototype for function 'output_mm_defines' [-Wmissing-prototypes]
   void output_mm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:179:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_mm_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:218:6: warning: no previous prototype for function 'output_sc_defines' [-Wmissing-prototypes]
   void output_sc_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:218:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_sc_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:253:6: warning: no previous prototype for function 'output_signal_defined' [-Wmissing-prototypes]
   void output_signal_defined(void)
        ^
   arch/mips/kernel/asm-offsets.c:253:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_signal_defined(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:332:6: warning: no previous prototype for function 'output_pm_defines' [-Wmissing-prototypes]
   void output_pm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:332:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_pm_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:346:6: warning: no previous prototype for function 'output_kvm_defines' [-Wmissing-prototypes]
   void output_kvm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:346:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_kvm_defines(void)
   ^
   static 
   10 warnings and 1 error generated.
--
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
>> include/linux/blkdev.h:541:26: error: field has incomplete type 'struct bsg_class_device'
           struct bsg_class_device bsg_dev;
                                   ^
   include/linux/blkdev.h:541:9: note: forward declaration of 'struct bsg_class_device'
           struct bsg_class_device bsg_dev;
                  ^
   arch/mips/kernel/asm-offsets.c:26:6: warning: no previous prototype for function 'output_ptreg_defines' [-Wmissing-prototypes]
   void output_ptreg_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:26:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_ptreg_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:78:6: warning: no previous prototype for function 'output_task_defines' [-Wmissing-prototypes]
   void output_task_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:78:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_task_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:92:6: warning: no previous prototype for function 'output_thread_info_defines' [-Wmissing-prototypes]
   void output_thread_info_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:92:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_info_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:108:6: warning: no previous prototype for function 'output_thread_defines' [-Wmissing-prototypes]
   void output_thread_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:108:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:136:6: warning: no previous prototype for function 'output_thread_fpu_defines' [-Wmissing-prototypes]
   void output_thread_fpu_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:136:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_fpu_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:179:6: warning: no previous prototype for function 'output_mm_defines' [-Wmissing-prototypes]
   void output_mm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:179:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_mm_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:218:6: warning: no previous prototype for function 'output_sc_defines' [-Wmissing-prototypes]
   void output_sc_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:218:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_sc_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:253:6: warning: no previous prototype for function 'output_signal_defined' [-Wmissing-prototypes]
   void output_signal_defined(void)
        ^
   arch/mips/kernel/asm-offsets.c:253:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_signal_defined(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:332:6: warning: no previous prototype for function 'output_pm_defines' [-Wmissing-prototypes]
   void output_pm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:332:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_pm_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:346:6: warning: no previous prototype for function 'output_kvm_defines' [-Wmissing-prototypes]
   void output_kvm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:346:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_kvm_defines(void)
   ^
   static 
   10 warnings and 1 error generated.
   make[2]: *** [scripts/Makefile.build:117: arch/mips/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1213: prepare0] Error 2
   make[1]: Target 'modules_prepare' not remade because of errors.
   make: *** [Makefile:220: __sub-make] Error 2
   make: Target 'modules_prepare' not remade because of errors.
--
   In file included from arch/mips/kernel/asm-offsets.c:17:
   In file included from include/linux/suspend.h:5:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
>> include/linux/blkdev.h:541:26: error: field has incomplete type 'struct bsg_class_device'
           struct bsg_class_device bsg_dev;
                                   ^
   include/linux/blkdev.h:541:9: note: forward declaration of 'struct bsg_class_device'
           struct bsg_class_device bsg_dev;
                  ^
   arch/mips/kernel/asm-offsets.c:26:6: warning: no previous prototype for function 'output_ptreg_defines' [-Wmissing-prototypes]
   void output_ptreg_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:26:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_ptreg_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:78:6: warning: no previous prototype for function 'output_task_defines' [-Wmissing-prototypes]
   void output_task_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:78:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_task_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:92:6: warning: no previous prototype for function 'output_thread_info_defines' [-Wmissing-prototypes]
   void output_thread_info_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:92:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_info_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:108:6: warning: no previous prototype for function 'output_thread_defines' [-Wmissing-prototypes]
   void output_thread_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:108:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:136:6: warning: no previous prototype for function 'output_thread_fpu_defines' [-Wmissing-prototypes]
   void output_thread_fpu_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:136:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_thread_fpu_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:179:6: warning: no previous prototype for function 'output_mm_defines' [-Wmissing-prototypes]
   void output_mm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:179:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_mm_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:218:6: warning: no previous prototype for function 'output_sc_defines' [-Wmissing-prototypes]
   void output_sc_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:218:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_sc_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:253:6: warning: no previous prototype for function 'output_signal_defined' [-Wmissing-prototypes]
   void output_signal_defined(void)
        ^
   arch/mips/kernel/asm-offsets.c:253:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_signal_defined(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:332:6: warning: no previous prototype for function 'output_pm_defines' [-Wmissing-prototypes]
   void output_pm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:332:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_pm_defines(void)
   ^
   static 
   arch/mips/kernel/asm-offsets.c:346:6: warning: no previous prototype for function 'output_kvm_defines' [-Wmissing-prototypes]
   void output_kvm_defines(void)
        ^
   arch/mips/kernel/asm-offsets.c:346:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void output_kvm_defines(void)
   ^
   static 
   10 warnings and 1 error generated.
   make[2]: *** [scripts/Makefile.build:117: arch/mips/kernel/asm-offsets.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1213: prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:220: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.


vim +541 include/linux/blkdev.h

6cc77e9cb08041 Christoph Hellwig 2017-12-21  508  
^1da177e4c3f41 Linus Torvalds    2005-04-16  509  	/*
^1da177e4c3f41 Linus Torvalds    2005-04-16  510  	 * sg stuff
^1da177e4c3f41 Linus Torvalds    2005-04-16  511  	 */
^1da177e4c3f41 Linus Torvalds    2005-04-16  512  	unsigned int		sg_timeout;
^1da177e4c3f41 Linus Torvalds    2005-04-16  513  	unsigned int		sg_reserved_size;
1946089a109251 Christoph Lameter 2005-06-23  514  	int			node;
85e0cbbb8a7953 Luis Chamberlain  2020-06-19  515  	struct mutex		debugfs_mutex;
6c5c934153513d Alexey Dobriyan   2006-09-29  516  #ifdef CONFIG_BLK_DEV_IO_TRACE
c780e86dd48ef6 Jan Kara          2020-02-06  517  	struct blk_trace __rcu	*blk_trace;
6c5c934153513d Alexey Dobriyan   2006-09-29  518  #endif
^1da177e4c3f41 Linus Torvalds    2005-04-16  519  	/*
4913efe456c987 Tejun Heo         2010-09-03  520  	 * for flush operations
^1da177e4c3f41 Linus Torvalds    2005-04-16  521  	 */
7c94e1c157a227 Ming Lei          2014-09-25  522  	struct blk_flush_queue	*fq;
483f4afc421435 Al Viro           2006-03-18  523  
6fca6a611c27f1 Christoph Hellwig 2014-05-28  524  	struct list_head	requeue_list;
6fca6a611c27f1 Christoph Hellwig 2014-05-28  525  	spinlock_t		requeue_lock;
2849450ad39d2e Mike Snitzer      2016-09-14  526  	struct delayed_work	requeue_work;
6fca6a611c27f1 Christoph Hellwig 2014-05-28  527  
483f4afc421435 Al Viro           2006-03-18  528  	struct mutex		sysfs_lock;
cecf5d87ff2035 Ming Lei          2019-08-27  529  	struct mutex		sysfs_dir_lock;
d351af01b93075 FUJITA Tomonori   2007-07-09  530  
2f8f1336a48bd5 Ming Lei          2019-04-30  531  	/*
2f8f1336a48bd5 Ming Lei          2019-04-30  532  	 * for reusing dead hctx instance in case of updating
2f8f1336a48bd5 Ming Lei          2019-04-30  533  	 * nr_hw_queues
2f8f1336a48bd5 Ming Lei          2019-04-30  534  	 */
2f8f1336a48bd5 Ming Lei          2019-04-30  535  	struct list_head	unused_hctx_list;
2f8f1336a48bd5 Ming Lei          2019-04-30  536  	spinlock_t		unused_hctx_lock;
2f8f1336a48bd5 Ming Lei          2019-04-30  537  
7996a8b5511a72 Bob Liu           2019-05-21  538  	int			mq_freeze_depth;
d732580b4eb315 Tejun Heo         2012-03-05  539  
075e28806125ae Christoph Hellwig 2021-07-10  540  #if IS_ENABLED(CONFIG_BLK_DEV_BSG_COMMON)
d351af01b93075 FUJITA Tomonori   2007-07-09 @541  	struct bsg_class_device bsg_dev;
d351af01b93075 FUJITA Tomonori   2007-07-09  542  #endif
e43473b7f223ec Vivek Goyal       2010-09-15  543  

:::::: The code at line 541 was first introduced by commit
:::::: d351af01b9307566135cb0f355ca65d0952c10b5 bsg: bind bsg to request_queue instead of gendisk

:::::: TO: FUJITA Tomonori <fujita.tomonori@lab.ntt.co.jp>
:::::: CC: Jens Axboe <jens.axboe@oracle.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107230841.MfPxu70M-lkp%40intel.com.

--h31gzZEtNLTqOjlF
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICFMD+mAAAy5jb25maWcAjDzbctu4ku/zFaxM1dacqsnEkmWPs1t+AElQQkQSDADKsl9Q
iq1ktGPLLsmec7Jfv93gDSBBJfMwibobjVvf0cyvv/wakLfX56fN6+5+8/j4Pfi23W8Pm9ft
Q/B197j9nyDmQc5VQGOm/gDidLd/+8+Hp93LMbj4YzL74+z94X4aLLeH/fYxiJ73X3ff3mD4
7nn/y6+/RDxP2FxHkV5RIRnPtaJrdf3u/nGz/xb8sz0cgS6YnP9x9sdZ8Nu33et/f/gA/3/a
HQ7Phw+Pj/886ZfD8/9u71+Dj5fTi/vNxZfLs+nl5PLL9OvFxdVse7WZffyy+Xh+fzG9n8wm
29nZv941s867aa/PrKUwqaOU5PPr7y0Qf7a0k/Mz+K/BEYkD5nnZkQOooZ2eX5xNG3gaD+cD
GAxP07gbnlp07lywuAUwJzLTc664tUAXoXmpilJ58SxPWU4HqJzrQvCEpVQnuSZKCYuE51KJ
MlJcyA7KxGd9w8Wyg4QlS2PFMqoVCYGR5ALXAPf8azA3UvMYHLevby/dzbOcKU3zlSYCNs4y
pq7Pp928WYELUlRae0l5RNLmfN69cybXkqTKAsY0IWWqzDQe8IJLlZOMXr/7bf+833aiIW9I
ATP+GjS/b+WKFVGwOwb751fcREN5Q1S00J9LWlJ7QCS4lDqjGRe3eJokWngGl5KmLGyOCA40
OL59OX4/vm6fuiOa05wKFpnzhisKrbuzUXLBb/wYmiQ0UmxFNUkSnRG59NOx/BPSwal60dGC
Fe7txzwjLPfB9IJRQUS0uB2ZqmAdYkHyGG65Hglol2PCRURjrRaCkpjZamlzjGlYzhNp7mC7
fwiev/bOsz/IyOkKLhakKR3yjEDMlnRFcyU9yIxLXRYxUdZlGIbLEgXaCOxTdatq9wRmzHex
iztdADses8gWHdBEwDA4EltiXLQXs2DzhRZUmpUI6dLUZzJYTXcJIB9RWCT6E2uVFn46C2+n
Qrr66LzTuAObOQpBaVYo2ELuKEsDX/G0zBURt97t1VQeNWrGRxyGN2uPivKD2hz/Dl5hy8EG
1nV83bweg839/fPb/nW3/9bdhGLRUsMATSLDw5EylC5ztz6kOTYZLUBAyWpeC293TDJGlY0o
2AIY7V27tDQBfrS2KWYSjWhsS/RP7MkyQbAfJnlKUKXtmc3xiKgM5FAmFRylBly3Jvih6RoE
1TLB0qEwY3ogMDLSDK1VxoMagMqY+uBKkMizJqlA+NBFZLbBQkxO4TYknUdhymzHgbiE5OAb
LR/TAXVKSXI97Q7Q8OJRiCfpubne6jSaJ52F9n25h9wK1LL6C1iIdq4GZsTFMxlbLoA9tf1v
ytHpgR4uWKKuJ3/acLz7jKxt/LTTFparJXjKhPZ5nPcNXSXZxhY2eiXv/9o+vD1uD8HX7eb1
7bA9GnC9Yw/Wksi54GUhPdtDJywLOElpq0+pIC6RXmMAnlOM4QoW91DN/AsaLQsO20czCdGM
Y4VqLS4VN8v0sgabl0hQUbA4ERj/2DOJoCmxvF6YLoF+ZSIQYQV55jfJgJvkJTg4jE46yYv1
/I75lwC4EHDTMWR6lxHfsmK9vrN0AQl57/fMPg6A3Enl22HIOdpaI8J2GMkLMJPsjqLHRs8G
f2Qkj9y4qEcm4S+eKYxZhXAuRp2KOBgG8LVEU4wQc+LGKEDGRQFBBMRiwoKjf1Jp/zfYsogW
yqQaqLr24ioz51lOBgaZochZ3OZUYSilBxFEJSMDcFKFOZax55Kta19tQY129n/rPLPcBEQ6
3Q+aJnBCwmIcEgmHWzqTl5BX9X5qOwajBXf2wOY5SRNLXs06bYCJjWyAXEC4ayVBzBIvxnUp
HMdJ4hWDZdbHZB0AMAmJEMw+7CWS3GZyCNHOGbdQcwSoiRj2dni8QuNd7XUvo8yKa4WkjguH
1dA49mq6EVKUc92PEw0QJtOrDFbEo8Z21llwsT18fT48bfb324D+s92DBydgPiP04RCd2YGW
xd4baP0kx2Zhq6xiVoVKleB1ugnpFlE6FEvPZmVKQsdapmXoN5FACJco5rQJZcbJEogc0Edr
AbrBs5FpO7IFETF4JkfoyiSB5KEgMJ85awJ23VFGRbPKekDOyBIWNebDCiwx7wXp9Dl5tBHG
ZTiphZvNtqLLCtlcdba5/2u33wLF4/a+rna0MyJh62OXVOQ09R6SoSMpOKbMHxMT8acfrhbT
izHMnx+9mNBelZ8iymZ/rtdjuMvzEZxhHPGQjMhCBtkxCEsEIV0/VnVpPpE7f+pjsHCDNMeg
xRtBpQRCd0e1zaCU83wueX7ud6gOzZQmPya6nI3TFCDE8Cfj48cEBkORUxyiUytdidlk7BIQ
n4MgU1C1kUUKAmqwHB8OIW6q6FIL5ZdXOWeQ2k/9C6yRfoGtkVcnkOdnp5Ajc7LwVkFeKxYs
96fTDQUR2YgSdjz4aR4/JJAQoGSnCFKmVEplKU5yAfvNpV9GapKQzUeZ5EyPLMJcsVqffzwl
QWo9G8WzpeCKgXiEFyP3EZEVKzPNI0UhAOspalfiSDO9TgUEmmDvT1AUQ4pmlzzS6ragen1j
B+MIJhm5w7nd2B8QSOo/MkAmYIVdy+SYFR1bVY3aRww9QD+7WtxQNl9YGWpbXwI9DAUkGGAV
nWyiylF4xhQ4RciZtHFNdqhkgnNBrFJgRFcAmVkxZQTJugupLDSmeZ6SGNbxtCyLgguFZS+s
QVrBTpwR3HvEF1TQXDm+15SWKRHp7SCwlbd5bxGYtIYYcuUxI24g303vJbghBYaYJoPsbSqd
wGnCqdUp7kVbHHI8s7UCHHU+1WLihEYWYuqTt3qrfQYn0NNeYccjJx25e0gIs9krAtGW0kwS
sNCr64n34M6nIUhNFWy47H5AgkEXGC5albrbWMgOaF+/v2y7UzRsrGAYQzPM8/Rs6YSQHWJy
ufQHkx3J5cwlaTIZLA6bUgcoNeUQHorrycTeHZ47pOsJhcW7+260LS6zQqs07ElOUjQn4w4D
mQVcOQRWcjZklCkt7RSjBg5rDzLzJZ/OLbaEI+phMlVPqbxZSFKQJBkZuyqwIIRVpt64n0D0
9tPHKm9w31KRQhbwP+Zh36B01rsGrPKZZyuZEaEMPYdlsEjwOg7va8zUlHJXbBRFeygUHTRT
vWURyeLanJwNESD78vrKq19YoHdyZPfqgMXksmd2E0hhYQiYPCwGWyNtgYIfYJZH2DqUucAV
yeups26TZErQc3xmiezc0KaqxuIfGSnsOuniTk/98SRgZleeiwf45OzMFhiEjER/yP7CH/sZ
1OUYCqYYHTY5c5fsOzki0BwurKoZ/B2YdoyWdE39IUwkiFwYyzIe6nNwA0lxOWtm9D8Qap4M
NAuknhQFuEG4sFj57KIhw9KQTTfgA3HCTzGKshgfjSHm4JmXUUMAOE3XmGKcSARtZhiuVDbi
VHnD+Jeuvh0tY+oxzphbLat6/ABXzKsn6ZSuaIryX71vvR2D5xf0ucfgtyJivwdFlEWM/B5Q
cKa/B+Z/KvpX59uASMeC4fMz8JqTyArOsqzsaW8GmqJFXhkF2H3eGQYfnqyvJxd+gqY28wM+
DlnFrnuT+9nNWrWPuK4Etg6/eP739hA8bfabb9un7f614ejUrHy2Hk1HkdkxzyirNkKrKLKW
AhAtjj08bt3AjTnV1Qai53wFQXrsOC8HmdG8HEFBltLWc0B024mD+LD7p6nUNeG+n8CO8Ko1
25DBDg3HZHd4+vfm4E7T3ncGQUDGsGqleMRTz1l3NPwGnG/7TN9jUvwEk2KciSqFYCBmfK3F
jfKnlHXFSOcryFa8FHPO59hzwkSGQebgnVJtvx02wdfmRB7MidjnPkLQoAdn2U29YkKVkGnd
DapOTgIBWkVyjYURvYplKxBNCXBzgDTvFSL3t8P2/cP2BeYd0YtllTl5j+ETxqApCan/KkDH
0RVgj4tiuQ7r/pQ2Ql9RyH8ERTOAV9pDLfspWwUVVHkRzluDgZgFGMu64HzZQ2L+B78Vm5e8
9DRLYHRiNKoKS3smEmMsCOIVS26bl7AhAU4hIcMpcxNj93lUeQtPEt3fOTY8ZTyuu4X6GxV0
Dl4ezKbxHPhCbx7qi/726zcBG2RCJhzvg5vHyYonRgC+w+zuu7eXG5JDJldEkPoIfECo+5w8
LCSN0NyfQIFWpVVxoEs0KszYa4ZZNEoQjdwy+k/B4afgdtaRKt6URexZUFogSjAStRy2U4As
wCgn7jIC/sM+DLjpev8FjbDUb/lmHpcplUaLMCwSboZbs6drlKO86qfCrXlk0Yw2zxWQlvoO
33HqPQIzgVcP3FFXQ5lo+kIUL2J+k1cDUnLLnT6/FE5bh7ByMKax73Wn0hU8xzEZMFPWrXdC
L2wepkBkPSD5HtkrOaqkty4lQc7gk/Kxh1v7qPFls156a3gjvnr/ZXPcPgR/V+Hhy+H56+7R
6ehBokElo2VssE27Y1Xr6p52TrB39ojto0VazlnufRr6gV9oWAkFOTtog22FzeulxKdDK8E0
AozhmDbv6mog205QXlFX1RGMr33eraIpc8SPDq7Q/mi+M6zj7KWImtZep6jY7ccHqyb3Yprr
GmIgg52MLdSimY4kqz0qN6/00pxfzcaXcjHxFQotGhDExfW7418bYPNuwAVlXqA7ysceFfqE
/Y6RETLTBTLKZKTloybDB9YbCIukBOPbNe1olpmM2bkvE1qAF1OwyQ/HL7v9h6fnB1ClL9t3
faNsGshSiCzsIkZYNx21P5cQjkoGlvtz6fQDNx02oZw37WBWY5WFTZkvwe0adBSdC6a8vTs1
SqvJ2RCNlcfYBTc5rjGDjgNG7E3oy/UrdmEJwi/7k1RQ30wS3wMKkrrQqslb0zwSt0X/vdtL
gC8cKTqOQQRebA6vOzRagYI0/GjlwgTCNjOWxCts9HGsCAHTnXc0/sdotvZT1Hgukw5v2fGM
zYkXoYhgPkRGIi9Yxlw6CKd1M2ZyORaTQxIOi5dl6GGLTZeYGq2vLv3MSxhrSuqnZkjjzLdm
BBuBsOabezcN0YKwD9gaUOY+8BJyPu+50oT5N4J98ZdXJ+/QUgVrfFMD6MmWLcPZZ5OhsTbj
YrxrL7TEEOgYr+ri2C7mft1gIZe3oV0DaMBh8tlekTtJJ+rYQWIJmsyt9xe4zkqdZAHJGXrM
QeSIcaf5SCA2REhhKfk4pj9Y3PiHDuBtrAP+Q3NwwSkpCrTaJI6NpW8ey8zR0v9s799eN18e
t+ajnsA0E71ahxyyPMkURmS9KToERsx2P3wdvbkxKMo8pj5NNIvj6s5Wn0msmMtIsMJ5X6gR
4Il8rR44TZ14tfc6tsOquLN9ej58t+owVvpe86wL8b14PiFS6bnttsyhLCktTCObKwn15yBt
U7alkEUKUXmhTIBtKvSzbjMQ/EaDniV8GBMU3a6/cQlMpOhNEpkkXTcdaTUUdQySCh3auftS
Wjtt7spkHGD3jAhdz84+XnZpByVVat6NSiAVVG6dIsqI86O1Y52ANMDEXyZBvOmv9BoaAqdP
ibxuW6Hv+t/xGEAb7UDG2nbbU7xgf6A1Oii94551jJJfzaY/tZb0zh+gnhqw8D9DjA4ZifPG
6K/fweLf9fneFZynHcuwHGfZIz1PeBoPD6NHJavuyZ9jev3u/86/Pj8+DFbZsPN6J8OiE0rc
g/XLs8zRJZkSl1FLq6xh93Gap0AwkT7ZBRPS+8qttd8FtvxgPYM4aeq4ybK6ZKgaRHPx9p/d
vV1ZbhYYRUTEduRcvQ4Mw8Ho/f3m8BB8OewevplwsCuH7u5rxgHv28+yKhssaFrYXtgB19mC
9ZneSmVF4mS2DQyShzL3PpcrksckdapOIM1mmqbKXH0s2Di/tkT8+Lx5MMXlxoTdDJ696Rpu
t+XjNO231FX9r9qSVys7ykbTvI9f/XU1a6jLQSvbzzVSYxI0P64HtU4Us4vqUctznjWaroTT
9GOgKLL1SHBGGbd7rQ2OmC6fmqL6ePGplfmm2Qm/uyoV733bKOg8s51H9RtjJA8sGwJvJt1U
NSjL7J70Guh8b9hNoskqs30gOp7qhTwsk8QWCUQlkEhR64MCuxY0VIr27fHBKOPgfafKN7GR
Wae+t7RQRJlUoZ4zGeIrtRMZqYkmhb+bxuDWzJvfrxVVtvYvmGQpgx86Lfy+5TMIr6YhG2lH
XTAMKbyCbW+9lYZc2vUDFTs/jDTJ5pPKLmt42RyObjKgsAT8p8k2pL0fRNQ9yhXSdwpAY6cr
7oI0T1qow7aBm9euj2f+LgaHEB+TsNVg5AMmpK0qB5pl4FEUmf+ITomRnkwVG7ktZDrctkMF
om16Bz1Ug2StOXZzG+URnzCfMWOqvjpQh83++Gg+8Q/SzffB/UByB+akd7hNqNwZSeVLinMA
29eKvyH58e6K5X4eIomRuxV9yySOOmshMxdtro4XsqMwp+qEtvVVVBkuGIkMEgNjJKqPLUn2
QfDsQ/K4Of4V3P+1e6nfKR3VN+KXeNUTMJ9oTKOeCUU4mNG+Za0ZYVnGfG3F84HMIjrnuIcx
PQCCEBxl3bdc+BikFv4EmznlGVXi1j0ttLMhyZf6hsVqoSf9CXr4ESszJPS19XjIrk6v5vIk
+nzqOw42OXEIbOpyNLCZB3Y1MC9qpIeoGQHeIoW45MTkJIsh3h8KCMRKZAgtFUtdKMhvD8B7
ABJiW7rRzObb13GZrz+QeXnZ7b81QEzIK6rNPfiFnsnAOAn2iPeARYye7SgWtzIbimgNrp+P
Ro6nIep1WVkY9JqCj7TMW3T4zAEZd+p7WLPp5hRrh94d6HnBeJVe9xaj5MXFSDcboqsu9PEl
Qm47aMBo29RP30P10e/28ev7++f962a33z4EwLN24JYds+bDYhnk03Lh7rIF6xvBFK0+yLod
owG57ylhtCim58vpRV85AT67Si9nZy4csiYiwJr3zlpKNb3omfe6T0U2i3b9ZzrWvFJdXQ9r
r0zFqDr2VPBbK65IatqanSpKjaXCPP8hdjK96kUw6CWnmZu7V3nd7vj3e75/H+HVjSV55oB5
ND+3XgvMY28OsXp2PZkNoep61snKj8XArCWHDMydFCG9r1SNacspYrzAWjoqUfFTNP+2QC/M
a9CSZLLMx0Onhu6UgW1opmt0svNTgoDNlEg7HodBVtEnqKqvUQQn/M18LPL28vJ8ePWcHhC5
p9BAwf3qBYHcxun39hOANkR98bbJQvefqemqp54VNjhz22YfaQGWK/iv6s8pthcGT1WZwmsl
DJm75M8Qs/H2X7lpp/gxY89Jc182i9gyZK7zAoC+SU1fhlxgxaenlYYgpGH9DxRNz/o4LAN7
HBCi5mkJOdKoTBjOqNSjFIvbgopeJtVknsoSCdeBQaqB/xINpk1ezoDHxoxYhT7GgMVyKL7L
2hPUX/J4UUsefnIA8W1OMuYssHl7cGBO/s2xMwfymRWG0Ha1vULwdOXOWj1sWC4EYvBe428F
gLz36urPj5dDBNjY2RCaYybkqEr92jtQ3nyV0UD21Rahuv/8YYDmCw0sdPmyGyRISAhGzTqk
ChoNOFWf/Xj11VlUFW7tjvfeekN8Mb1Y/z9l19LdNq6k/4pWc9JnOhNRby96QZGUxDYpMgQl
09nw6NpKxyey5WvLt9Pz6wdVIEgALJCaheO46iPejyqgqlD6aUJJSP4uju/NqDZwEcK3L/Lq
Jdh6UcJ2GbgpZvvQCOiBRwZeEm69wAwcpCJgOmVktC0YeTxRvlylYxmCQln9mW19LsC/uyiZ
vwrIC6NRqoQqC4IU5L3WUizovPqjabN+VMSbsVfM1KrW9KKYzOg1Vc+msnb9dXgfhC/vl7eP
Z3Tjf/9xeONb7QV0asANTrAIP/LefHqF/+qmsP/vr5W2C7YsAav2kI1hAW0NdPd0Ob4dBqt0
7Srmtue/X+B4cvCMBwCDT2/Hf388vR15MUZoN980iLehbkt2YHXZNGe6T92tHg+rIuHpHS3B
qkNbiKseC6Vk0upGtCKJE+2sO3NDH4PeUashfKCcDsDnvnqThRSI2yMMN5oSVFmj+8LgE2/1
n78PLofX4+8Dz//M+15rH2lNwqhLFG+TCWbeFKSmrRuaYu2i3LRJoLcxqlHPVoOOop+rhbRA
epSs18bFBtIZWEjjWW9r1GBD5HL8vRvdgAet0OzaLEYOhCs0O6QNicIl/2XpNL4epEryUog1
SmSkGiV36CRiS9PfGI3ib8rMdz1zhGzKTcpFqjY5iAmsG+3cViGNEVwf8ueK0s4gsgXEMVQu
AUSsi2UCtq5ZptrrAsswrcMEUrwSEMORi/dv5xOYPwz+frr84I3w8pmtVoOXw4XLWoMniCjy
/fBwVAcvJuJuvBBVTTBQpO19ABHGBdG2yPKCvVI1JH1NsvCrNjogK6FDU8lwJkMPRzH6eLkf
zAo9fLxfzs8DH+IkKZVRUljGYoKLNDiFTghhrWYALz84K6IHLiDivZ2XeW7WmkRpbxEELEw+
n19O/5hQzTkHMgmLdFIUpbdq5SRvLL4fTqd/HR5+Dr4MTse/Dg+UCG9YosESo9JiEUzLD8A4
XBONfTgAD1xSPvdxLR5qyQDFaVPaoMl0ZmTUJW1xNt4MqxZ/hhGD+Lttp1DRq9WTCYDFAwaR
4iIsC9YhF21s/iayFf1Yenq0W9jXLqVMSzD8cqXeckmM0DLK2N266yBDS25jJTeQwn8BrrRo
AxPIKgRdLWRocdmQU7D3ZTlcuPraWsV5O4gkG6aqFSOnohGiOsk5jW3dlGtjpFQac10txGPv
fQimxVAT/WtsdfpTPFAQ/ax/E5C6kI8nMmbykWGV27DiEJdctdIwNLX6fguyxGj6roGKPQNq
jl4If2dR7vwYw8vRKYkbdyN3rtLdBvf0B3AOk99rFRIkeUKTJUkOxsy6MXcnDPxQkq3vZvcl
zzdrj8TqU1pch9FxF2r+/JwEsQyxb7XYFJpdr5oD2tISiVfBFEzdLfd4UnZNHdjgTRBSMi4w
U12KjJIkXeIEw+zkzWYYBMHAGd9MBp9WXIq+4z+/KRJsczkWZsFdmAWkPNyZiKZDtpb/8OX1
42KVnMOtFlQa/yyjwGcmDcIMB3EkVH3lPg54wjXkNiavjAQkdsFwFSCyXeCO8QTxTusN+90o
FtiDsICvkO0cJYf3gbujZA8DxrwsCLZl8Qc4iXdj7v+YzxZmfn8m98ZBgcYO9lDKZ5Mo1nGl
F1qHuEY2fOLYA+QoxbUWhJeTQeRbtcUkreT7BJ9QxLcNYqzcKDVU9SZVoYbq4lXTvWSZUdEq
a8B6NaLLx6c0fWqrIUqL/30D4vtsFMTkNlODMMSOqwsxNZOFPp+KW580nqlReewrR2FNykIY
p5pGsMrRmHIjqVF3ECoxyciSgelAFLm06X1TfrADTjLKNULHLA3Pm4YLJqg91b8Lff4HMTK+
bYLtZucSbeMvbwj82o1h6yALku+40rPO3BU1yWsUTE8wgWqnnbIidX3dxIhglqsVmf2Khe6M
trwREw5DENBbdgVIdt5GLC1ds9qwem5OMeJwghtXa13fHN4e8bwm/JIMTEUcYpAr+iD8Cf8a
wRWQzNfu26Uy7QWVK+Ep067EBT1zacMMwYVQchlXPRkZUElkx0YgF5mlcDOvFBnq5JQuRhKl
HsaR6SgM220nYWdZ8GoW0lcm6w5ZlD0nH6V6+0lKuWXT6UKxgpP0aKLeeFAdVu/v1CYt9ocf
h7fDA98hlZNeKYOoas5edRlNtiyJ0Hhty4RdOlOREtDQNncKrW4LjmwYYKDv03oD+L7cLMo0
v9eEAxFMA8lkN0U+H/WoUJr+iNUF9dvT4dRWUqGD3EhcXHiaxb1gLEbToXa60JCVMM/SisYy
OOQHzmw6Hbrl3uWkrW4npsJWsJ+QMVYV0DYrd2hsNqG4Gfg/x0ENIfMRgVhIIVeFuSyFgOl7
SMvaFPaJXBcpHy0WtBGaCksMwY8E8QnrLCxRBlVcnM+mc0tASQXGh1wKD1L0AqsIoj0NhsaZ
tpZaevF8NKcsgSoUGAFWZ2RSut2eXz7DxxyNoxgPjQmpv0rBjZd82YyGjiUgZoXKrQEtBSAO
mMUtrwJ4UcrmjtPZDV137BUEm6sXwJUkKsi+LKtbjCFiVLvRBaezjMaBI8Gu14cuHMyPKLT4
iMjm4NqtR9/2VogNg9E9HhWUjCIbXjOUUIjUuivbgVkiiwr2Pl/Y7IfkuKQ1MlmxcKVF0tbI
HcXqMEySSXjetujK2XNmIZsXBZF6zTMvrFpDLIyXQea7pHGWnDBCHvkzd9e4FJp1NfjtfbEb
Vy7vU5dRm0L1AYA752vB+P7XA6ouOlPWnxyXZVogo2CZp4t6ggZ7k/D3dgzmivEeT6uNhGCF
21UUFJaNhv8VFOjaEK5Dj2/znes1OhfQYnCNiG1RgasW2AfLXW87JXedqygfVJ15hNEy4FIL
FxVJQVFOE76ukM0mGRjiUja6Yo+lST3mounlWYRyK9HaW3HF59Pxc9dJ5K9Cvprl6snfdhdF
OmWzl94dxLjGi0jScAVjwQbKIWmUtqdTmmrnJMIXuIapb6ekcVg9IkUPmUrCufWYwC5jS9zh
lG/efDHpBVYJLnMS1ojJIk6M5lYhieJBhTCJA8p4sIEt3clY8WRpGOIOh+JUXtPUN3yry7Zr
j+LhdKEYKCeQjPyWIgfF/TZhFAfal6LfBlyDBoctsqE8PowtEkYDKriEF5BHSXwQaZZEucd/
UpMAb/4l6j14RVWLJIHGXqNwUebS09jzvOCiorhv58jy8fhbOprYOdVZhGrHEt3b3Gra2p9M
Vg65bMeXzSbkYn3eOPIocRPI5PmyAlfQY1JuVs9S4OzEDF0AkV2lr4RKwy4Tqh1v7vjwDvVq
7qapY1E0JsC9lF6Ra3brjETHZDfjiUViRHMF2wMK4uPY9d1yPLcJW5iCVTKX3PLrzvXpcYaY
QphOBNt1qE8boHIVZLQY088/KHzjLNyEWF9zUPhcmrUKXgJVfrXXYhnmS+2ZTSTuct5Fq+he
J3t8vG69VlUrMtVcOo5QZbRBCWEu0aPzH/1D/670Y/t44uy2WZLOX+Z0UCLsv/RmTCsCcMrI
QrO6Qr7qqigg+hoDXPvgocI0sCluEsRWXrm3l5DL7SUIdDDJjZKC1GFNO4zh98peQqvGxnl/
mpNX4UXxfFhGUWr2YpQuFhOnzHLLElVJp0t9zAHRWH8lubN9ccOE/60s8ilGs55NO+ZXnM9n
I/u4ieFFKJt8DB2T4nXkrhtgDiS1wcSrBox5epPAswrh9t5sEtAdR5OO+uRhayFoJQDxmi1G
M4DIbEGEgGt/FqXmluyrPf+0cC0aOWdmiXeLj58aYzzrqtFX2wtynMfG3qyrtbjcHXN1gX5s
RgC6vt3Y+7VW4/VvUsstomTC/Z0dYNezJLe787lMwgcaHfMC+XA238WddXDvt3w59MjbKZxJ
he4/goMVzqNGzhAXUvuQBpTj2IstkhmWwqmoH2Z9egdQ1BGmwhZqv1mRIrKPQTgbZi7/hfa8
NtQ33nzdnQeIOC3XHfu8G/uaLPdxujy9no6/uBTXNs6FPtkV8mQU8Onb+XJ+OJ8qIfBdB/Mf
cemvrl61cUWgGsxia0fBbFQMzZZikbu3bSotR4Yq3ICSQCz2y/FsbpP6OCJmfMnlCYHHPq3N
MKoF01Q7M+J/tq3NpP6apxVcmAOmbPBwehKG4GZDp/jgSwhGWreoimqhPxom3rvQxZIQ6XPx
TPCq04e6PNXj8ec3tUiCm6e8tOeHnyYjeMGoTenmHgL4gRHINsjh4XHwmkQ1muVuDG6hg8uZ
F/E4uPw4Dg6Pj+irfjiJVN//R7WUb2dWlz3cwrGJcgwRbmFAqn/D/5SbvSqORYshrOmaBJvm
FSQu6t84vH3oJaQGxfQaJPnL2Fks6GEnIb67mA7LdJdSRz0S1H4frea0b2MMROylozEbLnR1
z+RSacu9tbP8EG3S8hq2hBA3Ny1M4gVRQp/11UWF50OgPCWzSrB1cpaDwbrjxCHRuqd7KxSt
rpko+q2LeiiAYmd7/00DWbRDBTMbO3QgCw1jebJDw0yvwMxoAULHXFOeHlCIbhq9Xevdr7c7
eEynuymt7w9Ldtqf1ZaNrsgn7cW4bGzZfOoGCrIIYsevJ173JKiOQTsxIDBP+yHzbojt0kry
0RsMN0/YOK+AsuUVUBbz8d/dVhFc1fB/215QGd/A3g/vg9enl4fL24mK41GvbXxjMJxT2o3E
NewgDvbd4x9Q2cKdz29uuiduA+xedZQEuxuiBlrOvNoJXpneTU8PKEBaD26XsHvqNwmOr8Rd
me/N7No+mV1b5dm1WV87bHoEhAbYs4Y0QPdK4OQ63NjtHrDZN0tsbwVwZWNMrq3j5Mp+nVyb
8ZUDb3Ll3J1411YkuHI8TXoauQEu+3pj258S28xHw/42AZjlvdoWrH+R4jCe63Ww/n4F2Piq
ss2ntJ2SCVv0DzqEdUuCFWx8xSzFml7VC3NL4HwdVhhpyXBAln2znYy4P+zewcee9bhRwVgP
2WoMnG0x72bRszLjIdZqMuoeXhWqZxAK1Nx0CqdR16S16VtYEBWnTs8IzMMyTNDPqEPTk+dQ
lC4neWXkdw+UGsil8SuRLPK7t3c1ze4p1CAL1j3DlQpZ7LoJpNO98CnInmVILafWwVXI6sen
Q378SQiiVTpBuM3xjr6tkOe3VP/F+Wg+7C493kt0jzaEdA/bOF84PRooQCxPhavFdbo7MM5n
8x7pDCA9si1AbvrKwivdV5aFM+tLZeHM+1p34Sz6IT2CIUJ6O2Dc23SLqUO9kqI03Phmrpq1
W0ctsRzF6X5uXKMbkOpx7/YO8nUXwgPa4Y6yrQGVXLvrqwgYdgQ8MKswP1OnfiU1WYmDzNYn
YfYVb4Za4XRNvV/5rvS0A+uaVO4dgyrjW8knCEXIo+fD6+vxcYA5tCY9fjcH524Mdvus0YX1
g1pYQcbDJbKrFX7HiZhAWe0ikJ3xVJZBlt3DtXdBn/chEIwGbpMtfSdRI4o1E4c5HTARJdcO
qIwHOgBdBtCI8O9ssXaRHcDzd7bLNYGwjdBylcOvoTNs9Vd94EyEWtBwWTVo9c/hpsL2ySa6
81sfhElHd0XJOvT2Hd3QZcsvAaY5tA6Il4sZs5wkCUDq8Ry6APbrdMEvOioQF7QwKhyC4EKn
v5vTomM8myEfDK5PWbUhi7mxO/VHfN1LlrtWt4m7Xuu3YaLdFwriFm5usoA2CxGQznryBRRX
ZWuu98zTnfeQbHcRaNiOReURCDZZWCyukN/pAYKIfQgly+mLTkQUMO9KRjlKCr64gzXrZlzC
aksmRKDwNu0J5+fj0WRsDGg98D+1C4hdYuUL6vHX6+Hl0TibFPlm4TdjhdUWNfdmOB0Ze8dt
EKeR3x4x0WjhcYa1w/k2HhjbWp6y2fTGGZnkr3GxmKlBcIiq1LfCPVXkW6BjOTQQkxrcRm66
lnaOmI8t4rAAeOOx7eZNTPqQJaxjyBV8UE/0AxAt/SYmuzT3btcbK75/ert8HE5dIoG7XvNp
7ea6q3CVj3drGqtUGZIJy3QxwD7m73z+++ntiGHdmzv6OpM7p7LwNJfZFt9nzp1iINwwTBv2
hsPWIVlyokhqUdnp8B/VO5IniCYAZb4JMr0Igs7AILVN9tloMpwaRVNYC7q+DcIZ2z+mRGsN
MRrTRVoMp5ayjoc2hmNjWPLgDL5TKFYROnNhq9Z0SF0kq4j5wlLI+cKxpboIhpOucVD1t6Iq
4KPWEGuS8n8RXHhEPtIVDIXeEfMn9V0Bped+Jb65vlcuXbB2pbZLfD4DE9FeMxT40vXyxc1k
Si3hEgINNlNaUqUvhlSioonJMktIFKy5zLqnFVAJWn4dzQvSXqDOydhhJJ2vuc585GiCibeB
CCkZ8BY35GopEbqKJqlRzvVYh6qvdHIhKyM/Z95oPqYbZbULonLt7tYBoiwC6OYuthgu4lrj
0kYEd27ubXwyAAdjSz4wGAuXhscdKZos4VksBa6QlfYHEASRK5n6NBiSq8db4C10g5MaIb6R
yCjithVXW016Da8zejHdSBrQpoAu63fD2udkYG32/ePlAZ+jsAYtX/mtiD9AE2EB1imfq2TG
gAErnnLHbG5kAgI2/WAq7SVkrPAas4k83zNLEYOzBi0f45cs9Kh5gbpJNdX+UbMSNNO2GTji
7F1cf1vziz1nXHT4XCKm4KlkXc0WF6Mpl9sNiALYhLPJyMFaaBG+BWs6Lew3/Zscnvu0NAsk
UEuzaoHkaVVFC77xHDwjqjOMEyBaq5XGVlUUB1SnMQMi4qlF6kQuLjT2FNxlMR0OWw4uagqV
RC4k6Tx+eng7H0/Hh8vb+eXp4X2A/EEo4yyRjjYAaXe/lFKvT7M12WYQSNWzTZFae1RoOdiX
jsd8NOTM04IPIbelaqhU3VwNOVIHUaeX0JZ0YEWk5pDHJvPI9sY059/FU2doec6kYjvUqadg
Lm7UMVrTFmYpOHXsdM9RYZodpWj+2YNCjH1JuPN802lK4eILJWXsDMFTUjsO7lqcmxy45rKL
QHch8888uz9XHPihW3qBh0JbQjo7C0zF11YalQHR3XJbM1XApZ/tMUQJC6JAN7Jq7mxkNS/6
Y8pVSd0Y/NNkYf7RuSImV5nvbQDwnIanJewIviRjtBuSyfzMxpJnjTY+iqsNTz/w16usNMXD
+Y0IM7cP/SApNeffqnWSbZ4lUaS9vrZfSs9NI1Mt8UpPfjyeJ9HTy8ev9gOvItf9JFLk0oaG
vRvw3lVXDMGGV5ZaAUIFaxUWEMg+3CYZ+GCuA8oZGpPn6uWI/+i1Ro54DCXi6XgRxA8wuHfb
xA8MIgYbVRuEqrjWDbVbZdMs5hyq2x6a3DqNFFj1UHvVZMLG+3Q8vB/hSxwOPw4XtNU+ooX3
Y7s02fHfH8f3y8AVq1hQpFxzioMtH+OqNbe1FtXLKH89XQ6nQb5vdzqMnlh7ZhApbsF71U35
fGd/ODOVVTkDiD5l+md+EO8KiGyJb6JHCVgQJnpgS47aRQGlOlZVIQqrLh3tvVhMaFlaanjB
SFzuViPDwbmhE2Me6fBcsfrqWcOBJw+hp8M1mZ54I5WcRnm61gZrs7AIGZ+Zs0s6frbmlnT9
9Fg4yqidpw3LNcVS8NF1rdwnO2prqCY43n+1P7WZ5Aoumr/+6gCIxxDc2CJpC5DYfX0vprdx
AaoMTfk+R3v8VajK1L4MWUoLmFV148l4XpT7dEWJkAJT+xsR1KpHmDlyJFsfAipnn3vtVobb
EUyyq2qA2Ye0BlnVCtUr4+rLwOTgUEzr4zBU6zVajFSicWB+EwO6EZz5Bmvy6R1BfVq1NSf2
YdyeXSEvXJvo8d3Ba++N+o0Bkg4vD0+n04F8rEdIH3nu4mWFeA3i4/HpzDf2hzOcQ/8+eH07
w3Nh4NgDLjrPT7/kQlVlfN0HwsbaZzVQTUKjNzu6ilWokOpBy1RNy/hS+e74YkPXHAX99Mwr
8h/xAjM8m0Z81oY0LfhFQB7OHMNbA8TgVirdQKHH+dng8vFyfGt/bbLq12COvLdfjueP98GP
4+mV+rQDJbagwzO8CPJ+fOHdqD0uIyNSkADxVhSnafuZfOpJpSNDPCBIpK4z6pshozbahFgz
ZzYbmXcq7ZqJKQE89/HwqnsdeoU/WiyGwjcw27cnl/aZaCh8ceDpf4+wr2NntGZXvtvCKRsL
h0NHTZL6VE2Ti1Mgj624pn3hn9RzAFWr9wufBPBY96f3w4X35NPl+Nvgew/0Ad3t/nvAi89H
2gUiDBEf8Uw/s+50AZIPPlnT0cSiqlVbOhMk4lWFIvJwudY/+LTlIv6PgfsMTxccXr7ccsn/
8DLIm4y/eFgpP98TaYTM7y5og9Jr/F9XfiqFOgU1wHcaRH9+SaNIQrn0KAVZObLxRUZsbgny
zs/PfP435ymfgu10OBo5v6lCMDG5bGMGMfn5fHoHF0qe7/F0fh28HP+295d4GWpFRyC37Sji
iYm3w+sPOBWiQs7ERRmmu/3YrtL7WTtsuctpxAKhksVS8sYXpMG/Pr5/hwgy7cewVrQtTxyn
XLU248fKVYhKExNdHh5+np7++nGBl+s8vx1Wvc6Ac4V293+UXUlz5Dayvr9fofDJPvgNtyJZ
E+EDimRVscVNBGuRLwyNLHcrRq3qkNQx9vv1DwlwwZJg9ZykykxiXxJA5pdw/ssTTO8Cf+Yi
3+07RVC6Z5/4t13qrXz1wWPkiZvfxeS5Wnoq5AgNM3N4iDXoxaAfjwG+l2s+DGK2KbzwYFTf
Xh7GMYLcBuyIiQ0mRt8ymf0tDmVFf4sdnN/WJ/qbt5Kmx5UiTWHd9RE8Pc3Uh0pGR9Z+9KOj
tURSILGAwM5WAtbHZLXkVOZprhI/kUQy8R0pA1S0hocPXHYsZedUNLyRKM5QSiVJ27EXeHBa
Zvp3Sn/zPTWr8eqsLtKe4PAAkOUUOUsijvGLgGnn5VWn1V2HlxpJ40cqC2p7bg8V9lnSFf2R
FHnKIZH1Vhza+NNw2Le/BfN2gJuQygJCAS3YHALH7TUAQCg6coQAMgxja24E4A9sOXUNOap5
lB0NA5U0Ap5yPGNNmhdVgU+AdmS9XJLKOwfG0rxPf+X6q7wuTzQ55T08mrcZvzoQ0W/DQGtG
6xBSHye5rHz/MBCml3d1iunfDcEKTCKH3co9qtdeZtMmzS24LaMkxEVKbB00xFasEz2TiSHW
fwsuiSLYpLZXIlWOVclSGuCW+W1b84nY1XqhIPLymAT7Yc9sEuTt01mgb6p09E7HymW0pPDS
thR9RCiDkp32Oe0K1ZICZAT8FqRlSWTGBRv6HeeJUST0t0synHRBa9u+PT29Pz6wLSVpDu+a
+jaLDjd9yCf/lMBOhloD/BShLTK8OV4VQcYuMMo7ijPIgQ2TsyU1DYJMZl0d6CCVsfIsjC1e
sDzZ8njzeAJQ1avZnJOjBQxLrai377CbwlEKtE9ojsNZLw5wqG5sPp4gl7pczgKG4j4PAVnI
GE2ffg+iwBmHvZ79bd7enuo6Nctg1AC1GBm5/B2OQlTvuuFBDs3Fb3irI6pZqsqFsAf9ts2z
Ki3u+6Kudj1TD7Ll2QqYZZsuOS4sXQKF62ol7zQjCkMAAxXRZucYmhO6bHRNZFz15uS6tJk3
rbdT6y4W0g66NQp0JvoA/rbuezfQZg9yWZX3+ilFuEzmM7fFjYv/i/TFwevl5T/Pr3C5ZDSW
UQBuSsPvI+3VPlTxIIMEINJFV86Pywb58nbCJZA1bTxJLtRTug6Vx4kZjHcYX/+DB/pNSS5/
/0+sA1NyzKskhxeJxaEzyh2TK2s0x90rE6YpmGdqo0b/ujy8/THEnbTWDs9in+oPGMqt8A+0
m5nwclSHQWh4WbimSgxibPEHz5u6LbmJ4MJSOgaUhhFj7p0CVc1c5cXyDuNVRBka7KfFpEAe
9yadsSjESF+uBUnW0bUZxnVVcnD9yLOD5suCUeguaN6jWOQ4Hq4XM57rxv3+tJTCbeA6Afr9
bbBaWTD2JpGVH2O20qPAJvXiULaVnhhdT5PapCc08CLXRh96zuT5gXEwAs6wtV/vFxD0Vpsf
lAx/NMkIEdTXC2Fjp1EzGrm+fjQUdC9Amiejse/FNjrebLuuDB0krbyq6r699R0/NJklOa/Z
ISEiWHOXtIzXbggmSfYgdpjwYDxjZsfUezdaIyrywOh1/FuJHYcLsSlmOd8JnSuzDKTcMCZo
MThnoRxgcYYZiysi3l9o2sDAO4/1D9rhNC+ZAsROuk2Rb3P9xkuSEJq2oRihayqlpeervhYy
K3SM9czUpyBkuJlyVxx9zyF5gq0REhNvhEnAR+oiMfGvDylxfR9d+rhNnQ3Ge5Qp45UtDJAk
olojmgJshTaLBnSsd4HuW+T9CK0J4wRoSCRJQIvDJXMwK15ZIHLw0kShLckYjfM2C8QOsu4J
Ot6PYIQZo4Pz98KPnRAz6JSXs2i1Rta5LvRXSEtzOtIzFTnEvrtSng8V1UL5QExBuLntD11e
6BNjZhtXUVxL2rWk2XO+pWpTGApxD5in5t3+Xo6LzH5Mrhm0a7Nq1+0VbktO8+8DfPtV/lbz
lqffnh7hoQ0yNiwaQJ4EXcZOuUoaJGnVw/9E7LdbpJ6c3TRFpiVzgItMlbbJitu8UmnJHjzi
5YO2oObsF+YUxLn1YUda/Rt2YGdKIn4pDPymrdMc4mzYUuWv0EZJ7ps2o7ZvWIfs6qrN5Vv1
mSaiZEriWUmBpjQA2MlqAVKA+jsejFr0crnJW23Y7LZtqVEKAAw/UDW7Y34kRZqroiwvHndT
Fb291/r0RAp2rtfTy060rmRwYJ75vQjxrgrnYIqmCuZdptf9E9lYXD2A253yak+w2PGiJhVA
pXayjTzQi0Q4kqnELNUJVX2sNVq9y81ZMlLhRyM1yURXA6QCuT2UmyJrSOppE0mR2q2ZooxO
NOCe9llWUC1xMfh3eWKLdSwEiq5VH3EE+d6OzQ0CbSbGsy1ZQIul9bYzEq4hvJF1DPNY72LM
Ka1dddrQrNsuu1XbviEV+I2x4a2syxLZvlI1GdNv76uzmkkDwbaSFCXOT7w4Ww3+zTmAI9zC
nNDmHmPc026cF3PBZ/JCwducbZJ6K1OS43E0BZMHJlQLR7MSPtGIYN0J4OtqeWmXkdIgsQHI
NplMqzTLqSkOVC9gW2L6KF8hIMQvobnkVTKRjIWTlqTtPtX3PIt5k5aoxiddfqz10rDVi2Zo
NFDO3bOVQ6vvAbbcvqG+ntQpz8u6s822c16VtZrS71lb6y000mwLAv/uPmW7r3UCUrbg1W2/
P2z0fub05EA7QIXlv7Qduhhg1ceLT0xbmN4rJd1l0j/opq/3SQ4R2jqmKGUV2z+VFQYkEK8T
yaoE9Xxj26QelH2k2VwcOSIE/Xh+/Ddmuzl8e6go2Wbg8nwopW2opEw16DdFrWVJBW0xs/3l
/QOPyTSkUmUnbYmAX4MjA0ITzg7ShjJz+JrJowJq7E0Ly1PF1BQef3gPbhZTvAEmgd2r8Q8J
6VzPAlcrBNhEx+wkRLYC/lpeymb6CvP7F5VpHccNXDdQNkjgZIW78hzfQRGvuASo/Z5vfLgE
hijyrDds/+vvDhvcokoWasmdLXsdhIETTYMinZ+4XkAdC6wllyk6f7XGznicW8mBvgUl686b
fGc0RN159sYDq6hw7Y3HkXlgiKvtl+fXf//s/nLDJu1Nu9twPkvpO6BsYIvDzc/zovmLMbSE
o6K9xmVxtoHscD48sNm5PEzWPbr8cn4HgZAOrEfLUt1rOTdvfGsj0V3pu4FjfFPszPcBYX0L
Rtbd5e3xizbV5K9bwIlbyS3fvT1//mwKdmwq7xR7d5msW08pvJotAPu6M8bEyE9zimkKikzZ
pZac9xnbazcZ6Sx8WUvC808a3DVDESIJ27fzDlMbFTkd1kutabYlbK3s1fHHm/752weYwb7f
fIj2n0d49fTx5/MLhNh7vLz++fz55mfopo+Ht89PH7/gvSQCxkOQD0uXCF9GS4sxfVU+NWk8
uASoLMny2wfbCOmUwzRJkgyAD/ICb9S2S9SoX0AoEzcIYzc2Odq2BaR90tX0HieOJpo/vX08
Oj/NpQIRCgEv99j+D1zDmxCI1VELFSpcJSCk2WgHLM0n+CKvui3ktNXKx+lgWIeQFWhCmdof
cqbksF1YLxf4vIKzilE0CBMJxZsXhclEXyUbyZWB26EbgiIQqAUFekpd3/EsdAkTR6YHPi4f
RFhNgbPG1s+paOQcrt3QTLNdR6rh3MQ4BysL7MokQleJH2BKhZItr7rxcZNsPddbbM6kidZa
88jPlFLwJljvzY5FmolpKtgdq1qoCGmmI+vBdeLhLRVqrvGDV+nDB9vEv2qF0j5OypqiPe3F
SG8x+sp1LSNghd5ISwJhvOq3pMyLe6waQmCxw7nIejmTyItXlgJGwfX0o/gHZCzQ9rOIFzjY
28IkoAH9jHTa3bpRR2Kz4csg7uIQazbgqM8hiIB8jT7RaRl6AbIsbO6C2EFK1zarxEE7HwYn
fmKYamYgAekCTUZasywijtqoJF1efwWN4cosI7Rcexbo8rkHuCnIssxiwPVRCmzotl3Jjs6k
xe2vpgaHAJjXJfqjFpDTEAPbkeXW9pcTMAOsml3aBraQSVM7d2u3ZU1tQZiUxSgpcRDcUWh4
pVguElOYr+RFD9V5uVPL43JheaBiP14aqrPvtT4UOvafBk07T+0SM26eF34VUWekCyuJxSIX
jf2gK8lYwWSnItghemaFxgZIOjWvBTJW4veWqD5TS1VH3J5nSqM+21ClJhEDBN0Q4KhG2Hpq
xywfRTjk6ULiLSBkYmnbY4JOn3ap666vzDsDmHp6SqTCpfTKArmI8JYCrBZo6NTIgbE2h60J
FwG4GgAEo+KunTgdaaaDSEdBgOAU1rPHrK/qLt9i55JBSHNKGag0K7agb0tXwQOHnVJlNwiZ
yg8cPKT6jDSh1nH8ihzO4OpWECkAN2DhqS8EaRBEsTNeMej0mQCRnglN8hxc3OYCDxEj4RQo
2yDzn1M4SUcjtzVv+ZVKFhd+sKFQssv0tCDW/cT76SetQv2m6Gv1OUnm4FuYJGE8Hsl5S0/V
6r3ZAaBhh60gb7HrNpBIAWlASMztxj9tDwq0wlZNHX6zkZWznrGAQYDAAnQ455cqDk3eolgE
/H1fAeYACmvvypI1hxjU2YND+uPb5f3y58fN/u9vT2+/Hm8+c+QX2Zh48kpfFp3z27XZ/Qb1
EGEDN0sVYylBsYZWndjicoVPxPz3rL/d/OY5Qbwgxk5msqRjZFnmNMHAIHS5nBJMTBWKvZV0
kJOIPSUG/Vb8hYsOnVVB2OtDl1c7g6UtPjK1z85g9JVZuEOimerf0JFdbglED35dEmCGuVqP
HT2s8/JgHGl9kzf4vXeyb1nppvQt6GZZUZCqPqNTZpKqmd7Rn2s3ws4newCpTQr52REoRbYj
yf3AmF+9TuyYXaFPLwkPWEsv398UCMvp09F3yo7nNsZWWBAZTccXJMbTwpLMqSfNZkFg23Vl
yzTIBZH83EAciwV0OjhEhAsC9alY4LbpUjsIjwA7n2uIC3yhwy8IDFE2FySG492CBBs7tGWL
hwB9BOREfOEdA1ksNeaZLhWWDco2W+qsijdIx0YFaa6XuMkpgMlY4FwHoS7vfQ8PiT5IjAiG
SzJlY4nyRHgWVlhDdkASbHZij3V06VnmGJVcucoTvKTCzbLJcTV+cMLEmWMlhSVD35zwtWc8
ly/Mg3NFaN82Sz0M7llXu+0ToDJYK8PWWtFgSXlFoOwOltPBgGTF9ASLi9eYRGcZ6tnUa5ZY
DkNVYBslXW4JKz0OU0vYjn3sw9wuWzwm2cR28ZAVA9/yJCSKzz0O72mfdIs9wvQptvVYxlbC
espdXITmeNdMNAw0+IvRhhTbdyb7AZIXm1qxzYGil4yG5jjt5uUer764mOh9WBvbExvX1qQm
QDNdYkyJhzviXMneQZSXayRyoZu6IO0WFjlhksul0Gw5QAZpEnhKxVsettkmTewlF+sW+9wC
A8zmYlKmdwsJcKjcku6sAhDZ0Po5r4Ke/dh7cHJQcS4FaUb3FDAuT68At3MjThrNw+cn/rh4
QxFUF/49HDt2HdmAZwCsmxQdbNeSVcvE1fWtYlY0MoQGDkDWHdPzDjvsoFZvhbj8PfdXsx+f
ZhQ9q8jgmrgg4K/Z2Tk5XRNZLAgMkoXvof8NtngyfPp6+XgC+DXksSQDu67hbVBalUcqD1Rm
UQDgsMrW1ebAdhpbYC4oNE1wIB2kXKK8376+f0aK2rDhL11Nwk+mpyjl5jQ+2Hdg4AcE7DaL
i0nH2bFASsZS2wLKyylX8YnECxmr9s/07/ePp6839etN8uX52y8372A98icb0qn6EEq+vlw+
MzJ4lCLavLgiT0h1tIQQHwSKW/YfoQcrAjJI7bhXdV5tcYVLCJUWodFVEymvqIi4prPUY4ge
BwckCM5n0XQnGVrVlnBjg1DjkasJLVbDLK28Z65d4X+G+2ZPfLptjd7fvF0e/ni8fLW1xHg+
s4cG4U6JArjCzl8Ia8c3nhLfxdHS8eJV5+YfM2zB3eUtv7NV4e6QJ0kvwFOwi8uGEE+CZZoy
v5aFME/53/Jsy3iAZ4hLtG7Gl8IAgR0g//rLluJwvLwrd4vHz0q/PBiyRBLnqWccy/imeP54
EkXafH9+ARObaRkwjaTyLpM0FP5T+JTWEt71lPOP5zBDGULITds6Mygb1vWarfjEoujwPaja
tiTZWi5wmAAPQ3FqbTETxI5A7y2LHGOXpcHVw4ka3XD3/eGFDXbrXBTgu2x/BBuHFJ9NYuNg
u1pP8bVVCNANftDg3KKw6Hicy3Ye/G2Cc2mZ6juWKnBKKkqRxXBoHbQN1Ck1nLewTXHUc3at
ckEu6T8pU5UsmLt8iRTnViufXxh4Tn+si47sAK7t0BQLCyOX9xflZWklLsOBX5CYCzsfEufn
l+dXc50YWhHjTlbjP7TfT88C/Apz22Z3ow49/LzZXZjg60VeFAZWv6uPoy9eXaUZjFf59lQW
a7KWQxdUKICgIgk7ECVH6aJWZoP5KW1IYmGDTp3zb5VKIIFC4A5lCCmzOdAxEet1Cxwcr8nN
jdhnx6zCLxqyc5egTgMAaa463A03MGlLStsxGgQyyyQfdmO28+lQmKNA5/aFB2hylsN+T7LS
gtLBmFYeP6bsGkuhyyM7GEFDac8fyqURXOZUWdcneA4gkm/x9OG1Pnb6KrPlD6u6BbM8JTHb
V9O0tbXJeAnUNlb4En5+3paJZ+2Y8dYMdbLIZQvSHGIFH7Zb2UFupvXJBiWncvwslS7UI5QL
HgpMOzoohszAv93mWy6lZjYYtjKVFiuh+HdL1aSGbwxRniuFVWIS8WQRehotVqX1ZWAMH+BN
KZWST8lxdSOPj08vT2+Xr096SEiS5tQNPQfzCR95a7kYJD0XfrCyePhzbiQZcg0EHRBhUxLP
w4w3GSNw5Fh5/Lfq6b0pE3flcJviAqea2eVOHAsePsPOBY3XoUe2VowIyZtJ5OFjDly8l7pR
gpxzqvb+xAPXgZE/5XF7pilma8iUoyhYraS7M0FQwybRhIDTikrwHUdWWbWRIEbH6wM7T3K8
4QEe+fHyyjYQFWybgCf6jkd3Y7u+snCnkYviGgBjLVn7sd9eGKq/df46VkdbFEQYogxjhE4o
jzP4zVZJtleC3QJhunqhpTQL2PqYCUUhflPMWXGPz5NIiZQJv9euUq1o7WstFscRntRaxr6A
38Fa/r0Owkj+LcAuRbgt9XBsC/kmTs5DwGqbEJxfeVR3XWLc16tjVtQNBFDpsqSrFUTHQdHA
v9znceBLQ3l/jlTz3vH+ylY0pptEqZU7BDlf4oNZmp3fJV6wxoYchMR0PMWAC0iui7o6CVas
S3uBJaJc0vgeGpAVOGu1hThCQJfdgknZKorAUshWHXjbtHQEP7gcIfapbjwkzjwQHy8naYLR
jxY6IyvQGzwcyO6+ra3tPZ1iKLEGKRxC7VnZYMdr5/Kx0pd1uhC5bAjusqVpacc7l4XwJhXh
+IgaN7LjzeLEqBX+yAyo40n4IoLseq4vGWYPRCemrupfMErH1OYBOEiELg09bGxzPo3WMsiw
oMV+EBh50TiMMR8IwRRuhuZHru9maBzmOXKgEjaQkbsiCVaBq6XVsQHhBPg6fdyGrmPpngEq
7jx20LgnLu1/8g7JYfpvMoHBL23qbcZ22kIJfGZ+Mdw0f3thJ1JDCYt9y7azL5PA07wDplvg
KS2R2MO3h0dW/FcI6GXZy6V4INeERZpfnr4+PzKGsPKU6r0pszBWFDX4rUHyJKnvzNFcx6z1
NIUp6fMfoykpa9IBmVeFiRm0L6FEa+aOKntWvGfPcTR9cTvJflOI6zRXcr5c1HnidYE2Y2J6
QbmSR5uhNHQoqa4FTgLCYX6+xjAS1pTHMVlF8dN4Q4OrAS8gCg8fkrhut3LCQNZYVn7oqBrL
yo9xo3DGCjx8VwNWgKtvjKHoNavV2gP3TZoZVJWgohMySugFrfU4sgpjRUuE3/rpgFGjFWYu
xhmx8nkUuvqnIa76MkaotWAUOdjBDThrV1H6fMeXeyOOVePutKkhgsSyBmTld2wjQGGwQPcJ
fen0xnSPYO15ypLMknViD/zIlZ2JkSPfdXVR1l5yRDu+ODOyYv68NESnCfrH969fxzgQ2mwT
d3Icit84MEs8cSTGblgNyemIr6wDShGGKCYQFvH18e8b+vfrx5en9+f/A4/0NKVyJBlhtcGf
0x8+Lm//SJ8h8sy/voO5t7oNrFeqd6Bm+GFJQrjefXl4f/q1YGJPf9wUl8u3m59ZESAEzljE
d6mI8tTfMnVcOb0wQqREPvpv054Dsiw2j7JAff777fL+ePn2dPOubzXiHsJRj1hAcn1tjRJE
fMHhdxmhI0+rc0u9tZYEowUr/GZi58qfi9/qQrw9E+qx84CXYDQ9RLG0aXEV2cdfOofVXYjA
jQE6QuztKLbXp4eXjy/SDjdS3/6/sidZblzXdX+/IpXVe1VnsB1nWvSClmhbbU0RpcTJRpVO
fLpdpzNUhntP369/AClKHEAlb9NpAxBnggCJ4e2gun3bHWRPj/u3J0cuWfL5fEKvSPJTA2nW
pup6f9jf799++fMbr2uTcVjhZDDLSm1t63UtZu5xo6t1q1DcAzbNGwaNeNjdvr6/qOxv79Bk
4iJsHnD26rAk1+xwp8fu8pyfWcslweXzYP92j6LlthBnpxMvAqmhHF+2SZTNYSWHwpQiSVY2
J5PjibxefaAQTr3dGktFdhILSgsdCM5jMfFEjw7er3DNNcNDbxaAw2U7+ZvQgRurqBUym5G3
iKIMJBbLCze5AGVn2rKUvnc37/PSUGC9jqCsCjsRQd02l4kICOZ2C9XT7+33x92bunUz2m5c
UMrLy4yt8sCsGq1BKl4XGa95BUzDmwxZCn33qCtw0Vp0BHXj+GxuBl+1EY583yGr7GhqXtra
8H6t6adiaiz+1ae/e/65+8c6obDpOhGEma1cE3ab/O7n/tEbYEI9yCNQAs3Bo1aEun5vq0LF
Q6PtDqgqVUj5LqjKwe8HKpnfz6fHnd0htNKuqqase13F241GSnjq1p+gDtKalBiFwqq06w7d
6G7LPQK3V2k8H7+//4T/Pz+97mWqeGIxy403b8vig13VBQVTmSwwfo+lQX+mUkuCeH56A/ay
Hx45tBDLtsfzM+OAUYBTW8ydHlkStgRN3IC+zlnr1Ei2BsbyzdIoaQIlw2E+0fcXQgRaZOXM
1rbxt8vFLY5FRwsFIXc6NU4q9dstKBPHJ1PqqrtjI7J0j7lIqC0Q3ZRsdjQzNLAO4PIEr+cD
q3/cP34nZEJxdH50bJ41PnE3pk//7B9QKMCVdC+za97tqGVbOr5PmplVy07l7Ns6WmJn2fn6
9BNDWn34qDIT55ZcOxPTmf1k80FZiuPsHp5RNbAXj70jJwyYDc9o4x9U/c7PqGAasFuSrMWQ
llmhDD3Iaxcs2bqjZtuj6dnxCbmBqOYaE3HlR9dB90zMCutHLgYM3h8bcn3aLs2IRkCg3Nei
0jIv/ipdKFgSuJfunr6BO0VYRBmwr+npoBnjb+g3bBqmEunsLCrTWNZHX+EKkCcnLe2nqt9M
6qhBCttkWNW/PhPhwnGMdBYPGJKY09Ychidf8G0Gy8LwnIHDCgnyOpSwvXs5wuZERbZI8lD0
taLIV2gpW0bhxmTAk5zhGg5vdz31I1liPsFFY3tGqjR8SVlENaMCEbIKY/DiLHOBdhyFYS7Y
z4OHMeYIcaxenwZCVij8VkwnAQcMSSANVueBWDKKgldpcCFLghGbVouiu/QeIVyLmHbEUmh8
xhtDS6lgdTVCsplNyfhPEonBb5MLf5C727GRYlWGvJJV27GRHImsMuC7AO2sGhtQfKIbQY87
6Cka5QhTiEAQi4GmDL3CSZKKiXKBcdADyqeiktfhI2h5kTZGUESYk2eMIhxSReIxfUQ4rqOi
Gc1JZJO0q7QZazAGBCLR6m5fL/fk6CQQAcihO3FMX5Scsr4+EO/fXqUJ43C66USZgB5YiQHE
ky1pY4UeTlBA6GtgGR63po0/kc6LLGJhI5ar8IIRR3/3IF3naQOVHQVpOgeI6YwhHf1Q6dMd
AY9Pwg3s9tl29VkyOWBIO5arjPgExzhIq3NcQntpM2I5ljJL5ng70e5CVFgOdQWpncZx+Fpi
zpEgF+Ojm4uZXBNxIOmdLKfCZrCa3qQ9hdNKqiOjne2iGnlDS5AIlpoR8RElrSLREeECG2Lj
smSLuRNDe0PtwdH2q+38IcnpRyR4VKIoM7Z6gCpReZZGZ04dae1ltZ2hj7kzsj5hBcIgFmg9
WKlgU6fHiIlS0MAxzOfYypYSwweLQdHQi1ZOhzSChWqh3U2dJe58aPzZFsdqrDnllrWzszwD
6SKhnvgtGrfzGjk2Y1lWHn1M4NZuU6AD91gnkKBZ0oe1xm/FWAlKPEG5NCbDcCBNEfG0qDsa
d8SlrDnaz84z9WI+mX6C8GJ05UoSGYU9Bz1sybO6CIXkssjXQk7kJ8oND6bux9nkZDs+sRiF
a4r7KkhSMem8OFaKsnji+dH4WdibPcXy15YWHCxKySAikYweRDZ1/FnqUTbdU9XXZSDLHZJ1
ultctpegQNLiqkEnmfOnKEcbp63Lx/ZTTzO2Rntp8NNU4dntqUabPijc65E1h4YdaOA2PZpO
cNDGuEJPOv+YNFnPJ6ejS1m6+UzP5205o12bkUj5EISKkb4Rnc4bPGZAnMfIQOHhVLrghvNs
wWBVZAFXB590rHeKMl1J57NFeBEOdKMVd7ZlKngoeeVgS/g9p0YHIBWJUd9AxCmHWr/yyAhy
HtdlZl2vRQGVkvkx9Njj/cvT/t64dczjqkist48O1C6SPMaYF66bYW/Wporqm8UMd0kZF9v5
2Ue97mtSYHkPlNCcfaAooqKm7ys7txe+bAIegaoQrQRx9Jkfq00ThupTVBiaJ9wmPLbDDVLH
5PKDdkgrWhGzwI2A5sThanqS8Z6geB7uSdcW+aiEkbno1vT866NZUGY/IwOnnd4/KgjjdMJU
rcqAFa+yEw6XImMxeGiriirjmb9cpbqTX1bMv5leXx28vdzeyYcH924aRtCKT1ln+JQMws+C
0eLrQIERZ2r3Y2mdFPhMFE0VccPl28eZyROscjv8EjT9iB45xQXrNckViCEYvnTvejRY2IYP
oAFhjhqMb58XMTU/SJIxqbB0CVB8BJpTUnAVasBGCZXvzoQsODp/2cAislwrak61TebEKVO+
lW+q7mM2kQuoQVvnlZjOJ4Z9IULtriEky7q4kv7jtxcDqIRdXRpniUgKMxcq/JJunXYlIk0y
98IbQJ1ntuPTbKyHCv6fq1PKWicajiw8uJh6IllLIYAF0wKARTzmyRwVTU6nCs8KO8IQ/vbi
p5g40bn26ifb3b/3d7vBi1ia/u1/7g7UWW49tV2CihCzGjaTQD8kQTYIcAmKRsNE8W09a03/
wQ7QblldVx4dPq4nsISi1EcJHjVVYuffANxRG5CQATd3cEMzs0XEorXliFjxBHoFOPKbrxIx
tOor3divdkMNqBNrVxKiFQYGdrMEia3XhB61WopZCLeo/bYP3D5JRz5dzkK9vilyrjpu8A56
kjByky0RaZjK8wUbmJyLBKRCxCe5lZAE3dDRreXaoqAnk+dRdV3KvH+/SDBsNpBi4RDB32Yt
QHXJKzp3y1Ko8MmGsNoDjF0sQV4+JV0Gc8vQkC51DDrLZokADmba0l80RW3ktSkrYBYK2F6x
KneGSiG8uLIDfpnV7SVtya5wlAePLDWqrWwsrKmLpQjsKoW010qDWVqNjkWNaQffRfM1CQqY
jpRdq1IGdauHYsLMpEKWCX9o1YygZekVA7ljWaRpcUU03fgG9QQr1pyBy3FRbYPp9gzKjMPY
FaW1rDpnlrsfO4uxLoXkRKQA0lEr8vh3EFn/jC9jyaMHFq1XoijO8WbX3oNfizQJPHrfwBcB
htDES49X6CbRzVA2QoX4c8nqP/kW/81ruqGAs6Y8E/Cd0+xLRUTuqLoPvYapp0uMuz0/Oh0Y
kVu+guhvkgLDawtefzl8f/vrrA/YndcOg5cAL0+ShFZX5NCMdl89hr3u3u+fDv6ihkU6pdqj
IEEb12/PROJzYW3GN0cgDgkmiE3QfdVGgQaVxhU3+OSGV7nZbSebU52V3k+K/yuEc6iDhrGM
gemCZG4I7urPsp9yfY3gj01fDsavxmNAxZi3xqioMDp76PxisTOrHQCm0OJry1ABXB4Zzrz0
wC7weyi49Dp8IANKZSYNHObBHi2cDrnH89elOuh9SLeYJx78Cg5A7kZ/GLAYYhwPyeW1ixWg
trHKA/sLoYebK2fgURqrBSdS/EIafERBYzw80gt5sgu3khvL3lrB0pvCr69Cq1L6Dkbhm0XA
oqRrSwbcB3S6wCOzSQTndzHeL0mGQdz9dirckl2CLgsdofn1IgkvtQi0e3IpiYuGibW5VDRE
yVxKQjZVagutzlb6PkITxph8vWwxZ3jAdsIllRrnSGMtOpSeHOu3nk4uwbGC7JXSg9ObOVle
aOyHCm/G8Teipl+me4q5DIW2SDdyKYy1nWcLHsdmfvVhbiq2yjjIi3L61KI66iWurcMusiSH
DWkdxx2kzUE5uTTSDmuGm+kiBmZWhrjVRb6dOwwLQCc0yE9K2NVFnX6iRm/QB/t3f8pvMN4m
ZjAVX6aT2Xzik6Woy2p+Yj2mKhKY7h5NX45ruvln6dYRSWnTnc0HNmcc3gqJSyiMNRBu7W6H
9UB9rh2amijYatHHpXolHkI9hx7REN3RxmAY1XDh6pqP+KwKXDuDOHEZ4ppNUCKoCvcI7iD+
Au4xIWbUE9yYlr55Kqwfw2jtX5/Ozo7Pf58a2T6RQEvCLUjC1BWwSXJ6ZLgI2JjTY7veHnNm
elI6mFkQY4XMcHC0jaRNFDA7c4goe36HxIoq4eDo2zmHiA7O7xDRZpUOEeXE6ZCcBwb0/Ogk
2I9z0rfT+Tw8DOdzKjyT3a7Tufs5KJC4Glsq9oX17XQWXD+AmrrlynxOgTJ1nVO7PA2euUtO
IygXABM/p8s7DvU5NI8af2rvJA0+D7VvGl6HPUl4FfYklLs/EmyK5Kyt7DZJWOM2KGMRHryM
Cm6o8REH4SuivoxA8uBNVYx9XBUgWbDcHnCJua6SNE0iH7NiPDV9H3p4xfnGByfQQAxj6SPy
Jqn94mV/ySbVTbVRaX8MRFMvjdeNJk9wNQ8kHQB0gypjaXIjXe36rGrGg3jRXl2YKrB1964C
cuzu3l/QJcdLFLfhZlJo/NVW/KLhovbldpCSRQKaMwiFQFiBME4dbHWFVnOxKnm4r1eXqBpu
BnXj1228Bj2MV7KHVJlII+87k4hpdW04fjt1DzORCWmUXFdJREkP/o26hlhXF7q8nNdXRbUh
MCWrjbmUSZLWrIp5Dv3DK1y8s2tZmhYRU5cng4zrklF3U0Ulr3bVs6P5VAmdj+SXqMyteVqa
qjaJVk09/PP12/7xz/fX3cvD0/3u9x+7n8+7l0NiDNOCxY4vj0tyzTJGjIlgSzTgTmICh9fu
cXGVoyP0B+iWsyo1Zkje+UskXjHxFEcnUgqzOa4BMpXtx9GZP/pIYmGWgLsE8rEPLQf2gKUY
u1HXSIAwQiCoQ01lNX1AM3GdZRxXr9wl1LuiOfTwQ0fUb8uoapN4C2qKiUWvs1Tdmg3VATxf
9Sj6URFoREITGSRaTeqrOdw/3B5SFGtQKluxZlO79Sb6y+Hrj1tTIEUCeaeEKU+SiJ5CJKo4
iwkag4KVZcUS4Y2Dhsv0ixgWkcq6YA6zM0N2b4BtNlytX5XP0SeJEyHziqxlehFD9r+0LCHg
Z4uiPoj0TZNQgTQlRRwrjcDMpdmN6MAUmXHe4fY7/Hn7eI/xUn7Df+6f/vP426/bh1v4dXv/
vH/87fX2rx1UtL//bf/4tvuOx8Zv357/OlQnyWb38rj7efDj9uV+J71JhxOlC+L+8PTy62D/
uMfABvv/3nZRXLoGRJF0A8M3nvaSobt5gqlP6hr2n3G1S1HdgJJj7ikAoefPxmMFBgpYsC49
8HhukWIV5GM+UKGvAzL0foTNV0JNsQQ5wiYwIsCTA6PR4XHtY1+5Z7iufFtU6mnUvJ+WCWC7
SFcWLONZVF670K15xa9A5YULga0Sn8Bui4pLY67wWMeJUa9LL7+e354O7p5edgdPLwfqnDGm
XxLDQK6stD0WeObDYX+TQJ9UbKKkXJunooPwP5G8hwL6pFW+omAkYa9sP7gND7aEhRq/KUuf
emMasugS8GLEJwWplK2Icjt48IOeXalMmi7VajmdnWVN6iHyJqWBfk2lfku3wfIPMelNvQZJ
0oNLgdgd6D66tXoze//2c3/3+9+7Xwd3cpF+f7l9/vHLW5uVYF7xsb9AuG321ENj2r9pwAvK
2qtHV7GV/bRbu9nMgwF3v+Sz4+Ppue4ge3/7gRET7m7fdvcH/FH2EqNB/Gf/9uOAvb4+3e0l
Kr59u/W6HUUZ0Z9VRB2I+pM1KAhsNoGT93p6NDkmtugqEbBEiIIFv0go86J+INYMeOql7ttC
xvdC0fXVb/nCCieqoUvK2UYj68ofUGKBczOkegdL5ZOfDSuWPl2J7XIr2daCaCuICW7WEWfr
rMNjjLfqdZP5bcfUB3r81revP/rh84YqY5StpeaEGfP325bq3KWi1GE+dq9v/lxV0dHML06C
/cHaStbsghcp2/DZglhUCkPmHO7rqaeTOFn6rIw8BYKjrhEycAIxo1lMBT3skX6BWQIrXrrk
+eNaZbEVWU1vIUuaHoCz4xMKfDwlTss1O/KB2ZHPgWoQbBbFykNclapctaz2zz8sM86eD/hb
C2CY+cSf3OJK5kcOIXRoU2/7Msx/nPi8O2J4lRH6SNTHxEJCOHUxp48DLryiluoc82roeKQ/
yrwqVQYCjzVmI2unviqWCbFSO/gQ+FVNyNPDM0aOsUVw3YllattTdPztpvBgZ3N/7aj3TQ+2
9tcvvu3oFlWgezw9HOTvD992LzpgoxPnUa+QXCRtVFaktZ7uRLVYyTTtXqUS0/Eut2SFgw0/
dlRLooh8bTEovHq/JqhtcPToMaVsQ6zEPFSuvPxz/+3lFrSDl6f3t/0jcchhnDdqG8n4b4rt
abd3r0kGDYlTa7T/nKpCkdCoXhAZL2GQVyh0HOhbz2gr+QA9c7mIiiuCOcoN4vGSxlrZlxAe
J0PeoYgCDHh9Ra1Dfok65VWSh+K4GISds18Vsu4eKMVxIM20UatMFcR4yNLDIazjz1JC9z8i
vAi4UFgkmHJsdOMDVZKtah61nZBAlaO8zdx++nRdRk2Ph+BgsiXfYiIVevqiqOIfdkf6r4uA
a6g5hFlarJKoXW3puDFWs2bNh0Taza+IhDxvnZPlo0/WUUMMm30DJn1erXsCjSybRdrRiGYR
JKvLzKLp52B7PDlvI151l/688xYYCik3kThDm6hLxGIZLoUuu4M/mF+edjZ3dLmnUqPEj43b
6mSF9/YlV2ZL0pSte47ouTmG8/xLamCvB389vRy87r8/qjBedz92d3/vH78bPi6YcYHLa1as
5/AOPn79E78Ashb01D+edw/9ZaoyWTQfV6rEvI3w8eLLofs139YVMwfV+96jUIY/88n5SU/J
4T8xq64/bAwcOtEmTUT9CQp5MuL/sNWmZQWSVfyyUCMtSWiD4k+Mva59keTYfmkPv/zSB04N
ncHq3su8D9OQdsHzCKQM+Ug0vJOxkJPBIgFBGhO6GyOvo9UskzyGfyoYDCCz+E1RxQkZzaFK
Mt7mTbbg5h2wekdjxhVMXgxBcSJM+IzG563lYWPjSZQDBm0K+B/IOybjjKYnNoWvcEFBddPa
X9k2BRLQv3SSvFsSAIPhi+sz4lOFCbE7ScKqq9Dzh6KAWaCrPrEk32hu9cQwigF5wFd4IyNj
SafhGhOXx0VmdH1A0fZcCFWGjDYcbRJRzrQl/BslaTlQ00LNhlIlm3ZqFtSwSjNGAKjJ9tEG
aBJM0W9vEOz+brdnJx5MOoyXPm3CzGnrgKzKKFi9hi3lITCoiF/uIvrqweypGzoEeBJs6VwW
fO7vQvNZWbOVaG39kKZvtczzlVmPAphuWpljsqpixuGGzy1JYfmnK5DPKBAem8+QOSayjvGR
jJXyEdo86XXgv7h/zOsCFxodlg+BUcqkzd5aak9ECfIJAmmXfQDiQD0weCVREqLyItcITBJn
heREfJTR8mssHwuTEe8oPQD9iUA9G69SNX0WxyqbjIlNWyyX8iWK+G6VFsZyxF8Eh+jXR11k
ic2j0pu2Zmb48OoCVR3jgMjKxDZjNh6qB262jI36MBxChTe8dWUtJFhcuimXsSj8Bq54jTbz
xTI2V+CyyDGyXYkLzvD8QujZP+ahIkH4NAhDYMWAEBgtojA6JYcz5mVROzAlbcCpipkl+wdz
AQzfWRIlxoOinw6LxVe2CuQMrlHYIc8vIxyvI224oyQ1frFO4+TIH8IOWQWR6RgyysrYfGYz
cY2LZCKfovVOEQ++2/1jpRZpJfT5Zf/49reK+vuwezWfhg1XJBC5Nq3rM2FjI2aHBpVzJo1y
20WTYBBY82VIWfm2oDqlIFql/bvbaZDiokl4/WXer/1OEfBK6CnkY37XuJin5rKNr3OGacMd
t1wLPKR46sXabIHmCi2vKqCjnfaCw9lf7e1/7n5/2z90Au6rJL1T8Bff0msJhwGXfp/Slv1f
xmIFFVlgKBLzsECjCvn2x4RlmrAGOGZnTeCEgXkiZlH1GdQEKbBnichYbR5QLka2qS3y1PKI
VaUog5wrzjYyHSzwSlr4/+xoyLGT1477O72M49239+/f8c09eXx9e3nHLAxWfHTUyUETqQwF
wAD27/08lzYdk3+mFJWKkUuX0MXPFWh4l8OxNihu3ShYBh4KIg+SK/yXGDUhX24lQYZu//SJ
ZZfkuiCZDF0er5tVbJwQ3a/BjA9+t+siL5rOGsHX1EzKrsvd3qRM/pDKeXceYGhsgbuSxMnt
qpjwl8PL6XI6mRxaZNhdtdWBq5ReLzYx9XbYixjNQjCM+JcnNejG7gxILLlIP7Xs7GlWZmn+
BKMno1mHaXrTl2v4hCJ7A9We5yLprFKs4hAv5RKKJ+O3xVVuR2SW0LJIRJHTmu5QMHCSpV8l
HJ/ABuhbxY6BpIyaBrkeu9EBeTUF1uBujo/gaAMjRQV1uTE9mUwmbu09bUADdah6m5/lMlir
NGcSkekE1fVUyiQNHkLWKRGtQbBWSJ6DvrTmpHSoCrENyDRMPsq6fuEuTbVwWwTAcgV64srU
HnoRW5EkVd0wYm12iGCFKrO9NJlyq+1YPMrRRsXGjMvBQP/4JWxhchh9ZGdMtmG4a/3Lf4VF
O1+U2fJi2Ndx3HtB2TZcww5zGrBWseXVCzgSHRRPz6+/HWBqsPdndSStbx+/m+7aDOPSox9q
YfbZAmPQlAbWqY2UMnRTD464yHSbcsg4PBy4xbIOInvLR5NM1vAZmr5pxiLAGto1BhSsQa8h
d/jVBRz6cPTHBcU75N2rqsUOMzM2osrOHc7++3c88E0u6OyosA4n8ajB0jELqNLd1Y+zsuHc
TZahbhjRiGVg+//z+rx/RMMW6M/D+9vunx38Z/d298cff/zvsECUjTKWvZJKRach2e79l2OR
TWQJ2Ct3w6Bm39R8yz3xQkD7bbPmbu/S5FdXCgM8u7jqbOOdcamuBM+oZxiFlm3UqrHRbtDe
PABezIkv02MXLG2GRIc9cbGKj3ZahCQ5HyORGqKim3sVJVXUpKzqDH4V1cztcUc9csIpTR0G
jY+SdTMr7x+0TkkfnHIUYXej4h46uIa50jcIRj7apfW1lW7o/7F23Q4AV5RnCXUj0qt25pKR
CgEa5Da54DyGPatuRsPnsBInbN77t5Kz7m/fbg9QwLrDxwAzr54a3cQOftWdRK70am+Plf+F
ck8BzYicGSny5G3MaobaIGa2CuXNGm28W2tU8c5RwY9rCYuUEgadGdbqXtS0MkvzMPMGJrSm
LCKQ84wiiMFDIjzepeLYn1+zqYn31gIC+YXwubbZcOnw067kzgUhIili89i2B8IdQjiLlJZZ
EfqlRaniT4EcjdeP9Djg1XoeXdcFZc2XF6XqX+UIN8smVyrxOBb6V65pGn3f0PsuWwUolpbJ
CHDSfruKHRIMACMnBSlBrs9rVwCLug9VKQNSNQfzGbVO3arWyD5H5M2YGyREZp6V9NYjIfyp
cbTFVYLXBG7HPXp9jxUgNM5OfSXitBjlHFyWftH+DPVTTk4PvYqsSSJJ+sLgUMdn5kAgz+Gg
CqQRqi5AUlsSJJYk5C2lq5TVHrQQeYE+Mt6wYjo96oNuvXVrSnhrReQg368Li+06qF4VEFek
YewCDgRMbaRGyXMB0XCW55iiELqqPiANQTBQhrQnKXzuI67zeh3OjKw6qpZvH5LY7pPcTPSr
wMDjhk0x+n6gq2OpfGrALlorUeHVPsU/TSWcU0bvlKi47AfJj3egJ7BmwPbLIDs3Wm2Skpt9
CPwoN1jMU1AO7CnjPINTUV6oYfiz4FkjGGbQ8c+7hz0oBNSBJzujhRCfCyiHLXW9az3MZLGM
9gdcgTa10VLySFNV8BR5fAQCoTmtNu/X693rGwpbqORET//evdx+N9Jkbpo8sQ5qCaDrsiiC
rVVovpXjG5p1RSTPCnk5N7g6dwIQXmrLRKJf1T2vFYBvKVdnmJ7yhlXx1vriBjbDkhQviWyI
unPyXtmcUkj3W4M4wR224doXmmwW0CDL6MQYuxFLFLHH6teXr2MXjRvb0UrdVAjgY7B51aIu
rT4iPc1f4MSWxxp0BbckWsyGKsZQixnP7I08AFyHNXKNOpK8DEyJHlFF1GQuJ3WE/kWi1gO9
WZyHp/8DPoG0cfObAQA=

--h31gzZEtNLTqOjlF--
