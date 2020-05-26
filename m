Return-Path: <clang-built-linux+bncBD63HSEZTUIBBBEYWT3AKGQEFETXRFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA731E21E6
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 14:31:01 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id v11sf221103uap.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 05:31:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590496260; cv=pass;
        d=google.com; s=arc-20160816;
        b=qlUDu2ChljUuTdndEcJxyD8SSvcL19YNvbjIJBofwnRszli3zwXrH8ErzBR/ioIVCB
         NrZLoEPtIYEKjaUTkLgDq97uCMymrwvrabDQIhChIt2ttevFNNmHHBq7yaQIvC2imX90
         eluBpMgM7O2R6Zycf/+wAZkryY/dVdpk7TcFMjN0hWqrhQT0HC7vV8YwHay7VzbdqxMl
         m3OeA+a/62Q1i8OxUuFdAKmnM7Qby2BRmu183wfSPrGbWEYEea5FtNuL+KgIGw+LCN5w
         dAXUP2b3TAyX8284VPrs5FcjrUcVdFgnzn9ucqmFkdbvYV47fSbq3CflS/uZQHKy0BNT
         W8rQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=d4iSBS29pHVbLUvmtgfQ6aZk0gejm6iV9E1aMfCrK20=;
        b=ViDrwDOG3WpscUtTbATYpFZYTjtULtjBNjJw9K1fjA4nAAl7uR8HJqJBJJuHeUfyvO
         kayuhI+8YHdlnUtbVK64DkB+Iyn1f2nR/j0HvXg5NjMGFehbGz/+VhmCrrK0W/E9JL5Z
         yGBbPhtkchhOyAVxkRz0rh5kn1JY9wqIXLomXQxV5KAtfhNGASXNqvtrzVeXaiplJKpt
         BEFsSuFD1FO1D1yoG6AqGZzA93uGV4nS6/cPzPL/HkTHtEKPNRrBUraefkP25vugPOUT
         TdWAINL6C/Pm48j8C82Ro3KR2eDOPfpT6h+qEqdAG47DnTrjrx5XXiuLnXBrPGVXJHIL
         GM/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AG0an2Tn;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d4iSBS29pHVbLUvmtgfQ6aZk0gejm6iV9E1aMfCrK20=;
        b=MsV1K19A3VseX3vENHqbsyZZZorvr4Qo9O0b3nF0ebXLx72735Z2fPctOyg8LJR/0W
         PjSLo1ky2ZutOHSaMl1g3oS09MwWeorc4tg2hEQpvgwkrEuecZpT0dRxn6hBUhgSuSyh
         SyGVMzIgGQpOTx7eGZrHJkO739xHlSv6BOjgGrjx5WbjjeRixke96hqVhNLyNXa6A+mh
         AEpqiO3UXk9Y74UZ9imvy7jx9ZmDmG9OV3P2uLkym5/1D8Cz7j4s42v241L44oSOfxQI
         64aaxB4R1+amQJyt072XGaUoREz5zQmmARMOqR29ZL8PYHGzcoT3xuSc06Re6MwLWZJF
         B3OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d4iSBS29pHVbLUvmtgfQ6aZk0gejm6iV9E1aMfCrK20=;
        b=iGCvfIF6Z/3/zYGUN2CSc82dzahGFFP5On7OkDiEYaWcWpi2XRKsDaODDYR2Z07lnN
         cDw4aB/7t0dK0apQaRKKpU09bbp30oauLvw2Fzs3Ieh8Pto64Pa9QL8dD36wXqUTFJKk
         8AD1buWJDdRr6to/vy/crWODDZQR3FauR76AOPoZr+TP3mHJSJZ5RHcjAiHISzth/jKt
         XRYKbT2ItrJK5sE3zAzNnPlmKnw11e9vEJXh+al6WGIu70p+MpBcuf86FxGHV40sWy9q
         9KzRL+6iGzOL+4LoEoKU0MCVE+0VribBy50O+Fd/A2ESD45m1o9vfi9VUwYvALa+A3se
         OJYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fcMxGCFslifd4GJrCS5aG6I50gbEgeVk1BimzsCVHzUq60jmq
	knJx7xGstQP7PlB/8uplzJo=
X-Google-Smtp-Source: ABdhPJxT9Vwmy9qOw+3VsYOlBuXoo1FbyeQrUJ0OreOQTcmHduxhmXR+IEQPeX/9/PWEav2El7hDTA==
X-Received: by 2002:a67:67c1:: with SMTP id b184mr680574vsc.2.1590496260134;
        Tue, 26 May 2020 05:31:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:5d43:: with SMTP id r64ls1089523vsb.4.gmail; Tue, 26 May
 2020 05:30:59 -0700 (PDT)
X-Received: by 2002:a67:ca85:: with SMTP id a5mr598463vsl.233.1590496259837;
        Tue, 26 May 2020 05:30:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590496259; cv=none;
        d=google.com; s=arc-20160816;
        b=SD8q+X6Ro65oddv6iQo0DZen6Bod4pKdJ4mtaSBx74aWAC9G2rGE0J3fhM+RKuiW8g
         SnRH7fvM3UTu+LLrhbQ94Ws76r1B0oy4Dsy9M9gt9aXa4NtqSDuXn5D2Srf/iJxGsJyq
         cO5Xv8r7wHHKS+VmwIMZ2Wc8nPGjSDweOWoM3FywKUT885pw0AabgfmTs5R6QmSfjvQN
         o4+DD4Deao1cGTBkB/XUpIuS1tjtYljHt0V/jJWqsDvRfwSp2UWMByy3wDXxHH49pQMD
         CSySXUZoXrjdh3ULwqcXRsquzSOboMlummyTZGrpM0Ajmkz+i/mDnOOws0qrpXTBkV2+
         LPig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1xLYgqr9Nfx3dnrYDtiD9NmJlW2o7YfMMddo8duRd6g=;
        b=0OJF+do8mr7v1r/TqScu7KTjqM3NohASySq9UKQeeYH46z4WpQoQT1I0jdika2wfX0
         y7X9fXSI7U/0XCDbmpSYvk8KXpMHowAW6oPtnl/dYv8Lj+BzYb8OqQR828gE7Zqu8JXl
         kTmTuJAYteR2suCLcWnCKaH6x2TZAazQvJviPWHCQa68RJ3Ba2WNRQLYriIgag4CLTai
         lguwshzUc5oj/edx4LnS8Qs8XT7BKdxPcwSOnLuJAq5sr6rghR9d19uczET0fr7exPCk
         xHi5g5co3Ko3Rj/zmgHgLK5XT9tEc5Zbv+8SyCIE8IRYwHGLS6pMFdCs1fth6YSJ4EDT
         nHeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AG0an2Tn;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t9si41130vkb.1.2020.05.26.05.30.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 05:30:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A4E23207CB
	for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 12:30:58 +0000 (UTC)
Received: by mail-io1-f49.google.com with SMTP id s18so7773054ioe.2
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 05:30:58 -0700 (PDT)
X-Received: by 2002:a02:3341:: with SMTP id k1mr763821jak.74.1590496258034;
 Tue, 26 May 2020 05:30:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-1-nivedita@alum.mit.edu> <CA+icZUVa8FhhwHgXn1o_hFmgqFG6-KE1F+qvkdCzQjmSSSDWDw@mail.gmail.com>
In-Reply-To: <CA+icZUVa8FhhwHgXn1o_hFmgqFG6-KE1F+qvkdCzQjmSSSDWDw@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 26 May 2020 14:30:47 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHVFgRsbssJQD2C0GZnOgG=rMYbPGJQtiKhSw6sZj5PaA@mail.gmail.com>
Message-ID: <CAMj1kXHVFgRsbssJQD2C0GZnOgG=rMYbPGJQtiKhSw6sZj5PaA@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] x86/boot: Remove runtime relocations from
 compressed kernel
To: sedat.dilek@gmail.com
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	X86 ML <x86@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Daniel Kiper <daniel.kiper@oracle.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=AG0an2Tn;       spf=pass
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

On Tue, 26 May 2020 at 14:29, Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Tue, May 26, 2020 at 12:59 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > The compressed kernel currently contains bogus runtime relocations in
> > the startup code in head_{32,64}.S, which are generated by the linker,
> > but must not actually be processed at runtime.
> >
> > This generates warnings when linking with the BFD linker, and errors
> > with LLD, which defaults to erroring on runtime relocations in read-only
> > sections. It also requires the -z noreloc-overflow hack for the 64-bit
> > kernel, which prevents us from linking it as -pie on an older BFD linker
> > (<= 2.26) or on LLD, because the locations that are to be apparently
> > relocated are only 32-bits in size and so cannot normally have
> > R_X86_64_RELATIVE relocations.
> >
> > This series aims to get rid of these relocations. It is based on
> > efi/next, where the latest patches touch the head code to eliminate the
> > global offset table.
> >
> > The first patch is an independent fix for LLD, to avoid an orphan
> > section in arch/x86/boot/setup.elf.
> >
> > The second patch gets rid of almost all the relocations. It uses
> > standard PIC addressing technique for 32-bit, i.e. loading a register
> > with the address of _GLOBAL_OFFSET_TABLE_ and then using GOTOFF
> > references to access variables. For 64-bit, there is 32-bit code that
> > cannot use RIP-relative addressing, and also cannot use the 32-bit
> > method, since GOTOFF references are 64-bit only. This is instead handled
> > using a macro to replace a reference like gdt with (gdt-startup_32)
> > instead. The assembler will generate a PC32 relocation entry, with
> > addend set to (.-startup_32), and these will be replaced with constants
> > at link time. This works as long as all the code using such references
> > lives in the same section as startup_32, i.e. in .head.text.
> >
> > The third patch addresses a remaining issue with the BFD linker, which
> > insists on generating runtime relocations for absolute symbols. We use
> > z_input_len and z_output_len, defined in the generated piggy.S file, as
> > symbols whose absolute "addresses" are actually the size of the
> > compressed payload and the size of the decompressed kernel image
> > respectively. LLD does not generate relocations for these two symbols,
> > but the BFD linker does, prior to the upcoming 2.35. To get around this,
> > piggy.S is extended to also define two u32 variables (in .rodata) with
> > the lengths, and the head code is modified to use those instead of the
> > symbol addresses.
> >
> > An alternative way to handle z_input_len/z_output_len would be to just
> > include piggy.S in head_{32,64}.S instead of as a separate object file,
> > since the GNU assembler doesn't generate relocations for symbols set to
> > constants.
> >
> > The last patch adds a check in the linker script to ensure that no
> > runtime relocations get reintroduced. Since the GOT has been eliminated
> > as well, the compressed kernel has no runtime relocations whatsoever any
> > more.
> >
> > Changes from v1:
> > - Add .text.* to setup.ld instead of just .text.startup
> > - Rename the la() macro introduced in the second patch for 64-bit to
> >   rva(), and rework the explanatory comment.
> > - In the last patch, check both .rel.dyn and .rela.dyn, instead of just
> >   one per arch.
> >
>
> Hi,
>
> I would like to test this patchset v2 on top of Linux v5.7-rc7 together with:
>
> [1] x86/boot: Discard .discard.unreachable for arch/x86/boot/compressed/vmlinux
> [2] x86/boot: Correct relocation destination on old linkers
>
> I tried to pull efi/next on top of Linux v5.7-rc7 and cleaned up the
> merge problems, but I am not sure I did it correctly.
> So, which patches are really relevant from efi/next?
>
> What's your suggestions?
>

efi/next is here:

https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git/log/?h=next

You'll need the top 3 patches.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHVFgRsbssJQD2C0GZnOgG%3DrMYbPGJQtiKhSw6sZj5PaA%40mail.gmail.com.
