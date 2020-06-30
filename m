Return-Path: <clang-built-linux+bncBCS7XUWOUULBB3PP533QKGQEIISCHAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EFE20FFE8
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 00:08:46 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id a2sf6047708uaf.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 15:08:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593554925; cv=pass;
        d=google.com; s=arc-20160816;
        b=jB5GeOcVfLHZyjAH4RacFWUK1L7RZzbejUvDi5bjI536XEv1Htlz+eqNGHf1CMOmob
         +k64XlJDFA4UcY0p/pdHU5RUNIWm9J2CuR/AKJVovT6rBVw8ZCQQ+SjeEppbsrIkMB1R
         YqnAB81xe3vhhMMXFY7/P++YmKg9lPKT5NhG2fYCEaMozjp5dxHMwLA+Aa3uUaJYUzR4
         xhCL8kLQMBQMjW6knC52rwdrwWb68afXdKAcv/XTkAonCNuUFmg8qW3b/osDvXvoG1is
         Mt1fJ6I6bAqWe4QHuoKfgo38JnUNJpvKP9JpUVkDwLrs+H6A+HA5gtk6sMvyLsK41iJn
         x4MQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=DPry0tzRxDpF4hEpldqrvsunG493Pyo/aOi5JyF0bSc=;
        b=MDhxF8fNgqblPJ9Z4JS6wXrQTL7nsudPtRuPNhL0AFTvCBnL67ZN6AMNFIA8zcFE+R
         4oTOolXPd0HzCLq/g9649nM/8+U+o1vw25MvPA1xGd6yOjPJ3GfE3ZLVFznbA452P5r8
         O+Snh73XFqHXeti62WBX8G5ZjTRCjgmPaXj3XBJ+Ma2tl9OzkmiIBKmV6yulhvKANMXZ
         YUccmC4imN77OpdyVeb1PXLCfWgScpyzy7WadbzU6Zq8Em0VhqUmhKqUu5Ufn3dh8PNo
         oM5O6aJhQDCuKQD0oayD0MGY6wTEyHDIBSfxYZK4LsQcTqSu4XJ7n6Qq81+6XZIYibjI
         06vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P1jN7hrT;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DPry0tzRxDpF4hEpldqrvsunG493Pyo/aOi5JyF0bSc=;
        b=gSdo7UgCiFDHLeTtvG2oMEr6uVGEaLoYnBhnN7SSitZBbZ21GDhrvG6gCzzCti9IPT
         k/4JltnAWc66rqDMz+Op3999eaA1NL6JXqtApVXsUIqfcm2peIQt9IX4rXtoZXXWq7Vu
         +291hOy958EfpRIgsX/LDXNb6l97xM+yeHn+Qj7l8I96KOr2p8wxnnywAC3JPjAJ3Rwg
         /G8B53TAn9XkUwNB3Zmgc7HEHeLNwphDUPTrZdyWdCVMkUwLdDrR1COtyW+2d1U9kWBg
         NLTBq9LKapkfAXbDRHjELfQPklwfCLAc88A7g7zcaY92QD5z//5nbNfhqAaHUVskGVD8
         XGpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DPry0tzRxDpF4hEpldqrvsunG493Pyo/aOi5JyF0bSc=;
        b=BMYZwpZHCL6ym8xowFrLE+D6K/dYSyoIXx9yNi0nm1UeX2PGJtiWujtddImejnVNc6
         3PBZjsxNhFJwGkXKTYmW9B5iRTOSfK/MDuXsencF9mszH4VTYpvr9J3yQF4QkRdr+22J
         5PBo8aZqkTCGtA1DlFlu8v3pR31IzKmDD2CtLGcnOEM7NnBIL0eV8Js/A7W3Xch3vaiO
         Sul3rBTeUrfUSv6WQFEzcSfd1SvxEu7aVzprNXbsqTvS4dfvuzh2J+wrT7Hw66jsa40V
         EFcvzE4vr67zGYYIn5JDs9D5GBuj8t8ijzD5DH8v04ZDxR2lGZpDKpEzGx0YD2oZkA/d
         iMwA==
X-Gm-Message-State: AOAM532PZs0qvA6xBPYWf9mQDWBoAgkNStf3eGp7C7H0YrrjdzFKxmeA
	hgUvNGJR1ftKXUttyqkbOZ4=
X-Google-Smtp-Source: ABdhPJxNUhKMmJIUE/Mbp+McCqgDgC0ZYfYH3K/Kkog2uTFEbfjgl9aaKvLoN6s4R/rn03CfxfZvhw==
X-Received: by 2002:a67:ea18:: with SMTP id g24mr14874741vso.157.1593554925080;
        Tue, 30 Jun 2020 15:08:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d605:: with SMTP id n5ls5968vsj.11.gmail; Tue, 30 Jun
 2020 15:08:44 -0700 (PDT)
X-Received: by 2002:a05:6102:3188:: with SMTP id c8mr1834290vsh.61.1593554924697;
        Tue, 30 Jun 2020 15:08:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593554924; cv=none;
        d=google.com; s=arc-20160816;
        b=Kou8tbznBnf0c8RjJmGXAUxWKXS7+nVd49D0gNLzY3YAwBtCmrTn+1e869Grc8kdiV
         h26UVV8SLNlAcELsiZAd7WBaAjQ12X5zsldOxm5GfdPLYlshjh/RYdRlWeUE5gkvLLC6
         QkF/2da81dt5DpgI6Z2OhFU0Q1INiHXPeDCie/4A/UL/Nwt7dht1D6rCGiOSVRTaGe+n
         e1lLNbH+jrRKe8pUtS4ve4eXWkfbYz37h/wz2uV/tUipjCkA9YrGtEJ8nDWJY6RKr12J
         gDT+v/qjatA9aVzbg8MgWC+R8Y9ICO+DDP5D6URIhxsCXYpx0QgObG6IWcqB4GDoz4xF
         35JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JRbK+0YHHIIsxTnbZ87llwjlpqpRQpEg9t8681tVnaU=;
        b=zd/8jIq0BFgd0eNnPerNrH6Kpz8cqvkDm7+xlhBoSmR0dbJtxbHH5vioQUYkyPIvYt
         MlyQBtPJT/S/PEbOZy+WmkpscA73CQUT/SuGCFfTj20TY3rwIpD56Gz2cL77oRxbaGm/
         fxOwUFijV4ePy8V0sn0sw3Kz4c8CLmdiJufFlCHDHlERi6UoYTQT6Lkc6JQuxzLyP6t2
         9R7IQ9thw0waSEOczs09wxcmhA29ix37vW4DYsTdNV4Awszg/hWxDWO1QncedVjLTL47
         QJMSq4WTCU3ubhqE7Dq3qMAZOJk/aWWIvf+BRsaNR/vMyEkoz/WmpM+N6NhbpuqEiZxp
         zwSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P1jN7hrT;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id t63si306113vkt.2.2020.06.30.15.08.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 15:08:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id u5so10032036pfn.7
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 15:08:44 -0700 (PDT)
X-Received: by 2002:a17:902:c697:: with SMTP id r23mr9815458plx.35.1593554447222;
        Tue, 30 Jun 2020 15:00:47 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id s131sm3658364pgc.30.2020.06.30.15.00.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2020 15:00:46 -0700 (PDT)
Date: Tue, 30 Jun 2020 15:00:43 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>, Ard Biesheuvel <ardb@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 7/7] x86/boot: Check that there are no runtime
 relocations
Message-ID: <20200630220043.4snabunhgvfdktte@google.com>
References: <20200629140928.858507-8-nivedita@alum.mit.edu>
 <202006290907.E5EF18A@keescook>
 <CAMj1kXFge5aWL2BY8Y1=m1TonB+SrDq6p7TQWuO5JkzcR2dhjQ@mail.gmail.com>
 <202006290919.93C759C62@keescook>
 <20200629165603.GD900899@rani.riverdale.lan>
 <20200629173735.l3ssrj7m3q5swfup@google.com>
 <CAMj1kXHaXzYFkW_H=w36vMb1qPpuZXsnTd_giq4vsh0bw3S3eA@mail.gmail.com>
 <20200629233405.n56yb4xwlgxrt3fn@google.com>
 <CAMj1kXGTOdNiuU70pFB74UJ6z43AM-UViTSd3=ATV=94W+f1RA@mail.gmail.com>
 <20200630175408.GA2301688@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200630175408.GA2301688@rani.riverdale.lan>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=P1jN7hrT;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

* Ard Biesheuvel
> On Tue, 30 Jun 2020 at 01:34, Fangrui Song <maskray@google.com> wrote:
> >
> > On 2020-06-29, Ard Biesheuvel wrote:
> > >On Mon, 29 Jun 2020 at 19:37, Fangrui Song <maskray@google.com> wrote:
> > >>
> > >> On 2020-06-29, Arvind Sankar wrote:
> > >> >On Mon, Jun 29, 2020 at 09:20:31AM -0700, Kees Cook wrote:
> > >> >> On Mon, Jun 29, 2020 at 06:11:59PM +0200, Ard Biesheuvel wrote:
> > >> >> > On Mon, 29 Jun 2020 at 18:09, Kees Cook <keescook@chromium.org> wrote:
> > >> >> > >
> > >> >> > > On Mon, Jun 29, 2020 at 10:09:28AM -0400, Arvind Sankar wrote:
> > >> >> > > > Add a linker script check that there are no runtime relocations, and
> > >> >> > > > remove the old one that tries to check via looking for specially-named
> > >> >> > > > sections in the object files.
> > >> >> > > >
> > >> >> > > > Drop the tests for -fPIE compiler option and -pie linker option, as they
> > >> >> > > > are available in all supported gcc and binutils versions (as well as
> > >> >> > > > clang and lld).
> > >> >> > > >
> > >> >> > > > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > >> >> > > > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> > >> >> > > > Reviewed-by: Fangrui Song <maskray@google.com>
> > >> >> > > > ---
> > >> >> > > >  arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
> > >> >> > > >  arch/x86/boot/compressed/vmlinux.lds.S |  8 ++++++++
> > >> >> > > >  2 files changed, 11 insertions(+), 25 deletions(-)
> > >> >> > >
> > >> >> > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > >> >> > >
> > >> >> > > question below ...
> > >> >> > >
> > >> >> > > > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> > >> >> > > > index a4a4a59a2628..a78510046eec 100644
> > >> >> > > > --- a/arch/x86/boot/compressed/vmlinux.lds.S
> > >> >> > > > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> > >> >> > > > @@ -42,6 +42,12 @@ SECTIONS
> > >> >> > > >               *(.rodata.*)
> > >> >> > > >               _erodata = . ;
> > >> >> > > >       }
> > >> >> > > > +     .rel.dyn : {
> > >> >> > > > +             *(.rel.*)
> > >> >> > > > +     }
> > >> >> > > > +     .rela.dyn : {
> > >> >> > > > +             *(.rela.*)
> > >> >> > > > +     }
> > >> >> > > >       .got : {
> > >> >> > > >               *(.got)
> > >> >> > > >       }
> > >> >> > >
> > >> >> > > Should these be marked (INFO) as well?
> > >> >> > >
> > >> >> >
> > >> >> > Given that sections marked as (INFO) will still be emitted into the
> > >> >> > ELF image, it does not really make a difference to do this for zero
> > >> >> > sized sections.
> > >> >>
> > >> >> Oh, I misunderstood -- I though they were _not_ emitted; I see now what
> > >> >> you said was not allocated. So, disk space used for the .got.plt case,
> > >> >> but not memory space used. Sorry for the confusion!
> > >> >>
> > >> >> -Kees
> > >>
> > >> About output section type (INFO):
> > >> https://sourceware.org/binutils/docs/ld/Output-Section-Type.html#Output-Section-Type
> > >> says "These type names are supported for backward compatibility, and are
> > >> rarely used."
> > >>
> > >> If all input section don't have the SHF_ALLOC flag, the output section
> > >> will not have this flag as well. This type is not useful...
> > >>
> > >> If .got and .got.plt were used, they should be considered dynamic
> > >> relocations which should be part of the loadable image. So they should
> > >> have the SHF_ALLOC flag. (INFO) will not be applicable anyway.
> > >>
> > >
> > >I don't care deeply either way, but Kees indicated that he would like
> > >to get rid of the 24 bytes of .got.plt magic entries that we have no
> > >need for.
> > >
> > >In fact, a lot of this mangling is caused by the fact that the linker
> > >is creating a relocatable binary, and assumes that it is a hosted
> > >binary that is loaded by a dynamic loader. It would actually be much
> > >better if the compiler and linker would take -ffreestanding into
> > >account, and suppress GOT entries, PLTs, dynamic program headers for
> > >shared libraries altogether.
> >
> > Linkers (GNU ld and LLD) don't create .got or .got.plt just because the linker
> > command line has -pie or -shared.  They create .got or .got.plt if there are
> > specific needs.
> >
> > For .got.plt, if there is (1) any .plt/.iplt entry, (2) any .got.plt based
> > relocation (e.g. R_X86_64_GOTPC32 on x86-64), or (3) if _GLOBAL_OFFSET_TABLE_ is
> > referenced, .got.plt will be created (both GNU ld and LLD) with usually 3
> > entries (for ld.so purposes).
> >
> 
> This is not the case for AArch64. There, __GLOBAL_OFFSET_TABLE__ is
> always emitted, along with the magic .got.plt entries, regardless of
> the input.
> 
> As for the input objects - why is '#pragma GCC visibility(hidden)' not
> the default for -ffreestanding builds? This suppresses any GOT entries
> emitted by the compiler, but the only way to get this behavior is
> through the #pragma, which is how we ended up with '-include hidden.h'
> in a couple of places.

A -ffreestanding build may provide a shared object used by other
applications. For example, musl (libc)'s CFLAGS has -ffreestanding.

> IOW, if the toolchain behavior was not 100% geared towards shared
> executables as it is today, we would not need the hacks that we need
> to apply to get a relocatable bare metal binary like we need for the
> KASLR kernel.

My mere concern regarding "geared towards shared objects" is that ELF
assumes symbols of default visibility are preemptible by default.

So unfortunately it is difficult to make -fno-semantic-interposition the
default.

> If (1) is not satisfied, the created .got.plt is just served as an anchor for
> things that want to reference (the distance from GOT base to some point). The
> linker will still reserve 3 words but the words are likely not needed.
>
> I don't think there is a specific need for another option to teach the linker
> (GNU ld or LLD) that this is a kernel link.  For -ffreestanding builds, cc
> -static (ld -no-pie))/-static-pie (-pie) already work quite well.

On 2020-06-30, Arvind Sankar wrote:
>On Tue, Jun 30, 2020 at 06:26:43PM +0200, Ard Biesheuvel wrote:
>> On Tue, 30 Jun 2020 at 01:34, Fangrui Song <maskray@google.com> wrote:
>>
>> > If (1) is not satisfied, the created .got.plt is just served as an anchor for
>> > things that want to reference (the distance from GOT base to some point). The
>> > linker will still reserve 3 words but the words are likely not needed.
>> >
>> > I don't think there is a specific need for another option to teach the linker
>> > (GNU ld or LLD) that this is a kernel link.  For -ffreestanding builds, cc
>> > -static (ld -no-pie))/-static-pie (-pie) already work quite well.
>>
>> You mean 'ld -static -pie' right? That seems to work. Is that a recent
>> invention?
>
>gcc -static-pie is fairly recent [0], but it just influences how the
>linker is invoked AFAIK (at least for gcc) -- in addition to passing
>some linker flags, it will change what startup files get linked in (for
>non-freestanding). It does not even imply -fPIE to the compiler, which
>is confusing as hell. It _would_ be nice if this also told the compiler
>that all symbols (perhaps unless explicitly marked) will be resolved at
>static link time, so there is no need to use the GOT or PLT for globals.
>
>As it stands, the executable can still have relocations, GOT and PLT, it
>just needs to have startup code to handle them (provided by libc
>typically) instead of relying on an external dynamic linker.

If the executable is purely static, it does not need to have PLT. All
calls to a PLT can be redirected to the function itself.  Some range
extension thunks (other terms: stub groups, veneers, etc) may still be
needed if the distance is too large.

There are cases where a GOT cannot be avoided, e.g.

extern char foo[] __attribute__((weak, visibility("hidden")));
char *fun() { return foo; }

If foo is a SHN_ABS, `movq foo@GOTPCREL(%rip), %rax` can't be optimized
by GOTPCRELX (https://sourceware.org/bugzilla/show_bug.cgi?id=25749 binutils>=2.35 will be good)
Many other architectures don't even have a GOT optimization.

>I don't think it's really relevant for the kernel build -- all we get is
>ld -static --no-dynamic-linker, all -static does is prevent searching
>shared libraries, and we already pass --no-dynamic-linker if it's
>supported.
>
>[0] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81498

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200630220043.4snabunhgvfdktte%40google.com.
