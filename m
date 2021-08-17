Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYVU5SEAMGQEGHIVQLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBDD3EE42F
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 04:09:39 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id g14-20020a6be60e000000b005b62a0c2a41sf3217116ioh.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 19:09:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629166178; cv=pass;
        d=google.com; s=arc-20160816;
        b=IexiRw5Ilhfvswk5k4a3CCHIfF16BIZMk+edm4Ltsz/76Nh6IxuaTb3bA/nByh/0FV
         gSeUCSRKunPGQP0vxAl5IV3I+0TT2pNSuNHnSMAiLj9xxcC9HEemUOHQP/jxkgzyPP0M
         wge1v+c22q/K//9zurhPMlTwDsmF9mzDnJqdTJPW9VLMIBhtQxHhSnwTx/LjDSNz0qgs
         pSVaOpmfP+E2P2+mnkLC8QDayrOeIpgIc7FaFtmCDUbHVb8OWM0rfdbACL/zpwYwTZXK
         /ZBrluEMhuH8pwethDQHcoe8+MCR3EMrM0naKN6+BumbjmB3JwlPIA9R9U8H25pPiJ96
         UuZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=MYAnZa8Kmo3Ta2gmDqAfTjImWilxggaM3TnCAg4S/ic=;
        b=YW1Jqn8M8HOTgEvFs0XiNiwtsaxeD07BStryFJyeObLdPfp1+RnQrK4tGcZb0NfhfB
         wnffTfuLmcjeaIv2b1fcn02dAHGlVOVNu4aLgIGt5t25jGTjONH6jWTpdbLT7NkPVjM+
         QdEeNA8VsszbPTx39Z/1dXbGwgXJ6fkMjylOZuV2BIw4jvYnJoXCgHt6+aoCMNzJ6fXp
         fTPcpLWJ0DO3S3UOTL9CEeq9nVeG51+7gdKVxNzrHRJNSFfjwu8eQlE+4f5su6Rjvdb8
         Jc9OPwlWq18N6p6Njv0A9Yk4VyOC7yE34a1QLUj/e8HbXa5HAjwbsAmPqEJ1/sAmbKJc
         sSNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gb5Ffs4g;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MYAnZa8Kmo3Ta2gmDqAfTjImWilxggaM3TnCAg4S/ic=;
        b=k7uw698XGLnEFdhKGk7h+qA4vJf0dF3PJAPgbX9vqsSy6CCiQItuix8NfJu4R77bNJ
         bdbBe9zWv66ehpq/fU4xjQ2+RNZ7FQUr6eZCWtH986hQG0hCks6QxAbuKQhNMaFlqIQ2
         /pya/kIfSyZ0AfOPVf1dydDt/9d6k1hmTZNfER/FGCooRNyfqbr6xiRF1MQGlzhaaORj
         txyJoGEoAaWoyfAc+FiXTegJV3F6Hxu9eMWL25bv3leD1FjKtPm/OC8CB6fgvgLFYmwr
         vef7qOmaU7hZrqSX6yJiOWiSUTFen/gmF0EhbGgQu3E9RCFfjYG+Nk/x/kSRkXzaY1dZ
         N4QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MYAnZa8Kmo3Ta2gmDqAfTjImWilxggaM3TnCAg4S/ic=;
        b=LfwiRq3jMejHwdvcEr2aeHHCCe6Lny5GG/0WyAGE+1h9N9ilwS5v11c+FHTvEOLos/
         NuqfoKkElcsqTFG8n0wFG50zt1BDxT5/mmODs+UhoDjgRBfRpANzYvnus1R4nKJJmMI4
         ReMTCnUxu6cszB5qcbwJ5Pp6LGVrgHsXiI1mUFJfYO0NRoPDyegVzeGcB8TnM+fjEzw3
         PLv8Ft5q4MWxmlqrwBJrwIXl77o08Q2/dOfTsU26vfKyMrxcI2iXRzIY7CC++/3rFo2V
         OGuAUIZZvsH9yocCeNC9u++hko8mMHTbZat3dBsyzT8NAFRLNBHdja5CVuCNjuHwdp+8
         sPVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pFIgZV6n7DBIcRFM3WGNJfAuDT9Xr2I7TerFIvd89hclJqogc
	VAH3WZIwE5HXTPhVWR6gEGk=
X-Google-Smtp-Source: ABdhPJwXytNt77YpM+jThH+kKVw5qle4T+0qAGdeyg1rkfubHq3Sb3n12RMVIs9Bid61qOoBZqOCNQ==
X-Received: by 2002:a6b:b44f:: with SMTP id d76mr1020607iof.189.1629166178643;
        Mon, 16 Aug 2021 19:09:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:910b:: with SMTP id a11ls115714jag.7.gmail; Mon, 16 Aug
 2021 19:09:38 -0700 (PDT)
X-Received: by 2002:a02:946d:: with SMTP id a100mr801446jai.118.1629166178204;
        Mon, 16 Aug 2021 19:09:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629166178; cv=none;
        d=google.com; s=arc-20160816;
        b=rIvRwlv9mIEJGN0Te2LMD5st6yHWG913HKvTmWVRTb1SD5EotnBQQQL3By8LVKQ+mZ
         GOjxf535ZTl6Vz6D0g+iy6DEM902o6uEtChvUJSdEsMEUaMld7On1sWQRhwYrOtG9WeS
         RHec7ZUIxMxba5CefEPEFzfGa4NKrkPHcvCIKq7hDxNBmuleJ9edswZ9vSppXOfkBIF8
         hv1+reyTbUW+VrsKCGZ67epgsZ41O3BjARQh5JZ88A7EexH4H6dWQgsjem89LBXErMyL
         Lg2lTHRyT2xP8StP/U9YDf9Tc6fBPDC71u3sMMnqZ5DZgRQ3mzN/DGyxH+xxYSz5/SlL
         wQ+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=6E9rN2IaS9UGCcfeX/kg04isISvX5dpaWl9uHw1yCT0=;
        b=MaGXlbBM4el1vaGvGcDhFe18TCByhknfnK62WjMT/68Rytavxzb2aIw6zaNpnO6j2e
         qnFHrq9XnBNbYgobkU+zEQTr2Oc6tVIFEKbGpWxf++Z38u2UEgTe9dgQQ3GMhsxRObe9
         jmLz+7s/PhqrnB0exB0IeGkUzUfJJgC0bpeWDlZzjutQuTPprigj0YIq4HnaDewEllpv
         ik4rrb+uLYhKEifk6EN1878428XdSf8LZIFglM/UBOBeKGUhuej2CzhKzojtTTBh7KZo
         SqOIePLIGHVmFlqUqgkSJJAPdrE9RqhwvSSQ2nh/Pb/1JvIg7Z/6voybPBA6S7/3gzUZ
         bPNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gb5Ffs4g;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v7si38937ilo.0.2021.08.16.19.09.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 19:09:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 14AB2603E7;
	Tue, 17 Aug 2021 02:09:37 +0000 (UTC)
Subject: Re: [PATCH 6/7] Makefile: replace cc-option-yn uses with cc-option
To: Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210817002109.2736222-1-ndesaulniers@google.com>
 <20210817002109.2736222-7-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <49f8780d-3174-e196-8ba4-d6d1de36aeb1@kernel.org>
Date: Mon, 16 Aug 2021 19:09:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210817002109.2736222-7-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=gb5Ffs4g;       spf=pass
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

On 8/16/2021 5:21 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> cc-option-yn can be replaced with cc-option. ie.
> Checking for support:
> ifeq ($(call cc-option-yn,$(FLAG)),y)
> becomes:
> ifneq ($(call cc-option,$(FLAG)),)
> 
> Checking for lack of support:
> ifeq ($(call cc-option-yn,$(FLAG)),n)
> becomes:
> ifeq ($(call cc-option,$(FLAG)),)
> 
> This allows us to pursue removing cc-option-yn.
> 
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   Makefile | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 72f9e2b0202c..f76be5f62d79 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -967,7 +967,7 @@ ifdef CONFIG_FUNCTION_TRACER
>   ifdef CONFIG_FTRACE_MCOUNT_USE_CC
>     CC_FLAGS_FTRACE	+= -mrecord-mcount
>     ifdef CONFIG_HAVE_NOP_MCOUNT
> -    ifeq ($(call cc-option-yn, -mnop-mcount),y)
> +    ifneq ($(call cc-option, -mnop-mcount),)
>         CC_FLAGS_FTRACE	+= -mnop-mcount
>         CC_FLAGS_USING	+= -DCC_USING_NOP_MCOUNT
>       endif
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/49f8780d-3174-e196-8ba4-d6d1de36aeb1%40kernel.org.
