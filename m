Return-Path: <clang-built-linux+bncBD3PNDEXYYLBBIGB52AAMGQEG4ESLMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A97A130ED33
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 08:22:09 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id k7sf1637629lfu.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 23:22:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612423329; cv=pass;
        d=google.com; s=arc-20160816;
        b=eFhlcpqQFEcLPL70HMwUzAgDojee6A5o0n2Rr2GgwRzYzfMfNCfNnnQSzPOSARJ+T6
         6fO7Qk3yiWWJDkYajLQ6Ln7D4cIkEoHZL5INtncFcR4yjvju/pHqMBSiaMp3hyHNCc7/
         kfOtXMJDx5l6HWmM2Gt4d0INCM8CojeeD70G/0/aFRb/rxVtmIXx5xAv3JwIPa9jpumA
         hh1j3Hw7HUIihSya+kTju3efceB2UyPdoDZFGrI+m90+QSWZ0Ctp6fxZXa08azh35VRe
         /HiR9Motn7z55HWT8mryxvHUpubXRiI9CGnbTAf/cGKuAXq6htE3tvSSV8AZPxIXLUsv
         bkyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=j1QF78e7X1u1rpV2iZel1mscymN+TozqThbxCZwO4Jg=;
        b=x1dkwdw30uD1O4flQEloAUdvmXocNLuzfQxZXdcABwn0+9inWjG6Sj79jcVtVzqybZ
         JEEO96RmYR1zozMbGS5Sf9XflLpL2A9zW4AJpl38QRHq1qaQsD5PZ68QV0u8/B19YgB2
         bqm6+EyhTJJmIIRvuA0Ubbth4jMDbx3SIREeoSwc7g9E3Rv7iYG7D3ZOzbp4E1EIc4SY
         VJtMilGMVwdWNtnFJrLrU5O7pDHmzy9v0O8Gb9bbeLy8x4qn0Mz/RUrllG6qb7V7wf/u
         Ni8b/cElWhRqH4KR5O6dU+Z+w4t4MV6MQW90shlt83LVMdOAjC1xwhd2Tu1PdniqYOxg
         l1rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PcItGjwT;
       spf=pass (google.com: domain of yaohaidong369@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=yaohaidong369@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j1QF78e7X1u1rpV2iZel1mscymN+TozqThbxCZwO4Jg=;
        b=nT1e0KujwkRWEcesPJKpM71TNYlkBC8cb3vzCIYlX2KiVs46szYPweesTRS0nBZBol
         drQoxlSBFXd/71QTk4MmOg8JZLv6hV4KKXIvjGhWCzAANzCGa6QxviAtZ1sEy/8WEgAi
         9XThF41k9Twu3gqd1VcKjTTBzf1bo9PLKOYrhtBv4HmrXUiwYSk8ZeRa7I+RNV6mGiax
         n83e1MLqsrhexIC7R8nIuhryTsYsjm/dCrN5pPYWXiFd8GTxqIRYOkt+3s9Umf/tlW9Z
         zGe1tHV7pP5805BeX7LnCZwnQt+lAIpOvejOFpG1TTnl+dqKR2He8MXyRhG2byEVY4Cz
         79CA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j1QF78e7X1u1rpV2iZel1mscymN+TozqThbxCZwO4Jg=;
        b=bGgYMK42qQQwkGZVjO0MReGrcfCA7vq1DCI8+A78fcAj6Yw7ViY10v4AvvCKMNA1+6
         njw3O5rkKOEsz7lg2A0oI/dxavzYk1NeWQfjTW3BA2lotbPCtNkK8utSiwqQOjhuquBw
         npgJP3mqzu6YgzZC8Pn7AvZnq8WRtmbXDkYaxDKKM5ZHUbk5xR2H2y9CdgKrc4MjNRJs
         lg92Ih6flylkgLOHCf4b4S2eADBRiRqsgCx+nYk2w18PbDMssZYIcL9I0WVM6DziEjT2
         //0dxHbUD3g5ohQqsh1FdGlfwfwKoLZW7ZfV3Hb0F2PLdWXjvwBx/OpwtudnxFRjhcFO
         OLqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j1QF78e7X1u1rpV2iZel1mscymN+TozqThbxCZwO4Jg=;
        b=uG96h5NAjZJcGPG0UZqnCOE3JJvG9DsehTIq2M36lejS2KKB94bf/xI6ux95WHVK2A
         ghO/UNiFwQETKrzpIa0IoI/XPp0lUl/omO/yFgl9ae3E/embvUreuM3L0sAhyE+mmAvJ
         oUkqU0TQ4LzwXE4VXsmvgpSl77K57YjMDoiJ9g4/+UdMrdggAHO87d/5LW7TK6rkIJKp
         wircqQWI7WQjDChvcuCqzjsiz8a8AqVuaekAO0o0/raI88GxURAELxud9LOnwbXOsQ0R
         KIO3o0Dk/cV7+bi8C8SOXqqzBfmxdwnIZUDGu4V2xms6MKbl5+7WQRvsdggNMPujX1fI
         g2rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LJxAXpO2OJKFttOTPCwJtENJ5ZJue1crmcvdT2hS/UtceLPro
	Pl9r4FkA582/8CM8Q5VfEpk=
X-Google-Smtp-Source: ABdhPJzwjFpmJcgBAYJLO5uTzH/wsOsPSsBd+8a+lIvfDCv/ZudFxygAt17M263Kws/SmbyK2/Qy5Q==
X-Received: by 2002:a05:651c:1029:: with SMTP id w9mr4076567ljm.142.1612423329153;
        Wed, 03 Feb 2021 23:22:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8745:: with SMTP id q5ls845004ljj.6.gmail; Wed, 03 Feb
 2021 23:22:08 -0800 (PST)
X-Received: by 2002:a2e:8e26:: with SMTP id r6mr3829730ljk.451.1612423328241;
        Wed, 03 Feb 2021 23:22:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612423328; cv=none;
        d=google.com; s=arc-20160816;
        b=omsEQnmHbkedeT2V4QyWWLjCp7vBEV/3L8iMBfXDyXtl82U9yPK8WVoq4A6dZ/pUrh
         LIo+SSDRhIF4Zxhs2nO3yctW/4MReJklmJk/ipPw74gtC+HowM+YckPTU985vwiE+POn
         qgQ0F7x3cy5QBTcFEXbfZSXZk4FTBnj3cFNQ04LKg5V5qSOfZuxvYIrhoaFXBqD7BOVi
         u49IhDuJZi/EhoHW+c9c92FllKSpNJzk/4/q8AWwZ5CVbi9AXK1gLzlSgKxOyRnR8qW9
         wUYNheLvEMJZXrPc2JgprdffyQ3bexPfteXmS456ODh8ywaf5KuBam73Tr7zYC1T2/Qa
         cT0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature;
        bh=8NA16pgrmr+hZCZ5N/nNI47zYO39E+Z5pyXAWJADZvM=;
        b=BxQCjNSiRdsIGmxiNpLoxt6JMzgYFVYN3QXtL4rfnkH+fuVrqQTMhz/Bq792Be3EqQ
         pjtOonMvsKfkOGUKkcf8RL3VhtYTk/8kBwGHiIoAwZV35sBRVKCBjxY9HShW4Im0+187
         IbAefoa36+wMtqegaumJg5iGTpaZlIlCmplU073TRbkhzoSAI15BA7UhS9t3MmGteXKc
         V9DO3extVuoAr2CWG06TDYNYVhWjdb1JIAW2yljsbaZlcQ1q+KQfSOrr1nZVPndCP6pD
         NpFfifw3t+Vbx5bVr3xpdDV+GOFj4yJ8x6TzNB9lsSInJl1ZTcgoeRM/nYtzmw4be/YS
         e+6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PcItGjwT;
       spf=pass (google.com: domain of yaohaidong369@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=yaohaidong369@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id y6si152305ljn.3.2021.02.03.23.22.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 23:22:08 -0800 (PST)
Received-SPF: pass (google.com: domain of yaohaidong369@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) client-ip=2a00:1450:4864:20::52a;
Received: by mail-ed1-x52a.google.com with SMTP id y8so2857995ede.6
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 23:22:08 -0800 (PST)
X-Received: by 2002:aa7:d692:: with SMTP id d18mr6790728edr.327.1612423327916;
 Wed, 03 Feb 2021 23:22:07 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:1959:0:0:0:0 with HTTP; Wed, 3 Feb 2021 23:22:07
 -0800 (PST)
In-Reply-To: <CABb+yY3P_iFnKamY=7z5rnNW+BQW4-vAbeS=S33BpqCKR1Rhuw@mail.gmail.com>
References: <1608022118-29993-1-git-send-email-yaohaidong369@gmail.com>
 <CA+kUaCeebDNXi12-nNpw4i_auZbM+JQUC5uNhEzXxqa7=W4LnQ@mail.gmail.com> <CABb+yY3P_iFnKamY=7z5rnNW+BQW4-vAbeS=S33BpqCKR1Rhuw@mail.gmail.com>
From: Yao Haidong <yaohaidong369@gmail.com>
Date: Thu, 4 Feb 2021 15:22:07 +0800
Message-ID: <CA+kUaCeJ_o4kdEtYP4MaDs7X87tCQK5UxQDj5f8EqGqxTPkvQg@mail.gmail.com>
Subject: Re: [PATCH] add chan->cl check in mbox_chan_received_data()
To: Jassi Brar <jassisinghbrar@gmail.com>
Cc: natechancellor@gmail.com, Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	Orson Zhai <orsonzhai@gmail.com>, Chunyan Zhang <zhang.lyra@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yaohaidong369@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PcItGjwT;       spf=pass
 (google.com: domain of yaohaidong369@gmail.com designates 2a00:1450:4864:20::52a
 as permitted sender) smtp.mailfrom=yaohaidong369@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

 Oh, I see, thank you

2021-02-01 14:28 GMT+08:00, Jassi Brar <jassisinghbrar@gmail.com>:
> On Thu, Jan 7, 2021 at 5:53 AM haidong yao <yaohaidong369@gmail.com> wrote:
>>
>> Hi Jassi Brar
>>
>> Thank you very much for your reply.
>>
>> Look at the function sprd_mbox_outbox_isr .
>>
>> Chan is !NULL.
>>
>> chan->cl is NULL when the client driver not loaded, the controller
>> driver don't know the client driver loaded successfully, so, I do not
>> use mbox_free_channel.
>>
>> Here,How do you know chan->cl is ok?
>>
> The channel is supposed to get/send data _only_ if it is being used by a
> client.
> Which you can mark in .startup() and .shutdown().
>
> Checking for chan->cl will make your symptoms disappear but that is
> not the right fix for the issue.
> The right fix is to EITHER not cause Rx/Tx interrupt on a channel not
> being used, OR not send it to upper layers.
>
> thanks.
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BkUaCeJ_o4kdEtYP4MaDs7X87tCQK5UxQDj5f8EqGqxTPkvQg%40mail.gmail.com.
