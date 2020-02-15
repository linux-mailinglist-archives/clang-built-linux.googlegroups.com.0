Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJFBT7ZAKGQESL2JJQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0C515FE13
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Feb 2020 12:06:13 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id z62sf6880940otb.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Feb 2020 03:06:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581764772; cv=pass;
        d=google.com; s=arc-20160816;
        b=fB2adoOcpGNMS1UBJ/Nt2ZMFh/GOdHw25JY/I6H97TCTtnhqJVBPPDM8agTGtfnEZ0
         KOtDFjaBCaw/1x/WFXKFERrCqdlwDErvmM5V7DiYmgYjPnCkP9Z1uwU2U8C4lhlwM1xq
         l1TDkzjrNIhzHstKFLGv95/YX1pczexdy6XXaXtEh0aoDumMR+tcq6wTs0yzpTQ+VkRi
         j/ke+8zri9FlkxvSZpUHEfidQWzMuplIvd6QrOYg75ueAqZBsIicM2aQ2e5XRmHmNNYg
         UNul/fUA6ibqb1/tcfk7vyEnVdOW2J4ZNQVXypFW4MW3AgqKeLCQzt7qdZAXBo5N+pAd
         uFVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kr24Ii5HLfjFo52zXkbKfXPdA89vYAxg5D885tzdY2M=;
        b=vIvHHftyCgsjwGqaRXgFVtlUIiJaVWsu3Yw1eRwR21P9lGj8HPTcjAJ4GQ8rP24agt
         1ntk0SIv8g2y2YsvC7OZHiwlhvKJSwxPyGRJrgdei7I4zxIuks4+u6LaH0zvQBNZv/KN
         WeaE8CwvxKAGDt3rav93w8J/hikij14h8xP/2uNUdearg0vBB7Tl/QadsPI/LNqgupTw
         VFAxmLaP4rsyGZFQQO5p2VPE0Q9dFDAEHe++q2pVaMkB52kMICdobXLEgmcLOWPjSABf
         kuDhrTiZnjYn3pqR58oVZNHD0CZAI9HMygrpezzCKttnhi13wQE729YhzFQ46rf8HvIz
         KfxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kr24Ii5HLfjFo52zXkbKfXPdA89vYAxg5D885tzdY2M=;
        b=ElrESlJZw9ZhFu7gX6QZUB/jtPwEoCoxwdRRHzn21pj+zpDlMFYcO0Lk3SGq6HMZNp
         2ZR+afJ7ivolofOmpY9Njw4u9lTE+q2ei7mIhZOlnuKWojcg3Cdczzx+fcsIMEU7SIPX
         MTT+gW0+4GCPi4LLC6QDoaLpRD7MJLKwiO2yIKDIx+2E2HdIVlDc4ooCiUR4DKmY2bt3
         E2B0ZLM4YMQMo8nTkvPS9Xm2Btb7VNTWm+PKDs/vsRwbg47HBoIVr8FhF2YOZKqmlVaK
         GmrX8tuzdOK0u0rLVrL2f4XGbuN8eWxi1kxrqR40CRfCkYL1Veq+c+PkoTlaHRfIxaaF
         rW+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kr24Ii5HLfjFo52zXkbKfXPdA89vYAxg5D885tzdY2M=;
        b=kqKEYz5qtkShtFIKrEkgRVCkODnaOL3VMz8/di4qjt0D+RJPVph7iTLlnlVyysmChm
         MXnfLni1d5yKFOFl/SY5FfQ7Mq3H6veY7xvqYJlEoP06DD5bARHs5O4X921qOgqNgdQq
         A7elatmd0GleffzcMD/z61Gq4ddOu01qItmjfHR4zmzA7xKGUs/gPT0P8rj3QpFaHz0Q
         V4+bkzlfUSdg8fUg9WMn8dtTyMM2g8JswO3MFhNfC/Ipif8/2LdVl3YcEod9FyAnU0Ow
         aAASplqRrsF/Yg0XI72S6iZwyxjP+Q9KXyn56hpvmcEPKMs3fYDjWUHojiVrZ+LOAsA1
         mZ4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWeMqRAZdonvNWLT7JIYAxxmLreNkcAN+tbHeH1r+wbfuHWaLC9
	yqKEJivuqUsVqEUEbV89gT8=
X-Google-Smtp-Source: APXvYqz0y16qhdzYx/CS2tG0kx1z+CmeQ6ZHxZ9R0xQuG/AZU2X6u6L3OP7xxm0m7V2T4zWsTs9LZQ==
X-Received: by 2002:a05:6808:218:: with SMTP id l24mr4454565oie.108.1581764772590;
        Sat, 15 Feb 2020 03:06:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:534e:: with SMTP id h75ls423236oib.9.gmail; Sat, 15 Feb
 2020 03:06:12 -0800 (PST)
X-Received: by 2002:aca:ec15:: with SMTP id k21mr4718419oih.35.1581764772197;
        Sat, 15 Feb 2020 03:06:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581764772; cv=none;
        d=google.com; s=arc-20160816;
        b=jeJaMaskxueD0J2SambO2DHq9Oqa4M9PTSi9Y1djN54yQAEtFQmcma1YsRz8KT9srM
         cRXNrlXadDCAfP0ECJyLVweIF8Ki2+DqFx53gU3nQtf0mrEmrV+ko/lVUwEEjL/QuH/L
         aqEKYnWCeoRmVTd7ldF9XRaE8DbIxsB/NrrnT1yyh0V1viAvcdLDJPaoUV0704oKIiqI
         +wCy2IbkYCMEqrXvi73HFalofHFAaLUa97vzzrBAqQLszy/hdFF2LVMYhc0x1k5b2VOY
         EIDQhUepeKvvHwBxc9OOEEv8utawHaeFNfI092BAakCB54Lcwq6OiqHDlSpQdURPNXFY
         0kcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=XwEGd35smU8pcJpTVKyd6j8j7TlgC35c+6v8C8+CGWA=;
        b=G9Ni7E/vHAZA3pLPPxP2iddBqIn08pS3JWIq8YJzLux6k+iHxTd1TG/h6TZGH5Rhny
         5BpW0J9S0TYtGinogkXAmQBwcPcCNT+xSYg2YjYBFYPdDnhrZCxYse/ncGzJ2TjCu4QY
         MYtYiW2KsAitqtyP51khurNWAUEtaC2todpP0xehysgjZcknVeCJ589dLvToZRhnVKv/
         qih2+tuFyxRENdUbs9fVyAtlmJpseHkhfze4UP8ILc6lVh6co3Izp+k0MVroeHq5pwg/
         vU35z3+U1CTc/3KFrOBJ0fbC1OsXSiqAbhhgjVrlf9SYByK00CXHEW//z9Lp7WlDKvLc
         xOew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id b2si446759oib.5.2020.02.15.03.06.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Feb 2020 03:06:11 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Feb 2020 03:06:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,444,1574150400"; 
   d="scan'208";a="433301782"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 15 Feb 2020 03:06:09 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1j2vGz-0002bL-6Z; Sat, 15 Feb 2020 19:06:09 +0800
Date: Sat, 15 Feb 2020 19:05:28 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [drm-drm-intel:topic/core-for-CI 18/19] init/Kconfig:77: symbol
 BROKEN is selected by DRM_I915_DEBUG
Message-ID: <202002151920.cQzrrBTz%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
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

CC: kbuild-all@lists.01.org
TO: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
CC: Chris Wilson <chris@chris-wilson.co.uk>

tree:   git://anongit.freedesktop.org/drm/drm-intel topic/core-for-CI
head:   2208da3a71d7913f187f195ddfa9be48133aa751
commit: b31a3373cca21172327d1124cefa70e19a861f76 [18/19] Revert "drm/i915: Don't select BROKEN"
config: powerpc-defconfig
compiler: clang version 11.0.0 (git://gitmirror/llvm_project baf98375bde77ba4b9705acb3d4312d437f7b9f9)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout b31a3373cca21172327d1124cefa70e19a861f76
        make.cross ARCH=powerpc  defconfig
        make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/powerpc/platforms/embedded6xx/Kconfig:2:error: recursive dependency detected!
>> arch/powerpc/platforms/embedded6xx/Kconfig:2: symbol EMBEDDED6xx depends on BROKEN_ON_SMP
>> init/Kconfig:80: symbol BROKEN_ON_SMP depends on BROKEN
>> init/Kconfig:77: symbol BROKEN is selected by DRM_I915_DEBUG
>> drivers/gpu/drm/i915/Kconfig.debug:19: symbol DRM_I915_DEBUG depends on DRM_I915
>> drivers/gpu/drm/i915/Kconfig:2: symbol DRM_I915 depends on DRM
>> drivers/gpu/drm/Kconfig:8: symbol DRM depends on AGP
>> drivers/char/agp/Kconfig:2: symbol AGP depends on PCI
>> drivers/pci/Kconfig:16: symbol PCI depends on HAVE_PCI
>> drivers/pci/Kconfig:7: symbol HAVE_PCI is selected by FORCE_PCI
>> drivers/pci/Kconfig:11: symbol FORCE_PCI is selected by MVME5100
>> arch/powerpc/platforms/embedded6xx/Kconfig:51: symbol MVME5100 depends on EMBEDDED6xx
   For a resolution refer to Documentation/kbuild/kconfig-language.rst
   subsection "Kconfig recursive dependency limitations"

vim +77 init/Kconfig

^1da177e4c3f415 Linus Torvalds 2005-04-16  76  
^1da177e4c3f415 Linus Torvalds 2005-04-16 @77  config BROKEN
^1da177e4c3f415 Linus Torvalds 2005-04-16  78  	bool
^1da177e4c3f415 Linus Torvalds 2005-04-16  79  
^1da177e4c3f415 Linus Torvalds 2005-04-16 @80  config BROKEN_ON_SMP
^1da177e4c3f415 Linus Torvalds 2005-04-16  81  	bool
^1da177e4c3f415 Linus Torvalds 2005-04-16  82  	depends on BROKEN || !SMP
^1da177e4c3f415 Linus Torvalds 2005-04-16  83  	default y
^1da177e4c3f415 Linus Torvalds 2005-04-16  84  

:::::: The code at line 77 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002151920.cQzrrBTz%25lkp%40intel.com.
