Return-Path: <clang-built-linux+bncBDYNJBOFRECBBR7MYPXQKGQETT3GORI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id CF00611ACA5
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Dec 2019 14:59:35 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id s25sf1767202wmj.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Dec 2019 05:59:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576072775; cv=pass;
        d=google.com; s=arc-20160816;
        b=lln/4khUVJZYrudExdRnSDnJ+3h2WXZ6ZS5UKFqpJIZDd8L4U3E9zs9ReS2MBWwDRM
         Q6DgXeGzhqy3txZzEpTsW0TI32WSz/B25AzjR8n4g6CaP7p7/tdU7DtVYliGwuWoPfLk
         tyxqdJsnLpJNcroUHGI6fYtjkNtZhWxtvxvGly5IFNLaxQt5e/2D8cD99sljqck1//fW
         CLcwFPcpF1WX4kUw7+SYzOZkC2e817gPalOsgPfJ3uA2OfoZ4oavGCuhML8cSCWlDmRZ
         xJ1twsFlWHuGsl75wHdLbEr9/ExWC3lUBzQrADyK+D2noYQv9IdxlUBfeSubCmZCIoK5
         peOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=mUdOFv28/VT9N8REysgGWbN/hcRlfUye5+ompVftD0s=;
        b=Gi2fOoMVctv2QnDaeBNXGhNxpTP30FCB1VrqnXs22zbkDf4mCqBAeSzYNH6Er01LJ+
         eL2xEpdymVHjmAgXm+diaOvin7yqwawcjLqFwBiOpzdnyiW2oMp9rJkGs/yU4hbBXHIX
         xZ8m8P8R7CKB7rwCz0Li9lPuhdSPmdoKP/PbNyKfI1ZxkVDw+aOREUQ6G0w8FelOkdES
         +CeuKLh0hG6D8kYoJOhTH1OmJdSpyEtiW7EaGplx9nj++siwOLS2bWlTR965ePAWGbHk
         f6HMLme2c8xpH1Bl+TbrQqt6ydEXFVP5iSJpj4KawJTDy/pOgjAo4PeS/Chb1rygTeNt
         TqzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=H8UZouch;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mUdOFv28/VT9N8REysgGWbN/hcRlfUye5+ompVftD0s=;
        b=b1KodDUogJi2CseXzm5G780wdLsKHXq2Rj2QSg6WRi3BZ8Epr9u9CuCGgWsupsxv5a
         Y2VOxHapm4ODJajydiB9gqkUQlyKzOWJzqyqyiVDpJQA8dHUTot1btc0ACwkTZQnPEb2
         DxecbEQ3pwLVrn1atNae2CzShtPFmp5cDA0V5bEr9sBietKG+Hus9pJdhPa7z/wmNZER
         7p/5hj4OYiL86bJDf45dS+faJzMD1earcYfC6VfgNM8gPpPhyJa2H+9r+iVbQbiVagzP
         p6UOCvHtQnts4ZvGu89ZimU7cbMQIkjNl4iKmviO24o6qiqsb6Bpe4KOuieiNY21In4K
         GNOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mUdOFv28/VT9N8REysgGWbN/hcRlfUye5+ompVftD0s=;
        b=dMcF8QgdKUDDaSF82610N4AyBSpk/aIHKJlBPoz65g4Iuz0FbRYX8fGYH7fc56LhR9
         tOraczrpDwtbHaBDknPRmjgiqtzMRtB09wyFeZLd17Lse/CFSV2E32DgVj33i5C0/tZ8
         wGLJOaZlpKMyHpltjuPr7PGlPg7UF0uttUJX2vWILg+91+RJC5Im/B52Tsfi+PIKpnzD
         OqsJlNcg+O3AAzvdRJ4gPXODNYsEbbr21j5fNen4xe2PJm9c+RzDNNoeQpbEcAXg6ppD
         cg1oQ3NhyekPDq4vbAfgUy2L61xIOUzxfO0+kTIyalrGoCKLJajxE+fgDbPd4pFIzUHy
         h4uA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVWx1JtnV0VL6+6BAAKmqLFnB/GyBV33vXqSaOzJS/ZqHItScuq
	qo76sM3km/oQJ8i30sCxCB0=
X-Google-Smtp-Source: APXvYqyKLNJQ1JdvOSfk39RfeKC2Al81JT3IPxYh3hTrPzO+2WWHFu5GC4f2kBTyEUzXEZ+dN4KnyA==
X-Received: by 2002:adf:b60f:: with SMTP id f15mr3149160wre.372.1576072775513;
        Wed, 11 Dec 2019 05:59:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ebc5:: with SMTP id v5ls1133181wrn.8.gmail; Wed, 11 Dec
 2019 05:59:34 -0800 (PST)
X-Received: by 2002:adf:eb8e:: with SMTP id t14mr3985210wrn.384.1576072774870;
        Wed, 11 Dec 2019 05:59:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576072774; cv=none;
        d=google.com; s=arc-20160816;
        b=wHPNwqVfbpIY17Wp41qqm9leQqhDmaXnsLaXL7JdiN4fN1aI123D+pdCP0BE7rwfk8
         lMnoTOi3Jic8pLVqmNS3RuWuot+GFde1omMPznHekM+5+43+MSBLPkACPDGuq0xVgfRI
         orGneG7RCGuNRWqoeF92zXIje4k8hg+AkIvMwwb1jiVW0lCHUSwDE6jfj95BcFYI1Hyv
         gC7ugOCcOc/RNhtjH93r1QBFSgxir4ZOkNsfNEiZ0Id84AOhRofe5QTY1YARCauKuAkA
         f2teu/HKBHKKGhdyG9ymXtvmIlajicNUM0EF0mmbz0kGBPCJWYa1/2F23Rt3vqvgwuz9
         J4zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=STaNEtWndnwuAqqhmXVnDhNs+/7QG3rCPR52EQWWaas=;
        b=bCZJQ1Z3yY9cVE/XIxEK9sORrATQ9KFxD2sAu7ytaPz90CY5kn04sQcMxBFonxeuWF
         Yd2xz9NbGjSvSt7gnEr7k+KF9JzBNwARcz13/WIo/RXSEBoZ+3+tg0qqviyAtfwVspzi
         kQq/dA/3pW6NeF2ABBJxhxkAzq8K8Ev1BROG5GlvrxswoXqM4eMdvRQuZPRBQfUw0L/q
         79ssCLAE/9J2esjlEQOA8oM8jq5rX3LFblm+aTS5Lx/97uzlDmD4Lxp5GO6S6VN+buSN
         ypINQ3RGMmzJQ4UJSJxG20T7Vzyv/HVotMxlj2ng6uQXtE+QMNhjU/81VqTkDIKcBlkm
         ZV7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=H8UZouch;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id g3si78715wrw.5.2019.12.11.05.59.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2019 05:59:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id z3so24176039wru.3
        for <clang-built-linux@googlegroups.com>; Wed, 11 Dec 2019 05:59:34 -0800 (PST)
X-Received: by 2002:a5d:46c1:: with SMTP id g1mr3933196wrs.200.1576072774421;
 Wed, 11 Dec 2019 05:59:34 -0800 (PST)
MIME-Version: 1.0
References: <20191211133951.401933-1-arnd@arndb.de>
In-Reply-To: <20191211133951.401933-1-arnd@arndb.de>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 11 Dec 2019 14:59:23 +0100
Message-ID: <CAKv+Gu8yaz8uekq3taUaxWOs95yVB_tRaoKM0N2EBKSzWOhExw@mail.gmail.com>
Subject: Re: [PATCH] gcc-plugins: make it possible to disable
 CONFIG_GCC_PLUGINS again
To: Arnd Bergmann <arnd@arndb.de>
Cc: Kees Cook <keescook@chromium.org>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Emese Revfy <re.emese@gmail.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=H8UZouch;       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, 11 Dec 2019 at 14:40, Arnd Bergmann <arnd@arndb.de> wrote:
>
> I noticed that randconfig builds with gcc no longer produce a lot of
> ccache hits, unlike with clang, and traced this back to plugins
> now being enabled unconditionally if they are supported.
>
> I am now working around this by adding
>
>    export CCACHE_COMPILERCHECK=/usr/bin/size -A %compiler%
>
> to my top-level Makefile. This changes the heuristic that ccache uses
> to determine whether the plugins are the same after a 'make clean'.
>
> However, it also seems that being able to just turn off the plugins is
> generally useful, at least for build testing it adds noticeable overhead
> but does not find a lot of bugs additional bugs, and may be easier for
> ccache users than my workaround.
>
> Fixes: 9f671e58159a ("security: Create "kernel hardening" config area")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Ard Biesheuvel <ardb@kernel.org>

> ---
>  scripts/gcc-plugins/Kconfig | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/scripts/gcc-plugins/Kconfig b/scripts/gcc-plugins/Kconfig
> index d33de0b9f4f5..e3569543bdac 100644
> --- a/scripts/gcc-plugins/Kconfig
> +++ b/scripts/gcc-plugins/Kconfig
> @@ -14,8 +14,8 @@ config HAVE_GCC_PLUGINS
>           An arch should select this symbol if it supports building with
>           GCC plugins.
>
> -config GCC_PLUGINS
> -       bool
> +menuconfig GCC_PLUGINS
> +       bool "GCC plugins"
>         depends on HAVE_GCC_PLUGINS
>         depends on PLUGIN_HOSTCC != ""
>         default y
> @@ -25,8 +25,7 @@ config GCC_PLUGINS
>
>           See Documentation/core-api/gcc-plugins.rst for details.
>
> -menu "GCC plugins"
> -       depends on GCC_PLUGINS
> +if GCC_PLUGINS
>
>  config GCC_PLUGIN_CYC_COMPLEXITY
>         bool "Compute the cyclomatic complexity of a function" if EXPERT
> @@ -113,4 +112,4 @@ config GCC_PLUGIN_ARM_SSP_PER_TASK
>         bool
>         depends on GCC_PLUGINS && ARM
>
> -endmenu
> +endif
> --
> 2.20.0
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu8yaz8uekq3taUaxWOs95yVB_tRaoKM0N2EBKSzWOhExw%40mail.gmail.com.
