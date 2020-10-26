Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBGQ3T6AKGQEVJ2OTJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF0F29974F
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 20:48:21 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id u4sf6063573pgg.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 12:48:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603741700; cv=pass;
        d=google.com; s=arc-20160816;
        b=o2TQaNSf8Bu1n8sgrifvlDTf/fFuOGOJ8EX9Gy1Tpc8ilebAmsJRZHKBSt0lwqGb5O
         PUH+jQXqqtMdyW0zOKXH07K8WyO+hD3Xulcafm4OopFzyD6Q9hipvEn5z6fqG8a4dJZT
         CPgnn5rBSKaIv5cFFQuA4Pc7HUI5LpAWGM8qT83Xpohc/KPx+xV31JWXp7v18qsN57AW
         Ti0XUKPEbokvSnFFtqSCRtiLJuHWZF6lvQa0UCRbMghlhGCyhC27pS3f1oDaLaaiMret
         jzOMsc6RQDeoRgckMPYa20M2jaWs1JkOAHYsQ0sRrz9ezoOJ+mEmCTrlU+H1rUIfzVue
         G7+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hKbMqWFx6fGEW54ztZ0H8HVXT0imnKrTVkk47bLKMx4=;
        b=S2hy4uf3mTO+jTrE5MAdDW3hECvndRowA8H7L1KCxkHzru/61TQ0LFnXyr7s0kapgQ
         k/dU/eUdR4vDBTcypt4tIR3xxi2Mid0+onUDDCZqe6Nia3F6cScWAyaZrOYxkhkIs6Se
         nNzyRUT6tzbzwq4RHUHkMjbypHH6w/9Dxc3G35rzW3Kddw4eVLrc9MvloBwK++yGBpQ+
         dQn1SMLEiqHCQfzraZJ1bghhgZwaphGPDcGIbuIPa4+ig+n6f7AzEol31KP8bjvwzrHd
         dSFer98Syn4xmq8mVP3c3vwdH6nwFm7KCiKzdVAvAlBTiGGUgJJaHVlGQdWw2yzzA0hx
         h/Hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FrcQ2jUF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hKbMqWFx6fGEW54ztZ0H8HVXT0imnKrTVkk47bLKMx4=;
        b=ehaNmcHoKcz1jpwE8UIXa34FX/+Rk1vS3l2B9KrOjYYP18292TA6ga+2W3QF29ofTL
         Cb3IkBy0hxNfKEKKhWI/Qz6OyeV7hLu90rH5cIsNnfUv+hNh3N9BsFHqfXr90GLXoPFp
         uYL14D2xvmVHGtMl90y0JQonae3RkdQOB4Ht7UJ+8W5HK27kd3h7J12aRrpDFY+qeAXu
         hYyrUfHjFfXt757XI088FPDnhIHUNGZ+cYuTQxvq1Xsfmzun5u4GtPM2Qv+ArLINASxi
         X9ZDdmQjiIG2Il8DBUlSHlUPmGleREJ0lSUGDPSHBBfczzRhVh5h/GWfI6/7HGt6WHv0
         Ycwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hKbMqWFx6fGEW54ztZ0H8HVXT0imnKrTVkk47bLKMx4=;
        b=JzJPvKx/c9JEIPI6dIf9AgxsHr3NJ2AEvxJ669WUOt7hLegXs1cfIc0RUMyYJ1Vlbx
         xMnjwuBLfgHzcbWDcAgbrTKolMhximfLQdA6O4ABFjgAUGHdF6ozzFRAhMDUuS15Wxgn
         eeImaQX5H3IyjkX8wbjfMjzy5r7N4RsObyu/+0P4rFjZPrf917sNXeWAyUFM05kkM7hW
         FnSq3z8nPN3374VHOWXShIlEb1wID53BGmMVYz3Hk2zS01G0IFMGL7TETf3IrpcoJ+QY
         ls/U+Lct1aVNanukACWnLbXelYWTWczYQF8Di7B4VkBV8WT+mIAGiP53Fmksl7jUhYeJ
         OASg==
X-Gm-Message-State: AOAM532Ki+7GOiV51ixUbQKH+5d48y2pv2GRNmmuzr9RN5w7ljrqk7Kj
	EorKdkL4mFKqC77Xrpz1COE=
X-Google-Smtp-Source: ABdhPJx3S+utkgikQsAMO9X52TrW761NFknsekEyUSiKkN+x47IxGQiktRwooi6jIIa0KivH1aPVEw==
X-Received: by 2002:a62:ce45:0:b029:160:764f:a9ac with SMTP id y66-20020a62ce450000b0290160764fa9acmr10336261pfg.29.1603741700650;
        Mon, 26 Oct 2020 12:48:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7f13:: with SMTP id a19ls3383534pfd.9.gmail; Mon, 26 Oct
 2020 12:48:20 -0700 (PDT)
X-Received: by 2002:a63:5c42:: with SMTP id n2mr18282696pgm.14.1603741699958;
        Mon, 26 Oct 2020 12:48:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603741699; cv=none;
        d=google.com; s=arc-20160816;
        b=1Kdh+zMlIzIIuYzgbeqLKy5VpIQEqN2tR5IB3i44BPWQkIKSlieIspGUNIgJ7LjK6A
         fcZH5IhKgeKR/xlyPyMV4eUOBQIqHIJTahCcRYyrsLTimcLf8oFH/NypsXsIsurpr/CK
         dCuDzIJsvcmkgKJECnFjUBKFihFXee/VWwWGNCJrYWIwRtdnCqF4OZZ4tDE5Q6bFfNve
         i7KN2mGav3kvXrAEOiIqOYbRKphlgJ0y7qRMtyWC5U6ODKLkJULi3yCSOn4Rizpop+Hb
         wUerBOen1jsr7JdHlBx3RZ9+ACDgAkvFlf16wGBW0jibHndgvzweXd76hFhChZmMctks
         0bkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=doiRAFC5F5k0Pyq4fvs/ODdap3/UO+Ut/LZ4yfCBqcQ=;
        b=sxcIYK/SSMSpCw3jinPWjbR6GvpjULNEXZZBSHHSa+BJnMdYe6KB1f/UvhuCcF9/EM
         GOUjp+/EzE5Ydfd8w3MZy9qdjNT8ddRmGlgcHamcYSJdKxaTouPMrTuTNLU2rCMq8Sk1
         vrq/mYg1XzpnvkqQG1ZcG/OobdQZTUASrauleAQ4OgJAdgF0UZttjkW7h16dC2VMnhOv
         rEMEZfX2IlTL9hacQWKRGpbs6kOVRwUFuwAxvLGe0rYKn6VJ1GFJgzU1yJlMSJWdNANP
         xyd8H+xPqIYnRiChwR1xB2E17euT8KRMq/2R1lU/VI/3rQYzAiUzQKSorW/Ia4QRVs2C
         lqWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FrcQ2jUF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x24si622320pll.5.2020.10.26.12.48.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 12:48:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id e15so6784521pfh.6
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 12:48:19 -0700 (PDT)
X-Received: by 2002:aa7:9a04:0:b029:163:fe2a:9e04 with SMTP id
 w4-20020aa79a040000b0290163fe2a9e04mr3150062pfj.30.1603741699320; Mon, 26 Oct
 2020 12:48:19 -0700 (PDT)
MIME-Version: 1.0
References: <20201024045046.3018271-1-palmerdabbelt@google.com>
In-Reply-To: <20201024045046.3018271-1-palmerdabbelt@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 26 Oct 2020 12:48:08 -0700
Message-ID: <CAKwvOdn5ib_WHpTg8YpHtqeOMLs+QDxVkzb8fuyDUL_N9BA_xw@mail.gmail.com>
Subject: Re: [PATCH v3] RISC-V: Fix the VDSO symbol generaton for binutils-2.35+
To: Palmer Dabbelt <palmerdabbelt@google.com>
Cc: linux-riscv@lists.infradead.org, kernel-team <kernel-team@android.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FrcQ2jUF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Fri, Oct 23, 2020 at 10:03 PM 'Palmer Dabbelt' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> We were relying on GNU ld's ability to re-link executable files in order
> to extract our VDSO symbols.  This behavior was deemed a bug as of
> binutils-2.35 (specifically the binutils-gdb commit a87e1817a4 ("Have
> the linker fail if any attempt to link in an executable is made."), but as that
> has been backported to at least Debian's binutils-2.34 in may manifest in other
> places.
>
> The previous version of this was a bit of a mess: we were linking a
> static executable version of the VDSO, containing only a subset of the
> input symbols, which we then linked into the kernel.  This worked, but
> certainly wasn't a supported path through the toolchain.  Instead this
> new version parses the textual output of nm to produce a symbol table.
> Both rely on near-zero addresses being linkable, but as we rely on weak
> undefined symbols being linkable elsewhere I don't view this as a major
> issue.
>
> Fixes: e2c0cdfba7f6 ("RISC-V: User-facing API")
> Cc: clang-built-linux@googlegroups.com
> Cc: stable@vger.kernel.org
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>

Any way to improve the error message if/when this fails?
https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/407165683

>
> ---
>
> Changes since v2 <20201019235630.762886-1-palmerdabbelt@google.com>:
>
> * Uses $(srctree)/$(src) to allow for out-of-tree builds.
>
> Changes since v1 <20201017002500.503011-1-palmerdabbelt@google.com>:
>
> * Uses $(NM) instead of $(CROSS_COMPILE)nm.  We use the $(CROSS_COMPILE) form
>   elsewhere in this file, but we'll fix that later.
> * Removed the unnecesary .map file creation.
>
> ---
>  arch/riscv/kernel/vdso/.gitignore |  1 +
>  arch/riscv/kernel/vdso/Makefile   | 17 ++++++++---------
>  arch/riscv/kernel/vdso/so2s.sh    |  6 ++++++
>  3 files changed, 15 insertions(+), 9 deletions(-)
>  create mode 100755 arch/riscv/kernel/vdso/so2s.sh
>
> diff --git a/arch/riscv/kernel/vdso/.gitignore b/arch/riscv/kernel/vdso/.gitignore
> index 11ebee9e4c1d..3a19def868ec 100644
> --- a/arch/riscv/kernel/vdso/.gitignore
> +++ b/arch/riscv/kernel/vdso/.gitignore
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  vdso.lds
>  *.tmp
> +vdso-syms.S
> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
> index 478e7338ddc1..a8ecf102e09b 100644
> --- a/arch/riscv/kernel/vdso/Makefile
> +++ b/arch/riscv/kernel/vdso/Makefile
> @@ -43,19 +43,14 @@ $(obj)/vdso.o: $(obj)/vdso.so
>  SYSCFLAGS_vdso.so.dbg = $(c_flags)
>  $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
>         $(call if_changed,vdsold)
> +SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
> +       -Wl,--build-id -Wl,--hash-style=both
>
>  # We also create a special relocatable object that should mirror the symbol
>  # table and layout of the linked DSO. With ld --just-symbols we can then
>  # refer to these symbols in the kernel code rather than hand-coded addresses.
> -
> -SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
> -       -Wl,--build-id -Wl,--hash-style=both
> -$(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
> -       $(call if_changed,vdsold)
> -
> -LDFLAGS_vdso-syms.o := -r --just-symbols
> -$(obj)/vdso-syms.o: $(obj)/vdso-dummy.o FORCE
> -       $(call if_changed,ld)
> +$(obj)/vdso-syms.S: $(obj)/vdso.so FORCE
> +       $(call if_changed,so2s)
>
>  # strip rule for the .so file
>  $(obj)/%.so: OBJCOPYFLAGS := -S
> @@ -73,6 +68,10 @@ quiet_cmd_vdsold = VDSOLD  $@
>                             $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
>                     rm $@.tmp
>
> +# Extracts
> +quiet_cmd_so2s = SO2S    $@
> +      cmd_so2s = $(NM) -D $< | $(srctree)/$(src)/so2s.sh > $@
> +
>  # install commands for the unstripped file
>  quiet_cmd_vdso_install = INSTALL $@
>        cmd_vdso_install = cp $(obj)/$@.dbg $(MODLIB)/vdso/$@
> diff --git a/arch/riscv/kernel/vdso/so2s.sh b/arch/riscv/kernel/vdso/so2s.sh
> new file mode 100755
> index 000000000000..3c5b43207658
> --- /dev/null
> +++ b/arch/riscv/kernel/vdso/so2s.sh
> @@ -0,0 +1,6 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0+
> +# Copyright 2020 Palmer Dabbelt <palmerdabbelt@google.com>
> +
> +sed 's!\([0-9a-f]*\) T \([a-z0-9_]*\)@@LINUX_4.15!.global \2\n.set \2,0x\1!' \
> +| grep '^\.'
> --
> 2.29.0.rc1.297.gfa9743e501-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201024045046.3018271-1-palmerdabbelt%40google.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn5ib_WHpTg8YpHtqeOMLs%2BQDxVkzb8fuyDUL_N9BA_xw%40mail.gmail.com.
