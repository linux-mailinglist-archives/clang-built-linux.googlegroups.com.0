Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPMN3T5AKGQEJBFCOXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C57026094D
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 06:21:19 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id g6sf9647599pfi.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 21:21:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599538877; cv=pass;
        d=google.com; s=arc-20160816;
        b=PISa2UwAZbdApokImZWbLYfYgVDbAnlPitlKiKyWIWHWJWIF9SpAD/gnp2xtqgomQb
         WSYemmkU40ZsYCh618EG+IeiLMOtd+Fx6m23Fw6BifFd6PCBMPlb7fZ/Od4k11xxSnnA
         9r3Q7yY7+SCIFzudtVDKLeP2mm5d2ST4SryyUZhiXtUP/dnA2b7i+cNnoUhKVwRkMzKs
         VOua1tdz2vnMCGii48Q6Snmc1yUbMEVo54Z82T+Rm8wd/8p7snlDOvWqg/G0FiEN1FN6
         mTPD+7VFE4ZgwgZ9Mgd+jkWpV7J0fO+ky4pFSt2JB77kT0mRY0PsShCl+U7Rju9QEy06
         PoNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=b4C5oMyd7OI8fyhPxVrRvnS0MezE7ZxPlACdm9QnOoI=;
        b=qcoXW//CpSJcB4XQHQjaI7PuJX2gB3p/+jj+5MxltjEqE0SBFrnCG1pzRqyDHpSkcq
         eaigEAnphCh8dyjyKb6kv6NI/JtZMB0e78QUZZ2nPsvt1cFuJsxN7Mamc5oSHQXcV0Hb
         BIZ/7qzXUABrZBnwwRsSGhgUEOq/eKDQR+6crEZ+dADBYQ2Z6P2j3vc49Y1C5/0IGK4m
         +nJtyONUbkaF0TQERffCjWTZKo9uPdSOV7+k5tdyKrU4kMUSCn1mP7QbcS4CrdkY0Bhw
         QdIrId9MqNdE3bmSKt5CWGIJPXT8IGAx50KEdcmFOwGxCLKsPNKAoGtFEg9Nx1MaCcMT
         gpfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fzx0I67S;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b4C5oMyd7OI8fyhPxVrRvnS0MezE7ZxPlACdm9QnOoI=;
        b=g9WUK2rcpbdaMVw7xBkz79L9MZ337CJXYwIz8OCt4w+APaRRM2PUj8zDk2ra4GN3VS
         NWvXdY85+QHLhiveWIW5kTMxXhho7OrW4gDiUO/JETDoww2gNZ2KaGC797X5G1b01CqK
         liGbgNLM5Epvl1jEaynh9rPVZmrANksdQFJ5IqFSPh4M7C0m+GMLecdix+j1sC7EBIvR
         RdHexym79yM5CZ6uogwyLOrWrHkYzC5P+bJih3zZsZGZFiuKyKVrb2a4YYwOoIgJCoV8
         436qLI9lrJ2H0ZygaRpbtj0l6enmdxFKLl540+drqjOIhenezCaUj04p7Lgd2NrgsqeR
         W+6g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b4C5oMyd7OI8fyhPxVrRvnS0MezE7ZxPlACdm9QnOoI=;
        b=H0vyYE1iOzuLi2OTd94NLCwXgEJRSYmKxUEluBAlNRH0oprXEWeFKAfcQgMscgAVh+
         DX488GniLArdf7Os8h99jzhUHMQHMAOFxrl/6WsJXqndtYWZTdtKh4gMvQmhOS8x4fWQ
         8ShqJt+ccYphjwNKEhqoXG4hzWfzpCclEMZzK2kWeCDCTJkJKAINB8Eev8DMhp0QXWNr
         pkZ7lI8WLeQ6psbgfdF77AWbIi0YFU/y7aNEOuoYYi3p92bUrDMYXx2H+YARnEubBXmL
         rKgZ+E0DW/jsAiwXhiDs8hm0UN5AKweYO1cTh+ohC33YisDgH68y1Kidda0AFXe6BDNK
         z0zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b4C5oMyd7OI8fyhPxVrRvnS0MezE7ZxPlACdm9QnOoI=;
        b=Cqyiu3wvoaiRVlNAlSB9vHa9rm0ZBpaFHFPeeY7Hb/4Jg2+uxtpGw6SjUNsEbCsVKY
         OA2xLJjop17XAgDY/P93deR/1LmyrIWbKGBeGwMyCprhMm5dsNDq+1WOvhZlJy1TvK8E
         Ys67GVkY/ypD04bC2Ln0QsR0HA9sz/ZWBWP/E9PhWpflRtP6wHRiaR/+dtjK4l5/gQ59
         O+B+dKZVyz1YjjcjHBXSOXSF9y1sfAiqrBuoIsE8GKPL/a+4wly0RiwUZHwue9KRjHD8
         2JNfNArOYd6NM4v1pIXgLqvHK4c+eg7xwNWkLZkBkDXe//v1Rs9GvHM8CJfG3JnQ7EYt
         k/2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HejEocxnhomNH3pUobbjerDtcKqCBJ83GvhZQDrQ/rvn1QBIS
	mqLgmShC7Qira+8lQvT9VnI=
X-Google-Smtp-Source: ABdhPJzAbBSAVPxq3ujQjnphBlsExpgwJlEJEmkV4aWKo/pZ4YGAeAtyOB4Ywvyb8EkgMO6EOCOaTQ==
X-Received: by 2002:a17:90a:e98d:: with SMTP id v13mr2173210pjy.79.1599538877231;
        Mon, 07 Sep 2020 21:21:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7591:: with SMTP id q139ls7656745pfc.3.gmail; Mon, 07
 Sep 2020 21:21:16 -0700 (PDT)
X-Received: by 2002:a62:1550:: with SMTP id 77mr23533128pfv.237.1599538876560;
        Mon, 07 Sep 2020 21:21:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599538876; cv=none;
        d=google.com; s=arc-20160816;
        b=am7RR+UWixWQZYeS91gfT0NRHZX1bZaDZ4z1JkqwnuW6hkgRUOMY/RclMfrPJ0j/pB
         JpPDsNA/tf5GpsMpcwP8RauFo4H/32DU54G5IwetLt4BqhIdZo9JBMv5AB9BQ1XLUAGI
         9Q1Iq5spLYoADKVt4OZYDr5s0FMuXecd6QX2MgmCq41jIyDmHnY93j9DJddmewXfQ+Tm
         1T8t27UP3aLnI6I8qcSf/hbHYy1hKN0L9IHNEkC+iQsWC0c/Ae75GAyu0vJAi9yRe2hI
         yX0w6pEiZdyxnU8As4yMclQwHitoNT/Q79Bix6aOU5Ymzq2gsnkClDgOGKNS97adCfWT
         QKPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PRjmqyIAVtcu5hkVXVaG9tIjoQpLXmHVLf5oTMSHjVM=;
        b=IgqsTFBeRHBdod01sKLYMXbWZUtX7YwpCHc3HiB3XVuV1bqTLySNVIAoAQxU/SvLBD
         VhOZkiz0u+0UCeIRwOojgY6C14oZRjjyhQY5laDh8zMA2dk3DJylC52lDt7OuApeH8Rf
         tOsLKuJESl9TvbpiFDJXTU7C1bXA3ERarSMajxyxayHelPi8klMN7Qn7l/TZPLu386ds
         22ee2jd4Vxy0C9l0li3Xoh57GfKY4iWWXcUXldpCfTGkJKAdAE0XK/6N7FWXskFlD5GW
         NXf2UUNSPP0IYDn4su03dXD8C+FjoOuKOts1fKa0ol2tL7b4JArrp92PkQXn3BK8BCwR
         mZqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fzx0I67S;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id s60si207259pjd.2.2020.09.07.21.21.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 21:21:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id 19so9548323qtp.1
        for <clang-built-linux@googlegroups.com>; Mon, 07 Sep 2020 21:21:16 -0700 (PDT)
X-Received: by 2002:ac8:5317:: with SMTP id t23mr24045948qtn.354.1599538875607;
        Mon, 07 Sep 2020 21:21:15 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id s20sm12829672qkg.65.2020.09.07.21.21.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 21:21:14 -0700 (PDT)
Date: Mon, 7 Sep 2020 21:21:12 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: trix@redhat.com
Cc: amitkarwar@gmail.com, ganapathi.bhat@nxp.com, huxinming820@gmail.com,
	kvalo@codeaurora.org, davem@davemloft.net, kuba@kernel.org,
	ndesaulniers@google.com, bzhao@marvell.com, dkiran@marvell.com,
	frankh@marvell.com, linville@tuxdriver.com,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mwifiex: remove function pointer check
Message-ID: <20200908042112.GA111690@ubuntu-n2-xlarge-x86>
References: <20200906200548.18053-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200906200548.18053-1-trix@redhat.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Fzx0I67S;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Sep 06, 2020 at 01:05:48PM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analyzer reports this problem
> 
> init.c:739:8: warning: Called function pointer
>   is null (null dereference)
>         ret = adapter->if_ops.check_fw_status( ...
>               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> In mwifiex_dnld_fw, there is an earlier check for check_fw_status(),
> The check was introduced for usb support at the same time this
> check in _mwifiex_fw_dpc() was made
> 
> 	if (adapter->if_ops.dnld_fw) {
> 		ret = adapter->if_ops.dnld_fw(adapter, &fw);
> 	} else {
> 		ret = mwifiex_dnld_fw(adapter, &fw);
> 	}
> 
> And a dnld_fw function initialized as part the usb's
> mwifiex_if_ops.
> 
> The other instances of mwifiex_if_ops for pci and sdio
> both set check_fw_status.
> 
> So the first check is not needed and can be removed.
> 
> Fixes: 4daffe354366 ("mwifiex: add support for Marvell USB8797 chipset")
> Signed-off-by: Tom Rix <trix@redhat.com>

Indeed, on the surface, mwifiex_dnld_fw assumes that check_fw_status()
cannot be NULL because it will always be called at the end of the
function even if the first check is skipped.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/net/wireless/marvell/mwifiex/init.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/wireless/marvell/mwifiex/init.c b/drivers/net/wireless/marvell/mwifiex/init.c
> index 82d69bc3aaaf..f006a3d72b40 100644
> --- a/drivers/net/wireless/marvell/mwifiex/init.c
> +++ b/drivers/net/wireless/marvell/mwifiex/init.c
> @@ -695,14 +695,12 @@ int mwifiex_dnld_fw(struct mwifiex_adapter *adapter,
>  	int ret;
>  	u32 poll_num = 1;
>  
> -	if (adapter->if_ops.check_fw_status) {
> -		/* check if firmware is already running */
> -		ret = adapter->if_ops.check_fw_status(adapter, poll_num);
> -		if (!ret) {
> -			mwifiex_dbg(adapter, MSG,
> -				    "WLAN FW already running! Skip FW dnld\n");
> -			return 0;
> -		}
> +	/* check if firmware is already running */
> +	ret = adapter->if_ops.check_fw_status(adapter, poll_num);
> +	if (!ret) {
> +		mwifiex_dbg(adapter, MSG,
> +			    "WLAN FW already running! Skip FW dnld\n");
> +		return 0;
>  	}
>  
>  	/* check if we are the winner for downloading FW */
> -- 
> 2.18.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200906200548.18053-1-trix%40redhat.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908042112.GA111690%40ubuntu-n2-xlarge-x86.
