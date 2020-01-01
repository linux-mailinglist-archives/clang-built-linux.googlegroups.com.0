Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBR43WHYAKGQE2BKH2KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A4D12DE12
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jan 2020 08:44:08 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id f25sf19216063otq.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Dec 2019 23:44:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577864647; cv=pass;
        d=google.com; s=arc-20160816;
        b=A7oH5tO1AEXofW7fDiaQOmODkvyChCudyabYakIW00bTKO5baNJmat44kCw9gN2hDW
         rFucsK8LmIxeZhd6rZI84F+0o1TZa2HFvZE5ZdL6UASZ8OzlwMyzXETvXSpTjsgKMIlC
         6K/6q3etKUJdIvSnmLUPTl+ELRA6kqjHEFNMNKWQaMoOmI4Dkky7JrhGPUP8KfTtolhY
         ftMyWK503Jn1etpsLVJpxULGoP6SKV6GErhBDq7JgLdoWkset7moXAlNKgBeONRtk3t1
         NcKmTvMqNNo7GAkCx33XQtcmxADRUjJSlqxRvBC0481r8vJ+0ctdQDKunkh6y536VyIw
         BTlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=W2BcHSAOLAg/xPCWGv/YE/6PbMsQb+FtZXvCEapuOY8=;
        b=kI5N4NyuTagqbjiWtAG37eikgAVA6gRHAYZtYvTfRp/XMzNR5e9yP3xBPA33/3Tabj
         Pnf5TsdyYQqFcW7pHGlpR8TZIqTkqWZwPrLXR8F0ci3guqillklB1Iyq4me6CByMphOK
         ENBBMgtxk+ZysgNIiMN+7NniuBPnO/L+XdWxUeR5r/vpYQvXDC88ranln9eV9nRPu+Tf
         Q8unQF6TcJuf6uo9gZeQ0PwSj8SnKYLcAOjk71uTheBBwbFbu+nhuheiKgmnANtjbg8c
         18R4hutKZCAjUxyHnfa0bnCED+swnuZfhfwcsiT6zQUH0sHncaG/6qvWbo3vgHmdjSJ8
         NISQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W2BcHSAOLAg/xPCWGv/YE/6PbMsQb+FtZXvCEapuOY8=;
        b=FeGRP+GvO6XvO4UhW/+WAWKLB+MKmSRAlpI3oLcZLTClLrMCscuesKv8SOi+SySxwp
         FxvOgowrD4zgVQnaCih4NAnvvapTlDBKRLdiQ0DseRQx6uhk7OMNGJQvGIQxjKi1NVzP
         PJqGmAPoncuYKBZnod7ML7Nka/GFa5XVyH78GQrXck/xgdSLZPEQpTuJMLeI3B0cki3l
         l8xwmXaL4offBggYyxn01Fy3Ws4ZXxlnZCQgMxCaxwVbWVfR+sjOrzOOuHDdUaEFIvJ7
         i5XSOW+PdV+baG+qj0C+X3IEHfM0+kEWZYwg1dRvdi/WixUJD2EBJJQk1R6LJsfAfuHE
         v3Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W2BcHSAOLAg/xPCWGv/YE/6PbMsQb+FtZXvCEapuOY8=;
        b=BUeL3e54KdtdKTm6pHRGEHlVyTE8k+Zqmo02E7aVTlZAqNlWB5E4SygVBr9Ro0X+Hy
         5lmmOnvzj2wsW194pMJH1MbqsRFoG6srEEdGf50qwonmBVyTxgN1QqoRkN2tF9vJF+IA
         Jj7LXlPbGiYZ1mFDvlSFWGEQP9mOt9ufWiKFJ92ZzHdvaES4pJ/IMxqiUdc2dBD44o0H
         dHh16vPGHARm/9bU5np/4KPQKMRa6yv50yH66FXlcHWIguDhoShpyusQuti9lGbekUgy
         1s03hXzYNAxhR17ZByiqf/axSonn8AElVR2xJ1VjBUpCUcHLo7GRg7XWVHXwKPvseY1n
         SFcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUQdi9BcLTuHQ4IyOs7Q8xl2NwlCfPR7UU7XuqWGm+QFV3pZiTg
	9CSavRFKQ3sLDaEHoIUY1sc=
X-Google-Smtp-Source: APXvYqyEVvFoF6wxpRt6gbkV0m/rhfgvkIraQT7rHWWxIyGkPBowRwt2joddGcp6OUSJ9lBW1bqgMQ==
X-Received: by 2002:a9d:6516:: with SMTP id i22mr67204208otl.94.1577864647197;
        Tue, 31 Dec 2019 23:44:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:60d0:: with SMTP id b16ls7924885otk.0.gmail; Tue, 31 Dec
 2019 23:44:06 -0800 (PST)
X-Received: by 2002:a9d:5c1:: with SMTP id 59mr86418363otd.192.1577864646868;
        Tue, 31 Dec 2019 23:44:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577864646; cv=none;
        d=google.com; s=arc-20160816;
        b=rah+JNrDEtkJWwVsxCKu2oBquYPc/JioTgR0p5hVxe6DnMqbf/cqrMwiyFhVfrP/Os
         yAerVpi4CHyGAowm56uuBjqCaIQfC819l8wJ9gw2Kwvb6X53cawG4tS4Q03BAvytXHVL
         bB+eCQYlvrbQ7OiVhJFQ61c+7E+3EpGrbI3pK+zH0+Ph70DpX7fedxwhOvhHd1szhhAp
         2NrfJP3fGYJV6iszs65CTJww0j9444d0BzwEAHq2iRxTgYTUkGKCkx+39GqrNGy43DAo
         Rxqq+vpZynW7PdA8jHHzMGNfXs+JshpCExcJeGD5P7w2QVJ6H3XwK4SJq1XDp0HI6p7R
         fLsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=+YNFUQTkZixxWF/6SQ/1MHEHMjqK5u6/6HuZh/abj8A=;
        b=UFBDCqqGWIbSWJO2qdM0VVVAqJXaj32NEWELgokCQSHcTGlGETYgo9aizPbahMnbeX
         L8kUrQOQ6mPH6yeMyVg8mBlEv6kNmj5zzqqpzITSRQ35zedq9gvHgaI1XqmI6IdWf8sL
         mMKtyjg/r60EF31pT9SbKutfjxoqQZqd44TEhzDmvbUTfDFG0LX3k5Obr7jUtO1LdViy
         Ulr6cp856pttygx+qJVjTs7e1e5wP0nRmg1+y0uQF3AInPksrsqU4zpVSyTaBu4AlEEL
         ThMZZ0WOFZEXtmijFh3WlhnLReUiv76cj6dbmLWOkZpd/y9QlQc3XyLCWfgqrqjU/sSx
         rJUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id e14si1687063otr.1.2019.12.31.23.44.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Dec 2019 23:44:06 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Dec 2019 23:44:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,382,1571727600"; 
   d="scan'208";a="221598188"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 31 Dec 2019 23:44:04 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1imYfj-000B16-JN; Wed, 01 Jan 2020 15:44:03 +0800
Date: Wed, 1 Jan 2020 15:43:44 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [drm-drm-intel:topic/core-for-CI 18/19] init/Kconfig:76: symbol
 BROKEN is selected by DRM_I915_DEBUG
Message-ID: <202001011539.Oq3g3z4Y%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
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
TO: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
CC: Chris Wilson <chris@chris-wilson.co.uk>

Hi Joonas,

FYI, the error/warning still remains.

tree:   git://anongit.freedesktop.org/drm/drm-intel topic/core-for-CI
head:   78c1332d19c217f195c5cf2e3e735f18ac9e8936
commit: a42e0d4d725b6b6ee543d11282658b2b1d6eb3df [18/19] Revert "drm/i915: Don't select BROKEN"
config: powerpc-defconfig
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 64cf26548a4cef7745ebc385ac6a2d280bcaf6fe)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout a42e0d4d725b6b6ee543d11282658b2b1d6eb3df
        make.cross ARCH=powerpc  defconfig
        make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/powerpc/platforms/embedded6xx/Kconfig:2:error: recursive dependency detected!
>> arch/powerpc/platforms/embedded6xx/Kconfig:2: symbol EMBEDDED6xx depends on BROKEN_ON_SMP
>> init/Kconfig:79: symbol BROKEN_ON_SMP depends on BROKEN
>> init/Kconfig:76: symbol BROKEN is selected by DRM_I915_DEBUG
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202001011539.Oq3g3z4Y%25lkp%40intel.com.
