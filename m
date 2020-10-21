Return-Path: <clang-built-linux+bncBD63HSEZTUIBBJ5YX76AKGQEANU627Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE13294887
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 08:58:49 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id b72sf677287oii.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 23:58:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603263527; cv=pass;
        d=google.com; s=arc-20160816;
        b=kkn6FHyeuBI1Rups7gM15DT7k2oxpLXTsV065OBx9+KvMc8m+Ij+VNlDIDjzrNQmXk
         91H+qkwjzB9ianYpebGQL90m4GQAME7AVbC8vOTwDzYcCvsSXOEdEznsn8FBUYyibumX
         HXanO+KFBe7aXF6v7XhPb6Q3A6+4cS3FYCVazglDFoGu777fPSbkluv4WMrondl87xgt
         uu3OZ5Kh/msJCprEsjoBvWL+BQUha7ahZqQphrxSA8PqaWuoM7BhfhwPFkupm6pFI/1M
         yJrJRqs9QjmiAl7IYXT1b6qcAsqw+062uHPla2Dw2QfH0MeYIoDP6sN41b8VDtXNRHyj
         X0Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=gNuWofMRtAgImFsVbe8e5mLSn47HdZSKlCMkeqospFI=;
        b=a7C3mzinGNPr9evq9+pf98Tnz/gHtkHSipHQ6U7ZvaWDkve9HA8Jo3sESjd3jEo2R1
         gy0noYwQE3erIxwofH3/muxvPoCG2j4878moIlZxUofYNG4fNqf3X/mWI/eoinuVy09X
         e2bMlZwC2u4nEkiu5MVAKLn15XM83Fzxz6YozcTxYp4tUSYn31XFKDApaptBDNqp+lOj
         zy/Ja8egvA+Hf3I6bbbUUJYMWwM5Cth1dmhEUE4I1V2np6okpcwJdnVpThZ2Q5A9nfmg
         THAFAeZB5714funYkSjCdhenBvplJXbCiLdimxoEs3bUrzGCD6CegqC2Mmd/u0cBa+V8
         15Sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iUbY1hPz;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gNuWofMRtAgImFsVbe8e5mLSn47HdZSKlCMkeqospFI=;
        b=DRmzMNaCT8jXorW6esRWRxNIgToTWsBOgjHzV3wsrMRNiQ/YNRkrSDuRmqDvI3FAKK
         LALU2QAcnU6M6rLF7BBr/4nu6k2qP1QMqV+pLDQ2pTxwum3g8G0HAZV5SxdOVbkexv8Q
         YGpNERHLb3632oAnlkFH7b/VYMsAhQYZHmbT93Ocz1ERaSx6Qji594shUtHY2mBDPflL
         ++Xs5vFb0mhow95am5wq8OurSd2VlaK8jmgL8Pw5gC3vbKKI5eozk38KiuuqFlg+ApAG
         CR3WaQBsRpPIu7orXv75Mz2I2YbyF6x0lyTP5gQkCV6+bzNifhqBco7jr5YcdLfsQmAO
         uilQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gNuWofMRtAgImFsVbe8e5mLSn47HdZSKlCMkeqospFI=;
        b=Vz3TPDA7EMzmQVFfrRaG0RtN9AT5GDkO0EBmM+Vn0qS5Wk863BUf45GWPqQ4guvW2r
         Rd+txrP0Hkge7CH6cbBuQtV9Th8aIfTrIRLf8QIBCmW/Q5iT9k7QPHheMHlIG5xo7Upq
         vNCxmv5PAQNbnKGFHHysepNUOKmR8S46sPseNvtKo4GKVnclWp+FFn1PHnRLmZSVXOUx
         0mMX1p4knizCecJDdydbPUmsdOgmkiw7jVJPmVu+5yXeo7bpYa0LcEC73UrcsupANh6C
         Zo74BsrkmdkWKvl4NrqPRl7QZOhG4VjzqaDcV9xyT7g9jonSb3e0G9YfwD7+CP/fyFMV
         xuZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NbrPazcWnp8t8Kv/gxMuYA6iZet4F1IQEu/bXeHX8GO/QlQFi
	BCnwLZe5vKvjFKpy/wqizNQ=
X-Google-Smtp-Source: ABdhPJzsZStmRR8oyEfh8kjAp41rhAXZTPLJ56vlSNMcTfXdVt+WT/TCjRLfc7ea72IHTWy/yIPdMw==
X-Received: by 2002:a4a:9644:: with SMTP id r4mr1423216ooi.12.1603263527453;
        Tue, 20 Oct 2020 23:58:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7394:: with SMTP id j20ls1109378otk.5.gmail; Tue, 20 Oct
 2020 23:58:47 -0700 (PDT)
X-Received: by 2002:a9d:7752:: with SMTP id t18mr1541371otl.341.1603263527102;
        Tue, 20 Oct 2020 23:58:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603263527; cv=none;
        d=google.com; s=arc-20160816;
        b=T2XLH5zb7KbKJLAsM+JQAysQMZxUKITlISV6pxp9tyY9G4Jnj0rxTcOVxjjd0rHgU5
         atqxUh3usDggWNe9mljF6M8ygbXzfWXKkW+OUORndgOShSu6vIIgjR8/PvjO84Ul8X3e
         tzm1at4tZ7jkcs1fZCgz5QNwwBmCOOG7NQI4/qRYBhvtijvy1udIpUe/k9Yp647AyNXv
         zSVOTLdPiVlJomI+MFX42HIc2EODwzFIDVEvuYGA2Ze6TYh+kedA8pWv9GFTeTZvTMpE
         lx6CymTKsafrjEKiXwLX5/uKsZg/iKD1lgdkBmsAAFh2Lvv0kDT78VUZ3FoL5T2e4HIB
         Ed8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rGhWbdPBxA8HbHyV42mqP3JjdpdCsDkEo7Y5FcA3H2Y=;
        b=MynQ8sOniEm+FmjdhwOipRXs4wYZMXnC31P1m5pVp16JHdFCzhERdgNXV1M5WYHGSK
         O8qRozlD0bp1W61oDfSx2a9C8VfRGALhd58DtciguUTQVVuwPndgQc4gsNQ/w+/NRomk
         wszM8O9W29x/oc74nMRW4WW2Gk5tDl6c9S7eqBEy0Mrf6wdX1efpScoYC5FTNIwOtpf4
         M5c5ecOCFqa1fM9l5tKmQqF/MtOFigf9GRJwR+AuEBLAfPdAjqPuXjYBLSdHaSOcKLPI
         fAWFP++86sDo+UwL1/sU5DL9LLvmiopor5ZtCJnQ7pwl66WFb10PMANZod+P4Us22Wda
         7tlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iUbY1hPz;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a7si72265oie.4.2020.10.20.23.58.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 23:58:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D0B8D223C6
	for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 06:58:45 +0000 (UTC)
Received: by mail-ot1-f53.google.com with SMTP id e20so927790otj.11
        for <clang-built-linux@googlegroups.com>; Tue, 20 Oct 2020 23:58:45 -0700 (PDT)
X-Received: by 2002:a9d:6c92:: with SMTP id c18mr1505523otr.108.1603263524916;
 Tue, 20 Oct 2020 23:58:44 -0700 (PDT)
MIME-Version: 1.0
References: <20201016175339.2429280-1-ndesaulniers@google.com>
 <160319373854.2175971.17968938488121846972.b4-ty@kernel.org> <CAKwvOd=ZJjYOVubjHN6DFuopMP7jg9PAxGHhOPVu6KefPMNfkg@mail.gmail.com>
In-Reply-To: <CAKwvOd=ZJjYOVubjHN6DFuopMP7jg9PAxGHhOPVu6KefPMNfkg@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 21 Oct 2020 08:58:34 +0200
X-Gmail-Original-Message-ID: <CAMj1kXF-PFjG7sfdgCsnW-u-bd5yg+j3EiZUO8jYHMnb7bDttw@mail.gmail.com>
Message-ID: <CAMj1kXF-PFjG7sfdgCsnW-u-bd5yg+j3EiZUO8jYHMnb7bDttw@mail.gmail.com>
Subject: Re: [PATCH] arm64: link with -z norelro regardless of CONFIG_RELOCATABLE
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>, =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Kees Cook <keescook@chromium.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Peter Oberparleiter <oberpar@linux.ibm.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	kernel-team <kernel-team@android.com>, LKML <linux-kernel@vger.kernel.org>, 
	Peter Smith <Peter.Smith@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iUbY1hPz;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, 20 Oct 2020 at 22:16, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Tue, Oct 20, 2020 at 10:57 AM Will Deacon <will@kernel.org> wrote:
> >
> > On Fri, 16 Oct 2020 10:53:39 -0700, Nick Desaulniers wrote:
> > > With CONFIG_EXPERT=y, CONFIG_KASAN=y, CONFIG_RANDOMIZE_BASE=n,
> > > CONFIG_RELOCATABLE=n, we observe the following failure when trying to
> > > link the kernel image with LD=ld.lld:
> > >
> > > error: section: .exit.data is not contiguous with other relro sections
> > >
> > > ld.lld defaults to -z relro while ld.bfd defaults to -z norelro. This
> > > was previously fixed, but only for CONFIG_RELOCATABLE=y.
> >
> > Applied to arm64 (for-next/core), thanks!
> >
> > [1/1] arm64: link with -z norelro regardless of CONFIG_RELOCATABLE
> >       https://git.kernel.org/arm64/c/3b92fa7485eb
>
> IF we wanted to go further and remove `-z norelro`, or even enable `-z
> relro` for aarch64, then we would have to detangle some KASAN/GCOV
> generated section discard spaghetti.

Why on earth would we want that?

> Fangrui did some more digging
> and found that .fini_array.* sections were relro (read only after
> relocations, IIUC), so adding them to EXIT_DATA
> (include/asm-generic/vmlinux.lds.h) was causing them to get included
> in .exit.data (arch/arm64/kernel/vmlinux.lds.S) making that relro.
> There's some history here with commits:
>
> - e41f501d39126 ("vmlinux.lds: account for destructor sections")
> - 8dcf86caa1e3da ("vmlinux.lds.h: Fix incomplete .text.exit discards")
> - d812db78288d7 ("vmlinux.lds.h: Avoid KASAN and KCSAN's unwanted sections")
>
> It seems the following works for quite a few different
> configs/toolchains I played with, but the big IF is whether enabling
> `-z relro` is worthwhile?  If the kernel does respect that mapping,
> then I assume that's a yes, but I haven't checked yet whether relro is
> respected within the kernel (`grep -rn RELRO` turns up nothing
> interesting).  I also haven't checked yet whether all supported
> versions of GNU ld.bfd support -z relro (guessing not, since a quick
> test warns: `aarch64-linux-gnu-ld: warning: -z relro ignored` for
> v2.34.90.20200706, may be holding it wrong).
>

RELRO just moves statically initialized const pointers into a separate
section so we can place it in a way that allows us to easily map it
r/w during load, and switch it over to r/o once the relocations have
been applied.

On AArch64, we don't even use -fpic to build the kernel, and load time
relocations may appear everywhere in .text, .rodata etc etc, which is
absolutely fine given that we apply the relocations way before we
finalize the kernel mappings. This means that, in our case, statically
initialized const pointers will be mapped r/o already, and we don't
need RELRO.

In general, we should ensure that the 'relocatable bare metal' case
doesn't get snowed under, as toolchain development is [understandably]
very focused on hosted binaries that use shared libraries, where
things like CoW footprint, ELF symbol preemption, text relocations and
RELRO sections actually matter. For bare metal, it is quite the
opposite: text relocations are fine, there is no CoW so minimizing the
footprint of the .so pages that are modified due to relocations is
unnecessary, and symbols cannot be preempted either. So many of the
shared library tricks actually make things worse for us, because we
have to work around them while they have no benefit for us.

I have suggested this before, but perhaps we should have a
-mcmodel=kernel (like x86 does) that takes these things into account?
As a start, it could imply -cmodel=small (which we rely on today), but
with guarantees that the generated code is position independent, but
without GOT indirections, and that the resulting object code can be
linked with -pie (so that we have access to the load time relocations
in the bare metal binary itself). This is something we rely on today,
and happens to work in practice, but this could easily break in the
future.




> (Fangrui also filed https://gcc.gnu.org/bugzilla/show_bug.cgi?id=97507
> in regards to GCOV+GCC)
>
> diff --git a/include/asm-generic/vmlinux.lds.h
> b/include/asm-generic/vmlinux.lds.h
> index cd14444bf600..64578c998e53 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -744,7 +744,6 @@
>
>  #define EXIT_DATA                                                      \
>         *(.exit.data .exit.data.*)                                      \
> -       *(.fini_array .fini_array.*)                                    \
>         *(.dtors .dtors.*)                                              \
>         MEM_DISCARD(exit.data*)                                         \
>         MEM_DISCARD(exit.rodata*)
> @@ -995,6 +994,7 @@
>  #if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN)
>  # ifdef CONFIG_CONSTRUCTORS
>  #  define SANITIZER_DISCARDS                                           \
> +       *(.fini_array .fini_array.*)                                    \
>         *(.eh_frame)
>  # else
>  #  define SANITIZER_DISCARDS                                           \
> @@ -1005,8 +1005,16 @@
>  # define SANITIZER_DISCARDS
>  #endif
>
> +#if defined(CONFIG_GCOV_KERNEL) && defined(CONFIG_CC_IS_GCC)
> +# define GCOV_DISCARDS                                                 \
> +       *(.fini_array .fini_array.*)
> +#else
> +# define GCOV_DISCARDS
> +#endif
> +
>  #define COMMON_DISCARDS
>          \
>         SANITIZER_DISCARDS                                              \
> +       GCOV_DISCARDS                                                   \
>         *(.discard)                                                     \
>         *(.discard.*)                                                   \
>         *(.modinfo)                                                     \
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXF-PFjG7sfdgCsnW-u-bd5yg%2Bj3EiZUO8jYHMnb7bDttw%40mail.gmail.com.
