Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBBGYVTYAKGQEMYAT46Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EE712D82A
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Dec 2019 12:07:49 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id t4sf24381629qtd.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Dec 2019 03:07:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577790468; cv=pass;
        d=google.com; s=arc-20160816;
        b=sv7EiOq9gCnIRn99nXY9E9AOC/D2iyQP/qcrgBrzKTy9ANjaGFOZgCrMdkn5JWmi9c
         kwzW6MvhIv3cWZ0RJrkwDAdDh7mEulzSGUW0n5EsXXMaubdXTHm0bqv+G8Tx4xLE+Uyv
         dWsLp6wNGUEwpzgRUARugj1LXWz9PrkrghCivu4PL89QAUYE838RPV4M8up3k0+5PYZv
         DcUqHXXoJZDStYMjAiQ5SvVFOmkE5dOa3DtJVG3DdFhvCPP+/5ZWHQ/Sb/fWMoFAadQR
         J8Ze64CxR6+biRzXshmh7Q/ifFbL5G3dynIhQfsF5FGeXLXDtX3NgTbjuOwDVExTAXDM
         8rHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cIytkywOf8OWj5XjaSckKb0c6eiOeCRceBQTw3hbai0=;
        b=FNKsfm09Si0EPcXbLHYfFIcEzCoghCa2KHZghH/tMgy2djJ8F+p15aScsQtCRkO5XX
         dYnIDTKPJ+LGD3zMmV4o/bmezDPddBKGynheHCDL7+TPa+Ve4qEoLa6QiKpYhAfrrU0m
         5fAWuijt6LSkDm4E9UKKveSVkrbqR/+K5O9j8YGwrPYHPpLpcWx6qU71vApPfNTw3VCb
         o9pogLZmIHeyEKGYo4+hJZ/A0POmed5h2wwyy0a0o8y2R29oxS4w0831HERvnCSsz5oh
         d4uLhB158N8eu6O2+JnIUkcoY2S7GI2Qu+mJ3LQw4NDPO+ZfVPWSB31aspdgf18nbSa7
         XWXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cIytkywOf8OWj5XjaSckKb0c6eiOeCRceBQTw3hbai0=;
        b=HWDOitDp31A6v2KXmL5xau6Z5xRgTQfj6Oa5nFGS8DTK7Y97BGqFoUXqMqYu31B6rT
         Aia+73Oo9ZSvcKnaIsn22oOSdpkwLYHC7E5w/AYD6moTDStgbtdDJnTTLkjwxBe9a5SD
         pjg24TcdjMlTPaJU3AirPt1WHTjW3F1/aGV153YmTwrEs7N+gfK8AH1EUUz0IYbdHWq/
         b1E1rfjbu6Zgu07wZoEd3JlBayErkql6ae0E9T6a6MoXN0LZCXtJHiF+Hgk/gsmyXwN/
         NhCb6Vf5sTCSr+wZaqg+izvVyJO3IvzG9BSp+raNr40S7iwH9VH0Wlv5H+dr8WeFk0GU
         xmSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cIytkywOf8OWj5XjaSckKb0c6eiOeCRceBQTw3hbai0=;
        b=Kgs/q7dkj33n165OWh3negXix94je3OgFsMCVuHE+uZdxotncKwu0Yfg8ma7q9JlGd
         sHYNTXGXMQNWSSZVOdAAuiuV1ORsPlIPR+DaiVAUK5/xxLiFuPXtjXxc8lU9ahayfwhv
         npfkXzz31KFvgZmt5dTiL6FawuFAD5+xylI1xIwlyKp8Rz8IdPHfL4DC29IcMsV5G7BQ
         3oR4MOub/DP43R626+A29B4V9SQspI+vRT/+uIjLMyNp16wa8wdQGiP6kHDFMMKcNu02
         4fv4MaCs+pO7A+ULNlTEp8t8VXTAssMBaRXAN13hxBqKCZ1qaafOdDnaI0fgz8q/IS8M
         ef/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWIQx7GaQ9Cozpv554uPtSJYudLwev3kS4YkGbJz+tX5R97e7FH
	yw681AqcZoNsoXz3+MUubP4=
X-Google-Smtp-Source: APXvYqzo1ZZnM7IgEp8KmPQpHWowVK1t8ulSOPHimW4pS85ax/6z+fznazzw5ZpZUbDdlNTDCjVN0A==
X-Received: by 2002:ae9:ed53:: with SMTP id c80mr56120054qkg.445.1577790468479;
        Tue, 31 Dec 2019 03:07:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1b8d:: with SMTP id z13ls2412110qtj.16.gmail; Tue, 31
 Dec 2019 03:07:48 -0800 (PST)
X-Received: by 2002:ac8:4708:: with SMTP id f8mr52091033qtp.129.1577790468187;
        Tue, 31 Dec 2019 03:07:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577790468; cv=none;
        d=google.com; s=arc-20160816;
        b=qeVmjeV5BHCXwYvtEikPoo0P+EnNWFAez548DjWIw6JURrBEDG32Pylv0vRnq8usiG
         JJazNaG8Eevp2zKgNr/BR/sodcT4FguiqZS54wbiVso3f8sLyl6nS1x+63Rs0q4m0uun
         BhSakPV4FX3T9BXRuCEJiTv7//mSE+gpExd+4D0UQX1WzGvxClMHDp+2FZfqtr8gHHCL
         8aFuy3deagIR8jegdSOd5yXh0vQ9J4D/GSe8xU6atFSQhHj+AMnQ0y/bC/gpTxXsMDK1
         3GE3gu/KdilgunvobAfEgYdTbk+XAIDZvFMcBIOwIceEOD9g6ez59v/v+nRlz3OBOMW9
         hKfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=O4Y68RXsFUxTYC2L+MgjMD2IwaVuD0S0sM+ilU4/FDc=;
        b=yYkTIt53QC0m3rjs4xx2sdpGqal0ns5XsJ4UASsFCZvgQ8kGBJ/17YQEjCEmcssR+S
         id4QYLAY//GYUnHX5rrzVQUMXUDNTCi3boA4Jjo3DxR8ugu4oND2IO3VNQMFgTLEPa/X
         NShj73hNl9KUV34zgHws16r6eGvRB3Nv173FNMGmxNRqscpHLYqHzeyz6+Bx7DoUTl9H
         4F18gqmZ+10Hv+c0+Te5sCIJF96pef0XODIdceGIzpTajN9k5ehJCQR67G3EoXUZu1uX
         E11jFY6I4F1H2hr9cIvPkDX1fCpF1M4dARBcf6STep4UdyqAdv/pAqzneUFV4/ERuzZd
         xD3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id 134si1030400qkd.2.2019.12.31.03.07.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Dec 2019 03:07:47 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Dec 2019 03:07:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,379,1571727600"; 
   d="scan'208";a="209271104"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 31 Dec 2019 03:07:44 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1imFNH-00039V-P0; Tue, 31 Dec 2019 19:07:43 +0800
Date: Tue, 31 Dec 2019 19:07:32 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [drm-drm-intel:topic/core-for-CI 18/18] init/Kconfig:76: symbol
 BROKEN is selected by DRM_I915_DEBUG
Message-ID: <201912311926.mbydToq4%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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
head:   a42e0d4d725b6b6ee543d11282658b2b1d6eb3df
commit: a42e0d4d725b6b6ee543d11282658b2b1d6eb3df [18/18] Revert "drm/i915: Don't select BROKEN"
config: powerpc-defconfig
compiler: clang version 10.0.0 (git://gitmirror/llvm_project e9775bb5d81a1eb1d73319877519e51ed3b9f865)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201912311926.mbydToq4%25lkp%40intel.com.
