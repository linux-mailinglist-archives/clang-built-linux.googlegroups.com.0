Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBLVHXL3AKGQEY4D5RNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 999C11E49C0
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 18:22:07 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id q1sf13755009oos.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 09:22:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590596526; cv=pass;
        d=google.com; s=arc-20160816;
        b=db59c4KhqxvXsywU+sSRT3Z8faw7DhrMvaD4jhAHHoxceULzGLIa8oP8X2YJxNBcpg
         MRzddf0OFb1Yz82LBtCsGfznSAsIOyoayYobtXAjUBwxPRStsddNKQMOB+7xVIzc0gme
         gFACPmi3zo93BMSiA9edrGDstqskOG5/Ws+DsgyfwtECW+xtgh5E1ZoTushKII1ynsqF
         +r6NYM/Ak6/CsnX8HmNaIlWaYpTmRMjlEBEOh9kr4Rx9fbEJcuuaDUsfawvqMaNTe91L
         ArPmu4wiyO2pwWSUsvxjIP6QpFW2KDYHDySQE4i97pecrYbjKQNPvfPtuVRupBASHuy6
         vUGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=QKCuqItxibayXRaBJ5/22caSBx3Uqe2Jqxq8RB3xy1c=;
        b=AOhKb+umczvsvwnEBPU7tEuM5KTmdBXHxyz83ue5nV29hrtMKhfKrmL445yfEhTFCA
         Zpev9cYkTmbNrHDJGMWsZNAVzIYoE33wHprXfun2Z7/CFp6x4W3Kts79YDtq2HTfoe+I
         fYW0caLvCOWM+K9Tmojp6PN5k5A5hwvzsgp18Ijccz+HAmGbR6FpVQ/ofOMNlHFK6Jjt
         mfzt6AHr4g0bGBWLpFquYR2BUNjbCA5UKOjhzoe97mzBC/fQqAimQvl/7I7bTakX8CU6
         7LicUKHoBPIWPF/KcSJSMrC5dbvDka8KPEBIuJZGPidaVl1P05PJcy+2klBi98bhcD0w
         XD6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WXTLKlT4;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QKCuqItxibayXRaBJ5/22caSBx3Uqe2Jqxq8RB3xy1c=;
        b=GXiyvpUd2gTRrOjRAGB7G3zhXgQlcQ0kwxnOmr2+ro7R908zsyBfG4rdbCoTYz3/t2
         +ZJvcUGXXNE7ydfY/99AiYe2LmyGV8CqmzHlypbtKGILrXmPRGoM4HJ1cFoDMeaV6cgz
         GkcSow066RTNkXX76oxsiISfrAcj3wbCM+yTleCIZZ4yZFD+I8bUHNe26PA+e85mq7b/
         skkdGfLHflHfiuhYRep5FdCRBlT9tg4xnzYSxzLGk6cTsS0sb6+aOtJNQp+UWkEHGUEX
         x1m17nKJCbPA+fsX4/EhRdriw31+cCPa1ezB2TfI3BUqzG+IgkKQisir+yTArtPzyWxu
         HN9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QKCuqItxibayXRaBJ5/22caSBx3Uqe2Jqxq8RB3xy1c=;
        b=r5uB5cHIk0zGIUEFWKf5IIJ1Q0wc9kPjnuQ/Dc8lEoVr0CtVAJvfSfjFdbk8lQd0MH
         fh1aV9zCuq6jCvEYX/Iy1ZfC3uU5Dp7httCUQlyKs4LbMJ5rfcUifE5rs/uvH614QSmT
         LJiKqMriyxGtgpEYWOxJAWdWhNlLt1PjbLbtYvFXZP5A6NBNBzcb0mOFrxabit2VPwkA
         bcaiS5OWArDWRuAeJ8sm8+9ZuRKQDr6O3ztv9ZebWotThXynxSu6WLnVfYYt7hfyCRbw
         04LFmpgvqs/GIcaw2eAeSpwIz8+cgEfi8DHMwICXhfNejMS4NYYqbAS5rfG5WsR9PS2k
         e1BA==
X-Gm-Message-State: AOAM531iKCI4vDWTjtQNFISJlIBn2PuyenhCp7XqFkWP9t8RgTMf7sZS
	gflzvGS46bJRRjddBlzT6zQ=
X-Google-Smtp-Source: ABdhPJz+6YUzmhZ4anp09FGpUPqoQ+UVUC+v2LrNUgnV9hrYLL63mNuvm5ZSPlC2G/6zeDTSRXvyaw==
X-Received: by 2002:a05:6808:7d1:: with SMTP id f17mr3195690oij.148.1590596526427;
        Wed, 27 May 2020 09:22:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:86a:: with SMTP id 97ls3215572oty.9.gmail; Wed, 27 May
 2020 09:22:06 -0700 (PDT)
X-Received: by 2002:a05:6830:2142:: with SMTP id r2mr3151152otd.232.1590596525992;
        Wed, 27 May 2020 09:22:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590596525; cv=none;
        d=google.com; s=arc-20160816;
        b=eob6izgzlf0G83fMZlS/IyV1OWU7ymsXuala229RiWwYiwiuCBJNohwCHcTHiSYuAY
         Cx7Zty06DWu2otVOcXRe66h/3T4c3JrUnJtEzl2iNw0slBGyOO8n33OdOdjnMA+qs9WG
         MG3SYi9kyBoFsxQuytP/vYLA96XSuZHHiJ5kigFoy4FBomo7B82w7jThTFCWApboHKXb
         4floWZed5htA90wc6S4eJI1xxzblFDuq1lhuniHEbFxJ1nxQqeofvAUd+PK6wHATgW6w
         8vdDQsWGiC16wsImg43Ry2qYAmINDMt5Bn5S7KcB8FV/nWpk5yy73GU9l7ILpndWwlHm
         nm/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=WgRQyQwNaX2Goqkqxz56C3W/9OHLQN2Fvi2hNnz9VHI=;
        b=f2EtL8BBS/GaNrr6u2Pv5xpvH++Ag5DoPKx7LLv+jZbf1EKGnalKf1awfRfnfUODKd
         Wx41CEGcYaVfSrMAN0CfE5fQ4P8AhpZCrghzvhKlyOX8VJfgiZcGMdsP1+auMryzFSyZ
         SIngDyhiTIoCYQ6HJlQrxL4CSMBHR+HeDG0yVCvVOBUMltcjXkctr2Xofy5b6WSfWzFX
         U2dQazukX1BG8Iss0TuLsSUfgbFQERmN5fEpGl6QSSPC/sG5Stv/aydEWXQbEEsq7Jd0
         4rZhe8lUnpMordDM4i+kOv5+qg8La581Lenjo7N2I8tDhmbTwLbh4XaJNoorvH/u341+
         L4ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WXTLKlT4;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id a62si406890oii.1.2020.05.27.09.22.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 09:22:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id y18so12003961pfl.9
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 09:22:05 -0700 (PDT)
X-Received: by 2002:a62:1d89:: with SMTP id d131mr4679473pfd.294.1590596525275;
        Wed, 27 May 2020 09:22:05 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id w26sm2469857pfj.20.2020.05.27.09.22.04
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 May 2020 09:22:04 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 27 May 2020 09:22:03 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Henrik Rydberg <rydberg@bitmath.org>, Jean Delvare <jdelvare@suse.com>,
	Richard Fontana <rfontana@redhat.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] hwmon: applesmc: avoid overlong udelay()
Message-ID: <20200527162203.GA149714@roeck-us.net>
References: <20200527135207.1118624-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200527135207.1118624-1-arnd@arndb.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WXTLKlT4;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::442 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On Wed, May 27, 2020 at 03:51:57PM +0200, Arnd Bergmann wrote:
> Building this driver with "clang -O3" produces a link error
> after the compiler partially unrolls the loop and 256ms
> becomes a compile-time constant that triggers the check
> in udelay():
> 
> ld.lld: error: undefined symbol: __bad_udelay
> >>> referenced by applesmc.c
> >>>               hwmon/applesmc.o:(read_smc) in archive drivers/built-in.a
> 
> I can see no reason against using a sleeping function here,
> as no part of the driver runs in atomic context, so instead use
> usleep_range() with a wide range and use jiffies for the
> end condition.
> 
Me not either.

> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied.

Thanks,
Guenter

> ---
>  drivers/hwmon/applesmc.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/hwmon/applesmc.c b/drivers/hwmon/applesmc.c
> index ec93b8d673f5..316618409315 100644
> --- a/drivers/hwmon/applesmc.c
> +++ b/drivers/hwmon/applesmc.c
> @@ -156,14 +156,19 @@ static struct workqueue_struct *applesmc_led_wq;
>   */
>  static int wait_read(void)
>  {
> +	unsigned long end = jiffies + (APPLESMC_MAX_WAIT * HZ) / USEC_PER_SEC;
>  	u8 status;
>  	int us;
> +
>  	for (us = APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<= 1) {
> -		udelay(us);
> +		usleep_range(us, us * 16);
>  		status = inb(APPLESMC_CMD_PORT);
>  		/* read: wait for smc to settle */
>  		if (status & 0x01)
>  			return 0;
> +		/* timeout: give up */
> +		if (time_after(jiffies, end))
> +			break;
>  	}
>  
>  	pr_warn("wait_read() fail: 0x%02x\n", status);
> @@ -178,10 +183,11 @@ static int send_byte(u8 cmd, u16 port)
>  {
>  	u8 status;
>  	int us;
> +	unsigned long end = jiffies + (APPLESMC_MAX_WAIT * HZ) / USEC_PER_SEC;
>  
>  	outb(cmd, port);
>  	for (us = APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<= 1) {
> -		udelay(us);
> +		usleep_range(us, us * 16);
>  		status = inb(APPLESMC_CMD_PORT);
>  		/* write: wait for smc to settle */
>  		if (status & 0x02)
> @@ -190,7 +196,7 @@ static int send_byte(u8 cmd, u16 port)
>  		if (status & 0x04)
>  			return 0;
>  		/* timeout: give up */
> -		if (us << 1 == APPLESMC_MAX_WAIT)
> +		if (time_after(jiffies, end))
>  			break;
>  		/* busy: long wait and resend */
>  		udelay(APPLESMC_RETRY_WAIT);

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527162203.GA149714%40roeck-us.net.
