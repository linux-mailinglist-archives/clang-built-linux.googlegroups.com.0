Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3UZ6GAQMGQENHPDZAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A92327602
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Mar 2021 03:09:52 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id v6sf6596442pff.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 18:09:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614564591; cv=pass;
        d=google.com; s=arc-20160816;
        b=boRNXTaBk6iz+8EfQpmMNKjTdasUDLAbY5rskSFK/pXDkq15dCBg43QF4zVWJhKGtq
         PtnGoMgi3Yplf4Gs/rGMv+Rrcw5d878ni3SnYnYodcT0SAHakQhrsCyVn2XA80gs0n0W
         sD6myGBrTQa9RvSNRPcZ297OYQs+ag7KXPl7Vq93Q4bIQPOtjejkySY2foRsMLoVouiq
         h0gEqR0xRXTgiDhoVHD+vK6wvczj45iUD6fY/zCVDn+fiVvCaw9f0uPwoVNm5MeCVXb1
         6W5aZPKUwpApG94Nyrc0VMAow894O5yRPoA12Rf0arYDhzCGEoXe+NzrQRPUhv52sQHi
         1O5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=d6pKxD3UCn5Q5ff5/J755gBXYQmeWQwkX5zsZLQJgIM=;
        b=pxzcTOeFLJZxvBcjX/9o01jzg0ZGIRj3mNU39wKolr5LTHdE4Qt7rAZmv2WGrj+3KD
         snTbv9IbSWhom90G7joKBOxOIpEPe/OBkiE6F2N6tor+NB4ewAWVoGuJYz6EuuyWklwE
         SVywVIPOd1oL6nlLByOnTAerJhVXg/BVVmi/jdXuxBk6Wt2EbZfLbcL2M0Lcv30qQIbv
         2OZ1thKU7mbIhCKTeACWd40PRNTEupPL4lv6wU7olpxiqnd+J6MO6mtHtOR25Nd841te
         AnCDp0zjdUA3Ij1VJD6g72cdXZi9f+x95f95I2uauJeQUsJ5pxl6Q2HitCbo2Jrx/CRf
         k3mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d6pKxD3UCn5Q5ff5/J755gBXYQmeWQwkX5zsZLQJgIM=;
        b=dGGtx2Sb+cJyGXEG9wzGuD0dXyv5z9uzrtEpYENSZ83PZtdZWRrqXohs0r2QxtiKZb
         6eC54HOmMrK+ERXH5P5I9t4rA6PqPGPFhgxXbJV35o+l7fxEbGvU8xdluVLQb3CWdhEi
         0aALEnEWtLCGZ4WBkQMOOrf3vL9W9qlxnkZ9hgQsFImGR3jFnZKtSea5tSo2OBrcgOWH
         aBLx+NOyvWQrsEQdoGu+B4Bzn6FEUR+bUdStmHANnqpM0BgCKf9NC+Ncp/skacYWJChW
         67jFC/HYwMe0hUoRpYVDarcPYMvZC7gqkZuTRFOknRLbLZ8SdKZv3xTqlqc+BAm3T2mX
         Knag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d6pKxD3UCn5Q5ff5/J755gBXYQmeWQwkX5zsZLQJgIM=;
        b=J4yXdV+VJdIl4fAmx27YvOyRvwVEoyKMvxq77b59mkHLCAAFztbOkWhrlTQf042v2F
         BD+LIg4fWt37kZqevPSvEx6X8ltNOPNFE9sv1EqWOhvE5BmDq4Y3Zpy8FnQA9ARSWOwe
         yB3s/s4LcA3ltud+bImtnfMcKVcaiteaYBZ6QlFVr47yN7tq7O1wQPG1wspGOFObqygy
         Yy4OBxzxOPct9HNmoo1NVvWgN3KDZBnOmRkjAUMatzDks6qFgHpzrTvhN9aAvZRfkhv2
         7e7yJvaZtCr+rnmiELo7DaXP6tsRjQeV6kDgSw0gHBc+CDcKas9yAkTQrswH0lK7Qy/Y
         /LfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TnEEI7vMCljN+Wwga25XyFFROtRdXfIOhnN6n7QQfkLbJpcZ6
	Pjz8JlK9geoxZZMaGiOi7pM=
X-Google-Smtp-Source: ABdhPJwMZWegQOGVZKKMMOH2zqy2TNmFcwBI1Xxdd+ExGNfXqQcH9L+UH7urT1xCMTRMyHHSBr6oYA==
X-Received: by 2002:a17:90a:5417:: with SMTP id z23mr14725002pjh.111.1614564590557;
        Sun, 28 Feb 2021 18:09:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8a52:: with SMTP id n18ls6253412pfa.9.gmail; Sun, 28 Feb
 2021 18:09:50 -0800 (PST)
X-Received: by 2002:a62:1896:0:b029:197:491c:be38 with SMTP id 144-20020a6218960000b0290197491cbe38mr12900626pfy.15.1614564589801;
        Sun, 28 Feb 2021 18:09:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614564589; cv=none;
        d=google.com; s=arc-20160816;
        b=ipP0tO0cHrw5YzSxXCZ/XXzQ0bG3lO9HTA1+1SyAUT5xiIqbDPMeY3+rOr3fp5yJaz
         jNv1cXYuzyTL3AfGtGKvRFYx73yhAqJ1TTelzbklvIRCmZbnkHIlMQXXs9BeVjpvuQIA
         aBUjKlm7up22GQC5K9hLfJyzEfSPTCeGbny+6MRvK4E6EJ4wE7ngNbxux9BKzPhjOmfs
         WbqnNiiaqaLmuwI7/z7mX7MTzVv/+5mVxH4K2RvA6KO30mQnWObaaIR9wi3nMYo+kvjE
         Hm39noYBWZXA/ZQ85q1RgOJfTzRjp4DCaIUBCm8Rq7Hqb8/vcJ59jqTqEQhS/8epsAlC
         Qt/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :from:date:ironport-sdr:ironport-sdr;
        bh=AIHe4hHx2LaJ4cvm8l8lmzvh2AHxYUq6PAHzg05WR30=;
        b=u0KkHYPuQEpVt4qFgl0n93MEFfch4Dk/CcZqjG0aD/cCJ0kQK2c9BhgTp5n33Ibn3X
         dF2FHtPo0+BdcGqB3tUDnqqfTGjAcNLlKdGLiS8CE+H2fqVfeMHTda8mgqV12LR9YM91
         6qLNkEWizMxpPwQd7EyLIShg2+ZEp+ItgOKeY8Yrj8mD6RuMTD9Lw0US8INv9klsFf6H
         +ilcRPfbAfiSapOQ8jbbv3TkJnQp+1g2o9jFzXyIdqlExbtmwjH9qIkyVD+fcNql+NYq
         cTKeSnxOoWKC1b+f9L2us2RG8A6jSlfWfWwI/ErDkMLj4TG1r/8O3qmQyJPHd+af0tPU
         LLEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id n2si990372pjp.2.2021.02.28.18.09.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2021 18:09:49 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: wd7ey5qV9bxR7/ff5qDOsk43ygLBGcRCqcLnMEeooFbC5Zcpwz4r6jvMrHl7+CV0qMKpI07Djn
 yZ1P1q++i/Gg==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="173967921"
X-IronPort-AV: E=Sophos;i="5.81,214,1610438400"; 
   d="gz'50?scan'50,208,50";a="173967921"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Feb 2021 18:09:49 -0800
IronPort-SDR: PExTz2zr0B5RJIkA8RWtSoyzXhYG89641YXnfucI5/QaKU8FYvKe7ZY4t2sEthNNpOoaqWJO6K
 JNSxG3fJrhvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,214,1610438400"; 
   d="gz'50?scan'50,208,50";a="504344750"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 28 Feb 2021 18:09:46 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lGY0H-0004Mn-Td; Mon, 01 Mar 2021 02:09:45 +0000
Date: Mon, 1 Mar 2021 10:09:27 +0800
From: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: drivers/firmware/dmi_scan.c:405:41: warning: taking address of
 packed member 'handle' of class or structure 'dmi_header' may result in an
 unaligned pointer value
Message-ID: <202103011021.IKe6BA6v-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="zYM0uCDKw75PZbzx"
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


--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Thomas,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   fe07bfda2fb9cdef8a4d4008a409bb02f35f1bd8
commit: ba15533275dd70238b523417d222d43fb40dac9d Merge tag 'v5.6' into mips-next
date:   11 months ago
config: mips-randconfig-r011-20210301 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b077d82b00d81934c7c27ac89dd8b0e7f448bded)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ba15533275dd70238b523417d222d43fb40dac9d
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout ba15533275dd70238b523417d222d43fb40dac9d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/firmware/dmi_scan.c:5:
   In file included from include/linux/module.h:16:
   In file included from include/linux/kmod.h:9:
   In file included from include/linux/umh.h:4:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:119:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpu_to_node(raw_smp_processor_id());
                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from drivers/firmware/dmi_scan.c:5:
   In file included from include/linux/module.h:16:
   In file included from include/linux/kmod.h:9:
   In file included from include/linux/umh.h:4:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:193:9: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpu_to_node(cpu);
                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
   In file included from drivers/firmware/dmi_scan.c:5:
   In file included from include/linux/module.h:16:
   In file included from include/linux/kmod.h:9:
   In file included from include/linux/umh.h:4:
   In file included from include/linux/gfp.h:9:
   include/linux/topology.h:227:25: error: implicit declaration of function 'cpu_logical_map' [-Werror,-Wimplicit-function-declaration]
           return cpumask_of_node(cpu_to_node(cpu));
                                  ^
   arch/mips/include/asm/mach-loongson64/topology.h:7:27: note: expanded from macro 'cpu_to_node'
   #define cpu_to_node(cpu)        (cpu_logical_map(cpu) >> 2)
                                    ^
>> drivers/firmware/dmi_scan.c:405:41: warning: taking address of packed member 'handle' of class or structure 'dmi_header' may result in an unaligned pointer value [-Waddress-of-packed-member]
           dmi_memdev[nr].handle = get_unaligned(&dm->handle);
                                                  ^~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_unaligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:11:52: note: expanded from macro '__get_unaligned_le'
   #define __get_unaligned_le(ptr) ((__force typeof(*(ptr)))({                     \
                                                      ^~~
>> drivers/firmware/dmi_scan.c:405:41: warning: taking address of packed member 'handle' of class or structure 'dmi_header' may result in an unaligned pointer value [-Waddress-of-packed-member]
           dmi_memdev[nr].handle = get_unaligned(&dm->handle);
                                                  ^~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_unaligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:12:33: note: expanded from macro '__get_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) == 1, *(ptr),                      \
                                          ^~~
>> drivers/firmware/dmi_scan.c:405:41: warning: taking address of packed member 'handle' of class or structure 'dmi_header' may result in an unaligned pointer value [-Waddress-of-packed-member]
           dmi_memdev[nr].handle = get_unaligned(&dm->handle);
                                                  ^~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_unaligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:12:47: note: expanded from macro '__get_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) == 1, *(ptr),                      \
                                                        ^~~
>> drivers/firmware/dmi_scan.c:405:41: warning: taking address of packed member 'handle' of class or structure 'dmi_header' may result in an unaligned pointer value [-Waddress-of-packed-member]
           dmi_memdev[nr].handle = get_unaligned(&dm->handle);
                                                  ^~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_unaligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:13:33: note: expanded from macro '__get_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) == 2, get_unaligned_le16((ptr)),   \
                                          ^~~
>> drivers/firmware/dmi_scan.c:405:41: warning: taking address of packed member 'handle' of class or structure 'dmi_header' may result in an unaligned pointer value [-Waddress-of-packed-member]
           dmi_memdev[nr].handle = get_unaligned(&dm->handle);
                                                  ^~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_unaligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:14:33: note: expanded from macro '__get_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) == 4, get_unaligned_le32((ptr)),   \
                                          ^~~
>> drivers/firmware/dmi_scan.c:405:41: warning: taking address of packed member 'handle' of class or structure 'dmi_header' may result in an unaligned pointer value [-Waddress-of-packed-member]
           dmi_memdev[nr].handle = get_unaligned(&dm->handle);
                                                  ^~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_unaligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:14:65: note: expanded from macro '__get_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) == 4, get_unaligned_le32((ptr)),   \
                                                                          ^~~
>> drivers/firmware/dmi_scan.c:405:41: warning: taking address of packed member 'handle' of class or structure 'dmi_header' may result in an unaligned pointer value [-Waddress-of-packed-member]
           dmi_memdev[nr].handle = get_unaligned(&dm->handle);
                                                  ^~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_unaligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:15:33: note: expanded from macro '__get_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) == 8, get_unaligned_le64((ptr)),   \
                                          ^~~
>> drivers/firmware/dmi_scan.c:405:41: warning: taking address of packed member 'handle' of class or structure 'dmi_header' may result in an unaligned pointer value [-Waddress-of-packed-member]
           dmi_memdev[nr].handle = get_unaligned(&dm->handle);
                                                  ^~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_unaligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:15:65: note: expanded from macro '__get_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) == 8, get_unaligned_le64((ptr)),   \
                                                                          ^~~
   8 warnings and 3 errors generated.


vim +405 drivers/firmware/dmi_scan.c

dd6dad4288cb93 Chen, Gong   2013-10-18  391  
dd6dad4288cb93 Chen, Gong   2013-10-18  392  static void __init save_mem_devices(const struct dmi_header *dm, void *v)
dd6dad4288cb93 Chen, Gong   2013-10-18  393  {
dd6dad4288cb93 Chen, Gong   2013-10-18  394  	const char *d = (const char *)dm;
dd6dad4288cb93 Chen, Gong   2013-10-18  395  	static int nr;
6deae96b42eb1f Tony Luck    2018-03-12  396  	u64 bytes;
6deae96b42eb1f Tony Luck    2018-03-12  397  	u16 size;
dd6dad4288cb93 Chen, Gong   2013-10-18  398  
9e0afe3910ff7e Jean Delvare 2019-12-03  399  	if (dm->type != DMI_ENTRY_MEM_DEVICE || dm->length < 0x13)
dd6dad4288cb93 Chen, Gong   2013-10-18  400  		return;
dd6dad4288cb93 Chen, Gong   2013-10-18  401  	if (nr >= dmi_memdev_nr) {
dd6dad4288cb93 Chen, Gong   2013-10-18  402  		pr_warn(FW_BUG "Too many DIMM entries in SMBIOS table\n");
dd6dad4288cb93 Chen, Gong   2013-10-18  403  		return;
dd6dad4288cb93 Chen, Gong   2013-10-18  404  	}
0841c04d65937a Tony Luck    2013-11-01 @405  	dmi_memdev[nr].handle = get_unaligned(&dm->handle);
dd6dad4288cb93 Chen, Gong   2013-10-18  406  	dmi_memdev[nr].device = dmi_string(dm, d[0x10]);
dd6dad4288cb93 Chen, Gong   2013-10-18  407  	dmi_memdev[nr].bank = dmi_string(dm, d[0x11]);
9e0afe3910ff7e Jean Delvare 2019-12-03  408  	dmi_memdev[nr].type = d[0x12];
6deae96b42eb1f Tony Luck    2018-03-12  409  
6deae96b42eb1f Tony Luck    2018-03-12  410  	size = get_unaligned((u16 *)&d[0xC]);
6deae96b42eb1f Tony Luck    2018-03-12  411  	if (size == 0)
6deae96b42eb1f Tony Luck    2018-03-12  412  		bytes = 0;
6deae96b42eb1f Tony Luck    2018-03-12  413  	else if (size == 0xffff)
6deae96b42eb1f Tony Luck    2018-03-12  414  		bytes = ~0ull;
6deae96b42eb1f Tony Luck    2018-03-12  415  	else if (size & 0x8000)
6deae96b42eb1f Tony Luck    2018-03-12  416  		bytes = (u64)(size & 0x7fff) << 10;
81dde26de9c08b Jean Delvare 2019-10-14  417  	else if (size != 0x7fff || dm->length < 0x20)
6deae96b42eb1f Tony Luck    2018-03-12  418  		bytes = (u64)size << 20;
6deae96b42eb1f Tony Luck    2018-03-12  419  	else
6deae96b42eb1f Tony Luck    2018-03-12  420  		bytes = (u64)get_unaligned((u32 *)&d[0x1C]) << 20;
6deae96b42eb1f Tony Luck    2018-03-12  421  
6deae96b42eb1f Tony Luck    2018-03-12  422  	dmi_memdev[nr].size = bytes;
dd6dad4288cb93 Chen, Gong   2013-10-18  423  	nr++;
dd6dad4288cb93 Chen, Gong   2013-10-18  424  }
dd6dad4288cb93 Chen, Gong   2013-10-18  425  

:::::: The code at line 405 was first introduced by commit
:::::: 0841c04d65937ad2808f59c43cb54a92473c8f0e dmi: Avoid unaligned memory access in save_mem_devices()

:::::: TO: Luck, Tony <tony.luck@intel.com>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103011021.IKe6BA6v-lkp%40intel.com.

--zYM0uCDKw75PZbzx
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--zYM0uCDKw75PZbzx--
