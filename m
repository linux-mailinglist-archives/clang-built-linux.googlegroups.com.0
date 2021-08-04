Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSWCVOEAMGQEU2LZJBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 664C13E0842
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 20:49:47 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id j21-20020a25d2150000b029057ac4b4e78fsf3798188ybg.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 11:49:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628102986; cv=pass;
        d=google.com; s=arc-20160816;
        b=z02gOvfpIHtAIM0ej2lfHO9/b7E7oOZz/9GifecBFil00cr3Qx70/uqLvxKY4k6n+N
         OfwJCI/QVZaYs8L2+4ob5arBTcl5L/0mFwEbbllYpTfWpi2E8pAWokyM61LUpkvBg/hb
         LeQbRKjljeNqj8Ah+2dP9UjqvG39h+qzvnSw/RSuPyKdiSiLOc05okQ5tRlWff63Sn/S
         jtptcPL30Tamq5OtCQbLTY7E9XxUmCuJkCyVPetGXwdKmFBegweuCVyxq9aQx6OSiHxn
         zxNVpVA4lmd9P2Dpzz2TKPNeFtGAm1LZkraRg4+RIIJyMdj21xR8RwUswcfcbu/4D90q
         +h7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=P+36HUfiP4DOBEWz4l7tqKyueZrPwEMFcr0ETymq0Ng=;
        b=AAeZ+xMvYWbQhmrmJ74ZK8AxSvI5ERB6ZfNiSX6H6O39QXStrU3DCZbDFcoZVSN3Lq
         62tG6GP9+hG8ZIDYrCiTph9yyW1ZTGnWEBzMqvdtDfw6vizPp4AYHrGxUqzAjq17WVGo
         qgzYhdCqGm++5RgIhQcyCJ+MGV7wgqAiqiergD2acUX4M7M0zQED1UiioA7N82v06DTi
         xkhrzzFi5jOahrXkZlsbq5m0DKfVvlr1aKBk9bP/hR1DMLkD2bSw7Mo9vgdxwHpXxIUB
         0ZHBOSZnK2OmfCN3N+A00AKnproZ2SSKbrAfiPW9H26Hma7APf7P3Ty1/B5ZU1AO86sy
         Dkig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=COHB57FE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P+36HUfiP4DOBEWz4l7tqKyueZrPwEMFcr0ETymq0Ng=;
        b=Jqi2MmaqYDBPZVuAgYVenGFo/h9lIapisVJX6hJdtgrCtNRrLNrQ4zffZYbzBuXozf
         hZ50lFxzv2lNztzp924nHScGG6ykYFnsl0PoJWxMcqRYNHLfd6kh8TrFmvuJdmLuKp/p
         5aXUJekxX2mSWz0zYw8g1WjnIijHQNsrRt0y7e7h8DA0RyrsDx5qaMp/cdmWelSJ9Keq
         g+PZLOGPhHCMBQCxQhN35ow9HX4HLWGd4dtxBPn+NhaxBkhcFrtqrCfmFK0GpJ5UmfOQ
         8APndaveSdW3pyCSR94PVFrFEdH4Vl0XPZHTqxLezMQqwzODEPZRaX0nUfrva8WqQXEA
         kU4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=P+36HUfiP4DOBEWz4l7tqKyueZrPwEMFcr0ETymq0Ng=;
        b=oSF27T0wkuRyTgxFoAPPqSgR/IhRPVTF3wyScLvapR1WWUNU0Nf9iMlv9u5X/xcT/f
         6Rgs+tT2hRh/+dA6uncJ4VrdOrUeYlux6xmlx67D/46UdGt0MrAzDor01aV/ZCrnEAqU
         /C5ikg87zLZ/xYbxEo7LJrGAld15SOhk2W3KZEC/aSmu/BifG+t99c3PCTev9LAlJ5HF
         qZjEVq1yCrPidhajYeTbolmw37bItaKvfowFy4FjMO00BKraWU0TDae6TNrbiy99MENO
         6DU735iPLPGC460yi6pnHQL9h0ys2QG7oNKvED9hJOnHzAIFI1YulXG1MKkUso5VBXUp
         jGzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ywmY3mYscY81cwuuNpiTKih4uClwtIc4CB1fA2HxexWaGDL1C
	Y6Qrc7oGwsO0/6hFqQyO3aw=
X-Google-Smtp-Source: ABdhPJxJWtwTsqAb0wNZNT19BRFpfm2L1TlDEwIVBkr7Tzgdzk7NZjLlHg2o/lyXi47pxmOaJEn/Fg==
X-Received: by 2002:a25:9a84:: with SMTP id s4mr992763ybo.416.1628102986518;
        Wed, 04 Aug 2021 11:49:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9808:: with SMTP id a8ls1473427ybo.11.gmail; Wed, 04 Aug
 2021 11:49:45 -0700 (PDT)
X-Received: by 2002:a25:8093:: with SMTP id n19mr993583ybk.414.1628102985772;
        Wed, 04 Aug 2021 11:49:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628102985; cv=none;
        d=google.com; s=arc-20160816;
        b=vx0vONp7EKr6Iwqr1OLLadLCyOjFI8haZ1ZNLLLj6Zl3ALU4k3k2dkFbtwdyr4Pn9T
         HHLruMEUFrnL8KN25PjBxytS4DetuC0DRVAqdQj1ZfMJHnKIWzg6s6D2H/Jxj+aO/p3+
         EsCJFytRTggMwLhWV71cBUwGmM3gVTYco38/SJggO8Y3cnVejGPgLFv2MbUId1d9Of6m
         vnMcDb0jPGdj8OYlhdtpMH6Anx30z5VMw1YvbipAAVAfyNi6gN0yC1XTTSl8azX9a9Rk
         hAG0q4FaTVCr6XN2cw8ZnZLGfzzMCfPKkKkAY3GeQ3czitlh56lr8EBdi/209AWlPYvj
         HbXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=bHpgtik3x5SZkX+YhF0mGZ7vkOXBc0CZIMlDTkx4CIQ=;
        b=ud1xAh8x0tcFpgl3BjAh7NT8psqB2bO5QFl9gq3TKidpUcV44n0PMZSBuh8m8Apg2N
         Df1cn1oaL1oKKFfDcfsPtRnDvfGzTF6B1hsImO4g3O8uH2mpDIL66Cg7QsxbIc00cNep
         FTPnPs9Vfb47h0p0L0/PNxIUYDknF1QW0Eb5RDioh6AeUhEzSiCWSH/j4yJZGYJbafer
         eFEBLl6GJ0fIplhy6X7/YTp/ljqhwHbdyL7C3wPEIvlR+8WqzqYP+d+QMen6ZfslFM++
         BvyPiN/94/x3CkpOUYBeBURTvGcxc57Iepb4gqVtR/dTxQmpg8jnRT2pkamMJdiaCKzf
         8Ylw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=COHB57FE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w74si232213ybe.3.2021.08.04.11.49.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Aug 2021 11:49:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5781E60F58;
	Wed,  4 Aug 2021 18:49:44 +0000 (UTC)
Subject: Re: [PATCH 3/4] staging: r8188eu: Remove self assignment in
 get_rx_power_val_by_reg()
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Phillip Potter <phil@philpotter.co.uk>,
 Larry Finger <Larry.Finger@lwfinger.net>, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210803223609.1627280-1-nathan@kernel.org>
 <20210803223609.1627280-4-nathan@kernel.org>
 <CAKwvOdkehOWitL+o4s2jWiPk0eTmcjrntiw2rLbpiGynTqSfRw@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <431e7405-8761-b014-5c30-c68353ef5af9@kernel.org>
Date: Wed, 4 Aug 2021 11:49:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkehOWitL+o4s2jWiPk0eTmcjrntiw2rLbpiGynTqSfRw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=COHB57FE;       spf=pass
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

On 8/4/2021 11:37 AM, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Tue, Aug 3, 2021 at 3:36 PM Nathan Chancellor <nathan@kernel.org> wrote:
>>
>> Clang warns:
>>
>> drivers/staging/r8188eu/hal/rtl8188e_rf6052.c:344:13: warning:
>> explicitly assigning value of variable of type 'u32' (aka 'unsigned
>> int') to itself [-Wself-assign]
>>                          writeVal = writeVal;
>>                          ~~~~~~~~ ^ ~~~~~~~~
>> 1 warning generated.
>>
>> Remove this branch as it is useless.
>>
>> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>> ---
>>   drivers/staging/r8188eu/hal/rtl8188e_rf6052.c | 2 --
>>   1 file changed, 2 deletions(-)
>>
>> diff --git a/drivers/staging/r8188eu/hal/rtl8188e_rf6052.c b/drivers/staging/r8188eu/hal/rtl8188e_rf6052.c
>> index 335b120ce603..77889dc05858 100644
>> --- a/drivers/staging/r8188eu/hal/rtl8188e_rf6052.c
>> +++ b/drivers/staging/r8188eu/hal/rtl8188e_rf6052.c
>> @@ -340,8 +340,6 @@ static void get_rx_power_val_by_reg(struct adapter *Adapter, u8 Channel,
>>                  /*  This mechanism is only applied when Driver-Highpower-Mechanism is OFF. */
>>                  if (pdmpriv->DynamicTxHighPowerLvl == TxHighPwrLevel_BT1)
>>                          writeVal = writeVal - 0x06060606;
>> -               else if (pdmpriv->DynamicTxHighPowerLvl == TxHighPwrLevel_BT2)
>> -                       writeVal = writeVal;
> 
> Hopefully the author didn't mean to subtract another magic constant
> like they did above. This also eliminates the last use of
> TxHighPwrLevel_BT2, but it's probably ok to keep the define in
> drivers/staging/r8188eu/include/odm.h.

For what it's worth, it seems that the DynamicTxHighPowerLvl member is 
only ever assigned TxHighPwrLevel_Normal so the first if statement is 
probably dead code too but I wanted to clean up the clang warnings, not 
rewrite the driver, since I could do that for hours upon hours :)

> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks for the review!

Cheers,
Nathan

>>                  *(pOutWriteVal+rf) = writeVal;
>>          }
>>   }
>> --
>> 2.33.0.rc0
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/431e7405-8761-b014-5c30-c68353ef5af9%40kernel.org.
