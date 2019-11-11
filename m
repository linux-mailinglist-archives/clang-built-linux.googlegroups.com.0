Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBC7WUTXAKGQEA5FMBGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC6CF7262
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 11:42:20 +0100 (CET)
Received: by mail-yw1-xc40.google.com with SMTP id b19sf11240241ywn.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Nov 2019 02:42:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573468939; cv=pass;
        d=google.com; s=arc-20160816;
        b=htfc0V/mbRfb9kaDXh1YyK3YjEw1C/HPBDcOyLB7WK4iE/Ecvr9mHYuzxe3KESR34n
         XXEexDoWh4E2QIQAvNULeM5dBJC26VAizoVESQ6zU0OnDMkdrap22I8C7/RqXr18aD9k
         63EIJ1HnU2RrP379SVlmkL8wooqF3dXi+NU70m4gpBQMW2M1et5e2WE/LRsLJtsd+XjW
         ou8OaOXyltOas5H5P0Vt5AQAYY08F5Ddb53Lai3TPkSBDJwmFUg8OLtR4ua+SZsbHnmr
         tSGGHBnYX3B30aJ7i0mNCKQa/2AqxbBX6p1nD/Nb90WTgl6BBLDUK/hESCydhwgTJX1V
         C51g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=SZs7infTEhu7kAItJmhJkPk0ohpMD6SoCyB1IU6Hj/k=;
        b=xRGaECJx3paZzdy13SeFma35WyOVJbobBTbKKnCs193IYCTwzUGqQQmi1q1OhDcyDx
         9X7Bcu8Q24yJMdJNLHlQlj89iRMkmnpcICWMgiBBMyg3guZV3D5WgidS4G5IcsdMA19z
         vuax5NBI13thuFUIlyKSOtYoEkHlY9Q0aFU0YKhu4XN2TBLy3wyT3b9ZYHVVcuHyT05I
         YD68hR6zgQNOHdgnYPZLMNjbIsAaYfE30jJmH2Nek4i+KsjCReP9vyIRmA/85EF8NxG0
         sfMtrC2RgDxpF8NFc+ed9oeqs3RdZHxNRPEAGpmRSk/REnIo7NFdjPDdpBSx0CTo3noa
         zchQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SZs7infTEhu7kAItJmhJkPk0ohpMD6SoCyB1IU6Hj/k=;
        b=W5Hk5c6WVpdSGPH/KvDP6izcCZDhUXgMdxS38wv6orKWZ8OK6VGZ4H9jKxkq0nNK2C
         7EiGkv75xz2HoNfVUOVcOXFyaW4fwPgW5fARaPRA6IDoiUTRBvZQfsyQhpJBpWeMVsOz
         Yhheej/3wsU02bDpaVT7BYle/JPaRJTb/ia0tVLiyb8i+ZHHewRorAWJZn7CCrumgm3I
         LyZbXcCo5XuGOMhQeJ2aPprC1+1MkgQNHbtNjzr10gQRsbOX224bD+BwXgAvsMpul8DU
         65gNr+FJ0n81xK1vBQdBKG92dKopK74vwE4Kxewmc8Zet+w6zWtf3LaY8xls20Lnsjwu
         65Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SZs7infTEhu7kAItJmhJkPk0ohpMD6SoCyB1IU6Hj/k=;
        b=Q/vlFfxecS6C3ulOA2PXJeQd+O1nDPgDeeNzPKLsfngVN7bw9XIRKOkR3PRpVE7fYU
         KQ/vICRjIu/Tea+Txzjv6qqpvw7vSFuU6u5rpicSvG4kYbo1KOU3NLP9IcYGWjeayk92
         smKxRF7bCNkvEGKdlbfr3WZJSDrybQ7pu4ohS8MfU78eXIXuVsVyEIIkqKeNXCAvj/rb
         Q8TTNGPJ8rWgoFAEcBZ5VDCAj/iZyQ5uWAtLAJGqqRrXMcfxAeEVgoenVIN4Fkq2tLbs
         IozdbXu9S/B2Gi7pwDXNgO2qRsl/v4MbM1FqMZyR5t9UVxmFeMuT9m9tCZTD4C5688cH
         iX8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV0VT2I12INeNV9OlfA6TJnhPliX6oJ+xYMpFUL/H4hkRPFrquA
	ZToLvV9hFtPNH3a8xVxqR0k=
X-Google-Smtp-Source: APXvYqzF9ARbiqxaZefQML5IMa+JpxIMUjtTigHUUKovNSsf94aGr7M+ifPzkgAia6puoekAzdCnoQ==
X-Received: by 2002:a81:7205:: with SMTP id n5mr16808327ywc.314.1573468939490;
        Mon, 11 Nov 2019 02:42:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:a046:: with SMTP id x67ls560057ywg.1.gmail; Mon, 11 Nov
 2019 02:42:19 -0800 (PST)
X-Received: by 2002:a0d:fc45:: with SMTP id m66mr16982294ywf.380.1573468939001;
        Mon, 11 Nov 2019 02:42:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573468938; cv=none;
        d=google.com; s=arc-20160816;
        b=BrH+pSYXjZoV015MvVIPJWqNA/xK/od/IwyrWG2fyQ+UI4BuzZkIjKR93JLZ++T6MT
         LGxHo0qSnuGrm90j0afx+PxVBVLc3Yn5ArTO6vFl7tASB2iclhLkYfJNvhlO080ARRUG
         TPpX06MJ8JAe1eVKONGj5UIDr1B8CbyUxUEkDC9Mpef8r6p4FB40MEy/1PQT67Z4cxMZ
         lojZPWURbqtRL0R5vZ78p7wJz5IO3ZRLUnc1wMeY9U1hv3C3aASO6RU+dbIgZR4sj+2E
         YvXDphSZeZPctnvWlzKGzwQF50YW10u0ube8iK4+aSN06v5qwxHM1ERROHnTDxkfLJpz
         j99A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=lTQMFprPjy7rPG///2ZDFD7BEp+eKGy9/v/uioVGbe4=;
        b=TVnQu/zwTb3AzpcLq35jQKezH6hz2+94I/7PqLkfPuUTTofCYTnnjS5t70FcF+8qXa
         dDnEg56a37d84b4XAKUIEfQrH2KCnJMv+ZaH7fv86FvL8s3nLmY2QhVdyJ9/vqHRUwyx
         EHePrC4BtvPMeC967EHfcV+djx2czjYmxow+ZFFZQSPbEd6Y9mbClGpGIwJ6ASRxDUkU
         3cnMvnxK5t42Iq6DPoKJKmx+/j7uew7vUvSbqYU4Pn/4KcuHAqisn/sTU/ItxAW1lYQU
         FeOrvMCPd5I+dFTuMiB/voxhGFmyAhB4pir/AvW2RmEC0H2DSzlcjjoGB0wSQScqVSHQ
         XGiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id x9si642999ybd.0.2019.11.11.02.42.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Nov 2019 02:42:18 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Nov 2019 02:42:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; 
   d="scan'208";a="248291738"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 11 Nov 2019 02:42:16 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iU79D-0003j9-UO; Mon, 11 Nov 2019 18:42:15 +0800
Date: Mon, 11 Nov 2019 18:41:26 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [linux-next:master 6529/10267] init/Kconfig:76: symbol BROKEN is
 selected by DRM_I915_DEBUG
Message-ID: <201911111821.PbMhKSYI%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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

CC: kbuild-all@lists.01.org
TO: Chris Wilson <chris@chris-wilson.co.uk>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>

Hi Chris,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   5591cf003452dc3cb5047dc774151ff36c8d9cf7
commit: d9d54a530a70eee6f003bd3ade38817cf85b9325 [6529/10267] drm/i915: Put future HW and their uAPIs under STAGING & BROKEN
config: powerpc-defconfig
compiler: clang version 10.0.0 (git://gitmirror/llvm_project c250ebf7bcaa85f5366c651c2efdda828258cb27)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout d9d54a530a70eee6f003bd3ade38817cf85b9325
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911111821.PbMhKSYI%25lkp%40intel.com.
