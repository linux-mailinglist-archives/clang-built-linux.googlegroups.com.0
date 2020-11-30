Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCHIST7AKGQEODN3R3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id E68682C8BF9
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 19:03:58 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id t185sf7098586oif.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 10:03:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606759432; cv=pass;
        d=google.com; s=arc-20160816;
        b=pWXZ5ynh0KqZ3Sm9F0X9Lu6FVa1vFNbwbUAw0/8YjExD328iU8NTCJ+rZSrxybXYvc
         b5i9EvfIdmpY+Y7cYzvXVaWjWGcPczub+gK93sw7wLuPrx+Hvpyye154U8J7voC43ZN/
         lLSzmFDkHh0BhSS5ckPAVtQumgmmM5G11LP4b6M6L67cLcyYh470h/S8wmSYAEN+e/nA
         OM5/X9s/yGW9GXxz7CdRDwv+0KUI7VMs5LAdANPet4KcK+jI+ZNomAX21txk5Uy0Cepw
         p6AktkE+Wo9OqE2Xt9Nr/paeVbHHUnl2GHZEKMOCLtt0FAjTpaHJqqiII2/VIlrjWItO
         OIwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4LIz7ftAyz9eFEwZ2rUdzhc6H7lNXxMfTSKsAzDuRZc=;
        b=g6EHs8scsOgS+YHKQUnEmlGTfAorWWfJdBwvoXwFnDkbbzaW+/RigIlX2LcP37Awng
         YP/8IxaqIxvLlxZm1GVS/if5mAE1YBkiCdjrLEvsYc0kXyO6AQCwVeVExizH77NrfGdN
         7djhRjltT7y3aDaTsnoUYhA/EcaXbDBgHf0P5DlMSFxaSNw/s69x8ciXAuxihc011k+R
         RhVZFTdLbDdnh+M9mH6/HE9ukCYyRwLD8x3XMNHVRQLRR2rDKb0Isn2mO5lMCXZiG7Dd
         Bn9j7KAPcVLJQcrqLLAwOEX8+gAkp2FKDvwtGKAUVTdy/hmhePbIM60F2KEv7qJmUwdG
         YneQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="WJN/cBII";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4LIz7ftAyz9eFEwZ2rUdzhc6H7lNXxMfTSKsAzDuRZc=;
        b=VgXBR1+E0iZX0GJzSZ43H+CLVra0joZluuJsj0i/4Mf7GQRXX9T5/vTukUzp967DkJ
         fKIYb7tC7f5FQywgdR7R3BDRIP47UENH+h2sm5vD5knK9NiQtCO5HAwhTQhthwiZNePg
         lUi8jGjBtnQa4UMeosuhvajAC6UZaCG9j29cG4ICG7h/XSkidBTjQZ93cHZsJRh8fn5P
         Ca0fkleyKQn5avSdbjjKSkvYaT12okIDY0vDSuLjwIo0XbyxwhRWpG22KDup/4zRKBWj
         17aGUpqV3eG42uFVQEh8aTO+0lSlWck4Q2GPYeAMBslZn1Hooh43o05+0zYWm8NZjXZv
         8OCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4LIz7ftAyz9eFEwZ2rUdzhc6H7lNXxMfTSKsAzDuRZc=;
        b=RC7Grum8B6VThT0SdEQfPUmG3fMy+lhLl83bmLPe0SOyQOp33LHNp/CcllmBocfVsF
         zO5N/AR0CL2+MNE0J1atcNnTLjKz1Pewl5PwaRYbO4hvmkBCZgb7NlObYZKjvDIDx5h/
         xSbY/NNHPgt18m1Ttq8UEjXwk4m6AhZrrF+TZyey9FpLceEGqO1c4csvEmxe5Andnm7E
         pM+FlLA432gNkxw6kgFHFAVZhn7xApmPJgn0DUB8UFIurGqu5rtgfqwhH3A/o/abJ6f2
         AuYqbPgtTigQpb7uok+2D9cMIuIG3pgvc35xolgQANNuFjpvRHttYEndjLsHyBISLOm7
         qLiw==
X-Gm-Message-State: AOAM533rBcVknKa64ePlO8rVvfPiXgj29wUo3G00ABkptz6OXb6uV1JG
	fO/zpkuDKCiEKF6LNBiIydo=
X-Google-Smtp-Source: ABdhPJyfa9HToCozeys/nUjmD19FDqzCBWDjG6RJnWmtTLI9rnlXUWcqi9fm7toU8tdZvdvLICik0g==
X-Received: by 2002:a4a:c102:: with SMTP id s2mr16465665oop.60.1606759432600;
        Mon, 30 Nov 2020 10:03:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4fd0:: with SMTP id d199ls3118647oib.5.gmail; Mon, 30
 Nov 2020 10:03:52 -0800 (PST)
X-Received: by 2002:aca:56c2:: with SMTP id k185mr15476862oib.83.1606759431853;
        Mon, 30 Nov 2020 10:03:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606759431; cv=none;
        d=google.com; s=arc-20160816;
        b=wtWtLuHiwAx/0rV6W6b4GgcyWA1RbRO5DQdpZiM6QOYqS7s4MdGuD8sQsZiYwwHFfE
         ppSK7SNk+sRp5mjTvMIpCckzaC3lUvRkmp9IvB9L4dA0sdLW3kVoHF4TCYkGUWa+o064
         EHnf3iur9bpInaIymG8wKlZeppb7KG6uBfGW71oe5dJSAf+Z5RYH7FIqDWSvsG+/Y64I
         kiPigb6K8//oUpkIyGCthWf/tW5ubR8A22Ktm3r6qasiAayt9Olw+ix+Qs5r17qsOcBs
         0Orj651zpcF0uZZVHkBi577JLXFVvHm2ExxHitgeSyoxezB0ZTzdkFnXl4LFwANPgss3
         MaCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q4aiUo+R2FBXYOJi5Lz6koIizaWvK7CXEvnPP0gtkHY=;
        b=cqkGCxStEl4+MNWmAUS5pFRaMJMR7pRXAoB5fDe+8ckCJ3An7qQ5E427J3lFtDl7iS
         nhq8yVQ+J/coxuMJt3yOetfgioO0uq/nCwU17SFI9LvRfYPKT4pjf4d6YM4TDIrO7M5p
         yuA0IJfEAOMSgZSYBCYJSYGD/OjpGwFZYTePpMCcCTtE9Z4pASNffLWp201pAfc511/s
         vwBSIg4+U/95HyUTg3LvWexW/HITiJucbprPVdlNYnJCPv/95bfTpa2PYGtnYu0qr5G2
         4N2jOFvRNAzHErwVFbLOd5qr2+X1h69AILuXdzc3Kmhe/Jq7vZNFbCH4nqt8XyIViQ1v
         3ISA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="WJN/cBII";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id l6si964635oig.3.2020.11.30.10.03.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 10:03:51 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id l23so61213pjg.1
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 10:03:51 -0800 (PST)
X-Received: by 2002:a17:90a:2e8c:: with SMTP id r12mr27529821pjd.101.1606759430885;
 Mon, 30 Nov 2020 10:03:50 -0800 (PST)
MIME-Version: 1.0
References: <20201127164131.2244124-18-daniel.vetter@ffwll.ch>
 <202011280356.rPWHFNW4-lkp@intel.com> <20201130142820.GN401619@phenom.ffwll.local>
In-Reply-To: <20201130142820.GN401619@phenom.ffwll.local>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Nov 2020 10:03:40 -0800
Message-ID: <CAKwvOdnSrsnTgPEuQJyaOTSkTP2dR9208Y66HQG_h1e2LKfqtw@mail.gmail.com>
Subject: Re: [PATCH v7 17/17] mm: add mmu_notifier argument to follow_pfn
To: Vasily Gorbik <gor@linux.ibm.com>, linux-s390 <linux-s390@vger.kernel.org>, 
	Heiko Carstens <hca@linux.ibm.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, 
	DRI Development <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, 
	kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kvm <kvm@vger.kernel.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-samsung-soc@vger.kernel.org, linux-media@vger.kernel.org, 
	Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="WJN/cBII";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Nov 30, 2020 at 6:28 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> So I guess kvm platforms that don't set KVM_ARCH_WANT_MMU_NOTIFIER exist,
> and at least on powerpc they're consistent with KVM_CAP_SYNC_MMU
> signalling that the guest pagetables stays in sync automatically with any
> updates. So for that case I guess we could use unsafe_follow_pfn.
>
> But on s390 this seems different: No mmu notifier, but KVM_CAP_SYNC_MMU is
> set. So I guess there's some hardware magic on s390 that I don't know
> about.

+ Vasily + Heiko +s390

>
> Not sure what to do with this now here ...
> -Daniel
>
>
> On Sat, Nov 28, 2020 at 03:10:40AM +0800, kernel test robot wrote:
> > Hi Daniel,
> >
> > I love your patch! Yet something to improve:
> >
> > [auto build test ERROR on linuxtv-media/master]
> > [also build test ERROR on char-misc/char-misc-testing v5.10-rc5]
> > [cannot apply to hnaz-linux-mm/master next-20201127]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use '--base' as documented in
> > https://git-scm.com/docs/git-format-patch]
> >
> > url:    https://github.com/0day-ci/linux/commits/Daniel-Vetter/follow_pfn-and-other-iomap-races/20201128-004421
> > base:   git://linuxtv.org/media_tree.git master
> > config: s390-randconfig-r032-20201127 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project f095ac11a9550530a4a54298debb8b04b36422be)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install s390 cross compiling tool for clang build
> >         # apt-get install binutils-s390x-linux-gnu
> >         # https://github.com/0day-ci/linux/commit/d76a3489433ce67d45da86aa12953385427f0ac9
> >         git remote add linux-review https://github.com/0day-ci/linux
> >         git fetch --no-tags linux-review Daniel-Vetter/follow_pfn-and-other-iomap-races/20201128-004421
> >         git checkout d76a3489433ce67d45da86aa12953385427f0ac9
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    In file included from arch/s390/include/asm/kvm_para.h:25:
> >    In file included from arch/s390/include/asm/diag.h:12:
> >    In file included from include/linux/if_ether.h:19:
> >    In file included from include/linux/skbuff.h:31:
> >    In file included from include/linux/dma-mapping.h:10:
> >    In file included from include/linux/scatterlist.h:9:
> >    In file included from arch/s390/include/asm/io.h:80:
> >    include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
> >                                                            ~~~~~~~~~~ ^
> >    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
> >    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
> >                                                              ^
> >    include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
> >            ___constant_swab32(x) :                 \
> >                               ^
> >    include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
> >            (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
> >                      ^
> >    In file included from arch/s390/kvm/../../../virt/kvm/kvm_main.c:18:
> >    In file included from include/linux/kvm_host.h:32:
> >    In file included from include/linux/kvm_para.h:5:
> >    In file included from include/uapi/linux/kvm_para.h:36:
> >    In file included from arch/s390/include/asm/kvm_para.h:25:
> >    In file included from arch/s390/include/asm/diag.h:12:
> >    In file included from include/linux/if_ether.h:19:
> >    In file included from include/linux/skbuff.h:31:
> >    In file included from include/linux/dma-mapping.h:10:
> >    In file included from include/linux/scatterlist.h:9:
> >    In file included from arch/s390/include/asm/io.h:80:
> >    include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
> >                                                            ~~~~~~~~~~ ^
> >    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
> >    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
> >                                                              ^
> >    include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
> >            ___constant_swab32(x) :                 \
> >                               ^
> >    include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
> >            (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
> >                      ^
> >    In file included from arch/s390/kvm/../../../virt/kvm/kvm_main.c:18:
> >    In file included from include/linux/kvm_host.h:32:
> >    In file included from include/linux/kvm_para.h:5:
> >    In file included from include/uapi/linux/kvm_para.h:36:
> >    In file included from arch/s390/include/asm/kvm_para.h:25:
> >    In file included from arch/s390/include/asm/diag.h:12:
> >    In file included from include/linux/if_ether.h:19:
> >    In file included from include/linux/skbuff.h:31:
> >    In file included from include/linux/dma-mapping.h:10:
> >    In file included from include/linux/scatterlist.h:9:
> >    In file included from arch/s390/include/asm/io.h:80:
> >    include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
> >                                                            ~~~~~~~~~~ ^
> >    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
> >    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
> >                                                              ^
> >    include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
> >            __fswab32(x))
> >                      ^
> >    In file included from arch/s390/kvm/../../../virt/kvm/kvm_main.c:18:
> >    In file included from include/linux/kvm_host.h:32:
> >    In file included from include/linux/kvm_para.h:5:
> >    In file included from include/uapi/linux/kvm_para.h:36:
> >    In file included from arch/s390/include/asm/kvm_para.h:25:
> >    In file included from arch/s390/include/asm/diag.h:12:
> >    In file included from include/linux/if_ether.h:19:
> >    In file included from include/linux/skbuff.h:31:
> >    In file included from include/linux/dma-mapping.h:10:
> >    In file included from include/linux/scatterlist.h:9:
> >    In file included from arch/s390/include/asm/io.h:80:
> >    include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            __raw_writeb(value, PCI_IOBASE + addr);
> >                                ~~~~~~~~~~ ^
> >    include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
> >                                                          ~~~~~~~~~~ ^
> >    include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
> >                                                          ~~~~~~~~~~ ^
> >    include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            readsb(PCI_IOBASE + addr, buffer, count);
> >                   ~~~~~~~~~~ ^
> >    include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            readsw(PCI_IOBASE + addr, buffer, count);
> >                   ~~~~~~~~~~ ^
> >    include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            readsl(PCI_IOBASE + addr, buffer, count);
> >                   ~~~~~~~~~~ ^
> >    include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            writesb(PCI_IOBASE + addr, buffer, count);
> >                    ~~~~~~~~~~ ^
> >    include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            writesw(PCI_IOBASE + addr, buffer, count);
> >                    ~~~~~~~~~~ ^
> >    include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
> >            writesl(PCI_IOBASE + addr, buffer, count);
> >                    ~~~~~~~~~~ ^
> > >> arch/s390/kvm/../../../virt/kvm/kvm_main.c:1894:40: error: no member named 'mmu_notifier' in 'struct kvm'
> >            r = follow_pfn(vma, addr, &pfn, &kvm->mmu_notifier);
> >                                             ~~~  ^
> >    arch/s390/kvm/../../../virt/kvm/kvm_main.c:1909:41: error: no member named 'mmu_notifier' in 'struct kvm'
> >                    r = follow_pfn(vma, addr, &pfn, &kvm->mmu_notifier);
> >                                                     ~~~  ^
> >    20 warnings and 2 errors generated.
> >
> > vim +1894 arch/s390/kvm/../../../virt/kvm/kvm_main.c
> >
> >   1885
> >   1886        static int hva_to_pfn_remapped(struct kvm *kvm, struct vm_area_struct *vma,
> >   1887                                       unsigned long addr, bool *async,
> >   1888                                       bool write_fault, bool *writable,
> >   1889                                       kvm_pfn_t *p_pfn)
> >   1890        {
> >   1891                unsigned long pfn;
> >   1892                int r;
> >   1893
> > > 1894                r = follow_pfn(vma, addr, &pfn, &kvm->mmu_notifier);
> >   1895                if (r) {
> >   1896                        /*
> >   1897                         * get_user_pages fails for VM_IO and VM_PFNMAP vmas and does
> >   1898                         * not call the fault handler, so do it here.
> >   1899                         */
> >   1900                        bool unlocked = false;
> >   1901                        r = fixup_user_fault(current->mm, addr,
> >   1902                                             (write_fault ? FAULT_FLAG_WRITE : 0),
> >   1903                                             &unlocked);
> >   1904                        if (unlocked)
> >   1905                                return -EAGAIN;
> >   1906                        if (r)
> >   1907                                return r;
> >   1908
> >   1909                        r = follow_pfn(vma, addr, &pfn, &kvm->mmu_notifier);
> >   1910                        if (r)
> >   1911                                return r;
> >   1912
> >   1913                }
> >   1914
> >   1915                if (writable)
> >   1916                        *writable = true;
> >   1917
> >   1918                /*
> >   1919                 * Get a reference here because callers of *hva_to_pfn* and
> >   1920                 * *gfn_to_pfn* ultimately call kvm_release_pfn_clean on the
> >   1921                 * returned pfn.  This is only needed if the VMA has VM_MIXEDMAP
> >   1922                 * set, but the kvm_get_pfn/kvm_release_pfn_clean pair will
> >   1923                 * simply do nothing for reserved pfns.
> >   1924                 *
> >   1925                 * Whoever called remap_pfn_range is also going to call e.g.
> >   1926                 * unmap_mapping_range before the underlying pages are freed,
> >   1927                 * causing a call to our MMU notifier.
> >   1928                 */
> >   1929                kvm_get_pfn(pfn);
> >   1930
> >   1931                *p_pfn = pfn;
> >   1932                return 0;
> >   1933        }
> >   1934
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
>
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201130142820.GN401619%40phenom.ffwll.local.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnSrsnTgPEuQJyaOTSkTP2dR9208Y66HQG_h1e2LKfqtw%40mail.gmail.com.
