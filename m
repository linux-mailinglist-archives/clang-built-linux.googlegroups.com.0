Return-Path: <clang-built-linux+bncBCQYFH77QIORB5V7QCAAMGQEQ6YDXGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-f64.google.com (mail-ua1-f64.google.com [209.85.222.64])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7882F5F07
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:41:59 +0100 (CET)
Received: by mail-ua1-f64.google.com with SMTP id q10sf433153uam.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 02:41:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610620919; cv=pass;
        d=google.com; s=arc-20160816;
        b=zyQqTxWYqShjMo9KAr+nzprOEWqftWjTwJfmFWAK1C6sR8YdVFVcsc/wsqDRdVJTOW
         2RAWA3vdDNMbIwzPuRlw1LAOQdPzKO2rGQA5GYZ/9eZOP/KSti50Pia/cJeW73r327Zr
         y/pWX/RYwfpqn6N+9FwZd7XOLdkpFT+6eqThB6NvKA0F8tFMgKqwoPdBPDH2gne5k1DP
         cS/ux9hiGXfTqPfW8UaFDAYv084CAZjw/f81+jsW3xV5FZeHab40sHxClSPF2RT1m2m2
         3nIJD5bWMjOFJHZaqsTjHlAHVaKYxPcrX8Yls6ka2d3AIEoJVu6Ctn0sOMZkuLZkQGUZ
         +S2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=bV2qhJQE0RFMBHLAJsMVB7C+yd2Arf/d8jc597Xqjuc=;
        b=PmMK6Xyjgmn4tAZ5WAGdPHaN28MOxXaZ+fjCk2qzDy0WuTWMbx2JcbfJSpI5QcOEl5
         eXPoCCtJIkdrV8qZngQiFibatBT0Wy4Mxdx9vr9kdiLAGDwJLq7aHXCdJGL46wXdVON4
         5V7wY0cC/uxtMkt9YFeFo+NfedmvXhEcLzQ6DNrIzfGzj+S3tADMMp2M6uE/x2d57CJW
         OYNSvQHco2hfATYqgh8c8cOpyg2Hu1fOM7sNeDGxZ/QjeiCH54JTMBfEfy7Ej9J69AQN
         8uZdfEyk4YTBHB8z+eQYCKR3ssMCfAU42y9zEkQbzIU2UFZQZAmdkTdqD2WnD0AbKYcX
         Pu5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=h1aMRlsG;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.15 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bV2qhJQE0RFMBHLAJsMVB7C+yd2Arf/d8jc597Xqjuc=;
        b=ltwQXGJVhopVwouj8jYHin5UYvugansIY/RvoF59L0XEn8ors1EPQHctKk/cQtTl4L
         S4/N1BkBeVHmTQN68HfZeYW+Kf7GsfZccFurHp1Q2fjVxSIY0VYumi/TYvhcKUFZx6q7
         cCaktnDZlPAgDk0puEDKXNVtq4tkvPNMT+gI7ChgFNS6YflqS2ZNBf/nmrdhQkQHV5PF
         rtZsjLaez+em8BD5A6x/bptdeQILjmgnC5+njH5GnESOVG3I/gpRdmnSPIoFc7P+Zu6S
         fQzc4Wip85m0Widz5AhpMkgyyAECwcf1NfkHKGgYVBFHHXUtvfJY07kKTi423NtFC/wz
         ScaQ==
X-Gm-Message-State: AOAM531AvifdljtRlyy5NM9M4+kv49jMD46rU2CtMSNHWVhqfTWUU/V1
	Rg5ouqeHxJBloBz5R2eJ4ds=
X-Google-Smtp-Source: ABdhPJxy4b46xOq8lae3oD5LO7/zeFKsDbGmdJ0wBSggmVHdNQ5MZaLJ2NDQ2KjimJxxS170armjZw==
X-Received: by 2002:a67:e409:: with SMTP id d9mr5613352vsf.52.1610620918841;
        Thu, 14 Jan 2021 02:41:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:8f89:: with SMTP id r131ls265474vkd.8.gmail; Thu, 14 Jan
 2021 02:41:58 -0800 (PST)
X-Received: by 2002:a1f:9b0b:: with SMTP id d11mr5569141vke.21.1610620918119;
        Thu, 14 Jan 2021 02:41:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610620918; cv=none;
        d=google.com; s=arc-20160816;
        b=IH9C70H1+WfkTo55EYjA65H0KU2gdUEdwfbgS69VmLMXXMGockwGq9BUDMmZ/FG9Ii
         qpXEJ4vojfhxJnOnAWMLh2Dg672u9ljTgSCzQ0ropsbTaJ6lqq+ufZY1sdpiY4PSrBhs
         mTPq00P09QEnMFmsui6WREUU/tUlYRmJbAo8J9saQrGquoElZoyORVDkCuwxtOOcuYWm
         3SIjcEZkrOCSJHY2eGyv00GhWrIX0jtjr1wHgKKym1RiKKEPpS87RERuRU4C1z45O+tx
         AxvJgqM6nrtUfzo1MsgG7Jp9DA0w38AQjqNYnfPutrlQOGXNqhjhF/JnufMoiipP2OCv
         cyYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=Ewr4qiPEPbjem+/JZM1UEucGnjWoLnUoMQkWOHKR93M=;
        b=QSdXmDv2ZZSVENQTbf6q3ScG7NMf6pao9SrMogW257oryEQr2AiynS5cnVVH6ck8rU
         cCaorFr/5zb0DL8KlrLYm46m8sN4oZCbsTguKIW3pGZgFt1/q49fDHkDlGGD6d1EsihG
         VPV4E5k5dkTYP0mjhNpQWUMromh4p0mum3VsH1S9ihk2vSgLshyJzeMuYztGXYbXbhe9
         qOi/ban8CKlZxTq8F0to6LAHgRNwQsm9sVjkF/68GwTAXqplPHMsjvfq5KQj37TMailM
         kBQzkEAbVlOOWaP/gYgdQIiGmTg400kfEyDoMyTmHZ6D5LgcsMyPKx3D5m+kV+rqsGjM
         ktqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=h1aMRlsG;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.15 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-15.mailgun.net (m43-15.mailgun.net. [69.72.43.15])
        by gmr-mx.google.com with UTF8SMTPS id e11si252262vkp.4.2021.01.14.02.41.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 02:41:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.15 as permitted sender) client-ip=69.72.43.15;
X-Mailgun-Sending-Ip: 69.72.43.15
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-west-2.postgun.com with SMTP id
 60001ff4415a6293c53ee07b (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 14 Jan 2021 10:41:56
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 85B60C433C6; Thu, 14 Jan 2021 10:41:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
	autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 55118C433CA;
	Thu, 14 Jan 2021 10:41:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 55118C433CA
From: Kalle Valo <kvalo@codeaurora.org>
To: Felix Fietkau <nbd@nbd.name>
Cc: Lorenzo Bianconi <lorenzo@kernel.org>,  Nathan Chancellor <natechancellor@gmail.com>,  Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,  Ryder Lee <ryder.lee@mediatek.com>,  linux-wireless@vger.kernel.org,  netdev@vger.kernel.org,  linux-mediatek@lists.infradead.org,  linux-kernel@vger.kernel.org,  clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mt76: Fix queue ID variable types after mcu queue split
References: <20201229211548.1348077-1-natechancellor@gmail.com>
	<20201231100918.GA1819773@computer-5.station>
	<87k0sjlwyb.fsf@codeaurora.org>
	<9af48c35-c987-7eb4-e3a1-5e54555f988b@nbd.name>
Date: Thu, 14 Jan 2021 12:41:51 +0200
In-Reply-To: <9af48c35-c987-7eb4-e3a1-5e54555f988b@nbd.name> (Felix Fietkau's
	message of "Thu, 14 Jan 2021 10:24:30 +0100")
Message-ID: <87v9bzhkb4.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=h1aMRlsG;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.43.15 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Felix Fietkau <nbd@nbd.name> writes:

> On 2021-01-11 09:06, Kalle Valo wrote:
>> Lorenzo Bianconi <lorenzo@kernel.org> writes:
>> 
>>>> Clang warns in both mt7615 and mt7915:
>>>> 
>>>> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:271:9: warning: implicit
>>>> conversion from enumeration type 'enum mt76_mcuq_id' to different
>>>> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>>>>                 txq = MT_MCUQ_FWDL;
>>>>                     ~ ^~~~~~~~~~~~
>>>> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:278:9: warning: implicit
>>>> conversion from enumeration type 'enum mt76_mcuq_id' to different
>>>> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>>>>                 txq = MT_MCUQ_WA;
>>>>                     ~ ^~~~~~~~~~
>>>> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:282:9: warning: implicit
>>>> conversion from enumeration type 'enum mt76_mcuq_id' to different
>>>> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>>>>                 txq = MT_MCUQ_WM;
>>>>                     ~ ^~~~~~~~~~
>>>> 3 warnings generated.
>>>> 
>>>> drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:238:9: warning: implicit
>>>> conversion from enumeration type 'enum mt76_mcuq_id' to different
>>>> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>>>>                 qid = MT_MCUQ_WM;
>>>>                     ~ ^~~~~~~~~~
>>>> drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:240:9: warning: implicit
>>>> conversion from enumeration type 'enum mt76_mcuq_id' to different
>>>> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>>>>                 qid = MT_MCUQ_FWDL;
>>>>                     ~ ^~~~~~~~~~~~
>>>> 2 warnings generated.
>>>> 
>>>> Use the proper type for the queue ID variables to fix these warnings.
>>>> Additionally, rename the txq variable in mt7915_mcu_send_message to be
>>>> more neutral like mt7615_mcu_send_message.
>>>> 
>>>> Fixes: e637763b606b ("mt76: move mcu queues to mt76_dev q_mcu array")
>>>> Link: https://github.com/ClangBuiltLinux/linux/issues/1229
>>>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>>>
>>> Acked-by: Lorenzo Bianconi <lorenzo@kernel.org>
>> 
>> I see that Felix already applied this, but as this is a regression
>> starting from v5.11-rc1 I think it should be applied to
>> wireless-drivers. Felix, can you drop this from your tree so that I
>> could apply it to wireless-drivers?
>
> Sure, will do.

Thanks. I now assigned to me in patchwork and will apply to
wireless-drivers soon.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87v9bzhkb4.fsf%40codeaurora.org.
