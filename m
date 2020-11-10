Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBTF2VD6QKGQEJ6AAZDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6583E2ACEAB
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 05:55:42 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id v2sf8278500pgv.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 20:55:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604984141; cv=pass;
        d=google.com; s=arc-20160816;
        b=iTgmro6irogpA1+DRQoHTAhxMfkTr4V5rhhWLJIz4wzC7opgfVexyQXIcSY58+2gbd
         hHNm/hkVuLMSV9MQEmuBRq9nGou2WLRVKnZzJVRLhFX8XCkSDDjQnk6jYuNEALD1kGn1
         iiyV/aooMUbk08gBq+SuGaYQV22TqTUlvAMSYqIbywTYH6VybIenIUdqqPvBP1qYbJ/k
         f28o6oQ8Zze8XUKZ3t/BunbUqvZ02t8of/5qzzY1D0b3op52pJxXBdFAh/Cm4FIlMBp7
         Rrw22gYce0mXwEHY+zbTjQ3d6GIHhzDAGPt4w2YFE3gRK7/bllhdMjaKS5/SpnmbJfni
         TjsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=CjkTpfBTP6ariukz3aiLlAxrt9MFTRsqivGkDdt3nf4=;
        b=lrraRA3JX8w8JQMgNUvanYPzjRIr2Dj9JYh4UWXxLaTeSpr8Fvh60FCwarKA7P9wWw
         jlKz3jZZqP6ia76/NkCcIqqmrTLsrAo1gDo1aMDHq1nTL9tQ13sddEuiOWXcSwtU5B9p
         knp3wCaR9bHhLv2+bgr5M8MBZq++n4LjlwD/cTYuD6dbxuh7QOWaY/n9qzCVQHERh22w
         uyTloicqvqCe5VNLowGyNUupKBrfyHHIbTTdFsKiGZnvZWaVdheSNR/CR8axn/wwztIc
         Nwwn2WT8FtoduwwqoZnhDEMQLdvu6C2Os9C1ruvqp/3kd3larJKIM/huJGqtd2+zLG0a
         mEnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CjkTpfBTP6ariukz3aiLlAxrt9MFTRsqivGkDdt3nf4=;
        b=LQvIAl3VBaCDHk3QG6itJcNsmnMVWCUZ/r8RLH6zFT3tPIgYR34XxZxFQottFTLH7+
         G8SCXtpgZTvs9qO0U1GDjdxTmSHZpjiD314H8MHr/UuFg3SkIJJ20K/edNWdQ552FUNO
         zbiYVnORCBRScc49tIgpl0vwAt8mwErOUkQpc9OvQ408YPjxFNfloD+a4YOwOWZuGaSp
         hsM92kc6LiC2dG4296ezm00KM0HsUtDGrHR4Aq1aA9zol7NRRCvsPw4xJPsxugLw5WFT
         CcFIXGlh65ol9o2+Z1TMbTDz//GRz8OEKs50bSKrjFcA4ZnxA8AD+4VH8nLu/Y2/u3DS
         EF6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CjkTpfBTP6ariukz3aiLlAxrt9MFTRsqivGkDdt3nf4=;
        b=c2Ke+4Ch1eNaC2fjc0mhmKKgCjK6MBC0FFzSZ5AJ96XA8iUJEev8v26xXCvdnE9VDQ
         RmceFr0TcH77tzSbv4X7DAZUUJKA84J/L2AEb1ds73tTUbeiyTmA5r0hgCu+6QAOBKtV
         tXdDicNjETHVPx6Vgp86qTZTt0/N0tHPWrsvePS3mlMQTH2g3oldhOuYdqlaystjO0RX
         qaO7IKFO5yftwzYT+OFTh7sTdQudhrhQcx0APCzjdloo7xFuRJaXoq9Y9eTkXVK5Kciz
         9DuNH6Y2Uyk6T292BGNOy746EGMTroqE4h2rTQcvR6taaUp71qhp2qUXg2t2zQBvGcuI
         wVzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ePn+ye71CJPZmxXyLQDOtI6+tL4xUcuJOWk5P6eggfSTfSvEj
	cOdDydFg2Pm4Kq8IPe6NH0U=
X-Google-Smtp-Source: ABdhPJzQ0jQt4t3V9Ff1t48H+V9Xe+vj/v+lOjGLjeZqbI/1BH0xvi64l7OJFusQ8DMEgP7vD6rLJg==
X-Received: by 2002:a17:90b:3595:: with SMTP id mm21mr3010752pjb.204.1604984140964;
        Mon, 09 Nov 2020 20:55:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c111:: with SMTP id w17ls1074057pgf.1.gmail; Mon, 09 Nov
 2020 20:55:40 -0800 (PST)
X-Received: by 2002:a62:6883:0:b029:163:ee70:1e59 with SMTP id d125-20020a6268830000b0290163ee701e59mr16840874pfc.5.1604984140280;
        Mon, 09 Nov 2020 20:55:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604984140; cv=none;
        d=google.com; s=arc-20160816;
        b=CFiFxo6P3c2kxfnwGz+6L9VUNzDwbpoBSjoDN/5gHFSddxIrm47xT2AL4NfvEuVOAS
         rTzO1SGuG6MfKbBkjbA1aBHyqal7j/gI8snT8pRD4OHilSRtv8Q5DUNG7G/nyPKTq82w
         8HHrn92TuVPiYm6GBY1wbuY9TI4TL+D4hl6r+lt6ozLIUr45f9TNKx2LT7vjRRweLUK0
         reOwXWzTPdgZvbzL84wkmUNgIGztwYz+qp1U+7zXenA/iT0T7QdP2EzfVR/ybUNpYz4E
         oQFXinVBO6GlidZfZ2ymuAAcxmar2eKI/zMWllsNdRZSJa9a0V2g40dUfe3+LcjKF9wi
         ENLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=+PxxsJ3vk7YsWJw1HBZ7hlt7CYRuB4vPZji/3B01yi0=;
        b=adcsFNzfFtOC1EdqaQMVcuGUvzHm6wOnACt3HdPWisLjqOLX5z10w75nyGkfiHIFEk
         mHbrcC4gdYDixu1jRw6GZrTJZPcU87pSG7uUJQjt5CPOJYz8N+XgN41f6bUjv9Zj87jU
         bMmZi5t/vbV8o+gU405OjWIldmC5G6q3OEf5D+W65m/ysmT66yMPPAStQCql4OK63mNQ
         seV4Ufm64Ixk2xcldLx8/eHWPOOfYad7+1dUdthsSYxlrWpQnQ3+zBQMG0FRUTTFrmMA
         kuH6aIhtDDqIAq98HT7IS3uJiPvy1mDCx1GRUKs/iLemgtVMToOeokvTVYrClwB2xL55
         wX9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id k24si131587pjq.2.2020.11.09.20.55.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Nov 2020 20:55:40 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: S8k3V8CTMe99txA0EZfzvdM8gEN6pXVv//ZTwzd65gRd6D9dVujO2AITnHHF4GPQ0paFIkYRLa
 UaVjuabZmfzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="149196345"
X-IronPort-AV: E=Sophos;i="5.77,465,1596524400"; 
   d="gz'50?scan'50,208,50";a="149196345"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Nov 2020 20:55:38 -0800
IronPort-SDR: 7t2xA5YXhm8ZjOXTX+mWOD67wtHxs5BpZWWRa8D1FMCX1Rt7ZXtmEvU/wbhuwUS8wqL5/hkU4J
 dO88zClFzv9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,465,1596524400"; 
   d="gz'50?scan'50,208,50";a="428238220"
Received: from lkp-server02.sh.intel.com (HELO c6c5fbb3488a) ([10.239.97.151])
  by fmsmga001.fm.intel.com with ESMTP; 09 Nov 2020 20:55:35 -0800
Received: from kbuild by c6c5fbb3488a with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kcLgs-00001r-Ex; Tue, 10 Nov 2020 04:55:34 +0000
Date: Tue, 10 Nov 2020 12:54:37 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	airlied@linux.ie, daniel@ffwll.ch, yuq825@gmail.com,
	robh@kernel.org, tomeu.vizoso@collabora.com, steven.price@arm.com,
	alyssa.rosenzweig@collabora.com, sean@poorly.run
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 1/2] drm/shmem-helper: Use cached mappings by default
Message-ID: <202011101201.j9v4DnpF-lkp@intel.com>
References: <20201106152632.26530-2-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="82I3+IH0IqGh5yIs"
Content-Disposition: inline
In-Reply-To: <20201106152632.26530-2-tzimmermann@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--82I3+IH0IqGh5yIs
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Thomas,

I love your patch! Perhaps something to improve:

[auto build test WARNING on next-20201106]
[cannot apply to linus/master v5.10-rc2 v5.10-rc1 v5.9 v5.10-rc3]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Thomas-Zimmermann/Default-to-cachable-mappings-for-GEM-SHMEM/20201109-092124
base:    c34f157421f6905e6b4a79a312e9175dce2bc607
config: s390-randconfig-r021-20201109 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 09ec07827b1128504457a93dee80b2ceee1af600)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/6c0af452d25888d28cc6f16457d36a7c6e1c816a
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Thomas-Zimmermann/Default-to-cachable-mappings-for-GEM-SHMEM/20201109-092124
        git checkout 6c0af452d25888d28cc6f16457d36a7c6e1c816a
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/gpu/drm/drm_gem_shmem_helper.c:6:
   In file included from include/linux/dma-buf.h:16:
   In file included from include/linux/dma-buf-map.h:9:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from drivers/gpu/drm/drm_gem_shmem_helper.c:6:
   In file included from include/linux/dma-buf.h:16:
   In file included from include/linux/dma-buf-map.h:9:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from drivers/gpu/drm/drm_gem_shmem_helper.c:6:
   In file included from include/linux/dma-buf.h:16:
   In file included from include/linux/dma-buf-map.h:9:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from drivers/gpu/drm/drm_gem_shmem_helper.c:6:
   In file included from include/linux/dma-buf.h:16:
   In file included from include/linux/dma-buf-map.h:9:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/gpu/drm/drm_gem_shmem_helper.c:6:
   In file included from include/linux/dma-buf.h:16:
   In file included from include/linux/dma-buf-map.h:9:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> drivers/gpu/drm/drm_gem_shmem_helper.c:59:3: warning: variable 'shmem' is uninitialized when used here [-Wuninitialized]
                   shmem->map_wc = false; /* dma-buf mappings use always writecombine */
                   ^~~~~
   drivers/gpu/drm/drm_gem_shmem_helper.c:41:36: note: initialize the variable 'shmem' to silence this warning
           struct drm_gem_shmem_object *shmem;
                                             ^
                                              = NULL
   21 warnings generated.

vim +/shmem +59 drivers/gpu/drm/drm_gem_shmem_helper.c

    37	
    38	static struct drm_gem_shmem_object *
    39	__drm_gem_shmem_create(struct drm_device *dev, size_t size, bool private)
    40	{
    41		struct drm_gem_shmem_object *shmem;
    42		struct drm_gem_object *obj;
    43		int ret = 0;
    44	
    45		size = PAGE_ALIGN(size);
    46	
    47		if (dev->driver->gem_create_object)
    48			obj = dev->driver->gem_create_object(dev, size);
    49		else
    50			obj = kzalloc(sizeof(*shmem), GFP_KERNEL);
    51		if (!obj)
    52			return ERR_PTR(-ENOMEM);
    53	
    54		if (!obj->funcs)
    55			obj->funcs = &drm_gem_shmem_funcs;
    56	
    57		if (private) {
    58			drm_gem_private_object_init(dev, obj, size);
  > 59			shmem->map_wc = false; /* dma-buf mappings use always writecombine */
    60		} else {
    61			ret = drm_gem_object_init(dev, obj, size);
    62		}
    63		if (ret)
    64			goto err_free;
    65	
    66		ret = drm_gem_create_mmap_offset(obj);
    67		if (ret)
    68			goto err_release;
    69	
    70		shmem = to_drm_gem_shmem_obj(obj);
    71		mutex_init(&shmem->pages_lock);
    72		mutex_init(&shmem->vmap_lock);
    73		INIT_LIST_HEAD(&shmem->madv_list);
    74	
    75		if (!private) {
    76			/*
    77			 * Our buffers are kept pinned, so allocating them
    78			 * from the MOVABLE zone is a really bad idea, and
    79			 * conflicts with CMA. See comments above new_inode()
    80			 * why this is required _and_ expected if you're
    81			 * going to pin these pages.
    82			 */
    83			mapping_set_gfp_mask(obj->filp->f_mapping, GFP_HIGHUSER |
    84					     __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
    85		}
    86	
    87		return shmem;
    88	
    89	err_release:
    90		drm_gem_object_release(obj);
    91	err_free:
    92		kfree(obj);
    93	
    94		return ERR_PTR(ret);
    95	}
    96	/**
    97	 * drm_gem_shmem_create - Allocate an object with the given size
    98	 * @dev: DRM device
    99	 * @size: Size of the object to allocate
   100	 *
   101	 * This function creates a shmem GEM object.
   102	 *
   103	 * Returns:
   104	 * A struct drm_gem_shmem_object * on success or an ERR_PTR()-encoded negative
   105	 * error code on failure.
   106	 */
   107	struct drm_gem_shmem_object *drm_gem_shmem_create(struct drm_device *dev, size_t size)
   108	{
   109		return __drm_gem_shmem_create(dev, size, false);
   110	}
   111	EXPORT_SYMBOL_GPL(drm_gem_shmem_create);
   112	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011101201.j9v4DnpF-lkp%40intel.com.

--82I3+IH0IqGh5yIs
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICGQRql8AAy5jb25maWcAlDzbdtu2su/9Cq30ZZ+HNr7Fjc9ZfoBIUEJFEgxASpZfuBRb
SXW2Y3vJctv06/cMwAsADuXsPjQmZnAbDOYO/fzTzxP2enj6tjns7jYPD98nX7eP2/3msL2f
fNk9bP9vEstJLssJj0X5KyCnu8fXv9+/nF+dTD78enry68kv+7uzyWK7f9w+TKKnxy+7r6/Q
fff0+NPPP0UyT8SsjqJ6yZUWMq9LflNev7t72Dx+nfy53b8A3uT07FcYZ/Kvr7vD/75/D///
ttvvn/bvHx7+/FY/75/+f3t3mFzcfzy9+7i5/3y5vb/6eHFy9uG3L5d3ny8/X51/uTz5+OHy
/uLsbHP64X/etbPO+mmvT9rGNO7azs4/nJj/nGUKXUcpy2fX37tG/Oz6nJ4FHeZM10xn9UyW
0unkA2pZlUVVknCRpyLnDkjmulRVVEql+1ahPtUrqRZ9y7QSaVyKjNclm6a81lI5E5RzxVkM
gycS/gcoGrvCifw8mZnzfZi8bA+vz/0ZiVyUNc+XNVNAJZGJ8vr8DNC7ZWWFgGlKrsvJ7mXy
+HTAETqyyoilLZHevaOaa1a5JDLrrzVLSwd/zpa8XnCV87Se3YqiR3chU4Cc0aD0NmM05OZ2
rIccA1zQgCpHYiiuNY8BoyORs26XQiHcrP4YAu7hGPzm9nhvSZyPt6ewi7shom/ME1alpeEQ
56za5rnUZc4yfv3uX49Pj9v+/ukVcw5Qr/VSFNGgAf+NytRdViG1uKmzTxWvOLnVFSujeT2A
t6yqpNZ1xjOp1jUrSxbN3dErzVMxJcdlFQg5YkRz+kzBnAYDV8zStL1QcDcnL6+fX76/HLbf
nAsFVzaWGRO5f41tWz0XXOGQ6x464zlXIqozLRBzFDAYVhdMad706XbT9jI9+LSaJdrf9fbx
fvL0JVh/OKcRMct+ywE4giu+4Euel7qlR7n7BoKdIkkpokUtc67n0pFVuazntyhgMpm764fG
AuaQsYiIM7G9RJzyYCRvCDGb18DYZheK3v5guQ4jKs6zooRxc4rRWvBSplVeMrX2mNgC3W6G
OlFRvS83L/+eHGDeyQbW8HLYHF4mm7u7p9fHw+7xa0+vpVBlDR1qFkUSphCuYiKAdc5KsXQI
MtUxLERGcLURrXQXGMLq5Tl5KVB36JKVmoQWWpBU/YFtdvcV9iC0TGHthgEMmVRUTTTBQUDV
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
AQA=

--82I3+IH0IqGh5yIs--
