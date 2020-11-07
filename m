Return-Path: <clang-built-linux+bncBD63HSEZTUIBB4NVTH6QKGQEWQIOA5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A662AA3DD
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 09:29:38 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id d14sf2161592qvz.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Nov 2020 00:29:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604737777; cv=pass;
        d=google.com; s=arc-20160816;
        b=fGg0PyRYItdBhVFPpuJXJQz8Ga/Xf1YB7mGPzJRWWXepzIERCir0lIC4Cv5QOa162M
         V/poD8EGqfaTOflQYi+sgCyTSzT4pig/plV5DbP6LhnMGmCjok9V8YTqB0ITuX6PBohO
         d1hIPT8lDgJhWuuuZLTU52Pfi/b+QQHf+2FARX/6cIUP2NKSQCzYnHYeaOYsZkQD0Bw4
         S5wfVIi2t98xHl9MqKm05y1jAxeQVEy3DFYjAxyM+XXarwHnxAb0nke1ooA9dwyK0iLC
         TvlElvxxWWfu+wtLYCQR4aD7q1czBK2rd31rDmPVnsCABKh7VYO7rzsS2B0VafMyYS7t
         N40A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=2Pe3RotAKsONXLbeUDWB2Dq1itsSY3WMceh0VCB8yHA=;
        b=K+jjUWw76mKm32qpKOCHkNJUetl031A5GDcLFd3jbEHEKvYxDNwg+vDknoBZqcAW2w
         6+cfpdiwHHxDL7XDhVRduqdD1EKS+S7knWjVw/XJlHwBWEHdV7FnoQRjqpE//nRdKf0+
         OePv5dupcFBhGYmfFIp7wmqhEkhtIR9l3wEAhhg/f4pjlqJfPYGC4N6RogLur3Geza1I
         +UMqmuPRXiVP+LDbVZoRGXaJGhKhmsTKQzD7TIBf36CTQ5h+YDHip9t73c/gA0zRMljD
         0tvFllglHSb0q8pI7Hz2f0B9W0fLB5+XkpMpg4vbMuYoTasSv64W17HKg7Xa1Kltq+4h
         9hxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cjuQiHKG;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Pe3RotAKsONXLbeUDWB2Dq1itsSY3WMceh0VCB8yHA=;
        b=MN7oa3a9GdtYLFLTD7Hnl95Iu2nRXxSed60/skMeGb+WAVlXqyKAqMyZ5/f4FxC7Of
         JlXM1wQoqEXuIrCC/iPqKk+g613gxXVjNO4tsMwFbbvY3E2piOmJWfcgau6IWr2JQZxQ
         9Wiv2BlQiATuaCKjLv6cbN+gQtuGu3sYkAM5V8257QMatkRjz5F1oSDc7L2Pp5ccSN/Y
         abjpWc7rFfATXaxT/FRbwaBRiYAzaEmvu8ces3035I1R1z0xuW/DCg/dRESfVoT2ZHJn
         PQ3ANQE4WI1fvNjiAwzRymoqe4W0LC20IRTzykcyMpPCZ92Rt37rqLIxd0Fd4wv3itdl
         PT6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Pe3RotAKsONXLbeUDWB2Dq1itsSY3WMceh0VCB8yHA=;
        b=PbQWgxHEwjUDD3nhbuST1S+yHE11Z3UDH9AIJ+Pn7ev/7B76RdzkiLB2rZJoPV1TS2
         /gN4TsH/YwlwEgY3Rr5Hl1VVbvmGzZtiJWYwHdXMDolfyElrNfHd96QUq5VvtYHc3EaP
         Y8ZlzXyqdgyGkngqL8wT8Zx1WWqO1Km0BU9z37a7iE62YaPqBx9uOOgwk2YvCBlbt3QV
         wrZO05fk1I6yGHTj73TwtJ5LlEvdEwccwvPHlnJPM7pzKpmngak3L03dgEw3atpmZ3/g
         ixx3winQUlDRKvfbFd03jpS38yJDrstO+nr3m4F28hgbkxenvkaShYm9Re0XIBBv2KPM
         t7Uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IeNYSjMpf5yikwRPB1H9RUcSuf177rlXjnux/ZmBpicgY/XhW
	uzngpigzJyWVZczkj7IkuGA=
X-Google-Smtp-Source: ABdhPJzhEY0Fv/OC+rxSCrqzskOw3u+HcfAvgZgdtlBsJRnJnfk3WM8PPGEfJU4KG2jdoXycgA1IZg==
X-Received: by 2002:a05:620a:627:: with SMTP id 7mr776595qkv.354.1604737777377;
        Sat, 07 Nov 2020 00:29:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a389:: with SMTP id m131ls1779803qke.8.gmail; Sat, 07
 Nov 2020 00:29:37 -0800 (PST)
X-Received: by 2002:ae9:de45:: with SMTP id s66mr5319774qkf.281.1604737776946;
        Sat, 07 Nov 2020 00:29:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604737776; cv=none;
        d=google.com; s=arc-20160816;
        b=ze6UXFIa7/PAOXVqaQgDpqPh5ObTQmFsDWLzX1cRzaFDuahtUNcpe03kEwawhtFQyQ
         zSBVN2DEazhtpKLrJUtrkOyXzfQjYRY3WLpbNebw4Ym2itE5ozP6IK8EnjUx8HqhQWa8
         UDey5WNJ8XlfJHvUFrpdVLkCQyFwX05lzbIAXBJNJZNbTbrp7k6WihzmO7eYwAx7497a
         BlZSXxWU/dgUvfACH7sT8EIIGVgFtMaorHcGkckSJpzWfp+WcYfZa4gaa6P+lA4U867Y
         czTPTSRQUP1WY+UsHH67sn8dMoSWNpPri/ghJ2DFAS2LCqoac44r8hEgw4MB6gw2zVug
         6FKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cVROFq9DVYK/4lUZHCCgfohaNFhlAhqou4jH9IkCT0Q=;
        b=XCSXXHJOW4JRxQOzYteXi+oFbxhXC39cwD+q0rFn2W4MSrRu7YoyMozlkOTjQFwErp
         aOFpoAeKkB6HM/gAp8vMlBEC1UyDb5Q3Wl0UO8cUkXLtU8qwWVovhSIma2tLw/CK8Vu8
         AzBGceNiENsb6yH5uq1aus3kauPnBdkroRiODJbyie6zPKVCQUfUmVLDZvM2C+jtRpPE
         P4hBcXmdcnT0+UyIzL4S0K35Z8RKGzQNGmgjWcD7+MSCQrrX11XFMyGF1l3Tc9p7subc
         2W8zGW5qpR3KOcsz6bwOOWPwbKW6/iniHkdcf/r2Bna9yOofGUX92vnLi95EXg/ewCXz
         lJTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=cjuQiHKG;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g19si245765qtm.2.2020.11.07.00.29.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Nov 2020 00:29:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C9FFA208E4
	for <clang-built-linux@googlegroups.com>; Sat,  7 Nov 2020 08:29:35 +0000 (UTC)
Received: by mail-ot1-f49.google.com with SMTP id f16so3580111otl.11
        for <clang-built-linux@googlegroups.com>; Sat, 07 Nov 2020 00:29:35 -0800 (PST)
X-Received: by 2002:a05:6830:4028:: with SMTP id i8mr3492132ots.90.1604737775170;
 Sat, 07 Nov 2020 00:29:35 -0800 (PST)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <20201107001056.225807-1-jiancai@google.com>
In-Reply-To: <20201107001056.225807-1-jiancai@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 7 Nov 2020 09:29:23 +0100
X-Gmail-Original-Message-ID: <CAMj1kXG+qb267Hig6zoO=y6_BVsKsqHikvbJ83YsBD8SBaZ1xw@mail.gmail.com>
Message-ID: <CAMj1kXG+qb267Hig6zoO=y6_BVsKsqHikvbJ83YsBD8SBaZ1xw@mail.gmail.com>
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
 header.i=@kernel.org header.s=default header.b=cjuQiHKG;       spf=pass
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

Please make sure you test this carefully on BE32, as the instruction
byte order used by .inst is LE IIRC

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXG%2Bqb267Hig6zoO%3Dy6_BVsKsqHikvbJ83YsBD8SBaZ1xw%40mail.gmail.com.
