Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBCPKQ2AAMGQEJNCK4FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A45D2F7F86
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 16:30:18 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id j28sf4435383oig.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 07:30:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610724617; cv=pass;
        d=google.com; s=arc-20160816;
        b=cDuxmlQya3QjbGCP9regrqRvzctnr7ZmiR/uB8laYdORaWPALRxW93OkQunBWRPuiG
         Aj977RRsTkpIGLROgB0BWzY576mUuwg755jlJXEx+1QRT3kuySZmxTQB5/EgeBZUgzLt
         3x7JT9zLqhqkgQxqUHHp4gOb/M8OxREUOt3TVEbD7i0K2fsUvurulsIeybp/SeEd/jae
         InHFuWVLd/HSQLzkiwj8aCMQuB6asPB/UZT7PFoHNa3QhBqJdM7e6nsLlJfkg1BmKudt
         mwWjHVpwh3KjKngQvNfFiiDW1/jHW1ypoOZJ3DRMoJwOhJoq9l2awYtEcj4aPzbk56nm
         zEUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=MJjmPxKd3QOF/9uKeNuD4maTtBO4b8vP93mhX5POxdk=;
        b=oJJnBKl+M2NZqi9r+OQt0KT307MFS7u322eUrRMO4nmOuBEZ9iWkklIVq2yRTWgkCh
         ZMf3AAVI1S36JiqyuAY5qPEiHUijdIx3XAYaAofVlGdbfmI69JrjRr+N5Rn9HzXCso7N
         lpFHJ0vQlBg6Mz1l07pfYuMVIRfJQO7Us018/xkNmt42mtP1bliOt5rASTcgNypTqou8
         t96zCOh3mBbc4T9O0PJagXZWtaLN6ka0HXf0lrLo2YZp7CMxz7laXYWqNejrZbZ2N+DH
         xYQnk/LOiGkiHRf+RA4llmSz7gtzGTCMSbeItAGl8siDtcsJPm7HbEoQvr8HIpMvj7bq
         IiOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NXSO1eFy;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MJjmPxKd3QOF/9uKeNuD4maTtBO4b8vP93mhX5POxdk=;
        b=RL1SEHJ3TzulP2+JsQQiqwNNUVFwsbapfpn9J7zv+a0TuJTl1CHduAeqqE466+TZIl
         8z/aRYVuU2xLtIqROJ9HVKWUTDjzounfDjwx48CaGXZjZ+3NM4wqNvW942Nacniah9t3
         4o8DotllLu2pCOz/iMEJ+xoVrAC1q79LawM6g4UDiupHO7YZDAMUsYUYmZLNDIqbcAx2
         cA29ElYSiVfXX7BgYrrOTf8ztIkPeCA/EtKvf77M+Tj3Lvl1tTVAVbixTMFd9ax/kFjU
         mXRV6DHl678pvgGHwFaQzUPhrL8Plj6Z3BQtZSuSoMsKy/KpqqBV5K31gWeKXs5daSio
         B5gg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MJjmPxKd3QOF/9uKeNuD4maTtBO4b8vP93mhX5POxdk=;
        b=o9aYzHigBu8G0ker6q9yVRQM4g5ME8RuwPUM6KLTp6HUMCkynKwiZE+XrJrAoMUNg5
         JUXrn/QLF7zKvJn/la8DoR0eF82CAnOMpw7e6vNRUvZ7G4LJUT5aYdXcAJ5shAh146s6
         et6TFJinxre53NS+KNNhfJK/rDO464HgPcUBFxJUOl5dLMzo6aszIep7eihOs3JXqsh4
         yShhi65QTY9TRdeV+XRmhpkUPkc5ll/GculP2INQHHfqznMB1CN+GlZTjtu9MaueQdhS
         bHeWhROd5zGOc7uo7KM7tyZa3ffaheHBTBL+YDd+i1u+LZix065cGbLKTzJnn4Jrugq/
         H6OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MJjmPxKd3QOF/9uKeNuD4maTtBO4b8vP93mhX5POxdk=;
        b=BgwcVHOVi2y2GxPxLEFNfDWzSewEH6ZFSWMEn3kpNg7GUg770inESlEv+I1zWgFAaW
         WanAn4H7JBKI19TyqdQcfiu9JTnNCgf8SKZa78IIX/746LjSpOrOBulbK2txleSr1K8j
         bwOTXVQgjZPE67PyyfmIciR9YLku5oX/XK0DGhwnqI1NI+x4h5nz4eSZ04wBh8S8/vNB
         DjTEciciVXnCoImzd90PkLpRyZ4HvioAkhtpb6cj2DI6CCO3J3UUnlDFVnRzT3pQsley
         2E3+c6OaOgA6iqDwfjp3YEyHS+T1wTLfvQhfECEO92TS9Or7kQ+7wYWDcK1jq25bPnXh
         C+wQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EBPGfT/yHQcnd9PKydkHBbiAtRzKjxKJUNnvix2dq4qbXgqy2
	rMlGNAs2dxtG+dd2p2XzoIo=
X-Google-Smtp-Source: ABdhPJxXuHqurt3OMlfdp5TCjAo/88zgXdmN8GxSZ/EFaoGEREc8WIsGWebFA7CFZFv4t0fdqhiTmw==
X-Received: by 2002:aca:54d8:: with SMTP id i207mr5935396oib.101.1610724617459;
        Fri, 15 Jan 2021 07:30:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6841:: with SMTP id c1ls2363341oto.8.gmail; Fri, 15 Jan
 2021 07:30:17 -0800 (PST)
X-Received: by 2002:a05:6830:12:: with SMTP id c18mr8981222otp.283.1610724616995;
        Fri, 15 Jan 2021 07:30:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610724616; cv=none;
        d=google.com; s=arc-20160816;
        b=EAE4ndZpiO3GIZ/US9AYjT6G4uhjvrEPZxD7D6o7oHHMkERFAx2/sAElf9lX7yrLWA
         /DuIIdheDmy4Gj2bMMRO3w09L/9E/i7iVHuUxqMy1aJ97Ajx8kiEOnvMobkAY7wX/pPa
         hSruoXcppKKXJMS7HugaPACeONTodlnbXnVdKam34V5xp3C/4HxCUj81JAP3P8rKV85w
         0Ak69ntBLkBWiTGPmDH0Lkgxa5lTToMUer5poGU1fZYsaKx8g+BP3wakr7NCGY0PfjNX
         Nlg4UqDy3M3Rb/P48VfkXwQxYb1VNKn32u7EowlDqnzZfVhTzu22wbDoW4nsltPfZa6R
         b/3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9tGP6LLQ137anIQKqmX6+3qkciwULnuVTeg/pgmzRE8=;
        b=mjrLYSQR1JuofWHlcy+n7wOEbnYHCdbRjI2h49p9zj6F0jF6kkk0l7WaqhHwMX0RfY
         xu3E90G9xzqcYvZshMxL28DPD5kCVLcaAtlRxhUEhHwq3eHmfcRKVLU59PnFhtqN/Yby
         oIBe+oA4xTvk4LuIymXOaIMUF1aaaAtrD4RjzIc48Ply1gt908Z37yDMknotY3v3yzDk
         LqDJr3qIlHUaGZ4wtFREw4eIIKV1yyhTeJcO+bsO0CwpGIIgy46ZZ7zsVNrV7bDOvyr1
         S4ytakqCzxVqARpgfX61k3ZI2aptK/VvL+snRdLkWCVmw4icch8zA2R3rErK/AP0PIsy
         sKdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NXSO1eFy;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com. [2607:f8b0:4864:20::d2c])
        by gmr-mx.google.com with ESMTPS id 7si635183otq.5.2021.01.15.07.30.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 07:30:16 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) client-ip=2607:f8b0:4864:20::d2c;
Received: by mail-io1-xd2c.google.com with SMTP id n4so18750697iow.12
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 07:30:16 -0800 (PST)
X-Received: by 2002:a5e:9b06:: with SMTP id j6mr8945465iok.171.1610724616587;
 Fri, 15 Jan 2021 07:30:16 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610652862.git.jpoimboe@redhat.com> <CA+icZUV1a-DEf-dTm8MyyBbp_VYmW5WwJPF9DQb=yJHPykJASQ@mail.gmail.com>
In-Reply-To: <CA+icZUV1a-DEf-dTm8MyyBbp_VYmW5WwJPF9DQb=yJHPykJASQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 15 Jan 2021 16:30:05 +0100
Message-ID: <CA+icZUVc0M3Ydf=SKSV2MhDmdb49nGSrN-9TjYvjL25vmDHaeQ@mail.gmail.com>
Subject: Re: [PATCH 00/21] objtool: vmlinux.o and CLANG LTO support
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: x86@kernel.org, linux-kernel@vger.kernel.org, 
	Peter Zijlstra <peterz@infradead.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Miroslav Benes <mbenes@suse.cz>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NXSO1eFy;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2c
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

On Fri, Jan 15, 2021 at 5:51 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Jan 14, 2021 at 8:40 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > Add support for proper vmlinux.o validation, which will be needed for
> > Sami's upcoming x86 LTO set.  (And vmlinux validation is the future for
> > objtool anyway, for other reasons.)
> >
> > This isn't 100% done -- most notably, crypto still needs to be supported
> > -- but I think this gets us most of the way there.
> >
> > This can also be found at
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux
> >
> > And for more testing it can be combined with Sami's x86 LTO patches:
> >
> >   https://github.com/samitolvanen/linux clang-lto
> >
> >
> >
> > Josh Poimboeuf (21):
> >   objtool: Fix seg fault in BT_FUNC() with fake jump
> >   objtool: Fix error handling for STD/CLD warnings
> >   objtool: Fix retpoline detection in asm code
> >   objtool: Fix ".cold" section suffix check for newer versions of GCC
> >   objtool: Support retpoline jump detection for vmlinux.o
> >   x86/ftrace: Add UNWIND_HINT_FUNC annotation for ftrace_stub
> >   objtool: Assume only ELF functions do sibling calls
> >   objtool: Add asm version of STACK_FRAME_NON_STANDARD
> >   objtool: Combine UNWIND_HINT_RET_OFFSET and UNWIND_HINT_FUNC
> >   objtool: Add xen_start_kernel() to noreturn list
> >   objtool: Move unsuffixed symbol conversion to a helper function
> >   objtool: Add CONFIG_CFI_CLANG support
> >   x86/xen: Support objtool validation in xen-asm.S
> >   x86/xen: Support objtool vmlinux.o validation in xen-head.S
> >   x86/xen/pvh: Convert indirect jump to retpoline
> >   x86/ftrace: Support objtool vmlinux.o validation in ftrace_64.S
> >   x86/acpi: Convert indirect jump to retpoline
> >   x86/acpi: Support objtool validation in wakeup_64.S
> >   x86/power: Convert indirect jumps to retpolines
> >   x86/power: Move restore_registers() to top of the file
> >   x86/power: Support objtool validation in hibernate_asm_64.S
> >
> >  arch/x86/include/asm/unwind_hints.h |  13 +---
> >  arch/x86/kernel/acpi/Makefile       |   1 -
> >  arch/x86/kernel/acpi/wakeup_64.S    |   5 +-
> >  arch/x86/kernel/ftrace_64.S         |   8 +--
> >  arch/x86/lib/retpoline.S            |   2 +-
> >  arch/x86/platform/pvh/head.S        |   3 +-
> >  arch/x86/power/Makefile             |   1 -
> >  arch/x86/power/hibernate_asm_64.S   | 105 ++++++++++++++--------------
> >  arch/x86/xen/Makefile               |   1 -
> >  arch/x86/xen/xen-asm.S              |  29 +++++---
> >  arch/x86/xen/xen-head.S             |   5 +-
> >  include/linux/objtool.h             |  13 +++-
> >  tools/include/linux/objtool.h       |  13 +++-
> >  tools/objtool/arch/x86/decode.c     |   4 +-
> >  tools/objtool/arch/x86/special.c    |   2 +-
> >  tools/objtool/check.c               |  91 +++++++++++++-----------
> >  tools/objtool/check.h               |  12 +++-
> >  tools/objtool/elf.c                 |  87 +++++++++++++++++------
> >  tools/objtool/elf.h                 |   2 +-
> >  19 files changed, 241 insertions(+), 156 deletions(-)
> >
> > --
> > 2.29.2
> >
>
> I tried this series on top of clang-cfi and it segfaults here.
>
> + info OBJTOOL vmlinux.o
> + [  != silent_ ]
> + printf   %-7s %s\n OBJTOOL vmlinux.o
>  OBJTOOL vmlinux.o
> + tools/objtool/objtool orc generate --duplicate --mcount --vmlinux
> --no-fp --no-unreachable --retpoline --uaccess vmlinux.o
> Segmentation fault
> + on_exit
> + [ 139 -ne 0 ]
> + cleanup
> + rm -f .btf.*
> + rm -f .tmp_System.map
> + rm -f .tmp_initcalls.lds
> + rm -f .tmp_symversions.lds
> + rm -f .tmp_vmlinux*
> + rm -f System.map
> + rm -f vmlinux
> + rm -f vmlinux.o
> make[3]: *** [Makefile:1213: vmlinux] Error 139
>

I re-tried with the latest clang-lto Git and switched to Debian's LLVM-11.0.1.
This build was successful.
No objtool-vmlinux warnings observed.

In the next step I try with my selfmade LLVM-11.1.0-rc1 (to see if it's broken).

- Sedat

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVc0M3Ydf%3DSKSV2MhDmdb49nGSrN-9TjYvjL25vmDHaeQ%40mail.gmail.com.
