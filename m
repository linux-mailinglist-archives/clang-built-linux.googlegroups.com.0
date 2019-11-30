Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB74CRHXQKGQEYHOVAPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D635810DD5A
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Nov 2019 11:16:32 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id w131sf4889549vkd.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 Nov 2019 02:16:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575108992; cv=pass;
        d=google.com; s=arc-20160816;
        b=IELHKQR/+aICL2aTxLW4+NIVzMDPq26C8S4DwItNx66bna6xcOQuiOTfQuYCNEQp57
         PeQVEjGydcRmzHscYPE4H+WPVkTtCgJrubL60J9OS1etv3t6FvSJww877ONCiBfom9Wb
         9/pKknjBRflQ+AiBvbT0FMuEKSDYZRtM+MboTBZidXN0mVOAJNNn9LurGwFORNhci7+D
         7DCehEDYuM8ahUP274DNJsQyM6USbCM4oyH2ATCHH0TYmOsKWLrZU9TvKsjSfhKil/lc
         wGDBlJa3cc/LzB4eYAxrIf8LUoUkUMWNn4Ef6GOrFTAILXJ7G/kS/e453EZxVLZJSz3G
         IvYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5LXqgvulx1o120cl9JAxyJVl1+kN5GgKCVAhtI/4hK4=;
        b=z1MKPnaE8k1HpE+VAg+Ptfhi9mdefBfXoJ30tQPlOLz8rYOxpdPtjizwUo3zBtXaaY
         xWdbtihhuobxVzz+XCK8JF4oT961SmJie/7v+oYkvcCmF/FmEJ62U0EHGrXaDbjSF3mC
         MvKy+Y9Nll5B+6swMKSOaxasytkFWvj1sNbMXXa6SP/2npA2H0hR23zB1AKbdkfgF5TZ
         AfY+9H0lxgLfRdl8xMF1bdAqFInZH9lQJI42mldpPfzQTOdnHhfOwL0r+ChAP+1uDyrg
         JikB/ozFR09QFoHDrMwLBjhKXS6u2ZK1R6OwAUgaQwIUnD1l/oGZaVI6WB123a6dDKZk
         Fotg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5LXqgvulx1o120cl9JAxyJVl1+kN5GgKCVAhtI/4hK4=;
        b=e0Z8u/k722+uu2kfwEXysBssDb7bYRq6Voe35v9bCZngS4EesIksS/Zky2cAqqPVwh
         DCY9uMebjGTpL/JaXdwDThyXKS/Z4RnUbYjLyErdDjcY5pMIzviyVWX7uq/Xz21TnT7z
         9hxax9OXX6qDDES0DGUC6kLeI09ZK/HlToDgs2cO1U+hjK5PawvxqxGcZu3UZHVCClJh
         Y+i2gI/aA8KeUXGV+JknhcrQcz5rdMrkn6F0EER6Q8V8W7+ySvEyBmu5Chw6Y86q4V0q
         gUI6dUpTZ26IEHwb+XIzcxISpZSw4zEGZBHEzjPLeIDVQSW14Xm+yfc0xAulQlmmLFby
         WeNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5LXqgvulx1o120cl9JAxyJVl1+kN5GgKCVAhtI/4hK4=;
        b=XJD5pyDnyY7Nhwe6CBnZ3NNpRYDEKdpkV3CzpjALP+GHGk0Ql+jnFOUR16jZ+83HSE
         GSUWYECRzd7XeYVz+9oydYJx24oYK4lBuLm5TeSokixe+4+MD4iaEVtow7GfiYt5pC5/
         nvEq9e9/PEYjM0KD8uPyac3yHbFDoNa22DpO0UBTF137m0zcOr0p98c7UD4hNOqq/Sr/
         Md24lMVh4/wR1gAzeV4NwVydcdTf5x1U35JYDKDOWh3s/A/XkrLkRZCu59iQfDgpcLPd
         SROo6NlNyE+xeTDaBMyIASRi3yanA0nb2vTtlr4psE6gr3/V1BAPnir08Vw0ycEonzVP
         7dnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW+JI10FqdpD660hYT1FZA/qnDyuzh4/FprNGcMcGEe+3KJHalD
	rBjITXacQ6JsSNTk1lfJ7Hg=
X-Google-Smtp-Source: APXvYqwgTItZIPKNfLl4o38mqNnmsMdLKiood3d96oSX77TIZq8XsgNnsntxtQ0yHjIRhSGgJIN6Gg==
X-Received: by 2002:a1f:5447:: with SMTP id i68mr12117016vkb.66.1575108991800;
        Sat, 30 Nov 2019 02:16:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2c0e:: with SMTP id l14ls1905305uar.7.gmail; Sat, 30 Nov
 2019 02:16:31 -0800 (PST)
X-Received: by 2002:ab0:758f:: with SMTP id q15mr12206308uap.8.1575108991398;
        Sat, 30 Nov 2019 02:16:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575108991; cv=none;
        d=google.com; s=arc-20160816;
        b=uLIE1DUOC053l1LnbmLO0n11WV7G+mpi8R4kpvBB/kUjwjkw+O30Aod5qC4QzJAQPn
         DfJz9COPj7RyHmxOX+r+JuBqun4nG6LcV2if5hwEFW/waT3KRlSW50c3W9LW1n2ksF7P
         tDvaUGa9gbUf/1exERiqNnTY32THTKsrH55tb0cAshZr727O1J50J8Ds+AY6kTyDHVdu
         YoH0r1KGz2eXb0C0klWfbEQ2WPlldhZGYzqvwFi9m0leWMxWfqoELSW9CR/5OheWk/VU
         wK70imSwZsoLCAjzQtrZb/f5/3kCL3I6M/67JF96azsMjSPEVDW9Ezi6dnIvlVu/obZP
         f17A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=TxWc9UHARUpJVOPfFj/MVFp0YeD3i4sz4epc0r9SlT0=;
        b=KAnMtToOUh+CJW40D8CnNu36jI/U2eTb6Lgocv+gMvva+RuGo2Hyb/QSQXQwW9c4q7
         8WWfkyFk6jF9vrNwhtKFxF7I/8Yc9pAZ1T6s8cPpgDChzlPkdhpcDO4wG8nY+Fl1Keua
         bVnrKHMbn2FWSG5rO6a3cyjIPnsOxrm2dKUamdKBxbq/M2KFcCbQZmIhV28gjR9LtJlZ
         uJwB9t+WRrpGpRz1ImVdiDSofg2XJZS7spfIpgvf4k5SLmZQomFw3z3I8z107kvrXQr/
         9fiJbamuhTl41eLCSpcEKmo03Kg2GS9FRMtKyTOo48h2jbkGFQIZy6KYyn479dUUa6jy
         xu+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id j9si333513vki.3.2019.11.30.02.16.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Nov 2019 02:16:30 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Nov 2019 02:16:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,261,1571727600"; 
   d="scan'208";a="241294663"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 30 Nov 2019 02:16:27 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iazne-0004x9-Ve; Sat, 30 Nov 2019 18:16:26 +0800
Date: Sat, 30 Nov 2019 18:15:36 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [drm-intel:topic/core-for-CI 20/20] init/Kconfig:76: symbol BROKEN
 is selected by DRM_I915_DEBUG
Message-ID: <201911301825.LBTrYBfJ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
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

CC: kbuild-all@lists.01.org
CC: intel-gfx@lists.freedesktop.org
CC: dri-devel@lists.freedesktop.org
TO: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

tree:   git://anongit.freedesktop.org/drm-intel topic/core-for-CI
head:   33c006e813c3896741927f86bf30c8b647c9b366
commit: 33c006e813c3896741927f86bf30c8b647c9b366 [20/20] Revert "drm/i915: Don't select BROKEN"
config: powerpc-defconfig
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 674df13b5fa7ffbd273455d547eff4507a2fcaff)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 33c006e813c3896741927f86bf30c8b647c9b366
        make.cross ARCH=powerpc  defconfig
        make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/powerpc/platforms/embedded6xx/Kconfig:2:error: recursive dependency detected!
>> arch/powerpc/platforms/embedded6xx/Kconfig:2: symbol EMBEDDED6xx depends on BROKEN_ON_SMP
>> init/Kconfig:79: symbol BROKEN_ON_SMP depends on BROKEN
>> init/Kconfig:76: symbol BROKEN is selected by DRM_I915_DEBUG
>> drivers/gpu/drm/i915/Kconfig.debug:20: symbol DRM_I915_DEBUG depends on DRM_I915
>> drivers/gpu/drm/i915/Kconfig:2: symbol DRM_I915 depends on DRM
>> drivers/gpu/drm/Kconfig:8: symbol DRM depends on AGP
>> drivers/char/agp/Kconfig:2: symbol AGP depends on PCI
>> drivers/pci/Kconfig:16: symbol PCI depends on HAVE_PCI
>> drivers/pci/Kconfig:7: symbol HAVE_PCI is selected by FORCE_PCI
>> drivers/pci/Kconfig:11: symbol FORCE_PCI is selected by MVME5100
>> arch/powerpc/platforms/embedded6xx/Kconfig:51: symbol MVME5100 depends on EMBEDDED6xx
   For a resolution refer to Documentation/kbuild/kconfig-language.rst
   subsection "Kconfig recursive dependency limitations"

vim +76 init/Kconfig

^1da177e4c3f41 Linus Torvalds 2005-04-16  75  
^1da177e4c3f41 Linus Torvalds 2005-04-16 @76  config BROKEN
^1da177e4c3f41 Linus Torvalds 2005-04-16  77  	bool
^1da177e4c3f41 Linus Torvalds 2005-04-16  78  
^1da177e4c3f41 Linus Torvalds 2005-04-16 @79  config BROKEN_ON_SMP
^1da177e4c3f41 Linus Torvalds 2005-04-16  80  	bool
^1da177e4c3f41 Linus Torvalds 2005-04-16  81  	depends on BROKEN || !SMP
^1da177e4c3f41 Linus Torvalds 2005-04-16  82  	default y
^1da177e4c3f41 Linus Torvalds 2005-04-16  83  

:::::: The code at line 76 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911301825.LBTrYBfJ%25lkp%40intel.com.
