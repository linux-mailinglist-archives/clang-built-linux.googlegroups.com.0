Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDM5WP2AKGQE53HFLGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id BF14D1A1582
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 21:03:42 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id p189sf1658755vkf.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 12:03:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586286222; cv=pass;
        d=google.com; s=arc-20160816;
        b=xusuD724WB35MK7P6q3fBHIobKh9b0r3u8MpTLUFgE5LMUd8P8yVq/++5mf2y2J+Zw
         jSabhU1o7K5MP12Aguer5HR2vhCtLcNxB4K+FkyQU8l2ez/oh+wL2eDxrcLzdVs3WFrs
         L4LAlmuc6SLK2rDmRDjUW1Cwp3VROCBZjuhq6OsWcFK29TF1MmN12jwQLokRoVPeFcyn
         IMlXwR/mx1ya0UJ1jDABPHXsupH7Ev7ej9/8EjBtX3KoNdC9mV/agG4sti/10sG//nyC
         WZ50R450xpuCHzi81v5itGHCoqA6CRQf9HkPPXguZ9Sasu4Vm9vwH1W1qFZ8Wj5kspd3
         PqYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AsuKUdOQ8h6Zt58gF2OqzX15q0bHyxq5r/gY2AEsVo4=;
        b=H+Je6IZLt6NdT1F4KltdfqLNsN767pni8M/F8tJI1aDkjY1sFlXMVNQkMBEuWWgzCX
         wyAV7MMqAsKWsZPzsq/Fk6o7vAKZVulOmk7pH/sW7vqfz422Wj0EYMHBCopyH1Zj8neN
         BRQ0IgRp6u0k7qgn/DnxWrQsnqfBqFwrXeuQtmjPZ8RpwY8wHJqTC/zuof5R15igM7/n
         JcWM8Sf2Vtg2S9wAew5SgMBJIAZQ75CkERAi5z8t/AJDBSy2BrSV8ZBtRcMLGcHU4iYp
         1N9LNNUejwnERaiHHjVhzoz2VLbDPu9sgSYeWadfYEdTQfpT2mliKDQWFZObEs3YmVhg
         mxtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Iu7XU9Q1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AsuKUdOQ8h6Zt58gF2OqzX15q0bHyxq5r/gY2AEsVo4=;
        b=MKaMO8NokUDW5z5LmbcelbSHPbuQPSFLSWFitV5/OF6jry7XUk0QEdwWxUSTfZ70NJ
         jyOtk5Iyhdp0WQS+1Ck6mqZCdJu4aQhYXvWzi3Y+QyI+nvcw+e6tP9jnbUY5/cKynuO+
         EXQ0bGUMbcyHZLYTvt4x+eP8uiGOjdGBvbnz+0KXwJLgY5iAACqhJbM79xTK9JGFu1f/
         9UBCjCz8KVY16s73GVrkiKjCZX4RVS/TRGo9Mf6u5ijDGmj+i4BGJE+40FCnFSP6vVbI
         bp3BU3cbVkhG3W0cjD463ZZmNo0QoZ3/NfWiV+0c/xE09iJpsnXLMMsLXXAFjdoLZi1p
         Ol8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AsuKUdOQ8h6Zt58gF2OqzX15q0bHyxq5r/gY2AEsVo4=;
        b=Lstvtu0V44nGrDBxQ3LBOVmJzJUKzTfcBomqrglUa2/yjgnkzA7L5aErwPL97DuvW+
         Zc8zB8bb0l3Ty1UEzPUB/dY7Xf/dzi1ActUQhO+2CyKrA0as1pTF/6ICD7cMBb5ZRNJR
         IrQRR1UWTpW1ozHGmw3nvDgt18rsqMW9VVjSVKB4QAlB2VPLokk3JrnGNd5cX6+Eh8hp
         c36v2X2oH/fnHCFwyAeWFOObW84rPOuOwWVNp45KSrmmTK93MxbfWDHEXxFJUTqArTgH
         IRYVyz/9zGXj/W+s0RgyFvZRIu7N+vpdxni9KqJ7nU07W3JNfbewIghUPeNs1Bglg4al
         mKWQ==
X-Gm-Message-State: AGi0PuaiHXV2L0mQVgqiJQsgfuKEFkA4sSgssSlz7+h4z6wy20zBPmn1
	7O8KlVP0hFn7VwttJ0IxQbs=
X-Google-Smtp-Source: APiQypK44xRZZasi/YwZ2e1tSkX4pBUdDcnw/6QCkFuTtpFyrQjXZowIC2RuCY8VEFZZP63tqFvHBA==
X-Received: by 2002:ab0:718b:: with SMTP id l11mr3174957uao.100.1586286221834;
        Tue, 07 Apr 2020 12:03:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cd97:: with SMTP id r23ls17472vsl.8.gmail; Tue, 07 Apr
 2020 12:03:41 -0700 (PDT)
X-Received: by 2002:a05:6102:30b8:: with SMTP id y24mr3082986vsd.115.1586286221515;
        Tue, 07 Apr 2020 12:03:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586286221; cv=none;
        d=google.com; s=arc-20160816;
        b=mAn5rx9PZjcTq6Q3RE7H+8phewAcSq8oC3wNij23K8s7KE5VWk5ZHTAEBci74EbXow
         phc42rbD4bfu5tQJo+hT67McUo9qrODNPKpriBucuKZPaaOiuAWGSOsNnrc3z3OSbDfG
         zvFvQeAZwdFpyY+az8amyhZiWVzl3LdOG3Y41KAgwZ0McMG5kwdVsxHg/Uxs9Io8Uxok
         QitU0VdEaS200Yu+D2zkNMnl0LMm8Tnv0U1Vw/tGIoA81P7LOTsCUWdBb2GdAekwgBGI
         //az9rqaxomH5zy4buMpLKdNZfyDDWVAp36R02u5dug2tXUJaztnOfDGpKITbPexaWZB
         M3Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+9ktnBB45aXlgSe0vRhpOUgxZAxDNe5YDUe3z1UsWXQ=;
        b=jnjX5x1OSW0fJRWRE1iUF/8tJPdDyJCAJlJ5vlfSNx2+5p1Kl4ZvA89DnbE6CMeaGt
         dWQDW0hizWVPIb2D3I1hxUXIppUXBXr/gHRFTFYRAbdJoih7J4yHP+3QqwnuwzZ1fiA6
         wroREs18oWUH9DOshYdeZ9COGGGkt6omZtRBT5qPFvJ+A/gK+9YGh8piyYVKW7+N2dPr
         7zKELbBVJYEOqmle4tqZeJeQ+iXTZ3sXXryCgY79rmzk68p1yJu+cnjjVkZVY4IxtlWf
         tbubjipGlc+ePTP9dc4JpiXQPcYacRFTVS9Exaj3E4VZGmT95TYFRJvzOlTSBca5Z2a5
         6XbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Iu7XU9Q1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id m198si121410vka.3.2020.04.07.12.03.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 12:03:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id a24so1220422pfc.8
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 12:03:41 -0700 (PDT)
X-Received: by 2002:aa7:919a:: with SMTP id x26mr3880195pfa.39.1586286220287;
 Tue, 07 Apr 2020 12:03:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200407184336.14612-1-masahiroy@kernel.org>
In-Reply-To: <20200407184336.14612-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 7 Apr 2020 12:03:29 -0700
Message-ID: <CAKwvOd=pz7yWSyZ-v3uGNpc9u4zDAiycBrdGczp5oWrY7H_rvg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] kbuild: replace AS=clang with LLVM_IA=1
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jonathan Corbet <corbet@lwn.net>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Iu7XU9Q1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Tue, Apr 7, 2020 at 11:44 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> The 'AS' variable is unused for building the kernel. Only the remaining
> usage is to turn on the integrated assembler. A boolean flag is a better
> fit for this purpose.
>
> AS=clang was added for experts. So, I replaced it with LLVM_IA=1,
> breaking the backward compatibility.
>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Thank you for this series!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> Changes in v2:
>   - new patch
>
>  Documentation/kbuild/llvm.rst | 5 ++++-
>  Makefile                      | 2 +-
>  2 files changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index eefbdfa3e4d9..2b40afa58049 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -50,11 +50,14 @@ LLVM Utilities
>  LLVM has substitutes for GNU binutils utilities. These can be invoked as
>  additional parameters to `make`.
>
> -       make CC=clang AS=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
> +       make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
>           OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size \\
>           READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
>           HOSTLD=ld.lld
>
> +Currently, the integrated assembler is disabled by default. You can pass
> +LLVM_IA=1 to enable it.
> +
>  Getting Help
>  ------------
>
> diff --git a/Makefile b/Makefile
> index 1b2691057cb5..f9beb696d6d3 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -538,7 +538,7 @@ endif
>  ifneq ($(GCC_TOOLCHAIN),)
>  CLANG_FLAGS    += --gcc-toolchain=$(GCC_TOOLCHAIN)
>  endif
> -ifeq ($(if $(AS),$(shell $(AS) --version 2>&1 | head -n 1 | grep clang)),)
> +ifneq ($(LLVM_IA),1)
>  CLANG_FLAGS    += -no-integrated-as
>  endif
>  CLANG_FLAGS    += -Werror=unknown-warning-option
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200407184336.14612-1-masahiroy%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dpz7yWSyZ-v3uGNpc9u4zDAiycBrdGczp5oWrY7H_rvg%40mail.gmail.com.
