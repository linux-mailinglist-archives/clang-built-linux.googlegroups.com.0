Return-Path: <clang-built-linux+bncBD63HSEZTUIBBLHD537AKGQE35CH5II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 929292DD956
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 20:29:49 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id e4sf19260471pfc.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 11:29:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608233388; cv=pass;
        d=google.com; s=arc-20160816;
        b=UutVaUAelas4lqIrMAbIOr7VhOS5CYp+XvxhI2r5ASmjP1tjKC6ACtWrJui/Nibc9u
         wbwM/8k0f0WZCqyK16ns0LOFzl8z6xMLriRF3yCZFefV/unWzt5kBq7yHayiPsAYdxM7
         JAenT1gbA/QvP/uaJpKJsqzaALRBKklBFDfaZbsDUHeG5uolHgVEGJv6zimSBChvAZoM
         lGRDfZRsdNWuRIaWQXYwwH96Vo34Gzyyl5Vd6YqYW9t26wwVAYwSGUxDPPFIETP4faLE
         RcrYt8Rib8wSZS8q5m/O9MdsOl9T6rgCnPkD16mEZTF3p8cKQDZHSqd093hTBkYlb7Bm
         DhGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=Qyk0AoZwWh7aMwDs8LJUjEEHRNzFk20JUsd+wfw44RM=;
        b=i33qyNcictvYip2mFByTgHH0CFPghFejS6Qv8+p5FPjTzRml2jSrx78t/NdeOAlJZU
         G8cR7vkT6VoQF1/MAcPVero/oopsWc3H+/beDe2ecp4Kv0pY/5G364O05YpVu9puOsEX
         Pd+VIQAtMpzL/cbzzd4L42sWF0j+2CkqOtTa4sZNtwFDDUUggoF29dyboBtGxie/O74N
         8xUzDPTxqvmmiejVUI7etbDTirs0WAiKjnCR3ZJj8j/berExqLbm/rebODUB0/BBTZ5Q
         PO4i1n3TG1P0+qZLAPT0hyjv4YLhbb0YMegfv/A0FpnihZbfN40q9qrB6gPpl1GEB6Fh
         DSAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tM3fpjtJ;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Qyk0AoZwWh7aMwDs8LJUjEEHRNzFk20JUsd+wfw44RM=;
        b=nIwaUt65TnJs29xizFGoNgjRolJFSNy1JXy8oHEpR2FdblUaKUwmoqgqnysQXI0l8B
         3PDKLaj+VgsoGLGRNf/ibc+WsiaLblchBQmcCu7qt1pJEUj8mMMNqkQyNANeunBhe8SE
         hhZdlkBcRq9xmmwqLHdz0ZCNt673F3PwGzo5kwq2HNxFZMuSsWJRPWQfcyJ6vORKDJlz
         Wwtv1vZriBMw8AK90D4Hu0jOP4y8rzo66snZDanLOsjKI3eamEpwHH7LTpFoTgTKw7N4
         nw4Zu4xMqP8mtiGQ22CR1WLN2RymnUwZAXEeuHB8XAhvVf9JES83HJyF0Nj/OZSwqCog
         FByQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Qyk0AoZwWh7aMwDs8LJUjEEHRNzFk20JUsd+wfw44RM=;
        b=bIPfg+BFRYQuvJCDtC4nK/DIN7CnwDXFDAKQMCmt9DVZ2ttlN/d+QC9bA7jKg+OuIH
         aT/D2MYX1uw8h7cZDvllPiV2RLCGqL3FzPRm6aFn2tQeTJXhLHq4iTAp9tPjgVz1ZThj
         /YFK0cxbFngTnKffVIHfUxsNaqZ3iviyBKOIIJ1qNo1ETYzMY3aY9T8q64192GejzphE
         GuU5/Ob4oTak5s8wkrJ7y26D2uc8ILtrvK+T01bsfJkGEdKW20ONocZiWUihlyF8BLk2
         gzYmJdY1EI2F0f9j5lY31Vm725yP3xRZM8ebUmWiVY4pOjwPCWgtlcPjDVmJY/6PmSue
         lyZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533upI9KNdHAGySgbE2DTRl6rrDn8FHa56dh8oU2W6RaHZUBJzFy
	wPsmABFSDZf3GPWxWvRtXmQ=
X-Google-Smtp-Source: ABdhPJz+DzLKp3GuulFZs9taxgwRID82sFg4+fMaweFeRW9LAkKrZgId8IFrkL4vEa37LCUmb+awrQ==
X-Received: by 2002:a17:90a:a382:: with SMTP id x2mr281277pjp.178.1608233388289;
        Thu, 17 Dec 2020 11:29:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:959d:: with SMTP id z29ls7108992pfj.2.gmail; Thu, 17 Dec
 2020 11:29:47 -0800 (PST)
X-Received: by 2002:aa7:8ad0:0:b029:1a9:3a46:78d1 with SMTP id b16-20020aa78ad00000b02901a93a4678d1mr315549pfd.77.1608233387673;
        Thu, 17 Dec 2020 11:29:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608233387; cv=none;
        d=google.com; s=arc-20160816;
        b=Q37C1tcku657dqSjGrgk/fUbRi5kJL8BQ6bbonh9Qz5ywd6S+xhdz8EBFFp20royhT
         O/1f+XlBSs3xioG8fKphhmgNiTmHbysHkWEm4TqNYmXQ5dC3SlB9Ymjh21hlAkVzKWOJ
         +KcO6CRIFinfxzP8hglj6K7NRQr32a05XxpvhQlIzkylc86NkHIr2ThO3GQ+2OoaBteh
         o0m+NA32QbtRGjUJraCLbrIBlb5MtwHk1CNzeJNpXOYsphorbTnc2G6AH8OIeTswZev0
         WTo4esiMdZiPfv4DW+Kv2YFbwZYp//rCoEMg/XFaimautzAXsnWmweflwBiV1hQoR/AW
         zCUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=kLVgL1txm2869M+qHEoINXYqm+s85l4eqyCmuAhMPf8=;
        b=WZxevcGXwafAspigAIpaH5uAZyasjR1Rh95qQ0dINxC018C6RbCf1mGnWrf8W5QPgh
         sJ+aG7NpQEzyEr7VqPloQUDsM72d0i9PfFOyy2mJxaDKfOLpHmFURFteUOsuReM6gy0g
         wDFA4I0IYoFMKne2xmr5aD2MGvyMrPNZ0apKsqxm7EhmnbjZodyr5FQHbqCkXXNlwsGs
         eMFzD1kXfT07769aQERN1OlteeZaypb/i9MXNw/elUts5iaZ5XtQ03F1MXD1CUjkDSb5
         hmUQNqR0QrOTnEz0f6+XvtiJgU2w0WLgnZhkr+HpjKYp6KhO/YW4MchR55UqY7Gqpzu1
         buOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tM3fpjtJ;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d2si503079pfr.4.2020.12.17.11.29.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Dec 2020 11:29:47 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a05:6830:1c24:: with SMTP id f4mr362030ote.108.1608233386622;
 Thu, 17 Dec 2020 11:29:46 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdkP8vHidFPWczC24XwNHhQaXovQiQ43Yb6Csp_+kPR9XQ@mail.gmail.com>
 <20201217004051.1247544-1-ndesaulniers@google.com>
In-Reply-To: <20201217004051.1247544-1-ndesaulniers@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 17 Dec 2020 20:29:35 +0100
X-Gmail-Original-Message-ID: <CAMj1kXHpVDmZqgULT5Jsjwbfd8a5a6D4ojZXwTUUxi-DWvAFOA@mail.gmail.com>
Message-ID: <CAMj1kXHpVDmZqgULT5Jsjwbfd8a5a6D4ojZXwTUUxi-DWvAFOA@mail.gmail.com>
Subject: Re: [PATCH] arm64: link with -z norelro for LLD or aarch64-elf
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	kernel-team <kernel-team@android.com>, Peter Smith <Peter.Smith@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, stable <stable@vger.kernel.org>, 
	=?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Quentin Perret <qperret@google.com>, Alan Modra <amodra@gmail.com>, 
	"kernelci . org bot" <bot@kernelci.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=tM3fpjtJ;       spf=pass
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

On Thu, 17 Dec 2020 at 01:41, Nick Desaulniers <ndesaulniers@google.com> wr=
ote:
>
> With newer GNU binutils, linking with BFD produces warnings for vmlinux:
> aarch64-linux-gnu-ld: warning: -z norelro ignored
>
> BFD can produce this warning when the target emulation mode does not
> support RELRO relocation types, and -z relro or -z norelro is passed.
>

RELRO is not a relocation type, it is a type of program header which
we might simply ignore, if it weren't for the fact that it can only be
emitted if the layout of the sections adheres to certain rules (and
ours doesn't), and we get an error otherwise.

It amounts to implicit __ro_after_init annotations for statically
initialized const pointers, but given that we don't compile with
-fpie, those const pointers reside in .rodata already, so RELRO adds
no value for us.

> Alan Modra clarifies:
>   The default linker emulation for an aarch64-linux ld.bfd is
>   -maarch64linux, the default for an aarch64-elf linker is
>   -maarch64elf.  They are not equivalent.  If you choose -maarch64elf
>   you get an emulation that doesn't support -z relro.
>
> The ARCH=3Darm64 kernel prefers -maarch64elf, but may fall back to
> -maarch64linux based on the toolchain configuration.
>
> LLD will always create RELRO relocation types regardless of target
> emulation.
>

RELRO program header

> To avoid the above warning when linking with BFD, pass -z norelro only
> when linking with LLD or with -maarch64linux.
>
> Cc: Alan Modra <amodra@gmail.com>
> Cc: Ard Biesheuvel <ardb@kernel.org>
> Cc: F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@google.com>
> Fixes: 3b92fa7485eb ("arm64: link with -z norelro regardless of CONFIG_RE=
LOCATABLE")
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Reported-by: Quentin Perret <qperret@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

With mentions of 'RELRO relocation types' fixed:

Acked-by: Ard Biesheuvel <ardb@kernel.org>



> ---
>  arch/arm64/Makefile | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 6be9b3750250..90309208bb28 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -10,7 +10,7 @@
>  #
>  # Copyright (C) 1995-2001 by Russell King
>
> -LDFLAGS_vmlinux        :=3D--no-undefined -X -z norelro
> +LDFLAGS_vmlinux        :=3D--no-undefined -X
>
>  ifeq ($(CONFIG_RELOCATABLE), y)
>  # Pass --no-apply-dynamic-relocs to restore pre-binutils-2.27 behaviour
> @@ -115,16 +115,20 @@ KBUILD_CPPFLAGS   +=3D -mbig-endian
>  CHECKFLAGS     +=3D -D__AARCH64EB__
>  # Prefer the baremetal ELF build target, but not all toolchains include
>  # it so fall back to the standard linux version if needed.
> -KBUILD_LDFLAGS +=3D -EB $(call ld-option, -maarch64elfb, -maarch64linuxb=
)
> +KBUILD_LDFLAGS +=3D -EB $(call ld-option, -maarch64elfb, -maarch64linuxb=
 -z norelro)
>  UTS_MACHINE    :=3D aarch64_be
>  else
>  KBUILD_CPPFLAGS        +=3D -mlittle-endian
>  CHECKFLAGS     +=3D -D__AARCH64EL__
>  # Same as above, prefer ELF but fall back to linux target if needed.
> -KBUILD_LDFLAGS +=3D -EL $(call ld-option, -maarch64elf, -maarch64linux)
> +KBUILD_LDFLAGS +=3D -EL $(call ld-option, -maarch64elf, -maarch64linux -=
z norelro)
>  UTS_MACHINE    :=3D aarch64
>  endif
>
> +ifeq ($(CONFIG_LD_IS_LLD), y)
> +KBUILD_LDFLAGS +=3D -z norelro
> +endif
> +
>  CHECKFLAGS     +=3D -D__aarch64__
>
>  ifeq ($(CONFIG_DYNAMIC_FTRACE_WITH_REGS),y)
> --
> 2.29.2.684.gfbc64c5ab5-goog
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXHpVDmZqgULT5Jsjwbfd8a5a6D4ojZXwTUUxi-DWvAFOA%40mai=
l.gmail.com.
