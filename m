Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBE7S5SEAMGQE2EXTFMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 83BE93EE57E
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 06:20:37 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id i10-20020a170902c94ab029012d7030ce7bsf11207176pla.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 21:20:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629174036; cv=pass;
        d=google.com; s=arc-20160816;
        b=KCHCQrExmUDNx94KRmwQbxrQxLoXcmYHwO3AWdRRwTsyHBdBLtUu2STKF4m2iu+ai1
         b3+vfU8sAQJ5qZt/is9l8rO8lXCt6fehqH27WLCHf8IsK9QotsiQBAMjMtclfg+pKiI+
         25QuwCXv2g+huZ2YxoqU+SsV44LsV3cNgpV4zI1RleQHJ4cM0MSxEINQSbtXmZyqAfCy
         NoQqSqS3b9SC4ZU/GOpZnILsmWaj1xSDCImFnhth8WszYvS9WejLYkMwZOHr0gPKIeHT
         RBnwLd4Wu5jeEwGxsQCc9p88vXbyJf+whgF4WRJKizLNAPMeRTIf6419+8VjNrEqezDW
         zzbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=+ma1ZENF3emr5WX/t3OKKv02Uy6aPq5MWU5PzvaK/cY=;
        b=o4i/iHU7TIfO9oWNSNpGIR3BVmQ8omFcm+4bWPgtxn4NTITiHEBoXYcb8ACWtdghcz
         6i9LgiaJrAH5qXfkxal+CO08J3ctP4WzA3xujF4DlqzxjFRHYqcK7An34MVSawKY3yh/
         bVHSMid/wrqb7JDLd25si0Wk0JgvVVdCSY7LKdWS/9aGP4apyun7Cju5pTmYgu/XaxpJ
         avSWWkODH0dDu4psliLPYLpEwd5GANMSwIMdLLuE2+W14fmtiAhuL8fYcyNpt0VX9Fzr
         q5NILH+xo5Rf3TaqfMLISsPz4+ohuJ9EKVtK0F7thOFqf5knca5c/4xEKz1bEkMBqPb7
         ZBpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=T0Wiz+2r;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+ma1ZENF3emr5WX/t3OKKv02Uy6aPq5MWU5PzvaK/cY=;
        b=U5Tm9qpgs1QQ5QL2H68dnnXbVE8xpPtYtFn07gNhNRMEpo2GaEmhrzVBCFubX7PbE3
         5Xa9Pf/Nd/3di0rAmfDMcbc77VJrW47PeHc7827ld1/TJ27Xbah+CYbB+rrLe8OM97UI
         hj7+l4c78VxXhtW9IkHGWJM68H5tu/OkUfjzOvKjHkHI0kvbCnWV6nJPlFD00JPnnZLz
         z1b+xD/TMRO9p0b0ldQK4BgtL6vs/EQw4ZWBVpfc5OPAo27+MViC6IJ0IJ2SCnzIPfOA
         lQxZ+CvchS0/rne15AZt/6au9zybqMIAHwrtp99mq569VHDy4UpFA6c55NCK7Ttznl0J
         /qVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+ma1ZENF3emr5WX/t3OKKv02Uy6aPq5MWU5PzvaK/cY=;
        b=oaFayzYHL4UWyoCU9nk+v24Am7syYPmkVUHGAg2NUTsJ0Ndv4UBR8/Rxj29srOFKEa
         fF7IxgldbQohoPc24diauX7ZAMJWtvDHdM0XLLkOU1B5suIBqnkr6C/LZXM3/7va+7hl
         m60v3tJLK5h35R7EfhgqTYHIYZbCs/WVN4WJO2V7sCDIDImdJuw6EM0Bh9pjfsR4vfJA
         lbUPUu1DLR1NGxizAixyMQQ6xEKpttEJrcF7CLPa7kC/CHpHfFXF/VVVi+n24GZzsK+S
         tMSusB/gmbzRdtv/m1bJC8vleo9G6Mb4eg3zl/TrtGMX8AAgJ2hgWon/XpMTtGpQUKA6
         kGyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZL+XIx1DUdsAfNOBNjuV76ntIesjpVLeaX+It8OFV1f5s5oQR
	Qvvur9U1JOmfq7Q9FEcPvaU=
X-Google-Smtp-Source: ABdhPJwWjJc7IeobhnwA83jeev/2ahAK9fMht9igAzooMgOOGWOXEf92nEtMztOWboZksfoAtifEbQ==
X-Received: by 2002:a17:902:b282:b0:12d:9929:67d with SMTP id u2-20020a170902b28200b0012d9929067dmr1325950plr.83.1629174036149;
        Mon, 16 Aug 2021 21:20:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6681:: with SMTP id m1ls32341pjj.0.experimental-gmail;
 Mon, 16 Aug 2021 21:20:35 -0700 (PDT)
X-Received: by 2002:a17:90b:3007:: with SMTP id hg7mr1557464pjb.66.1629174035242;
        Mon, 16 Aug 2021 21:20:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629174035; cv=none;
        d=google.com; s=arc-20160816;
        b=L6hqNEB8qKKBXBuyfkRl9rFmqMihy7DFRGqTtMeDO3yoRM9Cp8S9K0MEmCtWVFlIhG
         FqBNNr8Y6D333e0rifjGQxQxXTjcqtvTdGejWbrbGvKgfRVr5zp51D/mtJ5eD18ZeT3Q
         mo/xj0f+nyfWco1BYkJtFEJMrwpVwQWVrMBaNkExxnTtrVQKmd94a+iLjkbw70neH/Yy
         CrjWbDQRSHvuMq2ZIKMb4CJGZBwvXtJinul1AiIjSz7xAEYOJ5goanNOz2CDLYgrJlSt
         n7E+nJ1rGJQwtBMIp/XbZLvBSqDD5W6tqWogFEMJhpZGa3b7Gig+IKA+67IUa8oCsqtA
         sbNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=bGyGi/HXZfs2KTisFec4aWzo1FTCWcim0jsJyhKQXD4=;
        b=gEk3JzyUxhlHgLf4mxes0FngpbEWNssAAPC2V0qGrCr8vxtJsHlZGVsX8C8LbtoOY4
         ELEygVoQk/UXEjg4D+6aIwIyCKpW1cFpxAdZ4gBTj9owQcFkIbnM12sPu6gV170mx0Yk
         xTyIW2kveek2knEZK4/5Lh1zgLoP/Rkvf79ydGMTeRR4saqpGLnT0PUvlb7q3uKcP3Am
         sOuYHE2S7skcRYtPGpi1Fk6hzbsQTbHN+Bvt3ZoUHh82gyJjxnJKmBp7jo4edKAfVViG
         KEwNEBc4UCFlScmUbTMIid0SbM0Z3Om3Pc2yWQU/SlXh6vDQw8GN/qGWI9IWuv2rvSOR
         kJCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=T0Wiz+2r;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m9si67477pgl.4.2021.08.16.21.20.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 21:20:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4F7AE60F35;
	Tue, 17 Aug 2021 04:20:34 +0000 (UTC)
Subject: Re: [PATCH] kbuild: Enable -Wimplicit-fallthrough for clang 14.0.0+
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210817005624.1455428-1-nathan@kernel.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <80fa539a-b767-76ed-dafa-4d8d1a6b063e@kernel.org>
Date: Mon, 16 Aug 2021 21:20:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210817005624.1455428-1-nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=T0Wiz+2r;       spf=pass
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


On 8/16/2021 5:56 PM, Nathan Chancellor wrote:
> Clang prior to 14.0.0 warns when a fallthrough annotation is in an
> unreachable spot, which can occur when IS_ENABLED(CONFIG_...) in a
> conditional statement prior to the fallthrough annotation such as
> 
>    if (IS_ENABLED(CONFIG_...))
>        break;
>    fallthrough;
> 
> which to clang looks like
> 
>    break;
>    fallthrough;
> 
> if CONFIG_... is enabled due to the control flow graph. Example of the
> warning in practice:
> 
> sound/core/pcm_native.c:3812:3: warning: fallthrough annotation in
> unreachable code [-Wimplicit-fallthrough]
>                  fallthrough;
>                  ^
> 
> Warning on unreachable annotations makes the warning too noisy and
> pointless for the kernel due to the nature of guarding some code on
> configuration options so it was disabled in commit d936eb238744 ("Revert
> "Makefile: Enable -Wimplicit-fallthrough for Clang"").
> 
> This has been resolved in clang 14.0.0 by moving the unreachable warning
> to its own flag under -Wunreachable-code, which the kernel will most
> likely never enable due to situations like this.
> 
> Enable -Wimplicit-fallthrough for clang 14+ so that issues such as the
> one in commit 652b44453ea9 ("habanalabs/gaudi: fix missing code in ECC
> handling") can be caught before they enter the tree.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/236
> Link: https://github.com/llvm/llvm-project/commit/9ed4a94d6451046a51ef393cd62f00710820a7e8
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>   Makefile | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index c19d1638da25..91a4a80409e1 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -797,11 +797,17 @@ KBUILD_CFLAGS += -Wno-gnu
>   # source of a reference will be _MergedGlobals and not on of the whitelisted names.
>   # See modpost pattern 2
>   KBUILD_CFLAGS += -mno-global-merge
> +
> +# Warn about unmarked fall-throughs in switch statement.
> +# Clang prior to 14.0.0 warned on unreachable fallthroughs with
> +# -Wimplicit-fallthrough, which is unacceptable due to IS_ENABLED().
> +# https://bugs.llvm.org/show_bug.cgi?id=51094
> +ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 140000; echo $$?),0)
> +KBUILD_CFLAGS += -Wimplicit-fallthrough
> +endif
>   else
>   
>   # Warn about unmarked fall-throughs in switch statement.
> -# Disabled for clang while comment to attribute conversion happens and
> -# https://github.com/ClangBuiltLinux/linux/issues/636 is discussed.
>   KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough=5,)
>   endif
>   
> 
> base-commit: a2824f19e6065a0d3735acd9fe7155b104e7edf5
> 

Please do not apply this patch in its current form, as it does not 
properly credit Gustavo for all of the hard work he has done for 
enabling this warning.

Additionally, there should be some time for the CI systems to update 
their clang-14 builds, as the recent 0day report shows.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/80fa539a-b767-76ed-dafa-4d8d1a6b063e%40kernel.org.
