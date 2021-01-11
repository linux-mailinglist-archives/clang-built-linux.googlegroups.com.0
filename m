Return-Path: <clang-built-linux+bncBCQYFH77QIORB44N6D7QKGQEW7PYV3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-f58.google.com (mail-ot1-f58.google.com [209.85.210.58])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACA62F0D9A
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 09:06:12 +0100 (CET)
Received: by mail-ot1-f58.google.com with SMTP id 92sf9048896otx.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 00:06:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610352371; cv=pass;
        d=google.com; s=arc-20160816;
        b=H37HgRt/mUl7FY2AK9vahnAa4JdRx2E2rk77ejXuWyI+rc3yyLIhkXjpGk3z/gmNrJ
         n+MRYbPwMAZJA1/e9xPCQ12QNmUiY4yK/XefGJhy5A7yfwzUSwBhOM22mMNbg7hWKvr0
         K+2Y7ZSeBrkCOp5MSrObbNDhoNgHz9lCjXFLs9o95y2QUP3d1lGrzaIslmW1WIivmkXA
         7Coo3LiXRO3X6pHkERXQC9SIKW9OaXqDBBj4qB9wyoa4IF/jfaXmodb8OhV7/1Ihvemp
         S2sKAaekrFtgCh37ePiGq9qn65cZO+62R4eeibTOTOhtVU8vyzYeVxTwtTTPgRw7qF9q
         wmTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=wUuqtR55U+HlBM86OXIdkXs+Kk0cUTtQ3QH4hMIbEkg=;
        b=xrg/XpqHnfKd1MhhtoFeWvGsUh5w9T99PBoQUQUcxR4FdLgAzx1bLRZ60rMwOmzxqs
         6Newi3268kTyx8Wsac1cBR97hnZfeLnmde3iTDM69Sp8bisg6f/Q21Y1eU/bp4Zcarlf
         y0hecFVbayhNtLJrk3TKYiCfO4dmyaGYRU/KgOCo7GxVPWEEhhaCEa2b/ChSUEH6560/
         4/i9qwg4PxhnUIRDnIUji55QFtao5SKP9gZcQ1OVRl9vMV3dHf1PqOVk2sI2iOkgYXEb
         GxyglknIDnDGGdHxm7dmVQdqWt947onNtHJYFJS34PPYWvPkRiYwFMlKJZzQ8waR5qUA
         AKfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=MKwksAwI;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.15 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wUuqtR55U+HlBM86OXIdkXs+Kk0cUTtQ3QH4hMIbEkg=;
        b=l1OKsSsFwprNWDhT0/nOKJ8SmNJ+6umGssn0B0Djc+I2nCAXkaqvlpswYIjTTxp0dc
         xDrZcyslhpVwfbNYg3bptjsWNtDfk+8gXOF/YlJ8UoFywY6THfhN5z8gsaxhLxnUHX1Z
         tpl4K8ZEgyHsH8SGwywezZSKg8snuwfAtAW5gR87CWyo0cUd7qYuZc7yILfd/iVnZbdL
         GrxQZF33lI/kk/92ODvaNJEA3TIYVHfZfiygBr0l4KUukuEfX2S0C9DIdIr1Rd/tGiDm
         ohIzgY9TSPodLijgghwcr5S5Q/n2nS/11vzQjXAgM9LNxrj5pSVM4UAj/Hu9gy87oRBN
         SAAA==
X-Gm-Message-State: AOAM530wCds4MaIctlkU4nLeOUv5UByVe8tcILY1lL1q+6ZNVee4CFIj
	bePv+6LM7lhePryQGx1Vaq4=
X-Google-Smtp-Source: ABdhPJzxHYP7Sss0b6qSrARta+EbKEcolh0eykJ0DBATnZnbQoWIPgdzocB9J86OTtD6layqISNiZw==
X-Received: by 2002:a9d:3e42:: with SMTP id h2mr10468973otg.275.1610352371424;
        Mon, 11 Jan 2021 00:06:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:140e:: with SMTP id v14ls4617250otp.4.gmail; Mon,
 11 Jan 2021 00:06:11 -0800 (PST)
X-Received: by 2002:a9d:68d8:: with SMTP id i24mr10760262oto.31.1610352371034;
        Mon, 11 Jan 2021 00:06:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610352371; cv=none;
        d=google.com; s=arc-20160816;
        b=mpA9uv5v+pbRV33jF3hvW8Z4SpbI90w6JwevBvER6VZMKZoIYwKQlkXy+HqiXpjDU0
         So3O+XX1QBLg69GyRaAIajJds08+o38JmCqYGnfCpKoltvM5G/h2J2yydNjVNzM87UEe
         fY0bNTVEj/uYKtNOYH3aC2VmsPuhUaw+DaQCC5hKszqlF8TH8caPJ3ihuz4cQnEqbZbu
         Hllvs5/XAlorQWI/GG+5JMFBYUzVOZRt4A3HsbZwCEtFN36MSCup+3y75PSpffOjFl6J
         zxffU/q+Zk+NLEqYz7H+ZyVR7+BwGLyXi/+UQQfntp0W3ioaKm3eq6xHeqZ3EPy71Duh
         lJSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=q6HVAxk/hQzZS5AhQvky+aYNydoq0obr1IZUR/g5mjQ=;
        b=sVL7XQ2rlO6wjMKEj+nmvxIsKV4xxi5lG0IALZpHBFjut8B0iBK47xyiFaX3hihdFX
         +DUM+bpkWayZURmgtJT0txrzhxZfb3Yk8UrV8PLFSFsCjtOtcg1fgjgJiIbVy/uoNPvg
         m3enbyaA5mSKVitJ6Qh6KrZt4jQhIHmnT1Lr8wltd0aTtOj55+db2R5e2MOQKxExyYcj
         EUH9bgk6bK3XeJHshQvixbXuXmhQHFlrK9uHYacPGipPaq+jWtZCP80wNybN/p0nc1UW
         /IwkbauGEGLSghGepshRYI8YXvjnPeYku0S5JmaC4I7yVbTcjrkN8kK3Vme5g81E8oMO
         HwCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=MKwksAwI;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.15 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-15.mailgun.net (m43-15.mailgun.net. [69.72.43.15])
        by gmr-mx.google.com with UTF8SMTPS id v23si2074406otn.0.2021.01.11.00.06.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 00:06:11 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.15 as permitted sender) client-ip=69.72.43.15;
X-Mailgun-Sending-Ip: 69.72.43.15
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n08.prod.us-east-1.postgun.com with SMTP id
 5ffc06f246a6c7cde7465981 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 11 Jan 2021 08:06:10
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 2D043C433CA; Mon, 11 Jan 2021 08:06:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
	autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 44E4BC433C6;
	Mon, 11 Jan 2021 08:06:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 44E4BC433C6
From: Kalle Valo <kvalo@codeaurora.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>,  Felix Fietkau <nbd@nbd.name>,  Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,  Ryder Lee <ryder.lee@mediatek.com>,  linux-wireless@vger.kernel.org,  netdev@vger.kernel.org,  linux-mediatek@lists.infradead.org,  linux-kernel@vger.kernel.org,  clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mt76: Fix queue ID variable types after mcu queue split
References: <20201229211548.1348077-1-natechancellor@gmail.com>
	<20201231100918.GA1819773@computer-5.station>
Date: Mon, 11 Jan 2021 10:06:04 +0200
In-Reply-To: <20201231100918.GA1819773@computer-5.station> (Lorenzo Bianconi's
	message of "Thu, 31 Dec 2020 11:09:18 +0100")
Message-ID: <87k0sjlwyb.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=MKwksAwI;       spf=pass
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

Lorenzo Bianconi <lorenzo@kernel.org> writes:

>> Clang warns in both mt7615 and mt7915:
>> 
>> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:271:9: warning: implicit
>> conversion from enumeration type 'enum mt76_mcuq_id' to different
>> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>>                 txq = MT_MCUQ_FWDL;
>>                     ~ ^~~~~~~~~~~~
>> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:278:9: warning: implicit
>> conversion from enumeration type 'enum mt76_mcuq_id' to different
>> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>>                 txq = MT_MCUQ_WA;
>>                     ~ ^~~~~~~~~~
>> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:282:9: warning: implicit
>> conversion from enumeration type 'enum mt76_mcuq_id' to different
>> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>>                 txq = MT_MCUQ_WM;
>>                     ~ ^~~~~~~~~~
>> 3 warnings generated.
>> 
>> drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:238:9: warning: implicit
>> conversion from enumeration type 'enum mt76_mcuq_id' to different
>> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>>                 qid = MT_MCUQ_WM;
>>                     ~ ^~~~~~~~~~
>> drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:240:9: warning: implicit
>> conversion from enumeration type 'enum mt76_mcuq_id' to different
>> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>>                 qid = MT_MCUQ_FWDL;
>>                     ~ ^~~~~~~~~~~~
>> 2 warnings generated.
>> 
>> Use the proper type for the queue ID variables to fix these warnings.
>> Additionally, rename the txq variable in mt7915_mcu_send_message to be
>> more neutral like mt7615_mcu_send_message.
>> 
>> Fixes: e637763b606b ("mt76: move mcu queues to mt76_dev q_mcu array")
>> Link: https://github.com/ClangBuiltLinux/linux/issues/1229
>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>
> Acked-by: Lorenzo Bianconi <lorenzo@kernel.org>

I see that Felix already applied this, but as this is a regression
starting from v5.11-rc1 I think it should be applied to
wireless-drivers. Felix, can you drop this from your tree so that I
could apply it to wireless-drivers?

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87k0sjlwyb.fsf%40codeaurora.org.
