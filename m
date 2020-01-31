Return-Path: <clang-built-linux+bncBCQYFH77QIORBIET2DYQKGQEBNIOHHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-f187.google.com (mail-oi1-f187.google.com [209.85.167.187])
	by mail.lfdr.de (Postfix) with ESMTPS id C336114EB62
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jan 2020 12:04:01 +0100 (CET)
Received: by mail-oi1-f187.google.com with SMTP id s8sf2998842oie.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jan 2020 03:04:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580468640; cv=pass;
        d=google.com; s=arc-20160816;
        b=K0HpE0VDSwZxJr87r8+B1j4KnvUORzXgt6teHouDt38sCkIMtE43Vc8bqX6Yl4Bzrs
         7VQyNsVOxLoiyciToroP41uFIfV+F5t/URVmT+8PLPb0SxyyoQYmqeirIAEEW4NP7gl7
         OdjB7k4p0qr1USKoWRB3iqrRdo0oo2a/xUG1e61Qs+9YK6Pi9NnNdBfUKMObDOuFRjxc
         cqOwaIVogSs7b12m2wiynD0wWwA/nKwK5klEIGLMmvs+Y34adG+2EfleiirtKNL4N/Ot
         NWtYK2Ysil+wpwUR3Dj/rGvwMZqaUWGHm1y6AkbXyHCdUCPe2DcnYvVnQB1uC2zQ5pTT
         3n7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=27h8G7ZeUDK+J4DyEVf0PkxnKKjN/EDDHYPxHAj76RQ=;
        b=eA9oanBJVYDO0MI+d0KzZmSjyBYlcMF+BXGfLSsB60ZSKQmqxy27FPG0G0Ue9OrN0x
         NHZ4vyccn+h0B67QFlUWkS4+WT7nijH/s5HkgkHtC9oHxlMnbY/fj1QrvpowmaMlpl5W
         jCT7CF9VY8ApZgHxFnS+/SVl1xYeyhGwLQnFhzNQcC0tIsdwO6NHMSPwJppOYkSnToAu
         zhe64eAytD3iQpytUdkCuc8UBAV2qoxfDtd6kmngBxzD53fGPv1Lo8h018X0WCdiREAJ
         TPNWZ9eh+VAWE/8uRLwdWAoHEjkATqJnfRj/i4dXWyT2LTJ8pt4WBncLaPlQ0eTHr3eE
         GC7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=o49HFcRH;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=27h8G7ZeUDK+J4DyEVf0PkxnKKjN/EDDHYPxHAj76RQ=;
        b=D5rgPkNgH6m4UVOs9zo3PbJ8/tDtPlnbx/Px+HojHIQGBukiVTI3ELTzUd02aNJz6F
         l6W8VTCFlmMxqCfgCQryrWxCBZeS0KHkJppIe/0xoToWLZTeawgrJ/fkB3vY5ysZlCCR
         3iLu2SfffEXpPReoaolNRmQhpqQUtsHkaAwajRJYYVt5g++bI+8xQPF4l1c0lnhkQtwn
         yNfbhyvz0D45KYVcfN3yP6gikvKuBZP5FYB0lcxtvNBbc7axLQHsr+EUW7bcQoBu596k
         ysrhy2h7/j/Riyhxt+WjmaXHiv95KeJfqbAbBRv/VS5QrOVEYz0ChpLrBhuz9XHzW7qY
         txxA==
X-Gm-Message-State: APjAAAUNjQHRdjIeRYPFOpw4/JwIjDMoIFG4MtVZbRfmj62kBnGEbq/G
	t1E14FyRXtgRBvqOGbrDZSI=
X-Google-Smtp-Source: APXvYqxOmOGc6KUcL6psU0dmitLYQhmTkKl9hiz3aA4uBOxCdRikC6jHOqBqv7iP7sNOYRace6w81A==
X-Received: by 2002:a05:6830:110a:: with SMTP id w10mr7325587otq.300.1580468640265;
        Fri, 31 Jan 2020 03:04:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7999:: with SMTP id h25ls402132otm.2.gmail; Fri, 31 Jan
 2020 03:03:59 -0800 (PST)
X-Received: by 2002:a9d:7315:: with SMTP id e21mr7500239otk.255.1580468639748;
        Fri, 31 Jan 2020 03:03:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580468639; cv=none;
        d=google.com; s=arc-20160816;
        b=VsG/6Gph+ZkmC8v9L70m1EdNAcybi7cLvuRF99KWDaDwGf6ZGdHuMi7lFi4y6qpOu3
         lfSDvbT/UZHjA5gOziQV6JBEj7QDeI0dqfSvdNJ2UzAZ6hi5Zq39ZiW6Q6nWQcRezAa5
         Z9arHxF+c+32NYFSZHJJi9ATVQf8YD4kw0EusO9TAPBOOO3hL3PGOJNQuCDXxoSywfTK
         AB/ucvTHTZTsJM/B2G+CmfFApjNQS9zasvro7YjPR5VDaLIAEuVVFzhcj/ZxX9R/4FTf
         UeT8h+dkfUOjgKgvxDYa5mPnBxlXsC/tzSSr9v3L6aEH8VAubHg9e7mDvU7yJpZ8PKCY
         mziw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=rNOUhYWPTelGWLCs3FtWi8wsKS2uU5eRrCt6VpYAPQ0=;
        b=VBDPC5xlNLtmKsaR9cncW16usZLMpYK3TrrX7IycUaIeK2OQCiZj9cSFO4NO14gRRW
         HsCq8jKbHHyEEdcF5BB0nQ7vo7s4aScmWqv3iPLjZFmHpvy90rFN8Y0pqSoCv4JbU/2w
         6cPij8m11DQBSkrbTnOc+8yLJRyBowWnd6w0bAJCOifkfSXZ3cK3YdKxieNKWOVG7FFP
         oBb9ucBYiBGun3mRFI1/L5/nk5bdomUo6GesE9q8Ug6dbCLcCsvR238H+uWAQJdTaUUh
         uTUYYRFhDn5Dthx31IbF60iTTmtAABAhpRMXawBldEwGSMhM/jwexieBmujTHs93hVle
         LmaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=o49HFcRH;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from mail25.static.mailgun.info (mail25.static.mailgun.info. [104.130.122.25])
        by gmr-mx.google.com with UTF8SMTPS id a17si394449otr.1.2020.01.31.03.03.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jan 2020 03:03:59 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) client-ip=104.130.122.25;
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: from smtp.codeaurora.org (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e340999.7fa81d8e4340-smtp-out-n01;
 Fri, 31 Jan 2020 11:03:53 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 9FFD0C447A2; Fri, 31 Jan 2020 11:03:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 57225C433A2;
	Fri, 31 Jan 2020 11:03:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 57225C433A2
From: Kalle Valo <kvalo@codeaurora.org>
To: Tony Chuang <yhchuang@realtek.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,  "linux-wireless\@vger.kernel.org" <linux-wireless@vger.kernel.org>,  "netdev\@vger.kernel.org" <netdev@vger.kernel.org>,  "linux-kernel\@vger.kernel.org" <linux-kernel@vger.kernel.org>,  "clang-built-linux\@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] rtw88: Initialize ret in rtw_wow_check_fw_status
References: <20200130013308.16395-1-natechancellor@gmail.com>
	<e0fb1ead6dcc4ecc973b3b9b5399ef66@realtek.com>
Date: Fri, 31 Jan 2020 13:03:48 +0200
In-Reply-To: <e0fb1ead6dcc4ecc973b3b9b5399ef66@realtek.com> (Tony Chuang's
	message of "Fri, 31 Jan 2020 10:23:40 +0000")
Message-ID: <87mua3c2gb.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=o49HFcRH;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.122.25 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Tony Chuang <yhchuang@realtek.com> writes:

> From: Nathan Chancellor
>> Subject: [PATCH] rtw88: Initialize ret in rtw_wow_check_fw_status
>> 
>> Clang warns a few times (trimmed for brevity):
>> 
>> ../drivers/net/wireless/realtek/rtw88/wow.c:295:7: warning: variable
>> 'ret' is used uninitialized whenever 'if' condition is false
>> [-Wsometimes-uninitialized]
>> 
>> Initialize ret to true and change the other assignments to false because
>> it is a boolean value.
>> 
>> Fixes: 44bc17f7f5b3 ("rtw88: support wowlan feature for 8822c")
>> Link: https://github.com/ClangBuiltLinux/linux/issues/850
>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>> ---
>>  drivers/net/wireless/realtek/rtw88/wow.c | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/net/wireless/realtek/rtw88/wow.c
>> b/drivers/net/wireless/realtek/rtw88/wow.c
>> index af5c27e1bb07..5db49802c72c 100644
>> --- a/drivers/net/wireless/realtek/rtw88/wow.c
>> +++ b/drivers/net/wireless/realtek/rtw88/wow.c
>> @@ -283,18 +283,18 @@ static void rtw_wow_rx_dma_start(struct rtw_dev
>> *rtwdev)
>> 
>>  static bool rtw_wow_check_fw_status(struct rtw_dev *rtwdev, bool
>> wow_enable)
>>  {
>> -	bool ret;
>> +	bool ret = true;
>> 
>>  	/* wait 100ms for wow firmware to finish work */
>>  	msleep(100);
>> 
>>  	if (wow_enable) {
>>  		if (!rtw_read8(rtwdev, REG_WOWLAN_WAKE_REASON))
>> -			ret = 0;
>> +			ret = false;
>>  	} else {
>>  		if (rtw_read32_mask(rtwdev, REG_FE1IMR, BIT_FS_RXDONE) == 0
>> &&
>>  		    rtw_read32_mask(rtwdev, REG_RXPKT_NUM,
>> BIT_RW_RELEASE) == 0)
>> -			ret = 0;
>> +			ret = false;
>>  	}
>> 
>>  	if (ret)
>> --
>> 2.25.0
>
> NACK.
>
> This patch could lead to incorrect behavior of WOW.
> I will send a new patch to fix it, and change the type to "int".

Please send it separately so that I can queue it to v5.6.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87mua3c2gb.fsf%40kamboji.qca.qualcomm.com.
