Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBI6K6KDAMGQEDWRZMGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2B93B876B
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 19:08:52 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id s18-20020a92cbd20000b02901bb78581beasf2354545ilq.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 10:08:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625072931; cv=pass;
        d=google.com; s=arc-20160816;
        b=iB7dMn2MBD/UnIfjtCgmpSe+n+Cv4Ow+0vRjPuFiy6XOzPFugVBNxJHM6Y3E58Gwmx
         7eRPAtJ8BSiphbSPzWDt8OcrKQKS4nZXMWhcyvsc2SYWqgt+kYvn5DpJplt7OHlS0/BQ
         CGER5SSYNlcGjre82nOsXr11OlBobf74XkRR2Igz0iJylB0plfbrXCpzSqJD5HQnRV9D
         qTu8HkQzBpHJ6QMRLLiPxKHudrc0BuhE0mn0nA1CxFP6ZlA1U6Jn7VBXVMyoz7ZHAKeS
         kqyFuZIW47wUasH82j6/5Djll2zvXJY2QIL3N/S7TftcuZprSsv/vcHTVJl84bjeMNKh
         L66g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=BQKix7YncU9tdiatQ1aLZvfZKVZRJBrfEIpBcIz/Wxw=;
        b=0BjOPWESRm59X1LO7C1ks/DGm6tQ8ws5nwpYDm1Dt56knodm7oD3b3iPNkgLS5K/Aa
         TKXVPN6qeqNK4W1hNS9DpKV8GU9ul80uOhtzKPCeLItRiyrhe86+ElnLTd9RH6Tpa9Dy
         qFR5PXu3e0IQdqqfWZ/OummOEbPhDECoocGTBhM62yDl5CFHomyCqHSIuzyxlIZV9uut
         yOLCoj54z5wcIJliKA7AgNLazqcPl5UUN7kr3UayYxrGJkZMP/2oW53u0DkDCwxCfW3G
         /LCAMe/6jbdpPIwUb1SZ5Qvj0/c09FbyZHOL+0fiX3kN27cy2M2VW7DbHanAiQimjYA5
         DZsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sNy8kmkX;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BQKix7YncU9tdiatQ1aLZvfZKVZRJBrfEIpBcIz/Wxw=;
        b=gf2cQ7HLymM9vcbvPL1GkMABCcu6XwN4sWj5feQtB7+yE2fO8xWXIudLVvarGsjsoC
         vb2/UrrMfVLHRmM9Y9rpzCazK3VKMlS2ZuGlImlZZq5450aStOtaEb0oT0PyaA5MuFfr
         RpOflf7gEiE5udHAqpwAaPLotwVrTdAhinVWvU/9Cmn7uwSRc7raeVcHbTsQjwW6F4HP
         xwOcR/jM3ymFW2TWEpXrQ8L6vqQGy8gIxdZOa7H5els34HOEpk25boM93g1bZxPfduag
         IxXdwkajaCUaFJ25yTa2qVICYFWScMvVutSy13wGBjCJppspGKcOkJfaxdt76SrB16v7
         jgAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BQKix7YncU9tdiatQ1aLZvfZKVZRJBrfEIpBcIz/Wxw=;
        b=m3TUrHdn++fi13XKQhsMjoJoOm2J5sHsfIDHcaqMRDdomMpvOqWG21svfvt80AkYL1
         UohVjWJMeXui/Ffaz8pxgNhHSoCHY3mF+cmgP4nIR5i6/Kk/eqABI91GRbNIMnU03XS2
         8vbZV410o9eWQbRxj/P3I92+FzkFqueQVKHJqBzsdb2IldL5/g1IDAh9oEUuOGQJsGgI
         SUjFgqjr6lq/JtrDuIr5jFR6fyKijR/SNBBEUZG8mhkYMQzoRe5kFgnF9PIADSVUJR7J
         sP2MBBaHGzQJr+fOXqzHcRrYo9i74RWG3xRgs/uqrNc2YFJcwaKxSciOWlAr2AsszjJ3
         x8NQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tzigTPuy/pkx6fmSqc0ya6bJig4ogNQW36FjOFRjzJAccHfg4
	p5SmNlHM0AlQQrDuPcMA3Zs=
X-Google-Smtp-Source: ABdhPJxneAHmcQ93PKajl7ZqYEaOuoUv78RwUkrRFGBwOHonivgW7vwhA/6llhGciExbFB8OA4br8g==
X-Received: by 2002:a92:9411:: with SMTP id c17mr27824127ili.264.1625072931502;
        Wed, 30 Jun 2021 10:08:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:794a:: with SMTP id j10ls548603iop.7.gmail; Wed, 30 Jun
 2021 10:08:51 -0700 (PDT)
X-Received: by 2002:a6b:5902:: with SMTP id n2mr8743991iob.20.1625072931086;
        Wed, 30 Jun 2021 10:08:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625072931; cv=none;
        d=google.com; s=arc-20160816;
        b=S2wbd4UPuTM9FDRjYcGENvzYPcbZoEoKhiinJe72NzZemr3VkNkNvHgOhSsbZefOaW
         1kfy5kZxtrXoCF83+ph1YfL6ohFAZ0RvcFsi9ycVvoGM+JsH78zst4OAeQUoL8sn4izQ
         Xl0fMm/p/EOa+GIwS41giQmHnSEXCOBhGL9OBQhIjA/tXwMuqg2va8lXEty/4a0a7p6x
         rtWAyvsrp2o+Yr5Ay+5Mu4fChJjU4pekx1ilXkVTNt6FGP+XTI0oDp6sO81l2G0oJJ9X
         Sy+LdpS/1eWetDj7+KspKwoP4x5xsQWXW7AXPs3Nbrf1kYDy10WNiiOma2F6XmrGCYXw
         JhQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=1L6HR1MO56cnK8YdbIMruZ0oEGnqCdPf4+Sl2Jkzums=;
        b=LnDPlKHJWMRXOPRj/w9mc1d4F5Shi4sXnabnI2m++4e6g7tbC42AVSw6n0WgPeDY0Y
         UfgDhfhXu6DLgUq39KYQvAv/rvgFPTBr3N77q/4aTaNGiemxp7RmB5d6xUzFKNEURz1z
         Ne1oTAXS5M9QrQCAQUr4SblJSKQ94lyAFM4jVhUDctZ0LohHVJDt7f0kCe0xsqstNFwb
         58++0uDdyvBcNYjZGFRcDLL84z1QSCxuxYrF5HJ10iozFfDFdZseZi2J/c06cvDj0sLM
         AzpMUSroZScbQA9DR1ZPYKwULZK01atwyC9TPl9qqW+prm1KSDbpQPiVCEektA4pSL6s
         Rr8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sNy8kmkX;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x4si2356488iof.3.2021.06.30.10.08.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Jun 2021 10:08:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B9C1C6146E;
	Wed, 30 Jun 2021 17:08:49 +0000 (UTC)
Subject: Re: [PATCH 2/2] Kbuild: lto: add make version checking
To: Lecopzer Chen <lecopzer.chen@mediatek.com>, keescook@chromium.org,
 samitolvanen@google.com, linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 yj.chiang@mediatek.com, masahiroy@kernel.org, michal.lkml@markovi.net
References: <20210630121436.19581-1-lecopzer.chen@mediatek.com>
 <20210630121436.19581-3-lecopzer.chen@mediatek.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <6d687b9a-c295-ce8b-9472-d2859977be2d@kernel.org>
Date: Wed, 30 Jun 2021 10:08:48 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210630121436.19581-3-lecopzer.chen@mediatek.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sNy8kmkX;       spf=pass
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

On 6/30/2021 5:14 AM, Lecopzer Chen wrote:
> LTO with MODVERSION will fail in generating correct CRC because
> the makefile rule doesn't work for make with version 3.8X.[1]
> 
> Thus we need to check make version during selecting on LTO Kconfig.
> and the suitable version should be 4.2(40200) which release in 2016[2].
> 
> [1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
> [2] https://ftp.gnu.org/gnu/make/
> Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
> ---
>   arch/Kconfig | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index c45b770d3579..1571957bade5 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -632,6 +632,7 @@ config HAS_LTO_CLANG
>   	def_bool y
>   	# Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
>   	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD && AS_IS_LLVM
> +	depends on MAKE_VERSION_INT >= 40200

If the bug depends on CONFIG_MODVERSIONS, should this be

depends on !MODVERSIONS || MAKE_VERSION >= 40200

? Especially since the problematic block in your original report is 
gated on CONFIG_LTO_CLANG + CONFIG_MODVERSIONS.

>   	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
>   	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
>   	depends on ARCH_SUPPORTS_LTO_CLANG
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6d687b9a-c295-ce8b-9472-d2859977be2d%40kernel.org.
