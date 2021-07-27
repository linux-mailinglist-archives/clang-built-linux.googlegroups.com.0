Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVFEQGEAMGQE6ZXGHLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B9D3D7DC6
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 20:37:10 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id c2-20020ab034820000b029029e4f120f6csf56755uar.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 11:37:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627411029; cv=pass;
        d=google.com; s=arc-20160816;
        b=DOFoP9FtRz88Vyf29fVanhS2X1sICgd0LD8XObFbx24QEJ2gjO+sOdWwn/bB6VF9Y8
         27EzCtmK6ngjlrk8/KTej71wTfn3erbDQ2hhx7ibykt+9DVFp9dVbWCh7gt6fhlrFKht
         UHErky72EcIyCQyA58t+916HONeIrqsKpGEXiHB6yDMMhuE8wXAuAGzbbd+UFxz0w1iP
         VEhSWNpHu9RMSeTIXqhp2WE0wYMy0BxMLiJXTCrmyffxbFCuMKdWsO+4AG4fbBGoflUR
         GplDvS9WHdqft3izGqYv12rtDPaX/4JaJOL8EgeAIUiU3mwoXksp8MWRl1vC5YS/vsDj
         vKRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lQALupdhl6e/TwO6bLDgZdv0enijACDwAILGD/h/sOc=;
        b=RMYUeZYOaEjgknVvbrcZ3mNePOXADfqUf/RFEAT94Clwrkv5/zlOeQkEYaPHaI8cFr
         VUN0mFFmUO0FJp0nDxh/X0e7a45etkHabTbb6TbtPc6WiYPSwe/adZPThrw52sc0dHrI
         f3CX1KTbCP88VbwXQTj36jPdZgYS/cQitEwnxlcD5Xne/n/bO5t8GPf+dBNOT6Zvd6iX
         Yu/Qz2a+8AZ0fnwQEfBzTDUzC8aC4CW/m7r4U3sHGS/ABGdooTaanG3gDmZk2f3B1m2e
         9sgwfhZk1WCCaw2mdqMztQaumUJMcnS3PVyoBLe24BZiVDi5pTxO2Hr2FLn3oTovZGCt
         3M/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lQALupdhl6e/TwO6bLDgZdv0enijACDwAILGD/h/sOc=;
        b=EGTQ2Tzx6Ohr/iN5zk94mfoTBLQDfRIb1K5HdhHl1M3gzqd+Qxj9COpWEtTe0kC/Ya
         QzYdcmSRsjXqCAbHz825iKI3yARNXUs6NgbvXdICLwd4I/ooIa5uf+UeW1TPJoRnpTIe
         7ku1QJdOyvLYIo+sqorcJhF5984uWHoV6sE6J0guXq+nx8dzQmboA45c+rqvP9Ikgc/i
         NnacuCoSXeNzFS4ykfSpiQ6T7Pm0mH7l8GfqE/Ol7R2/vc1E7crv0OobaSMlcP5jJHgm
         r3rZl69cMbAEhSpbGinhCeiEBm1o4UOb+kLJXAsoNMbqXATrNfvvLiPzaCil21wIrzFf
         TMkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lQALupdhl6e/TwO6bLDgZdv0enijACDwAILGD/h/sOc=;
        b=I6c9LEFs9dUpcPSxurCAxsgqUfcIAv0TbazMZ3NfZO2B4JfMKtR4Eqb5dQTILRmwTn
         uC0uYDWpqlLrvTIbQv6ophOrxK2GN97Xkjb7iOs0LGc7XHak8YkS/9FUQ7tZVmoe/OeD
         RmcCr+gHmQ0zLyRpnfhFMkXUK3VCxpLcdfi4IJLoU5nqqG3HpcTRVML4PLxTy9F3CcG4
         LOZNE5P0smHx0BC3TbX75sec2l/2zCKL/artdjdLrVDnV3hj0+xAGD9oGvPPjmX4Ui6b
         h7Y3NB1Te+kN2F5Q88I4uVKOQEEOFKNErsEwUtq/z3q3ayzT2ia9F1PxbW8vAjbrirPq
         +w+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HQFo5Rggndx9YMu8Apt7Dh717AGE7HnxoXQNVgCouga03KMem
	3eR2I8FkMW8XFe5HNxoM5zQ=
X-Google-Smtp-Source: ABdhPJx+S0dmjKa3qruGyuFKpG73+EOGz0k7v57/UJ8SeWPTrCHMC049zH2ykYmHEKEoD28FkVoFwQ==
X-Received: by 2002:a67:fa09:: with SMTP id i9mr18105995vsq.20.1627411029049;
        Tue, 27 Jul 2021 11:37:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cace:: with SMTP id m14ls202758vkl.3.gmail; Tue, 27 Jul
 2021 11:37:08 -0700 (PDT)
X-Received: by 2002:a05:6122:d83:: with SMTP id bc3mr15627632vkb.3.1627411028365;
        Tue, 27 Jul 2021 11:37:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627411028; cv=none;
        d=google.com; s=arc-20160816;
        b=uj0wg2LDhd9QPN/f2YYl0BFD3DUKlWfRtQlCrslPEk3eaYcnQ3nlyYpWBjboQjUWiA
         ywmxNTLO9BMQZLJUfh616p5cQfHFZ20uGPe5AeUFsQTSgug3M6ycfEPrPE435rqV9L9P
         fQIAVD9qQgglFUFqgeBLlT/mpXPicelONtEZTTMrR7Lh8YLoJkPL/VzK7d1VGiNxa07q
         xF5gnXkWUEW5wqaDMd2cIXHPZjsLoTSe6/lNmEzeHB2U0bd13VDP5eZfoR8sUHAI73yY
         lhT84bagdPpeszT7gc7vz2YuTUCNFANAG9kSfTo+lTgTJpULLYKcGl81krpoGymBcmVZ
         6YHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=pBqofjCF9nqZgzA37IXjo3keSgiinsVfpxY9QvX3kFc=;
        b=DyuG6kIsNZxhpDkXnp6Y0XXKAHbYbbnTFv7VbmPlpM1/Bhd3jt31rC67X0nmdY1b+1
         JH4yD0CHhQicHmZR+mQMPYwHVXPY00NsRChjpNNa7Q1ZOe2tKAUYo0zFuLhCkEq4s/Mg
         oITW3Av19YXrNdQrshWbkr4DYQZ0t+YQqM8XLJNNSkMD+Wy2P3L5dgZ3yVDUIEv136rp
         DNs0Mpce2WYbwXSR/dSsnDh/KY2cOdt9Csy08rRjX2GOCqOzA0mIxs/gpUU5IFnNJjaC
         qn+GFGU5iJsV4fYT8fy9O3ntKfmb6SpyVLJuDF60t9o212v+/zotDpLlD2Y0Zgz28S/b
         yBfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id x18si299113vsn.0.2021.07.27.11.37.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 11:37:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="210619105"
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; 
   d="gz'50?scan'50,208,50";a="210619105"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jul 2021 11:37:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; 
   d="gz'50?scan'50,208,50";a="437425120"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 27 Jul 2021 11:37:04 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m8Rwu-00079N-4D; Tue, 27 Jul 2021 18:37:04 +0000
Date: Wed, 28 Jul 2021 02:36:09 +0800
From: kernel test robot <lkp@intel.com>
To: Marc Zyngier <maz@kernel.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-arm-kernel@lists.infradead.org
Subject: [arm-platforms:irq/generic_handle_domain_irq 17/22]
 kernel/irq/irqdesc.c:679:6: error: conflicting types for
 'handle_nested_domain_irq'
Message-ID: <202107280202.Xv4cnltF-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="AhhlLboLdkugWU4S"
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


--AhhlLboLdkugWU4S
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git irq/generic_handle_domain_irq
head:   d3126d1af248cba3b70342748d77c2825f37eec2
commit: c0279d786ada3daa6c234a48631bf45a5a098579 [17/22] genirq: Implement handle_nested_domain_irq()
config: s390-randconfig-r034-20210727 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c658b472f3e61e1818e1909bf02f3d65470018a5)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/commit/?id=c0279d786ada3daa6c234a48631bf45a5a098579
        git remote add arm-platforms https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git
        git fetch --no-tags arm-platforms irq/generic_handle_domain_irq
        git checkout c0279d786ada3daa6c234a48631bf45a5a098579
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=s390 SHELL=/bin/bash kernel/irq/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/irq/irqdesc.c:10:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                                                             ^
   include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
   #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
                                                        ^
   In file included from kernel/irq/irqdesc.c:10:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:75:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
   #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
                                                        ^
   In file included from kernel/irq/irqdesc.c:10:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:75:
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
>> kernel/irq/irqdesc.c:679:6: error: conflicting types for 'handle_nested_domain_irq'
   void handle_nested_domain_irq(struct irq_domain *domain, unsigned int hwirq)
        ^
   include/linux/irqdesc.h:171:5: note: previous declaration is here
   int handle_nested_domain_irq(struct irq_domain *domain, unsigned int hwirq);
       ^
>> kernel/irq/irqdesc.c:684:3: error: implicit declaration of function '__handle_nested_irq_desc' [-Werror,-Wimplicit-function-declaration]
                   __handle_nested_irq_desc(desc);
                   ^
   kernel/irq/irqdesc.c:684:3: note: did you mean '__handle_nested_irq'?
   include/linux/irq.h:659:13: note: '__handle_nested_irq' declared here
   extern void __handle_nested_irq(struct irq_desc *desc);
               ^
   12 warnings and 2 errors generated.


vim +/handle_nested_domain_irq +679 kernel/irq/irqdesc.c

   678	
 > 679	void handle_nested_domain_irq(struct irq_domain *domain, unsigned int hwirq)
   680	{
   681		struct irq_desc *desc = irq_resolve_mapping(domain, hwirq);
   682	
   683		if (likely(desc))
 > 684			__handle_nested_irq_desc(desc);
   685	}
   686	EXPORT_SYMBOL_GPL(handle_nested_domain_irq);
   687	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107280202.Xv4cnltF-lkp%40intel.com.

--AhhlLboLdkugWU4S
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICKlNAGEAAy5jb25maWcAjDxdd9u4ju/zK3w6L3cfZpqvZprdkwdaomyOJVElKTvJi46b
up3spEmOk8y93V+/AKkPkKKczkMnAkAKBAEQACH/+suvM/b68vh9+3J3u72//zH7tnvY7bcv
uy+zr3f3u/+ZpXJWSjPjqTC/A3F+9/D6n/fPpxdHsw+/H5/9fvTb/vZ4ttrtH3b3s+Tx4evd
t1cYfvf48MuvvySyzMSiSZJmzZUWsmwMvzKX727vtw/fZv/s9s9ANzs+/f3o96PZv77dvfz3
+/fw7/e7/f5x//7+/p/vzdP+8X93ty+z2/MPHz+f/XHy9XR3frw7/nj8cXd8cXTx+esRgL6c
fzj74+jo+OP2w3+96966GF57eURYEbpJclYuLn/0QHzsaY9Pj+C/Dsc0DliU9UAOoI725PTD
0UkHz1MknWfpQAqgOClBUN6WMDfTRbOQRhL+fEQja1PVJooXZS5KPkKVsqmUzETOm6xsmDGK
kMhSG1UnRio9QIX61GykWg2QeS3y1IiCN4bNYSItFeHBLBVnIIAyk/APkGgcCjrw62xhNep+
9rx7eX0atEKUwjS8XDdMgUBEIczl6SAgmbC8k9C7dzFww2oqJMteo1luCP2SrXmz4qrkebO4
EdVATjFzwJzEUflNweKYq5upEXIKcRZH3GiTxjF1mciiUlxrjhS/zloasqLZ3fPs4fEFhfuL
j+1WFY7CJdFRIf7q5hAWlncYfXYIjUs9hKcLjqws5Rmrc2NVh+xyB15KbUpW8Mt3/3p4fNgN
rkBvGNl6fa3XokoGQCW1uGqKTzWvielsmEmWTQBMlNS6KXgh1TXaEUuWVMS15rmYRzhnNfjP
YJOZgvktAjgCvc6Ji/Gh1ozAImfPr5+ffzy/7L4PZrTgJVcisQabLKmKIySVBROlD9OiIMKo
mNIc4XQddNKUz+tFpv1t2z18mT1+DXgKWbLOYj1aXIdOwJpXfM1LQ/yOHbOq0TcYrk23eHP3
HU6L2PqNSFaNLLleSiJgcHjLG3BtRSFLujAAVvBymYoksktulEhzHszkTSEWywZU1LKq4nIZ
sdt7qSoju4wKsGGl6TUY0M2fol81PMaWjFQjqSKwLisl1v1sMiMvA9VUhUx5kwIJV3RFOBSM
Lpcsja7GZ6O3GsV5URkQkD1w+tk6+FrmdWmYuo4afEsV2YRufCJhOJ1YJ0ueAlhxOsoKKqnq
92b7/PfsBQQ/2wLbzy/bl+fZ9vb28fXh5e7h2yC9tVAweVU3LLGvEDQUiCCbkhmQmCcwneJ5
moCfQsLYKvAA1IZ5qg0g2JucXdtBdEKLugqnGoSlRXRjfmLZveOCNQktc1iLtQgrNpXUMx0x
KdiBBnCUQ3hs+BXYTmyx2hHT4QEIpWHnaI0/ghqB6pTH4EaxJEDgxCDsPB8snmBKDmqj+SKZ
50I7sbfy89c/LFas3B8jPdO3f+2+vN7v9rOvu+3L6373bMHtdBGsZ+q6rioImiAcqwvWzBmE
nYmnfW20JkpzfPKRgBdK1hXRpIotuLMPTgI5OJWSRfAYHH0OtoL/eeqcr9p3RPbWIZzxDRNl
TKjGx/TTJRlEwaxMNyI1y6g+g42RsVGS9rWVSPUhvEongpkWn4Eu3nA1va5lveAmnxNhV+Ap
rdkSXyUT5KTFTU+W8rVIPE/RImDghJ/o1slVFm64f1i0sELoZAS0RzQ50+Fc7VHMMMoQxkdw
5oPrijGz5MmqkqB/eMBBQsDH/hej7ildUejcyJGUo79b23BNEeWxz6wANdGyViCwIZRTaRCn
A2AUyAIsDGIHzNXNiFTGKV1ATkknw9O5lHgghT5hMFtZQTQgbiC9kspuplQFWLevCwGZhj9i
zhROdpODs014ZWzOjA5vkIjzwsSm4agXeLp7ewVaXeCh0sYJ0VUBDvdgTNEZ+RKsmMZCLlB2
cY9vIKAyq8gMTi0HMTIINbN6gp2sNvwqMgmvpA10Br7FomR5FssQLG80A7fxJQXoZeD9mIjp
h5BNrTznzNK1APZbcXnrhxnnTCkRdTQrpL4uiPvuII0XwPVQKyU0pTDswE22kV106aukqDx9
1vxTVM7ALE/TaIJl8xJU3yaMyy0QGGjWBfApafaUHB+ddRFFWwiqdvuvj/vv24fb3Yz/s3uA
mITBGZlgVAKB8RBqRN9l3Vnsjf1J+5OvGda8LtxbulNz4lCB5JNBFK5WcXvJWSy303k999Qz
l/PJ8aArCg7vNkSfJsODC8OVRoENyuInCJdMpRBcxR2YXtZZlnMXOVhxMnDvE4uxwSLkhUYw
op+g+IYX9kDB2pXIRNIFk/SkzEQOZhMzTXRj9nDRdCv96lDv1AoS3iE7c1TcMhWMBHeYP6a8
6uIqwirk5SsXJ45wXfa53HBI5CII7yglwN4kG7sITqtl1QJkE6TvNubz8kghkZWmoBGZHxjW
IMA5JxPr04sj8mRPYFnA5BkcoD0nlBFXnMtB28FHffAMOwfmK6xqdNZa7R9vd8/Pj/vZy48n
l0CQuJYOLSyfNxdHR03GmakVZdKjuHiTojk+uniD5vitSY4vzinF4Im78REFHIZGRvDk+CRq
Od2o04PYeNWrw36Y5gbf25jaT6Hx+aCLsAS4G4ewFwexuAsH8MeHBoMIYwZucbig0VqmxNci
49JrkTHhnZ/NaTlNF8SiSmXj9Mvzs15xpKny2voRLxSuozGkMzJdmNDuiiSEQFi4CmGpYhtq
kQ5qwPRzubgOalHHEzsIqJMPMR0GxOnR0XiWOO3l6XCRseJXPAn8jjtbSAjiqrClnBN5Qrwp
/UuFDtIWmIbAooNjjhAPPTqKMAgcEgg8mdCFeaGM5RPjZoyNoqWQQ67M+rpi9/1x/yO8hHDu
19ZAIYiDE6Z9dRzdmiSJvdlVUy2vNSJBI/Xl2Tk5DOEQckfRVKrlsMG51SxqOMkvTz6QqTZM
lU16DckbnEWjKXsheGt0ReP3MlZB/JQK6aUmS52gpsZjhwQWV08UgL357SvT1+9PAHt6ety/
kDtAxfSySes2Rm2He7RDOrXpDqj13f7ldXt/93/BjSIck4YnBgwLC3Y1y8WNjUVAdq5o3NF1
+zWstChiNg/HbLO8riAdysITZ7UuxhCsjPvVdorJRvc5Dt5A3uzXG3vsKE9BINPXZdLQKgCF
Nvj/yFQYLmGsctXY4ADTSH+CdSZGd1TIYLkGQaagbCvulZt6irWtjNrXCwlJaoQEbxolTWv8
DfIY8bmye1ADwChJw04Ed9vaK06gGK44t7v/+rJ7fiGxi5uz3IgSK4B5ZoJphiHeTeV2f/vX
3cvuFt3Hb192T0ANycXs8Qlf9hwqdeLqJNTPBrAuioQtVt4R8CfYQwNRPI85w1EwaIXMMwi8
BaYyNSTBkAljTSbBUnTgtjB1wktRULhm7pcB3W5Fp18pbuIIB23AyLKgImHxWV0m1gS5UlKB
Mv3JE3/HLVlZiABimbUzLr3j1CLTgmHdxYhFLWs9liic/Pa+pr1/DkSAxdQMAmuRXXelpjGB
5qa90AuQeDOje69rS/TuojxKh/E9XqQHyNMTOBdgLwzklVkDeyHTUHJ4b1/ItL3WDuWu+EI3
DPXXHg5uqxtWhWLEdD8A2Qwax8fgWExo52y98mhTBu08jKXFiiF/axbMLOEdLiHBNDWKxgr9
GyQgWvfXaPecQjWaZRw8e3WVLEPf2pmI2zmb/wYU7TjXWzCBS2U9jgvszZ2oksZdoXbdChFR
aZ5gaeEAqoG02QQlPIeJOIbcyO7Wjc538GJriiK47RysAoTBbcUbS2o/MQ9Y5IRhlxhAocPC
WntkA5wcZGaaFOa9DrBgGV0YxhMsOhAVkWmdg0tCTwfO3aphMBqnxYMX/JLclGG81a/Wju6C
zJEB5sI1vPRVBVKayGEfICpNVhCipZp0kUjsRhELXQPfZXo6QrAkLJ601SfnMVDqUwU6y/a6
YFW/HlLn6qAHBw8B9cq5AIjkwQ8OTE4QjCPgQWEM+GPTpRBqc0XD2klUONxtaUvTrwoLPbR+
F7u76GdycXyirqsYm+tUy+5SxAvyuxJMW3wENe2qji40SOT6t8/b592X2d+u+Pi0f/x6d+9d
LSNRu8zIqy22a8Nifkk7xEWD7UM8eHuMrW+Y8YoyWmp7I7zpdQC2A0vyNBSwtWmNBdnLY1Ln
cIYYq3K0JmrvhHM432viBee4r/QRDthEC7C4T34Y310kzfUiCszFfAzH4HehhIleSLWoxhx7
yXRHcCOnCqn2rrRIbRJr/X6siIpEm3mwAAA0xaeQGVS2TIc8aCzzVSwWFSLadfl1Wh64kShB
k8GWzQO34GqA2/3LHW78zEDi7O6z+wQWQic7mqVrvM2KXRkUOpV6ICVVgkx44CFVD95IV1Z8
soeLzU9cAiuHa3USeQOdkG3BBeI+vz5BkKvrOQ0bOvA8+0Q58l8yJJldgwsEkMKv97LAhejy
OLD4dgt0hd2Q6tpX9SmKZr48QPTGHD83Qdvq9RaJZuswLKBkdfkGM47gMDstzWGGBqLhSjpC
a7tPD8rZUvwEepLngWKSY49kWoSW7JAICcFhdt4SYUB0UIQb8Ij8sAwdyc/gJ9kmJJNc+zTT
cnR0hwRJKd5g6S1RhlQjWdblmxbSRxnMSEwqVbEhbgsPWzfYhavUc6mNhrhmAmlZmsANEZa7
uIZ1sKqyFNbB8v/sbl9ftp/vd7bhf2YvVF+8c2AuyqwwGCRPxV0DBQafxm+WczidKFHFbzNa
CmxtmbiWVRxz1GhQNMU/LfoW24ftt933aA2nr+6SeHWoB19B4ELTnwG1hn8w2A5LxiOKMJ/h
hY17bN24GeMzpk2zqP2mLew2pt17VPaOgY6qveugG+BjprZwNA0sXK69heWQl1TGMm9vWM5i
E7RkRdqSjtYxx7g6CFkcyGVANi+KVcx7JD2HF+jj0Ka8bLcQCxXIKrFVpCZsXsBNYGmqGhNe
Kq00UYmupdZueSFKO+by7OiCFOljqW5cn3MO0RSDSCTWdKOAUb9cl9BvEOCh7/ciVW0W69Mm
WGCL6cs/PK0gSXeUzxtkI46ppIwFpzea9GoEMOsZorOBcLlSfpHGNonF3oD5dlp4PW3gzbAY
YdttI0PAmLpe8tAnVoa7ugLLaTw47Ta6GUqaLOvVHD0FL7v6nfU95e7l34/7vyE5I07HuxyK
thLCKULyY3zCC5gAkgpGtN3k2nsY+hAJzEgCuMpU4T9hgo8N4AGU5QsZgNpWMwqy9wyZVxix
cF3P8TZAJF7R26Kchcbtw42F3RTaiCS2pY63ZfA6rquQsaqtuw2XvhwLEddTc3I8RU1Cv6Ko
kzXRnKx9HphNK9twyaO6JzxFEZXr1kuY9qFdfmUviPwyoMDa4Byci+CTGt7NW+Xtx1nam91O
2lIwswxmd9g1V3OpYw4JSKqyCgYBpEmXSdw7tHhsmoyVL1u0Ymq0M6IS8SkdcqGwLaKoY12C
jgKbBlz1hXJT2DVGey3x0JEr4XeRuLnWRky8p07Jiwg8k3U4DYAGtqY0xFNlC/BUuYOMbbTD
hDrrFuDXnC3QKnnIusVEgb6fcXRJ1YEHEXdCQcTUGhXbxAciELYVnL+M2SW+EP5c9EZC/FqH
mgvvyOnhSQ2YQ3Nu4LUbKWNzLp1Ix5MutUliej0QXM9pIbqHr/mC6Qi8XEffg+E6GvOhV+VV
9D2ljICvOVtGXyRySFukiGlnT5MmU+JI0kXUZIfNmaupY9999CTiYX//WZ+Z8DM9Acr7IIWV
/BsUZbxlpSPoNOUgkZVSRIwdXnk700E7SV2+2+8eHt9R2RfpBy2oCVbrc9+5rc/bQwPrVdmE
PwYi13qOB2qTslghD23xfOSJzltX5JnsOfVG8Vd2VNYzHSBxXip6SgDThajGy437ZYvSwozI
Adacq+iKEV2mkHY2eC1rris+Gu3c4tRg5/A9jqfPYeSlnmMlXI9eM3lCuWF8cd7km5GL7nHL
giUxuPcFidOVKqczDelANbVPsE34ITjeRxZMxe6V0IlXpsLv6LUWGSm4d2MhzbI3WhDAFJXL
1Oj87vIzVuyuxveicJqmSdTKBH5QZDxtxecmnS8aOf8zKaPfrlmK1hJdLGDFiaY3nilCp5fs
eKJvamIE3t1OcfIWB4feTA9V9/LguFVp1Md7H0PjEySHMBRPdM/jI8ZeKMQ+mLBYP15gpvAe
QEGEN2MHs80TSdQNIEnO/PZYhBWVjDVvImquTs4/nvlvdjDQkLE+5ScmrvhzJdKJDH4NLDUf
j06OP0WdfeKifnI8JDYCsn46dqGfe+ELPJ5E18byFT091g2rwNW0YGIgaRpf0dVJrJk2Z5X3
/UK1BP2Mmcp5LjcV8yo3LehA8aGjKJdJbCCAbewX5ZcSZYotCh41YUq2lCQioojw5KS4Qs5F
Lkws+qRko+49inTGEiAWgOBXEKGkKs7Z4tBINIk403TeN6VHiVGKB1ZJSa22enrFOUed/xBv
13ZeZ+p7zjSJfTqTlhq/NJT5mtYU5mCxzF46+kXCDtr9uY6dGISKBuEEnjIThdNmSgIu/Gyd
TuR/dkkw2CUSHHOy4uVab4SZ6LJdTxcRQLIQoK8C71pUtOyD0kdIs9BeZy/CSx1/5VLHnJHd
R8sneBj/BflpU4AwOCqdtzeflJmaqky08BjCG37JC7xFbxbINYuH/xXW9NDJQVg7cXRjJVpd
ud/owFJ65VnnFe1hbT+HtaGKCpqfB5SLYGKxovXfV9gHfd2E3yPa32OAuI4VkZYAWgucYa+p
6xjxNqhamQWP1bxteqwk5AGyFEYqWqQczRkgaOGRLJbF3sMyWJyiYUAHGfnNAWE7PJtc6mg7
Tkc2qlWrq1U0/4ARK1ro9CQ6gLEYpmovtFbZStCWY/fc5Dz1Au0WLMqqjjvMlmBRRb8Ixb24
qHyDuKiGdgUfPC7RMxG7Pkt4tWxc/8pA2sIwozPm2k4Vv0joCLEDjvrSuIPOYqWQSkNI7v3g
CdaOMgIYJx4dxM8vUg0GhLcaAwgsC5jMqaOyRmsbzZnhzVVBr1ys60F8QRt9MiZy6R0Q3CyN
lHnnGC/binu6++fudjdL93f/eM0iruk18dwQPMaEkSSMfqleJUUi/LsGC2kw8W0Sv2Ti2mmS
3263+y+zz/u7L99sO83QWX532/I2k+MLgdr1ty15XkVjRPCEpqj8VqEOBu6hLic+JjWsTFke
ZBzDcpR7bSZUsWHKdYyno1Vld/vv/97ud7P7x+2X3X4QbbaxovAMtAPZe5wUZiQ6gheqrH8b
+fB/GGUbk50Y6FqjBNG2ptGA7jelqPcMV0QcXA7BkD144vfOveyxdcv9mM4hAr5W0c44h8Z7
qXaSJrxwrYrmk9T+jyF1g92Iikex+lrjxyxcrYWWZGf6H17Czt3aSNvRH0ev6xwemA2Lhedr
+cK7s3bPjTjxvs+eUHf3o0avz7Mv1lI9/S+WYvIrIzqkd5wSPFDSnYm9Osuk/Zw8uieLMnpY
FfYH2IJ2uKft/tnvOTPYifyHbWrzPzoFBOkJnHg3UsnsDQJQOPtbExGqUfdcx6Dlu4Y/Z8Uj
trC5j+DNfvvwfG8/j5nl2x+jlczzFejmaB22N2GSPde5oGLHY0Y/ByrdEzl6DDb+RosV3kCV
pU0wVussjUeIukDaaWHLamKzw1/FAUjfqYgfetoYt9MIxYr3Shbvs/vt81+z27/unmZf+hPG
14FMTDLzJ095Yg1ugiW0ojmDKP//ObuW5rZxZb2/v0I1i1szVTNnJOphaZEFRVISY75MkBI1
G5XHURLXOJbLds6Z8+9vNwCSaKCpTN1NHHU3HsSz0Wh8LWFzThNaPYvrXeXOKBeqdYonDM2z
Ox8+daB2pflMVE6EtYgyCqY03E5KB4aNiA5BpFgvpVQtDpLVdcD9f36HsX7/9HR+krmMPqsi
Ls/vr5cn7Riq/H0e3x6YMvAfhXqnXJ6CACr95fH57L5T7NKAEK1WS4XBAxpFmlKHE14AhuiV
XNYaPLD1ZGKq1en02Hiy8kkRhuXof9VfD/SNdPRNuSt8svUeLE+K0SrcSZDOdvHvivhxxnSw
1GtOg8rJi+AcMeniqrJMFD3Xwh0ECmp6ic87pGj3bPd4tU+jkbC7Eqnt8OpXIiR2V+Gcmo8C
G38NO6F5vJbUwMnJMZq3/WXWqBuaxr7XbuR1mh7tVoCSV1NPzMa8XTnKAjh01aCsCdziLSin
Xo8pQrFajj2fv3YWibcaeya4RJSBtiBO693k5oZ4xbccmeNqzN2+79JgMZ0by1IoJoul8Tvw
NAyHmoERDL/UnX2Kjs+qF8ubuaE2KvpqGjQLMmVoPgoq8vz3/dsofn57f/3+TWLCvH0FRe/T
6B13RJQbPeEc+wQd8viC/zXBJE/0gej/IzO33ZJYTFFD4g69aI32UUsvyKYXBTv+OhJxxLgt
pNgXfhYTJYyMOPVCNhCxprhtL59epDmBciv9OJRwwdwQEsqyYya3HLMkTepkG/ekJCuja6Ee
7f8MrfjXr6P3+5fzr6Mg/A269hfih6pfZwjOfBDsSsU0gZFb2pahmeAssqIBAiH7GdXtJCfJ
t1sL1IYKiAANf/gwmv/Mqh0tRGdQSYvYbWEqsgmu9gHMZfxXijhVFwgMfT17FEnitfAHCxBl
YWTfvp22Pux/aIsdJAQNWdYkZ/A6WHKl8itxyYbqUm/ELgid76wRdFBwtu2Ora6u7BFrQech
rTPp2KNAfZO2AQwVFe6clOHuVIY+N/9b9q4AhcCu2u4UUcwRRfST2nc6wprV3X5vGDPa6ZOS
1ksVpF8YIaACr76CFgFHG5+zSqShXCOMbURTJi7FFZrNF4Rmuqj1VHmBar7isoxM6rdjjVdU
vVUK1yCnBRScARxjY1Epn2HuVkE3XZi2T+rdZg1Nd+HUro5MSXAXWhl9qEr9zN/CmR5/WFcH
lqR6kKmvGDjLAmKRoIIHp/+MlFfgE2U42yDiMHm/BLwaH6/HheleBdT2GaVZF5H5BaIt80VX
uzjDNX8fozcsUZIxP911Zn6qH0TK3qWm6t2F1eVAjtaC/i59O1/b6tWz0hhBCkh6WOOlZUmC
YxIOjlQr6z8i9gyMObtD2KSe7pIBBjHvmIzdICfO7U+W6MJ8xcJa2B054GKNg0HaUCzxTeLz
nrPAQ0A4c452JAUVd4QDZF7tEC1DuTOZ+WrBTcQtkDje5GWU01lyXNAxYD757N0W/BKvmWzc
aPMCRvlLs1dvJkoJ/DgVa/MOvqV0s129WXx++f4+qGfJ+weyLyJB3law9hFkbjbor5+0NkzC
Uw9OblOfdYmRIqkPU7u5VYa7zlz0hCBJj4iU+PmeHEp0ohymg3XPRzl4d8D64lpiIiijKDs1
HyZjb3Zd5vjhZrGkIh/zI7mIVNRozxKdXhi6E1AJYDyvc2LxbyknPyzm8+VykLMy26XnVbdr
FpyzFbirJuP5mMkVGfTYZbC8yYIHCutkQn1DXC6WnI9HJ5fcQgWZ4vHSiy0cGfLGc+BivxOs
An8xm3DAcKbIcjbh2lSNULYCSbqcetOr3wQS0ymba3MznfM9lbIPC3p2UU68CZsyiw4VqyV0
EqLKD/7BhELuWXXGd0CVeqcqr4MdUNhimx8NrcAvJpOmsSeFnGKGQoU/YeZS419LBOWyGLBO
dyLrI/sOvOPD4hzD36LgSwB9yy8G3nUwUqAYrE3kn14kOPa3Og4T1SMFZX21GNgvYc+gQTxc
rqrDD5oF7aFREvOmaqNiso/ZjbcX2iAWja6XWxDXIKC5ELRWRQ2OfuHbRPyq7sKG5QwYKyyh
th5WJnvRNI3PHY8UX680tPZdb6t62RsAui0b225LOYHODKONY0yJytbTQ85o2bGDfF36THbb
jccVD7pGMUA+pSwHDg9JlJqRSjqefETl07gQHVPEYYQoZuzVcCdVpWHA5bzJCfSVxTh5U48t
9ICY1ixKcCeSwpklSahPYF9pVKXzkgdDplJrHoG8F0LHO/OWuf/mQxzCD7YCf+yibFdzQ7Ef
EGI+nkzY1Kh41KxTaidyd4jpy5OOsxGxv+Bc3tSYlt7hVggQpOh5DE0f5CnvZ6czwGVEKU3D
ChiJFaBofngzmZGN1qQPTHwtUqVRgruMLNvOeJ36k/nYzTiaNmM4+lb8lqkrmoJewCWWysc6
ioqBO3ZDKoyCPPyx2D6GGT5Ykdum+riyv6xuNXZCLYLNcn4zs8mykDLHuDdoqM+Ja4QSCf0b
bzk+7dSK53ZQk0xnzi6uyfa6rZjxnfAWq+HPAv7CW/h2nkHqY6y7ATK3FIfl3luMG6PuVk2k
wGLeClzpDSV5w0lquTKNZ9b1oCSRekkK7EQWZTOeuhQ5uXKL7oXaTm/LTyYOxbMpUzJmNW02
9C2bqW9nMJ+3x5Xd/esn6ZCCkKqtqVjLWvWWP/FfC/VckpN4bSl3il763PW74kGC1MJJVQyl
/AvOG722KrX108hCWteUUybgvGRm3nESa4nTFk2uLTqsHu5wrazqX+9f7x/gOOtes1WmbWJP
AWFz6Hx8r4Ov9xXAAjcY91Ur2We0Oxi0LkOQ7BmIbRHyZjp8yL1anorqaKwBSbT1g+MgUQfF
QmzgliefL6EFV78M7e0ap63grvOzOklog+z2QR8VzKDRp896Z5KQW6b+adCDqpRZ03EABB0h
hKMpqPoPBo6CMr+3LcgtakW61m/cuafn0Po2sHVHctw1e46G2tdefNLC/8CMqH6GHLNAHroH
ljn0JER/8BmPzt2zZwThv/T09tz6+wxVpbN7RXuCXrLzs61Cl5bBUNpPEr9jzFY7G86Vpcqm
3g1XZWRMyJMkRbnSVSJICjrYJMWZSpK6rzxvzEgrujv9Uhy2e0s439BgHIgAXPnFwDueFI4P
ZchrDfuUfWWW5hmiKlHvRCBKeyQbUgOrsE9rEzUBjgFHmEXK4dylm1l3svmGXSzdZc+8v5VD
uyprIQE7ebdnUwgv4JTbpHOTibqha80kSgKcCqUtAj1MKFmBWxKFAakyaMmeVxOAzz/1R472
/6QxYOWpNCFwUR1J+xBwHHRPQTcVylNXLrb/SM9BaAy2Q8x26jKcmhd5RUp8kXeC9UUmEd8K
QW3MQBg9PD0qlwS7U1Aa1ia857ltFwGXJbcOsx4Gz/aB78rU4aEvr2axilsVUKPLw19Mfari
NJkvlyrkZ/sJ0bNEbSp2R4yZisbooeeio/cL1OI8ev96Ht1/+iTdH++fVGlv/xoq5xSH1dIr
TMugKxCkZLF1vsFonTjD/Y3pKWwsAkGpCRLLSd7UqPDG84lnS/Qw8pbfsN0Bve6EKllgTRqT
J42e46ZtZRyNMrPz3y/QxsQILuV7QzctQ9OxiteLGtMPV1Sv4alOpFmpYQb+aj7lpnrPprZx
TccjWDPcTFURB97SDmViTFOrYZSj1iZ0G6x3qnG5ZqQCxWM2VdWk220JuhwfeUm1EgzLmoRI
YDM2RmV+kK7jfFxCxUXUuYRYSEz6afh9ifROl7Ksww1erJVynIwXxISy9ivYCkFbPXhjNn5L
KxAK78b0EmvpwrzcbQtSRKeQ9Z130zTc4GklYOhNbpSa5aTWPO6E05YLIsuVPE/2up1mJcXy
xru5kpYaO7tk1XQxn7AZVsFssvC4VaYVUZ4auazXZLYwXShaEWiS2WTecAUgy5tfqzJK3Ezn
bK7z4VznyxWr5hoSq+WYz3XRsLnCsX4646radt7Wr7cRtpm3mrEDsKzm4yl3d9QWUVar2Zz7
1nC1Ws0N6w7Cz6c+8WfSpPYVEqcwa4key8rJ8BTJgHAZnu9wouWbjY4RnIoPY1uYete2VNQ8
JfYeOnCwL/y1YAtGsM3RTy4qTodYRFyOpqAM9SqgXXgVmkuiYgugXfdKZWjebsPYlWTYax/h
ZXzqLWMKXK0IvnNhuhW21k0Z3bWsK18QpXXihMCTYePDnF9QYfXHJOz6X9pRQ4BAntokcUnU
NXx2ijR02oy4BawMWqsotdSVMGQDzmDaC5TBvBWwkpbB4nrSj/vASNrTRZ4deYafHXOeAyOj
YDkpHP1v1yHLa1I+TQyHNJZRBmnqMmTrSb8QIryLm/ku9IhckufF2kLij0utqsUDNmnNr9gT
Tulc6HUkZalK0aveaq2YBINGBI8A+rmPgNgvsBihZgfqGBk16qHi6/3L18cHR7sPLs9vlyfp
6PzydN++CXBVfeXQHthndUKGv0mdZuLDcszzy/wgPnhz44z7g9K7d2d27ZVpNQ7diu6oUxf8
7LWPqoyyLfs6AMRK33DUrFU2RiZ9gHNldnk5PzyC+oZ1cB5ooLw/o/e8khaUdcOQTjTemqQj
Agg7wCS3LiN2CZOfGyW3piMj0gJY2miIIkWN4Rfn+iW5eb31S5pP6iPWsJuRHJZD+XT3+QYR
mnubZ6W1T/VUaJKB7KJUqPYyaQnM8tSi/aE8Lkgfpuu4dMbHdlNyBlXJSvIyzqnhBun7eO8n
7J0zcqFg6y5NUo8RJRz8pDLBQ1TG0QFWVHr7KGtyHPRiRXYc+KGVfUxhPpD00edvyZBXHeJs
R2981bdkAo7q1jUfEUmCobOE5EbWTEqiLN/nFi3fxu58aan4g7qddJwND42G/LJOQXkq/NC7
JrVdzcbX+IddFCVieDim/jYOWl8c0iygSlTllWZL/eMm8cXAcoRPRuVssCZgHJQ54vta5Bzt
5fZ4ly6lzEjMqtiuLOwkEf8+FLmFn6FyBJOBjS6NEghXdMys1Q3O6XkSOBNOk4d8I02RILZW
oAJ9d0qcIc6kBNZRquSDs6QoYzhd0QyFDyPp1qaloqbqpyRHaWw1k8ktoijUuAU0WRWxDzA1
D4YX7CyRtUBC+UVSW8QydTpui64CvhhcfUXql9XH/Kgz6w3oBn14dFexPVNhxRKRPaXROXxr
rb817qinQkztGh9i0NhYUDzkNnGWWkWiV7Zd/ZY2NHVlumMI2+vgYECXONMiw23pnamN6hrE
bCynD9eAPRMOLXkYk/sfO1M7UWegbu9OGdlarE/5LojhuFBVSeQE0k5hr6QeVi2FGp0VLrZ4
f3z4i30D3SaqMxmRDXbzmo1ilYqizO3wP7Bdr03zsFnY7vL2jkqgfu/ruvNm0aHFe2nXZPjV
Xa/0K3VHPQ2tqYaIAmvOE9M5QLLXJcYOzzASH9714pVb1L1XRk9ZpnVkQj+bjr0566qh+Ggx
m1qlJel0Ph1zRM8lLmae88FIXnncQUOylfnVzktTHc9gyRzAyFGlFdPVbOZWAshzPsa25s/H
rBmv5c6bBq+RUnOr63jehCNOmVrM5wvusKy5y/l4wiRaLhecdatvqHnDNd+8sSyAHWsxtROs
Q285djq0ms5X9nhAT+v5+MapZpUE89XkShvCkJn/bWUWi+lkk0wnq8bJT7M8mqM1xjHgxujP
p8fnv36e/DKClWZUbtcj7S3+HS3k3II5+rnfDn7pp7FqCNwbU6uaadKU0dYiaih6qxVgmUtr
PVKciit0Arxsqi6vD1+tydp9W/X6+OULWWFU3jDvtyQSlEnuLtytCmluDuuF9WyKF0wrTnsi
IrsIduV1ZCLZET5aIxJcowZrM3QbTIQw3sY+HggPQSSvLQitTGsilBNYNvXji4zc8jZ6V+3d
j5ns/P758QlvtR8uz58fv4x+xm55v3/9cn7/xVlWuw5A00jMo0TSr/dT68EYYRf4lvrHH62e
Dv1YrpCGBU6/oK1dh8xS230bi0+p4sHGCr/SMDrc//X9BZtOmk3eXs7nh69mzJvIJ5H4NAF9
Wqod5JlVwh/k4mOQfJBbh4UZBJdy12Z4W8oKo6Ayn1Y53KihDmqEn0Bath+oGB6IOA8NKlTc
5qa/J+VWTVEOMqUZy9IVuZ7ozF6p39sYe+tGR3Xv5hTQWerrh00mlETqg2K3JZHwkKYDcEst
BWMQUG5uWEg2IjlFYUr8RKsoOcVAWxh3IXewtqLuKSW7CgXKG6GvkHpZWzU2KgD8tAFB2kzW
9YYLliIzwtCYbBerdCcEz1Kx+vg3ilLIeQWs6bCe2u9e2hD1tFZ9Sr9uwlgU/IPL2tz0a7yr
Dss92gZJeDFkhBiIx2ZghPZTnGMMZEQln1COWX8pmeVSlvdiQoGU9xfAyLjrYyFVXfX8mGSN
UX6VXyDrEWl50nVBdTAwGgZzjcLWlU9HfrLDlHfcrLbLRU/tsODUZM3to0hRuuWrjZmQvOH3
ScTcKXu/y0UFjV4lhieHJFo/2woTGonzokhO2ZKKZhmhT2Das9OZCenjw+vl7fL5fbT778v5
9bf96Mv3M5yAzINlB/JxXbStEkzZKCRGAUVxVxibrYM0wCQRMh7w+oM3ni2viKV+Y0qOLVF8
ldAOq77JNHOdZ6FD1Oh2ds0LXzpA886XSiQWPjeCnZwUqOPwWNdyS4/cFffEk7ldavqt+ksc
gzQri10saeNbBfOxkn6KGgnWOVxDJabzp7uKqPxBEBOlLMOpl7VZHTCMg3k0D6SLlLh8f+U9
SKXxEf2aTkVcLWZrdmFlM+mMAX6crHPzFYRcDFXY+96qIon6gsuZReX52+X9/PJ6eeDqiGiL
FboEBmztmMQq05dvb1/cm5yyIJCl8qd0JrBppgKkKAbaSFs2KaPTNPI6Cw+xtPYoLe8CqvLh
8fVs6AKKAd/0s/jv2/v52yh/HgVfH19+Qc3j4fFzh8nYCfvfni5fgCwuAWkmXReOrWAcXy/3
nx4u34YSsnyF1tUUv29ez+e3h3vQiO4ur/HdUCY/ElWHiH+lzVAGDs/0PEwe38+Ku/7++ISn
jq6RmKz+eSKZ6u77/RN8/mD7sPy+r0FxituObjDE999DGXHcTv38RyOhLbVIW+eHTq9TP0fb
Cwg+X8wR37pJSDeNGFclONeFUaqA+xxvChQronKTlykGceI0NFMS74l03Fc2qw6p40cZIZ73
PrK/x7Ef9p9+cqAv4OARDFzPKMWGv98f8N8sDqmzUqGLpQRMdN2rO//QVstKQBEmMF9O4m55
QadAGfeyxOf73UuAYnccie9/vslhYTiDavhXYPfFoScuYlvJg3UQ6Tcivb8syapLhL0XmK4r
YVV06IvF+VXGaH2GZf/b5fnx/fLKKTbXxIxV3HeBxfznT6+Xx0/GQSQLy9y8p9cE+TgHTtYk
/gnlbcRgqvbg9tOfj2ix+PXrf/R//v38Sf3vJ+Ow4JR4ElGysc9B/bKrv6FrQPM2KtMPPrrc
JUG6lZ9E6Lvja3dAvLoHRIRn7iZElbJ1YFL1iTbFltPONyYkHPyQhnl8GoQBlihHRxKwzcsG
a1dzD2g3Em/NvMWHyZvTa18R55wVVCQxfTsvXw8FCkmYKl11VtmPSdsDIUUUUVZFjDysZgFR
Mjqc841gQgN0H4SKjDldYMXxThTqW5NODeKwMZkAf+ommcqCcxE3cPji/EBaGREFNUXwAc7M
zXD2DzKcWRnS9EPnDcns0ayNTvq4Nt2t8JcNroUI6GsHWqqMYoEz2AIf7PgfHZZmNJJhZoUU
rWae9tz7ThS4q3MTU6sxW4qSTQMS/s513PCgrNcsp4wK37zgRpZjykAibHcR1HGDsYI4H/ON
0ANLE9ZV6XxsS+P72RVTj8067CXOX7cVLesM3f0Q7snqZCViY7hJovomt84YGETDSxlrY5zY
37jxnE+UJHQB4AeATqEmm5MR6VWapTHw2TaTQqq9rhQsT9IqvAYJYd0W0eLZs8zkj5wjzlgi
jcnUMv4Q7AWEUUKZkMWcbk/8uI8anD32gqJoGtguH4CeQctfi4vHC6BBRULV8S4dwO8AysxE
GnlsaEnqJTToH4KXZX6FeILm5yqjo6HtdIReG1Qkqbfyn+C7psuOKVcWpoKS3oUHYp7CSoHA
BFjHB3MbMSMTRNHsKYK4LOwg1QjNJIuehv5IcEgNZGBxM0NOxE8O/hFKxhsF7nm6kQYVp2Yg
vwaaV37F9SzSCBojL7prkuD+4euZOBFU/TpvLCmKjLGXzV63IAk1YUDutItFlW9LP6VD0ICu
ZAeg4udrFWontuxgyMTJwVuu9eepT5Vour+H+1DqKoyqEot8tViMhzbLOtw4rLYcPm914MrF
77AZ/R41+G9WWaV3g7+yRl8qICU//PadtJG6D7MYRhh25MNsesPx4xyNMnAu+vDT49tluZyv
fpv8ZM7CXrSuNktWT7HLVxSmhO/vn5ddgJOsaqeYSbA2PEkrD+YR62oLqgPV2/n7p8voM9ey
GnzZbFpJuh2EQ5TsfXqdL47/V9mxLbet434l06d9yDkTp6mb7EwfZIm2tdHF0SVO8uJxU5/U
0+YysTNne75+AZCUQBJyui9NDUAUxQsIgLjU8UDlBcLjFNiaVcIYEg3otVlSKXaEXaqqcPs6
lAnYVsLhP6VDRyO8Y1wDU9RI+K3WvJ0BI53wdg2IPqeHgq41TVZxpaKGQbvrj1k6iwoss2ue
YkoF/hHkUavxhvPITaq1vgKDIWlUPlAmjqJnGRUzL2OpqGkI8LiYgcoiTpyKkwF7LnLPE2+l
R+FC1ySByN5RrkCIqsW1c7Hw1jMBqCVxPRL6oMqiKUINqHDq62W13eIO62Boy3tWwHvcBzvM
52EMT3fvYM7dxEgeTnJl8kiGGx7qzPn4wCvHclUCj+j9fo0/HniHpGN5JJ8OPC5lofRILga+
/eLjeLDhi09yFk6vgXe//eJs6O3nPKMUYuBYxqW2Oh94YHTKs4n6qJGLiuo4TeX2RzL4VAYH
U2cRA6VBGYUUDszxY/mNn2XwxcDXDHZw9H4PxYhlJLgs0/NV5b6RYK3/NqzODDKRWGvR4mOF
zqXSkzFmkmwr2X7cEVVl1KSRbJfuiG6rNBvKSWmJZtFg2sqOpFKiO7vFpzFmhUykj0mLVkx2
6QyT441sMaBnXab13EWgVNZD2iKNHcOiAawKvGfI0jty8u9MrczwV66WV1zMcix4+hZtc//2
ut3/Yg4pnZzCszPhL9BorlrF6h/24lCfch0IK9BgZfl6YloSkUa5VUlA0vcBKwOU8DadwYp3
AZGkXKZxmN6qF7XM+YcOKfWsc+I4SCuKA1RtkfK6YC0tVHhR56KyenHk1WsLyCQlCJQxVJ3r
stVZLPmNNspZ+CyGwIalE3vlJo90pxVa4ldlpbPdYHXCUk5kb6T5flQidkeQ1fmXD5g+G6+w
j/Gfb89/Px3/Wj+uj7Ge4Mv26Xi3/msDDW6/HWOK7QdcScdfX/76oBfX5eb1afPz6Pv69dvm
iVdqtYWsdOWl7dN2v13/3P5Dddz6FRjHJGqiyru6jirK5G69DJkwJ1FhQIRrmQCgLikwUJee
UcAkstdIbSDFQHZ8ooLdSCvBdQb1KKbAblyC3t9FHhiLHh7X7krU39adTRVWBdmhuORKnmdu
WLaGgRIQL2596A2PFNCgxZUPwXoCY9hgcclyV3XFSbRO/vrrZf98dP/8ujl6fj36vvn5wqtu
amLMQKQdIiTwaQhXUSICQ9L6Mk4Xcx5f7CHCRzC5vwgMSSvH76WDiYSd0B10fLAn0VDnLxeL
kPpysQhbQAtrSNr7yIlwJ+7CoHx7n/jgKklrnb/BtYkbqtl0dHqet1mAwEx+IjDs+iIo5GEQ
9Eesp2SGom3mildGN3BznGoDxNvXn9v7P35sfh3d08J9wDDsX8F6rRwvKQ1LwkXjVN7rYCJh
UkfCN6m4AsTwN9V5OEDA5q/V6adPowv7VdHb/vvmab+9X+83347UE30aVtP8e7v/fhTtds/3
W0Il6/06+NaYl7K2Exnn0gzMQWaITk8WZXY7+ngiCZ/dXp2lNayFcFeqqzTgJVhDLAKOem0/
aEIOV4/P37jN03ZiEo55PJ2EsCZc/rHnsGbfLud9NuhMrAZqkF4Ov24NT2Qp1eBvGtE6Yba5
ul1W0UJoNkJPzKaVXELtp6APyZcuT+vuezeIwVzmYpUnyw3zKBzlG2norzWlNqFuHza7fThj
VfzxVJg0BIcvuRHZ8wQrupyGs6zhISeCxpvRSZJOw6Uttm+XdMgxkzMBJtClsIZVhn/DwyFP
RuOTcC/Mo5EEPHUSJXXgTyPh9JtHH0Ng/lFYPJgqQk0Gsr0YmuUCXhL4ZMTbl++OC1K3yaXd
BNBVI6UR6GasXE5TcYo1Ioics1Ma5Qo0xJAxxxGqM/ahYKED9gCnQvRYeCwRi+wY5HTwjDIc
8gBHV9VCe235k3YmtNcsSxyScEqeH19eN7udK2rbnk8zx95r+Ri/bjWw87NwTTk3sD1sHq5r
vH21e78CHeP58ah4e/y6edVVtX1NwKyPAgsYLiTJKqkmM89lnWMMUwpminByhCwnkQ4ERATA
/1DCGoXOaFxuZnKS793rod7pTUc2KLt2FJUbsS+gYQFfS7lffVIjUg82pQqS68oJprURQ9mZ
oLwyWVO5BvBz+/V1DfrO6/PbfvskHNyYRDJSIatGuGHjLCVNcAr3VMN9QyK9BVlLQyQyqhOu
DrfAZbAQbU8TkCPTO/VldIjk0GsGT6X+K3ppTCQaOE7mLDHQnWVmzm//GsRAKc48Udd4JeXe
1XkF14LjBw47yi/8DhH0NiCTjkKbBDs8D1e2CRnLnhV4/jvvjgxF3zSlTBa52UwXkZM6QqKP
jEIPRF2+IhVkph4rqR49Fgfy5EzSOJBG+/EfmghKkY4lO4ShiOrbPFdociN7HUZ9OXYDi1y0
k8zQ1O3EJbv5dHKxilVlTH3KuBz2BIvLuD7H5CbXiMU2JIrPcFrUNd4gdFi2IBFPeUHlWoDo
IaMwzYv22iH3LGN37Fjb5nWP/uegPO0oeny3fXha799eN0f33zf3P7ZPDyxUlS4yO3OdsaGy
lRLg6y8fPnhYddNUER+Z4PmAgoKdvpydXLDE9LWC/yRY2cPrjjQOul1grhiIXTeDPe8paGWT
j8cH5pJgyCp1XephJBLZEeM3Bta+fZIW+CGUg39qZyYbPG20zYrbsixkNVFFDEJExWJ3dblY
TCw+40fTIrKlTbtOgPiMIVdsQqwbeqHQBSPld7AWNU2LBP6pMF05z9odl1XiHnOYx0etijaf
yHFd2lrO0+zRNT6VzsoXN/F8Rn5nlXI0nhh2MUgzDmg0dilCPSlepU27cp9yVTViX/1VBWMf
hIF9rya3kk+KQ3AmPBpVy6iR78c1xUS8owHc2BFbY79xKTsrnJChchozq4WvjeoE9O7HGxSI
0p27owvFfI0+/I5SaheepE7QQH7X0GnWcJYP0rzwOoRKrwP5XaQGqV6Gy50GeV8gJ7BEf3OH
YD4PGrK6OR+LM2zQFJWxkMwThiB1grwNMKpy4VUAbeawq4Ybw6qkcdDaJP6P0JofBWGw/cev
Znc8BoYhJoA4FTE3dyLY0cMsQ+F3U5Y1uRWuQHW5ptSbyjmW6zJOgYVcKxiRitd7xHsXJ5K+
UHBcYMB9Hi3o4sp3HUJclCTVqlmNzxy21nkW6WptSNgW3ZUgO1CWXvAyUsZB7D1eSQJHJFSg
Aiebv9ZvP/eYr2C/fXh7ftsdPeobl/XrZg0Hyj+bfzMdBK/VMNQ3n9xitOloHGDgZXidja5Q
oxPGOiy+RusOPS1zJ07Xt/U+bZ5Kd+8uCXdaRkyUgfCSox3h3B0xVOWGfDTtnArHYD3L9NJi
r1nAyNeXq3I6pfsythazcuL+EthhkbmubHF2h4Xj+AxjTD9m6BC6mi/caOSSsgdS4XNn6cJy
tjvjOqnLcL/MVIOpbsppwtc8f4ZS4TjBrjXGhZX+SUuDsIycxB8IStSCF0nUd4skIMEZDyLp
aRdVXsNecYJn8N66mLkHqRGQAvnGvYu1oidBX163T/sflCno2+Nm9xC6AcQmW21WzqiGUXdV
9XmQ4qpNVfPlrJsQI2cHLZxx+S+flCjyq6oqIjGdmikO385AlJqUtZMObvAzOovX9ufmj/32
0ciIOyK91/BXKRmHfhvaKqTL+gq6iIUjCydLAJWWB36Z4+fwCGgVJWQhARRbgVReB100Yd75
FZd+da3jItAlMo+cyuA+hjqCMTSOL75uRTPTaVvoR2jvr7xYdfPAdQ4CbXvjZuPmrSxVdInc
Cbc3H/zfHl6dehnNe9t7ux6Tzde3hwe8w06fdvvXt0eTXaV3CcWMoqgfiAU6TP9q4ctr4krL
lVxzsyPCW0miy6no2HA7A34D3bnVTurIxP0g73WmlHC8bU0M2phof4tZgxMMiOeWL46k87gn
8ZrXcNnRXXd2noqZgjQ2Sa8DPwqNabE2VDzHNT34tPHmJwXTHQf0RvHHZqXgsPZh/UkV9IAP
85B3DijxQIkyUZq5Ab2/tQbdlYJe2yoLlwd6LAfyhXHf6NplnurICEENxzTC7pWDbg7xdJhK
/uT4bLksPFsFmTDKFNMkDwQO9U1jMNkBkqpMoiYaklS7la6Jlzc+m+CQLs66weqyTDum30HB
KQOmdgZiM/Q79LIa9Mgyk5WrPANu5XfwPTj6u9D5rZftaHxycjJA2fntuMnKPSpySqpj0UPS
sHk689va8b2v47lKDEoViY6lE0Rl3cQ19HlGpTHCnlxLF77vP2ZSGaGn0uDz5iTA84IHE0Sk
JkAHL6Oa+zt6CLz89YRGzdg0NrRsayy6/qPcU5Q9BwB1whZId92n+v3njflcp6EyugAQHZXP
L7vjo+z5/sfbiz695uunB+cgWmC2PPTbKkux/IiDx5joVvWlTTSSxMm2+cIWFVa5Wc3bAksj
187C1OurQ3UPj3qpEN36QAONckZGb2Ia3hCJ6WF3v7C86op68KE8PDzahRTO/G9vlLA2ZHh6
KXsXAhrols8jmA0r6/3YhLbdycRhuVRqoU1u2sCHHiA9U//X7mX7REXUjo8e3/ab/27gP5v9
/Z9//smTcpY2D/CMBOuwnsSiwtxrhyI0qQ38hsFNU+E1SKNuuMHQLMo++5C7FWXy5VJjVjXI
Jlh9zSeolrUTGqOh1ENv4yEMNJEAgOYy0HY/+WByuKkNduxjNdcCySZWhuTiEAlpO5ruLHhR
WsVtFlWgUKjWtnYafpDTeVO2sClzFBszpYSyc2YO9UWq0aCkLU2j1cAyQJdaV0ftx18wZdbx
1HlMVuTrRL9gGaVNqHj36tz/sZpt7/TYApebZtEsWAQhnGaEHuKfQXoFurq2BSY5hy2rbZiD
q/tSn84ua/2hhaxv6/36CKWrezTVC7qWb/B3DxsTFepumZkP0Q7gXiUgEhtAnEXRBuSOqg0C
qD1uN9Bjv8NxBWNSNGmUhdlZYOFK3FBeS0CMQkImwYefwLwAQ0/huUxaZXdqnI6cVisngBpB
6oonW7A5upzP8AcAjgytGVZBol1XZ6dlDlIv3g3yqwHo5RyOp0zLQY2yaXwYKwJoEd86hUGK
cqE/gNdCQOmiU3MPY2egdc1lmuS2iJBvTL0BEpCrZdrM0bDkCz8GnVN2FXKArhKPBANLaXKQ
EmT3ogkaQRcS31yFH66b7RH6M9DK50+q7kbsnilkNJq00yn/dMoFRfRerr6iwUmr4UvjcMBY
U0ZDrpfcdLColMphq1VX8ncG77Mqg/8iQxiGrE8DjoXSDtnkzDMi4/WWiRz70R9RcgGwqxpr
2Pld1YJNB+0jQJawkIebK+uixCo/wZdjpu3+Sd6iWWVmJYnRw3pl1AXI5/MyXDIW0Qny7vRN
gNfDrIPQQ1fcaP3whCGCRwXw3IhiTOgB0fWtBeqJ0uuMZ0NZTAOY3WQ+XG5B5yPuoP14402z
TWMuTrAePr3ydRKSoSGkdSsZvvkGEND2DVFGlnMcLbbWY0zbZsbQ5zZ2bgPDuEU0ERwKC4/v
97v4dyjIucGuHj50/Kt4M9K9MiPtckDR9ktUBpqGOE+4zYNcpzUl/JSWDtN1Kf1XasxxzpUQ
xXCt/BLxaRlg6GzeoZuOdDg7QlPIblRUZcaXwClqow85YtiyoEcJe/0l1p2xXne4sb7Z7PYo
86HCFWNywvXDhgXoudW8dVYpY0Hxwe5C0DCTZlXE0enkxmlY2QpN9GXlZO7pwyEpVbxMKvNi
NwvQoQVw6UYSaXtADTwHdpKeuoVzX4z00qKF45NOCPg6XL+uz2h2mTRsCdEuIbeV2lMGCZOn
BeXUlliH6h/ioCS9HjvuBRMredN+H9xqE7yUDfZNhfetdZmVmNd24FHnWtebbK0mjc9ELYbH
cQ1qMfRRc3WD5rvBYdB3VTpysfYGBJC1jjFz27wERCPmt9P1mq1Lj/sU2tqk4kOE9O/QCNi2
bolEAt6QYX2oHUy2MwUe5LVUoS5rDWrO8Gg/EPcVwC2lmyV0+oF+igcKPjZNqxz0MvYKoIa9
liUdP2CrQ0eTMh4g+3DFTSbyCe3SxRG9qYM7Pw01HecJJXaT2kZt3tdcjJ+SSK8ni4oGe0AM
UgQZyZ9YEuFSb0jsAwOWTT3EuE/QWu5Yog6y5CAwU1+y/g++0+WpePoAAA==

--AhhlLboLdkugWU4S--
