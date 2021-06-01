Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTMS3KCQMGQEEPR533Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C82397AAB
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 21:23:58 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id b7-20020a1709026507b0290103ee45ae76sf3016123plk.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 12:23:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622575437; cv=pass;
        d=google.com; s=arc-20160816;
        b=QCH1m9NrOosWb/7Rx1sYtie8zTqzM3hfrOTUfMD+ZeOVbGjhPVAp8cVfLXSupJ5Ljt
         p3Fziq1yEx0KOJpfkB4hPBw5U9Gsqxo2jEiWh/7her9FasVsfuMg0tBmTY0ooj/ruDsK
         ejLTAvJ3hJVUHu4jJ3G/aBKCkjpyfTMZYwcbxyiTs7OQ/NraYgHboX0uVj4olz8KUwy2
         jsDkcGUtgQGTGy0RxUGkagmrfdTDm51wrLniXdTlIOKaPYkGOkBygVquSmMHNuSwR60z
         h+T7Z7+JtiC+Of9g6jm3CdW6ZKoDDVslEAlkrYE8bA1mwxjg+UIRXsTTIJyys1rHmx56
         HLAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=UJbd6wVzoWFqBNOiDuZYSn8Um6Zg5jB2A4o6ke8ufMM=;
        b=CCwy0J2qaIxhZKSnDmi1D/QYFgbDdLo3Xe4smuup8gaOP+Bt+BXdW4co7btIdjMv9V
         2b0d/f2OEWr8Bn3an0JpjitceGeOHuQvYua60mE0nLMMIFI+gUAbTAIyhPuTGXSAq/yN
         Mtpiv31zPG4KkLZx+os6WoKyTFCvC5nV055zlOJeFJPD/OCE/6kjqxP/gTlZK7ZKV/y5
         I/0XIEnXAEkDtknNe/LGDKVye29Bt+zTm8AfHv1gvLYUX+OhMkaktcyqfH4slvsdwe2H
         3z6O0tY5UdBSyUqjZWOOczMhPgKAGVVJQSAp63TQjw/k2caZzTrRgucg2uhNWHaSHEQg
         KPDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gJ4aqxYF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UJbd6wVzoWFqBNOiDuZYSn8Um6Zg5jB2A4o6ke8ufMM=;
        b=T+UyrfshHPIPo836UOytQCpjRLJn6LRnU4UfMZYTDYV2DFWZkLjeQD0CR5h31dvyok
         u8p/33n3pzMWzDV2EWA8TzEj8LUlMyVQLTOSIQYjGdafK0g43Fs6X9Jw2ozucT/lm2EF
         pyj9Dw1JpXTqWxUUUD9p/BvSxPOZv1MB/+rq+yMwyv6uhy8mef+KUgVWymu/+iFEBm5t
         xE+Bjc4JZfwIl1QbhxH5p4ZhcLVVgcj5APq/XjGWHXjkj/QQhoR1Rt5EVtulNB/wJ4Tw
         W1q8CelCEhiCyml2+8/XWRcQaoCHj0C7MY5Mt56H7dCmxASoa6UI8bkPvSIIKa+l5Hpa
         TmWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UJbd6wVzoWFqBNOiDuZYSn8Um6Zg5jB2A4o6ke8ufMM=;
        b=ZbEbVDEQj93luDVAcux5mPcjcl6Nm2hPaQRLQIEymlnDn1R6Y5ZAXl1qG5UxPIO8XH
         c9FjGOsYDebpTMNz8LsW5NoKtYZL7hXl1M4VQl6x1vm/DUUNJ/kpmbeXNFB2yAomFIR9
         3Lc2zJJ3K9bPNON8mOX+q3LusbhjWKi5VFvBoVDX93hJjAVklww0XjdnrqzNUMFC5aVQ
         FPfyha+KFwN9VdeNRhbSvvHuvsMkC5a0vQIZrLuK12zdbE3ZLIYHmkDPmOt4Ck7tcC8J
         AjFRBnr2rWhHpEdNmNXVvw09BUA67V8OVWBv4QlrsSgCRazfhn9esFx/9WZFdEgZympK
         5+5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332RD1j4ukBg+oiJsqKUefN4kBnkjZM+YoPHXuq6ZoiQ+SVIDYX
	VzvwZI65E8y2CL8KAkI2lQ4=
X-Google-Smtp-Source: ABdhPJzYiB/55bGNMnuBExem91RA8rwSkOfqxkB1HwPW4k3RxqMmu7+FZjQ30VE+6vkUaXgR+paBkA==
X-Received: by 2002:a17:90b:b0e:: with SMTP id bf14mr8633099pjb.147.1622575437555;
        Tue, 01 Jun 2021 12:23:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7042:: with SMTP id a2ls9140603pgn.10.gmail; Tue, 01 Jun
 2021 12:23:57 -0700 (PDT)
X-Received: by 2002:a05:6a00:23d0:b029:2de:c1a2:f1e with SMTP id g16-20020a056a0023d0b02902dec1a20f1emr23626096pfc.60.1622575436969;
        Tue, 01 Jun 2021 12:23:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622575436; cv=none;
        d=google.com; s=arc-20160816;
        b=eD2YhwmOM+U0PAybr0vRsARcNkaZTF9yDT82WqtJ7xGwS6sBEUvpMzVg9Ofz4JeutY
         4b0ZeCS6nSD2wGkaUivqkekRBkhOrU8WwcPc+dkJK4LOmxGWLYNIChupq4z7oDcu3G9r
         6pr62y0/QguCv1o8RJylmK7idD8IVQJUTwHQO78MyMO7Li2/d3/Z1UxkIZKD5vqqrVS1
         OxY5lb8ie5vFzoINavVhpEbkCfpzAv0xBF0cCYHRBFEIwzG7jR9FkS+YvPHz965bOSWn
         iwh2yDJ1OGjudYgxe/39zua1AtHQqAy1kLoYHZJi8/apPq4KIoQwWHobCSsNu70EiZLh
         OTmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=JfrhPOwSDntex9+tIEKkSZQR7n7LzcuBsVjjrtoW2wE=;
        b=gTh8JMNmunBpXmrfqamFo2zv2Un2R25QX2XVZyOtETSKAhSGg8pHfLTYL1Aeawu3An
         qKz559U83xf9jztTbM8Fihg7aMUhvdvkYTUTHeuY/aQPQwc8rdYIHhFrIAxPY7mps10j
         HcYlFTW0vXYf3e1GmkbOHbzj6zkFdVV6IBCF9i4l5V0KHd1qOBHAEfTce2BnO9x7FiZx
         5ZoT2QBzwWjgKUVVXcEnehrSrNNUcwpHw9b64eV/1Ll/Vlh/+bZAczPa3xZMkY0VF/+o
         eqX0rHvxp5MQVcPyL4IA44TRW6R9KoDrh2yIzvc63kipwLjkhyQXlmyOO4zmkbO2uBzX
         ZEmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gJ4aqxYF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id o20si1300215pgv.1.2021.06.01.12.23.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 12:23:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id e1so3162143pld.13
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 12:23:56 -0700 (PDT)
X-Received: by 2002:a17:90a:1a43:: with SMTP id 3mr1444762pjl.154.1622575436653;
        Tue, 01 Jun 2021 12:23:56 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n2sm14012078pjo.1.2021.06.01.12.23.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 12:23:56 -0700 (PDT)
Date: Tue, 1 Jun 2021 12:23:55 -0700
From: Kees Cook <keescook@chromium.org>
To: Luo Meng <luomeng12@huawei.com>
Cc: daniel.lezcano@linaro.org, tglx@linutronix.de, nathan@kernel.org,
	ndesaulniers@google.com, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] clocksource/drivers/pistachio: remove unused variable
Message-ID: <202106011223.AE45E4FD3@keescook>
References: <20210529033335.1962230-1-luomeng12@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210529033335.1962230-1-luomeng12@huawei.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gJ4aqxYF;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Sat, May 29, 2021 at 11:33:35AM +0800, Luo Meng wrote:
> Fix the following clang warning:
> drivers/clocksource/timer-pistachio.c:74:15:
> warning: variable =E2=80=98overflow=E2=80=99 set but not used [-Wunused-b=
ut-set-variable]
>=20
> Signed-off-by: Luo Meng <luomeng12@huawei.com>

Is removing this correct? Should something report or record the
overflow?

> ---
>  drivers/clocksource/timer-pistachio.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/clocksource/timer-pistachio.c b/drivers/clocksource/=
timer-pistachio.c
> index 6f37181a8c63..42b4cacd2fd5 100644
> --- a/drivers/clocksource/timer-pistachio.c
> +++ b/drivers/clocksource/timer-pistachio.c
> @@ -71,7 +71,7 @@ static u64 notrace
>  pistachio_clocksource_read_cycles(struct clocksource *cs)
>  {
>  	struct pistachio_clocksource *pcs =3D to_pistachio_clocksource(cs);
> -	u32 counter, overflow;
> +	u32 counter;
>  	unsigned long flags;
> =20
>  	/*
> @@ -80,7 +80,7 @@ pistachio_clocksource_read_cycles(struct clocksource *c=
s)
>  	 */
> =20
>  	raw_spin_lock_irqsave(&pcs->lock, flags);
> -	overflow =3D gpt_readl(pcs->base, TIMER_CURRENT_OVERFLOW_VALUE, 0);
> +	gpt_readl(pcs->base, TIMER_CURRENT_OVERFLOW_VALUE, 0);
>  	counter =3D gpt_readl(pcs->base, TIMER_CURRENT_VALUE, 0);
>  	raw_spin_unlock_irqrestore(&pcs->lock, flags);
> =20
> --=20
> 2.25.4
>=20
> --=20
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/20210529033335.1962230-1-luomeng12%40huawei.com.

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202106011223.AE45E4FD3%40keescook.
