Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR7X72CQMGQEVMU3N7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A843A0106
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 20:49:44 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id 22-20020a250d160000b0290532b914c9f4sf28009918ybn.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 11:49:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623178183; cv=pass;
        d=google.com; s=arc-20160816;
        b=aNyuJErNx7y0xhddm/9zH3Oi1ATqNpy7k9aKOrlovDGdaqCfQOCIWlJ9am/ZFgVrQu
         gov/a6UyitTfa7gjiIY00w0U5Yc+RuAzMImKqsPEJ6B0skK6nbVwii8o1hJ3UHXn5E9a
         J4rQcbTmkSVx4N5S9QSaOy263Vuoz+63Lt848JbskFsHB9RUHDPiRON9ysLCnkifGCTu
         NVlT21g+SWVPLdsVKzseVfXUhWxzz5a847XFHn51oa8x4e3KAuYCqyeKu7NTAVOMSmjT
         qkh6xerLxv4zzNkVBAYueJ7fV8vG6tpKo720JjJEbRZFrPUopR3M/S7OUxp+Ur57LmJz
         52Ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=it+sXjEikbrAMoCMdKq7is1vMq5naCAWAlK9Ojs0GJE=;
        b=V4hWr0kS5lLryokiprj+L7ZKkvLZhhEe+/m70fxGMiNYzvMNowGKfqlX6kx8WnBpn7
         Cu7/ZNQmN5Dc4aYpn9sz5mS+4UnZr2/jBGm95GSdCWsXg/Qd5RRuSulUTO13Amh4bE+k
         ulY37ePGf+8vqcrH083psOLjSspqxV/LaGQRBt/3KGKlT1GDRQOa1gRIkw/koLKg8b2z
         FXziUlc9WaxLecZFSeDJU6T2WJMuFaKTM88c70FSPFqo/f5mjW59KyGle4DOxvd8dPP9
         mJPPfhSc0iAIBQ0tI0AdJP/bdI3yzvM/od2VzrQgBRRAHMsXORXXc+1dx4DcQNuqZ3Al
         6gmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nVUytxhH;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=it+sXjEikbrAMoCMdKq7is1vMq5naCAWAlK9Ojs0GJE=;
        b=NhCwdCyO8NL5SqP2jrws+0qoKw9YP3GCA383TeS8/7CeA32FrgikjJiOAUIozLadFp
         9aIcAYgsOMDJKhvbQ0ad+v1VPYPiHUFLjNqZ4cKZwFxf70Tzpo8TMigeINsmQFN1ewwS
         rnE80bxtaXD1uGsi9V0L8rxlOabqT4JiTa/ZpTjvGYlj8cEZAe0XMFgMa/nFuTIDzS0S
         CFegw/+EY+T20XJw8kzI2Hqqwa9FQxm0/Dfco2xYwu8Z4Jd8mdbSjiG5LnW3PBDb53Mw
         O3tCQXb6JbZWwQa1tfWS8PMpEhq6dODBWeUzTDDYOVJhJGsHPozxGbdKlaAig1pxwfxq
         Nwew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=it+sXjEikbrAMoCMdKq7is1vMq5naCAWAlK9Ojs0GJE=;
        b=HoFnhxH+fpOCNooWC7OI5+MBli/jexssxr795ydZTDXoJnlB+8WnBv7CH/V8vSLflR
         r0lXEEtsdc9Zc/H1Zamrvi5lGqycCR2C3VzDF844aUwYStEygg89QxvhsC0XGjt+CECz
         JBn2L56eqbj1TwTGNtk78IHqnTHlXa17b2M52hEKzJ3hMeF9o1ohJExNF4TTVMQof2Zz
         feQVRAupvAlEnTfzrLvKuZ1ndszZvXOE3IOQ4eidUonBAiVHOsTJKcg3MH6ADWMsmuwf
         3GQ4VtViSbphz+0tXvbY/otw53HwetI4pZeAHGasrmHwdHFiGcsgnQcg6Z30OqdMRp6I
         k1mg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wPDIxPFwJTE8gsjZRlQz8gVzN9/aBQ8SRVKWINbFPLdX/zjRw
	OCQlc1IkWBhsjWT5EUUUhc0=
X-Google-Smtp-Source: ABdhPJwqsM/NkOx7WT95N2tSySM2y1FC3nV+xXghyeokSBDtgWRxS5/mupNRw3EFnD32uXbZicNMMQ==
X-Received: by 2002:a25:bb84:: with SMTP id y4mr31674662ybg.450.1623178183150;
        Tue, 08 Jun 2021 11:49:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3c6:: with SMTP id 189ls2951829ybd.8.gmail; Tue, 08 Jun
 2021 11:49:42 -0700 (PDT)
X-Received: by 2002:a25:aa90:: with SMTP id t16mr11644606ybi.307.1623178182717;
        Tue, 08 Jun 2021 11:49:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623178182; cv=none;
        d=google.com; s=arc-20160816;
        b=L7GShkbCv3hSijO4ghQJQ6YisAa6oCjZ2RrvcX52kCWpva1psGgoTNuqOBdDuUroxe
         vKZ+FLSaodsyvWZuaqZuco9pIvHWCXmSM4eEq0oy9Fz5r1v2zCbvCrE5ncJkii6dmGmP
         F4dkICmSn8Blz+33x61laRBx4YZtP3r3is7b0SeB4/knveepFRBu/6+VAt8QnuRjYzHM
         PJwGhF00/bTO5fwYo/ej5MNo0hzylrcnrKaA7r0+y1ae4kewSB/PawYtMeoW3PT04/sl
         Iri6LY895RIrAjVd5TBZhX2cBvb6cyLIEo+e4lbCE+XWpt9PeoZtvMjy1jnCRr2j5fiw
         b8BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Hk+ppHDB/QTmEhJpRlXdQwC2gWRyizA80HWzUAy2vNs=;
        b=TzfiKBOAFlB2HT2aNS7ndykVWvzpaXNT36EL+RfXgw0nE8+r9APTRx83LVDIB0YNEx
         JVBuPuKFDFR/eb/6z74SIT+gFXvNw6t8dfGnE1dlfS/6U5WrX4MEPpAd1y4J1HombSr4
         k52BBGpa06vlX3WyktdB+3TKkOarD0A/aioeBUMG17VckpZ/ROQzybZI9Rv/nXC4qDoO
         tDSQzvFy9Ijl25lP9m8zSP3NYVLXE6J1iEdPqTa4VDOd2+9j1u+ZW56l7tIkWzfjSs66
         UbuSyjtEYaeV6VW/hlmsTcII/NGVbQ1dIHWV/bu5B4HGXYnID6WekH/zu5EE5BZXN5rJ
         TOVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nVUytxhH;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x9si1013184ybn.0.2021.06.08.11.49.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Jun 2021 11:49:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6D8F561429;
	Tue,  8 Jun 2021 18:49:41 +0000 (UTC)
Subject: Re: [PATCH] thermal: devfreq_cooling: Fix kernel-doc
To: Nick Desaulniers <ndesaulniers@google.com>,
 Yang Li <yang.lee@linux.alibaba.com>
Cc: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, amitk@kernel.org,
 linux-pm@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <1623145562-111662-1-git-send-email-yang.lee@linux.alibaba.com>
 <CAKwvOdmyXV09ZxcDqQ6x43f+Eze4h40W2AoKcCmUhGM2gUWsnQ@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <6335deba-9e94-61e0-89a1-8905be0e35a1@kernel.org>
Date: Tue, 8 Jun 2021 11:49:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmyXV09ZxcDqQ6x43f+Eze4h40W2AoKcCmUhGM2gUWsnQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nVUytxhH;       spf=pass
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

On 6/8/2021 11:39 AM, Nick Desaulniers wrote:
> On Tue, Jun 8, 2021 at 2:46 AM Yang Li <yang.lee@linux.alibaba.com> wrote:
>>
>> Fix function name in devfreq_cooling.c kernel-doc comment
>> to remove a warning found by clang(make W=1 LLVM=1).
>>
>> drivers/thermal/devfreq_cooling.c:479: warning: expecting prototype for
>> devfreq_cooling_em_register_power(). Prototype was for
>> devfreq_cooling_em_register() instead.
>>
>> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
>> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> 
> That compiler warning doesn't come from kernel-doc.  Your diff looks
> good (the comment was wrong), but the commit message is curious.

No, this is indeed kernel-doc complaining. Clang should not even be 
mentioned in the commit message:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/scripts/kernel-doc?h=v5.13-rc5#n1228

The warning could probably be improved to say "definition" instead of 
"prototype" in certain cases but *shrugs*.

This warning is similar to -Wmissing-prototypes from clang but refers to 
the fact that the comment claims it is documenting one function but it 
is really documenting another.

Cheers,
Nathan

> Usually that warning is from when the function prototype does not
> exist for a function with extern linkage.  It looks like that's always
> provided though in include/linux/devfreq_cooling.h.  Can you share a
> link to the original report?
> 
>> ---
>>   drivers/thermal/devfreq_cooling.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/thermal/devfreq_cooling.c b/drivers/thermal/devfreq_cooling.c
>> index 3a788ac..5a86cff 100644
>> --- a/drivers/thermal/devfreq_cooling.c
>> +++ b/drivers/thermal/devfreq_cooling.c
>> @@ -458,7 +458,7 @@ struct thermal_cooling_device *devfreq_cooling_register(struct devfreq *df)
>>   EXPORT_SYMBOL_GPL(devfreq_cooling_register);
>>
>>   /**
>> - * devfreq_cooling_em_register_power() - Register devfreq cooling device with
>> + * devfreq_cooling_em_register() - Register devfreq cooling device with
>>    *             power information and automatically register Energy Model (EM)
>>    * @df:                Pointer to devfreq device.
>>    * @dfc_power: Pointer to devfreq_cooling_power.
>> --
>> 1.8.3.1
>>
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6335deba-9e94-61e0-89a1-8905be0e35a1%40kernel.org.
