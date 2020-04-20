Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBQHC6X2AKGQEDFSHCCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6CD1B0607
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 11:54:08 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id d5sf4049084lfb.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 02:54:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587376448; cv=pass;
        d=google.com; s=arc-20160816;
        b=hn56pdCKOK8hNNMCm8R6pXgxwXXUUI6ifAMRXWBBhkqFX0my6yMOtGB+apNdwFmHOA
         DchFk7gHiUKmuyRCYUgtbrh3C3xRcPZkkxbBxM5HvRM5drKi0ZW21Sg2yRNRS9j3rPQh
         RUGfn8yvHG42VzPYqTCFJRJahL86Uf5VRL0LGJ/rWYL85K4OVHfuGB+h3AwPm07oVDz8
         MVlLrEUKqV20HHFadf245FR19GftIamXbuQGBAnwsUVOhCgH8uxBd6CqDJtG6sC9g5nb
         BaLYVPujzNTph9Iltjh87rkP5IZ3lL16hZOqQM0DIFOUZyhYDA2QWnqJKcBxkquWx/wn
         +Z2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=az675ll5NWE4pOAjGQYk5fAYmTV9JYeOq1qslWWKP8I=;
        b=Y4wGa01aJyPjRNmoP0yZ7cYt4H640ibJmz/3fwHIQQ3FeweL030Cd2hTmM0Lnhb0/3
         3tty/oKW1FUkWOwdWfyAZz2COJRr21yMyb9LZfJKZ6rep/WH7am3+EVs/nmwhbbrqDkG
         7ShVwOXa0PG54Q+3Bwmpu6sLlS9UFmAtbzBUi5ukpYME0C2QnArAWRjJ6tGoCt5vzWpU
         dUnXri9TUxfUAmarAQIJnr45y0Ho+vT2LxOw/o1z1Hccwi5YwwKV7Db2ZAEgGGCZkwOI
         ynZPHhqs7vT+oLERSsU3zCfL3Kud+ck+Hvg4ykjrqYPl9Gwx1a3/YQ7rh3pJNvTZqRk7
         NvQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jKlcqj+K;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=az675ll5NWE4pOAjGQYk5fAYmTV9JYeOq1qslWWKP8I=;
        b=QLSWqzmUDFDZJpnV/FiG35j1j1HRpii6skGerzSyzbEY2SgLHGViOXbVdchC/WNSRt
         5XR47xQOTFCEXCMJj8iPPdQVI9Cpd78HreP6BSjJsyQTBeHMzOMuCX5rOmihTfseEzZK
         rIrk84V0jwUOITba2sKSr+kfjvw8me53lvLOlEHFszdBlZnwDJWWpNxIIJU/X9+I5S9l
         1UWtGkKa22EKN+AIVsqSvNw9f9GSfQ8En1hGeOHPlSPnn8aZdoDHdlof6bJCgSkvz5vq
         sBzYNh5ueIdyQ0QiEFNMm5Xk4FTZUivGiRqWKyl9CFLs/YPyunKs1M79Robirc2zU7dS
         GB8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=az675ll5NWE4pOAjGQYk5fAYmTV9JYeOq1qslWWKP8I=;
        b=E6EEXI373f8b4BtSSHkVNxG5KF8KcBW5ov00P5uqOtZX7//524ZzJEKAD5ZRmBFXwU
         8Ct+qPTVOY8/FJMFbFJjd32qS8RhuWuUAwOoxRkkVbOhXejcRU2gQB86BTP9iZIzV+yI
         P0Abftf269NKDy7lB/5qmyzu3JFvH72icZXGJTda+/u2fxPOqAesoYNqlxeRS1SXSJgS
         2Ulr+cll8S9hycEZRLuFRvUfaXqlcUtfLAjV2cGBwUrnBMT4KGUMVdFIp8fiaGIdCxAo
         20qqZC2Sn/Tofn9tyJYfxNpUvgp2Nx5L5fgLS94JJM+qXznd4MNBW0+d4mvqUWCFLrxQ
         Tn6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=az675ll5NWE4pOAjGQYk5fAYmTV9JYeOq1qslWWKP8I=;
        b=mRE0HA1LfnNcMHkNQfO4R4oq66KzO7XjF6S23Xudz+bWigW0c6wWorlOy3xzNaJk3z
         ptcjyEAbe+0DCa/TdynXgpcZ9O2Z9lLCtYs/jXp6DM6A/IPuRkMOpRC+RO1JQaFhCwDL
         BOjpntbDlj9Nzkagz3/4B78o9gYX4ZYD7CkVY/lMnyKs84gRvz3nSD5xPY5Z/5Uf6Mmi
         OBjejnFf23pzrKOWVBuNAu8iY9jZimtKdzM4sGBBpxB4jismZ4rrwCPutTxLqiAiU0Ir
         fskDCVZnXaviMEtsODq6Zf9aCBoCMKKI0SZ9osu9BAx8i9w/ZvkZGbbNOnlBOa+rxx6S
         j9LQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYxvCZS4WjqxXNFGI+foRPX7sSZJTnxIVXlm/mptD9nLcGgKV+1
	63tHe+1l1a9omGtpph28pF4=
X-Google-Smtp-Source: APiQypJo6F0Ku3bK1oJZC7ZRhj8kknTP31JuBsTiSA2Doz0MFuDugzNEuPxHqT+asMMA3hewdEIC7Q==
X-Received: by 2002:a19:7004:: with SMTP id h4mr10110590lfc.166.1587376448449;
        Mon, 20 Apr 2020 02:54:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:2002:: with SMTP id s2ls1566500ljo.3.gmail; Mon, 20
 Apr 2020 02:54:07 -0700 (PDT)
X-Received: by 2002:a2e:96c2:: with SMTP id d2mr9989644ljj.214.1587376447729;
        Mon, 20 Apr 2020 02:54:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587376447; cv=none;
        d=google.com; s=arc-20160816;
        b=ln8fYh7w20CQPpGCWN4ZBX0vvgSDn6bu7wut6MMbb1nnfJ8Elh3bmLMYpUIVqMIcIn
         0WD4+PJKnXuQowuQDlXVfmqi0BB8vyzAkviUW0Cm4bROXSNvo5HLMZYAIlEzZi96RasT
         x/7zmeTp74tGI/Y7t6uCallh7p7U1ZvzQvo8iGGl/AcLq252nlW2JwT84kNIjvjbF/FV
         xHSD5BdWNMbrRMN37uZwGHbBqtYy3CJwEIOfw5MPgkxhUWJ1YLj/iWATaeWpbP/zctZf
         PpmwnaEq4dRYrTsVrsItfBQubzzmyuwnW5Sfl9U41GRVQbGqCMlgm6Mxbpyh0mkpu4Dn
         MLjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IDwDem3D6NSd1YxszNY7NfHJH9Vv/3Ektc8kZiKqEDk=;
        b=tMzNsfBPEB50yzr31cwGMOX2XHu3mRJt3oEWkpC0c+dHTrrorquoIJWH83DaPUjFyk
         kuqj+Kxjh87gN4H8XGnGcEnGb9pdbYja4hqecaUTJAmDByp0H3fRrJvj9fNxKx31l0Bs
         efHgel/BIMZA+j74d/WCHUeHgQYeHnNR2DtHiotBdCZHXJ6ANrUoPuDSYPrZ6291cGf4
         vUq7uglttFDeQ0CLt0GqrSXLy11OtP0xuSQX3dGmq2mI7gcSbHwKUeHG2J+GZOeBgtI1
         RKpwfEUSXa11dVVu7Q6GMp7/jNAnW65J+MD5Rplf02EC3ak33uz/bgCVh42/CsHzNd8R
         mJIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jKlcqj+K;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id c16si52020ljk.5.2020.04.20.02.54.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 02:54:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id j2so11288253wrs.9
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 02:54:07 -0700 (PDT)
X-Received: by 2002:a5d:5745:: with SMTP id q5mr19194458wrw.351.1587376447129;
 Mon, 20 Apr 2020 02:54:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200419180445.26722-1-natechancellor@gmail.com>
 <20200419202128.20571-1-natechancellor@gmail.com> <20200419202128.20571-2-natechancellor@gmail.com>
In-Reply-To: <20200419202128.20571-2-natechancellor@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 20 Apr 2020 11:53:55 +0200
Message-ID: <CA+icZUVaLW+38WEJhqnfO7B_unHvrbSr0moKnfJ6zXGGA06CWQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] MIPS: VDSO: Move disabling the VDSO logic to Kconfig
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Masahiro Yamada <masahiroy@kernel.org>, 
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Dmitry Golovin <dima@golovin.in>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jKlcqj+K;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444
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

On Sun, Apr 19, 2020 at 10:21 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> After commit 9553d16fa671 ("init/kconfig: Add LD_VERSION Kconfig"), we
> have access to GNU ld's version at configuration time. As a result, we
> can make it clearer under what configuration circumstances the MIPS VDSO
> needs to be disabled.
>
> This is a prerequisite for getting rid of the MIPS VDSO binutils
> warning and linking the VDSO when LD is ld.lld. Wrapping the call to
> ld-ifversion with CONFIG_LD_IS_LLD does not work because the config
> values are wiped away during 'make clean'.
>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>
> v1 -> v2:
>
> * New patch.
>
>  arch/mips/Kconfig         |  2 ++
>  arch/mips/vdso/Kconfig    | 18 ++++++++++++++++++
>  arch/mips/vdso/Makefile   | 30 ++----------------------------
>  arch/mips/vdso/vdso.lds.S |  2 +-
>  4 files changed, 23 insertions(+), 29 deletions(-)
>  create mode 100644 arch/mips/vdso/Kconfig
>
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 690718b3701a..45220e4b8a65 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -3275,3 +3275,5 @@ endmenu
>  source "drivers/firmware/Kconfig"
>
>  source "arch/mips/kvm/Kconfig"
> +
> +source "arch/mips/vdso/Kconfig"
> diff --git a/arch/mips/vdso/Kconfig b/arch/mips/vdso/Kconfig
...
> --- /dev/null
> +++ b/arch/mips/vdso/Kconfig
...
> +config MIPS_DISABLE_VDSO
> +       def_bool CPU_MICROMIPS || (!CPU_MIPSR6 && !MIPS_LD_CAN_LINK_VDSO)
...
> diff --git a/arch/mips/vdso/vdso.lds.S b/arch/mips/vdso/vdso.lds.S
...
> --- a/arch/mips/vdso/vdso.lds.S
> +++ b/arch/mips/vdso/vdso.lds.S
...
> -#ifndef DISABLE_MIPS_VDSO
> +#ifndef CONFIG_DISABLE_MIPS_VDSO

Should be s/CONFIG_DISABLE_MIPS_VDSO/CONFIG_MIPS_DISABLE_VDSO ?

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVaLW%2B38WEJhqnfO7B_unHvrbSr0moKnfJ6zXGGA06CWQ%40mail.gmail.com.
