Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3WVRL5QKGQE2CD7DGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3EA26CFDA
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 02:16:47 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id w126sf157046vkb.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 17:16:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600301806; cv=pass;
        d=google.com; s=arc-20160816;
        b=zL8HJAVebr6QvT8Ul+e8+lvGxE/GcBLNCLE9mBDcHSOd9zNdZP7DtWMZwLBusUfj7Q
         EajXjSmYeQ9UAOdX84ugDUKpArMVGoab1XN+duvc7MUiCiGdXAPC47vMZKv1ZPPyBda1
         euHnetgCXs8JcOBwafLX3ue7l5qY8fLs0V+pzgixuYM9N4r4fFzMutv9DIeZhJhxseow
         ksIAlJehZ6TNb5eg6YRu/KLso5Nb1U4pgvxu4vLEMR9crilRXiuFAXZ8lsH1+S+35y9i
         plgCoGJq9lVs3Ph21Lc4+iT07N6zrliNIgM1oYKi/HHcsEDrYJK8BB8kdciryxPEZ2vY
         9/Kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HcGcaKqZJ8cID5h8nul39JfZMTfoWI7Z0Hmq61kq16Q=;
        b=XsMy1PUmlgEQFQ8+sE8j4aVVzl3jYs8/yINhVmA+/vaIoh7o5yTmqq5us5lXSnqNlf
         7TjHcGxhj0QPZvGClSiW8N6c0Jc/v/ATtktYLNPNEDjkORZqjQuWz+int3y3moDdV8yE
         Le41GPtAMhkI/dDix7XkwNn97YeHp50/+0HHof7uHJZf+OnIplKCa1uzB/DNJ6wHTe43
         XmmhbjVh/grKOzWo89HgptJt4mU+hA4Pysi4fHnJzH4HFj8M0lqP889h1n7Yl7BauNXv
         woJUwKtUSqM0a/mc5VQ9jWk+iY4dDx/hEEzWsjfK/QJtF/ESY6OSh2ywBR41wSDYH16L
         cdgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KF608qK6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HcGcaKqZJ8cID5h8nul39JfZMTfoWI7Z0Hmq61kq16Q=;
        b=WJWZE5IxXzCP4K3e74KdnJlZ2llTSCcEKpS52fWBVb4kKU37Gy4G2LFA/oyUHwCbiE
         DikulSkmaZbT7vyeaoXFTgXf81ukaUKHI4mtEio+i0dA0Rd54L7jPH+cWUs2qVTtX/tz
         urcxAJyWjTAncy82xgzEdrIFgWPnZDKzeEQAPW340+q5XiZBM7yz0cv42jNO3wlRH9Xw
         8aPEKZ/zcPZDjPltqVhsLGQhdGXfSZapzqkMHciDrYYoP8OUyR3etUo0kwREu3B/7NMc
         IIM/b+i8hkzJlON5sMy0dbwuPlPbrYx4i6eGIf9MWNMH3qn7y5QVjMG6kwgy70Wl4ejm
         H6sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HcGcaKqZJ8cID5h8nul39JfZMTfoWI7Z0Hmq61kq16Q=;
        b=spYJD/cYQNVOk8BxqUtxo+Te09ufc/ZNd/nrCObTWmMOeLQ2NmzXphHjsypaYtRkc9
         voApyOxUKT3vDhJgm/xN150rU8+zFOKVmcp6tq5CeHTj35+XaF5k4IyP1tZcHaikRzWy
         1Lqjp3/20LKKXuJez09pdpHVuqdnuqgokzaDTUAUlJmaAyIY3Y+ZrMev5zn4qowfF4TR
         ylyIKUOHguc24lYjWALT3CP3nQ3TjYE6yXJsvZjqLqjvXTi0p8vERJUleTYMp/6l+O4C
         A6gTzF5ute5wW8meiEO7u2j/ReIHJ6hkB3UbbPsYQeycWEsrXC1EW7sb5DY9MRXVHUbQ
         wa3A==
X-Gm-Message-State: AOAM531A8V2svDRPuWgQaCTFGP+Z8e9bDKs4PJV+yvI6g6Gxy2zr38GU
	yO9MWpDWrH/hJB/5NOcmcyo=
X-Google-Smtp-Source: ABdhPJx6kxX1IG4gZm/CE5fXH6I97U9xEvyv12sD2jjULG13U8gcMHO21m1sD4VRDFJ2BFbarinjIw==
X-Received: by 2002:a67:68d2:: with SMTP id d201mr6806367vsc.41.1600301806708;
        Wed, 16 Sep 2020 17:16:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2e6:: with SMTP id j6ls19399vsj.1.gmail; Wed, 16
 Sep 2020 17:16:45 -0700 (PDT)
X-Received: by 2002:a67:8710:: with SMTP id j16mr7057488vsd.31.1600301805810;
        Wed, 16 Sep 2020 17:16:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600301805; cv=none;
        d=google.com; s=arc-20160816;
        b=OXa5X4kLD5EWE3sSQbEEZjJdCXgYX+MtHVpf739hTBb5CJE8GhMy0fCHmgJwsJj2no
         hrpcL6KldbCItAL8kxMFTNmKbbJIInxy2+1qG1DtTYtB8WwWQQd0mwa7vcmTWL4fmhQQ
         jAM1iUtEAA8u8qHdeGuEGhtq2AC6v0LrvIWTKb5tuYHqoNHbsz9CtcoN8FPlNtZMRVuX
         vRSSren/r+JB2ccpIaugQCpXHmg1I4KxpRGpDqCGYTwkJ0+MsPjxnl8kVx3KuAaMRlr6
         7qTXd11verGYZcYI7Zq1jYQq9fZD0W4VHp4XJWKJw0TDEKMH4LG5iDtC6I2yQV9gWjCU
         baBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=t30BCd28IpMtt2qLE4ImjPuy6xE6W4R5dgzTNyxUB0A=;
        b=FmEkwxOjvCM5buCxj+TCgZirDlh8NMoa8ZmMgJOftXWTsHh181cUtQyd1Wr4s9k9v+
         utw3UhrB/r2Csx5amrKHlnDBLai5Y4JE4CjhLtnOTQlQDlKO1FYAlfmY1NIKaaG1Q8oK
         zZXlpxZz3j/1MMan3neVhEJ6EDOrZTuz1hrqheSTiYbduXvXDU8vvcIaLLRDWZOm+yHO
         5Nbw9EHXZAeNfWdH0bEAsA3bnWAkwQVx6EBS+PO9Xv9ZDkmuhxbq7kkP9cN9tJHjEcKH
         aoU6+sj/StYHU1dsBbjrQ4nSjp7rhaTQrxAgF+bDxConD7SxQobVt7JJuRlDbk8VgVGL
         VGKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KF608qK6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id s9si1424497uar.0.2020.09.16.17.16.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 17:16:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id d19so167007pld.0
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 17:16:45 -0700 (PDT)
X-Received: by 2002:a17:90a:e517:: with SMTP id t23mr5847320pjy.25.1600301804525;
 Wed, 16 Sep 2020 17:16:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200914095706.3985-1-ardb@kernel.org> <CAKwvOdmSXm7cV3hB_Yp=DD0RwwDHtPzzDBU8Xj5kBREn3xqYdA@mail.gmail.com>
 <CAMj1kXGuFFUyT48EYvzFmjCP4QZi_Sk_GpBrBCaHjP7HKLhjBA@mail.gmail.com>
 <CAKwvOdmkNgi_+kfauTSLwtpVChipW851_KGJG+gBbhwRxJJORA@mail.gmail.com>
 <CAMj1kXHTkP7-8xscGZGXN_0Sq=BCSnt3zWqkcm8xdO11xmditA@mail.gmail.com>
 <CAKwvOd=G2Rr3StUJ=oWu1L4b5y615m+uYNW-Y5sis13uqBvrYQ@mail.gmail.com>
 <CAMj1kXHEpPc0MSoMrCxEkyb44AkLM2NJJGtOXLpr6kxBHS0vfA@mail.gmail.com> <CAKwvOd=Sq3XOquw4ACEi+cYCQp0-LW-JXoecFt+yy+jtmtuhiQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=Sq3XOquw4ACEi+cYCQp0-LW-JXoecFt+yy+jtmtuhiQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Sep 2020 17:16:32 -0700
Message-ID: <CAKwvOd=CmiZ72yVmhX6LubObC6nUxjhwHhexjzW25j_8bpn_KA@mail.gmail.com>
Subject: Re: [PATCH 00/12] ARM: use adr_l/ldr_l macros for PC-relative references
To: Ard Biesheuvel <ardb@kernel.org>
Cc: linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Russell King <linux@armlinux.org.uk>, 
	Linus Walleij <linus.walleij@linaro.org>, Nicolas Pitre <nico@fluxnic.net>, 
	Stefan Agner <stefan@agner.ch>, Peter Smith <Peter.Smith@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jian Cai <jiancai@google.com>, song.bao.hua@hisilicon.com, 
	Anders Roxell <anders.roxell@linaro.org>, rppt@kernel.org, 
	Naresh Kamboju <naresh.kamboju@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KF608qK6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Wed, Sep 16, 2020 at 2:25 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Also, it looks like the GCC build of milbeaut_m10v_defconfig fails to
> boot for me in QEMU; so maybe not just a Clang bug (or maybe, more
> than one bug).  (or maybe one of my command line params to QEMU is
> wrong).
>
> Stepping through start_kernel(), the call to setup_arch() seems to
> hang in qemu.  For both GCC and Clang builds. A breakpoint in panic()
> never gets hit.  Looks like the deepest I can get is:
>
> Looks like:
> #0  memblock_alloc_try_nid (size=108, align=4, min_addr=0, max_addr=0,
> nid=-1) at mm/memblock.c:1601
> #1  0xc060f0b4 in memblock_alloc (size=<optimized out>,
> align=<optimized out>) at ./include/linux/memblock.h:409
> #2  cma_init_reserved_mem (base=1543503872, size=67108864,
> order_per_bit=0, name=0xc04b9240 "reserved", res_cma=0xc07ccbdc
> <dma_contiguous_default_area>) at mm/cma.c:190
> #3  0xc060f2c0 in cma_declare_contiguous_nid (base=1543503872,
> size=67108864, limit=1610612736, alignment=8388608, order_per_bit=0,
> fixed=false, name=0xc04b9240 "reserved",
>     res_cma=0xc07ccbdc <dma_contiguous_default_area>, nid=-1) at mm/cma.c:352
> #4  0xc0608cb6 in cma_declare_contiguous (alignment=<optimized out>,
> order_per_bit=<optimized out>, name=<optimized out>,
> res_cma=<optimized out>, fixed=<optimized out>,
>     limit=<optimized out>, size=<optimized out>, base=<optimized out>)
> at ./include/linux/cma.h:28
> #5  dma_contiguous_reserve_area (size=<optimized out>, base=<optimized
> out>, limit=<optimized out>, res_cma=0xc07ccbdc
> <dma_contiguous_default_area>, fixed=false)
>     at kernel/dma/contiguous.c:201
> #6  0xc0608d22 in dma_contiguous_reserve (limit=<optimized out>) at
> kernel/dma/contiguous.c:171
> #7  0xc0604584 in arm_memblock_init (mdesc=0xc061bfe8
> <__mach_desc_GENERIC_DT.35641>) at arch/arm/mm/init.c:230
> #8  0xc060302c in setup_arch (cmdline_p=<optimized out>) at
> arch/arm/kernel/setup.c:1132
> #9  0xc06007d2 in start_kernel () at init/main.c:857
>
> there's a call to memset that seems to hang.  I wonder if memset() was
> defined in terms of __builtin_memset, which oft can result in infinite
> loops?  (IIRC there's an AEABI related memset; this kind of thing has
> hit android userspace before).
>
> (gdb) layout asm
>
> shows that the source call to memset is transformed into a call to mmioset.
>
> (gdb) bt
> #0  mmioset () at arch/arm/lib/memset.S:19
> #1  0xc060e2dc in memblock_alloc_try_nid (size=108, align=<optimized
> out>, min_addr=0, max_addr=0, nid=-1) at mm/memblock.c:1602
> #2  0xc060f0b4 in memblock_alloc (size=<optimized out>,
> align=<optimized out>) at ./include/linux/memblock.h:409
> #3  cma_init_reserved_mem (base=1543503872, size=67108864,
> order_per_bit=0, name=0xc04b9240 "reserved", res_cma=0xc07ccbdc
> <dma_contiguous_default_area>) at mm/cma.c:190
> #4  0xc060f2c0 in cma_declare_contiguous_nid (base=1543503872,
> size=67108864, limit=1610612736, alignment=8388608, order_per_bit=0,
> fixed=false, name=0xc04b9240 "reserved",
>     res_cma=0xc07ccbdc <dma_contiguous_default_area>, nid=-1) at mm/cma.c:352
> #5  0xc0608cb6 in cma_declare_contiguous (alignment=<optimized out>,
> order_per_bit=<optimized out>, name=<optimized out>,
> res_cma=<optimized out>, fixed=<optimized out>,
>     limit=<optimized out>, size=<optimized out>, base=<optimized out>)
> at ./include/linux/cma.h:28
> #6  dma_contiguous_reserve_area (size=<optimized out>, base=<optimized
> out>, limit=<optimized out>, res_cma=0xc07ccbdc
> <dma_contiguous_default_area>, fixed=false)
>     at kernel/dma/contiguous.c:201
> #7  0xc0608d22 in dma_contiguous_reserve (limit=<optimized out>) at
> kernel/dma/contiguous.c:171
> #8  0xc0604584 in arm_memblock_init (mdesc=0xc061bfe8
> <__mach_desc_GENERIC_DT.35641>) at arch/arm/mm/init.c:230
> #9  0xc060302c in setup_arch (cmdline_p=<optimized out>) at
> arch/arm/kernel/setup.c:1132
> #10 0xc06007d2 in start_kernel () at init/main.c:857
>
> Using `si` in gdb, it looks like we maybe hit an exception vector?
> x   1202                .section .vectors, "ax", %progbits
>
>                                             x
> x   1203        .L__vectors_start:
>
>                                             x
> x   1204                W(b)    vector_rst
>
>                                             x
> x   1205                W(b)    vector_und
>
>                                             x
> x   1206                W(ldr)  pc, .L__vectors_start + 0x1000
>
>                                             x
> x  >1207                W(b)    vector_pabt
>
> Is the last thing I see, then `si` stops working.  Not sure if `pabt`
> is a recognizable acronym to anyone more familiar with ARM?
>
> Happens regardless of your series, FWIW.

It seems this is affecting the ARCH=arm defconfig (regardless of
toolchain) of linux-next today.  I know you've warned me about testing
on -next before...

Maybe this is: https://lore.kernel.org/linux-next/20200916140437.GL2142832@kernel.org/
? That looks arm64 specific though.  Maybe 32b ARM needs the same or a
similar fix?  Oh man, this boots, total shot in the dark:

diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
index 45f9d5ec2360..7118b98c1f5f 100644
--- a/arch/arm/mm/init.c
+++ b/arch/arm/mm/init.c
@@ -226,9 +226,6 @@ void __init arm_memblock_init(const struct
machine_desc *mdesc)
        early_init_fdt_reserve_self();
        early_init_fdt_scan_reserved_mem();

-       /* reserve memory for DMA contiguous allocations */
-       dma_contiguous_reserve(arm_dma_limit);
-
        arm_memblock_steal_permitted = false;
        memblock_dump_all();
 }
@@ -248,6 +245,9 @@ void __init bootmem_init(void)
         */
        sparse_init();

+       /* reserve memory for DMA contiguous allocations */
+       dma_contiguous_reserve(arm_dma_limit);
+
        /*
         * Now free the memory - free_area_init needs
         * the sparse mem_map arrays initialized by sparse_init()
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DCmiZ72yVmhX6LubObC6nUxjhwHhexjzW25j_8bpn_KA%40mail.gmail.com.
