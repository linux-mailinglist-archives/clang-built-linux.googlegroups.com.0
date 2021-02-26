Return-Path: <clang-built-linux+bncBCQYFH77QIORBBH44KAQMGQEM2YZHKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-f187.google.com (mail-oi1-f187.google.com [209.85.167.187])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CB6325FEA
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 10:23:17 +0100 (CET)
Received: by mail-oi1-f187.google.com with SMTP id m136sf3262481oig.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 01:23:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614331396; cv=pass;
        d=google.com; s=arc-20160816;
        b=DcNKYzqycGHrmnWLbTvgdszqkDsM4bGrXs+4VjwTxoXTJ5x7zmtnLlmdl1fBJnp8LP
         8hUKOLDm4LI2/Maz0FTPqjVIOurNF8YJxa4IR/sLhyCcuLKDAgh6jdFtAQDGMH7w4Vkb
         3OatwSbEDMpBa7gEF1w4oX8rAM4V4fQA6WZ99Cmtu5ZaoCu9/KBO/k3qu+cG+xqK5DJG
         +FK9q6bQqnnpq22GSWs1K1eAAXeYnh/WqjTbUuvsE++Cnr005D6jBxCfpkhiQG+tfNNJ
         exG5ALzUc7+IFT8x6dwp4f7KKMORyj6mI1HAtqlhjC9Vc9l0tYqmz2LC+sBTe3ggGYHv
         aJGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:user-agent:cc:to
         :references:in-reply-to:from:subject:mime-version:dmarc-filter
         :sender;
        bh=thM4mjQssG0EpDvHgsO0m3vAqn13A+VBHSA+YpglxJc=;
        b=qPXEv0BdNtTHDA8RAwO2gTHY7mm9BA8axngWRtN0SdFbLyFbAZUGAnKlGqKakEL7zx
         hcP4nM/EoDPNWSIz3V6L+jzyYbSBrG13M2iV9Qgnahu+rlBdlrDj19SvWYlKSJZYkv0x
         0hrPjXc9ban8QqB/qjdIsnLIJxFFPwRZ5q86dfESpBGTNlNY10T+XKe6KFj6606FQwEe
         ps8IsYsgoAhmMNcTxJpugOBfTwbhcXgiMCxfYEzyBikZ3fbEkzbwan1ZYCq92Exwctky
         lfajI6srdXyKGqgtw2Izt6uQXVxhsyEkXy/KGaFKiLOtypQLU9OWgk68jSwADDWk5CN8
         qP0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=p6NvmklM;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.42.2 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=thM4mjQssG0EpDvHgsO0m3vAqn13A+VBHSA+YpglxJc=;
        b=PefKsyXxhQzM9z7d9u57bK0vz2ZResq0FVDKCl1isg3J+QH0uXdxfnXfsrhS/9O7Ui
         PJCh6I2P6ueeZT5al+VglMzugp0nYGLRoYAmI17bqUC3XbKpDg7ezYDB8d/0TouUapJD
         DSGM6GtE+rh1FA1gDOeVukAKdwjBAqhHNLBmPIhsB/xLD6ulEBZSz6vAt6wd/P4ypvlS
         HtfYX5vBrb/K+SoDpdOvf7RRQVE0XlR0r1a4wZMePrb/2m0MAvaa6ehUQggvYa4P0MI0
         ATWgs432Q1AFxn9UiYXALPVSPL6Vz0XZ7Qs2nzWEac+uJhEIlZDJH1qBeVtGc9272Gjt
         6y4Q==
X-Gm-Message-State: AOAM531vym66NN5cbJobOy7eW/TIYTkon2e0/eh2EuL5lr28xuGthNw/
	SArU4b+fpfpIn++KTl41AWs=
X-Google-Smtp-Source: ABdhPJxmYE6fFL4invLUFt3dFg3YZ5+ftDeLmdjsZcrc5aVK/FJDpOyCR+BMNDwh+86LRqlOwQHsLg==
X-Received: by 2002:aca:1b05:: with SMTP id b5mr1407031oib.96.1614331396713;
        Fri, 26 Feb 2021 01:23:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:68d0:: with SMTP id i16ls2388054oto.7.gmail; Fri, 26 Feb
 2021 01:23:16 -0800 (PST)
X-Received: by 2002:a9d:131:: with SMTP id 46mr1554643otu.287.1614331396366;
        Fri, 26 Feb 2021 01:23:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614331396; cv=none;
        d=google.com; s=arc-20160816;
        b=jb4lTt1yGMENaL8kt+mVTUlf8GrUblTV3V4Suezc/e0X0TRXocQyqQL/NowUV+2Mw/
         rPtDDmRHGCEoYPxGAui9n8gVB5On+GnmsPo08rDgAGuU2cTBjukUasq6+r1wPjl2Fuk2
         qCqiFm0nKY+7hIAHgY3ZIaEDb75pnbjCRFylE/zJPlBbI6Z2LuQctpjNgar4uWEpKKG+
         zxLmuAX9Ka1DW3xz9cX80uKpniJ5eBKdF8MLEKF0wzMYdiQ16gw+ZcAHJRpoip5WQL3I
         FJB6kDXSk2GtOxgyChHzhjgsAPjEw+xpRviLNnQ2eZwtfTeXowvpiC4ztUflYaQqlte9
         3pVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:user-agent:cc:to:references:in-reply-to:from
         :subject:content-transfer-encoding:mime-version:dmarc-filter:sender
         :dkim-signature;
        bh=mp7yRwPgCTm+lkMg8IO3FOrSKleFckToDfTuDIRWlJU=;
        b=eM33Bz2fEjgkR2XiLWYrNjMOPj89SOotLLStJghIkkTHaIZziP8RQm3nWHX5EZ1s4Q
         HTNVrqD01Tlj+PpEKAG72Nqy6KVyEesd9gyk4BP802USQ8q33CIs8yU2v3H4iUr5RYC+
         mgVv7n9XJsqYTPWbNZ56aQXsKo88c069BR79b840Akp/vZJQko1mm+zZlI3s7wl+w1T1
         RThtRG6vHV4jrW+ZWpNcUkArw3iovQBdMg/ozhTqTfRnMuvuqqqGIuY6zdyX57HmhddG
         bZ6mjyonIZnGt7Bz+nNyG9Rsu/woy5O6vsEC2XCkxmcAR9hkkvGPsKziiEPW3bli01FY
         OfDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=p6NvmklM;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.42.2 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m42-2.mailgun.net (m42-2.mailgun.net. [69.72.42.2])
        by gmr-mx.google.com with UTF8SMTPS id q10si628427oon.2.2021.02.26.01.23.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 01:23:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.42.2 as permitted sender) client-ip=69.72.42.2;
X-Mailgun-Sending-Ip: 69.72.42.2
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-west-2.postgun.com with SMTP id
 6038be026bec4e44c6045e22 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 26 Feb 2021 09:23:14
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id CB0A9C433ED; Fri, 26 Feb 2021 09:23:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	MISSING_DATE,MISSING_MID,SPF_FAIL,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 7D371C433CA;
	Fri, 26 Feb 2021 09:23:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7D371C433CA
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] mt76: mt7915: fix unused 'mode' variable
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20210225145953.404859-1-arnd@kernel.org>
References: <20210225145953.404859-1-arnd@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Felix Fietkau <nbd@nbd.name>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Ryder Lee <ryder.lee@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Shayne Chen <shayne.chen@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20210226092314.CB0A9C433ED@smtp.codeaurora.org>
Date: Fri, 26 Feb 2021 09:23:14 +0000 (UTC)
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=p6NvmklM;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.42.2 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Arnd Bergmann <arnd@kernel.org> wrote:

> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang points out a possible corner case in the mt7915_tm_set_tx_cont()
> function if called with invalid arguments:
> 
> drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:593:2: warning: variable 'mode' is used uninitialized whenever switch default is taken [-Wsometimes-uninitialized]
>         default:
>         ^~~~~~~
> drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:597:13: note: uninitialized use occurs here
>         rateval =  mode << 6 | rate_idx;
>                    ^~~~
> drivers/net/wireless/mediatek/mt76/mt7915/testmode.c:506:37: note: initialize the variable 'mode' to silence this warning
>         u8 rate_idx = td->tx_rate_idx, mode;
>                                            ^
> 
> Change it to return an error instead of continuing with invalid data
> here.
> 
> Fixes: 3f0caa3cbf94 ("mt76: mt7915: add support for continuous tx in testmode")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Please remove the break and send v2.

Patch set to Changes Requested.

-- 
https://patchwork.kernel.org/project/linux-wireless/patch/20210225145953.404859-1-arnd@kernel.org/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210226092314.CB0A9C433ED%40smtp.codeaurora.org.
