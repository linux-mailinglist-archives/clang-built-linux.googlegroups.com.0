Return-Path: <clang-built-linux+bncBCTZFA6ZZMMRBIUA6CCAMGQEKWIRQJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F8637C76D
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 18:19:47 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id h1-20020ab02a810000b02901f5ea248613sf3218588uar.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 09:19:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620836387; cv=pass;
        d=google.com; s=arc-20160816;
        b=t+dTV9vc/CB7bw4vSl99BQ6pJyaqWB4df6hakxaEVQilim3XMirB8QMB5U5VLGu+9O
         8e/ng0fhKt7mu7F8PLYt+pN5s+bHYhVspzymaKKFDiBRNc8jOflPghSXlsos2mY8+SRG
         hkebVB4XTaPFkF3b0yi6+iuOupwR1CiTarnjZB0mSIFoFpEfwjhSqJzvMo/7ZZ9ShoJV
         jO3p8kuzStQmTPt66SLrjmBqYHzxJJ/zQBXHlZpPjQ/ql7hYzlWlHUhetRV0rZd/R2NP
         GZQYK9nVYk7n74nFc3Ijh43R0gLkw35mQpPvybYZbAnr9+ba+ZP1YZchp7bDMHkdTrHK
         ltYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0kAxYAffpoqi+PEZbvPGlkoqyTy3gwBtX4qy50VB/r8=;
        b=qFI/pJJd/li3TDmPj4bPjrQ64jAxMDldOD0sXV6n0B0HL11pvFw47BdMpwPSM2vN4Z
         kTBRODfJI1LVghODOSFv0ttr/Ukc79DgzghiaPB0JS3F1WbvLuFVVhm/a50VAzWWwWhs
         9W5MfvvM7hdJDc/IthrynmoHCywtiChld1bbUqs96uHmFmOMVp5WybOvMls7rGfiWCvN
         757ZQU188STygmSITJGOuYNF322/Zc+9pAcydldcbF16DgcgXA4lxJ6r4KK5b3jEVcBa
         1pBhstn2rwjVuNurQSmpHcwUDvIEwQfEvRqV7HUQFZ80K/5GTX300BsjrM5sB2+EFzhJ
         tifA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kTuOdwpp;
       spf=pass (google.com: domain of axelrasmussen@google.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=axelrasmussen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0kAxYAffpoqi+PEZbvPGlkoqyTy3gwBtX4qy50VB/r8=;
        b=UN5EGf8dhwgfUfIMddr21HfibhX53NLezRo/YbDR2huxU482fu+eLYbN7cgRWGaH4+
         w6gHMSjbmRuX3JfugLSRig0PPq7QWnrCcjjevs8P4Je6Bhh5TilTtGImsY+KwCWYWsYu
         1zXQNw33IaliUrTO3ETbr0P1oGRqJzMqqA1a+BfM0kDrMt6LqdN57FUgf84no8rQVKjw
         OmT+sjJQpnr1kDwC6LXgxbKN6mUWj7vwkJkhizBbfVjUn8SWxfi0AzFgPgHhBRaUaN1S
         lyE+AnBcVsvcQQpJMzrOzMSxl8nxelSwqH9IL8DnVWzmjH4aqWtBCTZCBRTRKuH3TJsb
         WZLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0kAxYAffpoqi+PEZbvPGlkoqyTy3gwBtX4qy50VB/r8=;
        b=KIm3/xqqQPFeRpfH9lHB+T+TNptxCODGBR2oPEF+2j5Nb9XfBUz9O845LlWeWQY+aE
         RZGtEeMz2Kz/NW/EeXs5Lf4ITZ9Vnf3eOZgJwWG47ZzbQnq0Sc7lb1yBy9oE8mvnt4YN
         lU7BoqEL9VzFs7PJrz1lFSORu099BwVYajYoAOhwHdVJ/7+mRasQezdNZvoydcvCo4iJ
         UWEzeB8/6ssOVYjNU+NQHnv2YgAZiGN6JZvqrzAkWqw2VK3w9ZEM9A5rfsYrVPIJ/MwO
         NQ3/X0EfIJJgzWIdOT2LvMVu5o/nUGaP3iOE9mMEI4aVjsqoph9guEKWii4rrXNRafIa
         4HDA==
X-Gm-Message-State: AOAM531F6mZQOA15fs95SjT3w3b7UJ8jBvoi1v+j388MSJCENeURFT7I
	VaURRWpWTKnWkiDaBNtI0cA=
X-Google-Smtp-Source: ABdhPJyXF7syi02fuMgp/FlP7V1Kcvc7Wqtc5D/BFyjvkEfMjmn9qsOp4GWQDUe+gXdhqLcOnyjGMA==
X-Received: by 2002:a67:fd01:: with SMTP id f1mr14648378vsr.45.1620836386805;
        Wed, 12 May 2021 09:19:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:98:: with SMTP id t24ls730141vsp.3.gmail; Wed, 12
 May 2021 09:19:46 -0700 (PDT)
X-Received: by 2002:a67:f754:: with SMTP id w20mr29240812vso.54.1620836386192;
        Wed, 12 May 2021 09:19:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620836386; cv=none;
        d=google.com; s=arc-20160816;
        b=gTw2vxCsAo7TK+Ljz+3syvyW4/ZLs+tGP8hPt8w3XZh5pfNBQ5r4JricNsuT3hBgyO
         tZP55DKq864GE28IYEeaiQVuMNK2Z38qZwdQdQi1JZkWl87J/wrm8bI+VAJ0VaJJI/53
         hhDTMTw33QQAB16rOG7aLzxWoGFFZebm7Zo4EuJacF5FynEu8VfpzZesF895VcYdldeo
         zAGrPRvcDiMTKASsSiC7phURwPRI7oQEBOx7hUkTjl4dGhsROSTBAncJK8Qwid8Ktzb7
         smKYNov6tQSbtPYCS9KXe1BO2zV4XBPl3QqYhZupteZ99o4IbdemExF/z/X5c0pM2cW+
         mGpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZEGh4Ta48WPm6GEyyNecSufYvgNHvOStlAYh8KcAcgM=;
        b=wvuWFMGCO4iRXliOxFtbp60DRLmOymJmCK7fR8g4w2UKpzcdG5GwyrKvsvI3pBpsGS
         OeY8ffIP79fPLVAy0cFGOk9lJGbdOEfubq1ZN85fFspc4IzcsiY+KNIsHva2tu93uwKi
         4NZ1UhPtgvm1iIzcpN6t7//hsq4XVDjtpTgkLVnp3Qm/eTNTnww06KTF5FM1QYKDC0+n
         +rnQbJ30JNoYCIoRVlGSdpSrLB7h858YbDFUqbfHtKIA5sxFfwWQIJJ/lnPcnaOq/1JP
         sMO6DLmYRSOH2fLKgt3nDDQNeMa1Npe7fEKzwlHr3itz6fsCHm9NlSYmSDXvV4/dU4xS
         P+gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kTuOdwpp;
       spf=pass (google.com: domain of axelrasmussen@google.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=axelrasmussen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id s70si11881vkb.3.2021.05.12.09.19.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 May 2021 09:19:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of axelrasmussen@google.com designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id a11so22208583ioo.0
        for <clang-built-linux@googlegroups.com>; Wed, 12 May 2021 09:19:46 -0700 (PDT)
X-Received: by 2002:a6b:b409:: with SMTP id d9mr26146135iof.57.1620836385345;
 Wed, 12 May 2021 09:19:45 -0700 (PDT)
MIME-Version: 1.0
References: <202105122224.mJzg3ncL-lkp@intel.com>
In-Reply-To: <202105122224.mJzg3ncL-lkp@intel.com>
From: "'Axel Rasmussen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 May 2021 09:19:10 -0700
Message-ID: <CAJHvVcgMpveuO0VEM4Vr2op5m0Oso3ghW4f0HuFL7DgbZ8HcqA@mail.gmail.com>
Subject: Re: [linux-next:master 2078/2633] include/linux/hugetlb.h:340:30:
 error: variable has incomplete type 'enum mcopy_atomic_mode'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Peter Xu <peterx@redhat.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Hugh Dickins <hughd@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: axelrasmussen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kTuOdwpp;       spf=pass
 (google.com: domain of axelrasmussen@google.com designates
 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=axelrasmussen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Axel Rasmussen <axelrasmussen@google.com>
Reply-To: Axel Rasmussen <axelrasmussen@google.com>
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

Andrew, the straightforward fix is just to drop this commit, which is
currently in the mm tree (not in v5.13-rc1):

09ff184a3eb1c9 userfaultfd/hugetlbfs: avoid including userfaultfd_k.h
in hugetlb.h

(Happy to send a revert patch, but I suspect it's easier for you to
drop than to revert + squash later?)

Adding Hugh as well, since he suggested this cleanup and might prefer
doing something else instead.

On Wed, May 12, 2021 at 7:45 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   ec85c95b0c90a17413901b018e8ade7b9eae7cad
> commit: 09ff184a3eb1c9cb42f64325ca4a51e36206f4f5 [2078/2633] userfaultfd/hugetlbfs: avoid including userfaultfd_k.h in hugetlb.h
> config: s390-randconfig-r023-20210512 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a0fed635fe1701470062495a6ffee1c608f3f1bc)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=09ff184a3eb1c9cb42f64325ca4a51e36206f4f5
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 09ff184a3eb1c9cb42f64325ca4a51e36206f4f5
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=s390
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    In file included from arch/s390/mm/fault.c:33:
> >> include/linux/hugetlb.h:340:30: error: variable has incomplete type 'enum mcopy_atomic_mode'
>                                                    enum mcopy_atomic_mode mode,
>                                                                           ^
>    include/linux/hugetlb.h:18:6: note: forward declaration of 'enum mcopy_atomic_mode'
>    enum mcopy_atomic_mode;
>         ^
>    In file included from arch/s390/mm/fault.c:35:
>    In file included from arch/s390/include/asm/diag.h:12:
>    In file included from include/linux/if_ether.h:19:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:75:
>    include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __raw_readb(PCI_IOBASE + addr);
>                              ~~~~~~~~~~ ^
>    include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
>                                                            ~~~~~~~~~~ ^
>    include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
>    #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
>                                                              ^
>    include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
>    #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
>                                                         ^
>    In file included from arch/s390/mm/fault.c:35:
>    In file included from arch/s390/include/asm/diag.h:12:
>    In file included from include/linux/if_ether.h:19:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:75:
>    include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
>                                                            ~~~~~~~~~~ ^
>    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
>    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
>                                                              ^
>    include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
>    #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
>                                                         ^
>    In file included from arch/s390/mm/fault.c:35:
>    In file included from arch/s390/include/asm/diag.h:12:
>    In file included from include/linux/if_ether.h:19:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:75:
>    include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writeb(value, PCI_IOBASE + addr);
>                                ~~~~~~~~~~ ^
>    include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
>                                                          ~~~~~~~~~~ ^
>    include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
>                                                          ~~~~~~~~~~ ^
>    include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsb(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsw(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsl(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesb(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesw(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesl(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    12 warnings and 1 error generated.
> --
>    In file included from arch/s390/mm/vmem.c:8:
>    In file included from include/linux/memblock.h:14:
>    In file included from arch/s390/include/asm/dma.h:5:
>    In file included from arch/s390/include/asm/io.h:75:
>    include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __raw_readb(PCI_IOBASE + addr);
>                              ~~~~~~~~~~ ^
>    include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
>                                                            ~~~~~~~~~~ ^
>    include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
>    #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
>                                                              ^
>    include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
>    #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
>                                                         ^
>    In file included from arch/s390/mm/vmem.c:8:
>    In file included from include/linux/memblock.h:14:
>    In file included from arch/s390/include/asm/dma.h:5:
>    In file included from arch/s390/include/asm/io.h:75:
>    include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
>                                                            ~~~~~~~~~~ ^
>    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
>    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
>                                                              ^
>    include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
>    #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
>                                                         ^
>    In file included from arch/s390/mm/vmem.c:8:
>    In file included from include/linux/memblock.h:14:
>    In file included from arch/s390/include/asm/dma.h:5:
>    In file included from arch/s390/include/asm/io.h:75:
>    include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writeb(value, PCI_IOBASE + addr);
>                                ~~~~~~~~~~ ^
>    include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
>                                                          ~~~~~~~~~~ ^
>    include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
>                                                          ~~~~~~~~~~ ^
>    include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsb(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsw(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsl(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesb(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesw(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesl(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    In file included from arch/s390/mm/vmem.c:13:
> >> include/linux/hugetlb.h:340:30: error: variable has incomplete type 'enum mcopy_atomic_mode'
>                                                    enum mcopy_atomic_mode mode,
>                                                                           ^
>    include/linux/hugetlb.h:18:6: note: forward declaration of 'enum mcopy_atomic_mode'
>    enum mcopy_atomic_mode;
>         ^
>    arch/s390/mm/vmem.c:521:6: warning: no previous prototype for function 'vmemmap_free' [-Wmissing-prototypes]
>    void vmemmap_free(unsigned long start, unsigned long end,
>         ^
>    arch/s390/mm/vmem.c:521:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    void vmemmap_free(unsigned long start, unsigned long end,
>    ^
>    static
>    13 warnings and 1 error generated.
> --
>    In file included from arch/s390/mm/pageattr.c:6:
> >> include/linux/hugetlb.h:340:30: error: variable has incomplete type 'enum mcopy_atomic_mode'
>                                                    enum mcopy_atomic_mode mode,
>                                                                           ^
>    include/linux/hugetlb.h:18:6: note: forward declaration of 'enum mcopy_atomic_mode'
>    enum mcopy_atomic_mode;
>         ^
>    1 error generated.
> --
>    In file included from arch/s390/kernel/setup.c:25:
>    In file included from include/linux/memblock.h:14:
>    In file included from arch/s390/include/asm/dma.h:5:
>    In file included from arch/s390/include/asm/io.h:75:
>    include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __raw_readb(PCI_IOBASE + addr);
>                              ~~~~~~~~~~ ^
>    include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
>                                                            ~~~~~~~~~~ ^
>    include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
>    #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
>                                                              ^
>    include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
>    #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
>                                                         ^
>    In file included from arch/s390/kernel/setup.c:25:
>    In file included from include/linux/memblock.h:14:
>    In file included from arch/s390/include/asm/dma.h:5:
>    In file included from arch/s390/include/asm/io.h:75:
>    include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
>                                                            ~~~~~~~~~~ ^
>    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
>    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
>                                                              ^
>    include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
>    #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
>                                                         ^
>    In file included from arch/s390/kernel/setup.c:25:
>    In file included from include/linux/memblock.h:14:
>    In file included from arch/s390/include/asm/dma.h:5:
>    In file included from arch/s390/include/asm/io.h:75:
>    include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writeb(value, PCI_IOBASE + addr);
>                                ~~~~~~~~~~ ^
>    include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
>                                                          ~~~~~~~~~~ ^
>    include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
>                                                          ~~~~~~~~~~ ^
>    include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsb(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsw(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsl(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesb(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesw(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesl(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    In file included from arch/s390/kernel/setup.c:52:
> >> include/linux/hugetlb.h:340:30: error: variable has incomplete type 'enum mcopy_atomic_mode'
>                                                    enum mcopy_atomic_mode mode,
>                                                                           ^
>    include/linux/hugetlb.h:18:6: note: forward declaration of 'enum mcopy_atomic_mode'
>    enum mcopy_atomic_mode;
>         ^
>    12 warnings and 1 error generated.
>
>
> vim +340 include/linux/hugetlb.h
>
> 1f9dccb25b8fb4 Mike Kravetz   2019-11-30  333
> 714c189108244f Axel Rasmussen 2021-05-04  334  #ifdef CONFIG_USERFAULTFD
> 1f9dccb25b8fb4 Mike Kravetz   2019-11-30  335  static inline int hugetlb_mcopy_atomic_pte(struct mm_struct *dst_mm,
> 1f9dccb25b8fb4 Mike Kravetz   2019-11-30  336                                           pte_t *dst_pte,
> 1f9dccb25b8fb4 Mike Kravetz   2019-11-30  337                                           struct vm_area_struct *dst_vma,
> 1f9dccb25b8fb4 Mike Kravetz   2019-11-30  338                                           unsigned long dst_addr,
> 1f9dccb25b8fb4 Mike Kravetz   2019-11-30  339                                           unsigned long src_addr,
> f619147104c8ea Axel Rasmussen 2021-05-04 @340                                           enum mcopy_atomic_mode mode,
> 1f9dccb25b8fb4 Mike Kravetz   2019-11-30  341                                           struct page **pagep)
> 1f9dccb25b8fb4 Mike Kravetz   2019-11-30  342  {
> 1f9dccb25b8fb4 Mike Kravetz   2019-11-30  343   BUG();
> 1f9dccb25b8fb4 Mike Kravetz   2019-11-30  344   return 0;
> 1f9dccb25b8fb4 Mike Kravetz   2019-11-30  345  }
> 714c189108244f Axel Rasmussen 2021-05-04  346  #endif /* CONFIG_USERFAULTFD */
> 1f9dccb25b8fb4 Mike Kravetz   2019-11-30  347
>
> :::::: The code at line 340 was first introduced by commit
> :::::: f619147104c8ea71e120e4936d2b68ec11a1e527 userfaultfd: add UFFDIO_CONTINUE ioctl
>
> :::::: TO: Axel Rasmussen <axelrasmussen@google.com>
> :::::: CC: Linus Torvalds <torvalds@linux-foundation.org>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJHvVcgMpveuO0VEM4Vr2op5m0Oso3ghW4f0HuFL7DgbZ8HcqA%40mail.gmail.com.
