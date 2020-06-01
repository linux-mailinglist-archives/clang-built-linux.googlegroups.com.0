Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBC7I2H3AKGQECZVYZ3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C201E9BFF
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Jun 2020 05:20:44 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id r18sf11225711ybg.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 31 May 2020 20:20:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590981643; cv=pass;
        d=google.com; s=arc-20160816;
        b=vd4kOIokK9qwpomp+bRfI69B/DkSJfYysVQBUC23wD35D7lCh8zZ+mVKxOUypoX0Gm
         i1HTZ1AQswGJNOx6OROYBqTn82/6FNjKPjCJaJ+8SgLEYw4KDXbs5xEfbCuTpTF+Dy+w
         suiOwbiqsCuAkD+xri+J6s3VA+GHIB13sYxnGIxN2OugUUa3JqFs6yBe9v5wsWf3+wj+
         Dm002OdROnW4Raxjarhy8CC2gj9PdRLWS4rr+HwBl9Jn0WX/52E0z6UDKgOR1MrcjLkt
         hevXGXuwdGt44iOtGd+uhyhUlZLXYNoykk4UDGWio9RvhLAM+r6Lk9QMZsJir5YQ5ajZ
         zGWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=J2+C/Zg1a+l1/lQLKMxqBUDBmhgAAUBDjOpvPmoaW9g=;
        b=QGL0RE1k1XuKQCYtEmUsnYHQuhBj0LTns9LSekIg1KsXkdrUV0RbV6mol8K/bWUuT+
         4g+M1b1a1bi0QSqdWm3+s28J4foaqh+oS90YURRTM+Y8cGmCdx9te7pokPeUVmihRoEq
         HBWBNg3QPdifDkwpoDmzEHwaBXKSjD0PR+q4yTlpmgjNFRtvnU7TBNonx3eIcw6D6ZMQ
         owAqcCoW5YTIa5bTBujO2Wf/YP9xMNX7XeLc6eaEMzC0ccMDmO2bE9ZHbXZsEhNEpZi+
         dDe0odofJbh0juJlUyvVEUiKUbXAV9UZq33SD9tBVX9fpihlXQn/H7Cl5lY5G4RpF0Ws
         bd+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J2+C/Zg1a+l1/lQLKMxqBUDBmhgAAUBDjOpvPmoaW9g=;
        b=KaCE+hYyEjOPCgKYN2EDvJBuzWL8xSrZ5du4M1SzLg1PmLSqjGO6jUHdkA7vMQmF42
         S0vrlpk0to11Fsbq79znJu0jyDg/AE3O5zfGwbeAsfrTENWehHatfVTKzp0KDbovCbSn
         y+x3cykC9hv+obkXvSA6Tm7YbK31fhmh7KCNZpIPEPHr9RzCCaO5dKkXh32sH36CjEm+
         +aOgmB5c9cRfMaNwInUF/FhoLibLzUmL7MSgVArgAIPSpwQ+ePPtdTGOGggFE873oOO3
         ZWf84Zc43ZTauEI39DfAT1nfWIo3KOxvoaEG4m1Q0h6v9/Cdr7XXbVm3vcrmXEvvIusQ
         nDZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J2+C/Zg1a+l1/lQLKMxqBUDBmhgAAUBDjOpvPmoaW9g=;
        b=krO9M9P5drYzL127Fkux2fovNZ8RlfJJxSjt8jI4AsFwIPP/7yhVUB/LE12YcQSFsR
         w4Ze/OJjhzFfnPc+YctgzlCXb4tok0wb3U/FzIlcF0WgvDdZWkDxUYrdYRiZZYolSeGy
         dQsBY/eZ6ogIqf8iCQz8uNtWc0R+j6FEybYAq0CXBQ3lTLmQQD2B0QCFgQ335k8XhrhT
         lHSqGrcTO4r0WR32eAobTmCNfo6YNwhXUaMHwnqtduHlc8E7Pok31EJuuJYiEa6ZBMlj
         ALRJfMlJdXo6hRnf5aMCxPRrnbdwRNjM8jtzEOKU1ufTth/1lXmUujM2VuskbiAgOvaK
         Kv/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MkfKMhO2R2njpLAfOZp7rXV0YTay+07Bu5zqXsbwJ8ozP6FMq
	+wMjkAHpYe/jixV2olixejc=
X-Google-Smtp-Source: ABdhPJw3Qf0jV2hF7lohwBTvwGEn6Ry9AC6jmeK4kgA2FcodxLcsYfyo8e8k3DGFrR9BiAN4nVSGng==
X-Received: by 2002:a25:b806:: with SMTP id v6mr11139966ybj.199.1590981643168;
        Sun, 31 May 2020 20:20:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b982:: with SMTP id r2ls1566650ybg.11.gmail; Sun, 31 May
 2020 20:20:42 -0700 (PDT)
X-Received: by 2002:a25:cd82:: with SMTP id d124mr31592381ybf.150.1590981642727;
        Sun, 31 May 2020 20:20:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590981642; cv=none;
        d=google.com; s=arc-20160816;
        b=E1bsPxBVsdRWKAspGN/SHEqbZ+gxV9aY6vTuRqKoiYWsA3F3CIMlRqC2n6yNghmUtr
         rRjVG/G1ZtGuMDxmMZQQBcVItRygja022iIU9wPQcF0eBi7ktSfJ060G/fA2RjkTbCaY
         xEETyPvUp0xxhlhwtAbn5T1uUuZhv7/bUHlEENPxV+5w22lirOYGvDmNnPlsV6nQCak2
         z9ycoKFDTOTZMYpXfY1+voCYIulsaQ2fQjUxEaQuP9I/9EDzV5u0UyqqIdGGHXP+GCDw
         hap7x4U2PmByJQgbgKgQG0I4uiz3D/bRFoYRgTYkN4OgILmecBjWw4omAm/xGum3R8kZ
         Ding==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=arl2O8cRI6Bd3SFcFb60SUcOC4y4TOEXm1+4jsXjT70=;
        b=gTnwGv658hOQ6tDQDc7bPB6HuBQTwCkc5/zEID+FnTRyIHlXcT7+RCvSLpVKO2DIpH
         YYd6jrsD3uouAi4rKl9gKVipXGyV2UHeltQazHLbML32xkWOvtIKYWZuW4tD2W9KjW+C
         lvAgr7fP+bDp6Nx6Xmn8YjWxNVyqhHSQATxg3zeFT/UC9vfHpQiRu/PNhetw/Nem4fS9
         ZPyv+jN2+FVQ5zgVKPiqOEDXzF7Jo2FAuV2MEQYizc57bx0+3DJaCYRGx1bLIe1XAIOh
         FKEJR9zZuZ3rLojJgnK2Amc5P9cJekWm98HbKWXfDdpymFPWehmb+IJKtTFGDsv37lNM
         EISw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id m9si889830ybc.3.2020.05.31.20.20.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 May 2020 20:20:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: tJFJMLxe6n1uhUj+Ro1zX/ebuSc5+RxhLhPWiqqSRamb80EaK6VAn9dJssOSLnHG2krVeSCbip
 POyGry+9u2Dw==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 May 2020 20:20:40 -0700
IronPort-SDR: 47ItyKNRq9RxPaMOpfSxRyGoLYawXCkMq/Map129K340UGyekStVW3ismaJ6xp+6eO7MN8KeVn
 yd/XC+E84VEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,459,1583222400"; 
   d="gz'50?scan'50,208,50";a="470145642"
Received: from lkp-server01.sh.intel.com (HELO 49d03d9b0ee7) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 31 May 2020 20:20:39 -0700
Received: from kbuild by 49d03d9b0ee7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jfb0A-00009b-Nk; Mon, 01 Jun 2020 03:20:38 +0000
Date: Mon, 1 Jun 2020 11:20:32 +0800
From: kbuild test robot <lkp@intel.com>
To: Gabriel Krisman Bertazi <krisman@collabora.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH RFC] seccomp: Implement syscall isolation based on memory
 areas
Message-ID: <202006011141.nAjiAHs7%lkp@intel.com>
References: <20200530055953.817666-1-krisman@collabora.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="uAKRQypu60I7Lcqm"
Content-Disposition: inline
In-Reply-To: <20200530055953.817666-1-krisman@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Gabriel,

[FYI, it's a private test report for your RFC patch.]
[auto build test ERROR on tip/x86/core]
[also build test ERROR on linus/master v5.7 next-20200529]
[cannot apply to asm-generic/master linux/master]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Gabriel-Krisman-Bertazi/seccomp-Implement-syscall-isolation-based-on-memory-areas/20200601-014401
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 9cb1fd0efd195590b828b9b865421ad345a4a145
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2388a096e7865c043e83ece4e26654bd3d1a20d5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

In file included from kernel/fork.c:41:
>> include/linux/mman.h:123:46: error: use of undeclared identifier 'VM_HIGH_ARCH_5'
_calc_vm_trans(prot, PROT_NOSYSCALL, VM_NOSYSCALL) |
^
include/linux/mm.h:346:23: note: expanded from macro 'VM_NOSYSCALL'
# define VM_NOSYSCALL   VM_HIGH_ARCH_5
^
In file included from kernel/fork.c:41:
>> include/linux/mman.h:123:46: error: use of undeclared identifier 'VM_HIGH_ARCH_5'
include/linux/mm.h:346:23: note: expanded from macro 'VM_NOSYSCALL'
# define VM_NOSYSCALL   VM_HIGH_ARCH_5
^
In file included from kernel/fork.c:41:
>> include/linux/mman.h:123:46: error: use of undeclared identifier 'VM_HIGH_ARCH_5'
include/linux/mm.h:346:23: note: expanded from macro 'VM_NOSYSCALL'
# define VM_NOSYSCALL   VM_HIGH_ARCH_5
^
In file included from kernel/fork.c:41:
>> include/linux/mman.h:123:46: error: use of undeclared identifier 'VM_HIGH_ARCH_5'
include/linux/mm.h:346:23: note: expanded from macro 'VM_NOSYSCALL'
# define VM_NOSYSCALL   VM_HIGH_ARCH_5
^
In file included from kernel/fork.c:41:
include/linux/mman.h:136:9: warning: division by zero is undefined [-Wdivision-by-zero]
_calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      );
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/mman.h:112:21: note: expanded from macro '_calc_vm_trans'
: ((x) & (bit1)) / ((bit1) / (bit2))))
^ ~~~~~~~~~~~~~~~~~
1 warning and 4 errors generated.
--
In file included from kernel/events/core.c:43:
>> include/linux/mman.h:123:46: error: use of undeclared identifier 'VM_HIGH_ARCH_5'
_calc_vm_trans(prot, PROT_NOSYSCALL, VM_NOSYSCALL) |
^
include/linux/mm.h:346:23: note: expanded from macro 'VM_NOSYSCALL'
# define VM_NOSYSCALL   VM_HIGH_ARCH_5
^
In file included from kernel/events/core.c:43:
>> include/linux/mman.h:123:46: error: use of undeclared identifier 'VM_HIGH_ARCH_5'
include/linux/mm.h:346:23: note: expanded from macro 'VM_NOSYSCALL'
# define VM_NOSYSCALL   VM_HIGH_ARCH_5
^
In file included from kernel/events/core.c:43:
>> include/linux/mman.h:123:46: error: use of undeclared identifier 'VM_HIGH_ARCH_5'
include/linux/mm.h:346:23: note: expanded from macro 'VM_NOSYSCALL'
# define VM_NOSYSCALL   VM_HIGH_ARCH_5
^
In file included from kernel/events/core.c:43:
>> include/linux/mman.h:123:46: error: use of undeclared identifier 'VM_HIGH_ARCH_5'
include/linux/mm.h:346:23: note: expanded from macro 'VM_NOSYSCALL'
# define VM_NOSYSCALL   VM_HIGH_ARCH_5
^
In file included from kernel/events/core.c:43:
include/linux/mman.h:136:9: warning: division by zero is undefined [-Wdivision-by-zero]
_calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      );
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/mman.h:112:21: note: expanded from macro '_calc_vm_trans'
: ((x) & (bit1)) / ((bit1) / (bit2))))
^ ~~~~~~~~~~~~~~~~~
kernel/events/core.c:6487:6: warning: no previous prototype for function 'perf_pmu_snapshot_aux' [-Wmissing-prototypes]
long perf_pmu_snapshot_aux(struct perf_buffer *rb,
^
kernel/events/core.c:6487:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
long perf_pmu_snapshot_aux(struct perf_buffer *rb,
^
static
2 warnings and 4 errors generated.

vim +/VM_HIGH_ARCH_5 +123 include/linux/mman.h

   102	
   103	/*
   104	 * Optimisation macro.  It is equivalent to:
   105	 *      (x & bit1) ? bit2 : 0
   106	 * but this version is faster.
   107	 * ("bit1" and "bit2" must be single bits)
   108	 */
   109	#define _calc_vm_trans(x, bit1, bit2) \
   110	  ((!(bit1) || !(bit2)) ? 0 : \
   111	  ((bit1) <= (bit2) ? ((x) & (bit1)) * ((bit2) / (bit1)) \
   112	   : ((x) & (bit1)) / ((bit1) / (bit2))))
   113	
   114	/*
   115	 * Combine the mmap "prot" argument into "vm_flags" used internally.
   116	 */
   117	static inline unsigned long
   118	calc_vm_prot_bits(unsigned long prot, unsigned long pkey)
   119	{
   120		return _calc_vm_trans(prot, PROT_READ,  VM_READ ) |
   121		       _calc_vm_trans(prot, PROT_WRITE, VM_WRITE) |
   122		       _calc_vm_trans(prot, PROT_EXEC,  VM_EXEC) |
 > 123		       _calc_vm_trans(prot, PROT_NOSYSCALL, VM_NOSYSCALL) |
   124		       arch_calc_vm_prot_bits(prot, pkey);
   125	}
   126	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006011141.nAjiAHs7%25lkp%40intel.com.

--uAKRQypu60I7Lcqm
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--uAKRQypu60I7Lcqm--
