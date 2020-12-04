Return-Path: <clang-built-linux+bncBDJ4FI4LWYDRBHNVU37AKGQEJUGO2OQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E462CE58A
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 03:10:38 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id i184sf5052099ybg.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 18:10:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607047837; cv=pass;
        d=google.com; s=arc-20160816;
        b=nwU3KMIx86mD0tQFWaUAy9csMBc+t+Jc31UqgfujCr6zvSU+mOLocGhaoP2tP45Ifl
         V1kd6DCE80/2YNtFQWtIGdExgXAbzwN4bSYbohHB+exCcRGLcXaFl/8H2+K+jd8WLYE7
         cgWYR1wRW9uo+/sjvcFaZND0Bxjce/iWb1pdLNXftu/qjwk/TXVWcIJ5/q46VAZj4lMD
         ejXUdU3T9mw6++AhTWQDMpQFLciEVIsN10kHW/mDQEVW65RCnL4d7jkNRodmr84PMhTR
         cTvAHOedteeRFmAcZ/uLBRjpoN1bBocB66JCcARhgpIm8wo7bEe4eqBZz71mYr6vth59
         +tnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=zSgG9klTF/5GWbWwXzxqn5t1IbR/6mYMUtXZqHxKMy4=;
        b=kUxog+xwzjdCanZPxWRt12pttvCF/yJXBAUXzVoJqd99ytS7xicNiNvvGPDhcxPi8t
         dimTtZXyyGf7Fg5FIdkxHvFUKIGrVrhLdShhU/Ue1Gk1Du5yNVDwqrK5ix16rumJSj+p
         umZ+mGbwuP27pEUO/+hGqYA9ET1w8mDTksMoDGYibt3JqG2eP+JdlLZbmS41UcyjY4Gg
         FVKEuCErqBBG4KtoamR5YMkXjVm9n6KFIm2wuR8gfTVtwGepb2h/EKd2Yn579U7Elb6Z
         4wYT45IR1tvFaEQ37SSBvl6Qfg9gsTlIYdPPvnAxEMWZqcGROtsmpxVYn5bylRA0Zeto
         /Szg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=OoKsbKyW;
       spf=pass (google.com: domain of dongchun.zhu@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=dongchun.zhu@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zSgG9klTF/5GWbWwXzxqn5t1IbR/6mYMUtXZqHxKMy4=;
        b=Q7u2qx0L92D3vgw9zStu2KQy5VZZFmb8pWfwO/rGIGWDu9WaO7Ajp92kEDQNH3DHy+
         UXUQBbCrTpNLxD2q8j5a1euxn7KO+EF9OcobHoPszbs3xaQXs/5hOYlK2glE76QWuf5x
         sdjQrCAj09zQ6aERrgURPDI/9/GZ4oDu8ZqASjCQpLudLBAAjmw1Uc0JjDCoLWaNO1aa
         zwg/UWgExCF16vdjE8SeNqi7yacFqy4GfuFNdv5TkVILviKdMOLysfBo7lW1AeVjsLM+
         aHnHxBrsvrmSojBjzTUP54xg2Ugc6z7zHmmpHMGwfi1iO+n2HMgCOWwycOC+vadwe5Mq
         j0+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zSgG9klTF/5GWbWwXzxqn5t1IbR/6mYMUtXZqHxKMy4=;
        b=SLlxEoYi9DhK8c4fR/m7xAdyDIDxJCbkkifXmJrdqoIdSeEYneCYBJstGCfyxMG77+
         a9Wkt+JDWKd+RzsHWaAK818BuLPkr74FFsYORynIM7NnGjeV9A9XcCtQKeJ8WuOQj76p
         j+MuhuKKunUCiCyBfpBwb0jFNRsyb0+OJcakXsOJ3VNnUvnu0zbBL/RGCexgE7sde/69
         bM+msCKCHcT12g3iGMNUJwY34rR81wT1hsFA6BkaFw0WOlJQ/RB9JRMT9dlfJtv2mbT9
         mqqZYfKRAMLRIIvjzrWMwTig7+UWYGnovAsf3fU4o/CYb81klexKblDIYh2f41tawTpd
         Wy4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fhv7OleiugSgWfabU+3tbHje8DqieZ2WD8f2xLFSfdqfFXL5X
	UpxGRuKcXcYPYc7n41l75UY=
X-Google-Smtp-Source: ABdhPJzek+48BXc9GcxjOHnJb4rl3K+ldoqp57naLsXYYVSF2+0hqUXuFPID4kECxjOzgTt9tPSEqw==
X-Received: by 2002:a25:d049:: with SMTP id h70mr2771416ybg.190.1607047837490;
        Thu, 03 Dec 2020 18:10:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2d56:: with SMTP id s22ls3726094ybe.0.gmail; Thu, 03 Dec
 2020 18:10:37 -0800 (PST)
X-Received: by 2002:a25:59c3:: with SMTP id n186mr2787306ybb.411.1607047837010;
        Thu, 03 Dec 2020 18:10:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607047837; cv=none;
        d=google.com; s=arc-20160816;
        b=Xo6qaKlgteYO1rFammlQwgrXc+1gyBj8ER4hh8jymAPlCTSRIYkvkPZXm8CoXv0DIR
         m0K1JIrL2Qetot23fblhJNfVwfsgy9hTGaxMeJziY2yv2zRjI+7/yobpv0Ky5TvNnkbm
         AWVWZtX+fb8BnDMv2/hfMd0r/QLKR7YXAhDn+QddlaOevp9H0oh0SmWtEwHlbw8/9/SU
         dKxzJl5aV7hrOKuQuDs8J5LV4401I1upJ0lPxgRy1pa3D0Aqh6K6A7B5wogs76AeMz/G
         S928Y5p6XuxHm84jyXlS0NmZDlHH6ZSVzykOcmVCJjy1BCCt/lVlI+IUoTi63AvSa0ad
         xy3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=3fEAzKsdz//maaMh1QCscTkvSeFpqqfoqta+RxuF5gc=;
        b=kAArhsttkffEUPd9olLwFEE2hgnhHwLK+/CjzrLZHp4OKTd5otbw0Gc87uZkxmwRt9
         Thaar94fRfKvCAyBY1i+h5ypBNn1W8dpqte7alfanHuHgNIM+IuU6cq8Kf/2uRh16D35
         wyQjuSw14QQCxgzoIbgs3aw6dSvXG7/2gImipNRyE0CM+gRbSPNx45Qk7fon3TkyxWBQ
         jW4PF4OxP1HclN9H9b0SawTKPshYHMtcyABfLrtO7+k7rwL5HE23d9EPwGUnDj3ysLaO
         PeoivwjKyk6W7agdGcN4uCLQMJdWjQALuAYqZ6nL9+mB3anJD4e6zE2U83e59qlNsAhU
         Dkug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mediatek.com header.s=dk header.b=OoKsbKyW;
       spf=pass (google.com: domain of dongchun.zhu@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=dongchun.zhu@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTP id e4si146882ybp.4.2020.12.03.18.10.36
        for <clang-built-linux@googlegroups.com>;
        Thu, 03 Dec 2020 18:10:36 -0800 (PST)
Received-SPF: pass (google.com: domain of dongchun.zhu@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: e49db857a0f243ac81c8110829029f86-20201204
X-UUID: e49db857a0f243ac81c8110829029f86-20201204
Received: from mtkcas11.mediatek.inc [(172.21.101.40)] by mailgw02.mediatek.com
	(envelope-from <dongchun.zhu@mediatek.com>)
	(Cellopoint E-mail Firewall v4.1.14 Build 0819 with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1648836214; Fri, 04 Dec 2020 10:10:30 +0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs05n1.mediatek.inc
 (172.21.101.15) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 4 Dec
 2020 10:10:28 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 4 Dec 2020 10:10:27 +0800
Message-ID: <1607047828.4733.172.camel@mhfsdcap03>
Subject: Re: [PATCH] media: i2c: fix an uninitialized error code
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Arnd Bergmann <arnd@kernel.org>
CC: Mauro Carvalho Chehab <mchehab@kernel.org>, Nathan Chancellor
	<natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Andy
 Shevchenko <andriy.shevchenko@linux.intel.com>, Sakari Ailus
	<sakari.ailus@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
	<linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>, <tfiga@google.com>,
	<sj.huang@mediatek.com>
Date: Fri, 4 Dec 2020 10:10:28 +0800
In-Reply-To: <20201203222956.1091606-1-arnd@kernel.org>
References: <20201203222956.1091606-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2
MIME-Version: 1.0
X-MTK: N
X-Original-Sender: dongchun.zhu@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=OoKsbKyW;       spf=pass
 (google.com: domain of dongchun.zhu@mediatek.com designates 210.61.82.184 as
 permitted sender) smtp.mailfrom=dongchun.zhu@mediatek.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

Hi Arnd,

Thanks for the patch.

On Thu, 2020-12-03 at 23:29 +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Clang points out that the error handling in ov02a10_s_stream() is
> broken, and just returns a random error code:
> 
> drivers/media/i2c/ov02a10.c:537:6: warning: variable 'ret' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>         if (ov02a10->streaming == on)
>             ^~~~~~~~~~~~~~~~~~~~~~~~
> drivers/media/i2c/ov02a10.c:568:9: note: uninitialized use occurs here
>         return ret;
>                ^~~
> drivers/media/i2c/ov02a10.c:537:2: note: remove the 'if' if its condition is always false
>         if (ov02a10->streaming == on)
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/media/i2c/ov02a10.c:533:9: note: initialize the variable 'ret' to silence this warning
>         int ret;
> 
> I assume that -EBUSY is the intended error code, so use that.
> 
> Fixes: 91807efbe8ec ("media: i2c: add OV02A10 image sensor driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/media/i2c/ov02a10.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/i2c/ov02a10.c b/drivers/media/i2c/ov02a10.c
> index 391718136ade..7ee9c904d9b5 100644
> --- a/drivers/media/i2c/ov02a10.c
> +++ b/drivers/media/i2c/ov02a10.c
> @@ -534,8 +534,10 @@ static int ov02a10_s_stream(struct v4l2_subdev *sd, int on)
>  
>  	mutex_lock(&ov02a10->mutex);
>  
> -	if (ov02a10->streaming == on)
> +	if (ov02a10->streaming == on) {
> +		ret = -EBUSY;
>  		goto unlock_and_return;
> +	}
>  
>  	if (on) {
>  		ret = pm_runtime_get_sync(&client->dev);

Only if sensor fails to stream on, ret can return a negative error code.
Thus ret above needs to be initialized to '0'.
Also you could fix the clang error like this.

static int ov02a10_s_stream(struct v4l2_subdev *sd, int on)
{
	struct ov02a10 *ov02a10 = to_ov02a10(sd);
	...
	int ret = 0;

	...
	if (ov02a10->streaming == on)
		goto unlock_and_return;

	...
}

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1607047828.4733.172.camel%40mhfsdcap03.
