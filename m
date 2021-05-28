Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB75WYSCQMGQEWDNOOQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 922AC3945F2
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 18:34:09 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id q64-20020a6343430000b02902164088f2f0sf2300973pga.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 09:34:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622219648; cv=pass;
        d=google.com; s=arc-20160816;
        b=WycO+WBLHE6InNCi+T37Vjl/F1xnzjiLNQNBIwD28zKE24/aSa+JZVnDjPQ6ZaNfgD
         b1BrXwEUizKxbIzOoWrqeSTiQcLsW5WsF+KGW0NI/oT7ttAKstq84klZqSWutdvrSlkp
         Jj7MRtClOc/+yl3ZPierqy9kQpPwWm40JyVcIkblDLPJwMWqY1qvqsvyNzK1v9Vbt2i5
         ckjAnnMggL/5ZFWe/AzXn+NNzmmmGLrrKGTUAaO0NejuhGJVkoebM0EIdfHmzcaeXdRL
         RCeOlu8A7XVBE1COFCRL75GLK603UKSZkSKy4Tk9hK0ry6OQiTEM7lEWGRHGB7ctJoD9
         sFOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=BZwtCNozyVHZVJCaeGV7XPaupvV7Jz5Ujc+sIIoBPxA=;
        b=kyKVOBNrlT7Dh3Ndg8MFhorwbOD2hY9rH8xQddQ5Cdc0gRsy3IbekQqZWbQjbiKYZO
         gKXzmhJv0gPS6s7QzgjLIQqsgSV34fhBVPU9J5t62TOuJGTPDdZhCalPbhtLZ84lN4gT
         6qGMd74ycGByP3EzPzjI6pK8ZXPgtksaKN/dgD7yJflsVpuPmQjg7Qi6Kie99WoptH6S
         vPgGpCuN1289BSa6/sbNxUvg3tow7y8wQuBVgIdQLfSmOo/m2InSkXPobRB0cq2RBEnH
         C99W69LoBc8H1vTFmXSO4xLWuzJEKGmkEvqJ/RdPV0X425HU32BS3coTRZDk4TXnDw0w
         jVhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BZwtCNozyVHZVJCaeGV7XPaupvV7Jz5Ujc+sIIoBPxA=;
        b=DoHEvkS9MKkG1W5Dh2l/n69qRY5lgYRP4i5+LlSon7K3IWZj/G4M6msRJ/+OaO6Yyh
         L1oivHJMBx5zuvSdcyyx2RMMTZbf98sCjSWl4D/qk6/kbYHxa8sajX1d/B8eZX4KrNON
         F7dK8JQ0lrxcPq+CYWo+6oSMW7oseXsVDVbHKEfWquhEa5+qylogkBD9kqYca60Lsn6g
         J4EMjYuCQ7WMpJJl30JO+NVB4mBt8bogjgY5ODSuQckwDGCmK8Xu9NHGCeUSt3b7SPmD
         7Qpk/H4UhOlWfdvcOlYJ0J28Vz0vl+b850hLYQp7HoIb1WLvhbI8sATUz86uL62v6jfT
         juPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BZwtCNozyVHZVJCaeGV7XPaupvV7Jz5Ujc+sIIoBPxA=;
        b=h9KyIOi2jt85O9d4Rmi3KkYE+tQ1+yipCr7U3U0gW0N62m0KiD8XhxQEgiJ/3vcQD+
         D8aPZspmuC5Jb9Z6soMWhuRhJRZXu2bhQOSZpNB0JsGwc3yqI6Nnn4BnXUWiVmOgSCDT
         qWoKSSnatP25yVLxYHqO3sQ62WBVE2jsvDtpQPEk3BZ9g9GZbF6T80KOjeszHM1Mut7u
         7B2S2CmkKbmnS96YQoRpQFWEwKLPXZfo9zIzk1FuK5fXOQl7NlL2W4IMdVjPa/mpMIfo
         oYOA27vwsQDqPGLZ14jPcbuuM1q8lZoGQniks6jxOv1v0Lj98El1GHjldnrIxhLG7QyP
         +64Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532GaHYDtOKhr+HrVcwkxpEmn7QONtmpbzrjEatBitnf4Tugu3eP
	n/bOx40/uU9x/hGYZ4CG6tk=
X-Google-Smtp-Source: ABdhPJwkYevqbp1sh5sBbhsDTpRjEivOnSZoOGlVLlegg8xLDuPgL9+XYy8hlM4a1vG+vm6SmvYrAQ==
X-Received: by 2002:a63:9c6:: with SMTP id 189mr9768048pgj.411.1622219647917;
        Fri, 28 May 2021 09:34:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ad8e:: with SMTP id s14ls4633731pjq.1.gmail; Fri, 28
 May 2021 09:34:07 -0700 (PDT)
X-Received: by 2002:a17:902:d48b:b029:f4:4a28:43e5 with SMTP id c11-20020a170902d48bb02900f44a2843e5mr8687469plg.19.1622219642311;
        Fri, 28 May 2021 09:34:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622219642; cv=none;
        d=google.com; s=arc-20160816;
        b=AhX32XLRTDWz/yvbOr1us9U7oUFSLmLi8U30qL0uO3NZu5BHw36bFCOGcZuJQ8+0W+
         7FrGeQ00goK9dvFsLL6pL+8R5nRLX9rkYT3dti9sje7gWXfldwy1t1JAkMZBnPrVHPFT
         pMxK+gK4s2bOlGHDcxvHRqc09pypQmxcu0i1pFlCv7AUFhSwje1wfZBBRjlqwsJuIuhx
         jM+jWrvM29ix+pgcUZ7z8LaEBCybtg33PM9l8DpehErkMO1EJOz1rH9asDpXoFQuybUG
         CILFj5pZ/tg1y2AR59l3uYJQIhUnZE1yWc4aCG6Dj+eVp+De5V9xb5FmHQcJ/zzeaxYd
         R/wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Hv3yvVDTgD6baERyTXNRI5e8kj5fKcWSX5ZTaxd1+w4=;
        b=u9gvv+MbLjAZspPbQoz48Pt9PnGM2VSUe/S0CRdqVCOl1OauX1OEekKqmlhmWyw/ma
         l9zLerJsDmVjtmy9hoYD1ULBswVHWz3lOHLxX24Da7ij96dggawBedtdm+pT7QyZGZ8t
         DN7a3lTLBvFXy7j8Omlf1FEDao0sk6NoYVFN0HMLshXqzLguvsisaOUj4rEmuibMFqIs
         /8qSAJo0q/JphN/kTa9SK538gYQi7qWgUgMTz25Wxaf70uKo9O8pdS/R3Z9cncscfcMb
         Qj6vEB6TM8Dv7n+F4uLrIxDI0aS/FHUyZ2ZrKoc0UJo4Uxsb1CJ3LBooQScboDjDuRKN
         Lm0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id a29si484189pgd.2.2021.05.28.09.34.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 May 2021 09:34:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: KvnAPKEfMCVo/StZHfOFUVO/ENTSiCUWAT8QIn19/d5EjHgNoPABf7Di5WLoA1huFmvUp0f3Y8
 vfCN/5Ftdepg==
X-IronPort-AV: E=McAfee;i="6200,9189,9998"; a="202989188"
X-IronPort-AV: E=Sophos;i="5.83,229,1616482800"; 
   d="gz'50?scan'50,208,50";a="202989188"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 May 2021 09:34:01 -0700
IronPort-SDR: AeMYq9X4BRMFhBGPFNX9bV6KbOlmTp8DbE3U3TnwUYXANMzOsKqv7283h+gM3e/iJgk8WCArlT
 pdJ1Kyp9jb/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,229,1616482800"; 
   d="gz'50?scan'50,208,50";a="415342067"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 28 May 2021 09:33:57 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lmfQr-0003Pd-5L; Fri, 28 May 2021 16:33:57 +0000
Date: Sat, 29 May 2021 00:33:38 +0800
From: kernel test robot <lkp@intel.com>
To: Peter Collingbourne <pcc@google.com>,
	Andrey Konovalov <andreyknvl@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Jann Horn <jannh@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Peter Collingbourne <pcc@google.com>,
	Evgenii Stepanov <eugenis@google.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 1/4] mm: arch: remove indirection level in
 alloc_zeroed_user_highpage_movable()
Message-ID: <202105290002.6thE9Cjr-lkp@intel.com>
References: <20210528010415.1852012-2-pcc@google.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="LZvS9be/3tNcYl/X"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210528010415.1852012-2-pcc@google.com>
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


--LZvS9be/3tNcYl/X
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Peter,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on arm64/for-next/core]
[also build test ERROR on m68knommu/for-next s390/features tip/x86/core tip=
/perf/core linus/master v5.13-rc3 next-20210528]
[cannot apply to hnaz-linux-mm/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Peter-Collingbourne/arm64-=
improve-efficiency-of-setting-tags-for-user-pages/20210528-090548
base:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for=
-next/core
config: s390-randconfig-r025-20210528 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 6505c6=
30407c5feec818f0bb1c284f9eeebf2071)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/0day-ci/linux/commit/32afff0556041349738b20190=
7c1c81cabb5ca10
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Peter-Collingbourne/arm64-improve-=
efficiency-of-setting-tags-for-user-pages/20210528-090548
        git checkout 32afff0556041349738b201907c1c81cabb5ca10
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Ds390=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

   In file included from mm/memory.c:50:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val =3D __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val =3D __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + a=
ddr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from mac=
ro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from mm/memory.c:50:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val =3D __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + a=
ddr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from mac=
ro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from mm/memory.c:50:
   In file included from include/linux/swap.h:9:
   In file included from include/linux/memcontrol.h:22:
   In file included from include/linux/writeback.h:14:
   In file included from include/linux/blk-cgroup.h:23:
   In file included from include/linux/blkdev.h:25:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr)=
;
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr)=
;
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> mm/memory.c:2891:14: error: implicit declaration of function 'alloc_zero=
ed_user_highpage_movable' [-Werror,-Wimplicit-function-declaration]
                   new_page =3D alloc_zeroed_user_highpage_movable(vma,
                              ^
>> mm/memory.c:2891:12: warning: incompatible integer to pointer conversion=
 assigning to 'struct page *' from 'int' [-Wint-conversion]
                   new_page =3D alloc_zeroed_user_highpage_movable(vma,
                            ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   mm/memory.c:3589:9: error: implicit declaration of function 'alloc_zeroe=
d_user_highpage_movable' [-Werror,-Wimplicit-function-declaration]
           page =3D alloc_zeroed_user_highpage_movable(vma, vmf->address);
                  ^
   mm/memory.c:3589:7: warning: incompatible integer to pointer conversion =
assigning to 'struct page *' from 'int' [-Wint-conversion]
           page =3D alloc_zeroed_user_highpage_movable(vma, vmf->address);
                ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   14 warnings and 2 errors generated.


vim +/alloc_zeroed_user_highpage_movable +2891 mm/memory.c

4e047f89777122 Shachar Raindel    2015-04-14  2860 =20
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2861  /*
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2862   * Handle the case of a=
 page which we actually need to copy to a new page.
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2863   *
c1e8d7c6a7a682 Michel Lespinasse  2020-06-08  2864   * Called with mmap_loc=
k locked and the old page referenced, but
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2865   * without the ptl held=
.
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2866   *
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2867   * High level logic flo=
w:
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2868   *
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2869   * - Allocate a page, c=
opy the content of the old page to the new one.
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2870   * - Handle book keepin=
g and accounting - cgroups, mmu-notifiers, etc.
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2871   * - Take the PTL. If t=
he pte changed, bail out and release the allocated page
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2872   * - If the pte is stil=
l the way we remember it, update the page table and all
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2873   *   relevant reference=
s. This includes dropping the reference the page-table
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2874   *   held to the old pa=
ge, as well as updating the rmap.
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2875   * - In any case, unloc=
k the PTL and drop the reference we took to the old page.
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2876   */
2b7403035459c7 Souptick Joarder   2018-08-23  2877  static vm_fault_t wp_pa=
ge_copy(struct vm_fault *vmf)
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2878  {
82b0f8c39a3869 Jan Kara           2016-12-14  2879  	struct vm_area_struct =
*vma =3D vmf->vma;
bae473a423f65e Kirill A. Shutemov 2016-07-26  2880  	struct mm_struct *mm =
=3D vma->vm_mm;
a41b70d6dfc28b Jan Kara           2016-12-14  2881  	struct page *old_page =
=3D vmf->page;
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2882  	struct page *new_page =
=3D NULL;
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2883  	pte_t entry;
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2884  	int page_copied =3D 0;
ac46d4f3c43241 J=C3=A9r=C3=B4me Glisse      2018-12-28  2885  	struct mmu_n=
otifier_range range;
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2886 =20
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2887  	if (unlikely(anon_vma_=
prepare(vma)))
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2888  		goto oom;
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2889 =20
2994302bc8a171 Jan Kara           2016-12-14  2890  	if (is_zero_pfn(pte_pf=
n(vmf->orig_pte))) {
82b0f8c39a3869 Jan Kara           2016-12-14 @2891  		new_page =3D alloc_ze=
roed_user_highpage_movable(vma,
82b0f8c39a3869 Jan Kara           2016-12-14  2892  							      vmf->addre=
ss);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2893  		if (!new_page)
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2894  			goto oom;
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2895  	} else {
bae473a423f65e Kirill A. Shutemov 2016-07-26  2896  		new_page =3D alloc_pa=
ge_vma(GFP_HIGHUSER_MOVABLE, vma,
82b0f8c39a3869 Jan Kara           2016-12-14  2897  				vmf->address);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2898  		if (!new_page)
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2899  			goto oom;
83d116c53058d5 Jia He             2019-10-11  2900 =20
83d116c53058d5 Jia He             2019-10-11  2901  		if (!cow_user_page(ne=
w_page, old_page, vmf)) {
83d116c53058d5 Jia He             2019-10-11  2902  			/*
83d116c53058d5 Jia He             2019-10-11  2903  			 * COW failed, if th=
e fault was solved by other,
83d116c53058d5 Jia He             2019-10-11  2904  			 * it's fine. If not=
, userspace would re-fault on
83d116c53058d5 Jia He             2019-10-11  2905  			 * the same address =
and we will handle the fault
83d116c53058d5 Jia He             2019-10-11  2906  			 * from the second a=
ttempt.
83d116c53058d5 Jia He             2019-10-11  2907  			 */
83d116c53058d5 Jia He             2019-10-11  2908  			put_page(new_page);
83d116c53058d5 Jia He             2019-10-11  2909  			if (old_page)
83d116c53058d5 Jia He             2019-10-11  2910  				put_page(old_page);
83d116c53058d5 Jia He             2019-10-11  2911  			return 0;
83d116c53058d5 Jia He             2019-10-11  2912  		}
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2913  	}
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2914 =20
d9eb1ea2bf8734 Johannes Weiner    2020-06-03  2915  	if (mem_cgroup_charge(=
new_page, mm, GFP_KERNEL))
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2916  		goto oom_free_new;
9d82c69438d0df Johannes Weiner    2020-06-03  2917  	cgroup_throttle_swapra=
te(new_page, GFP_KERNEL);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2918 =20
eb3c24f305e56c Mel Gorman         2015-06-24  2919  	__SetPageUptodate(new_=
page);
eb3c24f305e56c Mel Gorman         2015-06-24  2920 =20
7269f999934b28 J=C3=A9r=C3=B4me Glisse      2019-05-13  2921  	mmu_notifier=
_range_init(&range, MMU_NOTIFY_CLEAR, 0, vma, mm,
6f4f13e8d9e27c J=C3=A9r=C3=B4me Glisse      2019-05-13  2922  				vmf->addr=
ess & PAGE_MASK,
ac46d4f3c43241 J=C3=A9r=C3=B4me Glisse      2018-12-28  2923  				(vmf->add=
ress & PAGE_MASK) + PAGE_SIZE);
ac46d4f3c43241 J=C3=A9r=C3=B4me Glisse      2018-12-28  2924  	mmu_notifier=
_invalidate_range_start(&range);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2925 =20
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2926  	/*
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2927  	 * Re-check the pte - =
we dropped the lock
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2928  	 */
82b0f8c39a3869 Jan Kara           2016-12-14  2929  	vmf->pte =3D pte_offse=
t_map_lock(mm, vmf->pmd, vmf->address, &vmf->ptl);
2994302bc8a171 Jan Kara           2016-12-14  2930  	if (likely(pte_same(*v=
mf->pte, vmf->orig_pte))) {
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2931  		if (old_page) {
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2932  			if (!PageAnon(old_pa=
ge)) {
eca56ff906bdd0 Jerome Marchand    2016-01-14  2933  				dec_mm_counter_fast=
(mm,
eca56ff906bdd0 Jerome Marchand    2016-01-14  2934  						mm_counter_file(o=
ld_page));
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2935  				inc_mm_counter_fast=
(mm, MM_ANONPAGES);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2936  			}
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2937  		} else {
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2938  			inc_mm_counter_fast(=
mm, MM_ANONPAGES);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2939  		}
2994302bc8a171 Jan Kara           2016-12-14  2940  		flush_cache_page(vma,=
 vmf->address, pte_pfn(vmf->orig_pte));
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2941  		entry =3D mk_pte(new_=
page, vma->vm_page_prot);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2942  		entry =3D maybe_mkwri=
te(pte_mkdirty(entry), vma);
111fe7186b29d1 Nicholas Piggin    2020-12-29  2943 =20
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2944  		/*
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2945  		 * Clear the pte entr=
y and flush it first, before updating the
111fe7186b29d1 Nicholas Piggin    2020-12-29  2946  		 * pte with the new e=
ntry, to keep TLBs on different CPUs in
111fe7186b29d1 Nicholas Piggin    2020-12-29  2947  		 * sync. This code us=
ed to set the new PTE then flush TLBs, but
111fe7186b29d1 Nicholas Piggin    2020-12-29  2948  		 * that left a window=
 where the new PTE could be loaded into
111fe7186b29d1 Nicholas Piggin    2020-12-29  2949  		 * some TLBs while th=
e old PTE remains in others.
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2950  		 */
82b0f8c39a3869 Jan Kara           2016-12-14  2951  		ptep_clear_flush_noti=
fy(vma, vmf->address, vmf->pte);
82b0f8c39a3869 Jan Kara           2016-12-14  2952  		page_add_new_anon_rma=
p(new_page, vma, vmf->address, false);
b518154e59aab3 Joonsoo Kim        2020-08-11  2953  		lru_cache_add_inactiv=
e_or_unevictable(new_page, vma);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2954  		/*
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2955  		 * We call the notify=
 macro here because, when using secondary
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2956  		 * mmu page tables (s=
uch as kvm shadow page tables), we want the
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2957  		 * new page to be map=
ped directly into the secondary page table.
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2958  		 */
82b0f8c39a3869 Jan Kara           2016-12-14  2959  		set_pte_at_notify(mm,=
 vmf->address, vmf->pte, entry);
82b0f8c39a3869 Jan Kara           2016-12-14  2960  		update_mmu_cache(vma,=
 vmf->address, vmf->pte);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2961  		if (old_page) {
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2962  			/*
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2963  			 * Only after switch=
ing the pte to the new page may
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2964  			 * we remove the map=
count here. Otherwise another
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2965  			 * process may come =
and find the rmap count decremented
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2966  			 * before the pte is=
 switched to the new page, and
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2967  			 * "reuse" the old p=
age writing into it while our pte
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2968  			 * here still points=
 into it and can be read by other
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2969  			 * threads.
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2970  			 *
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2971  			 * The critical issu=
e is to order this
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2972  			 * page_remove_rmap =
with the ptp_clear_flush above.
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2973  			 * Those stores are =
ordered by (if nothing else,)
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2974  			 * the barrier prese=
nt in the atomic_add_negative
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2975  			 * in page_remove_rm=
ap.
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2976  			 *
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2977  			 * Then the TLB flus=
h in ptep_clear_flush ensures that
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2978  			 * no process can ac=
cess the old page before the
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2979  			 * decremented mapco=
unt is visible. And the old page
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2980  			 * cannot be reused =
until after the decremented
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2981  			 * mapcount is visib=
le. So transitively, TLBs to
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2982  			 * old page will be =
flushed before it can be reused.
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2983  			 */
d281ee61451835 Kirill A. Shutemov 2016-01-15  2984  			page_remove_rmap(old=
_page, false);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2985  		}
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2986 =20
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2987  		/* Free the old page.=
. */
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2988  		new_page =3D old_page=
;
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2989  		page_copied =3D 1;
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2990  	} else {
7df676974359f9 Bibo Mao           2020-05-27  2991  		update_mmu_tlb(vma, v=
mf->address, vmf->pte);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2992  	}
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2993 =20
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2994  	if (new_page)
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  2995  		put_page(new_page);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  2996 =20
82b0f8c39a3869 Jan Kara           2016-12-14  2997  	pte_unmap_unlock(vmf->=
pte, vmf->ptl);
4645b9fe84bf48 J=C3=A9r=C3=B4me Glisse      2017-11-15  2998  	/*
4645b9fe84bf48 J=C3=A9r=C3=B4me Glisse      2017-11-15  2999  	 * No need t=
o double call mmu_notifier->invalidate_range() callback as
4645b9fe84bf48 J=C3=A9r=C3=B4me Glisse      2017-11-15  3000  	 * the above=
 ptep_clear_flush_notify() did already call it.
4645b9fe84bf48 J=C3=A9r=C3=B4me Glisse      2017-11-15  3001  	 */
ac46d4f3c43241 J=C3=A9r=C3=B4me Glisse      2018-12-28  3002  	mmu_notifier=
_invalidate_range_only_end(&range);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3003  	if (old_page) {
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3004  		/*
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3005  		 * Don't let another =
task, with possibly unlocked vma,
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3006  		 * keep the mlocked p=
age.
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3007  		 */
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3008  		if (page_copied && (v=
ma->vm_flags & VM_LOCKED)) {
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3009  			lock_page(old_page);=
	/* LRU manipulation */
e90309c9f7722d Kirill A. Shutemov 2016-01-15  3010  			if (PageMlocked(old_=
page))
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3011  				munlock_vma_page(ol=
d_page);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3012  			unlock_page(old_page=
);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3013  		}
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  3014  		put_page(old_page);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3015  	}
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3016  	return page_copied ? V=
M_FAULT_WRITE : 0;
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3017  oom_free_new:
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  3018  	put_page(new_page);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3019  oom:
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3020  	if (old_page)
09cbfeaf1a5a67 Kirill A. Shutemov 2016-04-01  3021  		put_page(old_page);
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3022  	return VM_FAULT_OOM;
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3023  }
2f38ab2c3c7fef Shachar Raindel    2015-04-14  3024 =20

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202105290002.6thE9Cjr-lkp%40intel.com.

--LZvS9be/3tNcYl/X
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--LZvS9be/3tNcYl/X--
