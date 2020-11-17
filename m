Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYGKZT6QKGQET62B4AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 846862B562F
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 02:20:33 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id d206sf9210337oig.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 17:20:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605576032; cv=pass;
        d=google.com; s=arc-20160816;
        b=EKzJ/ujvZIBBJ/uNEB8rBQ9qbrzgbPWRYdkzZIDfdcbA/gsSMUr1yPlQw10VHmBiNm
         i3Z2LEQeu0viJZkWOp3jkehJvmbP5TG5Avce7HOeWK7/BT58BybtkVjBw4ai2Mzu+88C
         1yyvD3aVBugixxJjjbu1ySLgvmLNlH+Mpbm9WyIEfrBivKZrcaWc1QMBA1KkCOIVsLwa
         5uLyar2PSUSFKkXJhGynGt+1H5+Om1bMUEq+gqdzzL/xyUUEGU5qAvc/5ygfWxfEpMGK
         pHqFUL9rDxVjCs/7lq8vk4PwKWVJorjItEoOOna0aRPXHJ1lJ6qILq3FaASKh3MV8gOx
         PFZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8hy/yVTa+0rPNJwdVni9HSR4+MDSRWhd9E55q9XbKMI=;
        b=rpiN4oQqBPdfqjVeym8r7Btr+P04tdzdJYi//bfpHNiJ58Bz2go592OaaEOy4u92JX
         l5KzWsU9icjUzEOTluhgpt13S/TIQAXabsdKV+Iamz0+nIqbbTzFE3zxFafZIrV5eJe6
         fxDG19qKd/p3BE1HGS4CyxJNz2VTfQiinyM8Q7DQZi8Y2rnearMMGxVCRNDDayvDvElv
         M+T03NyuTU7fY19b6y/oTo6m8fAeXeG/PRA5VGJDo0Y9EFfAqc+GtnLKlyVlPFY+2QF2
         0PZlbJzQSjoBrqtG1fxPm0hd337WKtHe4RA5n1i7HCbqd75n4MAXj2ZKATLe5/UkLH0h
         vUJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Su1SqnM3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8hy/yVTa+0rPNJwdVni9HSR4+MDSRWhd9E55q9XbKMI=;
        b=HeCR3O5FbAKmlNZlFaZPBieWlnerh5pTSB0Lt+5bzg2FDwVwsdAb9LHgfeoVtv+nLY
         3xkNVTqRznBJ4ILzA34NttDaKtVJzA8lDibN3ICXRW2wNJ9m0Q5fwp8z9CSN4Wqedl2A
         Jyn7BVEQgsVrj6LFctRh2522jx3VtbNvO2kbXQUhM51CCl4fJzn/nY458Wokt55Uh1oX
         VKgLdLYNPjuG9cWg0D/9yg+iIWxAYS7HXtI8TexzHEeyiKT7vIIrcLJkB/os/lYRYKWq
         n7fMK26M/qoETdKH2ZAuYvLz/Sx52ykMtY+xS3zuQfE6TONSP9aEl3tdr5EZ/adm0xq6
         EF5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8hy/yVTa+0rPNJwdVni9HSR4+MDSRWhd9E55q9XbKMI=;
        b=NyrSfrX7TT/i1k4um7gvf3Tfh9Mebq9JSbAkyN3i2IkH7jSX6Ubv6tI5PqzA0YLHIX
         dgcQv3WiTelIb+TtBhORebm3AhS9CsixHdVKDTyuVRGNUrjeIL2/5rNPONUznnQ8zakH
         cGzkcEXBF89bMZE22q75fIvM4XIUiTzM05+PRnswaL3O+9YED3ccVxDn+mVPijR8CQ5M
         lwbvo8/u+sOufM8++KEfyh2gzfsqZY8s63rVjGGJdi5A0SoE/WFoCy+yroV7/lwzPNXS
         oFsWT7gyTvl7tTOqBb3z5a4MGuchYyzECCbArgZF6VuIftCBjjpLR0zFyXyWrNWUv+v0
         bU1g==
X-Gm-Message-State: AOAM531GPJzdQzgL5KmKNzcWMbfcrD6jyedazm3jKWi97sMf3OkCeXyw
	gX0Yb1PsnCsf/KT4hhpdyLE=
X-Google-Smtp-Source: ABdhPJxqBvFtspyJrpepIf8EQVvrFgsBbHn/kTmwyUUNUfTYODRUeCrrgD8Qm/odt6xnJtMfekijyw==
X-Received: by 2002:a9d:589:: with SMTP id 9mr1492326otd.72.1605576032457;
        Mon, 16 Nov 2020 17:20:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4fd0:: with SMTP id d199ls3620130oib.5.gmail; Mon, 16
 Nov 2020 17:20:32 -0800 (PST)
X-Received: by 2002:aca:b757:: with SMTP id h84mr1037320oif.98.1605576032159;
        Mon, 16 Nov 2020 17:20:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605576032; cv=none;
        d=google.com; s=arc-20160816;
        b=V9KwqurX3Nhn739D3+F7oAeCE24q/XryDl84q/aynd3XDmb7jZQU+fl3n5SXjlipln
         PfTCel4rpzE7QO4ZcXG8KmEIsTqY1kJeSMZ8meVEOZHQe4CTRGCuHYMbVbXnI8CKxHHU
         A9SGSf3YTVS4cH4yd7iMGHQ4DgH1pmGqO6r4uLbyaYJLh3+YXgu4Q4xv69LPnrYeKpH1
         zqI7Gmwmu21CJO3mEqDILEhhKrRSFQXJkKshSsMk5VrbnwhI7v3rWticNS192N7egvw0
         3dkjUMJHld6Bc0cSGWY1M4ANTbWJSrsUzOX8bemDfGTRGmfO1Ka8A2gMSOmPBT92L1UQ
         Q1wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9pAwfts0XCRV1ZtALd8qKrZVsKZpsyUQ82CfQDJP6mE=;
        b=ShiiLx7vqNsbBzkzV9q8V9TE/MPg4iCSqV9XnaIbsJCC8hfm0CM45ZahI4kQJxhhAx
         Ngnonwzb91mqUvTjefBtR3PmZgRw2jdLa3IlEwJvn5m0XMcFE7Md+yoirQr/NeBRxMSg
         yFAuTf8Djqb5VYi5KEhr35DfL0YOAzWLWD9PsV6LxQ9lPBsJxrN4xPmQvnoVh5r0j2Mr
         JeK/0qt2Ar5+kyAPbbOdyFfIK/WqJKPnqCPHMwBmovBlSu89q5LUN3FHQReCSDRBNvL2
         B59U1DKa/5BFAfmdRudVNFhXOvFuO3XoZjrLU9T3PFjAX6SjdO3OqPSGUdq7GCgODlQl
         4r4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Su1SqnM3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id d20si1903506oti.1.2020.11.16.17.20.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 17:20:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id f18so14826908pgi.8
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 17:20:32 -0800 (PST)
X-Received: by 2002:a17:90a:6b04:: with SMTP id v4mr1857507pjj.101.1605576031321;
 Mon, 16 Nov 2020 17:20:31 -0800 (PST)
MIME-Version: 1.0
References: <20201112200718.2747316-1-jiancai@google.com> <20201117003724.2381423-1-jiancai@google.com>
In-Reply-To: <20201117003724.2381423-1-jiancai@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Nov 2020 17:20:19 -0800
Message-ID: <CAKwvOd=LxU-eJ-Rf9fH-0P8dWiqU335ntG2RzHrn5SvRHDNG5g@mail.gmail.com>
Subject: Re: [PATCH v4] Make iwmmxt.S support Clang's integrated assembler
To: Jian Cai <jiancai@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Russell King <linux@armlinux.org.uk>, Nathan Chancellor <natechancellor@gmail.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Su1SqnM3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Mon, Nov 16, 2020 at 4:37 PM Jian Cai <jiancai@google.com> wrote:
>
> This patch replaces 6 IWMMXT instructions Clang's integrated assembler
> does not support in iwmmxt.S using macros, while making sure GNU
> assembler still emit the same instructions. This should be easier than
> providing full IWMMXT support in Clang.  This is one of the last bits of
> kernel code that could be compiled but not assembled with clang. Once
> all of it works with IAS, we no longer need to special-case 32-bit Arm
> in Kbuild, or turn off CONFIG_IWMMXT when build-testing.
>
> "Intel Wireless MMX Technology - Developer Guide - August, 2002" should
> be referenced for the encoding schemes of these extensions.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/975
>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Acked-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Jian Cai <jiancai@google.com>

Since only the commit message changed since V2, carry forward:
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> Changes v3 -> v4:
> Forgot to include iwmmxt.h in v3.
>
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
> 2.29.2.299.gdc1121823c-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DLxU-eJ-Rf9fH-0P8dWiqU335ntG2RzHrn5SvRHDNG5g%40mail.gmail.com.
