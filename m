Return-Path: <clang-built-linux+bncBCQYFH77QIORB6PLQGAAMGQELC3E5GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-f187.google.com (mail-pg1-f187.google.com [209.85.215.187])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E7A2F6634
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 17:48:59 +0100 (CET)
Received: by mail-pg1-f187.google.com with SMTP id y34sf4150964pgk.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 08:48:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610642938; cv=pass;
        d=google.com; s=arc-20160816;
        b=M1zyqYNDvTDUcgTSgEQEgjyWpf+CDTtT/YTpjB+TOF73tLXpzvmE0C3sFBYD6SLNuZ
         PaQePIHzePZaKaF/Ap2SayedIV0hNYCKpzmY7j2EvSIgJNamvOknsjhNZTl3ROifXkwT
         Zm18I5LkaAthaH1ygX/j7d0bZrHk6xFCCZLEr/WiaFiX9VrwQuPLEKc6xdD3cAHsjbiR
         JrPCTPt1cwAwuYgCws/CJPKo4F4Fg2kr+bJIZPfrcztToatO2r9gYSFUiHqWjhgJkABS
         wlDTl6U/mKsZpT3DDgzuhXKOPPu6kqstNYBvZ5y4l9L+754kw8eSUIossXgEZfPaA4+F
         FlsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:user-agent:cc:to
         :references:in-reply-to:from:subject:mime-version:dmarc-filter
         :sender;
        bh=ssg11Z9Gr1SUyZpHkk7FFdYaD622ezuRXLUY5DMCV/E=;
        b=vYShQmGl7hQYGuG75CG5BFZVvr++smrxx4PrJ8JB6wKY7AMJThkUY1aXi7RgrC+dMB
         KugNgODje2vO3jwdeNId7wqpkN2fDv2RNq6DlZqVPoT4x5++a0hEIXXThI/aPaYCbiV+
         1tuGaNqI6BUqXDInElRwyfLjCHcmSMMVb3qE5Z3IhW9FIZEnu42SnRfnRrJlWoJYlX2r
         YRpo6lWZiYtmgDHXEV2Omh1D/JcSJFzswhWBTifx0tEpfgV3ZLwRenjcdtjvnVj/YV9J
         3k6G9EzRYxcd2XrLzBSoYHUwodkWRez1bp9XKHwMrN9HaTxLVTIa19NRuwSnU3sMQvOc
         TqaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=bMjw95wy;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.15 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ssg11Z9Gr1SUyZpHkk7FFdYaD622ezuRXLUY5DMCV/E=;
        b=SWxqZJ+GK1MhylVpMvWPzpZD2qc2k4UNWx59K+9MI4q1pATk8osVtcowcUaRO5WlJc
         oPrfduIPzyaVT2XB5l5Iz+l72bseLOQac+4aE1mU7irMJjEt+xDSzsBCIYhFMOqUXPua
         41eHQcqH5AkqHQWaIdXMXitcCWkJDBa2w8mVaVWcq46t+fB1Mx0KAbh2puQFFlHBTyuZ
         92NI4aIiTHMri813KxUFxVvC0GQqVi9bt5fRN7qtWGJpreV+DiJbeNp8QwcibM702R+B
         V3PJ+Zw84wVRJEdIO+uDFkyOVYRh/kHQD//TPE39BNUCLDXvu3P7DGcaHNS4mOMWJmLI
         t3pw==
X-Gm-Message-State: AOAM5311LXNolR2kdZSzaT56rZQiY9evFUtA6ROParvWlLS3sNH7lHcu
	y9irsChqtJP6hJtFB2kSOjc=
X-Google-Smtp-Source: ABdhPJyvOGR3ao1CwTDW3RYEzfkxoDJuKHiT3BbYXbV+ALvaJlLq5qaw1vdo3PLULlK0Pl7MC/47jQ==
X-Received: by 2002:a17:90a:b114:: with SMTP id z20mr5764597pjq.14.1610642937877;
        Thu, 14 Jan 2021 08:48:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:959d:: with SMTP id z29ls2364473pfj.2.gmail; Thu, 14 Jan
 2021 08:48:57 -0800 (PST)
X-Received: by 2002:a63:f111:: with SMTP id f17mr8407965pgi.287.1610642937145;
        Thu, 14 Jan 2021 08:48:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610642937; cv=none;
        d=google.com; s=arc-20160816;
        b=lVjXViHvszXG1QVPhvD/jCZ8y9gDbvsS5fqiP5e6tEPogSnIcqfPQJHycAxF1BuTGo
         bSwfZrz+3kvs2VjnGp3NGR9+TJEVGW/MRMz55DsMNt0DyTu01+l4hM0c4dTDDhozAeLd
         sw7v9mmOHj1+zXvre++OGAQWZo9Rpj0Sc9qMW5LRWj5ClQEcX+5cjBxOon0NmK1D2L8W
         CzwNQR+ozkEtsQs+cocGD9uWBPb6FaGQ9hBiuuaBssQ+6xztNguxPkEfGVZW6wBKLHeJ
         DCo0/hfx9/lvW/Alj777g9zW4FD0oRtXbzReO+kM+KicZGQ+DWyxX/empnRnOOOv7B4u
         ybxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:user-agent:cc:to:references:in-reply-to:from
         :subject:content-transfer-encoding:mime-version:dmarc-filter:sender
         :dkim-signature;
        bh=pTOhOFjKTSVZKN1D0SJ1Pg5lWOEdKXufF+sYmOfnZOw=;
        b=tfm2Vp75QY+P7t6RjZbwyo5upB8IN57cF9JrYLgBmWRQZ8BqLHKqkXN39vbv6qxp/4
         I6SbVtR4SzbbzVd9TQ51DwMPj5WILE9m+t274F54OfjTFQ+M3WWsVL3IkC2oYRQcAwYu
         JhfFDqdKx67KhFbp+0AI+DLm2/ZSwe7jwXQQRx3gF5wTSkMYRwt/mQcAjEUoXC1pQwmC
         YOFMsQbICFMrrarUDQayqxC8p29Fzz9+HuKOyatW5QRObnnAYi2wselObPgSYj+7XXSr
         S8Nl5lMHhKN9V0YBKTRICCMu6NfftjJoSfqdnHQ1tgh0M2e3UzluUAsZBOYPlDuOZ5bx
         N/eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=bMjw95wy;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.15 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-15.mailgun.net (m43-15.mailgun.net. [69.72.43.15])
        by gmr-mx.google.com with UTF8SMTPS id t9si76121pjv.2.2021.01.14.08.48.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 08:48:57 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.15 as permitted sender) client-ip=69.72.43.15;
X-Mailgun-Sending-Ip: 69.72.43.15
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n08.prod.us-west-2.postgun.com with SMTP id
 600075ea2a47972bccbeaced (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 14 Jan 2021 16:48:42
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 778A2C433ED; Thu, 14 Jan 2021 16:48:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	MISSING_DATE,MISSING_MID,SPF_FAIL autolearn=no autolearn_force=no
	version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id D370BC433C6;
	Thu, 14 Jan 2021 16:48:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D370BC433C6
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] mt76: Fix queue ID variable types after mcu queue split
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20201229211548.1348077-1-natechancellor@gmail.com>
References: <20201229211548.1348077-1-natechancellor@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Felix Fietkau <nbd@nbd.name>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Ryder Lee <ryder.lee@mediatek.com>, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20210114164842.778A2C433ED@smtp.codeaurora.org>
Date: Thu, 14 Jan 2021 16:48:42 +0000 (UTC)
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=bMjw95wy;       spf=pass
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

Nathan Chancellor <natechancellor@gmail.com> wrote:

> Clang warns in both mt7615 and mt7915:
> 
> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:271:9: warning: implicit
> conversion from enumeration type 'enum mt76_mcuq_id' to different
> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>                 txq = MT_MCUQ_FWDL;
>                     ~ ^~~~~~~~~~~~
> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:278:9: warning: implicit
> conversion from enumeration type 'enum mt76_mcuq_id' to different
> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>                 txq = MT_MCUQ_WA;
>                     ~ ^~~~~~~~~~
> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:282:9: warning: implicit
> conversion from enumeration type 'enum mt76_mcuq_id' to different
> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>                 txq = MT_MCUQ_WM;
>                     ~ ^~~~~~~~~~
> 3 warnings generated.
> 
> drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:238:9: warning: implicit
> conversion from enumeration type 'enum mt76_mcuq_id' to different
> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>                 qid = MT_MCUQ_WM;
>                     ~ ^~~~~~~~~~
> drivers/net/wireless/mediatek/mt76/mt7615/mcu.c:240:9: warning: implicit
> conversion from enumeration type 'enum mt76_mcuq_id' to different
> enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>                 qid = MT_MCUQ_FWDL;
>                     ~ ^~~~~~~~~~~~
> 2 warnings generated.
> 
> Use the proper type for the queue ID variables to fix these warnings.
> Additionally, rename the txq variable in mt7915_mcu_send_message to be
> more neutral like mt7615_mcu_send_message.
> 
> Fixes: e637763b606b ("mt76: move mcu queues to mt76_dev q_mcu array")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1229
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Acked-by: Lorenzo Bianconi <lorenzo@kernel.org>

Patch applied to wireless-drivers.git, thanks.

b7c568752ef3 mt76: Fix queue ID variable types after mcu queue split

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20201229211548.1348077-1-natechancellor@gmail.com/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114164842.778A2C433ED%40smtp.codeaurora.org.
