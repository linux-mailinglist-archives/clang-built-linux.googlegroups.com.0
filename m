Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA6JZD2QKGQEXPG7XSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E3F1C65F0
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 04:44:21 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id q57sf1126739qte.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 19:44:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588733059; cv=pass;
        d=google.com; s=arc-20160816;
        b=u6ZdB6DaAYOsh1FJJKn7P/x66mHX+DKmfamnbejcD5vJ+iz0veXzZGYT8dba1xG52q
         I0W6h9lg4te8yIb4ScDDBZDv2pNhdzNTnL+TCgD+cQpPO1l9iJVPMdWw1DbBcm92jS9T
         Rhdsqrfe7NpgfHBLryB9LyIihIwnTbQY6FaV1wUbgzSoR8exvZIGw/mR9fccWj3YUxZk
         z2f7f8UzFtNHKDNC0QhWh//kM3ilkTEZKO28h/dLt69wjl3mTKQRSXori4I21mxmOqA/
         fQtMOSZO0A4tlQnLuZLtvpUZZRu8aiyym4VIFRZ/hGzV2wNOOWIzokscTtLDfD6jIhpG
         FV1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=d9hhu3p6OkYmWA68A8XZUz6nrji2144FARA/K87luE8=;
        b=sKpWp4pishm1EgxW8lihHBkoL3pZwFBQSgNv2pdkafqSW8fV5XpvuYVG5m08zTIm+C
         yVK1wM02IABpda7wXxIAYweHYHC2GvrxGxWo9GsYN+xPh4M//XSpd4Cw5Z+59MIoUwwl
         rsNwBOb3GfzzzRgLQLJJpK7xI3xFGXrIYKhEGIEeSuEcVVtCXOhPFLN7YuDopaMtALll
         NsBvBN7WgDGneg+zxNYtGAlspGvCl7l1sMLNekJu2CgGoFGTSSc9Ls7z4UwDCJOdeP8k
         Hy1Tl8I2Oc2fs5jdLhE57Xm7ZpEOFYBlp/KcmI05IjKE3XZ5qtsXWESNBvrUK7HOjSIq
         6zdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GMBFz7sP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d9hhu3p6OkYmWA68A8XZUz6nrji2144FARA/K87luE8=;
        b=bLcgj/fXD9dSaGIfm4cCxFgcr5TzupmB7Vpr2nrn8Rmbxlg4YHmDSLxs2ura/josxR
         UMNV0FR2fve+9gtsLHk93hwPsbVzLRWdiOslonmsTE56xWBJvRNWWrrSMibu5/2xmYMo
         gE2ZDZuQvLC0bK2ChM1gdX7sAfdUoagY1Zk8cjU18ATG3mZMjysEQEebAKyLoBUFUjno
         gsUo0S7W60sHmRtunofHNbRaiN5o5lxrkGPXC6qgZ9mJC18yVzagOc9Z9JVco/xz6I31
         bVi1I7UCvPFn/cg+IUIs4H7GqYU9E81PiOQxuDeaMWMxzOA1vWzK8x5HaFT8qjZ0VFdJ
         h5sQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d9hhu3p6OkYmWA68A8XZUz6nrji2144FARA/K87luE8=;
        b=KqReZmCnpYuZU+CRZozzQKO9YN1YzOMM4cNFJvFl6vDjC4kynjsOiLHb0XkEJCOdXK
         8RezfYsGjlh/nPSdoxZmkCwwXg4Mpe++JEM28PJda11OUj+UyyfsPCtwX94EiIUzcq0r
         cogJ0AqCye3/6DGG1YO2XEab488rqwJCWP/Dc05dFHZvchnHhRxCytqgNVwZ8eTO+s48
         BFPq5Pk05bAGQeLsFarjtpuqPPn7/6gE/GZ2COWZWPsD//XDEMajyoFEURW6mMJgM18R
         kpMRYbG2Cd7aLit2OL8NvHlZENisvl4TvjFHehvTxiktjmjTNNUHSNEU/0v5Cyqd7VrT
         tcGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d9hhu3p6OkYmWA68A8XZUz6nrji2144FARA/K87luE8=;
        b=Edee0DTMXxkDcvSQdNk3d27q6s37IORlot7AwwPzlositCw8qN/Lv7kgfBC2+ZDk0i
         ogeKSha5CNtp2DW4ynVdRZDMjyDiZsfdl7OXWPjVZNcRVfE+Eve7azzpfVqn38oBDghe
         EL8D4DVzzW63Q1e8j9tAn5wjl9kK8/dBBr6Qj35yu1TDcYgbLPWHjtTQ0UX89DBDkAlD
         bKTgbWHy2SzzR/onT/5qhgoamEBAqOAsCf534aSB4p9NflzxI5v2GgjanV0YXyqacZkR
         Wr6v2extOqY2zi2dVFqO0S9GOjCPIDIfTlvAMsytZqP4vPv3AR3+R8J5VTgNxe4xJ4Wq
         1xSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYsm4TC1tebhOo6xPNkA9yjyXQGK6xQTxp85mHcu2icD/yJApKX
	CYlm0VP2QrW4yMQrd2pmnDY=
X-Google-Smtp-Source: APiQypKU11zCe2fOVzZYUM5/TlinLlp1sjbgvgxlKgs/STtAyJCN47L+tEFn3YmDa412WZpGqV86fQ==
X-Received: by 2002:a37:38e:: with SMTP id 136mr6672029qkd.247.1588733059696;
        Tue, 05 May 2020 19:44:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:610d:: with SMTP id v13ls843219qkb.0.gmail; Tue, 05 May
 2020 19:44:19 -0700 (PDT)
X-Received: by 2002:a37:d0a:: with SMTP id 10mr6589605qkn.288.1588733059119;
        Tue, 05 May 2020 19:44:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588733059; cv=none;
        d=google.com; s=arc-20160816;
        b=fQEaTVwqeQJhE6rJq0/JDLe5RkLGNbpzJWfcmJYt+d6TWl18SmnQSBTI6RhQ//a3TL
         idsdJdActxTfcL/1aIy0UDjAbh0Tuy/amB3yPo4SsZLMLDK5YmRbZXO8UXoFp9W4L4ig
         z17EK7Q1ZfrtFUpIKZm6Wd4BzZ4fUrJMgGBsEZqIiPC7tXLJB0RU3Hwl6M9SOMPN92fl
         l3P87f/Wpw1lIy6cIf9q9gMbM8hk3gNghVUiiLS1DCA8T9y2D7wDFVNXH5pMlHIxfT7o
         Vmk6AnfP5dTo0PW3ImChtx7Ba0l/hIT13pMXKerQuBcKghcvZYGbi5Dm5vHXzrBGiSeH
         HWVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lToKiYqDzeyepcFYxdBUJOiTycbEPx+SdzPCH8xZYpU=;
        b=SZk5JheGPo2gKk8n8V03MsH1rd50nPwkoFLcCLOLoJ0bhGtvQMArWiljTvfm3QyNSK
         jaQadnELotBFSbDsFetIGDwceCTgBoq8IYOzEePVBi/0/eemLiV/1xWu1BtnLKLuNWnL
         /N17xV6+WmNhvaKLFgxq2MZ7UKP43ucT0zgvOyAaemq6zVmyLJsSXUr962R+ANYa0qs4
         6/vq98Bk+8U5N8XsjFM/jefJZyH5uXN/9KQgQol78nGKEv9FVGaj4EErAdzzvfVPJ1jP
         teiRaJ6dS4LsUW5fGa4ULRgyjA1dICHc7xCnWcBN/Q9rTfPDu35p7FCzIb3bEfGI0iB5
         Uhzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GMBFz7sP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id j11si49110qkl.6.2020.05.05.19.44.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 19:44:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id i27so203126ota.7
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 19:44:19 -0700 (PDT)
X-Received: by 2002:a05:6830:da:: with SMTP id x26mr4862496oto.259.1588733058513;
        Tue, 05 May 2020 19:44:18 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id a27sm135255oos.37.2020.05.05.19.44.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 19:44:18 -0700 (PDT)
Date: Tue, 5 May 2020 19:44:16 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	Pavel Machek <pavel@ucw.cz>, Bryan Wu <bryan.wu@canonical.com>,
	"G.Shark Jeong" <gshark.jeong@gmail.com>,
	Dan Murphy <dmurphy@ti.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-leds@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] leds: lm355x: avoid enum conversion warning
Message-ID: <20200506024416.GB415100@ubuntu-s3-xlarge-x86>
References: <20200505141928.923428-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200505141928.923428-1-arnd@arndb.de>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GMBFz7sP;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, May 05, 2020 at 04:19:17PM +0200, Arnd Bergmann wrote:
> clang points out that doing arithmetic between diffent enums is usually
                                                 ^ different
> a mistake:
> 
> drivers/leds/leds-lm355x.c:167:28: warning: bitwise operation between different enumeration types ('enum lm355x_tx2' and 'enum lm355x_ntc') [-Wenum-enum-conversion]
>                 reg_val = pdata->pin_tx2 | pdata->ntc_pin;
>                           ~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~
> drivers/leds/leds-lm355x.c:178:28: warning: bitwise operation between different enumeration types ('enum lm355x_tx2' and 'enum lm355x_ntc') [-Wenum-enum-conversion]
>                 reg_val = pdata->pin_tx2 | pdata->ntc_pin | pdata->pass_mode;
>                           ~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~
> 
> In this driver, it is intentional, so add a cast to hide the false-positive

Not sure that I would call this a false positive. The warning is correct
that there is a bitwise operation between different enumeration types
but we do not care since we are just using the enumerated type for its
integer value in lieu of a #define VAR value.

> warning. It appears to be the only instance of this warning at the moment.
> 
> Fixes: b98d13c72592 ("leds: Add new LED driver for lm355x chips")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/leds/leds-lm355x.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/leds/leds-lm355x.c b/drivers/leds/leds-lm355x.c
> index 11ce05249751..b2eb2e1e9c04 100644
> --- a/drivers/leds/leds-lm355x.c
> +++ b/drivers/leds/leds-lm355x.c
> @@ -164,18 +164,19 @@ static int lm355x_chip_init(struct lm355x_chip_data *chip)
>  	/* input and output pins configuration */
>  	switch (chip->type) {
>  	case CHIP_LM3554:
> -		reg_val = pdata->pin_tx2 | pdata->ntc_pin;
> +		reg_val = (u32)pdata->pin_tx2 | (u32)pdata->ntc_pin;
>  		ret = regmap_update_bits(chip->regmap, 0xE0, 0x28, reg_val);
>  		if (ret < 0)
>  			goto out;
> -		reg_val = pdata->pass_mode;
> +		reg_val = (u32)pdata->pass_mode;

Is this cast needed? I don't think there should be warning from going
from an enumerated type to unsigned int.

>  		ret = regmap_update_bits(chip->regmap, 0xA0, 0x04, reg_val);
>  		if (ret < 0)
>  			goto out;
>  		break;
>  
>  	case CHIP_LM3556:
> -		reg_val = pdata->pin_tx2 | pdata->ntc_pin | pdata->pass_mode;
> +		reg_val = (u32)pdata->pin_tx2 | (u32)pdata->ntc_pin |
> +		          (u32)pdata->pass_mode;
>  		ret = regmap_update_bits(chip->regmap, 0x0A, 0xC4, reg_val);
>  		if (ret < 0)
>  			goto out;
> -- 
> 2.26.0
> 

With those comments addressed, feel free to add:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506024416.GB415100%40ubuntu-s3-xlarge-x86.
