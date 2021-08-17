Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3FS5SEAMGQEWX2J5BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B003EE426
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 04:05:35 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id o3-20020a170902778300b0012d888ce2efsf8548252pll.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 19:05:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629165933; cv=pass;
        d=google.com; s=arc-20160816;
        b=uHPVwAx08kUm0fb96LiU3PqxTAVC6p3ayfl6wiAfKb58ZKD4NSn92WjfCOxkMnyWJO
         /Gc8f/6towV7fK6mRvl8kaYlCoiyn2DCRhVStl6F6kkb0I1LqVotarjYRF2I4q6duJtw
         ComEjMlxUFJ9Fby0ad4ietheyMRIC6rzcFmrgK7ERe6oi/PCjLS/u90FBU8O87WLCOXk
         ADFpDiouHEKh6oX9+7PVOsbBGW/AiD2Ok5jjvWdO6kqyNRns+dWPkduDRpeMxurg8o/C
         DvzlDStM2v14xg2d+Encca6f8m34h+xRiWfDRJuTn3EM9VUtQHFgYvOdb3UFoAD5o/uI
         reTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=m4p10XH9g43KAAGEKpVhNdTAG+71J9PSRSW5jUVRy/Y=;
        b=NVEw3Y2f7Cwu6L5nD0bFysMaMUG3jZcXcNEIUohZmpXv53t2NfAmxDuqksIpv8ZIjg
         y4SSH9rPK3uUmwr+L2NH8QQye7F0QftL55L+SpBXb6wGDBk98MGU2yqL5zhgTsbBEAbe
         2QvT1ePDhH4CnkXY0LFCuw26QSy4TxdRnjViFkYGJjTqX+EoONS57c0uuRWMV15e7KJS
         iwmE25M3zRZQtCgqU5Ri0wRjDi8sAcbOZIRYGS7ZkM7qM7rAmG2gk3yzzx7/LncnJEGx
         YlXuWr1o0sh7JbMCncXSifxG6RJYRdrG9jt6y2VJ+g9IAkn0ZslCRDryw/4zYIgsaXUS
         ZMqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PFytUkkd;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m4p10XH9g43KAAGEKpVhNdTAG+71J9PSRSW5jUVRy/Y=;
        b=S4AUgOPZfi+efDV1/u7etJB9bGyeqyK5liLB6lg77q7EP+iXbALPmhipa1TdFjMMwy
         OYAqAIG8Q8BqEvq/RacktKx8cXyi3IKSBamufHiDZZo8pBPMKMvlSMVa1J5EJJXZDoGy
         EwXMwM11sw9sTgpj+1h3vl1fdQt+wf3PIvlgDPpCXO/aoZnqOFU5e9kPwhETN/cKYJSb
         YCz2zgavr/i4z/zPOpS7ZT7h9M1dgrHF9ZE7l3Gx7FupoPg8N4qgUpyWV7N/E2wfy63L
         V23v3t3DGXq+QPcYmvfF2YTCQX6IQOijDO30i3b8ZASnA8z7fw0syeZO4ai8ZZ26QT1m
         Dn+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m4p10XH9g43KAAGEKpVhNdTAG+71J9PSRSW5jUVRy/Y=;
        b=iAWcduTKaNW2ysGTXOEBvqe+SvNUV4ulgqY08FOX7gibVI0LlLOyY7CLunGCReGD8t
         82iKLNwrXasCLDxXBjQ0JGySX609VOcAz4t8HKdRTvgv6PnFzeu5xCzkVWcakiJm8eIX
         q5e0w//nVhu+KKv8HFZgpnFvxPTL2UpInCLjlMvOLslDrD9/THSOCiiiFCqKp8N9Yr9V
         zVZCtRecsWbxqmvK3ET88GPRTj8y81TbbUy/IRdwR+byOncl9V5hC1vsTpJIIA6nuvkP
         W1dz/s/zwbmaYPibLp9El2cQnmPxO+2BBBtjUUWOKvtflECJPVCKfd4qQ/zwfhrdJAP8
         8uog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pGXJNFQxXKBVn5YKS7R6aJ0B6SdrwikEdzwwiGi7mDsMbOTNU
	yDMEL6Vz3cfeDVMg9h8T2bI=
X-Google-Smtp-Source: ABdhPJyD6Cf+juPlUj+qTUjTcNb8GsPi5sAhLYR/jVTiZunG3zaT3CbJkWUZa3g82EFogjAUHI1Gvw==
X-Received: by 2002:a63:f341:: with SMTP id t1mr1076133pgj.149.1629165932989;
        Mon, 16 Aug 2021 19:05:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6343:: with SMTP id x64ls330272pgb.1.gmail; Mon, 16 Aug
 2021 19:05:32 -0700 (PDT)
X-Received: by 2002:a62:dd83:0:b029:30f:d69:895f with SMTP id w125-20020a62dd830000b029030f0d69895fmr1141930pff.17.1629165932438;
        Mon, 16 Aug 2021 19:05:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629165932; cv=none;
        d=google.com; s=arc-20160816;
        b=yqpXX8UDd/38VZCo9zOaCQMsjx5u9BoNTxIhqUfQmHNwotAn8gXjq48zzIrZUqW+WC
         rxH0nw6BNjFTCkj1EkeUMuQ21yPAbhe9PxtObcWhg5prcYG2fAW+fnQJj1YvPWt8pDs7
         fTEO8wkEChgtEI3pSdGtLtKXCJKa4xnl0WuCUWtS0XaUFVJulo8mD/hUgHREkrOLAvbV
         IsO5KyUp+vI6zsv2Wqrx8G5IccPZ7TcsPTpy1rYaAdNNEYK6vvV2+HLxhDzAGk9n/ZHs
         d1EbgRqksnzG0MUOwzCVs2fVhkG1FBcPoFtvVo4ToELGNYC0uigEM1xJUKv1d6v9OlMW
         PNAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=KDLqy3VRgIkObw6RYtyKjBdRAXTI/NDeHHgVUCjbB0E=;
        b=OmfpBDQ9O3nZq9/B0pYG3LFubpkPUKMtWyECVJN2U2X37GcGD++/cKXshZ4JF09AP8
         yT7Bc/M91Jcm18AI+UMvoT5Grn+SkVJqYDUDmMlWK4LUWxYMcjf4LFhn4sZVsQIlzZ1E
         4BYBSlppqzVWqzXpUbk2652LS/uz/bE/q6bTSsGUSE767Fe4KI70V212wfrHSHwenekC
         iKpMQVSRyyjmPU5PaWyZOMwC9ZeC2pX/vSgpxw5E1NZW9e/EUVv/FQLtO5ub6gbOdV3f
         XZTbiejQ060f9JCkV425IN6Gvojhoe+KXL+0U11565sa70f8sEFP05GOfJHkNoXQaTiT
         Sojw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PFytUkkd;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id my17si30877pjb.1.2021.08.16.19.05.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 19:05:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9FA6960F55;
	Tue, 17 Aug 2021 02:05:31 +0000 (UTC)
Subject: Re: [PATCH 4/7] arc: replace cc-option-yn uses with cc-option
To: Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
 Vineet Gupta <vgupta@kernel.org>, linux-snps-arc@lists.infradead.org
References: <20210817002109.2736222-1-ndesaulniers@google.com>
 <20210817002109.2736222-5-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <bc8cf0be-9e51-e769-0685-2594802eead0@kernel.org>
Date: Mon, 16 Aug 2021 19:05:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210817002109.2736222-5-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=PFytUkkd;       spf=pass
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
> Cc: Vineet Gupta <vgupta@kernel.org>
> Cc: linux-snps-arc@lists.infradead.org
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>   arch/arc/Makefile | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arc/Makefile b/arch/arc/Makefile
> index c0d87ac2e221..8782a03f24a8 100644
> --- a/arch/arc/Makefile
> +++ b/arch/arc/Makefile
> @@ -18,8 +18,7 @@ ifeq ($(CONFIG_ARC_TUNE_MCPU),"")
>   cflags-y				+= $(tune-mcpu-def-y)
>   else
>   tune-mcpu				:= $(shell echo $(CONFIG_ARC_TUNE_MCPU))
> -tune-mcpu-ok 				:= $(call cc-option-yn, $(tune-mcpu))
> -ifeq ($(tune-mcpu-ok),y)
> +ifneq ($(call cc-option,$(tune-mcpu)),)
>   cflags-y				+= $(tune-mcpu)

Any reason not to just turn this into

cflags-y += $(call cc-option,$(tune-mcpu))

?

If $(tune-mcpu) is empty or invalid, nothing will be added to cflags-y.

>   else
>   # The flag provided by 'CONFIG_ARC_TUNE_MCPU' option isn't known by this compiler
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bc8cf0be-9e51-e769-0685-2594802eead0%40kernel.org.
