Return-Path: <clang-built-linux+bncBCQYFH77QIORBFG47P5QKGQEZNFDZ6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-f191.google.com (mail-vk1-f191.google.com [209.85.221.191])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CEC2872C2
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Oct 2020 12:46:46 +0200 (CEST)
Received: by mail-vk1-f191.google.com with SMTP id 9sf937318vky.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Oct 2020 03:46:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602154005; cv=pass;
        d=google.com; s=arc-20160816;
        b=jaAbwNnS+UnIxbKdRAwsE7PHvHSkRaFEEPV4W5tYc/cqlg5LZUpzhQEu7jVfFqi+jv
         rxoyncgzfygUvr/ag0A+d2cQg3hpkmZdxr2DgPWp8jnRAoC/m0Jq4mwXPHE5j1w54nN1
         eW9A+YFRVYEG2Yz4mYSx6+NmO05nbx3IrqOMQWwg0PixySQPfRk7EA8nj5AuuV1EGEIL
         ikKho0tlARsNYGK0nIR9rJyMVTjBx+D1Zx2iK+FpRnHDM3UDNW0gX856nv2DE7U+mYAQ
         pPjJm/hBHwDVIn7i/ACjq8d1BwJ6+OEE3xchE+Alge5p07wNIt+dH3aoVJW28WqXRPhQ
         vLyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:user-agent:cc:to
         :references:in-reply-to:from:subject:mime-version:dmarc-filter
         :sender;
        bh=TCB2tSrL+e7RZTAs1t6Dj/r9uGAF55CRiDajkzE2CqE=;
        b=Q0QgHVxvE8Otx3p4V1HXp0LzIS13xRC05RCA7SPJAf9qP18KwoUqIQeh5qb91pMvf6
         OfEd1Oy+0SFoGc47AFhFi4MA9CwkPzUXv2vKs5cySwgrwwuXWPLXD9KnhP+nalwEnGmG
         Hsi38S+xOCwlk4gik5L1qegFH6eZFKms14I/qFvzkXOI8CQUmTJJHZ93+yMFiwrix/rj
         ry8OOWh6KskvnIwcJk5kT5uT7JTwmIiyQWgO9ylXfdgPSL38kkThlzqrvaEBEBGNTxyU
         7aDQXOzSkZU+g3tFQggWLnIWH19Uywm9aznNQ8NCrQ0jFx8VQ48mCwI+bWtGSK7rjOV7
         vluQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=VlQiceHK;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.5 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TCB2tSrL+e7RZTAs1t6Dj/r9uGAF55CRiDajkzE2CqE=;
        b=cJ+jO58CvSvvblH1gCfsEEr39kUp0HCdFwZgMV94gb5ZQnpm0Pv2sU203oLfJgHR0y
         vz7t6OW+GVfPgZ+WZWGdu7GyPa9FAhTc98GAUCyLWDWXsvtEtgoiO+gz+94bPTXsQjNR
         Vtda8RiiNxAmx1/HbghtGPcfrHxjJOB8fJdUnyNDwZuljKH/dlHUvQb9IeFZSNc9fM0x
         eqlNC6NRlZXv/18MnIMpXQ5KY1Wp/Pb/Nf6qqy2ryBLXsQ5uLRNDCtEeAueQkefwWXl0
         cz0x40tc9LO+7Cf9ZsEEeDBjyB5zjkPZGD39p9B0rppJeOOqCxbgKvDyu/wU/kmTJ1eM
         7RjQ==
X-Gm-Message-State: AOAM531b4FuBUQRMGYCui4UsjFCeF+GCTRcpt2ZBVXCcJfIeGvpkGARG
	b1QOoov+/ivXEwq7hP8YyaE=
X-Google-Smtp-Source: ABdhPJzn/y56pMzU/RV54G9Mz7pXHMIICorTRzbgw3tBGs3wfIEeJgFtNec1Kw7qB0S9QdXcACCrxw==
X-Received: by 2002:a67:8e06:: with SMTP id q6mr3910503vsd.51.1602154005096;
        Thu, 08 Oct 2020 03:46:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:1d2:: with SMTP id s18ls595235vsq.6.gmail; Thu, 08
 Oct 2020 03:46:44 -0700 (PDT)
X-Received: by 2002:a67:f453:: with SMTP id r19mr4023505vsn.29.1602154004567;
        Thu, 08 Oct 2020 03:46:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602154004; cv=none;
        d=google.com; s=arc-20160816;
        b=adNnnQL7R+ScKk9ZNbhkZagUAJBFpXMoPDQUnc5NYTEg7ha0VirZjUFvmSnG3UrWDr
         mIR/GsvrAB8hqvIkCjonrFRPD6i/G0R8L8hbtfzwA7wubz8A+psQNMnjkmHfo8EjG/Rx
         dD9ZPTvS8ZdlSV4mFhoRQbHiK/CdrT2b0UbH99iiNVnc0eoSwnQ/n1kp/kz2u8CI80Ct
         W+hwO2hH/9RYvQa8ofAGcH8KOTigNgyBrlFzmwlv9aWq9ddrcDJ75AnIDISOoPnuAZzV
         xnqlxSsp0q5KKHTrxzYceuFZ0dr81XNDwa/IXK/MA1e5WVaKQhUCK42nyUeiai7AcSPk
         a3ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:user-agent:cc:to:references:in-reply-to:from
         :subject:content-transfer-encoding:mime-version:dmarc-filter:sender
         :dkim-signature;
        bh=vSIBoUltBzERS6y2ZxsSsX/nq3b4lLc6UgpZFPvxNKA=;
        b=OdmbhIyczXgiiZ+XNAY6fuJGudFB86SL7p1yWIxSJ+rVWqH+fyg1TVLdgCSLqjxRdf
         b5RVZXrlalsU5UAIS8sWy169nD/3L/gpWnuC48Q5Qj9DtH3pUPzI7pnpLcL2ETE6apj1
         xB8fHPo9z2sOkPZw8WXf6S8LOsH4hzu6MDba6q//iAs6xWIUSafIK89AntmdwjpO29n5
         7T0B2s0nELY97qzjz5fpf8EmGghpzdPlT1RNk+d3xtdAJTjslxhN0VnqiLcj5NyNwiNr
         /B2pJfqORm6QxCrmFjQ1SI3lB2LB6RlTY8imtp6Y8f/NHjxyEcWFeGGMsMKit/F7bYK4
         8FPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=VlQiceHK;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.5 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from z5.mailgun.us (z5.mailgun.us. [104.130.96.5])
        by gmr-mx.google.com with UTF8SMTPS id x127si317713vkc.4.2020.10.08.03.46.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Oct 2020 03:46:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.96.5 as permitted sender) client-ip=104.130.96.5;
X-Mailgun-Sending-Ip: 104.130.96.5
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 5f7eee13ad37af35ec58502e (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 08 Oct 2020 10:46:43
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id BBE31C433AF; Thu,  8 Oct 2020 10:46:43 +0000 (UTC)
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
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 53F36C433CB;
	Thu,  8 Oct 2020 10:46:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 53F36C433CB
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: mwifiex: fix double free
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20201004131931.29782-1-trix@redhat.com>
References: <20201004131931.29782-1-trix@redhat.com>
To: trix@redhat.com
Cc: amitkarwar@gmail.com, ganapathi.bhat@nxp.com, huxinming820@gmail.com,
 davem@davemloft.net, kuba@kernel.org, natechancellor@gmail.com,
 ndesaulniers@google.com, linville@tuxdriver.com, nishants@marvell.com,
 rramesh@marvell.com, bzhao@marvell.com, frankh@marvell.com,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Tom Rix <trix@redhat.com>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20201008104643.BBE31C433AF@smtp.codeaurora.org>
Date: Thu,  8 Oct 2020 10:46:43 +0000 (UTC)
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=VlQiceHK;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.96.5 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

trix@redhat.com wrote:

> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis reports this problem:
> 
> sdio.c:2403:3: warning: Attempt to free released memory
>         kfree(card->mpa_rx.buf);
>         ^~~~~~~~~~~~~~~~~~~~~~~
> 
> When mwifiex_init_sdio() fails in its first call to
> mwifiex_alloc_sdio_mpa_buffer, it falls back to calling it
> again.  If the second alloc of mpa_tx.buf fails, the error
> handler will try to free the old, previously freed mpa_rx.buf.
> Reviewing the code, it looks like a second double free would
> happen with mwifiex_cleanup_sdio().
> 
> So set both pointers to NULL when they are freed.
> 
> Fixes: 5e6e3a92b9a4 ("wireless: mwifiex: initial commit for Marvell mwifiex driver")
> Signed-off-by: Tom Rix <trix@redhat.com>
> Reviewed-by: Brian Norris <briannorris@chromium.org>

Patch applied to wireless-drivers-next.git, thanks.

53708f4fd9cf mwifiex: fix double free

-- 
https://patchwork.kernel.org/patch/11815655/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201008104643.BBE31C433AF%40smtp.codeaurora.org.
