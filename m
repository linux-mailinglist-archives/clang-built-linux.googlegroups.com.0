Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBXGTPXQKGQEDK5Y55A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FEE11205E
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Dec 2019 00:43:04 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id v35sf2691990pjv.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Dec 2019 15:43:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575416582; cv=pass;
        d=google.com; s=arc-20160816;
        b=KRWZ62eW2F+ZiLLyaRDLyqtBECrkEsRMIHbQ575sRTdABEmrsvwLT4uEKE26ghNtFm
         lE4ZPn9pLCiyinRjumtteDELniRwyXRpMCWgq+lsCWzzSDwj2Vl8B5araDfzO9YNz/PB
         KpcdYB5WrbP8IRj/D+uWIKP+eU8HCblNEXJTHYa+OS+73hz9R/UD1LtMLraFibWqNPLF
         uP/UCf8fLc9igp5qxNdFpX7j0TrEFMBXRHI/EO7DB84g1n4YQwXa7Zu5QpqeqvDLfkIo
         dS320uwB931hDDZ4QVDdjZ/8UZ7x4a3Z45CXGnewmeGUvGQ3TPH0VJL6cbLPq1e7o9lf
         wiOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pjPL3msHBVKmN5TCy5o/5NGIBn+0ZN6YudsqJduV5Bw=;
        b=bWEsqtB6r7Q2qJ8iv2EL+332GVyQeQ9KlUnX96UiqOe7j8/plUGZGdlKzopHW7vsPm
         ADxF/Q+fa1cyhwN31R0hSlF3RVnMD0qmKKV933AJ0s54E+ZU6NvTUlfP8nsX9DWo6w13
         b3L7sHdUr8+jx9cnt4i9HDP+lXF0PT/ncySOx3wh0L7veWcYSC7ctiNhT1Tu3qNeCOd4
         BfyU05uGWuG6zsS6sgPy4W2Gh34Jzk/uf18jT6u5l//v8EOjN0XSDpJ3OT6OuKnDAV7x
         T22nyCFK0lK+SZI+b4BmwrZU6azwlfX3xsdm2Wi7qNHqD9lZBYjh4arK3XJgvVMDoxfW
         U9EA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uBxB61F3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pjPL3msHBVKmN5TCy5o/5NGIBn+0ZN6YudsqJduV5Bw=;
        b=qNaAy8edyVMSPSyb3lcUcaY/ryGsJSil8Cp1hGV4MlZKRlQ+ng8zx4YAwSlugiKxgc
         cHewf1E2Mid9/XeL12z7LMD36kjUE9EaJbuRbz+nogLftjt95//cFNhSjb66knIwPANB
         FRA6fsaDfps8zGiWTwlOE0PU1iREYpKxL4263TSg4sQwWJD+C9rr/FJD/RgLZ4b+KFd3
         Eq4BPR0AunBWjYjoh69vwqSJqSwyre028UdYcO5ekJV3ZL/0P8aXQVh5jAIm67O6lKi3
         +6cLMemFQoW7+gWyVBNtOoqH69cHrpfg3D98prNLiXLk19BX6kmLC97/O0JVDZoQUGqw
         ADjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pjPL3msHBVKmN5TCy5o/5NGIBn+0ZN6YudsqJduV5Bw=;
        b=MzF7DSi+t9vo2jAC12TBg20RfHt3acRiRGSGLVTNZR+dAdOu8vUn77Z5/bJj7cfLjt
         +6MXIzFpskU5bpfweIfpAsINnlfSpASkJYOQtuFChKZ4SnurwcwyciJH9dQ8EMy7acY1
         Fl5WFtExWG28GxaSXlqJp2D+81jZBwW1mAmqLdAPSmzj2JNyptU/mej1gnr7bGl3bFXp
         416IoJNiNzPbYDIQfszbgW7/uYsdVBIF2f3Lpu8pmMD5YA4b9cfnYCRCyzqCViEhEo62
         2xSu2LHBnvLYXr6aJ/f+J4KE/m/SIqebnvAi2HUcEJTIteku/xFp230dXE30mzmcDJnO
         B5OQ==
X-Gm-Message-State: APjAAAVOVQjj1jMx73ZuGOQYFD6UEUD2gJ3F8g62Eg7AkUDbMJ/aVCdF
	1sRxF1tFuv8FsJUDBeLcEOg=
X-Google-Smtp-Source: APXvYqz2Bz+Qx35jWDRwuwxZP8UQxLGl0XtbtOh8bvj9JbgJqn4YROR7BhSpxC6k3pkQMHCnfn79Uw==
X-Received: by 2002:a63:dd16:: with SMTP id t22mr275586pgg.307.1575416582622;
        Tue, 03 Dec 2019 15:43:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f8d:: with SMTP id 13ls1153597pjz.0.gmail; Tue, 03
 Dec 2019 15:43:02 -0800 (PST)
X-Received: by 2002:a17:90a:a010:: with SMTP id q16mr24491pjp.115.1575416582167;
        Tue, 03 Dec 2019 15:43:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575416582; cv=none;
        d=google.com; s=arc-20160816;
        b=DBDB8mU+l79Oak9fiysSrlvqB0vz45qSt3Q+oL5upXfmZHemv3XmgTIDoUDGbccG9u
         WTu4QV7FeoB9kgx9dEVKyVNUnsULxJh0lyA7oAMXfeCWcdu61HeAh+FQlS6zwCwCTV6T
         qv6fGAAxx0VCIxSBNDvMwQRepseC5ysh4rbcMnRUKLuSr7yoQjyVRzrFseZn3GV1bqOa
         3ltqD55hB4lFisUlZQq0iG6wLxsS5OOWcqqfMn0WeOjACe45uXJsRlubpdEnd8RVzldk
         mK/fQKIDcep/80Zo3TIMSpWvBNS6G4VftZr8Okix1X24/yoMIv8mwX059eFZFNnc1+J/
         +RUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1OxHtutk6hA28dBcP13TAqzlvKk2lKOdJ3WPlSn/d8Q=;
        b=Cx+nd+bbqATyOv9fbWUz3S5Q740XQ4Xf9aTCy0vnakmk6KASbnUXAQQb+v5QmmOLn9
         o05+wTcpJ33ffgNOSad1O+LRnM+rFU0kYAAMY/efZcDfNBKowPOW9l2fu1aQU+UY8O7J
         IOZzeJP7MnSe/G77Rau28vpzprswnnG2Q3wbn+yAVOd5iZA0US+UrdQlTisWXM13w3fw
         C7lcw30DXTSeICbFXOnU0jRsUwIwy7y49nUTRuQRiIL8ygnsHwRz0Hsqc+ZO8t/5dZ2K
         1QDYSLwgG+73pXOKa4cUPFFgOp7zoNikLjAP13E3OPe6YH1gGgCUp6/yNFy4B4t6EvRE
         ZLfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uBxB61F3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id j2si291720pfi.1.2019.12.03.15.43.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Dec 2019 15:43:02 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id w7so2313590plz.12
        for <clang-built-linux@googlegroups.com>; Tue, 03 Dec 2019 15:43:02 -0800 (PST)
X-Received: by 2002:a17:902:8ec8:: with SMTP id x8mr519623plo.119.1575416581305;
 Tue, 03 Dec 2019 15:43:01 -0800 (PST)
MIME-Version: 1.0
References: <20191122185522.20582-1-ndesaulniers@google.com> <nycvar.YSQ.7.76.1911291614480.8537@knanqh.ubzr>
In-Reply-To: <nycvar.YSQ.7.76.1911291614480.8537@knanqh.ubzr>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Dec 2019 15:42:50 -0800
Message-ID: <CAKwvOdmAFp=p=z8bhaRHf8uRhUBKpoAYtissyLTk5DC8f-=BUw@mail.gmail.com>
Subject: Re: [PATCH] arm: explicitly place .fixup in .text
To: Nicolas Pitre <nico@fluxnic.net>, Manoj Gupta <manojgupta@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Cc: Russell King - ARM Linux <linux@armlinux.org.uk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>, 
	"# 3.4.x" <stable@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uBxB61F3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Fri, Nov 29, 2019 at 1:33 PM Nicolas Pitre <nico@fluxnic.net> wrote:
>
> On Fri, 22 Nov 2019, Nick Desaulniers wrote:
>
> > From: Kees Cook <keescook@chromium.org>
> >
> > There's an implicit dependency on the section ordering of the orphaned
> > section .fixup that can break arm_copy_from_user if the linker places
> > the .fixup section before the .text section. Since .fixup is not
> > explicitly placed in the existing ARM linker scripts, the linker is free
> > to order it anywhere with respect to the rest of the sections.
> >
> > Multiple users from different distros (Raspbian, CrOS) reported kernel
> > panics executing seccomp() syscall with Linux kernels linked with LLD.
> >
> > Documentation/x86/exception-tables.rst alludes to the ordering
> > dependency. The relevant quote:
> >
> > ```
> > NOTE:
> > Due to the way that the exception table is built and needs to be ordered,
> > only use exceptions for code in the .text section.  Any other section
> > will cause the exception table to not be sorted correctly, and the
> > exceptions will fail.
> >
> > Things changed when 64-bit support was added to x86 Linux. Rather than
> > double the size of the exception table by expanding the two entries
> > from 32-bits to 64 bits, a clever trick was used to store addresses
> > as relative offsets from the table itself. The assembly code changed
> > from::
> >
> >     .long 1b,3b
> >   to:
> >           .long (from) - .
> >           .long (to) - .
> >
> > and the C-code that uses these values converts back to absolute addresses
> > like this::
> >
> >         ex_insn_addr(const struct exception_table_entry *x)
> >         {
> >                 return (unsigned long)&x->insn + x->insn;
> >         }
> > ```
> >
> > Since the addresses stored in the __ex_table are RELATIVE offsets and
> > not ABSOLUTE addresses, ordering the fixup anywhere that's not
> > immediately preceding .text causes the relative offset of the faulting
> > instruction to be wrong, causing the wrong (or no) address of the fixup
> > handler to looked up in __ex_table.
>
> This explanation makes no sense.
>
> The above is valid only when ARCH_HAS_RELATIVE_EXTABLE is defined. On
> ARM32 it is not, nor would it make sense to be.

Hmm...I thought that was the smoking gun. From the description in
Documentation, I thought they meant that exception table entry lookup
was changed to be homogeneous for 32b AND 64b arch's, but as you point
out they're not.  Now with the reference to ARCH_HAS_RELATIVE_EXTABLE,
I know to look through:
include/asm-generic/extable.h
include/linux/extable.h
lib/extable.c
kernel/extable.c
arch/arm/mm/extable.c
arch/arm/mm/fault.c (__do_kernel_fault() calls fixup_exception(),
which is of interest).

Looks like the exception table is sorted by address of faulting
instruction, then binary searched when an exception occurs.  Seems the
exception table is like an array of pairs of addresses (address of
faulting instruction from the get_user() call, address of fixup
handler) (when !ARCH_HAS_RELATIVE_EXTABLE), IIUC.

Reviewing the logs from the bugreport
(https://bugs.chromium.org/p/chromium/issues/detail?id=1020633#c44)
indeed the error string looks like the error message from
__do_kernel_fault() in arch/arm/mm/fault.c where a call to
fixup_exceptions() in arch/arm/mm/extable returned 1 because the call
to search_exception_tables() in kernel/extable.c returned NULL.

So I was right that `no address of the fixup handler to (be) looked up
in __ex_table`, but not quite right about *why* it fails to be looked
up.

search_exception_tables() in kernel/extable.c calls 3 functions:
1. search_kernel_exception_table()
2. search_module_extables()
3. search_bpf_extables()

So the next question is which one of the above should have found the
exception table entry, and why did it not when LLD placed the orphaned
.fixup section BEFORE .text?  All three of the above do some
processing on the address but in the end all call search_extable().

I really don't think kernel modules are involved.

Since we're observing the fault via a call to seccomp(), which IIUC
takes a BPF program when setting a filter (SECCOMP_SET_MODE_FILTER),
I'm curious to look into search_bpf_extables() first.  Maybe
constructing a BPF program involves insertion of special exception
handler?  Looks like bpf programs are stored in an rb_tree called
bpf_tree.  They have an auxiliary field that contains a pointer to an
exception table entry.  "Auxiliary" makes it sounds optional, and the
only assignment I can find to this field is in
arch/x86/net/bpf_jit_comp.c, so I doubt it's relevant for arm.  It
also just looks like it's zero initialized (bpf_prog_alloc_no_stats()
in kernel/bpf/core.c) for arch generic code.

That leaves just search_kernel_exception_table().  I wonder if it
fails because we put garbage entries in, or sorted it improperly?

Oh, and messing around with grep, it looks like entries to the
exception table can be sorted at build time rather than boot time via
CONFIG_BUILDTIME_EXTABLE_SORT?

I don't see the pr_notice from sort_main_extable() (kernel/extable.c
called from start_kernel() in init/main.c) in the bugreports:
https://bugs.chromium.org/p/chromium/issues/attachmentText?aid=421842
https://github.com/ClangBuiltLinux/linux/issues/282
(But IIRC, the log level may not be set to display these).

CONFIG_BUILDTIME_EXTABLE_SORT is selected by arch/arm/Kconfig if
CONFIG_MMU, which I highly suspect is already selected for the above
two reports. (Would an arm32 based chromebook not have an MMU? I doubt
it.)

So there may be an ordering dependency in scripts/sortextable.{c|h}?
Neither mention `fixup`.

Will continue debugging more tomorrow or later this week, but please
stop me if any of the above is also incorrect.  Some ideas for further
experiments:
- scripts/check_extable.sh sounds like some kind of validator.
Manoj/Nathan, I wonder if you linked the problematic kernel with LLD
than ran `./scripts/check_extable.sh vmlinux` if it would warn? Dunno
about all those command line flags though.
- if we apply a similar diff to the patch I posted, but force .fixup
to be before .text for BFD (as LLD is placing the orphaned section
currently), relinked with BFD and could reproduce the issue, that
seems like proof about the implicit section ordering.
```
diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index 319ccb10846a..adfb5297f359 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -58,6 +58,7 @@ SECTIONS
 #ifdef CONFIG_ARM_MPU
        . = ALIGN(PMSAv8_MINALIGN);
 #endif
+       .fixup : { *(.fixup) }
        .text : {                       /* Real text segment            */
                _stext = .;             /* Text and read-only data      */
                ARM_TEXT
```

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmAFp%3Dp%3Dz8bhaRHf8uRhUBKpoAYtissyLTk5DC8f-%3DBUw%40mail.gmail.com.
