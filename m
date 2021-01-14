Return-Path: <clang-built-linux+bncBDCOPN4MS4JRBUM3QCAAMGQEMPCSOHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8342F5D39
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 10:24:34 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id x20sf1695664wmc.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 01:24:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610616273; cv=pass;
        d=google.com; s=arc-20160816;
        b=a+G1MH/3P2GjkJnlhQRJGKwl9L7eCxVailEXigg+zj4Hyq0jB0QMjd5Jx/fz6gkMWX
         tWGZw8c5s8qLy+ef6YVHNfVEweyyIpcVAfNkS2G7oe+llR/NhVzK6rnuZTF8wNZdIkk2
         wFlvGAzU61lqgkf7Fq+SPlmmQFMyvzx/kURb00WVA652wmoZbDmRK+OSffQ7NCAbMRWR
         H7stlhbVnZAzUc4MPxwkc6qyI2C31RQ1vlqb60JQhpCi7wzjk4HS51cq7MeRclaBJDVG
         NPSdGY3boSKpi/77w2yu0dQZmeDQMLbVJiog9hwDOm7A8FzmRqZfXoh26GS0v58A9T/R
         M2+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=0EigngScF68kmZ9YkBbf0pMqYlbEJ60Rrh7lVbeVNJs=;
        b=wKQU4XK/+MAv/+bMh/SccKROOamRFsDJ/Tfx7OPznyjMZm4jwS28mu4xQapHtKDJSd
         MvondIpWapW0pJKqqCmaLXNf0njZKItUPKUZUVNXTWwyhcLdxidEnG0fgKK4aZh5G9y+
         qnZNNeM3RmB9oFwW+2nKATWWNf7EW5oWN5oFnYs6aq1VnG6J0C31brkE9d/NLcjul/Ql
         awOCVNhyMAHIqmniAvhJCo2LDqyPhQfz+LH4Xoy09Ka/AyhDRJOHq+xhgsMxzPMTqB8Z
         mVLxGQXgXxzpvtvzYQRkvT9bRFHu9OQg0ofAhzc7m3M12KdBCJjBQjuwAeWIofSb8IhG
         6vWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nbd.name header.s=20160729 header.b=MZMILskZ;
       spf=pass (google.com: best guess record for domain of nbd@nbd.name designates 2a01:4f8:221:3d45::2 as permitted sender) smtp.mailfrom=nbd@nbd.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0EigngScF68kmZ9YkBbf0pMqYlbEJ60Rrh7lVbeVNJs=;
        b=TGWOMaRL+n0g05LiAX6Nrj+zL7+OInlliZRG+VJV23iSXLEpZbmQE9R39hO5bh8AUo
         I7rwMTBI1FObiwARXilBSE08YIV+i8sNAI+Rb6sTlf65OJg/4GWIEs4xDV+svJKterd1
         snVKg7z3YhPs9j58MqWgSMTSF1WGlpyQIw3YYuCas1Rpppdho1QvOv2o1n0WLY9yCREf
         71EF0orB3ODnjGmJLrwnP2WatlrlWe8SRLyXn9oMe86zeZ+UQtkuy5U/kEDyb+4FYlDO
         QLW2Cjwuhi5iNnPv5Uv5itdXMchOFGs8//KiOWTcp0PaP1wABpg9tkk+rxw08DSUF+nA
         QATA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0EigngScF68kmZ9YkBbf0pMqYlbEJ60Rrh7lVbeVNJs=;
        b=OTTpFlECuR4iByVrL7BdNwmjcFlWlBhrx5HmDudOsTd5GL3Tm3FBrU10tStDexOrgD
         0amZ7m4GdQMva2ermdpJTwszAiuJOuY0reLapdQ2pX2/mxLN5WN1zA2V+8QMfFN8UT2y
         nQeLfN9loTMMZ0Iu1QMc8e2hRhyL9uEnfxPwcpydxw+OKJkUdfU0fxl1FWRr7NUvuHoa
         o4nhcxVcDBh1GWIcUJCNixc+7um8a+zRXWGY85+kI9PudiP/neh4igjxYjY35IO7qPNU
         NHpJ7AkpTGIMu4gdGN3lWsNiRxIU2twgih4Ps9/jeTCO5lW2FsDOb9a2tgJitZroZ2v8
         tJPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MwOnYg60yv2Ntbc1qiI6Lex8Kdjn1zQZzUekDKuh/xrpTQsSq
	R99MjaCdg/xdrYNtYgNGFLQ=
X-Google-Smtp-Source: ABdhPJzElpRROFb1EK3wAe9hW3AdkEadZMN7x+sSduwveAhuXe9v0GFexJfGnjPLCEzQ44RG3ptyqA==
X-Received: by 2002:a1c:4c14:: with SMTP id z20mr3015260wmf.149.1610616273726;
        Thu, 14 Jan 2021 01:24:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5543:: with SMTP id g3ls4260077wrw.0.gmail; Thu, 14 Jan
 2021 01:24:33 -0800 (PST)
X-Received: by 2002:a5d:674b:: with SMTP id l11mr7097202wrw.247.1610616272917;
        Thu, 14 Jan 2021 01:24:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610616272; cv=none;
        d=google.com; s=arc-20160816;
        b=z0MzRernMOoTR6aHW5U80g5zO1FNsX7bfgJFfs1YJejanexgI3ETDfPATBL8d6uL5N
         Fnk8mNplmawyqwuIXUPZaqt4T3ig+uEO67fNEdd4UQ8bRcexdyL2Oy7FQpZS5XtvcjaM
         0LeHZGAnf+AxxH3t1mLZMtxHd2BS9AYFZF5pZ+PSWnS2dcz0D8wy4byPO+2EC6N4WZdx
         Rq06r7bRlv+VBCgERLyb0bHfY1cEiQvdswlzMjuMPBZRaugoHVzVO6vqqV3na0GPzUZg
         Je894adc2hVTnHXzQm0yb0Ni89AG/kS3K3BiDutd7cRsTrQzujZEaLVYnAvCJ+kze4TF
         HmTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=2uqg5pSRojZBo6w/FGO6uS669NIaxCuaEwl+DtcVLgI=;
        b=yAbnt7HN3hbW2+JG50TLVI68UT0bPIwj/sRVa3mWpTOywfPvcOXr7deqMHuxkLsC+u
         /zcqGQb0yvHHltOK4aHNi/6zVdErn5eAMnpqxomGZ7AuUy9RnPCx/2Q8pv0PLzQDQhgX
         LmKU7VA2UFAJMYAwKYpi/cfnWAp6VYXTzz8YtfdChZ/X+RUbq3uCKSTJ5Gq4n8P9omBu
         fxQ7hfaVwph6dItRbMrZGepBaIexkJ0j5PYiHJoB2+4r2L42tvAFSagQf1ZhWBcmpdrx
         5S9PUZWxnv+HNsNf9VfbqNq6PEKq5i9AOyipHWkaezeAoyFSNlqP8DTxULG8AVzXDWqx
         eUeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nbd.name header.s=20160729 header.b=MZMILskZ;
       spf=pass (google.com: best guess record for domain of nbd@nbd.name designates 2a01:4f8:221:3d45::2 as permitted sender) smtp.mailfrom=nbd@nbd.name
Received: from nbd.name (nbd.name. [2a01:4f8:221:3d45::2])
        by gmr-mx.google.com with ESMTPS id 18si398278wmg.2.2021.01.14.01.24.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 14 Jan 2021 01:24:32 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of nbd@nbd.name designates 2a01:4f8:221:3d45::2 as permitted sender) client-ip=2a01:4f8:221:3d45::2;
Received: from p54ae91f2.dip0.t-ipconnect.de ([84.174.145.242] helo=nf.local)
	by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.89)
	(envelope-from <nbd@nbd.name>)
	id 1kzyrn-0004T9-UU; Thu, 14 Jan 2021 10:24:31 +0100
Subject: Re: [PATCH] mt76: Fix queue ID variable types after mcu queue split
To: Kalle Valo <kvalo@codeaurora.org>, Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Ryder Lee <ryder.lee@mediatek.com>, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20201229211548.1348077-1-natechancellor@gmail.com>
 <20201231100918.GA1819773@computer-5.station> <87k0sjlwyb.fsf@codeaurora.org>
From: Felix Fietkau <nbd@nbd.name>
Message-ID: <9af48c35-c987-7eb4-e3a1-5e54555f988b@nbd.name>
Date: Thu, 14 Jan 2021 10:24:30 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <87k0sjlwyb.fsf@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: nbd@nbd.name
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nbd.name header.s=20160729 header.b=MZMILskZ;       spf=pass
 (google.com: best guess record for domain of nbd@nbd.name designates
 2a01:4f8:221:3d45::2 as permitted sender) smtp.mailfrom=nbd@nbd.name
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

On 2021-01-11 09:06, Kalle Valo wrote:
> Lorenzo Bianconi <lorenzo@kernel.org> writes:
> 
>>> Clang warns in both mt7615 and mt7915:
>>> 
>>> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:271:9: warning: implicit
>>> conversion from enumeration type 'enum mt76_mcuq_id' to different
>>> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>>>                 txq = MT_MCUQ_FWDL;
>>>                     ~ ^~~~~~~~~~~~
>>> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:278:9: warning: implicit
>>> conversion from enumeration type 'enum mt76_mcuq_id' to different
>>> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>>>                 txq = MT_MCUQ_WA;
>>>                     ~ ^~~~~~~~~~
>>> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:282:9: warning: implicit
>>> conversion from enumeration type 'enum mt76_mcuq_id' to different
>>> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>>>                 txq = MT_MCUQ_WM;
>>>                     ~ ^~~~~~~~~~
>>> 3 warnings generated.
>>> 
>>> drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:238:9: warning: implicit
>>> conversion from enumeration type 'enum mt76_mcuq_id' to different
>>> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>>>                 qid = MT_MCUQ_WM;
>>>                     ~ ^~~~~~~~~~
>>> drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:240:9: warning: implicit
>>> conversion from enumeration type 'enum mt76_mcuq_id' to different
>>> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>>>                 qid = MT_MCUQ_FWDL;
>>>                     ~ ^~~~~~~~~~~~
>>> 2 warnings generated.
>>> 
>>> Use the proper type for the queue ID variables to fix these warnings.
>>> Additionally, rename the txq variable in mt7915_mcu_send_message to be
>>> more neutral like mt7615_mcu_send_message.
>>> 
>>> Fixes: e637763b606b ("mt76: move mcu queues to mt76_dev q_mcu array")
>>> Link: https://github.com/ClangBuiltLinux/linux/issues/1229
>>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>>
>> Acked-by: Lorenzo Bianconi <lorenzo@kernel.org>
> 
> I see that Felix already applied this, but as this is a regression
> starting from v5.11-rc1 I think it should be applied to
> wireless-drivers. Felix, can you drop this from your tree so that I
> could apply it to wireless-drivers?
Sure, will do.

- Felix

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9af48c35-c987-7eb4-e3a1-5e54555f988b%40nbd.name.
