Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVUWWCAQMGQE4LVCGVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E94831CFF7
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 19:13:42 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id q5sf13997419wrs.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 10:13:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613499222; cv=pass;
        d=google.com; s=arc-20160816;
        b=O75h2rLBTNdZNF1PGqP5nR8u+5zcRQplceCjQ+LibukELuJkb0iKXjRWi4gkXNxIZY
         iPARw55uE8+bdaCeEOxRDGJRyGDTXFnuEq6ZC0eT3mXA+xX1NNWwguOw7Ugic9gBBqgu
         voMzPtytxp4Jq7E/fwkXwtrEs1GG7WgTeSDwrmqQ2OexpQ2V7RscbqLB7LlBnAftX1gQ
         J2/SBzwkTeg9sltKneHf6pfj7sMdcczGk4sxPYioLJxt1dswMHkeP3/SMpQJA7x45F02
         pYeIZFi5/mQTuCyiD462bZ2vsz4NIc9BNw1IlhSLUfG8QnkjAmW1t4Dhvs5tLJmQHNIE
         vByw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2ZaLMSMnmRnmChGgwJaEFu/SWkiBwUCEn5A6KhK0k2c=;
        b=m/ku6kZPCyUXKKBmI1UvHDQMYF2ms+sa5UoHNhRE89hbdXR2I/u6PhBl7NHrOugwrE
         x5yP2uNJdGGfXYDdalTGu+nlmnMISqEHFXvDaDrE6hZh/3jXz6TFjkSmIiUY8DhNoXJx
         R0NnyJDI9BZOinHE8LReathA5HGeSkpvx0HR8ftTkAJLtLL5+p583YzmXYArXSFMKgCq
         A/zYoNJuiv8gQKVZ4rDw/bh2QGyw93vBNYKYGpaYmnCDOJnnSDjjBcb8Ws4988WxgfVh
         jRsubmnA9lxKw6rbOYtdc6PJDIKNmRkKUAYSnFL5crQSE6esEvVAuIdX/fVQMTBFRPkV
         8XmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZBm5V3zJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ZaLMSMnmRnmChGgwJaEFu/SWkiBwUCEn5A6KhK0k2c=;
        b=XWxf3saWvSV8GGHw16eKRGrRKia03OPbPD4vuKwpFiGBS4w68/NEZJvCbPT3s+QTr8
         JOTRz5uLAwyh0Xvw1GSC5CzSkO4rW2sExb2wA6USbFkp6hvhTsCZtc0LQO3y8ACWYNxs
         fyDlkFyQTwqJ/GTrNFTCsb5HY+4nGCXCBRcEjaZFEsI+3iqrkJkvsiinSq12GxYRRnRG
         HQJzzMxNU6x67UjdyPT+yiflGuSRWPGAnZGWlhyuVlEF+yRl/dpz8zTRtZqj6UnLzLCv
         vzCPRYAX9a71DkKrISAj82CuMGfCjOA46R+eeggADbZCZwRoycR33EDgbrNqV0l025FY
         /9Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ZaLMSMnmRnmChGgwJaEFu/SWkiBwUCEn5A6KhK0k2c=;
        b=HZ384JQpEKdMjE/oIHg9TV1k9J12vnKnUt+PRazOFvXONV71kYV4Ottd3/DRiX/+ZW
         fMHLbUdw9oBkEz2E5X2EtK2yQ7CUlSnIs3bRjen3QD37BsWgTOwHdZ0UYaAliyH/UwBn
         Dr7X1btaMAtadgcU6YJq/7RovZunPlo7C8RbirT79U226JrF2RE5AqUDjoJNLW6gxTV3
         MrybY6UxO+Ii0K8rgMlTc0vBfDP7QoESqF/4/Z4A9g7OweDzDHQ26RURSFFlftvrVPMS
         cfCnnMphJhocaaerWOnuvRZJX3uvOOlSx6ds9VoDpNZLdrlH52lLGkQRAiJfugwQjT59
         ik/Q==
X-Gm-Message-State: AOAM532qqV+aMuVcRV0xWchlNWrJHxQw4PuSlxe2SzbeVseTEers5wKH
	TMilvJTQJwzAXuFoSkW4E74=
X-Google-Smtp-Source: ABdhPJzaNUrAFy9RKmrwpB/Y+DqSy2/1mCD4ouDKTMLVVRmv9fpxUK3WrHZ8KhEwq9Fxru9IBBQuCQ==
X-Received: by 2002:a1c:c904:: with SMTP id f4mr4302825wmb.14.1613499222203;
        Tue, 16 Feb 2021 10:13:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:60c2:: with SMTP id u185ls1404672wmb.2.gmail; Tue, 16
 Feb 2021 10:13:41 -0800 (PST)
X-Received: by 2002:a7b:c410:: with SMTP id k16mr4244273wmi.48.1613499221409;
        Tue, 16 Feb 2021 10:13:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613499221; cv=none;
        d=google.com; s=arc-20160816;
        b=KBImwQq2BEz+CYiOL/PNN4Mcvz3gLpuswVAIaH5bYpD8eQ8DeEwCLAPiCkhvKSTNdw
         sqysbS32ir6dmJiF+VqTMfz6OvTyOIXrqV4HIwQ2G8v2qPTmPdAwEVfmKjIFkyOpTvTJ
         oXRDG/xiDIgcN+MWfdoeFTRVSh5mcwq07KcFjEMiPz68G5Xb/KwsMalCO2u+mWUPcljz
         U1NX2Qh4LN0C3SPeNFbr4glS6ipnO6YTQQ4B9GsXZfLlWGXkJ11li/rG2A+gQ513Gner
         v7sVnYxXK3bBTwFm9a879NoEhvKj7kon307RLKdRk/vEk7crgj49iWOwJilz/+TT6rHm
         qnjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uZhgJDXN3qUlzI3D7+EIdLJ24tS4lcpyI6gPNIaOo8w=;
        b=nd8RJ+e0Fxw00vvk7vMnTcMKChG1+aVq+KKYZMH9q5Ws6o2WKaUSz0YEqhWvHyYp99
         GykZxFjrg+v3Im589vtFmXzmyIQDyA/37NFpdjfiR+7Kas+nP2/e4fLXF2XeLX33iJY1
         xvjxRgEMHHAm6woWN1HwLCHwbO8+G4friWdoyBm+cjqKj5tX0a6XlI3TWgWYh4z7VN7N
         FE5CmDUt2OVPHTBSMwbahfPPofkoRIb4mozza0UVxyfHjHoNtFemZe/KAwY+PhhMm8lr
         8SKKOD70z2+4hnnupmxogOXfxbaVGXLnOrgymujOeW8XepjuAQnapgzJ6laRXnqCgVUF
         upmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZBm5V3zJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id m3si190544wme.0.2021.02.16.10.13.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Feb 2021 10:13:41 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id c8so10830093ljd.12
        for <clang-built-linux@googlegroups.com>; Tue, 16 Feb 2021 10:13:41 -0800 (PST)
X-Received: by 2002:a05:651c:2112:: with SMTP id a18mr13153514ljq.341.1613499220885;
 Tue, 16 Feb 2021 10:13:40 -0800 (PST)
MIME-Version: 1.0
References: <cover.1613243844.git.luto@kernel.org>
In-Reply-To: <cover.1613243844.git.luto@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 16 Feb 2021 10:13:29 -0800
Message-ID: <CAKwvOdknXerBUV6aMhNC9y50kH3EQY+0s-aZ7Vvh8-tG8uR_wA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Clean up x86_32 stackprotector
To: Andy Lutomirski <luto@kernel.org>
Cc: "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Sean Christopherson <seanjc@google.com>, 
	Brian Gerst <brgerst@gmail.com>, Joerg Roedel <jroedel@suse.de>, 
	Nathan Chancellor <nathan@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZBm5V3zJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b
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

On Sat, Feb 13, 2021 at 11:19 AM Andy Lutomirski <luto@kernel.org> wrote:
>
> x86_32 stackprotector is a maintenance nightmare.  Clean it up.  This
> disables stackprotector on x86_32 on GCC 8.1 and on all clang
> versions.  Some clang people are cc'd.

When in doubt, check the MAINTAINERS entry for LLVM for our mailing
list and listed maintainers.

>
> Changes from v1:
>  - Changelog fixes.
>  - Comment fixes (mostly from Sean).
>  - Fix the !SMP case.
>
> Andy Lutomirski (2):
>   x86/stackprotector/32: Make the canary into a regular percpu variable
>   x86/entry/32: Remove leftover macros after stackprotector cleanups
>
>  arch/x86/Kconfig                          |  7 +-
>  arch/x86/Makefile                         |  8 ++
>  arch/x86/entry/entry_32.S                 | 95 +----------------------
>  arch/x86/include/asm/processor.h          | 15 +---
>  arch/x86/include/asm/ptrace.h             |  5 +-
>  arch/x86/include/asm/segment.h            | 30 ++-----
>  arch/x86/include/asm/stackprotector.h     | 79 ++++---------------
>  arch/x86/include/asm/suspend_32.h         |  6 +-
>  arch/x86/kernel/asm-offsets_32.c          |  5 --
>  arch/x86/kernel/cpu/common.c              |  5 +-
>  arch/x86/kernel/doublefault_32.c          |  4 +-
>  arch/x86/kernel/head_32.S                 | 18 +----
>  arch/x86/kernel/setup_percpu.c            |  1 -
>  arch/x86/kernel/tls.c                     |  8 +-
>  arch/x86/kvm/svm/svm.c                    | 10 +--
>  arch/x86/lib/insn-eval.c                  |  4 -
>  arch/x86/platform/pvh/head.S              | 14 ----
>  arch/x86/power/cpu.c                      |  6 +-
>  arch/x86/xen/enlighten_pv.c               |  1 -
>  scripts/gcc-x86_32-has-stack-protector.sh |  6 +-
>  20 files changed, 62 insertions(+), 265 deletions(-)
>
> --
> 2.29.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdknXerBUV6aMhNC9y50kH3EQY%2B0s-aZ7Vvh8-tG8uR_wA%40mail.gmail.com.
