Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBFMQXP4AKGQEKD4KM2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4F3220844
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 11:10:46 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id l13sf1013554ioj.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 02:10:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594804246; cv=pass;
        d=google.com; s=arc-20160816;
        b=uQKhyhycVdFv8BMnpJuFnc5dfGSmiHyQ7Y5RO5bjCYzo/a9m1ZFlKJ2hjcTdDq7urP
         jyYKt2O7dvzBynqrEZgSUiG6mVuroXp/TZiGcQqR5RGic4Za9TB9/Q8asYC4tm8HHTBo
         xq7V9U96ME0c5QKgJmnAwhC36eZ98Ixdb88tARyIoS4BSCZRZ+aFDmKtNjNO0Q7HAdX1
         fFMZy8PBVLid7zKDGCajrL7ymtzwCjwSBPb6F1syUepF6lVUgS48c3d1oFr+6TOnIqHF
         9Mm4k9D5szpxE0qA4KzTjJndOhXv8RM90rnI5gVsFGzqUQfCP8BlBfjeSl9QgYJdrAi6
         cazA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=IE8A3YAiKpMcpuyxafQaNtO5OMEpuvTmZa6zCYgXP0o=;
        b=Oj29i1R2cHHs+1vnKduNdTSFHiPrl2zAnZi4epWXsITr/ggfUlmoxwUG7MAALo/suI
         GvqW7rts9oYOE0CDH/7boibFe1Cx0CGyr3juioi+YRWNT2WRTAEC2feJsc+h1S11kTqp
         gaDCMEuR1oFd38BDUG4wpoRipvRv3FUbFZd3Hy5zc/qvpG9VvZRLJ+vch+q9wkxjcoG4
         KyQ+FpDgxHw/8cCdqCfnIuSKUskvCg5ElXnrFakzjftoPmEtOHxeLE29pj1xdfpATTHg
         3sEgWFs/eURdZ2b50JvPO9HDnamkcjB2aJLdN9POeT6lac1TpCkU5znYardSeF254gOk
         yH3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tsc+i/zR";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IE8A3YAiKpMcpuyxafQaNtO5OMEpuvTmZa6zCYgXP0o=;
        b=AIvSwJU7HlQyHeymYzRVL78WfLQMcObananCkLdT5F4zr4UFuhlGluRBu/3BQ7RYVF
         avaTfu9N1xuWOxjFrRvDXXIlI3jX1dqSJJpaGTmsNaN9VuYCCMUBYFr7RUi3q16/Z07X
         D0kujtgWl54qI3Me/eeFawP8ExKfJ1Zj38jOBKtizDrkZEze8QnpmtO+ILAfYmQsPbND
         VKS99QmOE/D+G9x8QDkaDq/9yv/CnR+OzjDc+5uAv/fx1tfnztkJwPqBR1gZVPW40X+L
         uIVMgGuLXejkzw0ctnGfP3HZ7IcGjJ/k1vlE3yPhL2oFAFOfOeTnwQkIJ7Kr1hyJkM1J
         tGtQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IE8A3YAiKpMcpuyxafQaNtO5OMEpuvTmZa6zCYgXP0o=;
        b=F00dkDeMM6Yf4q9zQnPJSNpiaFHpyRoQMHoxksSbkvfdWHKby6pox8/KSTEnnnA6L8
         5O1ncEvPiG6d52dchnty7gEMinlUL3zj+WJHaFzj74ySQtOkwuCa8CCSD+MqIoyuPtjJ
         eojBbAMn8/zzfSkhyXpJQmxck1cB/6B5S/ru34yw/nGD++sWQjkKk3PisX3Kp70J+e2I
         BxEky1ywT2JVPK+384J4fe7rvCz7uQJUUu9F0Kb4ac0MhTwhtcBNdMiTfGNby+xAmtq6
         6kj/yLRetfMpRadtnT4UdV8LPrcjz95Dd6yBevr1wWLw6U1nFi+iYk2oEAd60ZCKb5LJ
         FkFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IE8A3YAiKpMcpuyxafQaNtO5OMEpuvTmZa6zCYgXP0o=;
        b=ledGtPg9ZAkuOdau0DBGrHFLy09T8YafSZ4qlVtIgGwhWj5m3c7ad5Wkhgst0qJYrq
         RLySFRnEaqK9TNNvQuW8Yje4HNMubcFQqTxfolLU/e9T3+Pf5NcWbsSy0rQLcCsbu0W7
         mUIZOjx+a0HTgElc7ZYyF2ByTJbgseZ/3yOKnEuUXaYoa2TYrZbpfpNhgUYQYEocskYL
         vI0wgH1S0Jzn7DrWVMUKFbNoDjtuVGOlWZ2b+YFI7s0MMI9wSvflyXKSyMMUgCMVGsNp
         zI+6nDO71MMYnsFYKS2q0lTxgr+tDnz1TB5mp0Ky5cxfbtLCjM7qzZT1eLtgLvF1LES6
         aFSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pl0PCnVkJQ1w1PGjBwtBLthAAzsqU6FVTSYY0fw1ymMoGpT0A
	U+joSG5rjc6o1XDxFjoFJQw=
X-Google-Smtp-Source: ABdhPJzMOmdSGt4lF1MurV2HbEEESTLJAdy2NArjWP8gM5lstcTqO4HwFYl840Jx20bctvgrUPiAzQ==
X-Received: by 2002:a05:6638:118:: with SMTP id x24mr10846704jao.48.1594804245819;
        Wed, 15 Jul 2020 02:10:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:700a:: with SMTP id f10ls211637jac.10.gmail; Wed, 15 Jul
 2020 02:10:45 -0700 (PDT)
X-Received: by 2002:a02:b0d5:: with SMTP id w21mr10967333jah.27.1594804245480;
        Wed, 15 Jul 2020 02:10:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594804245; cv=none;
        d=google.com; s=arc-20160816;
        b=fxdTY1SLk/IGKVxzI0N91yOkNh15RGqQls7ZDsLg05DmxKJZJrVX9AkrD01CGN2H/e
         cxszwIffyjVUx8sF15xooyOzlipM1ZeaxKrSZ3PXGvgLyOprcWJj3zf6rDe6k7BbKzSV
         /e7dr9QSxz75uBCU0lQGF0SM5+nl76pY0mXzrj9IbiRo31SEO2edXRrA/+1cnhzzfuDi
         +purSjpvxWC6ao0Cm6StwIkJsuAxdT83dkAKMVuLlSy7VJbwEqSqnemcoi4KGbK7Q0xH
         jwkOXVPbBuTsJVjI+o6iGAh9KjcbpnY8F2P+lbanQjJCSdbstNbTInjb9Xb4mwY7VgIU
         eHkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VM5Ene7RM0Zm4FuEQw0PQ37mC4l8ooP3mVTOGwW7hsw=;
        b=oBqm1qFgcux8gbSsqTLTwR05S+2biIBCS+SMrk4Ex7ritZmJC5iWF0DUKlluvWrOjn
         0dRTdgOIcGuJfU4E5CBsm1rcn1n8U4tBihHu75ktRDUHH2lLX8uhycAXUCkp0d/Lu1M5
         vQ0mLGpFKUoTnRGkqg8cXxzcJiGNPMGBgNcA4qAIS0j8TC/BmfUOwmgHYplA50jx8/s+
         LFVE2Sfbh7CGbhJS1UyWrVW1bEjuypg4dzgMHpTIMMEdsULLq3w5+IDtDQPb3tI2wiF6
         Be8BOYaWVlUiOjcuHaEZ/7rm7xmj8oeRM1xEkwmh0ZdaSmdJWJ+nAvHbe7c1mBLBlZWB
         pfdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="tsc+i/zR";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id d3si97238iow.4.2020.07.15.02.10.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 02:10:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Received: by mail-il1-x142.google.com with SMTP id r12so1351169ilh.4
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 02:10:45 -0700 (PDT)
X-Received: by 2002:a92:8b11:: with SMTP id i17mr8823169ild.212.1594804245086;
 Wed, 15 Jul 2020 02:10:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <20200715004133.1430068-7-nivedita@alum.mit.edu> <CA+icZUXDoeHEcFurBVTv-JMR2xR6oj500n=fVSrN56_KOHiHcw@mail.gmail.com>
 <CAMj1kXE2D_iWGQODd2t=9-URE1T2N4+hgrTn7OQa-=ma=kncvg@mail.gmail.com>
In-Reply-To: <CAMj1kXE2D_iWGQODd2t=9-URE1T2N4+hgrTn7OQa-=ma=kncvg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 15 Jul 2020 11:10:33 +0200
Message-ID: <CA+icZUU_z-0Ehh3oGVY1tYkrjnuOXfMP7maRUvrmAMTH+6MdaQ@mail.gmail.com>
Subject: Re: [PATCH v5 6/7] x86/boot: Remove run-time relocations from head_{32,64}.S
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	X86 ML <x86@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Daniel Kiper <daniel.kiper@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"H . J . Lu" <hjl@sourceware.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="tsc+i/zR";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jul 15, 2020 at 11:03 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Wed, 15 Jul 2020 at 11:58, Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Wed, Jul 15, 2020 at 2:41 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > The BFD linker generates run-time relocations for z_input_len and
> > > z_output_len, even though they are absolute symbols.
> > >
> > > This is fixed for binutils-2.35 [1]. Work around this for earlier
> > > versions by defining two variables input_len and output_len in addition
> > > to the symbols, and use them via position-independent references.
> > >
> > > This eliminates the last two run-time relocations in the head code and
> > > allows us to drop the -z noreloc-overflow flag to the linker.
> > >
> > > Move the -pie and --no-dynamic-linker LDFLAGS to LDFLAGS_vmlinux instead
> > > of KBUILD_LDFLAGS. There shouldn't be anything else getting linked, but
> > > this is the more logical location for these flags, and modversions might
> > > call the linker if an EXPORT_SYMBOL is left over accidentally in one of
> > > the decompressors.
> > >
> >
> > Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> >
> > Reported breakage with LLD in previous patchset version.
> >
>
> Please drop the bogus reported-bys. The patch does *not* address an
> issue you reported, so recording this in the commit log would be
> incorrect.
>
> Your review and testing is appreciated, and resulted in substantial
> improvements. So feel free to give your reviewed-by in addition to
> your tested-by. But reported-by is inappropriate here.
>

Correct, in a hurry I mixed it up as said in the next patch 7/7.
Please drop this Reported-by.

- Sedat -

>
> >
> > > [1] https://sourceware.org/bugzilla/show_bug.cgi?id=25754
> > >
> > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> > > Reviewed-by: Fangrui Song <maskray@google.com>
> > > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > ---
> > >  arch/x86/boot/compressed/Makefile  | 12 ++----------
> > >  arch/x86/boot/compressed/head_32.S | 17 ++++++++---------
> > >  arch/x86/boot/compressed/head_64.S |  4 ++--
> > >  arch/x86/boot/compressed/mkpiggy.c |  6 ++++++
> > >  4 files changed, 18 insertions(+), 21 deletions(-)
> > >
> > > diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> > > index c829d874dcac..ae2c0dc98a6a 100644
> > > --- a/arch/x86/boot/compressed/Makefile
> > > +++ b/arch/x86/boot/compressed/Makefile
> > > @@ -51,16 +51,8 @@ UBSAN_SANITIZE :=n
> > >  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
> > >  # Compressed kernel should be built as PIE since it may be loaded at any
> > >  # address by the bootloader.
> > > -ifeq ($(CONFIG_X86_32),y)
> > > -KBUILD_LDFLAGS += $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
> > > -else
> > > -# To build 64-bit compressed kernel as PIE, we disable relocation
> > > -# overflow check to avoid relocation overflow error with a new linker
> > > -# command-line option, -z noreloc-overflow.
> > > -KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
> > > -       && echo "-z noreloc-overflow -pie --no-dynamic-linker")
> > > -endif
> > > -LDFLAGS_vmlinux := -T
> > > +LDFLAGS_vmlinux := $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
> > > +LDFLAGS_vmlinux += -T
> > >
> > >  hostprogs      := mkpiggy
> > >  HOST_EXTRACFLAGS += -I$(srctree)/tools/include
> > > diff --git a/arch/x86/boot/compressed/head_32.S b/arch/x86/boot/compressed/head_32.S
> > > index 8c1a4f5610f5..659fad53ca82 100644
> > > --- a/arch/x86/boot/compressed/head_32.S
> > > +++ b/arch/x86/boot/compressed/head_32.S
> > > @@ -178,18 +178,17 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
> > >  /*
> > >   * Do the extraction, and jump to the new kernel..
> > >   */
> > > -                               /* push arguments for extract_kernel: */
> > > -       pushl   $z_output_len   /* decompressed length, end of relocs */
> > > +       /* push arguments for extract_kernel: */
> > >
> > > -       pushl   %ebp            /* output address */
> > > -
> > > -       pushl   $z_input_len    /* input_len */
> > > +       pushl   output_len@GOTOFF(%ebx) /* decompressed length, end of relocs */
> > > +       pushl   %ebp                    /* output address */
> > > +       pushl   input_len@GOTOFF(%ebx)  /* input_len */
> > >         leal    input_data@GOTOFF(%ebx), %eax
> > > -       pushl   %eax            /* input_data */
> > > +       pushl   %eax                    /* input_data */
> > >         leal    boot_heap@GOTOFF(%ebx), %eax
> > > -       pushl   %eax            /* heap area */
> > > -       pushl   %esi            /* real mode pointer */
> > > -       call    extract_kernel  /* returns kernel location in %eax */
> > > +       pushl   %eax                    /* heap area */
> > > +       pushl   %esi                    /* real mode pointer */
> > > +       call    extract_kernel          /* returns kernel location in %eax */
> > >         addl    $24, %esp
> > >
> > >  /*
> > > diff --git a/arch/x86/boot/compressed/head_64.S b/arch/x86/boot/compressed/head_64.S
> > > index 11429092c224..9e46729cf162 100644
> > > --- a/arch/x86/boot/compressed/head_64.S
> > > +++ b/arch/x86/boot/compressed/head_64.S
> > > @@ -534,9 +534,9 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
> > >         movq    %rsi, %rdi              /* real mode address */
> > >         leaq    boot_heap(%rip), %rsi   /* malloc area for uncompression */
> > >         leaq    input_data(%rip), %rdx  /* input_data */
> > > -       movl    $z_input_len, %ecx      /* input_len */
> > > +       movl    input_len(%rip), %ecx   /* input_len */
> > >         movq    %rbp, %r8               /* output target address */
> > > -       movl    $z_output_len, %r9d     /* decompressed length, end of relocs */
> > > +       movl    output_len(%rip), %r9d  /* decompressed length, end of relocs */
> > >         call    extract_kernel          /* returns kernel location in %rax */
> > >         popq    %rsi
> > >
> > > diff --git a/arch/x86/boot/compressed/mkpiggy.c b/arch/x86/boot/compressed/mkpiggy.c
> > > index 7e01248765b2..52aa56cdbacc 100644
> > > --- a/arch/x86/boot/compressed/mkpiggy.c
> > > +++ b/arch/x86/boot/compressed/mkpiggy.c
> > > @@ -60,6 +60,12 @@ int main(int argc, char *argv[])
> > >         printf(".incbin \"%s\"\n", argv[1]);
> > >         printf("input_data_end:\n");
> > >
> > > +       printf(".section \".rodata\",\"a\",@progbits\n");
> > > +       printf(".globl input_len\n");
> > > +       printf("input_len:\n\t.long %lu\n", ilen);
> > > +       printf(".globl output_len\n");
> > > +       printf("output_len:\n\t.long %lu\n", (unsigned long)olen);
> > > +
> > >         retval = 0;
> > >  bail:
> > >         if (f)
> > > --
> > > 2.26.2
> > >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU_z-0Ehh3oGVY1tYkrjnuOXfMP7maRUvrmAMTH%2B6MdaQ%40mail.gmail.com.
