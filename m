Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVESZ77AKGQEUJMMB6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id A33A02D7F68
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 20:32:37 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id i16sf4940307oos.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 11:32:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607715156; cv=pass;
        d=google.com; s=arc-20160816;
        b=NkKh/qcfcCkQ7slqAJrlEPAlQNh/+dksPy15pvLUFVxkkpshPCPZzOrMjilfWaQtsD
         bLceS5ZFI9XzI2DpCWqBeNkMCtQUQZQeHZUQZfqveDqLe+BPrwSo+gMJzxcZ6PQFe4Xe
         qu8b7iJUMqVjjHsRFip/G5YFZxYedei431s9ZtpslwnpffL6QNDSaqZIxYUsgB31LXzf
         7gPr0XutEnQDXDJbIY75Kb1A+2L2g0X7baDJy39YAj5ybhjJEtkaDHSyBmsd5SutJG6n
         VQCNtYSIkqpIgKuiZsHiLXCEhIpNTlbIzY7350Nvn1Y7Llixyuziqf4wmR7SEvsdnLig
         mJ9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=w6QErNeHbmi+nbMaMM4dTA6/tUTeP3xMp9fV7HclkuM=;
        b=rrB34pJFHg0bRSNIpg0KQEbkwPx4Nyw9UvtbgooQKowIIJMnCzCSaecuP3T75ID2Wv
         PhbcKqfPXIpzjtHjNh+SUFYnJVxdw82ma3Zk+BhT6K94bBesini3dWHebAGx7A+Srdr2
         iquuq9F8fSrmcpSYXLLuonXqsM+0Cs9rkeOMUE/geHV9d/gumbm+yTQ2hlvbV9Ez6aBP
         cwdx95ycZLAVCKga4PcEi3orLo7yghjjP+7eou5X2A66YJdpoo/Y5rltZR06C9Na5OdG
         OeyltvqD9l8wZvD/0MnvhtJ5rwqP6ttywQzehmIT27u8L0wZTfBiXkLX7N2ZRWQBATJw
         tG1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YlRVVR0J;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w6QErNeHbmi+nbMaMM4dTA6/tUTeP3xMp9fV7HclkuM=;
        b=G84m7obpCQnKLZ9Oiu/L4jcYuwaCOKwmjzFoRuLUE4ikq08vCwHmx2XL0pulyb7rJB
         wVUoczLvLshg0i+M/dEW5S0Sy6BY9JodMwgfkM65FJPIMqrfgk4Icwi4zXDEmLyixpEp
         FsBHphS/ayuOsr6kQu2XAjTvBNTslpfC/9efDGabGvJhGIDh7x1SDCt1sFV6JKjfM7pM
         pmy+EqITqoQ/I8rH4EbIboYhrpLnC0jv55a/2T1CfVzjzmngtSdrVlt1wgbVhTgyhAOa
         lGIfYu3qfMifpCtiFjwSLY1sMBTKxVcWCmV8y7I/airmsO9T71AoN8UKEi9ztVHkKshM
         pWwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w6QErNeHbmi+nbMaMM4dTA6/tUTeP3xMp9fV7HclkuM=;
        b=Zrm1MdULDWfXiwy6lJxBRU8m+iJe+GJ9rYnuw4A7tGDajvTZZWyXIX1azlR5aZXROo
         TQJ69GZH5mPVUiKf44Pt3/dcuO0Z0YHOjgS6AtcBZYts4GB5uw4tDkJxv4l9ih4LppE+
         LmiXzH8F7G5skhI4lk6f1S1NCtIRsyqiq3vsPHbob9a9mypSi+3fO60JnexFKkkVovL0
         DRlI2oIfSOX2XiwCbFYLdPhFKTNtRarqppXZOnY/gvB/8O+I5QUCAPFi8xv3sGdbWP0z
         oQnL6lEf31TGSMAWLzOUPNJUt7nLGb5a823Yir5aGHgti/sOd/MrSuThPE/UIyyiDfUj
         oGYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cDYOWuZmszqIIXXoHg5UKRqhPeum+Ii+YaCXzSxi6Hm9esBHt
	TUNSPVHLjBIiXS0NuUB+5EY=
X-Google-Smtp-Source: ABdhPJzXTi5TQfy7XG1y8BZdMfdxrQnInP6nDou5rgIAOGi7obdhE3WZ6YIL5yc0Ff/twCaGSYoUSA==
X-Received: by 2002:aca:5594:: with SMTP id j142mr10627825oib.164.1607715156650;
        Fri, 11 Dec 2020 11:32:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:5e41:: with SMTP id h62ls701687oob.4.gmail; Fri, 11 Dec
 2020 11:32:36 -0800 (PST)
X-Received: by 2002:a4a:e996:: with SMTP id s22mr11349168ood.82.1607715156254;
        Fri, 11 Dec 2020 11:32:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607715156; cv=none;
        d=google.com; s=arc-20160816;
        b=v3I9LrrYTw2LWfoSgKAjMoZi+WqPEf9mIkjSutEKSKELyTcVkJJu4UPINCsk2cVmo5
         T9fKIQpsSz41RYDDNS9VyFZCaxulrhKiyYAdMB3htfKMpKNFBfF9ESTHaHMbAQoXG6MJ
         BJ+e+7u01F3yFSbH8fsDe5FaT05EgpTqA0HF244DFSPL2Q521f+dFRQVCqIXJV+Rs/fX
         5NoFxO9Xcmkf0fx91i2CvrpMZM5/rdKTXXPKBp9P+4GHRdX/b5yz3tdx/EPyH6CPvb7t
         p03B3FcUR86dfxSOnk4poC8K17R8puUhLZ2Abv44wBGpPyBDaeKuVOwHwaHQJ/HDPWLQ
         Fi8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9QrTgvGnEakPURCqXO9kVzpnI7sAnsn5QLKAoF8jKto=;
        b=gcuZvaGhaCVeMY6QYhwtu8WCSvliICt2wtG3N+jkrCVnZsUGV/DH4TyYOFU08xkjLj
         pTXfAHjh05l4Pjs1SoWqce7kDNHzxc8Hd56c83PjAm3lyvf654/W76XHGC6jtxH6c3RY
         6wf7VtPHfMhXe0hzIV6qsaJ02iaQDZ5V6Gioh/QCWsgAEnhswJDZKaHgJIeQ+5QpT0zL
         DkOlsiVweF+r3mhy2/F8yWXh9z46mBFfTjk38/m8Fsa0SxjHG/+fIBjGMh/CX7zG/dNf
         7Y0DvU6krpT3mk8e4my1LlpUIrdmVTYYS6GJXOoORgaD6d7Ols6UEHxr7d8NtvTixB9o
         QQmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YlRVVR0J;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id g13si767057ooo.1.2020.12.11.11.32.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 11:32:36 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id 4so5087720plk.5
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 11:32:36 -0800 (PST)
X-Received: by 2002:a17:902:123:b029:da:420e:aab0 with SMTP id 32-20020a1709020123b02900da420eaab0mr12377208plb.30.1607715155648;
        Fri, 11 Dec 2020 11:32:35 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s65sm10821175pgb.78.2020.12.11.11.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 11:32:34 -0800 (PST)
Date: Fri, 11 Dec 2020 11:32:33 -0800
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v9 06/16] kbuild: lto: add a default list of used symbols
Message-ID: <202012111131.E41AFFCDB@keescook>
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <20201211184633.3213045-7-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201211184633.3213045-7-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=YlRVVR0J;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Dec 11, 2020 at 10:46:23AM -0800, Sami Tolvanen wrote:
> With CONFIG_LTO_CLANG, LLVM bitcode has not yet been compiled into a
> binary when the .mod files are generated, which means they don't yet
> contain references to certain symbols that will be present in the final
> binaries. This includes intrinsic functions, such as memcpy, memmove,
> and memset [1], and stack protector symbols [2]. This change adds a
> default symbol list to use with CONFIG_TRIM_UNUSED_KSYMS when Clang's
> LTO is used.
> 
> [1] https://llvm.org/docs/LangRef.html#standard-c-c-library-intrinsics
> [2] https://llvm.org/docs/LangRef.html#llvm-stackprotector-intrinsic
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

> ---
>  init/Kconfig                | 1 +
>  scripts/lto-used-symbollist | 5 +++++
>  2 files changed, 6 insertions(+)
>  create mode 100644 scripts/lto-used-symbollist
> 
> diff --git a/init/Kconfig b/init/Kconfig
> index 0872a5a2e759..e88c919c1bf1 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -2297,6 +2297,7 @@ config TRIM_UNUSED_KSYMS
>  config UNUSED_KSYMS_WHITELIST
>  	string "Whitelist of symbols to keep in ksymtab"
>  	depends on TRIM_UNUSED_KSYMS
> +	default "scripts/lto-used-symbollist" if LTO_CLANG
>  	help
>  	  By default, all unused exported symbols will be un-exported from the
>  	  build when TRIM_UNUSED_KSYMS is selected.
> diff --git a/scripts/lto-used-symbollist b/scripts/lto-used-symbollist
> new file mode 100644
> index 000000000000..38e7bb9ebaae
> --- /dev/null
> +++ b/scripts/lto-used-symbollist
> @@ -0,0 +1,5 @@
> +memcpy
> +memmove
> +memset
> +__stack_chk_fail
> +__stack_chk_guard
> -- 
> 2.29.2.576.ga3fc446d84-goog
> 

bikeshed: Should this filename use some kind of extension, like
lto-user-symbols.txt or .list, to make it more human-friendly?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012111131.E41AFFCDB%40keescook.
