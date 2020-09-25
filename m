Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLEEWX5QKGQE2VDAW4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 527D0277D5A
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 03:04:46 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id z75sf463920ooa.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 18:04:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600995885; cv=pass;
        d=google.com; s=arc-20160816;
        b=tTbN0eqW8xLSSOa+80WVKaKVJKb8IdsKVr1x2TWjqPOFcdT9gVC1oCrqqDbco+8m3e
         c59ui2cht+U1WpODYQfksibcL19mi5MKU6X6mh+ji0T8UbPly8ehZkx66WZ2LFeX7xdJ
         Qnj2KrNwxaYe1GCEyTDoN+Nr77dJiFoK3BBMTiZThes4XThEn/WORFq2x7E/ZDLg6zmv
         adxgOy8O8UEuSWTnG4NZeGMdyYQ1a+hDxsyBIQ+RRDwiuPQcp26WZl0/SrGraY8pxLeC
         HS/4UWV5PDgwvshIr7eJHoB0znDsxi7oa1uNcXNnNrwf1j24JJQijMR8u2DKOrD3j651
         /Dmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=pcEjKtt3BoneDPPAsg9Y+hCjG5hZHaoJHo8B3Jb499c=;
        b=j/8DTM8akSrlobA1KnXRtbrf4wl2oRRnnj3ocae2kfOb9Nf72aNpI0ynENn4DvbKSD
         R1wyE4mAkpxtq8VNa+sz0vL/URWJILSvCwdQJ2RWzjosSPGRfGjVzRpxH4kzGGc59TYN
         r52leRQXXEuUeKV1HoBuCgCr7Fc4Zq9+GAbvOHBxK5FIecjp+xHqxD4acgqqjMC5uJOS
         sHHn0TkAmWRqTQNikMpQreWo28VY7NPlKJeVJasWog3oyRscHUpEHct+jQzY3po/HjhO
         +B2twUhmCFR6Qw0VKZek7096IRt/lC3wqSnKulutqyIgp9Q4NFpq9Avgm7nAoo5pzqoo
         oCcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pcEjKtt3BoneDPPAsg9Y+hCjG5hZHaoJHo8B3Jb499c=;
        b=ajs0Ch4OoBj9qBJxqTBk9DLSP3oXXGlkNQx9fbtmcfokb0w8kq7WlGf/vkBTgXAe6h
         YWudwwkGkAFiRaOwNAanu5SdT0MUA4uA3/sGydPbkcfJ0v8Jdi3F/HCHGFz5Grc7h+8e
         rrDy+zIfVJYhuvYlZzQbcTFcg3kXaZ7Mx5RqlxcK1r3LKqdg45QCwKsJq/Z2YaFe4OTR
         nIhEQUFQ38YAH4ycYLDY7YQf6j7+Od7oSfW5gxbGfdghbeOJfX0vEU39Qfzwm+XRyV3p
         de96H/FlSNFUq1s7/nZ6TAzK9OWdZ9wzrJB1/kQhyRyBHPiN8SzNZZkTVzlg6jQt2IZ7
         e5Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pcEjKtt3BoneDPPAsg9Y+hCjG5hZHaoJHo8B3Jb499c=;
        b=TE8oyDenKi3L4XaYnSqvCP4iLw+UyNquVoY3oJvB+5lShCaUlvsaoXEkC8n4DmOpA7
         CoK97SAJP7MhLd9ORYELYgrThttKRKm/lwHTtq2hRJZkl4MeCw9YLmNgEBo9eeSnS5dc
         KKraLwTHzf1UHbLXsH2DFsEv0J02PiaMktVvXPNAx1dcV7znPJJXT5iOqFSNnO/cynn7
         JAAKleWEK6j4tmIGh6khWDV+irSLAHl1bdGBNwsDZaRBq1CJrvpyZxZUJfdIDZ0pY3yb
         CT/JAwvcYjs3FDxfpuxylgl+i61lB9Kiw8RTRLlEuF5iKfnpDJgmjfaETXr+OzUagFb9
         i3GQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317VSayfolBGgtJqkjDMVkh6oj3Cdgml3Sl2+E6qUZmmXjzuMPg
	+uBSqFTE/t4H0oYppuyMZm4=
X-Google-Smtp-Source: ABdhPJxE6L04pArA7ZQe68lxnGeY8ik2ThkJkUNjqaCcWgVcriDv4mKrsrDdTQ0GrUjXPBwJOVxBfg==
X-Received: by 2002:aca:ef56:: with SMTP id n83mr172499oih.89.1600995885109;
        Thu, 24 Sep 2020 18:04:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a86:: with SMTP id l6ls293192otq.11.gmail; Thu, 24 Sep
 2020 18:04:44 -0700 (PDT)
X-Received: by 2002:a9d:3a34:: with SMTP id j49mr1337210otc.52.1600995884567;
        Thu, 24 Sep 2020 18:04:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600995884; cv=none;
        d=google.com; s=arc-20160816;
        b=BCOBrV4G+Frc+pzIrZ5sYReWyk3mtVR1i9XY+apNWq2rMoQR60X5OUoUiTv5rZYIXc
         UTiZGJ/gcHTDYtBf2ZKPtFMJ4zd2GFJUbz4tztVAcQNUEcB357bDNop77gp4FLG9E2If
         sNO1ZidocjuIjOk+xM75HP99c0HtgPdmW+YQ3S7zVGnN1c2Ib9Oh9zuzHSj3eFk2elOh
         DNsRXYl8fwHIZaTTlNrCx8J/KX169gWyDCVfCaQ7pf+JeR9QZQIfTjtdrJ32Q3U9YKtX
         pyR5aR0U2lNef19llDVxUTekDNlgFwsds+Z/odWH0ACdv97qLEUgu9GmyrnjonobwiRY
         jzgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=2vZoyWZtO17wht8bfjyP5T5OMidCwcjXF/v8+hpBWMw=;
        b=xGFFCtwYdboWg+jGmTaJNFfxx6ocLOE7OeLxwlAerQ1e0ENrOeNPGaopL2q6QrYZhi
         5A4+MQpBoRiW4FNm2pWS7ZDI36sZL8wtURcmx9KAoYV2F1G5mWTWLLWfs38jCJ8akzJx
         aDepauxxl3TA1CLNVkC987ZmQe2hUTu/1Pb6JmyZMKgAW5hDvLF9Yc/panxSq+cOldvp
         inZ6kw5OCbXSPZYk+HlSAnv7bPgjdOwUlBRkrYUDplsdYgsF+QwLzGrzQ2Kq3sjfmPOB
         cVLhgIrf+hsSHv4DZ2Saki042B59bT4thhR7qygomGS4wr4H536N9O0ujuAnhbMznEET
         ofbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id l19si62104oih.2.2020.09.24.18.04.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 18:04:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: m2RAsl098cZeS83hGcpOEyFSkByQTmBZ7m1kO91SptVeKoXj3R2FOtBh0ScTHr+aIiLjoQCzlj
 Ap8RWeViR2ZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="162294810"
X-IronPort-AV: E=Sophos;i="5.77,300,1596524400"; 
   d="gz'50?scan'50,208,50";a="162294810"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Sep 2020 18:04:42 -0700
IronPort-SDR: fzPcFAURSmiSU1UFVY6pTtKLCvJ3Vj57AxRM+2kCGXbXrgy9/cXxQvBUd8s7PzPz0w4b5sDKq2
 r8ZHqqbWPkCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,300,1596524400"; 
   d="gz'50?scan'50,208,50";a="339295780"
Received: from lkp-server01.sh.intel.com (HELO d1a6b931d9c6) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 24 Sep 2020 18:04:40 -0700
Received: from kbuild by d1a6b931d9c6 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kLcAC-0000Ct-7w; Fri, 25 Sep 2020 01:04:40 +0000
Date: Fri, 25 Sep 2020 09:04:15 +0800
From: kernel test robot <lkp@intel.com>
To: Jason Wang <jasowang@redhat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH 24/24] vdpasim: control virtqueue support
Message-ID: <202009250826.y42DS2Ue%lkp@intel.com>
References: <20200924032125.18619-25-jasowang@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="fUYQa+Pmc3FrFX/N"
Content-Disposition: inline
In-Reply-To: <20200924032125.18619-25-jasowang@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--fUYQa+Pmc3FrFX/N
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Jason,

[FYI, it's a private test report for your RFC patch.]
[auto build test WARNING on vhost/linux-next]
[also build test WARNING on linus/master v5.9-rc6 next-20200924]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Jason-Wang/Control-VQ-support-in-vDPA/20200924-112811
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mst/vhost.git linux-next
config: s390-randconfig-r034-20200923 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d6ac649ccda289ecc2d2c0cb51892d57e8ec328c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/vdpa/vdpa_sim/vdpa_sim.c:20:
   In file included from include/linux/iommu.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/vdpa/vdpa_sim/vdpa_sim.c:20:
   In file included from include/linux/iommu.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/vdpa/vdpa_sim/vdpa_sim.c:20:
   In file included from include/linux/iommu.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
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
   In file included from drivers/vdpa/vdpa_sim/vdpa_sim.c:20:
   In file included from include/linux/iommu.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/vdpa/vdpa_sim/vdpa_sim.c:20:
   In file included from include/linux/iommu.h:10:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:72:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
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
>> drivers/vdpa/vdpa_sim/vdpa_sim.c:200:21: warning: no previous prototype for function 'vdpasim_handle_ctrl_mac' [-Wmissing-prototypes]
   virtio_net_ctrl_ack vdpasim_handle_ctrl_mac(struct vdpasim *vdpasim,
                       ^
   drivers/vdpa/vdpa_sim/vdpa_sim.c:200:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   virtio_net_ctrl_ack vdpasim_handle_ctrl_mac(struct vdpasim *vdpasim,
   ^
   static 
>> drivers/vdpa/vdpa_sim/vdpa_sim.c:706:5: warning: no previous prototype for function 'vdpasim_set_group_asid' [-Wmissing-prototypes]
   int vdpasim_set_group_asid(struct vdpa_device *vdpa, unsigned int group,
       ^
   drivers/vdpa/vdpa_sim/vdpa_sim.c:706:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int vdpasim_set_group_asid(struct vdpa_device *vdpa, unsigned int group,
   ^
   static 
   drivers/vdpa/vdpa_sim/vdpa_sim.c:97:19: warning: unused function 'vdpasim16_to_cpu' [-Wunused-function]
   static inline u16 vdpasim16_to_cpu(struct vdpasim *vdpasim, __virtio16 val)
                     ^
   23 warnings generated.

# https://github.com/0day-ci/linux/commit/1a9edfc5f2afc700bcfa7e54700b27115beb99d0
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Jason-Wang/Control-VQ-support-in-vDPA/20200924-112811
git checkout 1a9edfc5f2afc700bcfa7e54700b27115beb99d0
vim +/vdpasim_handle_ctrl_mac +200 drivers/vdpa/vdpa_sim/vdpa_sim.c

   199	
 > 200	virtio_net_ctrl_ack vdpasim_handle_ctrl_mac(struct vdpasim *vdpasim,
   201						    u8 cmd)
   202	{
   203		struct vdpasim_virtqueue *cvq = &vdpasim->vqs[2];
   204		virtio_net_ctrl_ack status = VIRTIO_NET_ERR;
   205		size_t read;
   206	
   207		switch (cmd) {
   208		case VIRTIO_NET_CTRL_MAC_ADDR_SET:
   209			read = vringh_iov_pull_iotlb(&cvq->vring, &cvq->riov,
   210						     (void *)vdpasim->config.mac,
   211						     ETH_ALEN);
   212			if (read == ETH_ALEN)
   213				status = VIRTIO_NET_OK;
   214			break;
   215		default:
   216			break;
   217		}
   218	
   219		return status;
   220	}
   221	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009250826.y42DS2Ue%25lkp%40intel.com.

--fUYQa+Pmc3FrFX/N
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AKboOzi92QEA

--fUYQa+Pmc3FrFX/N--
