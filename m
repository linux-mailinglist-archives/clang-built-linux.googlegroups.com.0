Return-Path: <clang-built-linux+bncBDCPJMFX2IOBBG4H42CQMGQEEYP5SWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1EB39AFED
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 03:36:28 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id a10-20020a65418a0000b029021b78388f57sf4965525pgq.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 18:36:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622770587; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vn1X0wJsOImKF6zs4ogmdjbiA10aCtFYDsRcegPKueZHm8T9QUkBfrgDtTJPjBqedF
         32Mb5QmerSnTcUJJSQYYAeK+xpU7OnbHt7hlkSR4fcpwpUXyfZGoyp8VoEywMy9IWjRR
         LaAfbgUFjPQ06EneTRdRQt3D8zaWlXVTctmRexSkAlC1ifgWrG67PF53G5QBcZdCK72/
         2tAzxyzUiNqvdIpBMpcG6leTwzA3Y5BdhpRw7/PvVRZ7p81yCQW/LVMxuVaR5+dtmwNI
         7bO8MTXpI3TTmgtWcktetebQVBYXOQ0Mm3YxuB2yQLNwLxSssWjsKGMmhqnNvUzC9Im5
         l6jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=U/wZlK/scCt2hmFzMi6SyAgp7wvR2ufuo86gUVhG9As=;
        b=DMN1R0ztOt/MsktDr4jM/YxBAAeIbxCadVnON1oMUg8amwDYVQ1+UiCc2fpJABpyOL
         TTukr3eNtizDOm+9gzBr8H/1sf3K/5IGSzoTiGqcSnsgDfw9jyBsZ6gv3wncBfor8D7Z
         cTsPoP0HJSQrwvSo6HAkYLOlms3fsUp7WnG8R+phcjnvY/0vWOyCNcUAiKWJ4lymANv8
         N4HYOvsnA144SGloo8Cp5mneJcv1ZYgXXVWorA1oLW87QU+mj7K6sDxhKQtDTBcWKo2X
         S/MTmSyQFaNlVgKHPUA0Woxj5uXRCIAIyEl7LMpdA1lWNEi3ZYFPQz31Cnwrcbr0GQk2
         7nBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of luomeng12@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=luomeng12@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U/wZlK/scCt2hmFzMi6SyAgp7wvR2ufuo86gUVhG9As=;
        b=KcLjh6/7ZBzOZahiBdVrrT3QI8ewHBrWJ9QwW1g3dAxFTfonWPqTMS9xKNexqC6GkD
         9U9BrLlLRP3eynsquBhAPD//3/7YLPTwYVEnilmd9RiBpr14XOGlkuZGDSJkfv6N1ZFA
         3moAm0C4yo1F2VqsJuEPTj/ViWsoQsJhEos8zZuOT9q9vdUt22QCIm4Ygv2HMLyFkCt0
         kjeBLDGlFyrpS9eBohcaaI322d1uOwOvWlw1YMHo4njekNX0Chrfs/zv4BPsM9fIPyOs
         N0wVIQLmI2kDU0w5spa2Y2cl2GiL6gYlA/+Wyv4mb451pjts13uwWmLgM9AlpPNCU6hb
         7ERA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=U/wZlK/scCt2hmFzMi6SyAgp7wvR2ufuo86gUVhG9As=;
        b=VRCmvK3U2nRbgAmSuQ6xrp35uNrrZC0SaLCDaEpZswbH/yqu8Dk9ZD14Nkj4fP4F7Y
         2IPFKiBJtEhJf7JMXRkYi9R94cdyixJ5r0YXw/PZKUQR/lafnOS8qle3ZCe2z+fD6QQE
         Qyp3h6/1CuiqjmITWZk9AzQGZOZLPzYqVXMwbI5sLZ9ZMeVN1qnBRl6YlKJPCxsHPg43
         Wsit8GQjVIp77kADykD3aab51ea1MdCenjLHQzTozQd12Uk+EPyntwEuLtP1/pKXDp4P
         LfTGxNajL1DEn0jbASA/UCZNGUedt0z/3JPPXA66pZkLhoYlAdw3mWYd8X95B7jpuv6U
         bkZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532S3+JY8R+vHzI8ViyDv5gma1Vpvup5+9xYJTqXvMoBuy+9JzPO
	qxM0rojlSNj+mH9pwGZED6g=
X-Google-Smtp-Source: ABdhPJwybYQkB6+mJJ/ID3L/rltQq7PBFqjaGUOYSfg6vU7K0LIEX8UFTiPylf1T6T2UmrRouoKu3g==
X-Received: by 2002:a62:5306:0:b029:2de:6ce0:5526 with SMTP id h6-20020a6253060000b02902de6ce05526mr1880651pfb.13.1622770587213;
        Thu, 03 Jun 2021 18:36:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c211:: with SMTP id 17ls354379pll.11.gmail; Thu, 03
 Jun 2021 18:36:26 -0700 (PDT)
X-Received: by 2002:a17:902:b288:b029:101:fa49:3fd5 with SMTP id u8-20020a170902b288b0290101fa493fd5mr1926888plr.34.1622770586680;
        Thu, 03 Jun 2021 18:36:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622770586; cv=none;
        d=google.com; s=arc-20160816;
        b=N7sKa46qHkVUJmMbcpuVSsMD53GjSPMU07Zue/vxg6yuSiPKKyYWtEaR/fpioxoJ77
         mHdePTh2Boj2m4biBVMrogb4hLVbk8HiCvAdvQzaH1elij5HKZ3NvKkuBaKQlk09wwMo
         xCEMrQXUWYnXREC+FvCVDssd0G27pHpl8GQ0uGIXA1o0pl/OU9MqvSQLAwhdQsCf/bnQ
         +FFghHD63zPdlsIxFvO4hScjoYibaN6loAqQmE3Br9baIxPgPiP059VWmyR2i70h8Z/K
         Irhj6MNjlKD/dIUNmB5KU8+iMe7OVGUbkgROqgBTODDthOuJ98JC6k3Q8LX5sYzhNs0i
         Uxiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=YWuExiLszhwL10lW/TPtG9v3DL9ow4mcYioAYuyTnL8=;
        b=TzjPuyrCr/9vqrepXSlHkeY9CqFfxtCpabRAbibv9Y0nhIjpzROeILDyVPDwCnmiXm
         5hh6qYs7Btxq4nVsxyjFd+uHpJrYYLjssr2d2APnnFRqQs09crlwT8aBQKATaIbKNULk
         DRyvAm5gTSDCX8Z6XyECQQhsm2gK2/nVz3GMivnUSreGkTGJZrQJkHmpTp5aZDQSyzI1
         8+kufQBY28fpqhc0PMaGFyEzEGCgO4xMj/6HibIQzmApopenrV4O5nKx5F9A537j8iK6
         qKQobVzuso10xYWZ8YZ717E5ZnH7aj1jc5efGwYWQ2RNvGZWP4y5zULm5wxZHOZ5MnII
         xiGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of luomeng12@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=luomeng12@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id w3si282187plz.2.2021.06.03.18.36.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Jun 2021 18:36:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of luomeng12@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from dggemv704-chm.china.huawei.com (unknown [172.30.72.54])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4Fx4wX1YN7z1BHWF;
	Fri,  4 Jun 2021 09:31:08 +0800 (CST)
Received: from dggpeml500006.china.huawei.com (7.185.36.76) by
 dggemv704-chm.china.huawei.com (10.3.19.47) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 4 Jun 2021 09:35:52 +0800
Received: from [10.174.176.127] (10.174.176.127) by
 dggpeml500006.china.huawei.com (7.185.36.76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 4 Jun 2021 09:35:51 +0800
Subject: Re: [PATCH] clocksource/drivers/pistachio: remove unused variable
To: Kees Cook <keescook@chromium.org>
CC: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>, <nathan@kernel.org>,
	<ndesaulniers@google.com>, <clang-built-linux@googlegroups.com>
References: <20210529033335.1962230-1-luomeng12@huawei.com>
 <202106011223.AE45E4FD3@keescook>
From: luomeng <luomeng12@huawei.com>
Message-ID: <3962c7ab-214a-aed3-5178-5dacdf054644@huawei.com>
Date: Fri, 4 Jun 2021 09:35:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <202106011223.AE45E4FD3@keescook>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.174.176.127]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpeml500006.china.huawei.com (7.185.36.76)
X-CFilter-Loop: Reflected
X-Original-Sender: luomeng12@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of luomeng12@huawei.com designates 45.249.212.255 as
 permitted sender) smtp.mailfrom=luomeng12@huawei.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=huawei.com
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



=E5=9C=A8 2021/6/2 3:23, Kees Cook =E5=86=99=E9=81=93:
> On Sat, May 29, 2021 at 11:33:35AM +0800, Luo Meng wrote:
>> Fix the following clang warning:
>> drivers/clocksource/timer-pistachio.c:74:15:
>> warning: variable =E2=80=98overflow=E2=80=99 set but not used [-Wunused-=
but-set-variable]
>>
>> Signed-off-by: Luo Meng <luomeng12@huawei.com>
>=20
> Is removing this correct? Should something report or record the
> overflow?
>=20
Thanks for your reply.
After my check, there is no other place to use 'int overflow' in this=20
function.
>> ---
>>   drivers/clocksource/timer-pistachio.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/clocksource/timer-pistachio.c b/drivers/clocksource=
/timer-pistachio.c
>> index 6f37181a8c63..42b4cacd2fd5 100644
>> --- a/drivers/clocksource/timer-pistachio.c
>> +++ b/drivers/clocksource/timer-pistachio.c
>> @@ -71,7 +71,7 @@ static u64 notrace
>>   pistachio_clocksource_read_cycles(struct clocksource *cs)
>>   {
>>   	struct pistachio_clocksource *pcs =3D to_pistachio_clocksource(cs);
>> -	u32 counter, overflow;
>> +	u32 counter;
>>   	unsigned long flags;
>>  =20
>>   	/*
>> @@ -80,7 +80,7 @@ pistachio_clocksource_read_cycles(struct clocksource *=
cs)
>>   	 */
>>  =20
>>   	raw_spin_lock_irqsave(&pcs->lock, flags);
>> -	overflow =3D gpt_readl(pcs->base, TIMER_CURRENT_OVERFLOW_VALUE, 0);
>> +	gpt_readl(pcs->base, TIMER_CURRENT_OVERFLOW_VALUE, 0);
>>   	counter =3D gpt_readl(pcs->base, TIMER_CURRENT_VALUE, 0);
>>   	raw_spin_unlock_irqrestore(&pcs->lock, flags);
>>  =20
>> --=20
>> 2.25.4
>>
>> --=20
>> You received this message because you are subscribed to the Google Group=
s "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msg=
id/clang-built-linux/20210529033335.1962230-1-luomeng12%40huawei.com.
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3962c7ab-214a-aed3-5178-5dacdf054644%40huawei.com.
