Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB7OJ7X7QKGQELSOBHKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A752F548E
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 22:24:15 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id 1sf2234421pgu.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 13:24:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610573053; cv=pass;
        d=google.com; s=arc-20160816;
        b=REKJ+yMt1pG75OEx9wAKJMqfmJxUsFKWA9Heso7dwF/e3IwNYlKqkLDNjFRVnl9C3+
         JGu6P/bna1z1DafZt01T5+AcZBOYZ0rImy+8vTmuQqTeGqRzQ2l11Y6A/t0HmX88KlMK
         Hbqj8ZOGBQsIVgw7yM46P6JM9u7ocQDQnlIO7u7G8eXz4p6qXQZLWP8QLnAzbFtkYqmw
         t/PDTlOg29JDzKINoPLu/sfrkTyxtGR7I79XB5R+RAgSJKrII5zcqySVFEWMbD6dYO3H
         r7ypejl3vail0clUdDO3CZM1qyn/nIneXqJ7oSa/KSBA/Qd5iQ9kFBb6HQg0gZAJnLmR
         a8hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+8hr5/omsDbc+61Dy0OEORwLzuqaEW6UH0+fXkOwglM=;
        b=PtE4wTt2x+ohqx73loQLJcGsIU/4afz8DY0n8K5lZPB4sbfUqXYVBFAZW5RqBNpdKA
         aqJaJEYSCbBi5GB6AM74gnJKHFdnSaciasRYZaEFsgR/IXxX+isuILeS96Hn/mfIias3
         bOIlmyPSSpWeOqXuXfKZbk3OSUJYa888zQ9Z7HEV+UQMIwi5Gm+etWf4TqwTLC1cdqJq
         0+Mb2PSNBNfwm5dMbPiME9ZB3KFJKyd9ycdeNvzeVMyjUwVN3hhxonRPlkvdc22EdZQR
         SuWCmYRv7AXK0z7H6YBy/iFTX+OeN/Y3wcSsOPpJHGiPeYi5t++AUrnbwOR6UqrNpfET
         kBPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jFEd2NzQ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+8hr5/omsDbc+61Dy0OEORwLzuqaEW6UH0+fXkOwglM=;
        b=QDxXrv+5zet4m4vI0i8/z5TFu4y/Lh5xSgCrE6IU6ChQnXoKO3Ld+0ftLJgIjshj2W
         A6Iio0DB8KVvEVOuRGjGlziL5fwwLCIpjr2STIW/iMNJwpXdTk3ijxHa11C5IMC5JdSU
         LZBnaE0jesskZZmuFn5ypnoKaBedTvI62TJoCc05QnnbWUPZ3YtB2vjGBo1rZp1NzkhQ
         qN7Lhvj19d0FOouPPORn9c9SU4BJdMQ41+sV8lDsJioGExY33kLBovfpFpBtJSKn/E6B
         HBEYaStc+p/V84Oz6pLtTIFLzFmP5JdOJzjy9S1VMuytKxwp+OXJHbf7qN81Nk35hYWD
         ta8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+8hr5/omsDbc+61Dy0OEORwLzuqaEW6UH0+fXkOwglM=;
        b=NvWMd+M0gxYyl5NBnpFL+yLtgv5KuQ8WaiUwkndYAchDdBy/ZNlcUYCHKycGv8sl9j
         TSVMGtcghpTy+lMcxG0iOf15IfPKWm8XqXd+I8cQJYHDq7KV7957DDioI8+7VDUKqzHa
         w7ymJdFJ0DzTjo6tQ+nBbq+1ug/KMdS3F0YGiRuy6IckyBSbr8aOcL4PySxKThxGs4Gl
         iI/vYcns2qvxH+rXslh5hhLyBN2T18cQPu3uw/Kk0EF4Xn339O0UR2jXAOe4GWKSt5/K
         MCUWVTV8iaYYcBPkuBZBGFWKDubneM5P5bgmjdQP0T1LXpL2IlleqtNSVx1ZQttQgP/P
         qpdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+8hr5/omsDbc+61Dy0OEORwLzuqaEW6UH0+fXkOwglM=;
        b=MWOdgj9og4gkCXk4an01MS3hZx081caociS2h+vrUKyoS7DE1gh8OUBpFjTfdPW4JO
         GCoWLKnGhz9dLhqbqI3aPMrAnl3VCzQkLcWr5DEOUeyuozKQ2JeMbx6Pz+fHgbusyy0j
         PrR0+bV0zQt3EC8q3RV5rT84OV3McHqyJP/RKLPvI6qOaw5Z8w0S3cv4qR19Davnf3Eq
         4UJXBkfmZw9sXyjsLHjRsFC9IaTHpxSTwdVSiTKuxLm4tTmNEzv7IJZxQgG6F/ffjYJz
         myiETMcykTBuooELny7y3ErthbrmjROf0+Yb7mk1BJ7CrLva8wYIQlNkHbJe2+IkKboA
         /4vQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/eps5/gm7hHZhKNBeTpKmsrIM6D2wRvFfqOxH763SYmGTxxyj
	a2No6BcP5rqpFiaaHSuHzho=
X-Google-Smtp-Source: ABdhPJzSLG14SbYMN+P5lJT4KwZKnYbEX9/dntr8iBb4teOUiLFdGbg2Eu1ybfHjwSXcK1eILq5jew==
X-Received: by 2002:aa7:9738:0:b029:19d:dce0:d8e7 with SMTP id k24-20020aa797380000b029019ddce0d8e7mr4007023pfg.14.1610573053752;
        Wed, 13 Jan 2021 13:24:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a609:: with SMTP id u9ls1660636plq.7.gmail; Wed, 13
 Jan 2021 13:24:11 -0800 (PST)
X-Received: by 2002:a17:902:eb53:b029:da:da92:c187 with SMTP id i19-20020a170902eb53b02900dada92c187mr4179255pli.34.1610573051544;
        Wed, 13 Jan 2021 13:24:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610573051; cv=none;
        d=google.com; s=arc-20160816;
        b=NA0RBQ805ydsCXVpH3WjdzPjuEgif+vci5xtwzKNrkPvcw9wpgdLwmyTt0GM7ckjd4
         mwNPMCWLcssb730mNQFgNXI5OxiFhAO10iE9wc/Chvt1uF23ZZh7w6oOTtD0RkNp7z5L
         8Zlwz7GLcfoVZKtPzM1vlhMAgSWEO4iGpIK0tB51VCG4ujhZFX/73lUFRS9zvhuNCLEG
         cUL8J3rEJi7SiTGP+mXnRBht4RmAxviaLM9s0njBqHww+rgVEoOJvG+C/DAIsev43KuQ
         MODSn+SX86LrV33xYKjxflkyPrd9Ea9WxaGkGs+aUqOhpzBlS4SMFq6u/B1aF2yRXvst
         D96w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UpKWiYtPM8GQXk0Is548IYPtxVA4MVO0jtllMXNFedg=;
        b=PF1PjF2qV8t6wjWoWXJq/W1I/59f804haNpMlJ3S298vwVE25Sbf6H6o+hIF7pFHaY
         LK4uxrcf/I4EvWqNAbAptK4XTD7h6R0z0D44gUr2nwQLYcKNPTFmwDiyJLe5BD10M1j0
         hNktIwmtuG1J0V0//V2ZklhxdDfDkH9nor6N4kBJsRGQkm1Pw9gSaWzdRn1tTKJDuORA
         LzC3j6w8/SG8QC7yC+sjR9aTbeyKcZzK6e1ooeby8LBfSNORNEH0PLsrHYm2J1dVeQ9s
         7fSle4TX/djPgYzZTWsiv1/CD41MhHCM5HBKBs/42pB6HHGrcgxD8uzDzzuLnaoGuJoF
         jhKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jFEd2NzQ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com. [2607:f8b0:4864:20::d35])
        by gmr-mx.google.com with ESMTPS id d1si242491pjo.1.2021.01.13.13.24.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 13:24:11 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35 as permitted sender) client-ip=2607:f8b0:4864:20::d35;
Received: by mail-io1-xd35.google.com with SMTP id q2so5431510iow.13
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 13:24:11 -0800 (PST)
X-Received: by 2002:a05:6e02:eb0:: with SMTP id u16mr3977808ilj.209.1610573051220;
 Wed, 13 Jan 2021 13:24:11 -0800 (PST)
MIME-Version: 1.0
References: <20210113003235.716547-1-ndesaulniers@google.com> <20210113003235.716547-3-ndesaulniers@google.com>
In-Reply-To: <20210113003235.716547-3-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 13 Jan 2021 22:24:00 +0100
Message-ID: <CA+icZUV6pNP1AN_JEhqon6Hgk3Yfq0_VNghvRX0N9mw6pGtpVw@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] Kbuild: make DWARF version a choice
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jFEd2NzQ;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d35
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jan 13, 2021 at 1:32 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
> explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
> way that's forward compatible with existing configs, and makes adding
> future versions more straightforward.
>
> Suggested-by: Fangrui Song <maskray@google.com>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Makefile          | 14 +++++++++-----
>  lib/Kconfig.debug | 21 ++++++++++++++++-----
>  2 files changed, 25 insertions(+), 10 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index d49c3f39ceb4..656fff17b331 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -826,12 +826,16 @@ else
>  DEBUG_CFLAGS   += -g
>  endif
>
> -ifneq ($(LLVM_IAS),1)
> -KBUILD_AFLAGS  += -Wa,-gdwarf-2
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> +DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
> +ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
> +# Binutils 2.35+ required for -gdwarf-4+ support.
> +dwarf-aflag    := $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
> +ifdef CONFIG_CC_IS_CLANG
> +DEBUG_CFLAGS   += $(dwarf-aflag)
>  endif

Why is that "ifdef CONFIG_CC_IS_CLANG"?
When I use GCC v10.2.1 DEBUG_CFLAGS are not set.

- Sedat -

> -
> -ifdef CONFIG_DEBUG_INFO_DWARF4
> -DEBUG_CFLAGS   += -gdwarf-4
> +KBUILD_AFLAGS  += $(dwarf-aflag)
>  endif
>
>  ifdef CONFIG_DEBUG_INFO_REDUCED
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index dd7d8d35b2a5..e80770fac4f0 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -256,13 +256,24 @@ config DEBUG_INFO_SPLIT
>           to know about the .dwo files and include them.
>           Incompatible with older versions of ccache.
>
> +choice
> +       prompt "DWARF version"
> +       help
> +         Which version of DWARF debug info to emit.
> +
> +config DEBUG_INFO_DWARF2
> +       bool "Generate DWARF Version 2 debuginfo"
> +       help
> +         Generate DWARF v2 debug info.
> +
>  config DEBUG_INFO_DWARF4
> -       bool "Generate dwarf4 debuginfo"
> +       bool "Generate DWARF Version 4 debuginfo"
>         help
> -         Generate dwarf4 debug info. This requires recent versions
> -         of gcc and gdb. It makes the debug information larger.
> -         But it significantly improves the success of resolving
> -         variables in gdb on optimized code.
> +         Generate DWARF v4 debug info. This requires gcc 4.5+ and gdb 7.0+.
> +         It makes the debug information larger, but it significantly
> +         improves the success of resolving variables in gdb on optimized code.
> +
> +endchoice # "DWARF version"
>
>  config DEBUG_INFO_BTF
>         bool "Generate BTF typeinfo"
> --
> 2.30.0.284.gd98b1dd5eaa7-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV6pNP1AN_JEhqon6Hgk3Yfq0_VNghvRX0N9mw6pGtpVw%40mail.gmail.com.
