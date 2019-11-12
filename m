Return-Path: <clang-built-linux+bncBDYJPJO25UGBBN66VPXAKGQEEHHXLTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B85F9770
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:43:21 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id a14sf15979725pfr.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 09:43:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573580600; cv=pass;
        d=google.com; s=arc-20160816;
        b=grBT5s/kvRecTwC6qsTti29hot8Xz63UyAoSwPwi3X4MqmMED4hc1RxOXWBVF2XH98
         eEu+X/vzqeDrDBYS3baDD5L5tZvrH6t3yboKs/zjpQcr+fOHyVAKxi1cRyizm2+rGQ17
         L0Z6JJdrUEhQruExhhKEQWztsBGn66s7hOqFvxxdvFkNKi6vWY5npFTp8eiVuWoaMsdz
         m0dj45BSXeVeNRcj2EcR0OUc9JkvmyZdrpJ5Aiv6dDi1gWu1Kn9KIj4P9NV/YYHb2aI0
         dOPfiVBMg2/eWz8hFrX6sAa2YtPNV78tSaCJk8rGcesmXqu2oDovLVpU7lLsHmr+HrLC
         ZQAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0gX7yOTb88mQMg5uzzoam4Nt1Xnjh6shRYg64oIb1Bw=;
        b=VUqQAVGc7TMGL1HYgyDHcdjFAkyCtHGMa6RXR6HLeK2ZPXAgkYLsJlUVv9SDO9Yofp
         3YHtd9XaM65Z7PNTt0ZbgW5GhGXXjrVqbfhHqmH6E6tsSSvcQMiy9w8UWOcFzdDAvYrK
         3p2yVEW2ZnqxdZ3R+zbIXj2DTsTat7nf0MWPiqwbbT3wOHy4tTopFsdB/1S4kQl5c+xL
         f0/fmPgzl2Dt3luQDV/gS/tcovjnxvNVbTU1BydAotybUVQ8VegbRk75BNGKyDcG0dsb
         301MfFOS1IiiwhrxS0P8RNop5lKtWx0dZ3PfjFJk/ldRJT+vck6qet2x5hksivjUxYpu
         GYRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cNd0enXk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0gX7yOTb88mQMg5uzzoam4Nt1Xnjh6shRYg64oIb1Bw=;
        b=NnA8mh5CkDgq5xXZ/La0CHp0iE1TleniOeC+67kkSRtS1/YiAfmAJz795Yli5gOlko
         BwFoM50LyuglNAegT13BJIYE7IkGitRnOawXEIahtNjRdafovzj1PG4uJvMLq0348QfF
         u7fT80Ek6JA8ZChPohNw1QOuIvcxFzcI31nRj6mRuc5T+g042HEk8yoIMunFIiUvwdqf
         Aj1ecJH7kgx6J5kIaKd+9O29fCDMRFLgwaBbpWT7G5psl2+9DspfapipLpa/9f751DS2
         s3ITdNNhoEZkT9cpvMEGmv70NS1vNU84KATmed8ossbapUnxUxzEgjJVmSxPYcA/e34k
         EUXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0gX7yOTb88mQMg5uzzoam4Nt1Xnjh6shRYg64oIb1Bw=;
        b=A4Dvl+GSFWwcQydetgbnHOatO0Rp8wZJmOeXdPb2zfgBKOtUzChK2SljbzcglRTbUU
         t6Ll0ZqubRDI0csRNeHTGqOR72DEGmXWD6XyEzm/xxnOsAW7S1Nbug9otK8kA0fswj/j
         44pZ1eqMsxtdR+SgT1O45mUAuaQ0+2Sufj/9k8j7orUy9RuTzWQN3QtRHG3E04hmcLXN
         B8jXTE/QgS8htar9sRrq1nDVu7kwkoV7/qy99r5fD61wPUPnthnVbU72o1RgRF1xsGP6
         brlsvICb1k1vNdz8uQ+WPKdB0FN1jE/LhwRvRHJ4VmRt7G4AVu6u5NXQ5iYd4UqrjwMl
         k1LQ==
X-Gm-Message-State: APjAAAXtyhNUBPP+eJnBD7lpfSiJEWqoiKDa3nmeB7Yr+m1wQoqNWb0I
	d1nTEfsVQICcCmFKp3XcjK0=
X-Google-Smtp-Source: APXvYqyUwHnR/p1oXdcGfusJ6/mdmcNiYwY8jEj38FG767Zq47MXziiJR75rTS4KOUf5YCRzDEBVRA==
X-Received: by 2002:a63:ca05:: with SMTP id n5mr36106189pgi.187.1573580599866;
        Tue, 12 Nov 2019 09:43:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:cb98:: with SMTP id a24ls867936pju.4.canary-gmail;
 Tue, 12 Nov 2019 09:43:19 -0800 (PST)
X-Received: by 2002:a17:90a:2e03:: with SMTP id q3mr8162331pjd.63.1573580599326;
        Tue, 12 Nov 2019 09:43:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573580599; cv=none;
        d=google.com; s=arc-20160816;
        b=AIqmFuABAYQR5IuhsMs0tw4ZL81eJxv5WrdRiOe15a6nvw5iHuTnDKjOVDuhVxkElk
         2JLhXgCzW3Bd9sXby01FSRgNU81DmE20BdYRWrmKccmhpXzBbfDwd08e7RZjWN6S8XRZ
         AaNAtSRdp4BZC7Cyumc/quZ9uap2wKNjGNiINVr/5FMiPqmkWv4yCfPhmF5e6J3QjM6r
         99lJkZwX2jXi4+ibdaTzvTVwX/7sGfn6LTskrOrGuek3Ah9Wy6HybAsh2kJCbZz+YuLG
         3cQl75N/YqxGOMxhD2etPV88FLmmIotABI4wsc2T+W/gQ2gZOYSEVyOiHCo4VZtW7kvP
         aJ+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=w7MsKAbnhTOI/PwrqDE4qAaT5Rd571pVr2jNCX1vMLU=;
        b=Y3fAzQDzppi9dVenZS8/gUG5eNfqR60C6R1q0zTSA/+EcryTAMc4I2cSf0ZCOmvbEw
         eohgizjFOv1gO56aI7ypbAXbI7pkI/LYFiZl3nv84vJQiGZL4SYtCNldtIUJO3cHhAPc
         jNbXuvFKBq6UNmLVpHTJpY1REfXyVx6jgjobd8l1SZwuowFOl8MGZlJA4xUCXNezSJZx
         Ac2Qa+GNepMvtJ0FWP9AWkXL9+zptgQjJsVl/T0vMs2X0VAjNaVQNxQ+ibiaGVDjwTwe
         1hO23JuyjcEb4Q9aIguNapCNMDQQD2oQe5DGBSnY1CMyDsyWqRqrSEnsWMYEtZAKymw2
         eydA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cNd0enXk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id n10si109063pjp.0.2019.11.12.09.43.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 09:43:18 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id 29so12320233pgm.6
        for <clang-built-linux@googlegroups.com>; Tue, 12 Nov 2019 09:43:18 -0800 (PST)
X-Received: by 2002:a63:5a03:: with SMTP id o3mr36165069pgb.381.1573580597463;
 Tue, 12 Nov 2019 09:43:17 -0800 (PST)
MIME-Version: 1.0
References: <20191110153043.111710-1-dima@golovin.in>
In-Reply-To: <20191110153043.111710-1-dima@golovin.in>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 12 Nov 2019 09:43:05 -0800
Message-ID: <CAKwvOdnwKP5gRVmvKou1UoqHn7Fi-uoGFeAMf2dWoaEy0fibzA@mail.gmail.com>
Subject: Re: [PATCH] ARM: kbuild: use correct nm executable
To: Dmitry Golovin <dima@golovin.in>
Cc: Matthias Maennich <maennich@google.com>, Russell King <linux@armlinux.org.uk>, 
	Nicolas Pitre <nico@fluxnic.net>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Stefan Agner <stefan@agner.ch>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cNd0enXk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Sun, Nov 10, 2019 at 7:31 AM Dmitry Golovin <dima@golovin.in> wrote:
>
> Since $(NM) variable can be easily overridden for the whole build, it's
> better to use it instead of $(CROSS_COMPILE)nm. The use of $(CROSS_COMPILE)
> prefixed variables where their calculated equivalents can be used is
> incorrect. This fixes issues with builds where $(NM) is set to llvm-nm.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/766
> Signed-off-by: Dmitry Golovin <dima@golovin.in>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Matthias Maennich <maennich@google.com>

Thanks for the patch Dima.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
You should wait a week from when you first sent this patch, then
submit it to rmk's patch queue:
https://www.armlinux.org.uk/developer/patches/section.php?section=0
You should create an account there.  On
https://www.armlinux.org.uk/developer/patches/add.php,

Summary -> first line from commit
Kernel version -> base repo you wrote the patch against, see examples
https://www.armlinux.org.uk/developer/patches/section.php?section=0
Patch notes -> rest of commit body (with all these reviewed by tags added)

More info: https://www.armlinux.org.uk/developer/

> ---
>  arch/arm/boot/compressed/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
> index 9219389bbe61..a1e883c5e5c4 100644
> --- a/arch/arm/boot/compressed/Makefile
> +++ b/arch/arm/boot/compressed/Makefile
> @@ -121,7 +121,7 @@ ccflags-y := -fpic $(call cc-option,-mno-single-pic-base,) -fno-builtin -I$(obj)
>  asflags-y := -DZIMAGE
>
>  # Supply kernel BSS size to the decompressor via a linker symbol.
> -KBSS_SZ = $(shell echo $$(($$($(CROSS_COMPILE)nm $(obj)/../../../../vmlinux | \
> +KBSS_SZ = $(shell echo $$(($$($(NM) $(obj)/../../../../vmlinux | \
>                 sed -n -e 's/^\([^ ]*\) [AB] __bss_start$$/-0x\1/p' \
>                        -e 's/^\([^ ]*\) [AB] __bss_stop$$/+0x\1/p') )) )
>  LDFLAGS_vmlinux = --defsym _kernel_bss_size=$(KBSS_SZ)
> @@ -165,7 +165,7 @@ $(obj)/bswapsdi2.S: $(srctree)/arch/$(SRCARCH)/lib/bswapsdi2.S
>  # The .data section is already discarded by the linker script so no need
>  # to bother about it here.
>  check_for_bad_syms = \
> -bad_syms=$$($(CROSS_COMPILE)nm $@ | sed -n 's/^.\{8\} [bc] \(.*\)/\1/p') && \
> +bad_syms=$$($(NM) $@ | sed -n 's/^.\{8\} [bc] \(.*\)/\1/p') && \
>  [ -z "$$bad_syms" ] || \
>    ( echo "following symbols must have non local/private scope:" >&2; \
>      echo "$$bad_syms" >&2; false )
> --
> 2.23.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnwKP5gRVmvKou1UoqHn7Fi-uoGFeAMf2dWoaEy0fibzA%40mail.gmail.com.
