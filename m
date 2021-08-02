Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB57YUGEAMGQE5XKAGXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 361D43DE2EE
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 01:15:05 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id z11-20020a056830290bb02904d1d78ee61csf8801530otu.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 16:15:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627946104; cv=pass;
        d=google.com; s=arc-20160816;
        b=BBc5TjD32vXdRWwhnSm2iOxcETXDqEwPoozvXK+sTP6EROnvhkWEY8lAhNr38Hf+aH
         a/Pf1NN3jcp7rgsCPth7q6OBGWlDLS/ArKcXPx+E27au3eDuWR1fMvPf9bnDns/5Wb6/
         gvZ17pbhAuOC/QFflYUy90Ak6W9bUQiFEcpJrbR8HFGLHnAPgGJmlZuf+JlD8U6WEc4Y
         1PhrG8r09+GDyjvK9OkEG6ZEP3v0AFPU7q3bWtl6VgAG+f02pbl3Nd2e1Et8fIjdk7EG
         9BskdLWLaTuntzTJnEkN9TfB0VPzD5Qr5Cj8BBBt4hrYnGzdxavWa8ZuaimzaVCMR/ss
         9MZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=bkvNpOr5TtUwxxefZWux6Er/onQX29piqvzHFxDu6HA=;
        b=Mdrvlmo+u5SpbbmVPPec9CPll7CLJXr6vD1HdXB4FqjoIJDKk9MJ2oxHPag9iDZ3Ei
         Ls+MSr67PqSZjPDEynKo6+2iebtwMQyNwf3ULSG/i+l2nK5AtDudTSdScFlqwhyizqRX
         zoqvOK9hw8MQfnbYixzZLfkzR7pi7SQ7vxFDrcD3Xyx0gZqteR7yXP2+dL+nnlZBeAZ4
         6o7wN4tM6z6hXZY10dj1uu5RggDKllku6WDpxbFVhtW1nQM+4Z/Rcmu87Os0xjcJMJSP
         28+qzVhZ/3Qkg+po42NMWhDeuKwz2GK3mu6+IgzXxMdf65SkDv/ldSZRxNtL65JGOHLK
         BdXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bkvNpOr5TtUwxxefZWux6Er/onQX29piqvzHFxDu6HA=;
        b=NRDTU4ACu/B3/jgxl8X6LsxD+qXmz56dGPTAmoXNscPLIsKON9CrALxjedvPHiw7rd
         MXg5HvrLnlj1eDDG5Hixy/Y4IStotmAMZOEetBbIh8I5Ax79mFPqb7tEN1zFw6+TfRmp
         leEluC+wP1/pSHdt/KpDCfbwf1/86e8VEJ/J2ptr/9Dqr4qzwSLYSDe/HSaPEqeqFEKc
         WtU+ss13qsj62yHsMOXzJW6uh/NBabE0ftvvuKWwh76aq/c64EtJeEIkpzmgsGP6921A
         Ed/LSRPe6g8DDAJfPyV7WvOra0ZuK2wVcAYkayHMbRvM1nEBNWzX+9l0/b/wXlYY8CtZ
         Y1lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bkvNpOr5TtUwxxefZWux6Er/onQX29piqvzHFxDu6HA=;
        b=Jj8GFI27uybTrxQ+mbWlyMpi1fjvKHFNY4ZK1HQSfHsrc4BC909wG2ePkSBMoAqG7g
         CNl4NLZwkVcfNiuFNIgXnkbB5V8h7RQOAb8uC0MdQjqU9do7aGytElWlyJ0LGaaha8ms
         2GFNme4rw3reOWrOIC/s9Uu0G6U9vD2pb8THI9jZzomBSJ5CIbMg/INo1DSG9po88D69
         ZECXrBu30T1anvPzv34ZvdysGhM8tG4uE3OD3N8qvL95+uqNLSrh1E5jYkZ6qVsg28CO
         d74I3FnsI73Hszm0myy9tKF/zu7b0I9onfIzgDfNS6MZVRYSBnO/dDonvInGaRROXSdQ
         Pjug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ot/Id8PfIFzi1VRuH7zMxmR676M5w5PeSCLzAYxmo/AUmCAPd
	nfd9M/fSdzQv7jwdLmk5DpQ=
X-Google-Smtp-Source: ABdhPJzH+H6uBWKPS4I4Lj+BRWCpcYuSDFfbySixf+haITp6x9/TY1QCmE4pOvW3Czelu+bzTKBHMA==
X-Received: by 2002:a05:6830:545:: with SMTP id l5mr13022281otb.270.1627946104150;
        Mon, 02 Aug 2021 16:15:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4101:: with SMTP id w1ls2803246ott.11.gmail; Mon,
 02 Aug 2021 16:15:03 -0700 (PDT)
X-Received: by 2002:a05:6830:1e34:: with SMTP id t20mr13737398otr.166.1627946103637;
        Mon, 02 Aug 2021 16:15:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627946103; cv=none;
        d=google.com; s=arc-20160816;
        b=yXK9ckH9QoLwasqlCHd3YF2ANo8JjzA/SoUAxb+cOccx5JwZiKxootFLpg8hO4KfCA
         1+hQplkltfVe6AhstCG1rOm6IQg2EsQncFRV17h9KaY6/zbHMyznnBMl2We3Bs366ic0
         my+gQWlvEnrthSKTlF/GpBL/OdJneaxAWcHQyziV5T60fAF2HwebC4tNNJmJH2jFXeYa
         wFWMMWzZ90ItyhFkA8PII6nLfy6za2c4wrNL1irI4dqgkF6ZmFCJepPGlBCyH89MNVOI
         DsfkNVyu6QemQH+8vSrkX59920gcWestZ+Mf6bbjQ7ELC4R4pmXvzmxslRpOh7VYArmA
         B9ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=8vQK0xYrZRsc1BENBrImGXUlROEeyWcjaoKISR7Gm+E=;
        b=dvEwyCDQrl0h53O+2CBmcf+NPLmkiMu5nGKJrqTBKAIA68F64QiKcrkCx+geg1VqD/
         Eh46b58wI4k7xwbQsyhc9YmdbImExoY3KTMqPw+JLZdbfQUzRubeGmIX0Wu9Hso8KoGk
         zUvbWP5EdjrFO8l9m652owJYCqrTtt8RwqcrB++dMDp5rxT5/nI+n2AbASFbR5hfOGOZ
         PZZJ/5pHrlIdpr+pJF6LKA7mKpdlNghh35ykfWakGwM72h3Ic5e3JeNslAaE1FAvoJIh
         TsselOE4V9R5iNe3KANA1e4AZNAfPocqy7NTJS99KUtYdHE/Nf++SYxxu7NNTVG5Xv21
         mqNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id a20si1042314oos.2.2021.08.02.16.15.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Aug 2021 16:15:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="211680195"
X-IronPort-AV: E=Sophos;i="5.84,290,1620716400"; 
   d="gz'50?scan'50,208,50";a="211680195"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Aug 2021 16:14:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,290,1620716400"; 
   d="gz'50?scan'50,208,50";a="440884858"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 02 Aug 2021 16:14:56 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mAh96-000DOu-0a; Mon, 02 Aug 2021 23:14:56 +0000
Date: Tue, 3 Aug 2021 07:14:14 +0800
From: kernel test robot <lkp@intel.com>
To: Saleem Abdulrasool <abdulras@google.com>,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: kbuild-all@lists.01.org, Palmer Dabbelt <palmer@dabbelt.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Bill Wendling <morbo@google.com>,
	clang-built-linux@googlegroups.com,
	Saleem Abdulrasool <abdulras@google.com>
Subject: Re: [PATCH] riscv: explicitly use symbol offsets for VDSO v2
Message-ID: <202108030720.G0luSlpe-lkp@intel.com>
References: <20210802210016.642262-1-abdulras@google.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VbJkn9YxBvnuCH5J"
Content-Disposition: inline
In-Reply-To: <20210802210016.642262-1-abdulras@google.com>
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


--VbJkn9YxBvnuCH5J
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Saleem,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on linux/master]
[also build test ERROR on linus/master v5.14-rc3 next-20210730]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Saleem-Abdulrasool/riscv-explicitly-use-symbol-offsets-for-VDSO-v2/20210803-050150
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 349a2d52ffe59b7a0c5876fa7ee9f3eaf188b830
config: riscv-nommu_k210_defconfig (attached as .config)
compiler: riscv64-linux-gcc (GCC) 10.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/82dd1f24fc79924938e3633ecf573c7973d938f6
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Saleem-Abdulrasool/riscv-explicitly-use-symbol-offsets-for-VDSO-v2/20210803-050150
        git checkout 82dd1f24fc79924938e3633ecf573c7973d938f6
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-10.3.0 make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   arch/riscv/kernel/vdso/vgettimeofday.c: In function '__vdso_clock_gettime':
>> arch/riscv/kernel/vdso/vgettimeofday.c:16:9: error: implicit declaration of function '__cvdso_clock_gettime'; did you mean '__vdso_clock_gettime'? [-Werror=implicit-function-declaration]
      16 |  return __cvdso_clock_gettime(clock, ts);
         |         ^~~~~~~~~~~~~~~~~~~~~
         |         __vdso_clock_gettime
   arch/riscv/kernel/vdso/vgettimeofday.c: In function '__vdso_gettimeofday':
>> arch/riscv/kernel/vdso/vgettimeofday.c:23:9: error: implicit declaration of function '__cvdso_gettimeofday'; did you mean '__vdso_gettimeofday'? [-Werror=implicit-function-declaration]
      23 |  return __cvdso_gettimeofday(tv, tz);
         |         ^~~~~~~~~~~~~~~~~~~~
         |         __vdso_gettimeofday
   arch/riscv/kernel/vdso/vgettimeofday.c: In function '__vdso_clock_getres':
>> arch/riscv/kernel/vdso/vgettimeofday.c:30:9: error: implicit declaration of function '__cvdso_clock_getres'; did you mean '__vdso_clock_getres'? [-Werror=implicit-function-declaration]
      30 |  return __cvdso_clock_getres(clock_id, res);
         |         ^~~~~~~~~~~~~~~~~~~~
         |         __vdso_clock_getres
   cc1: some warnings being treated as errors
--
   arch/riscv/kernel/vdso/vgettimeofday.c: In function '__vdso_clock_gettime':
>> arch/riscv/kernel/vdso/vgettimeofday.c:16:9: error: implicit declaration of function '__cvdso_clock_gettime'; did you mean '__vdso_clock_gettime'? [-Werror=implicit-function-declaration]
      16 |  return __cvdso_clock_gettime(clock, ts);
         |         ^~~~~~~~~~~~~~~~~~~~~
         |         __vdso_clock_gettime
   arch/riscv/kernel/vdso/vgettimeofday.c: In function '__vdso_gettimeofday':
>> arch/riscv/kernel/vdso/vgettimeofday.c:23:9: error: implicit declaration of function '__cvdso_gettimeofday'; did you mean '__vdso_gettimeofday'? [-Werror=implicit-function-declaration]
      23 |  return __cvdso_gettimeofday(tv, tz);
         |         ^~~~~~~~~~~~~~~~~~~~
         |         __vdso_gettimeofday
   arch/riscv/kernel/vdso/vgettimeofday.c: In function '__vdso_clock_getres':
>> arch/riscv/kernel/vdso/vgettimeofday.c:30:9: error: implicit declaration of function '__cvdso_clock_getres'; did you mean '__vdso_clock_getres'? [-Werror=implicit-function-declaration]
      30 |  return __cvdso_clock_getres(clock_id, res);
         |         ^~~~~~~~~~~~~~~~~~~~
         |         __vdso_clock_getres
   cc1: some warnings being treated as errors
   make[2]: *** [scripts/Makefile.build:273: arch/riscv/kernel/vdso/vgettimeofday.o] Error 1
   make[2]: Target 'include/generated/vdso-offsets.h' not remade because of errors.
   make[1]: *** [arch/riscv/Makefile:114: vdso_prepare] Error 2
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:215: __sub-make] Error 2
   make: Target 'prepare' not remade because of errors.


vim +16 arch/riscv/kernel/vdso/vgettimeofday.c

ad5d1122b82fbd Vincent Chen 2020-06-09  11  
e93b327dbf3d37 Vincent Chen 2020-06-23  12  extern
e93b327dbf3d37 Vincent Chen 2020-06-23  13  int __vdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts);
ad5d1122b82fbd Vincent Chen 2020-06-09  14  int __vdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
ad5d1122b82fbd Vincent Chen 2020-06-09  15  {
ad5d1122b82fbd Vincent Chen 2020-06-09 @16  	return __cvdso_clock_gettime(clock, ts);
ad5d1122b82fbd Vincent Chen 2020-06-09  17  }
ad5d1122b82fbd Vincent Chen 2020-06-09  18  
e93b327dbf3d37 Vincent Chen 2020-06-23  19  extern
e93b327dbf3d37 Vincent Chen 2020-06-23  20  int __vdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz);
ad5d1122b82fbd Vincent Chen 2020-06-09  21  int __vdso_gettimeofday(struct __kernel_old_timeval *tv, struct timezone *tz)
ad5d1122b82fbd Vincent Chen 2020-06-09  22  {
ad5d1122b82fbd Vincent Chen 2020-06-09 @23  	return __cvdso_gettimeofday(tv, tz);
ad5d1122b82fbd Vincent Chen 2020-06-09  24  }
ad5d1122b82fbd Vincent Chen 2020-06-09  25  
e93b327dbf3d37 Vincent Chen 2020-06-23  26  extern
e93b327dbf3d37 Vincent Chen 2020-06-23  27  int __vdso_clock_getres(clockid_t clock_id, struct __kernel_timespec *res);
ad5d1122b82fbd Vincent Chen 2020-06-09  28  int __vdso_clock_getres(clockid_t clock_id, struct __kernel_timespec *res)
ad5d1122b82fbd Vincent Chen 2020-06-09  29  {
ad5d1122b82fbd Vincent Chen 2020-06-09 @30  	return __cvdso_clock_getres(clock_id, res);

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108030720.G0luSlpe-lkp%40intel.com.

--VbJkn9YxBvnuCH5J
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--VbJkn9YxBvnuCH5J--
