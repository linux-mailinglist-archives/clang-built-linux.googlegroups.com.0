Return-Path: <clang-built-linux+bncBAABBIGM7PZQKGQEHK52DTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 783AC1963E2
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Mar 2020 06:52:33 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id y5sf3201972qky.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 22:52:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585374752; cv=pass;
        d=google.com; s=arc-20160816;
        b=o7YMKFF9E3UxxmvSCPs+5bsQTIEBQ7h+2I8/fGU/r8mbJoGCmWTU8R0az1M691083V
         hsXjd9xSGAdW6o6C3/Csy672uToFkd5XhjW6YoDk6gzWMxmL2+zoaciZSUo6kXhAnFZw
         zQe1fbLxbvw3tbrx5agtBeyE0SvQuKrZc+JoVPFHO0C+tqKAp4fw16ucSuXB76p/+zt2
         7YfKvh5gPyOM1EnHDof4KXkMVYQmY7L2GV0hw6SMlGCAciEiAVxeXJ8FFbPqDwIJqU2i
         xDQWW7u3wixKJnENNCeViaLl91dvhvNY4wSNYqhN931i73DDKcisXqtj+p6u/UfVQVW+
         KOpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=g0dLBWDYr5ZHOEVtbA7AfbUV9adLq/ArJCvwuAT/YCw=;
        b=RZrT3BYLtCik4uToHk9ImrLORt5VfdS8prvoCyg6+eEWKYXcSew8KnoIClNJEyKhyJ
         M+FEFGC2rpJjXvuUSEov16PN03sC1Gp4G96T/JJc3uGfA3878S+zL9utINn8nXlWiMGO
         0wr2KieXrLRko7b1jr0adG0eUucdemXSfvVI0pTX+TjdqB6LgHlc5lbBg8pIG6CpqSxq
         lwuaJPxIYxnLMWKhBRyZq1hqW3wdCPGUFbCOKDq5QVCFTW5vCcS4kfn0L24/U2xwD4pb
         glFiPF1kUgvA2HailjFFP30v5AnW7Aqyp6Nabo3aGp5IsKdWANmy9oqC/rBYRnPy2rWn
         3i0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=e2IZFUE2;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g0dLBWDYr5ZHOEVtbA7AfbUV9adLq/ArJCvwuAT/YCw=;
        b=M51/mn0qiPkftVjwHIVjHSpKgJE8s2MjNR4O6B9z5arm6SToI0PgMAWLVPeZD6BjZI
         +XuJ1BT2awNLjBU0Zqyy6ftrlkr/xJpPZy/rZ2s3ROTW472KfvEcFyW3F2rIBnF52h8u
         HHAVT89PPVot0dB4kM1FdWluoMxtUqcF49wzp+D/rv7alP+ViFuBXVf+Tynn+OfWRDYr
         IrsgznC64Mukt/S+dd5ouyuQQwjVfZnb3kGEkyhvdNgfD5gzXxAbxrNoihoX5qUVYHSJ
         MYowj9QG6DHan9lV8WpZWtic+QZHzLdHYPTM21xPk25xvcIGfePVDn3aattQLwhRCZf5
         MaoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g0dLBWDYr5ZHOEVtbA7AfbUV9adLq/ArJCvwuAT/YCw=;
        b=GAUMd6gRzTHXg2kQKY2W3fI9UYQ5X4x9DmoNtFkzr0/WYXUo8jpCmY8eyIFCH/69Vj
         s9E9vitaRzIQwapugihZsYMieQtCxk3oZUBnl/B+5CYUr7NAMwJafJHHujZwgjQwlD2m
         GqLXt12h6hqV49CD8dbYtCYcxRLdLqESSEXOK7dQWoOGqEBbV8bYq2HJcEodjwZC3LRC
         ueAutX9o6xfO8+QncHYUUtlADn3mRTKG+AzpKD9sJEfrYMd6rzKRPE2ffJp7By0TzxDS
         LRHaKyeNthfmrnMbCDXh3bd0ZdZCFd0JXVXEclJK68HMVSNRjRCl+0cfG9gyMyN1hZVb
         pJbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2QMDzMATJw/c/cu/sdse3rLoGZoqFbZ3TYQnOINr74gs2e+ZaQ
	ILkelZMkOSVNKHtrT0bNXnM=
X-Google-Smtp-Source: ADFU+vu1EuM/s5bfJPsFSQXxSAmRwpZpaDWdeUT6Cz6sYbtrs+sw1CbAV3fSUyjKQDT+YCNyKH5gAQ==
X-Received: by 2002:a05:6214:118a:: with SMTP id t10mr2680877qvv.9.1585374752270;
        Fri, 27 Mar 2020 22:52:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f007:: with SMTP id z7ls3087678qvk.9.gmail; Fri, 27 Mar
 2020 22:52:31 -0700 (PDT)
X-Received: by 2002:a05:6214:1e5:: with SMTP id c5mr2606318qvu.233.1585374751952;
        Fri, 27 Mar 2020 22:52:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585374751; cv=none;
        d=google.com; s=arc-20160816;
        b=tuz6zxt4tv4pQo1JC0Ih8eCadzXDF9Zit+3XNyi72mVJrN1Li+1jVVZo7gyNXrlWIk
         x49B+jTTKLDY3cimbll82VGKPGRyKeHS+O7mIysVhpywAv6wPmBwfuGdA0/LP/RagdOn
         9X5W6w9q797AcSypu+gGCGNV4ew8U6DyCVvxhQWFky/KUroHCb5sYCWIZL1cgVovqbMW
         C4lWOAA6ZOmg0Fra27d81V/ukKSZElrEa8YDU7wdQ74tNayqfA1HeMevkldPkxh9qqA1
         O2saUfPp6PZaSkC9NRiqKGwjXFDi5pf6xnaDeq7QAeSI3oY62MKdTPqqa6PN+lkknI0W
         ADHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=W82m+uPJj0ZNIAfNpMqLzdYQ4VZHAUDFKwdRLnvIJsg=;
        b=vL/LzWID/SW3hJYMc/U+oShMiOag1AQRV9Y4Jv3/94TkdDaG/Zqgqoqe4FhKNauQzO
         vmyzODU7PpzNJByceP8WYRMNJZoW87T2Kyts7Fe0wgFRX8mz8SWcvYfxf0DWHWp7soBQ
         M5twnHN/83AS9pXD0gR0FoHTdkvY3a/a4Ql7DKU5RHplEPxA1ITpf+dYJvhq8RCFTb1j
         5ShDP7VU+c7QKHbmo1Xlqqf6EtRDvIZImwyCiU46KYptCFAQGxyDX7TR7C//LRFATK86
         5z0rbADdDcsoatHI9ThK2CAKWvAFuyPg5nbJDPLCLEqLSuo0A10zbRyJU27pjF1xMKbh
         Xeow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=e2IZFUE2;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id n138si533326qkn.5.2020.03.27.22.52.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2020 22:52:31 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 02S5q9xM027995
	for <clang-built-linux@googlegroups.com>; Sat, 28 Mar 2020 14:52:09 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 02S5q9xM027995
X-Nifty-SrcIP: [209.85.222.43]
Received: by mail-ua1-f43.google.com with SMTP id v24so4383653uak.0
        for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 22:52:09 -0700 (PDT)
X-Received: by 2002:ab0:28d8:: with SMTP id g24mr1639878uaq.121.1585374728531;
 Fri, 27 Mar 2020 22:52:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200326055719.16755-1-masahiroy@kernel.org> <20200326055719.16755-4-masahiroy@kernel.org>
In-Reply-To: <20200326055719.16755-4-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 28 Mar 2020 14:51:32 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR2Vg-Z2TEfU5__d2T2cBmhbgngwdQE9tshAT2XJvB4Mw@mail.gmail.com>
Message-ID: <CAK7LNAR2Vg-Z2TEfU5__d2T2cBmhbgngwdQE9tshAT2XJvB4Mw@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] kbuild: remove AS variable
To: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=e2IZFUE2;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Mar 26, 2020 at 2:58 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> As commit 5ef872636ca7 ("kbuild: get rid of misleading $(AS) from
> documents") noted, we rarely use $(AS) directly in the kernel build.
>
> Now that the only/last user of $(AS) in drivers/net/wan/Makefile was
> converted to $(CC), $(AS) is no longer used in the build process.
>
> You can still pass in AS=clang, which is just a switch to turn on
> the LLVM integrated assembler.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>


I forgot to remove the export.




@@ -472,7 +471,7 @@ KBUILD_LDFLAGS :=
 GCC_PLUGINS_CFLAGS :=
 CLANG_FLAGS :=

-export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS
CROSS_COMPILE AS LD CC
+export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS
CROSS_COMPILE LD CC
 export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE LEX
YACC AWK INSTALLKERNEL
 export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
 export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE





> ---
>
> Changes in v2:
>   - Fix breakage of CC=clang build
>
>  Makefile | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index fcec84681e4e..2e12fa1cc8f3 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -405,7 +405,6 @@ KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
>  KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
>
>  # Make variables (CC, etc...)
> -AS             = $(CROSS_COMPILE)as
>  LD             = $(CROSS_COMPILE)ld
>  CC             = $(CROSS_COMPILE)gcc
>  CPP            = $(CC) -E
> @@ -535,7 +534,7 @@ endif
>  ifneq ($(GCC_TOOLCHAIN),)
>  CLANG_FLAGS    += --gcc-toolchain=$(GCC_TOOLCHAIN)
>  endif
> -ifeq ($(shell $(AS) --version 2>&1 | head -n 1 | grep clang),)
> +ifeq ($(if $(AS),$(shell $(AS) --version 2>&1 | head -n 1 | grep clang)),)
>  CLANG_FLAGS    += -no-integrated-as
>  endif
>  CLANG_FLAGS    += -Werror=unknown-warning-option
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326055719.16755-4-masahiroy%40kernel.org.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR2Vg-Z2TEfU5__d2T2cBmhbgngwdQE9tshAT2XJvB4Mw%40mail.gmail.com.
