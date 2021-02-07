Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVFB7WAAMGQEEV5KYLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5513120E9
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Feb 2021 03:30:46 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id lr5sf8588966pjb.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Feb 2021 18:30:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612665044; cv=pass;
        d=google.com; s=arc-20160816;
        b=sWTz8jGMaYfg6xJnZRoDavHWobiZhz5L+PUdoXNJzrJmbToxexs0tjSjwTIcEBZMTC
         BGwACRh/d/TUXquCnVmBg59FGBB8VAX2stggTGpBJVs1GpvQVm2ktsyGmlwo1T91bdZh
         yvM99Wxct5ppGUYuWUFwsETxoW+r4lxiPUAcqwIbsfW1B9oflGkm9JdAUcdUpvu/szid
         GXOMV6O8f4Nut2F9OeoZl+LyweJA79wK764P1HT+9HCLtTi7HvJU1mEkjefrVJAS5niM
         EaLnl5i/F5GHuw+ceu9DanA98gLvhF//Je6U86kqTOCaBSSkqPxft6DxdIr4NUBRsZNq
         46oA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=E2TRUnrPRycBVFN50EIa4odE42V0pi6sdOjpdGyxmDw=;
        b=Xh7ZfzTReyuvX5CTqoqB2frgzC11qj/WsupW5QsVYl1i9qhBrmyd5+8rCg2wO6fbUB
         2V8CI0XBZwDLW06TddTXkXFAtTS9ZUu+wxfDhFA2qahOULM+9MZz4zjsED25j58VNuvr
         BmDL+waSJ0kfv3/hxZZ5VqXCzjG33VsHjY9sfHK+XDrYUpCPk2n+Y5uooDjeUEejV/PC
         qxcP6/28uaHVGAW9EwATxWv8mbs6y2tsoJE7kqvO2LQ7Npm1rIOnJzIVDuX5pxWfVxsX
         LZ1HuXYDTFvpv6VoRkHDNLC+d+VQi/yYq2KjuKOjcr6RSJGWEsilJbU1zlUbP8Gu4+Cp
         2LzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KTo8rm0r;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E2TRUnrPRycBVFN50EIa4odE42V0pi6sdOjpdGyxmDw=;
        b=jXX9Tb4jyhGgwagFMyCDnRy4m2oHr0miEzu5wbutrC0S34R/Cv1Okx89eHkBjQw/6w
         jPsuDsoHR9YrAcqf+NKKr/WjQ0eZlbdaLm5qLSpN3UsZ0pHd1pOi6F3rafBofSU004kv
         MQLFISEMrKyQOawHaEUPdtpA8F4SdVxTmlGxvjmVVMMK32Mu0Pe2knF+i26dt/xyB/Qg
         h0oSBGGNnpVIOF7/BwQLG9R0/9stYbz5gUwGzLCZDk9378l70Q+/q9HEG1yqPjRbiLhz
         Z4qeriaWUSAlcnzPmrLn0sPxoSLwz/v5y+ROZYYV57hhdLWEuIeeG4EiWFc+Ad26FMD7
         hVMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E2TRUnrPRycBVFN50EIa4odE42V0pi6sdOjpdGyxmDw=;
        b=NMLOtPkUQ4M+PVL9VGKr/gyhoBs0oYXtUO1r61zmNpCLHn6taEV0A98rIlwyGG2vvq
         IdITtjAWkpMuvsiccZtj6VTLCXdMRbFQK6iWPaCBYv/LNzWsJSuVQEQpLd7knVntNbst
         66a2n14tFwZrrF9WcYj6dKNQqppeaVPSoEEJFH6a3rZGWV0QDFek8W+Jykb5BL34RNuA
         3JMIcJzI5CKpoFwouGYAjJr42iGWNRiknGalQl8vgWEKBxnEAM8M5SB+jWZgXwN957r7
         isH3SvHt9JKnWSrrTg1k/eJLowOi4aDUgkjdQWjyF4XpQaOBN7UZFDSiuLwRvNvXs7W6
         7AjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xmNtmiOie5JfO+g+AUKlgeE53EI/fE/PGFafqTwsAePrUY4SC
	DEV6vXr+nsiWq/oivfQfn+8=
X-Google-Smtp-Source: ABdhPJwJ8ukSR5q8PcF0o6Hs1YZMzU5Mib8TyNneS/R4owYENI3TPIDCTC4GEw74QH6qczukkZmDtw==
X-Received: by 2002:a05:6a00:1a03:b029:1d3:1fa3:4a5d with SMTP id g3-20020a056a001a03b02901d31fa34a5dmr11609436pfv.1.1612665044607;
        Sat, 06 Feb 2021 18:30:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3583:: with SMTP id c125ls5357849pfa.2.gmail; Sat, 06
 Feb 2021 18:30:44 -0800 (PST)
X-Received: by 2002:a63:e442:: with SMTP id i2mr11223875pgk.12.1612665044020;
        Sat, 06 Feb 2021 18:30:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612665044; cv=none;
        d=google.com; s=arc-20160816;
        b=T3yom5QWx86bmvEyh4DFQMiKVZynGPYP4Zm50WE9ZCwLcjjbAZNIhLXgMrAW1ZdJ7q
         i0L55AxWB0/4lsI6lp9tIEsP71SWSx9vYtXKSJQN587cItyfqBYnkri0oCa8RO9QUjuh
         bTgVcvq4uA69mmOX8wICN/6Q3TH15dF7NefmNC7SXCD5+ULrEqiX/jC/0exu22sM7/3X
         iriE3muoHzq0LyP/CclAbRze6F72Hur2sd6SNRedWS/vQbsqBkkkwgl+4VCMyKW6OOvS
         kWi5Hp8E4gbxH8p864Fx9tiO/aXKu68uqAP+kCM5ful/08wtqRndUncO3+ThwraWHzug
         KebA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=EJCH/XfmF0c62xb+RCajh6oe3iNNxeFjQr+0k+pdNdw=;
        b=cjRXgzjBU49r58gtm4hBrUBQJxmCkfdjpW9UQri9WgqhGNkGn4325/DTjJdPmZsZQ9
         zditlWcf8aUf/XiMJtvyg7Mjz3c51KEbRtkHay7697M7Dd4WOKOd6FYwd+ZKccn2Dmkm
         XnzrOo2uxPHvlIy9cHG8oB0wnPuETGfSx/nvWN80RZyDCHTAGRWEc7GjhTwlvuJULszo
         mg7t5N44orAeMCaIEKd0d3rVSCso/h/B6J3nPG8Nd0uws11dGJznLTp69FA+bFnsyoik
         mn+ynKBt0rb/swC06HbbMD/rT4cSViRq6QeekfwE4vBsqOCkUo49G9p0CyEd/IvdSv/5
         09oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KTo8rm0r;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i10si793102pfa.6.2021.02.06.18.30.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Feb 2021 18:30:43 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6CF4264E8C;
	Sun,  7 Feb 2021 02:30:43 +0000 (UTC)
Date: Sat, 6 Feb 2021 19:30:41 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: Make CPU_BIG_ENDIAN depend on !LD_IS_LLD
Message-ID: <20210207023041.GA655027@ubuntu-m3-large-x86>
References: <20210202022441.1451389-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210202022441.1451389-1-nathan@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KTo8rm0r;       spf=pass
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

On Mon, Feb 01, 2021 at 07:24:42PM -0700, Nathan Chancellor wrote:
> Similar to commit 28187dc8ebd9 ("ARM: 9025/1: Kconfig: CPU_BIG_ENDIAN
> depends on !LD_IS_LLD"), ld.lld does not support aarch64 big endian,
> leading to the following build error when CONFIG_CPU_BIG_ENDIAN is
> selected:
> 
> ld.lld: error: unknown emulation: aarch64linuxb
> 
> There are not currently plans to implement big endian support for
> aarch64 in ld.lld but if it should be supported in the future, this
> symbol can depend on the version that first supports it. In the
> meantime, prevent this symbol from being selected to avoid these type
> of build errors.
> 
> While we are here, the indentation of this symbol used spaces since its
> introduction in commit a872013d6d03 ("arm64: kconfig: allow
> CPU_BIG_ENDIAN to be selected"). Change it to tabs to be consistent with
> kernel coding style.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/380
> Link: https://github.com/ClangBuiltLinux/linux/issues/1288
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Fangrui has pushed proper aarch64linuxb and elf64-bigaarch64 for ld.lld:

https://reviews.llvm.org/D96211
https://reviews.llvm.org/D96188

This patch is needed for OUTPUT_FORMAT in the vDSO to work properly:

https://reviews.llvm.org/D96214

Once these are all merged into LLVM 13, I will update this to be:

depends on !LD_IS_LLD || LLD_VERSION >= 130000

Cheers,
Nathan

> ---
>  arch/arm64/Kconfig | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index f39568b28ec1..5ddf9fe7b4ee 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -952,8 +952,9 @@ choice
>  	  that is selected here.
>  
>  config CPU_BIG_ENDIAN
> -       bool "Build big-endian kernel"
> -       help
> +	bool "Build big-endian kernel"
> +	depends on !LD_IS_LLD
> +	help
>  	  Say Y if you plan on running a kernel with a big-endian userspace.
>  
>  config CPU_LITTLE_ENDIAN
> 
> base-commit: 88bb507a74ea7d75fa49edd421eaa710a7d80598
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210207023041.GA655027%40ubuntu-m3-large-x86.
