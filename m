Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB673QODQMGQEHGUNUYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD9C3BAAB1
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Jul 2021 02:17:01 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id u8-20020a6345480000b0290227a64be361sf10106215pgk.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Jul 2021 17:17:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625357820; cv=pass;
        d=google.com; s=arc-20160816;
        b=qPiMDomcQQEdqFvAYZCteahxmFWNakuDuiuA9Umz83IueCyR84Gya7v1LQsZpgUfcc
         8POKv9vIEPGCe1mmBIPbXgskQPjMWPnKcOX9zfEPDEMN2pXl6czBuawf/t7EPihf0BMI
         b+YJ0zi29h0xqQLVWH1MpGDHHJSaqIXWjGfqkTsCIWzADKDvJxcQRoj+/ISsNF/xdLhR
         aFHxab3NMP+c2yBeEYGCsOJdrwk9yxUSd4OHnqV+jmY5IE3efAr6dvjDXOFGH2mAq8Cc
         /vWKDnQ/+X3pcE9RzfJDZfsXSGKyfU5PkxRIYHGlaLsaHLYcrYVG7lyfShKvWvsiITdK
         J7tA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Q3zdo7rkXTr/WSKN35hNTdnqsFOG9nm4+SA8qj1TDU4=;
        b=WDA2Hvrt8BNb6ajrvFuhjNbkJpP+ihsN13n/t1BKeqGjWiVTrelq4+nT4St8QlPrzY
         9fC/X8mreu9n9C1gmpHPS7XxtRikSkNjud0zmzrbgKbogNWWRq/HEZHW8/cM7lNThP3i
         emdRTGVJ5nj21JlglbZ1/DDY27tBFiG4UsbBY6xU6d7Zrt/EWpsxGJ1EkJtDnnXHPZBo
         r9uZKtdwr/rhE4yMSa+WyZ7hRq8EFVBIT90b870bhZs9n4q/uepehKBeCvfQhYWpTG72
         gyHRtEEQVVj2hi8dXU+59J+D6ZK2P/GVolGlRv2sKe5TiSTTE+u27SmmleeDrx34nJPF
         yxyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=P5xzEo6s;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q3zdo7rkXTr/WSKN35hNTdnqsFOG9nm4+SA8qj1TDU4=;
        b=TcTh55U0IYu9aezLbzE2rWcAkzX5bqNwX/BsVcWlw9VCNFUZk8XFQJ1XOUEIgYsei6
         iLXSqp2u89akBub1akcjVClQpoS01NIJjI7kRBo541iRDZDch0H+57T7wdU6nYG1GmpA
         xpjDUI0zcxE6yje6vLx3iZXmUDp4ZezR1mc1teWYXh2vcwhsGUioK6siEyIh/Hrop3cj
         oxkafQBm5s8mLQ/zd4QqaRkCIwOXjCFpShi6QFUCSXb5xifpgZxuE90gbXRuYsN4SbxW
         s8c5Tsyc0/oSxlNVkYM5Qpq/oFC17ZBJz1ZzYuSMHmHVjkNJQ8jaq5g3ut3FGamkscWl
         wXEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q3zdo7rkXTr/WSKN35hNTdnqsFOG9nm4+SA8qj1TDU4=;
        b=HgRZSDn2eYC8bHrkLGIovx6jdBEtPOFqu3GZTGtBA1BslE18SjgMy/vihGvnUXvNeJ
         INOD9sPr+24QwmTDcARpQPIiGgX3EJJCuK7Tc53GM/ZYgN6dwZjF6ee6z5LOvMTVIag7
         4cLcYvXHxtJq5hn8CMYnWPcRPUueFir1Ad7UvreqZ9kFvfHCLm+GseqBA19kSlEJVcoK
         f+/YctZp/+mpodW9GcDjdQWaARpJFsZoRgedjPo8aXS2lfVG5jdihkKkX/Njbjky+d1A
         5aGcnHWYZ3wJuIfbvNpdMQVZuI7Lswo6Q4GNOFFpJhekibsXBTkyChFdDmDbkpssrOZn
         2JTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Bux9EwnJyepF34k4a/JFg0BZX5KHuNEdpCLVw3C7xRbZ5WEBn
	qWjHNYre62cwaqueZk7R4E8=
X-Google-Smtp-Source: ABdhPJy8seYs29VajuS6vLApye6l89MopRP0wqTl4Qbm3UYO/R7e0Yt84BPh6tfRaq4D0aI2aTku8g==
X-Received: by 2002:a62:ed0b:0:b029:30c:7193:68f6 with SMTP id u11-20020a62ed0b0000b029030c719368f6mr7494346pfh.73.1625357819901;
        Sat, 03 Jul 2021 17:16:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3346:: with SMTP id z67ls1983249pfz.2.gmail; Sat, 03 Jul
 2021 17:16:59 -0700 (PDT)
X-Received: by 2002:a63:1c0e:: with SMTP id c14mr7645258pgc.11.1625357819344;
        Sat, 03 Jul 2021 17:16:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625357819; cv=none;
        d=google.com; s=arc-20160816;
        b=nlOC/xzzCQ4SqN068VJx10lhoEQ7kxdXCAMrzTvGOZvk/Uap8cn1bnieS1daFt3iMu
         4s1M/T//lJnyREuHSmn9s/tUJANV84ykpnTe/+iE8XO95i9+wl8+s14OEHaqNw2e9WRu
         0wkS1fQPNblIKQUcVKXQ7xx3l60mPD/SIVPxt1gkO6OplEwBfFuWJPqut7RpxWZWcsNr
         HzGbX8mJGNfwujBiBQbkHWRf4c0qJcSKzxzhEknVaLV0Dv1aMDuzgLMems168R5yyhol
         S9v2QAoRhL5G+yfmuEiuehvmQNRbAY8/I0UX39KGDxlBNo7+jdEY2trvkUwaavK6AUt0
         aT0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ydlpqDYhtsZfol1/TbQm0k6ZIPfDjbyLtbtKa8wjd2A=;
        b=RT1TDjH9DnleKIFAYwvE96+exzMaTdrVYlsYav2R08QoWGBeDnih9JofQj+Uor6Yso
         Oz56inJiM2n39dlUvDcSM25fnnwaGfO53NY9U72/d3LSH2kv6qXgHvrlUEDHQAiPwO5Y
         8Yo61/46T5MulstRfW6denS9hWot/76d0KB7wuSeN8eYspz8GvvJ6pyQLeuG0vcSsl9V
         cayT3y+TxIJoAiuzFTYXCV4RRDLhBKa5NnKzSwfI5uJ8cjqH+C3bb81rHC09d21oKnPh
         T7hBKBuG2FQ8BKD8VfVlDRjXqaQb6ScduV85qnswA2d6IjYRFoQSR8dXC+4ngN+DGNQg
         em6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=P5xzEo6s;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q7si946525pgf.3.2021.07.03.17.16.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Jul 2021 17:16:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 359CB61443;
	Sun,  4 Jul 2021 00:16:58 +0000 (UTC)
Date: Sat, 3 Jul 2021 17:16:55 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Lecopzer Chen <lecopzer.chen@mediatek.com>
Cc: ndesaulniers@google.com, keescook@chromium.org, samitolvanen@google.com,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, yj.chiang@mediatek.com,
	masahiroy@kernel.org, michal.lkml@markovi.net
Subject: Re: [PATCH v3 2/2] Kbuild: lto: add make version checking
Message-ID: <YOD998U8ekXX7IYh@Ryzen-9-3900X.localdomain>
References: <20210702032943.7865-1-lecopzer.chen@mediatek.com>
 <20210702032943.7865-3-lecopzer.chen@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210702032943.7865-3-lecopzer.chen@mediatek.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=P5xzEo6s;       spf=pass
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

On Fri, Jul 02, 2021 at 11:29:43AM +0800, Lecopzer Chen wrote:
> LTO with MODVERSIONS will fail in generating correct CRC because
> the makefile rule doesn't work for make with version 3.8X.[1]
> 
> Thus we need to check make version during selecting on LTO Kconfig.
> and the suitable version should be 4.2(40200) which released in 2016[2].
> 
> [1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
> [2] https://ftp.gnu.org/gnu/make/
> Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  arch/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 129df498a8e1..beee68149da8 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -639,6 +639,7 @@ config HAS_LTO_CLANG
>  	def_bool y
>  	# Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
>  	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD && AS_IS_LLVM
> +	depends on !MODVERSIONS || MAKE_VERSION >= 40200
>  	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
>  	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
>  	depends on ARCH_SUPPORTS_LTO_CLANG
> -- 
> 2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YOD998U8ekXX7IYh%40Ryzen-9-3900X.localdomain.
