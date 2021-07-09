Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGW3UKDQMGQEYXQT2ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 826AB3C2A32
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Jul 2021 22:12:13 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id v2-20020a5d94020000b02905058dc6c376sf7037840ion.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Jul 2021 13:12:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625861532; cv=pass;
        d=google.com; s=arc-20160816;
        b=adn5OvPbK825ih/VrvdASZCA4HNx0Jnf6qND5tM1viDHZHccKwyxAj8ZtZaEecBtif
         GZL/WU1lg32jnTCMj3bm6LfcTg7aRwUvyw0U5wTXnuwwINReQ6s95aJDmoNQH7q6DlnK
         1U9dgagk+/r2tiVOrire+nht6dEiOlNH/9AGhKtbsFLzkQhuAMzs+2fix306+lzkoAw/
         4QdenVKmDdgJdrV+43KWZ8wRmsH8rIWDt6vkUse5pOAELwDMemsa8l6hfoTKou6xZzEC
         9AMcaG3KelSzhkMhkp9Xllu9I7Kw/Pk/f4XzFJv7TxXVmmWIgYKKSCPZJVrBNqKZXEBW
         V+Pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=cVOtjGYMDrir5ulShIAIYGku5G//ak3RdK4HaV/2PLY=;
        b=an0NxO/R/G9XjvSaOfHZaBfdArH7oPf2KnMsntfQXkoboAvdmEsqHcw1wmpCpmDUko
         F/jvrVWdHhwg2a/pk20V6egNu2t5PPeEfRsUBE0OinF9sSn8zG9yes7DATi/bbtVV4yH
         E0gRt7qHfxus9lluQ5BdV6gyp2fcNS6wm4WejzfnmfhRI6El4dKR+IJWIf9NYeftzUL1
         aN0XwWjgmeIO3jd7v4xHbXIFwGnrKkZhZlOTzO9vyKROxgNXMsKreSA8SWG+ZKdsbNkw
         EncPQaQCBz7ru2LTogI1BRlBWnHrl4rVPZBMHwrFqIBnwCP55aBUC8DmOBGP0BY/C7Wu
         kE+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=n23Wiiqx;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cVOtjGYMDrir5ulShIAIYGku5G//ak3RdK4HaV/2PLY=;
        b=rkU+libeh1m3zqQz1aEuiav+gLv5yYMZXt/5rMXG+RJC6AJWn63PfotLAMiiWbWavc
         EH/bzknzAiAcNk7mBgKyHrVDdNZj41fuwWP4gEfzxg7Ez5tLIIkQu4f7MtJ7QU4DrQxr
         /p/gVtAcKfMKYbmk4K/lb/bUOJ4db/8S1L3uy/DsFFc9bUA471p/Cry0Gk+EMFbfhYrs
         AKavsjiyKNg4YYtb+Z19cfpc7VJsIRyKPAuTqJpETjE0URNaxOKc4KRm41onkY7KdwAZ
         SaORzNElF91HKE9pTLUwsTAXnUk8d/TAd4dehMcEhMJkehvQ9g74pBS4xhdLM9Pimd+A
         W9fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cVOtjGYMDrir5ulShIAIYGku5G//ak3RdK4HaV/2PLY=;
        b=cgj8Upi6YompENQ23SZ7OGyQ2Mm/+gZ1S16GuN2bWlFVLjiGGwFwPdkzUpFwtGZ3/M
         STgyuk1CHmAima0D8x3vS3sWhe5fadkpaDgRef9YbnGOctU6WR17x/jGitA48ADUJPVT
         PUfTeRv8ThNwbwxJmxptIpfTzfm6eTNWGG2metYxdqMeno4rQlKmGcg3ZfjdxDD+srpM
         +Ml6gvkpDHPlJb04ha/lkaCpOJa0gNymbDcdmSO60MfLShvn4F/A5pcEp7bzxzBS885T
         fearrqPnKKAKcsioPyBPvbXEcvE1HhjIW/ys2gszNl0gmOlnfKku5GLQBwp2cRPBAfvn
         WB1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+tgv4RfN8ENlUE5UTzF+dcovvcSVnv310W3bmX2oOiNqsV2HT
	tQp49h4VRcogUWyLKOutl6Q=
X-Google-Smtp-Source: ABdhPJzIUlT4EGW0ZtFMBxkjyw3xC+1MnfCsSgdS8CbBUZY1JfA48XkN/7S4vXc+iq3xy7kNpucqUg==
X-Received: by 2002:a05:6638:4199:: with SMTP id az25mr32858817jab.92.1625861530752;
        Fri, 09 Jul 2021 13:12:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:b21:: with SMTP id e1ls1717551ilu.2.gmail; Fri, 09
 Jul 2021 13:12:10 -0700 (PDT)
X-Received: by 2002:a92:c7a6:: with SMTP id f6mr13208004ilk.20.1625861530432;
        Fri, 09 Jul 2021 13:12:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625861530; cv=none;
        d=google.com; s=arc-20160816;
        b=y8xjawo4My9Rm3Sw/s4H7G2dGMFl5SUpgMSiHPVoDMmRLc64gTEnpUsqTTARoQpkkk
         qsId141k6oxg0uOr8beKeMl7x9xxKh34m7PJeXi3rVi+ljF4qBj+xgA75JAcfSYpueP0
         laeXTNhLhgOxQAnHoNx2W/VjBCXU6lnwznFeEU5LPhpQptjU+WUYPlUwtF3GgWDqqY2B
         HMrq/sVUxKX8FqyAaGxkaTVIkEXRc5FOqCQop6VA58f5+M4MQT5Dua3pocN4t+6d9gEs
         Cd7r2paXGT9osGhmcH+vDsslmzCQ6A+Hw9BiYnNlrxBlfrpsmtIKeRSxsB30qMvYaLHd
         co9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=UKKvVfA882zYSWY6L4i61xl8LSKN3Jx/Sr2g96QM0iQ=;
        b=QKtrOcqn8x0TYah00gIrt/+ge7BkuTstxfMWJC5+dCNc1RW39jROV9d2evr0GwUr45
         OtHW2boiyVNjmSDT9PD4/PEVqjDNa9M3pPeg0VLyoSC5P8DOCahoHVZ/4lp+Xezc/XJf
         nYBy5Q48qVEcMdIGJNkwzWT/FTxp8RE+EL/dAP+xwhb+VVueHgY1eHYwV0s/EfUJPmxM
         ePqKjeEvUHbRH9gBAMHe/UNPjB3Gd6W6CbSzEzJZXLjwIJ7TNLDL2kvKgdvJtLtzqFFP
         hTqUyH8XLYgY6u96BqyeyIdn5gPYQbk5XHqkr6pn8LF25AClYyVrw+DwkSSdu0Xs84H3
         KZTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=n23Wiiqx;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q8si350048ilo.2.2021.07.09.13.12.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 13:12:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AFA69613AB;
	Fri,  9 Jul 2021 20:12:08 +0000 (UTC)
Subject: Re: [PATCH v2 1/2] Makefile: move initial clang flag handling into
 scripts/Makefile.clang
To: Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
 Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>,
 linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com, Geert Uytterhoeven
 <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-2-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <9f66019d-6207-1d4b-0a80-30f09b819ff4@kernel.org>
Date: Fri, 9 Jul 2021 13:12:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210708232522.3118208-2-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=n23Wiiqx;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 7/8/2021 4:25 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> With some of the changes we'd like to make to CROSS_COMPILE, the initial
> block of clang flag handling which controls things like the target triple,
> whether or not to use the integrated assembler and how to find GAS,
> and erroring on unknown warnings is becoming unwieldy. Move it into its
> own file under scripts/.
> 
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   MAINTAINERS            |  1 +
>   Makefile               | 15 +--------------
>   scripts/Makefile.clang | 14 ++++++++++++++
>   3 files changed, 16 insertions(+), 14 deletions(-)
>   create mode 100644 scripts/Makefile.clang
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 81e1edeceae4..9c1205c258c7 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4433,6 +4433,7 @@ B:	https://github.com/ClangBuiltLinux/linux/issues
>   C:	irc://chat.freenode.net/clangbuiltlinux
>   F:	Documentation/kbuild/llvm.rst
>   F:	include/linux/compiler-clang.h
> +F:	scripts/Makefile.clang
>   F:	scripts/clang-tools/
>   K:	\b(?i:clang|llvm)\b
>   
> diff --git a/Makefile b/Makefile
> index cbab0dc53065..010e3a4e770b 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -586,20 +586,7 @@ endif
>   CC_VERSION_TEXT = $(subst $(pound),,$(shell $(CC) --version 2>/dev/null | head -n 1))
>   
>   ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
> -ifneq ($(CROSS_COMPILE),)
> -CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
> -endif
> -ifeq ($(LLVM_IAS),1)
> -CLANG_FLAGS	+= -integrated-as
> -else
> -CLANG_FLAGS	+= -no-integrated-as
> -GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> -CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> -endif
> -CLANG_FLAGS	+= -Werror=unknown-warning-option
> -KBUILD_CFLAGS	+= $(CLANG_FLAGS)
> -KBUILD_AFLAGS	+= $(CLANG_FLAGS)
> -export CLANG_FLAGS
> +include $(srctree)/scripts/Makefile.clang
>   endif
>   
>   # Include this also for config targets because some architectures need
> diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
> new file mode 100644
> index 000000000000..297932e973d4
> --- /dev/null
> +++ b/scripts/Makefile.clang
> @@ -0,0 +1,14 @@
> +ifneq ($(CROSS_COMPILE),)
> +CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
> +endif
> +ifeq ($(LLVM_IAS),1)
> +CLANG_FLAGS	+= -integrated-as
> +else
> +CLANG_FLAGS	+= -no-integrated-as
> +GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> +CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> +endif
> +CLANG_FLAGS	+= -Werror=unknown-warning-option
> +KBUILD_CFLAGS	+= $(CLANG_FLAGS)
> +KBUILD_AFLAGS	+= $(CLANG_FLAGS)
> +export CLANG_FLAGS
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9f66019d-6207-1d4b-0a80-30f09b819ff4%40kernel.org.
