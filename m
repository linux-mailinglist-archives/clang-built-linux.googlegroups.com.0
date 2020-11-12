Return-Path: <clang-built-linux+bncBD63HSEZTUIBB77KWP6QKGQEOX4HUKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C24C2B0150
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 09:42:40 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id j43sf1466520ooa.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 00:42:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605170559; cv=pass;
        d=google.com; s=arc-20160816;
        b=rXV041P2FosD+2Swc/h6bTXTtT3lyXkRJyb1uSW8eTy35CWFklqZd0RMRFB4S8LJTM
         +CTfqUJmRCEl7YDf06AxNpmSbzCZqhHb9F17p1GhJ8SzFzL2Jd6o4OmW/rs5x4HfpP8y
         phpiy2qI1NVp0NYWJvcN2ZHaAgFWks05p/Kx5QMIcb7tubNpnsQgWDo3vLak5d6l6j0f
         9leu+sKTuApCtXTRfNqhFOmw+f0mwB7/sOHq5hbfU8HXhm84lLnh+6OG7fvGEE4nBaKJ
         73wc2oDajaZ1v6HnG8+o6N8pTt9xqvyqFKI8AI+3pk7yuyAZQmWj5pkCqDy2hsjJBzT7
         2Aqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=VzkGHpuhOP9yUj80XyN3cJ9gJdzpeZzpdJVVnNeQ3cw=;
        b=dg2wb4vk+FZoxvA8WIAUOJKLRvagC2R5UaMbiBofKlyJ4O55sDJbgLdC5VQqTNp448
         oJMC63hZNhhOxPw6WCbUUDcLpgggw08MLiJJFT7SeaXzHG1ZG42XCLV3k2f3HCUYIzkj
         l4bE+Al5WguGpgRww995v9QNAniZMeTbTkBc2nzVuwaE9Piyv1oPQCduwVI9k+iyn9c6
         0h27ZJ8y16wmFuchPxqQw1D20ySYIkqUQYhHwSX70Mmu6bjPv/nm8mMVk68XLrQiM4gB
         Jo14EeUXu4grZJrq7r9AFA9WJnEI3j9MZFyx7Lkl2MY7+IRDpyjWIex+HWu7xRqCR66q
         BqXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="wVujH/uo";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VzkGHpuhOP9yUj80XyN3cJ9gJdzpeZzpdJVVnNeQ3cw=;
        b=FwmOJWFZNEhYglHbdcC6ogNwsjdIDj8L9yYUTTjmZrNhboVFqB9ilRgukZLsPg0ssz
         GVF5r9sDrrICQg9XmhKZNP9DwcHR0VjREe5QeEV+ZeGhlV8Ji//VbuZq0pPd1+x6HkX8
         VCH+A64xgRb78aYk31VjTThYba5MLThRjVKKXSOOjO4+lLMW2lii1xlI47DkxFcKEvKA
         uc74r58Zf8psqy3ivhX6l2MyvvdFW1V4GtHZ87xFb97lfaFz8ii85rBKl4jeA2chjTCF
         RdoXNP7RLO0W1Vp1vx2GF0FhbWiycCA6PAP9P5fNIuZfiqFnB1hEqUhdRtGV1EcS3TeN
         ZOtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VzkGHpuhOP9yUj80XyN3cJ9gJdzpeZzpdJVVnNeQ3cw=;
        b=LlEMvdTCHgVLwvTs3qOS76an9eBImsnCVG2sWjF/ENRbcH34xuZShnxAW6Jdfhf/Io
         26r5Yf6nZ98q82XgWD+16+tFDeR/x1Nk7Jq5vktjQr7sNPBBrnD+yK8NmPolBZZdsgQC
         qK9Kwq/bEHdygw87JbMJnJaF8YSU6e1lyQA9P/4antAprOgPUvwIxUae25i5Dd/cCtmw
         U00VY1w9BZBiwzI/DV8VbLKOJoob2bn1/8LiYJWKXVx21pXKHRZoBPJZh8IZn0gdlw5O
         dviMdu8wnOEHQMKK5cqZzZfUOLDD1mC8e3gUseqA2IPhR80u/OBNbig5TCG4eYdZdEku
         Opxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dCKw7y0XDOifzcN5WYXYNHfUZmPUvg01+dq2plV8i9N+u4UhD
	e858FJ5Hqnus9OukfzwkL6E=
X-Google-Smtp-Source: ABdhPJzYQLg3KvqHcZodeWYkyQ3EXRVSrIToPqltjZCFUwZ4164uRl4dLWBRphx3WOfNdYEQv7GH1g==
X-Received: by 2002:a9d:7d06:: with SMTP id v6mr21410245otn.296.1605170559541;
        Thu, 12 Nov 2020 00:42:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:9753:: with SMTP id v19ls126172ooi.0.gmail; Thu, 12 Nov
 2020 00:42:39 -0800 (PST)
X-Received: by 2002:a4a:d043:: with SMTP id x3mr1839704oor.19.1605170559229;
        Thu, 12 Nov 2020 00:42:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605170559; cv=none;
        d=google.com; s=arc-20160816;
        b=SbdOheJ8vvtTNVnH6RTz4IKwhBBXOXE7jF5u4VlOrSNPjaM+UhgslCIe2sT9rupmMh
         KKtyO/sgUd3+wOCl1jDjmJ2ZxzeJGJB6PNi2XDkMzRuf9ALSysJOf/GYbfkUOUdymhgv
         xd67IkE/wJHdtRFNMVY9DkKPC5Pgxjc8dVq28lfdCzvCNgOuetISmk792fpL9sE+IG9m
         2530uSWOzXqEVDZt5sg/comblScjVNjwC5sBSccGna3/txdr+sjfZ4FqfEHJYQwkeVuw
         CcECqR9ZRREbgNjTicA8chZKPj7WW53b9ndpjVP1bUY/VEl2MOVA4xkrquudlHByyNpw
         wN6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=U3aeQLDiON5Fi0M12Gh+YATinmEwnsLvbluUrj0bibM=;
        b=zfvD8RZPUZaXqlAeZbwYKSQXhcCfkvjdvjIEgEiXoRf8ZJ+fZ4YLzH2obiLJlMw2zm
         tGucI38PotfRyJdOlBZTxWaDozsUmuV785SNMhOrNd/NFlSvVD3V2BIi1U3uKmhaUaOf
         QD8Ui2aYSxYAfDyQPwLBEe7a3/ZwuYUruwdL9deUFOG4JtoS6AZcK4ABJhylD9PPeovA
         eXh+23YVl2frrCLAb2b0qOz8o/oRi+Zn8gA1d9jrV7Xxc9q3wQoWxnwZOf+RI6WisxgV
         a8U/HcdXxWEHiU8BTYmeFEodh8Xs0DJo8r6tfppQNQ1elxL0O0o1HSustrcyjt5SC/K8
         yazQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="wVujH/uo";
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o23si335363oic.4.2020.11.12.00.42.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Nov 2020 00:42:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E2BB820715
	for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 08:42:37 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id j7so5494383oie.12
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 00:42:37 -0800 (PST)
X-Received: by 2002:aca:c60c:: with SMTP id w12mr5177268oif.174.1605170557102;
 Thu, 12 Nov 2020 00:42:37 -0800 (PST)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <20201107001056.225807-1-jiancai@google.com>
In-Reply-To: <20201107001056.225807-1-jiancai@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 12 Nov 2020 09:42:24 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEAhyTfFZg4_+wTZ5+obQpAzFknC4vR1bNrRG6GpW4D0Q@mail.gmail.com>
Message-ID: <CAMj1kXEAhyTfFZg4_+wTZ5+obQpAzFknC4vR1bNrRG6GpW4D0Q@mail.gmail.com>
Subject: Re: [PATCH v2] Make iwmmxt.S support Clang's integrated assembler
To: Jian Cai <jiancai@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Russell King <linux@armlinux.org.uk>, Nathan Chancellor <natechancellor@gmail.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="wVujH/uo";       spf=pass
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

On Sat, 7 Nov 2020 at 01:11, Jian Cai <jiancai@google.com> wrote:
>
> This patch replaces 6 IWMMXT instructions Clang's integrated assembler
> does not support in iwmmxt.S using macros, while making sure GNU
> assembler still emit the same instructions. This should be easier than
> providing full IWMMXT support in Clang.
>
> "Intel Wireless MMX Technology - Developer Guide - August, 2002" should
> be referenced for the encoding schemes of these extensions.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/975
>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Jian Cai <jiancai@google.com>

For the change itself,

Acked-by: Ard Biesheuvel <ardb@kernel.org>

Although I must admit I am still on the fence when it comes to the
policy around rewriting perfectly valid code like this to accommodate
a toolchain that nobody is likely to use to build the code in
question.

Perhaps we should at least add some rationale to the commit log why
Clang's integrated assembler is something we should care about? I take
it this is not about diagnostics or CFI but simply about avoiding the
need to carry cross-binutils in the first place?

> ---
>  arch/arm/kernel/iwmmxt.S | 89 ++++++++++++++++++++--------------------
>  arch/arm/kernel/iwmmxt.h | 47 +++++++++++++++++++++
>  2 files changed, 92 insertions(+), 44 deletions(-)
>  create mode 100644 arch/arm/kernel/iwmmxt.h
>
> diff --git a/arch/arm/kernel/iwmmxt.S b/arch/arm/kernel/iwmmxt.S
> index 0dcae787b004..d2b4ac06e4ed 100644
> --- a/arch/arm/kernel/iwmmxt.S
> +++ b/arch/arm/kernel/iwmmxt.S
> @@ -16,6 +16,7 @@
>  #include <asm/thread_info.h>
>  #include <asm/asm-offsets.h>
>  #include <asm/assembler.h>
> +#include "iwmmxt.h"
>
>  #if defined(CONFIG_CPU_PJ4) || defined(CONFIG_CPU_PJ4B)
>  #define PJ4(code...)           code
> @@ -113,33 +114,33 @@ concan_save:
>
>  concan_dump:
>
> -       wstrw   wCSSF, [r1, #MMX_WCSSF]
> -       wstrw   wCASF, [r1, #MMX_WCASF]
> -       wstrw   wCGR0, [r1, #MMX_WCGR0]
> -       wstrw   wCGR1, [r1, #MMX_WCGR1]
> -       wstrw   wCGR2, [r1, #MMX_WCGR2]
> -       wstrw   wCGR3, [r1, #MMX_WCGR3]
> +       wstrw   wCSSF, r1, MMX_WCSSF
> +       wstrw   wCASF, r1, MMX_WCASF
> +       wstrw   wCGR0, r1, MMX_WCGR0
> +       wstrw   wCGR1, r1, MMX_WCGR1
> +       wstrw   wCGR2, r1, MMX_WCGR2
> +       wstrw   wCGR3, r1, MMX_WCGR3
>
>  1:     @ MUP? wRn
>         tst     r2, #0x2
>         beq     2f
>
> -       wstrd   wR0,  [r1, #MMX_WR0]
> -       wstrd   wR1,  [r1, #MMX_WR1]
> -       wstrd   wR2,  [r1, #MMX_WR2]
> -       wstrd   wR3,  [r1, #MMX_WR3]
> -       wstrd   wR4,  [r1, #MMX_WR4]
> -       wstrd   wR5,  [r1, #MMX_WR5]
> -       wstrd   wR6,  [r1, #MMX_WR6]
> -       wstrd   wR7,  [r1, #MMX_WR7]
> -       wstrd   wR8,  [r1, #MMX_WR8]
> -       wstrd   wR9,  [r1, #MMX_WR9]
> -       wstrd   wR10, [r1, #MMX_WR10]
> -       wstrd   wR11, [r1, #MMX_WR11]
> -       wstrd   wR12, [r1, #MMX_WR12]
> -       wstrd   wR13, [r1, #MMX_WR13]
> -       wstrd   wR14, [r1, #MMX_WR14]
> -       wstrd   wR15, [r1, #MMX_WR15]
> +       wstrd   wR0,  r1, MMX_WR0
> +       wstrd   wR1,  r1, MMX_WR1
> +       wstrd   wR2,  r1, MMX_WR2
> +       wstrd   wR3,  r1, MMX_WR3
> +       wstrd   wR4,  r1, MMX_WR4
> +       wstrd   wR5,  r1, MMX_WR5
> +       wstrd   wR6,  r1, MMX_WR6
> +       wstrd   wR7,  r1, MMX_WR7
> +       wstrd   wR8,  r1, MMX_WR8
> +       wstrd   wR9,  r1, MMX_WR9
> +       wstrd   wR10, r1, MMX_WR10
> +       wstrd   wR11, r1, MMX_WR11
> +       wstrd   wR12, r1, MMX_WR12
> +       wstrd   wR13, r1, MMX_WR13
> +       wstrd   wR14, r1, MMX_WR14
> +       wstrd   wR15, r1, MMX_WR15
>
>  2:     teq     r0, #0                          @ anything to load?
>         reteq   lr                              @ if not, return
> @@ -147,30 +148,30 @@ concan_dump:
>  concan_load:
>
>         @ Load wRn
> -       wldrd   wR0,  [r0, #MMX_WR0]
> -       wldrd   wR1,  [r0, #MMX_WR1]
> -       wldrd   wR2,  [r0, #MMX_WR2]
> -       wldrd   wR3,  [r0, #MMX_WR3]
> -       wldrd   wR4,  [r0, #MMX_WR4]
> -       wldrd   wR5,  [r0, #MMX_WR5]
> -       wldrd   wR6,  [r0, #MMX_WR6]
> -       wldrd   wR7,  [r0, #MMX_WR7]
> -       wldrd   wR8,  [r0, #MMX_WR8]
> -       wldrd   wR9,  [r0, #MMX_WR9]
> -       wldrd   wR10, [r0, #MMX_WR10]
> -       wldrd   wR11, [r0, #MMX_WR11]
> -       wldrd   wR12, [r0, #MMX_WR12]
> -       wldrd   wR13, [r0, #MMX_WR13]
> -       wldrd   wR14, [r0, #MMX_WR14]
> -       wldrd   wR15, [r0, #MMX_WR15]
> +       wldrd   wR0,  r0, MMX_WR0
> +       wldrd   wR1,  r0, MMX_WR1
> +       wldrd   wR2,  r0, MMX_WR2
> +       wldrd   wR3,  r0, MMX_WR3
> +       wldrd   wR4,  r0, MMX_WR4
> +       wldrd   wR5,  r0, MMX_WR5
> +       wldrd   wR6,  r0, MMX_WR6
> +       wldrd   wR7,  r0, MMX_WR7
> +       wldrd   wR8,  r0, MMX_WR8
> +       wldrd   wR9,  r0, MMX_WR9
> +       wldrd   wR10, r0, MMX_WR10
> +       wldrd   wR11, r0, MMX_WR11
> +       wldrd   wR12, r0, MMX_WR12
> +       wldrd   wR13, r0, MMX_WR13
> +       wldrd   wR14, r0, MMX_WR14
> +       wldrd   wR15, r0, MMX_WR15
>
>         @ Load wCx
> -       wldrw   wCSSF, [r0, #MMX_WCSSF]
> -       wldrw   wCASF, [r0, #MMX_WCASF]
> -       wldrw   wCGR0, [r0, #MMX_WCGR0]
> -       wldrw   wCGR1, [r0, #MMX_WCGR1]
> -       wldrw   wCGR2, [r0, #MMX_WCGR2]
> -       wldrw   wCGR3, [r0, #MMX_WCGR3]
> +       wldrw   wCSSF, r0, MMX_WCSSF
> +       wldrw   wCASF, r0, MMX_WCASF
> +       wldrw   wCGR0, r0, MMX_WCGR0
> +       wldrw   wCGR1, r0, MMX_WCGR1
> +       wldrw   wCGR2, r0, MMX_WCGR2
> +       wldrw   wCGR3, r0, MMX_WCGR3
>
>         @ clear CUP/MUP (only if r1 != 0)
>         teq     r1, #0
> diff --git a/arch/arm/kernel/iwmmxt.h b/arch/arm/kernel/iwmmxt.h
> new file mode 100644
> index 000000000000..fb627286f5bb
> --- /dev/null
> +++ b/arch/arm/kernel/iwmmxt.h
> @@ -0,0 +1,47 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef __IWMMXT_H__
> +#define __IWMMXT_H__
> +
> +.irp b, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
> +.set .LwR\b, \b
> +.set .Lr\b, \b
> +.endr
> +
> +.set .LwCSSF, 0x2
> +.set .LwCASF, 0x3
> +.set .LwCGR0, 0x8
> +.set .LwCGR1, 0x9
> +.set .LwCGR2, 0xa
> +.set .LwCGR3, 0xb
> +
> +.macro wldrd, reg:req, base:req, offset:req
> +.inst 0xedd00100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
> +.endm
> +
> +.macro wldrw, reg:req, base:req, offset:req
> +.inst 0xfd900100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
> +.endm
> +
> +.macro wstrd, reg:req, base:req, offset:req
> +.inst 0xedc00100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
> +.endm
> +
> +.macro wstrw, reg:req, base:req, offset:req
> +.inst 0xfd800100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
> +.endm
> +
> +#ifdef __clang__
> +
> +#define wCon c1
> +
> +.macro tmrc, dest:req, control:req
> +mrc p1, 0, \dest, \control, c0, 0
> +.endm
> +
> +.macro tmcr, control:req, src:req
> +mcr p1, 0, \src, \control, c0, 0
> +.endm
> +#endif
> +
> +#endif
> --
> 2.29.1.341.ge80a0c044ae-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXEAhyTfFZg4_%2BwTZ5%2BobQpAzFknC4vR1bNrRG6GpW4D0Q%40mail.gmail.com.
