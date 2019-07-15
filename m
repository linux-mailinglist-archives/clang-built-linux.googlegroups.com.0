Return-Path: <clang-built-linux+bncBCQYFH77QIORBY7ZWLUQKGQE3RHUKVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E48FF69A2D
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 19:50:28 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id u187sf14785179ybg.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 10:50:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563213028; cv=pass;
        d=google.com; s=arc-20160816;
        b=I7wvHZGz3Id5DG3/phNApCBvoHgKXIItcdlhGBt94uaatDXmoR9K8NpWtREinR+QDu
         6kpDkeH/KZGYe3Zn4vCpjleVcW7Y0v5etSFGlZbA8m0oNSlp9XQE/aJxp4aiHZ8y/O/K
         A+CzhSe4DBmIGwxP9I1tGgD6vOOVfTn/TLddDBUDja7plZFccmK7ZBVECx9r4F6Thnr9
         4dtmyoXcYtwP7amSvD4JFNivUTif5sKrgr1flg7VjtHXlqLxq+h04wK9zmBTWZz+/pgy
         k6OJMWkM4ae4W/zTmL5kIn5eWu1oolFzAughGuS7tBVNA8yPhgZk3Pg4P2G1PyrmJDzC
         PA3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:user-agent:cc:to
         :references:in-reply-to:from:subject:mime-version:dmarc-filter
         :sender:dkim-signature;
        bh=rHxPb3ts8XZrJAaZuJ7zx6HEAeArnVMJpzAIAVIXnHU=;
        b=KQ1Hznaj18OATj0BSapsWa3sYunyTbAHq1OaKSTWOMawHYYDSIyGkkrvrzLSv01Fku
         tP0lXgZNmV94oO9w8UPtN8peBeCYeAeT4518v51XEfDcRLQhMRyfGUqJNwEl1bd/4glg
         lOv6eFnxL3tthhfkR8GC5s3VS5iikOZzT/58nO1a8jL6mTZXQNHJxo/cBQF/g6Abhxl9
         4lXVM6lSVws3Jc9bziII/2IRMWrnIKy0RKbhBbTaVhIvQ7IG6J5LHl26VYKaZZTsAER+
         CzpB3loJh42mVW075Uhy1mdhYLacaxgxfOiX9A6UA45LEBHnLfI7xTIfFFXqjhuKmNPh
         QTDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=jXDMok2K;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=lQDeg8i8;
       spf=pass (google.com: domain of kvalo@codeaurora.org designates 198.145.29.96 as permitted sender) smtp.mailfrom=kvalo@codeaurora.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dmarc-filter:mime-version:subject:from:in-reply-to
         :references:to:cc:user-agent:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rHxPb3ts8XZrJAaZuJ7zx6HEAeArnVMJpzAIAVIXnHU=;
        b=bAq4D0Qtgx+Cfxd+i3fLD+thv5DR+dQ+Clm0oe4SJd+8XldVmjtdah3HoXYpuLgSpb
         cbIyLXBU7DnB+4aqoKslCastZdYDb9444Oor6ip9P8TEUBzfU1oAQMCaWELw2G5cJi/Y
         W+gnVaZnbT01kRG7WGF1LJnjKRL0PE6hYe0eodef1eLr+lTydX8Dz0+4wZ5mM2OBiDHm
         4EmkCahU8ulB1gLjyicuSCvYsYY51bCjNJUZNugBLZKDywExbQKTBvxj+jnOB4+1NuaL
         zeDXFsat4NWyyDXaOmKnr8pZ0NhbLlxJTYm26Q6/xfuiHFmNqFpAGPXTyV2NXmAPeH7v
         fpJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rHxPb3ts8XZrJAaZuJ7zx6HEAeArnVMJpzAIAVIXnHU=;
        b=sjYvBrBCMrV/F3JLB8XVFL2fRhtzEELAcOtboYh3eI/fmeyiKmNgZdbRS4bM7ea6oB
         ZM/maZheV4ESWL47ENgOFV5aNXHhWqgKbhjRVsiG/mCrEqh1hYFWoa9RBKmPauRlkIoO
         S0/JwThcr/y5YFN2PUZE5O7FJWCBj4lJKgwRcQsd9LqzUlwqo9+z2e/tKAClryEvIr6Z
         04biBVU3Th28Yi+8CZ0zXUej86fgAos7iotPlGiJZZu2X1CzQuxTKyTh/8ePihDOVWvD
         fzUt27LC2PuTgiQCcoinObyuBx+wY99QpZCGrZKuCSeHyn3p1y252/8coVh5pkZzhYMV
         fKcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVVp3kQCh04UWrTuV8dUyXu9mfYJI50Z654OZ5QPFkwCaolpB4y
	mNz+6xmyO8oTwXH43V9Q+3o=
X-Google-Smtp-Source: APXvYqyDSXdZ3XqdHmMyhYDmRilSMpgeEOm92r/6Xfjk8bgx5s8l+j3PNGYNA7Vwwwrw4/KssJJ0Pw==
X-Received: by 2002:a81:7914:: with SMTP id u20mr16718762ywc.230.1563213028009;
        Mon, 15 Jul 2019 10:50:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:9a0f:: with SMTP id r15ls2324052ywg.6.gmail; Mon, 15 Jul
 2019 10:50:27 -0700 (PDT)
X-Received: by 2002:a0d:d607:: with SMTP id y7mr16439369ywd.376.1563213027769;
        Mon, 15 Jul 2019 10:50:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563213027; cv=none;
        d=google.com; s=arc-20160816;
        b=C9yCnHt4YlABUNGvsnTpAQNP4frb3yR4Tr4BscnblpkRqkUyBDJdo1pzS8OvVl2W1+
         sIosW2BLvPOZ5Rt0hBivtGInktE/TzoDACCi19H6HEIlyku4VGl3FrJhmUEkkr5byLjS
         Juwy+9x7mpWtiyLyyfX1U8NJk+Pe7lxhGXsyoUJIVZYYuhUNqz4KALbc95Ymj2ue9jUY
         VshXDanmpOFl25j4nxk93punmyVDDIosPPVZ1thLMxSjb+JrvtC8B+b8s+xP3XyTUm7T
         MobmmniMc5A39Qo9GgZojrvjDgaQtS+HMQqqrYU1JJ4qQeumdUY/tZbQAGps3qXQYIsA
         R/2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:user-agent:cc:to:references:in-reply-to:from
         :subject:content-transfer-encoding:mime-version:dmarc-filter
         :dkim-signature:dkim-signature;
        bh=/ugnXh/B0l9aXqrWGyHR/Fp/2F9A76D7bK7Ei0SFmJg=;
        b=HnjKjZk2U00QuZYy7+sR6fCm2VV1FHBRD6xJNgddpY89ccx+RawVyjpGs1Tm9yTN9a
         boWbrSFqqcpcoi8DBlGI+xTdOK74EDNB71V5OwENOiOcB+fCz8NGEqlnt8hW+UAM3mRC
         S5YpdMi6XeSZdCQwuDL2MrkgbCRVmtjgNjvxmSip6FH1ruoJXvTi5ady/qJ0U1LS/sam
         KaHyijv5XC6Mhtx7Jvy4fJFdEOTn5/rzPb107rPUtCpIeB1eLBojD2moHa1JMxf8uso8
         80ZILLjilg3qckM8Sbmzv71KjQbqHwvUqysVpSuyPDa4qEMWTqQ5svAfQ7G8RJxx/txS
         Ho5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=jXDMok2K;
       dkim=pass header.i=@codeaurora.org header.s=default header.b=lQDeg8i8;
       spf=pass (google.com: domain of kvalo@codeaurora.org designates 198.145.29.96 as permitted sender) smtp.mailfrom=kvalo@codeaurora.org
Received: from smtp.codeaurora.org (smtp.codeaurora.org. [198.145.29.96])
        by gmr-mx.google.com with ESMTPS id z4si762598ybg.2.2019.07.15.10.50.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 10:50:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of kvalo@codeaurora.org designates 198.145.29.96 as permitted sender) client-ip=198.145.29.96;
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
	id B68C06119E; Mon, 15 Jul 2019 17:50:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo@smtp.codeaurora.org)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id B26A5608A5;
	Mon, 15 Jul 2019 17:50:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B26A5608A5
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: work around uninitialized vht_pfr variable
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190708125050.3689133-1-arnd@arndb.de>
References: <20190708125050.3689133-1-arnd@arndb.de>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Arnd Bergmann <arnd@arndb.de>, Miaoqing Pan <miaoqing@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>,
 Rakesh Pillai <pillair@codeaurora.org>,
 Brian Norris <briannorris@chromium.org>,
 Balaji Pothunoori <bpothuno@codeaurora.org>, Wen Gong <wgong@codeaurora.org>,
 Pradeep kumar Chitrapu <pradeepc@codeaurora.org>,
 Sriram R <srirrama@codeaurora.org>, ath10k@lists.infradead.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190715175026.B68C06119E@smtp.codeaurora.org>
Date: Mon, 15 Jul 2019 17:50:26 +0000 (UTC)
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@codeaurora.org header.s=default header.b=jXDMok2K;       dkim=pass
 header.i=@codeaurora.org header.s=default header.b=lQDeg8i8;       spf=pass
 (google.com: domain of kvalo@codeaurora.org designates 198.145.29.96 as
 permitted sender) smtp.mailfrom=kvalo@codeaurora.org
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

Arnd Bergmann <arnd@arndb.de> wrote:

> As clang points out, the vht_pfr is assigned to a struct member
> without being initialized in one case:
> 
> drivers/net/wireless/ath/ath10k/mac.c:7528:7: error: variable 'vht_pfr' is used uninitialized whenever 'if' condition
>       is false [-Werror,-Wsometimes-uninitialized]
>                 if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7551:20: note: uninitialized use occurs here
>                 arvif->vht_pfr = vht_pfr;
>                                  ^~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7528:3: note: remove the 'if' if its condition is always true
>                 if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
>                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7483:12: note: initialize the variable 'vht_pfr' to silence this warning
>         u8 vht_pfr;
> 
> Add an explicit but probably incorrect initialization here.
> I suspect we want a better fix here, but chose this approach to
> illustrate the issue.
> 
> Fixes: 8b97b055dc9d ("ath10k: fix failure to set multiple fixed rate")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Patch applied to wireless-drivers.git, thanks.

ff414f31ce37 ath10k: work around uninitialized vht_pfr variable

-- 
https://patchwork.kernel.org/patch/11034993/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715175026.B68C06119E%40smtp.codeaurora.org.
