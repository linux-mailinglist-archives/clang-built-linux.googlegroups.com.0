Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZUMSP6AKGQEUFONZBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0966728C3CC
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 23:11:04 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id v196sf8179372oia.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 14:11:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602537063; cv=pass;
        d=google.com; s=arc-20160816;
        b=yDVdBCaYhdXl4HgS+6w4k98pWfAn2IAC1HmSftxd35ubsy2wgxGGoc7EF0F52FSNgB
         qWOpsqQdu0mCljSMTgkyvRDBAnUw3+eOQlnoXNm9QT/Ztkbkn5LvnD3CQXQF/bgsOZ2j
         h5S1w2nhXDNO+ImxZOKmV62GmJsOBWObucyKPtoBsn94zBcyKZa626cK02XkxvlkHP4f
         BK/O3iSFU0zTQpbdBskaZGanFeT1/TaiwQosbpPq24CzUX8zLIYAHwmbK27We+02ccH2
         1blEPN62mYXGWePyxyULmdYCqjM6C8I+w7TQOvy2X1vCkiFixDvEJ3AZ+4ADLBP/nuaG
         aPXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AO6ceDOxOtVdQqyhbQ+JOHq5Fzc2DhLLeTTeb68t1NI=;
        b=Y5PPnHN55d5aR+D1S2pljWv0fxMO44+5zVusCzvf0BtC0B59oKDM8uDTIGDMbcbiUH
         zRAPEkj8ZZO/zGobpKSsI8VNanfpdcqFzc4bWlW1XyG+0vGz28tebQ+Vn3iMZ9VUzLdp
         BtGfHlgHvNSSsH9aInMY77Koz+uI9pV+EaGbMWerqTkCsZin70z/ZIY0+Zqdz6oXvkeV
         f95zJ/wytZpWn6DcusGNHk3UwEOBZB0VYsWdkRaLK2GcPA9VdaqsIed/lVGO1jYa/s3+
         f3bB1PQOijU0ZyCx4Sd5yLJglb/Mn1zgUOp0xGiWbqkzOd2QklPP3DjKqp1f9G0XTmAS
         QvQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dwXUraXO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AO6ceDOxOtVdQqyhbQ+JOHq5Fzc2DhLLeTTeb68t1NI=;
        b=Ax9GxLtAHaQ6TIUdkE6Pu48O6eE9QW279Y3AWrs+W3bKC3Sd9NB1njRy3QeWHj2H+B
         8Y2LfFztM/g+99sQJ4jO5MHuN1vEdlf9d/yF59xj3jbC82KpykI7uxzlGXRk8uIWSi20
         4aWezd4TtoHRrtAe/YRqYmDwpAv2O1C+KkMcCgzVuItvIMH/8hsfQbB7K3LuMRALOnUq
         9VRcs0s/l1aXTRrT2/5PPzd/H+SgN4z9teUse4Qjlx7JxdkyRB2bWmy6xwTFhJC+0UKD
         qsn1ZeURwvRcP1NjNVKiqD1rb9aPVSgDr6Jjdeom5s9lUhd+eWNIJ1Upl+Bl61/3w7xr
         Uu6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AO6ceDOxOtVdQqyhbQ+JOHq5Fzc2DhLLeTTeb68t1NI=;
        b=RpBmSnUTVdvXCHuR/ikbgbeVm8wZ1WR+Tq/2WnsgNVfNuqTUaViaHJU+Qa/0dQBAp3
         0gxwUrwlbGcYAJOkkw/cQEhil7PeMuQ1b3VEIoW8syMuWAUaG/QuSFLdXbg0BjFb2kQd
         YiHCKXZmGnTXYr9lhe5xPzZR7labqaPmwOEiVt0JWuFcO/QAPn0UddPe9wycxw4RzvX+
         lsLSzCKi5eXS+du7J8uXW6uDIEvF6vQ7LEwGOfEZhuqAorK8NFYn3JEkBEBLOdY+CDpN
         KrTY7Bx+BROQcuVaNdCp9EhACeugBaYdgRyfB+J/Xka/uS4P/5YoUBTZsTt8iKGTp/ba
         LVKA==
X-Gm-Message-State: AOAM531xXhdsHHqV2RHjMxNWRtbDAsJnzFPKn8tLFNjjDiELR4+gVsmJ
	OJiAAeB7yZWXONKx7VbunK0=
X-Google-Smtp-Source: ABdhPJyzZSQD0I4rV/t94LNQhPChgo4hEEG2XzjnYVFLM0N8ob9AykF3Rl7r2gq+rxvpOgCcJW9ikw==
X-Received: by 2002:a4a:e592:: with SMTP id o18mr19288554oov.28.1602537062962;
        Mon, 12 Oct 2020 14:11:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4011:: with SMTP id h17ls4244673ots.5.gmail; Mon,
 12 Oct 2020 14:11:02 -0700 (PDT)
X-Received: by 2002:a9d:6f16:: with SMTP id n22mr2910274otq.55.1602537062570;
        Mon, 12 Oct 2020 14:11:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602537062; cv=none;
        d=google.com; s=arc-20160816;
        b=ncnkUwf0ObQFNgqxsV+9sQfosKazoHSsd1rXmgT0WVUgpSyrUtvmK7vX2vPv57akTc
         MirlPLnITFa46Xj7azjxgaBL/x8G82+Q7ZOPDe7FeVDvZX9mzdF4vm4M/zJfnX4r2bRu
         9KIJ9yPi1CJuLoP1gclYAhEN3TnB6MeYABEWK3A4HfRKLpbZtyXyMAAYRjz8bRkl/rJC
         ldRm1fkOwqE+6kySSvIACiJA9E28i3mf7fLb92GT2fZ+FqkRIILv3TQmKwSRWQ4MarU+
         zXh5SRP5T4rgxUu5OEEjKJqzWOxYd+nES6+E8iLB/CAXcZMV0nvS0tuh2vJzB7vAUl4x
         DI8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hznOtUbTWNjEJYZsjBYfp17ENA2WPtrRZnCCOjoEFpg=;
        b=F56X6sNIoNpv5Ac6wRTO9E6j2UT1X6jIJfSi+cg1nejoylWZWGx0xcJipF95FvXzG8
         aNQ3aPYrLRb2Kgzr9907HDX1+3wE69DbvExH6fwdtXnSnzyRDiDhRETn2z6X+9xrlAFV
         YzAjFXh79qORWGdY31G1lLAkQ8v5dmY2HLbwAuY7N3ezm3Pxk0RwfES5d9G7UMMKyy2G
         Jtuh8pT4Hu8Y1jDtQJ/yV7wII4BE40/UPQbI6rzMX+JfrDgx3pibLLSMU793YBfNkfME
         yHmHZT2hTn8I9fF5PxLKm22jeSoJLRKSeFPAVXWtvu4oL18i1GeNqVP/uFBuUNy4b84M
         nCdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dwXUraXO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t22si1706738otm.5.2020.10.12.14.11.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 14:11:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id 144so14810334pfb.4
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 14:11:02 -0700 (PDT)
X-Received: by 2002:a62:6408:0:b029:154:dde2:a5eb with SMTP id
 y8-20020a6264080000b0290154dde2a5ebmr26213344pfb.30.1602537061565; Mon, 12
 Oct 2020 14:11:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200928224854.3224862-1-natechancellor@gmail.com>
In-Reply-To: <20200928224854.3224862-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 12 Oct 2020 14:10:50 -0700
Message-ID: <CAKwvOd=+98r6F4JjrPEoWX88WQ=B-KMRP2eWojabLk6it3i5KA@mail.gmail.com>
Subject: Re: [PATCH] arm/build: Always handle .ARM.exidx and .ARM.extab sections
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, 
	Russell King <linux@armlinux.org.uk>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dwXUraXO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Mon, Sep 28, 2020 at 3:49 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> After turning on warnings for orphan section placement, enabling
> CONFIG_UNWINDER_FRAME_POINTER instead of CONFIG_UNWINDER_ARM causes
> thousands of warnings when clang + ld.lld are used:
>
> $ scripts/config --file arch/arm/configs/multi_v7_defconfig \
>                  -d CONFIG_UNWINDER_ARM \
>                  -e CONFIG_UNWINDER_FRAME_POINTER
> $ make -skj"$(nproc)" ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- LLVM=1 defconfig zImage
> ld.lld: warning: init/built-in.a(main.o):(.ARM.extab) is being placed in '.ARM.extab'
> ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
> ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.ref.text) is being placed in '.ARM.extab.ref.text'
> ld.lld: warning: init/built-in.a(do_mounts.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
> ld.lld: warning: init/built-in.a(do_mounts.o):(.ARM.extab) is being placed in '.ARM.extab'
> ld.lld: warning: init/built-in.a(do_mounts_rd.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
> ld.lld: warning: init/built-in.a(do_mounts_rd.o):(.ARM.extab) is being placed in '.ARM.extab'
> ld.lld: warning: init/built-in.a(do_mounts_initrd.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
> ld.lld: warning: init/built-in.a(initramfs.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
> ld.lld: warning: init/built-in.a(initramfs.o):(.ARM.extab) is being placed in '.ARM.extab'
> ld.lld: warning: init/built-in.a(calibrate.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
> ld.lld: warning: init/built-in.a(calibrate.o):(.ARM.extab) is being placed in '.ARM.extab'
>
> These sections are handled by the ARM_UNWIND_SECTIONS define, which is
> only added to the list of sections when CONFIG_ARM_UNWIND is set.
> CONFIG_ARM_UNWIND is a hidden symbol that is only selected when
> CONFIG_UNWINDER_ARM is set so CONFIG_UNWINDER_FRAME_POINTER never
> handles these sections. According to the help text of
> CONFIG_UNWINDER_ARM, these sections should be discarded so that the
> kernel image size is not affected.

My apologies for taking so long to review this.

I have a suspicion that these come from forcing on configs that
Kconfig/menuconfig would block, and aren't clang or lld specific, yet
are exposed by the new linker warnings for orphan section placement
(good).  That said, we definitely have OEMs in Android land that still
prefer the older unwinder.

From https://developer.arm.com/documentation/ihi0038/b/ (click
download in top left), section 4.4.1 "Sections" has a note:

```
Tables are not required for ABI compliance at the C/Assembler level
but are required for C++.
```

Review-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Please submit to:
https://www.arm.linux.org.uk/developer/patches/add.php

>
> Fixes: 5a17850e251a ("arm/build: Warn on orphan section placement")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1152
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/arm/kernel/vmlinux.lds.S | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
> index 5f4922e858d0..a2c0d96b0580 100644
> --- a/arch/arm/kernel/vmlinux.lds.S
> +++ b/arch/arm/kernel/vmlinux.lds.S
> @@ -40,6 +40,10 @@ SECTIONS
>                 ARM_DISCARD
>  #ifndef CONFIG_SMP_ON_UP
>                 *(.alt.smp.init)
> +#endif
> +#ifndef CONFIG_ARM_UNWIND
> +               *(.ARM.exidx*)

I don't think we need the wildcard, as without this line, I see:

ld.lld: warning: <internal>:(.ARM.exidx) is being placed in '.ARM.exidx'

though I do see binutils linker scripts use precisely what you have.
So I guess that's fine.

I guess we can't reuse `ARM_UNWIND_SECTIONS` since the ALIGN and
linker-script-defined-symbols would be weird in a DISCARD clause?


> +               *(.ARM.extab*)
>  #endif
>         }
>
>
> base-commit: 6e0bf0e0e55000742a53c5f3b58f8669e0091a11
> --


--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D%2B98r6F4JjrPEoWX88WQ%3DB-KMRP2eWojabLk6it3i5KA%40mail.gmail.com.
