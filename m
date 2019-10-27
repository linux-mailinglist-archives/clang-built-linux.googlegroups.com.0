Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPHX27WQKGQEWT4DMCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5728EE6551
	for <lists+clang-built-linux@lfdr.de>; Sun, 27 Oct 2019 21:19:10 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id m205sf4036000vke.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 27 Oct 2019 13:19:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572207549; cv=pass;
        d=google.com; s=arc-20160816;
        b=KzeeBy0m/l95MfFf9IKBY+KL0UMXxmHYcWWdcruHJhx0QN5pWQw5+vjlmjI8YIVUMP
         hhRsiZ9V7BXETTQ7IqaabIqmjhVI4c9OhvSiAR7WqKG4kl3u/gW6tM0tyZ7BnM6zNhTy
         b0lYInCIf6inL648x2tJFf7+U2knN4mO/pzLOuyiL3UWlQzPV8hIZ47+EHUNjASfJ536
         oq2stpW3xui8enb/OMQYaiLUX75F2XVKCGM9Ufzq/Qxj94YUylajEBVVVmP6mXtBFN9c
         wX9he4LjZ1hwQnsVHPyGiCcdtMPmXdk15q/ESEDbJ2B0MU9MV3vbmb9a19OG0QuD5g5M
         47aQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iPsNxFwOhttjM91aBIjmcC1EOoW/OX4MhMJ25veXrUU=;
        b=LTa7jNs6GuCeeayG4lLYRnc8U/kX8ZE3wiJtHz78/TeZEPqJBmT8IJjGRRHhHQXOqP
         2MpG+zJPNvTn0pvxNEwcu8/L6o3bVi3j4kNlYriZj+NAWuw6w6+1PwEtzpHXx1y2/zvh
         0dy7qGD2Eww9O4WTgaCmei09E/v46dfnUG55UWqg+Dj5FNJs5NmQXX/FTSBObkjGWnLQ
         HsONPwWFaIKMHmwqbAd0pAUQRuH3egi/s6X2YjugFqsg1dLk1CcD7/Q5C9ubHTFYkg98
         1g333E6aneNVFqi5T+r6wZUhU9du1Hyr+0l7J8Q8FtUSa4264vw0PSZHbPMtITbytHIA
         +gYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iPsNxFwOhttjM91aBIjmcC1EOoW/OX4MhMJ25veXrUU=;
        b=is7iqscHoJJfTVGUonTt+caddff7v7J/j+iA7eawWRvbZ0pdUBJ43JtrlRfMX+WDex
         PGACaGjLcEpp5KZJU9Rxg0jC3wlxJd39zbnnBHfUFwJqmTYwUIjUU1plZ74jNqK0QLKp
         WH+KyeiwSEjOrvw0ubrRL5+MgZKTxFo7dtj7ALVKgn/S6rP+vT66NzwjCOdi+Xn8iOCg
         JtjqgJV2bYGX8s06LQSjshOOIvg4KfMHxm0Gv6u0SHtzVm/4rAP79tKJblhclSF1rcJb
         V7kIj+i8RmMZjR7mzevVisy0P1ZR6tKYk2oFUD571F8IAyeXg/VQLBqGMUbk+dqSrX5O
         /j9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iPsNxFwOhttjM91aBIjmcC1EOoW/OX4MhMJ25veXrUU=;
        b=HZy1GgP8fAFdIB7dAq6g4EU6ZvB00b9i/3MJBHjJsM2NdXqeJJSfNhEFnhjc0PAERM
         GMiS3UiCz1hXXq3brtILJ6n2XJdePJrNBs4pJUPsgR6uQQ/qfA0Mp7CP3thhjnw7hWoX
         3ckMbD/NkjmL6jBoHy3XbLny1yo6lT1UHM9nwBjrsO/wIpoWbQWC/5mcWiziXjh/c0/0
         sDqkvMI+GYIAL19DZal+WWXc5gj0VpzyyZxg3qDdZ1tIat5HeKe+BPsB91V5W+VJ4mhW
         B4CxaQApXHbzTCbGDpgJD+/NuD5ahnFjYluykCsumaRDW3kwhiH8B/LARGnYeHQmCLDg
         h0uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUmOGoekYotvhREX9Nkkguh+h5MUIprNXrXA0/L/HRS39lLoBdw
	v4o4TcpJshEK2Get0TFrsvw=
X-Google-Smtp-Source: APXvYqyAgNc3vi9IJwRnc/jCnRJ8dP2KkCQIazEsffLZSDAfxrRi+kUg75+39i+HzMn12VAZDMNkpg==
X-Received: by 2002:ab0:55d5:: with SMTP id w21mr6027559uaa.88.1572207548830;
        Sun, 27 Oct 2019 13:19:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:dd04:: with SMTP id y4ls1415778vsj.5.gmail; Sun, 27 Oct
 2019 13:19:08 -0700 (PDT)
X-Received: by 2002:a67:544:: with SMTP id 65mr7576768vsf.12.1572207548430;
        Sun, 27 Oct 2019 13:19:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572207548; cv=none;
        d=google.com; s=arc-20160816;
        b=NTml1PKNMcj/YM0+qQ1Juq1kW4rAC+7P4mB7JSKdfi0ak9IuqDnZV6Weuk1yDFcpGc
         L7UQGNb9mYeK/Z+KnOd6cJAE/k2L9TaqOullF6WGZBG4WJV1xbPQ4xa4YgCxROVGs0Gc
         qHVsY/nI1YSA9bnjGyWlb2SmpgTt71L+j1ybctf8GyAjmR858PHKttoS9GUXsXSQ0UvF
         gCyhyBWp2h4Dx1NpDFoT/Y10G79A20LZILsXqnzPtYCWhuD7DZI/1l42+5RQh1rkUSD7
         nh4WIjCD7NvH0OfoIq6RbObD+jR1XhLpgiujD1Iv5JSPqclqghzlAYCnkapU0Jdk9qP5
         5MMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=7Tx222z+uUan43Abm//LVX8DpjRh5p4u6aJcSpWfkW0=;
        b=IaiauEvRRwrR5VERxjn+5Liy2U6HCFxD9ydL8BrqUCyJJuXZksq7ApE1BNDk4GpOIk
         S1XGSg1o1P7BSydr0LSkaxAPuUrdsQOHz37Y5n06d5wX73YREJXhuYZzey2WQEAt1vMz
         9f00QWM3sI8EWvV5rygOus3N140hziKzHHr+RUJWaQIugJ0p9iwvAfH5WtGZYmcqOL0h
         Vj43000R2MYk7t+byYyrIrh1u+b858RN8jnJmBHnQP3EFuaNDcwFwZnbV9kCg+cdadl0
         gKCaJM6PSXlnPGjmcNJ3VT4DSiHFOZDp1GyNa9p6XX8o5haR6gq+PJVmVFFkJ6tXK244
         OZHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id o206si594692vka.4.2019.10.27.13.19.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Oct 2019 13:19:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Oct 2019 13:18:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,237,1569308400"; 
   d="scan'208";a="197917556"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 27 Oct 2019 13:18:55 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iOp02-0003Dl-KW; Mon, 28 Oct 2019 04:18:54 +0800
Date: Mon, 28 Oct 2019 04:18:15 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [drm-drm-intel:drm-intel-next-queued 6/6] init/Kconfig:76: symbol
 BROKEN is selected by DRM_I915_DEBUG
Message-ID: <201910280411.kbTofJTz%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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

CC: kbuild-all@lists.01.org
TO: Chris Wilson <chris@chris-wilson.co.uk>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>

tree:   git://anongit.freedesktop.org/drm/drm-intel drm-intel-next-queued
head:   d9d54a530a70eee6f003bd3ade38817cf85b9325
commit: d9d54a530a70eee6f003bd3ade38817cf85b9325 [6/6] drm/i915: Put future HW and their uAPIs under STAGING & BROKEN
config: powerpc-defconfig
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 9d77ad57540c45b0a6e6ffcf8721a3189c0ed70e)
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
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910280411.kbTofJTz%25lkp%40intel.com.
