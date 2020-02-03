Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQ5L33YQKGQEQSUCARA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 822CA1500C6
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Feb 2020 04:38:45 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id n17sf5579062plp.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Feb 2020 19:38:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580701124; cv=pass;
        d=google.com; s=arc-20160816;
        b=BXrQDnMStjQ4b1U584/mQX3XRh73CfNhZW3c/0neiu9wW1vTsl2dFX1SL5/1oSG8NK
         IeO2CkXpjCDWTxJrS0RYvFPr0u26xtFZunQGkGcYGVwFU/EpQKa2hUXaXLOaD7l1y99O
         44MSz8c72nc3esVx4dHgQaNjS3a3O5yJWK0+p3bGZeUFnTEen44WRxX+LwP4rH9nhCRc
         nKa7MjCi6r/X3M8yAnDvQTWd+us7ugta/iGe/RpHYptA0/ltnDexGvmzKEeGAta6YNnW
         ZOkaag4ckUNAJcCkzcdkPZoSXj3WB5MVmDL1nHDx4birwG4vX8rcSuMOtGbpwtv4b938
         RdkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Q3WHbSwN8P8gL/YUH+yxe+qyTkymyoYF19rmdY064jQ=;
        b=r6PY0vg2wHdZW1kOhpFWfzDWljR+Ffo9HNLi/0IkCOOQJMnoIiYbvw1qdr0wC+EwkS
         4jb/Ma/XA9kRPyWlUmADWCjUs6THpZspfkvPsANKFh7Vkrg7QJZ7eHwg/4VjWvLc5WDd
         eabTFSXNr6V08MaGcgBuy8tfWvpuSZ+daPHJGtN1j8GYkJReRBQd2tOdTPN56kBlvL9S
         Bo3P1UKU1yksC/CbvNExRDZSrfj3ABktn0LuwrxVMc9VhwhNCEEZUCkvRVV06XDLQ8fa
         Dg8E2lOEqYHsXP9Kd3ibq7nGnFBEIphe+ACW3W4st3Vy5BUK1Sp4e8ASp3YKh2saGtRS
         9UFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q3WHbSwN8P8gL/YUH+yxe+qyTkymyoYF19rmdY064jQ=;
        b=D24JVYjoI2Efje8WR+nYmHESssUvM8iKU0e4pwzjEY8danj/PjKkao1WNvzCysEmLP
         gfUTtnRTEwuIrW3LmvIAD+xf1VWxGHCCLLHFsLat1oZ2PofmafBR7LAiX8711Xve34qO
         v+81uQ+EvhhfvJeWbUyU4i6fQB7aFvPYyUMXBEvFF9g91/QhsFpMauBlaV/UxN42AjQV
         LpHEKS4Z8PZc05tXLCDIoVq0UAFfZh6ADVvJsaqILFzsXLKbcnBiiaqOC207DFpdhnip
         qX96JC5i6byQfPAXZJGLltGHqG/AGyLjwxzXOriwHW+vHe+OuA9o1wkQfbIqi5Jk2ewv
         b2dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q3WHbSwN8P8gL/YUH+yxe+qyTkymyoYF19rmdY064jQ=;
        b=HmekLic2I1OaNQcseJNQxar7E8BqxjaXYqsKw5hZuLsA7MeQGHWZnfUJ48QDdD7AUz
         QgOD5lBme5JWBpIo19rXC4TySXGWd15dX/g2e8sH2f5/kiNdv7zFA7crgun8G3T4DtGN
         l6UDHO0liXVzxcYbrSNnwB/psD2ffS3XCrgLfjQCgTcUt7lLu8mtDVZfihRf0msMoej8
         DrfDkTdWZqogIEBuGoI3qUTMk+X9+WsxNvGlhiJxjy6FcwuQUoDKlbwcHYZ+kShQ/C8x
         3h6TaQ9+Sg1njS7fxg9fWx91hdcyvTLSajm+Ab7oXie64Z9fwTblSpeXhi8Nt1W7PRTC
         zNDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUZtkMLePiKCiz5AIjGOK0OggPc/p/IugH7xOlpTUrVAPuiVC+Y
	73M3wqfTeNBB52F+ijv761k=
X-Google-Smtp-Source: APXvYqxvK7kCmXwezM+7cTimT8/fpUWgN8u9AnZvF+UYIPtI1Demw3DZTetVw8Yl3S40gRuTqCRn+Q==
X-Received: by 2002:a63:5b59:: with SMTP id l25mr24023425pgm.382.1580701123803;
        Sun, 02 Feb 2020 19:38:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1bc6:: with SMTP id r6ls7806475pjr.1.canary-gmail;
 Sun, 02 Feb 2020 19:38:43 -0800 (PST)
X-Received: by 2002:a17:90a:8001:: with SMTP id b1mr26778119pjn.39.1580701123396;
        Sun, 02 Feb 2020 19:38:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580701123; cv=none;
        d=google.com; s=arc-20160816;
        b=E5vRrZMTDlPgZ/AaX2KYRrMPDpXj4BVLkfsWubBNOnsSjUTc/uXPNOm21trViZb48U
         Pwi1Qda9RrduNzoJgMQkMNur/SIyi2OSgwgUIo8PWZ7SN4c7abxm26Mwh4Ul2/8KcAXR
         Qm5Ui9qZ2sxwo5vBABgGlBR/R54egrmulEcmy6+75krKDfIUCpLTEG4pNcDR/AJFFzW7
         KrfeFZHFJ9omtGBVUg8L356p85ntY/sW1WAW6Dvh9jiY75sWtLibi1AlNbtUgTo6egiQ
         Ws1Udlfi584+5Jj4hz8Oc5kLQZig9FWkCf83pksj7NY5q0P1EgPNOzm0pU5rsJF93fp1
         ADtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=ECiOmOv8KHzwcKqm3mAOIpdGYAaSTZK9Y/gsPkIamkk=;
        b=ltTGgyFlzQXroEPvhEqiKQelHbStYUh1ylJDRt5Ww5W4aiLEJMMjKgu6l0s396T+Qf
         3KV0ySaWEnRLNiL71onOmKsyKJkTfsNpty2/lbBXQjvmJf4u38KjfWgWQ4G5gJmv5EPG
         Y10jXUsWYyVHz3SJc2xgic/QLyTaJ1/pj+utEl1oW+tL8Nz99bNuLj96YUocpG30bHpL
         V4O309auxpb0CzwleHiM2mygpmiejYjJdiQHmHRdUwHncyMiHGUN7ISw4DxAeyZNPfuM
         jzN25NHaRgzokZnWv4rS/MS0Iwzu49OVDbjfKfHrhORToUgW1mFWNZ0hQE1DA2CRc6IK
         7UAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id n20si749269pgl.1.2020.02.02.19.38.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Feb 2020 19:38:43 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Feb 2020 19:38:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,396,1574150400"; 
   d="scan'208";a="431015532"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 02 Feb 2020 19:38:42 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iySZN-0009hY-NR; Mon, 03 Feb 2020 11:38:41 +0800
Date: Mon, 3 Feb 2020 11:38:35 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [drm-drm-intel:topic/core-for-CI 18/20] init/Kconfig:76: symbol
 BROKEN is selected by DRM_I915_DEBUG
Message-ID: <202002031121.wD23ANfa%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
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

CC: kbuild-all@lists.01.org
TO: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
CC: Chris Wilson <chris@chris-wilson.co.uk>

Hi Joonas,

FYI, the error/warning still remains.

tree:   git://anongit.freedesktop.org/drm/drm-intel topic/core-for-CI
head:   7b0293cc45a0a4024a11c07c9328efb049dcd96c
commit: a42e0d4d725b6b6ee543d11282658b2b1d6eb3df [18/20] Revert "drm/i915: Don't select BROKEN"
config: powerpc-allyesconfig
compiler: clang version 11.0.0 (git://gitmirror/llvm_project 8a68c40a1bf256523993ee97b39f79001eaade91)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout a42e0d4d725b6b6ee543d11282658b2b1d6eb3df
        make.cross ARCH=powerpc  allyesconfig
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002031121.wD23ANfa%25lkp%40intel.com.
