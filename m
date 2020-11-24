Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBAEY636QKGQEVXZS72A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id D653E2C3422
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 23:41:05 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id v2sf48048pfi.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 14:41:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606257664; cv=pass;
        d=google.com; s=arc-20160816;
        b=aSH6SCEKB/zyUw+fV08JynfX4RFcP7snyxX2sovUuUl0nQ2/G4Rco6PnVzKB995gOE
         Pr0T1DvutDdoOe5dLpQXgixt7C7Cl1fPA07ZM4kzkvgl7h3Jkdvx3GF59g9cDaVhtQKP
         q4Dk83NRCkeVxHsczxC8X0JKaqprVi7wvQCIubc2NeGg49/UhShgvlICMv2FMdqQ5AIP
         +UJUttSibsXI+acJBYpqV/vsArbMXUxBk+eGy6NDvp90pEv8v90KcH3fTyg5IoAhUtnT
         dYcTciM7EJSVEtWiuVGgOiX7IxeNDQTC3UhXmfT1oFpym4E68Jz6wiz+XY4QQ3JycRpT
         A+Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=P/yYbPDtJbnTLmgYjRefeJL+//nRGAedqIyl5bS/KKw=;
        b=OIGrTFNgxNmlYP4bXWogjn4JULLlJcW6sV9Klx+Nkz0hmv+b+lYYqJFuKdSNNjQYGB
         aN4jigz8YOGT5zPPii7D3vMqp37H2GWKI545wlI8C3w1cTNcKY79HZk+xZLSD3rhHQdb
         42+rhiOU4TdMpZScWKz3xQHIVsgIbERyPVJdcwuohM8zN9fTGpki4zYDT1hCyqJsPBjX
         gAd3V4GR923JWq2lsbSrUJ8hbzMrl1uwMZsNSeH50IeCFy9Y/tsnnAuL+4kthwTPdncc
         MjnvzZoW4YaA8HvwsbIpEKhyji9a7kE8RaLP3CWLwU21N3cXWagb6W0Icss005UxcVvD
         vB/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P/yYbPDtJbnTLmgYjRefeJL+//nRGAedqIyl5bS/KKw=;
        b=tH+GBl6hFnAkZUjRZjOnzQ5Snih4cDCV2Yb63CPgXELDnMmUK+MUEj0NOOe0nVq3Ey
         oYELQkT6quuzIr0dwAMjQYzCDzlbpaQR/sknhNUweS2Pqe22Gdz1SUZvxPhN6PRDejD4
         njqOuod0DIRojNhL4VT8w7LuVRvkFjD6cTjthMcQqI/Yvhu1PGxxCpABEPb9J2sAIoWK
         GF5w/UjdwtGfvtPhLyFElLRTsatcO1B/L6PFbn4s2TZxNulw+l9cTbf92sAicgmxgshq
         iC+BkqpqBnQy59wBnbwUc0pfRlqYR6JhrUckdFXlaPB9URxTtw09ncODpPmDIEziacb0
         ooVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=P/yYbPDtJbnTLmgYjRefeJL+//nRGAedqIyl5bS/KKw=;
        b=LKHn8smW3P3BdOznrG7stu9HPIvguwe2nhBdRq97TdA3eKW7n3rjaEnWLyk7Mv1L9o
         CcHpUw7MSaP9Wrou3PGeEZAw/yK4wMJIIdt2rgKBtDjQ1uJKM6c2+GNG3qGKDWtEYNGB
         3vAPACuoAxMnkVRrhg3BRm41U2fk0GoHhrR7GT07x3eDxoOwk8uV4g/wlD6uZLe6peiB
         UZhHyq1l8j8q5huFXkLtgBy+u1YAWLnsvcPd89FhzqmmNKq/aspmD6GLFzPqJ73+7eek
         8lKzr435SipZaoHpThJXGKAsq71FBek8CkVk66vQ/MnuiE5nFBfzQEj2masamM/XiPiR
         s27A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xtL1t9EAYxHvcYrm7PmXAHoXuwp5lKalyB2VPOADpumTTtASo
	4JDK8eWZ5yh0RHlyqrdOjxw=
X-Google-Smtp-Source: ABdhPJxYpGGNISwsED331TADjk0jUS7ZbmUQF4n/s0Lo0O23/I25NllMVfn0n7qDX832zYssRxGmsw==
X-Received: by 2002:a17:90a:f3c1:: with SMTP id ha1mr523872pjb.20.1606257664294;
        Tue, 24 Nov 2020 14:41:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ee90:: with SMTP id i16ls90445pjz.1.canary-gmail;
 Tue, 24 Nov 2020 14:41:03 -0800 (PST)
X-Received: by 2002:a17:902:6803:b029:d6:cf9d:2cfb with SMTP id h3-20020a1709026803b02900d6cf9d2cfbmr536628plk.55.1606257663550;
        Tue, 24 Nov 2020 14:41:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606257663; cv=none;
        d=google.com; s=arc-20160816;
        b=yo6sIEWdJNjHah+3LG1lGJVJucDZuDAbjnyPDby1Ic0NxD0ddFulGudsfX+Mlcxua2
         op9Yz3JMi/yEzhIsO/x/dHRK1dRPeBr+rlVLuj1KZjVREMRcoHBAbf+La5DgYwb6lITT
         ZZ+eOLoFN5S2xCmfylkI01YqNikySbW9ahV0BDGjwSFck2waaboxviFKy1pJ6gIv6Bya
         GJKo4/Zys4a2Lv3aE2k3pBaRb7gCbTR2B1DNCpd5dMkw8dV8rM4sdxj3Ju8hVLH1dwki
         NykAFgXnj6ZpdcRA3DBzRUDQ60iQIyEwtzXtNvpq4xbujkvxeB6a18XGCUcs666r5v8W
         aqEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=kutFI/IOIUhktJfzuMvuVjS2H8haYHdVui+3QWHizlw=;
        b=O/6Hj2SnO2FUlYfbJAPiywFgyPTYVavyXikSlcYJdlctRI+aEPOw/MRmTWMq/pqz5v
         fXsTDjN3pbQVjurXcKwiuEk6CPKVFT/yL2PnqUcbSAIS3nlWcVYHOtLwSzEz3VLdcyY3
         wmXKhBBHo7hSHPrYx8nJDs2Z0PoFBuyvUhqZuO63t3driRxT4/pwB7H9lVv4/IL3rC9c
         XN/p8FnDGfyllnwsSuAZ0AJOM8CR+N5YgItwRK3NY/CY3qDSzt9Cz6VrsVuz/vdZktB6
         shYDPIfypASS8CPGitQWcfspnZmte43WYPS0DJBKJ13i2LJ1Q6j5Pt9E61s+iLVFitL2
         2reg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id s12si27564pjq.3.2020.11.24.14.41.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Nov 2020 14:41:03 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: USHATh4+9/V1w3mucDdGAWX8sTrEVLfy0/ZrsUa4FJX9+65q4DY0QnITdyPQD7iw6Souky3YgP
 0WYsiYAhTksA==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="171248124"
X-IronPort-AV: E=Sophos;i="5.78,367,1599548400"; 
   d="gz'50?scan'50,208,50";a="171248124"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Nov 2020 14:41:02 -0800
IronPort-SDR: 1QVxglVx9XMtynpzSb2oxB5aEqKA5sjRFAwlInfRTQAsMQfOSx2z+QMZ9gzz+I1KLBUDh5xdMY
 XTCdYybXTa5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,367,1599548400"; 
   d="gz'50?scan'50,208,50";a="432755486"
Received: from lkp-server01.sh.intel.com (HELO 6cfd01e9568c) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 24 Nov 2020 14:41:00 -0800
Received: from kbuild by 6cfd01e9568c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1khgzc-000097-2P; Tue, 24 Nov 2020 22:41:00 +0000
Date: Wed, 25 Nov 2020 06:40:33 +0800
From: kernel test robot <lkp@intel.com>
To: Heiko Carstens <hca@linux.ibm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Sven Schnelle <svens@linux.ibm.com>
Subject: [linux-next:master 6721/7715] arch/s390/kernel/vdso64/getcpu.c:8:5:
 warning: no previous prototype for function '__s390_vdso_getcpu'
Message-ID: <202011250629.dqxhnqms-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="UlVJffcvxoiEqYs2"
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


--UlVJffcvxoiEqYs2
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Heiko,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   d9137320ac06f526fe3f9a3fdf07a3b14201068a
commit: 80f06306240e0ad1c75116111be11950474dfda7 [6721/7715] s390/vdso: reimplement getcpu vdso syscall
config: s390-randconfig-r015-20201124 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project df9ae5992889560a8f3c6760b54d5051b47c7bf5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=80f06306240e0ad1c75116111be11950474dfda7
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 80f06306240e0ad1c75116111be11950474dfda7
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> arch/s390/kernel/vdso64/getcpu.c:8:5: warning: no previous prototype for function '__s390_vdso_getcpu' [-Wmissing-prototypes]
   int __s390_vdso_getcpu(unsigned *cpu, unsigned *node, struct getcpu_cache *unused)
       ^
   arch/s390/kernel/vdso64/getcpu.c:8:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int __s390_vdso_getcpu(unsigned *cpu, unsigned *node, struct getcpu_cache *unused)
   ^
   static 
   1 warning generated.

vim +/__s390_vdso_getcpu +8 arch/s390/kernel/vdso64/getcpu.c

     7	
   > 8	int __s390_vdso_getcpu(unsigned *cpu, unsigned *node, struct getcpu_cache *unused)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011250629.dqxhnqms-lkp%40intel.com.

--UlVJffcvxoiEqYs2
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--UlVJffcvxoiEqYs2--
