Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3WB73UQKGQEE5VUXOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E3D79E07
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 03:44:16 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id n1sf34244949plk.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 18:44:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564451054; cv=pass;
        d=google.com; s=arc-20160816;
        b=i+9yskXj465iD+fhe5R48gkfnXlEBaDTWWo0eaBf66+oVYLk63fAQzYvTj4IX7OMNB
         x0LwA7spgT8ZTHP88Qo833O7MbJ3PryT0o2MWksS127mxpIYsKJ+y7HkaAe1/gdXtnZI
         t6k8AnP5pE+QCYvyzX7hq4agDFn+CD4wzlKMWnxjKZTogSwkXLS3hFhf74mo4Ap1T6TP
         D23tHE+lUWS1kz79YqgMYRe0b3WOrKR1Kbv3lbEZ6PvL7uVCP4KlBgG5+cVsVjot3ksT
         cy9zX99GwwXRet3pbKdMBUb3helzdmUWI2E4u3P0+Pr25/q/n3CivNtE0HCpr9/kuzc4
         alsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ucvGUW4Z+P2L6s5wttbaaxMhXXPnfWpyTTvHBxRLjqs=;
        b=LSeH5VHeKUUtITaYM2ytMe7z8NtAbBFWsd24w6zkfAlxUMEyuXdvZvshVcrstjvSo3
         /lZugaaRb4hODYMzGQ45GfngrtCMWQf+rS2phLu/spjg527PP+8WAOfh25ea4H/5TBbo
         a4Q0rClDopZJaEz4A1e1CWcAIMviGUjRiqT20VU5zr5uTdGCoJA9IsuEVX32rExaRpz1
         Go2F40J6XNmJHb3obTTToXWa6d5vMia+fqHVb/0JVfDfM759nBQOKYY9+l7TjOKonswi
         IEgMlgfXIkqsT9itAdQ4rIUgTMZ3BGzBo6mTt6w10UPtrlyKgYq/0vSTK4PaDEwN2he+
         yPSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ucvGUW4Z+P2L6s5wttbaaxMhXXPnfWpyTTvHBxRLjqs=;
        b=FJBcZ1Ty6P+AxW/+1RFjWK3jBvWu+WtgTUhbpKNItLNNBO7Fm3ON3K9w1XpRxrP1NV
         AcgcHUETjXiy7lR/mIfq285OdfBV+No8ZlTNEuK4dl7poXG2YGbAHLDKVcQYgi/lnCHo
         5z4DPW9ZPPs0PMSUCRsP7KXWWBGukG+Ju3cAZ75VwQy55Sjxds7v+CCnjPAWamWe5z/K
         opICQAfYj49McNMYjaSQf8gMejgBJzK9xjobn48/ZPCAAF4HAu76xgmcOWzUahr1FTHD
         ZPxAFDA2WhR6IwCVlkXikqUgNNApgzXDqhxFJbcW4WQKF1Q+YstvcwpgfrnUHUtRDFq3
         dOYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ucvGUW4Z+P2L6s5wttbaaxMhXXPnfWpyTTvHBxRLjqs=;
        b=OvXwconnTHzOVdsiFXvRYbsUuvWOXwzMa2j/RRKrM7gQu74vl7DxCioNKyjxXMgjVs
         MGDAzAebgMSbw1m2uUbDoQ1gwuy8f3ooxAa6+RWrHVxsmJduOdWccGa/nKjLaPbBXNeb
         pZDikHSgvLgrlgYxfLbc3BDd/VeiyXYYoEvgYKz2XhVRcJmR5DExVZfFo20021hYEYQS
         q81QQ03KoAW+EyPccr0qs6Om7zgiLB5BLj8HCPSKpguVvCsyKG0u4sQMxilpOchfSqJZ
         iHI+TFyUInHxTh/DD/RLQ+eleYyc+rXIZp8AZ4+woj6226h9MKLbuAMQwPX3K+Fo1GIm
         XfGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWVwdtJlDTgKFZRNsiFF3qEZxFaXTG7Hg4E5Vcq+RKabEOBYMuY
	NywEUSp3vGjrQFt4hkCYlXM=
X-Google-Smtp-Source: APXvYqzjBAqQ+92mlEyZYOPlVW++cyFD6EWqmAnjp7MbRSRgOoVe8fqXKYZO/5MKGC+XBwttCRvB2w==
X-Received: by 2002:aa7:8f2c:: with SMTP id y12mr40768402pfr.38.1564451054534;
        Mon, 29 Jul 2019 18:44:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ed0b:: with SMTP id u11ls13070753pfh.15.gmail; Mon, 29
 Jul 2019 18:44:14 -0700 (PDT)
X-Received: by 2002:a65:514c:: with SMTP id g12mr107070362pgq.76.1564451054149;
        Mon, 29 Jul 2019 18:44:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564451054; cv=none;
        d=google.com; s=arc-20160816;
        b=vOOXsfXYo9rZyrMgPMFS+wjGwuzswrLVlfYx4VnDYW4vArhMWrFQQ0d7TV6M5tk3vV
         2/1t3bVF1lPJXDEO/KuNzhCLuEFrRfedrLeYrYQ0sZcXtgpqjT0ZMe215eBoCuKqTRfg
         3zCz/9e070365IaQ8V9pKoSlO4GFHhXLGof01IDQylwLMab1JYB7kbFQcBgrDEewn250
         vpt1fCBBkFonpP3h4MdmMPZ22t34NmVoIgKT6TQLmaOWver4GhB5ZrBYRxGu4ApN4Qpb
         UMNkTwnHUEeobNlsonxCdayHQ0B19uHHsXD0bC8mCHxm1AZ24iFXYY/QTcdpI+mGq/qj
         CveQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=DHs50zZW20K0wnMLp/yUuqk0aTW7o26Vtz4OcaUODtQ=;
        b=GxBz6EkLbMtLd0yTx665JSXwhyCRxJnSHDWtaw/Y1ALwiYklTa06I4Dk4lUSWBZzwl
         Vj+uYiDV8n7slLghmoloAK8DqenwytBJ/nUXf1VPW5LzEJgz1V+TEVxvKj7wjVd/bWOp
         i2YV249tReGcxPi1DWJlDtdBF9kJ+QD9ag0sG6edfY61UcfeJVIvasR9HNvwQsixpgw4
         JCbnzDflwMG++gHOUAmLuYnDb0/VBGg6bK4oJFXkPoDLIW2hy5/G+MGvoVbKT9QkVSRL
         uismTFswmQ7BVYYLuF6gUD2wmMb2INBz08fPz4zfLgNEcGcpNnUOj5Cm+TGKZnA4Jhst
         FVEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id b12si1543691pfd.4.2019.07.29.18.44.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 18:44:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Jul 2019 18:44:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,325,1559545200"; 
   d="gz'50?scan'50,208,50";a="174089397"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 29 Jul 2019 18:44:12 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hsHBT-0001AK-Rj; Tue, 30 Jul 2019 09:44:11 +0800
Date: Tue, 30 Jul 2019 08:24:01 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: arch/powerpc/include/asm/cache.h:88:43: error: constraint 'Z'
 expects an integer constant expression
Message-ID: <201907300841.yV7IFKY7%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ns3oso3no7f4yu44"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--ns3oso3no7f4yu44
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
CC: linux-kernel@vger.kernel.org
TO: Christophe Leroy <christophe.leroy@c-s.fr>
CC: Michael Ellerman <mpe@ellerman.id.au>

Hi Christophe,

FYI, the error/warning still remains.

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   2a11c76e5301dddefcb618dac04f74e6314df6bc
commit: 6c5875843b87c3adea2beade9d1b8b3d4523900a powerpc: slightly improve cache helpers
date:   4 weeks ago
config: powerpc-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 6c5875843b87c3adea2beade9d1b8b3d4523900a
        # save the attached .config to linux build tree
        make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/bounds.c:10:
   In file included from include/linux/page-flags.h:10:
   In file included from include/linux/bug.h:5:
   In file included from arch/powerpc/include/asm/bug.h:128:
   In file included from include/asm-generic/bug.h:18:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:19:
   In file included from arch/powerpc/include/asm/bitops.h:247:
   In file included from include/asm-generic/bitops/le.h:6:
   In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
   include/linux/byteorder/little_endian.h:8:2: warning: inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
   #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
    ^
   In file included from kernel/bounds.c:10:
   In file included from include/linux/page-flags.h:10:
   In file included from include/linux/bug.h:5:
   In file included from arch/powerpc/include/asm/bug.h:128:
   In file included from include/asm-generic/bug.h:18:
   In file included from include/linux/kernel.h:15:
   In file included from include/linux/printk.h:9:
   In file included from include/linux/cache.h:6:
>> arch/powerpc/include/asm/cache.h:88:43: error: constraint 'Z' expects an integer constant expression
           __asm__ __volatile__ ("dcbz %y0" : : "Z"(*(u8 *)addr) : "memory");
                                                    ^~~~~~~~~~~
   arch/powerpc/include/asm/cache.h:93:43: error: constraint 'Z' expects an integer constant expression
           __asm__ __volatile__ ("dcbi %y0" : : "Z"(*(u8 *)addr) : "memory");
                                                    ^~~~~~~~~~~
   arch/powerpc/include/asm/cache.h:98:43: error: constraint 'Z' expects an integer constant expression
           __asm__ __volatile__ ("dcbf %y0" : : "Z"(*(u8 *)addr) : "memory");
                                                    ^~~~~~~~~~~
   arch/powerpc/include/asm/cache.h:103:44: error: constraint 'Z' expects an integer constant expression
           __asm__ __volatile__ ("dcbst %y0" : : "Z"(*(u8 *)addr) : "memory");
                                                     ^~~~~~~~~~~
   1 warning and 4 errors generated.
   make[2]: *** [kernel/bounds.s] Error 1
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [prepare0] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [sub-make] Error 2
   47 real  13 user  28 sys  89.00% cpu 	make prepare

vim +/Z +88 arch/powerpc/include/asm/cache.h

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201907300841.yV7IFKY7%25lkp%40intel.com.

--ns3oso3no7f4yu44
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ns3oso3no7f4yu44--
