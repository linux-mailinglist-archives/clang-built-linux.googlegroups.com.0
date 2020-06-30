Return-Path: <clang-built-linux+bncBD63HSEZTUIBBUGP5X3QKGQES6732BY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1566B20F967
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 18:26:58 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id a52sf3590065qtk.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 09:26:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593534417; cv=pass;
        d=google.com; s=arc-20160816;
        b=b4QlQBZKHJQBlUTZ+dhmfOeth9J/yKXKmgkolSA7yYY9AYq9XQvRU6bmCmet811aVc
         X+u3IXcIMO4+4+AuN6YeWXd+3OP0XWSrUKCdBnmKednIEdS4PpZ+s2xcXN0oGDnc98i/
         6JXYTN4b9rU1zZ43khVteuDGrYxn2LcrPzk0Wykl1fIWQCa603rg/YX5ui708/3fiyIh
         BiU06bJUWXw+Xd4bjOWI57Gs0UI4Rjw1SBb4T50dwddqAKr4N+/gymAVahznTby8Hd2s
         8yReBOu2U08GoTHJ4MIEOgCvIs0GT5CUkjb6QXdqY4WHG9Q7NotfACHnOKoLcqj5bK+K
         yUOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4OaFW8Ghz7BKsCOUiAY800o7rnorCIJ3q7kDDcECxh0=;
        b=XH9Vl705+q2sPfg8XIDsmuNmpJdjdwTuLirV9DWuL6oiihfiHA8P3CtuPCKz6x9qh7
         gazF3SbSRHlI18gAfdxpNBq9yMR165epVXJafkPHc/ZTdZqqILVyefim83TleqOL+1rE
         uG3eqZkOsxmba0rVNvQ+0NShfSgFDUi2K+FcaH4G/ATEpdvP9OEQXsLqL7L29i/WsrY1
         HCCThrLub0uF5SxGbuaPtoce/0Q/dlqV0A3RnFDrtw6JjtexG+HdrHs1pVH9V2rsy7CT
         5tSfLtZea8zVEzKzUO2hzpUOUD1UaRQRCDuppm4dPxevdlLK9k8B6d+5Zqp+a4lYgusI
         h1eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LwsGhl86;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4OaFW8Ghz7BKsCOUiAY800o7rnorCIJ3q7kDDcECxh0=;
        b=c3mzuSEftaQbDtB99GlL/w2l0qPvyqdTNdSeIw9v3Bgm4G5sJs9UaGOYPhlsd/24MZ
         x3fxUIy18smD6VdJSj4JNe5zeIfa9y3XQ8TBvHuaChcGEkuLtfsiIeiBv2Q82xTp7H9k
         umWN+yPf1RR/M/xvOVydbtacqPvp/ulGg+H1KyfElQsTs7xurIvuZ1tUoRgAPBAfoUGx
         xciOENJOXYffgmz+gIAVqW8ZilwlzmQnfYGisSLtLT1c5Bx8QnxgUmd790JsAxx/VVZU
         TjDvbA6l0I98mX4WpKZxYU8j20/5ifOZfszMlY24Wh3hHyI0RWww9HFXHd5XYeZE65f9
         dwYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4OaFW8Ghz7BKsCOUiAY800o7rnorCIJ3q7kDDcECxh0=;
        b=VfL9ocE4x7XY+s6r9DvhFlvdJRca2vz3w21Rnq2OQAy+/TpU+rkhCWzyZACv7LGZ/6
         9Mxoo/BngBcG3zZUEwAfg4XdHQbcjGkgNx+dcpASg+sjmTotGqhA+962jvOEpmQov92r
         sbY065u/FUAAoNaCCj5EUELs7XTJMWWhPrAPi9U95zeSv+DjjbQ6r0u7HbkywT7Qy7tT
         cErTfNkxVXH0tdnVktWlwSmhQ/gPHoZO1j9hJxWfdC4rXcZJrvz4GlrJdQij90+kj75R
         f7Vnq8qnftEZxj+FY79yQUcP9CclFPNPS3Punfx1Gn3JPUpOOrulnkfmanj8jcDSZ4Aw
         GaRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530D3U4qw3fkF9IoNqaVqZDkz5vA8x4K8XE8QNkNDFwVNdPhowwY
	4skY6DrXbs8ijjYYV2aYWKM=
X-Google-Smtp-Source: ABdhPJw7b4G/Pl0nI2HBhN6tgq6vJPuP/fg9htDErNOCnoQpoawLMTI23181L/a+hov6hXloJUJESw==
X-Received: by 2002:aed:2437:: with SMTP id r52mr22606176qtc.140.1593534416859;
        Tue, 30 Jun 2020 09:26:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7d83:: with SMTP id y125ls4268243qkc.4.gmail; Tue, 30
 Jun 2020 09:26:56 -0700 (PDT)
X-Received: by 2002:a05:620a:633:: with SMTP id 19mr20797863qkv.372.1593534416493;
        Tue, 30 Jun 2020 09:26:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593534416; cv=none;
        d=google.com; s=arc-20160816;
        b=pZSrk/26h0oiwbdA/TtSbCyCgAtFHPPVvVF5tukHfHDbklHaPJCwSnKOoRh9XoKeE9
         ykjS51HbUfaUbHYXXpeTPu9DGiX2WyUgOrG6SYsF7NW4N+/smFrGnJaaFFPWlpmWNfyI
         cq+vZ7N5JltqwQt1gCHYVvTdbSCVsafldHzGdQNLuHgSUpwlLXCJrwvRUYGFNxXQxVuL
         5EexnypvLsKaJlW5JIn3i8UFaVRTnBA3bGad0aK1pRFquCQPeBNzwwpKX60IYCbQPYgh
         OiwEfqkIDNqCNh7kKCg5ZrldUD2xH3ht9UEK45fsCvAqXkfBqyj6VodrBU6LV/cPUQ+v
         Z4mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Srqb7jTYmGvRrP+FgPzJef1tHFsogRCUzoVhouQIwh8=;
        b=dz7azLk9E9D/4m6xmLMQkmGKyup4awSHGvQ2eqPnUSiMqebduVtRwXF3db4gyih8V6
         LCy0kPNGMGzsWgsWeg4VMIEfVh3RA89m1AUH+zoAHru7nvM/JFp3QnIWKbsqGSmgHx83
         KJ1CKLQNwTAQ2uCtUDR90LUF3tKoCPOGXbalObMNDj95RlDiDPVkYsyrKzVtmkiKgUK4
         f6/4LWbkcOu91TvmIKHWRx4mD6P8YzXjsKmVuWz95ZMhPHUWCI2/JszKD2+lRYNyaVeZ
         8LnCt3L6LDAT4d/AF0lW3XA0KDkqU5lmR2PpyBLf7xUvinwWShSBe1DJBgcETCSaD8k9
         oMGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LwsGhl86;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q14si145887qtn.4.2020.06.30.09.26.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 09:26:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 51C19206BE
	for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 16:26:55 +0000 (UTC)
Received: by mail-ot1-f51.google.com with SMTP id n6so18917270otl.0
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 09:26:55 -0700 (PDT)
X-Received: by 2002:a9d:5a12:: with SMTP id v18mr17948123oth.90.1593534414633;
 Tue, 30 Jun 2020 09:26:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-8-nivedita@alum.mit.edu> <202006290907.E5EF18A@keescook>
 <CAMj1kXFge5aWL2BY8Y1=m1TonB+SrDq6p7TQWuO5JkzcR2dhjQ@mail.gmail.com>
 <202006290919.93C759C62@keescook> <20200629165603.GD900899@rani.riverdale.lan>
 <20200629173735.l3ssrj7m3q5swfup@google.com> <CAMj1kXHaXzYFkW_H=w36vMb1qPpuZXsnTd_giq4vsh0bw3S3eA@mail.gmail.com>
 <20200629233405.n56yb4xwlgxrt3fn@google.com>
In-Reply-To: <20200629233405.n56yb4xwlgxrt3fn@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 30 Jun 2020 18:26:43 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGTOdNiuU70pFB74UJ6z43AM-UViTSd3=ATV=94W+f1RA@mail.gmail.com>
Message-ID: <CAMj1kXGTOdNiuU70pFB74UJ6z43AM-UViTSd3=ATV=94W+f1RA@mail.gmail.com>
Subject: Re: [PATCH v3 7/7] x86/boot: Check that there are no runtime relocations
To: Fangrui Song <maskray@google.com>
Cc: Kees Cook <keescook@chromium.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Dmitry Golovin <dima@golovin.in>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Daniel Kiper <daniel.kiper@oracle.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"H . J . Lu" <hjl@sourceware.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LwsGhl86;       spf=pass
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

On Tue, 30 Jun 2020 at 01:34, Fangrui Song <maskray@google.com> wrote:
>
> On 2020-06-29, Ard Biesheuvel wrote:
> >On Mon, 29 Jun 2020 at 19:37, Fangrui Song <maskray@google.com> wrote:
> >>
> >> On 2020-06-29, Arvind Sankar wrote:
> >> >On Mon, Jun 29, 2020 at 09:20:31AM -0700, Kees Cook wrote:
> >> >> On Mon, Jun 29, 2020 at 06:11:59PM +0200, Ard Biesheuvel wrote:
> >> >> > On Mon, 29 Jun 2020 at 18:09, Kees Cook <keescook@chromium.org> wrote:
> >> >> > >
> >> >> > > On Mon, Jun 29, 2020 at 10:09:28AM -0400, Arvind Sankar wrote:
> >> >> > > > Add a linker script check that there are no runtime relocations, and
> >> >> > > > remove the old one that tries to check via looking for specially-named
> >> >> > > > sections in the object files.
> >> >> > > >
> >> >> > > > Drop the tests for -fPIE compiler option and -pie linker option, as they
> >> >> > > > are available in all supported gcc and binutils versions (as well as
> >> >> > > > clang and lld).
> >> >> > > >
> >> >> > > > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> >> >> > > > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> >> >> > > > Reviewed-by: Fangrui Song <maskray@google.com>
> >> >> > > > ---
> >> >> > > >  arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
> >> >> > > >  arch/x86/boot/compressed/vmlinux.lds.S |  8 ++++++++
> >> >> > > >  2 files changed, 11 insertions(+), 25 deletions(-)
> >> >> > >
> >> >> > > Reviewed-by: Kees Cook <keescook@chromium.org>
> >> >> > >
> >> >> > > question below ...
> >> >> > >
> >> >> > > > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> >> >> > > > index a4a4a59a2628..a78510046eec 100644
> >> >> > > > --- a/arch/x86/boot/compressed/vmlinux.lds.S
> >> >> > > > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> >> >> > > > @@ -42,6 +42,12 @@ SECTIONS
> >> >> > > >               *(.rodata.*)
> >> >> > > >               _erodata = . ;
> >> >> > > >       }
> >> >> > > > +     .rel.dyn : {
> >> >> > > > +             *(.rel.*)
> >> >> > > > +     }
> >> >> > > > +     .rela.dyn : {
> >> >> > > > +             *(.rela.*)
> >> >> > > > +     }
> >> >> > > >       .got : {
> >> >> > > >               *(.got)
> >> >> > > >       }
> >> >> > >
> >> >> > > Should these be marked (INFO) as well?
> >> >> > >
> >> >> >
> >> >> > Given that sections marked as (INFO) will still be emitted into the
> >> >> > ELF image, it does not really make a difference to do this for zero
> >> >> > sized sections.
> >> >>
> >> >> Oh, I misunderstood -- I though they were _not_ emitted; I see now what
> >> >> you said was not allocated. So, disk space used for the .got.plt case,
> >> >> but not memory space used. Sorry for the confusion!
> >> >>
> >> >> -Kees
> >>
> >> About output section type (INFO):
> >> https://sourceware.org/binutils/docs/ld/Output-Section-Type.html#Output-Section-Type
> >> says "These type names are supported for backward compatibility, and are
> >> rarely used."
> >>
> >> If all input section don't have the SHF_ALLOC flag, the output section
> >> will not have this flag as well. This type is not useful...
> >>
> >> If .got and .got.plt were used, they should be considered dynamic
> >> relocations which should be part of the loadable image. So they should
> >> have the SHF_ALLOC flag. (INFO) will not be applicable anyway.
> >>
> >
> >I don't care deeply either way, but Kees indicated that he would like
> >to get rid of the 24 bytes of .got.plt magic entries that we have no
> >need for.
> >
> >In fact, a lot of this mangling is caused by the fact that the linker
> >is creating a relocatable binary, and assumes that it is a hosted
> >binary that is loaded by a dynamic loader. It would actually be much
> >better if the compiler and linker would take -ffreestanding into
> >account, and suppress GOT entries, PLTs, dynamic program headers for
> >shared libraries altogether.
>
> Linkers (GNU ld and LLD) don't create .got or .got.plt just because the linker
> command line has -pie or -shared.  They create .got or .got.plt if there are
> specific needs.
>
> For .got.plt, if there is (1) any .plt/.iplt entry, (2) any .got.plt based
> relocation (e.g. R_X86_64_GOTPC32 on x86-64), or (3) if _GLOBAL_OFFSET_TABLE_ is
> referenced, .got.plt will be created (both GNU ld and LLD) with usually 3
> entries (for ld.so purposes).
>

This is not the case for AArch64. There, __GLOBAL_OFFSET_TABLE__ is
always emitted, along with the magic .got.plt entries, regardless of
the input.

As for the input objects - why is '#pragma GCC visibility(hidden)' not
the default for -ffreestanding builds? This suppresses any GOT entries
emitted by the compiler, but the only way to get this behavior is
through the #pragma, which is how we ended up with '-include hidden.h'
in a couple of places.

IOW, if the toolchain behavior was not 100% geared towards shared
executables as it is today, we would not need the hacks that we need
to apply to get a relocatable bare metal binary like we need for the
KASLR kernel.


> If (1) is not satisfied, the created .got.plt is just served as an anchor for
> things that want to reference (the distance from GOT base to some point). The
> linker will still reserve 3 words but the words are likely not needed.
>
> I don't think there is a specific need for another option to teach the linker
> (GNU ld or LLD) that this is a kernel link.  For -ffreestanding builds, cc
> -static (ld -no-pie))/-static-pie (-pie) already work quite well.

You mean 'ld -static -pie' right? That seems to work. Is that a recent
invention?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGTOdNiuU70pFB74UJ6z43AM-UViTSd3%3DATV%3D94W%2Bf1RA%40mail.gmail.com.
