Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBWF6QSAAMGQEHTDMRRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id B443B2F71BB
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 05:51:37 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id x74sf6671148qkb.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:51:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610686296; cv=pass;
        d=google.com; s=arc-20160816;
        b=KZDoqTUhuS7Ln3AaR06R8Ih2PT5J2lJDqnLVSgY9N/PufCKizfmidisEybjUiXZ4TZ
         T9igFmO7H8bOmiN1SGMz+L9TouMmQ11T5y/7nTo2plfKis+rb3/LLtoXM/9ttegspXV4
         WoFQcQC9UU1DHryRRlo+uboVpv747w4edoUqKkGr25MZrmRxs60v+sBMNF++ZjAT4ubU
         kcJgZ3mPTeVEWfp3v5fVUWVyX6bRYvveY2glZzkQFO2Z6KvxGxjZs7YnKEPXvqnpwORn
         +lS/xhGwNO0w8OXg5GORW0jEeRR++C3sfjYQn9q1+YmLqAFCICArmEYWMyv8fVBdblDT
         FHlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ITD6KMc6PgYhonXUTZLn87iDT+wKkuCV/TcIk8OqRC8=;
        b=oFqgP1QCte7VpASKxqz4ZsZ5HLESScc3vptp9iAXYI8b8OS9p1PPq5nPDkkL30GpS0
         imQzFpoBBNJM3ORIlOyv2FRhFxD5ibnqwsdXhe98OmFVWHI7i7AJ5+9INEES7N5yZec2
         h+wbusI0Vky4Gf6jfYkHnIXciYc8vdoes9WMsl6bjKrn4SGzk+4PTPlsky0Hm4X2yBmt
         yo4N1B8DV/E3M1dX6Vc4ThnQMwxd2uDAKdrhxYzgQJc9695WRUYZ54pDYfKXte1Ht8h2
         Ea9m55RgB35DR3jTT9NTUCrL+dsyaVJNCeuz8XIkPXWcKl+IPQocmLx8JIv0la2pJHGn
         p3jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mIBaiyCa;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ITD6KMc6PgYhonXUTZLn87iDT+wKkuCV/TcIk8OqRC8=;
        b=DLLy836lQBExmjmX+ej41Xy58CFehvrfwY/jV0MLXw5148+DoF2cs9gQAPMzKrgETr
         JkP0nceJpm6HOMQMIdSPc052c3Sow8xnbJ1PZATsvYuQi/p2EPq6ksn7T5GZ544+jrFs
         l3zsk2yTcjw3N4WByINQn3UY2RqmRQy0Cn75DtDniI/+yBEozfcAUD6mZUL6SUcNgOJ5
         1JMXf3eqgSadmBkKB/IzyXH49K0aPCVWF6pgUQLA7OJht+AypBp48nStGaK3TA2cn6nr
         2lMiLAtXSKptx7oOFBMFhkMSgXlWF+kWCJ6JLHft0GzLm++8oXvWBpQjHnwfATXp1kYS
         LZBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ITD6KMc6PgYhonXUTZLn87iDT+wKkuCV/TcIk8OqRC8=;
        b=SMERsbY21wRdBTNwnAQl/xiYmYYPRWxXeIBUc68lXH88WAaw9gyE1TSk6hnLgBs9r8
         KfUMaAqRicxC7u6Wc2/os0eyBtsvt6Yf+RI1nbCdFgi8S8EfX9++MIjNRF+5qH8U0Tz0
         sY3a+aIpfOWvLErmDjwR2TJt3f/YlrbZ3GV15OEAcrKnahEry112Hp83wGZVvJxp7pcJ
         TsgVLgGPWUoY2su2hJP38Ze60+1IM5mDKW0xROIXjTOoCE9fpzEdGZyTS+0GRMa/LUrl
         wUd73L+Gv5VFy/STCJpeaMl42DTYdznwpewNXVqWVv8xWO3RDSN5WEUyWUBha9IWixbu
         ATEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ITD6KMc6PgYhonXUTZLn87iDT+wKkuCV/TcIk8OqRC8=;
        b=hSVEGBE//GtaKAXuXOVPHQHXhOzqxJypuGFqnpumYh9wKJMeDiDJ01whdHWtSm9Bov
         nQxp6FWZWPMN7jg5hev0Sg238jrVC5BThMqyyc0owbFQYS2McJe4b/H5Mrtgz+8xm5je
         anjLd5vGELZyYMdhqdpRFer/CI/+7qqhbrO3+IoRvstjKhd8XBN6gTe7x5jRUpvbz11G
         fmGuSF9gQGaLLPBZ03GkV+8mkl4hALG0blak3V/Ptw1VFlyAzm2anmIPCDOGFY4ecIyz
         DYJw+Nk/+XuPIC9IGbk7jOGlDIxHssNeWJlKs0eStAD25yXWrhQKZdO3MpDiTCEtvgEN
         JHWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sgb+225BYnXCy79irZQd4nPYNwOVmSFZKDku4T83RZZVsKoc7
	ergiM3BpNvlfWZ3sJSRxNLY=
X-Google-Smtp-Source: ABdhPJx0Fo4Op/Mnoq/dhaBAGu2tmF2fjkxRTUtH5toQ4gPd7/rhTX2wr+q+N9QtV+h0K4q76D+1Fg==
X-Received: by 2002:a37:5d84:: with SMTP id r126mr10201288qkb.396.1610686296441;
        Thu, 14 Jan 2021 20:51:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:c001:: with SMTP id u1ls3964365qkk.1.gmail; Thu, 14 Jan
 2021 20:51:36 -0800 (PST)
X-Received: by 2002:a37:9c8a:: with SMTP id f132mr10588119qke.189.1610686295931;
        Thu, 14 Jan 2021 20:51:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610686295; cv=none;
        d=google.com; s=arc-20160816;
        b=fQxJ8GWH73psIzvz/hAAHi6eTUH/hEODRgE5CbrdaZPes/xyG+H/g6XLHo0y6tt1AU
         CNT81+suwHM5IN1YTSMnNSdamwUD0b7zp7MyXTFmLGU2/nc3q+EPAuEsgghujN3HeoOi
         iZYH4/3zyE/50GnlsnqEEnkux7Bf6wHMkBz73ID+S2DuN3lxcie++2lxjXGMEmW+bPhe
         yAOWahoITq8bMwWvbYBD/jD1cLdZ7w8aVx8HcbHJs7oG0PHpf3M33ZNr5eWh0yF8a40G
         ZfOBwNkscdg8P7SZVNLR7lDAqBzN0okLRla068H+qiS61TnNqodFUFoTaaXWH1/9e0cX
         3nvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QBJgA4HNYXN/XW/YtH3zS5vGCt3KtxYhfozKpWDh0/Y=;
        b=QV3seTOBADzAUb4IY/z8G64wEqd8a5Cyb4u1D4gyVZsRP5b6AgoEwhKCZzO1a64XQG
         OQy0/b9567o3yoYTGWa/1rfUtc6Y7ObEdVcnez+NyGLSmpb3wScM3WUrOUJPf4EwIE6o
         LnAytXUEnTMTI06r1fiefE3PHKOLR7MRZnMNhEl/LLqHyGS2b4T2IZ84OhAkFh04J+NL
         f9aWzkU/cYeEnSzb8JQ33Un7qRXQQWlXfdQhtJoEtNMZd8Bw9/BTxCOVsGJoVjTnn6vM
         eN0jw+5fn05aHg7ILqDztm0kUpioRs6RKszYjuITUd+Vzd9A6LFYlBqKSNhRBDTormj9
         UwBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mIBaiyCa;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id t2si478431qkg.0.2021.01.14.20.51.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 20:51:35 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Received: by mail-io1-xd2a.google.com with SMTP id d81so752486iof.3
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 20:51:35 -0800 (PST)
X-Received: by 2002:a05:6e02:eb0:: with SMTP id u16mr9293810ilj.209.1610686295416;
 Thu, 14 Jan 2021 20:51:35 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 15 Jan 2021 05:51:24 +0100
Message-ID: <CA+icZUV1a-DEf-dTm8MyyBbp_VYmW5WwJPF9DQb=yJHPykJASQ@mail.gmail.com>
Subject: Re: [PATCH 00/21] objtool: vmlinux.o and CLANG LTO support
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: x86@kernel.org, linux-kernel@vger.kernel.org, 
	Peter Zijlstra <peterz@infradead.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Miroslav Benes <mbenes@suse.cz>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mIBaiyCa;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a
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

On Thu, Jan 14, 2021 at 8:40 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> Add support for proper vmlinux.o validation, which will be needed for
> Sami's upcoming x86 LTO set.  (And vmlinux validation is the future for
> objtool anyway, for other reasons.)
>
> This isn't 100% done -- most notably, crypto still needs to be supported
> -- but I think this gets us most of the way there.
>
> This can also be found at
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux
>
> And for more testing it can be combined with Sami's x86 LTO patches:
>
>   https://github.com/samitolvanen/linux clang-lto
>
>
>
> Josh Poimboeuf (21):
>   objtool: Fix seg fault in BT_FUNC() with fake jump
>   objtool: Fix error handling for STD/CLD warnings
>   objtool: Fix retpoline detection in asm code
>   objtool: Fix ".cold" section suffix check for newer versions of GCC
>   objtool: Support retpoline jump detection for vmlinux.o
>   x86/ftrace: Add UNWIND_HINT_FUNC annotation for ftrace_stub
>   objtool: Assume only ELF functions do sibling calls
>   objtool: Add asm version of STACK_FRAME_NON_STANDARD
>   objtool: Combine UNWIND_HINT_RET_OFFSET and UNWIND_HINT_FUNC
>   objtool: Add xen_start_kernel() to noreturn list
>   objtool: Move unsuffixed symbol conversion to a helper function
>   objtool: Add CONFIG_CFI_CLANG support
>   x86/xen: Support objtool validation in xen-asm.S
>   x86/xen: Support objtool vmlinux.o validation in xen-head.S
>   x86/xen/pvh: Convert indirect jump to retpoline
>   x86/ftrace: Support objtool vmlinux.o validation in ftrace_64.S
>   x86/acpi: Convert indirect jump to retpoline
>   x86/acpi: Support objtool validation in wakeup_64.S
>   x86/power: Convert indirect jumps to retpolines
>   x86/power: Move restore_registers() to top of the file
>   x86/power: Support objtool validation in hibernate_asm_64.S
>
>  arch/x86/include/asm/unwind_hints.h |  13 +---
>  arch/x86/kernel/acpi/Makefile       |   1 -
>  arch/x86/kernel/acpi/wakeup_64.S    |   5 +-
>  arch/x86/kernel/ftrace_64.S         |   8 +--
>  arch/x86/lib/retpoline.S            |   2 +-
>  arch/x86/platform/pvh/head.S        |   3 +-
>  arch/x86/power/Makefile             |   1 -
>  arch/x86/power/hibernate_asm_64.S   | 105 ++++++++++++++--------------
>  arch/x86/xen/Makefile               |   1 -
>  arch/x86/xen/xen-asm.S              |  29 +++++---
>  arch/x86/xen/xen-head.S             |   5 +-
>  include/linux/objtool.h             |  13 +++-
>  tools/include/linux/objtool.h       |  13 +++-
>  tools/objtool/arch/x86/decode.c     |   4 +-
>  tools/objtool/arch/x86/special.c    |   2 +-
>  tools/objtool/check.c               |  91 +++++++++++++-----------
>  tools/objtool/check.h               |  12 +++-
>  tools/objtool/elf.c                 |  87 +++++++++++++++++------
>  tools/objtool/elf.h                 |   2 +-
>  19 files changed, 241 insertions(+), 156 deletions(-)
>
> --
> 2.29.2
>

I tried this series on top of clang-cfi and it segfaults here.

+ info OBJTOOL vmlinux.o
+ [  != silent_ ]
+ printf   %-7s %s\n OBJTOOL vmlinux.o
 OBJTOOL vmlinux.o
+ tools/objtool/objtool orc generate --duplicate --mcount --vmlinux
--no-fp --no-unreachable --retpoline --uaccess vmlinux.o
Segmentation fault
+ on_exit
+ [ 139 -ne 0 ]
+ cleanup
+ rm -f .btf.*
+ rm -f .tmp_System.map
+ rm -f .tmp_initcalls.lds
+ rm -f .tmp_symversions.lds
+ rm -f .tmp_vmlinux*
+ rm -f System.map
+ rm -f vmlinux
+ rm -f vmlinux.o
make[3]: *** [Makefile:1213: vmlinux] Error 139

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV1a-DEf-dTm8MyyBbp_VYmW5WwJPF9DQb%3DyJHPykJASQ%40mail.gmail.com.
