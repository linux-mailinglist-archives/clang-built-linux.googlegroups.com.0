Return-Path: <clang-built-linux+bncBDHPTCWTXEHRB7FI4CAQMGQEPEICTRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A47325880
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 22:19:56 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id m71sf730153lfa.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 13:19:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614287996; cv=pass;
        d=google.com; s=arc-20160816;
        b=dtMrwIJ5wCuEl+vOl+sIhgfj63cqewkE6l/Q/rTFGZOVYvCt4mNVYRUHYMgnYvSC1W
         4I/Wigcx92JaPKKLl8Rn3E6bwc9j71Dd6vOdzQtBI5ZgY3mcXOvT6/XUDa0HhiBA0Sgz
         Z6UnKRHPottjnWyNUMQ5EW8dvARud6UnwUx4qs72JKwNX9BQllNHwib4ZiUUtS5qIKKZ
         mqLptXgTtl3Sm+3CO5ZDmiU8MjpL86JONnBvyk8q2G6CkV4qDT9TMLttyohQJu6bosrM
         YhhZmPAlv3ZQkY1BEvVOZLZHTn5DUcO5BYEgPjV7xJaGJbLxWvlXiBBh7Cr0DNLWXPb9
         PEWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KlxkQCxCa3/+2pxvz7AkBWYl0MemwdDSznvPPTQK4b4=;
        b=vkEMDKbT2/fM/3KuPzYAFPS13y0oPyf0en/M6qHu2p39ZEz2JnpFORTs28362HB/au
         wpWj6fkGdw8tjTyvXOkWH6eau7biN5IRg7Cj2Sy3+KKN29xNRXkbOvQNquooyj4kzDgo
         Vt5TP7uGwpGyK03/1NNto2cXzFrhX4qj/0j9C+eXWtd+xhO4ShASppfwK/I667fpvaF2
         pP9apXEETpuZUhILFAuYwSh4c72mfjAz3C4OGTFealHlka+ej49xYjPMXEAddBpF+Vau
         EO+nvsPNPt9NZmIxEZRIsilZJ1GvKLsFJQblZ6hR46KQDh8i289fk2fjkn7orkxphuZH
         AQVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KlxkQCxCa3/+2pxvz7AkBWYl0MemwdDSznvPPTQK4b4=;
        b=IPxWcHgsDmRd8Z6dGitqmaRiwth7sEO5Y88z9bKIj1cn25V4xyBPk6v1FHVWjWS6oJ
         VeLFKCIMBYiIFpRgWxBrUUvMDIA8JLdhtA+OacXueBxlH2V8fGbKR6y3K2bbOtnguXWn
         gr37YElVZYki3ZuTF++3TR+muOzS1w6pF3OdkmkZXCzPIspG+Ro006gELnLBDh9JP2/I
         SMuldDKnuJaMP99xTCrzwtKNPkFazEQQ2pu7pHngHbjfQjGbtW+EIxw4aZgIipVS1ysY
         su9MtMC3PY1AjTIZR7FQ7/EWhaWFOEPIfpdGdEMEsKFmq4Q5cSCTyorwGUkyO0iDDvhN
         bF+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KlxkQCxCa3/+2pxvz7AkBWYl0MemwdDSznvPPTQK4b4=;
        b=JvzdR/+Qov+EJL+nJj8cmFAQdO9yYnKgk0whYIA9l/cBm/uiGLgIZzOrbo0xpsOpjd
         kLy8gC8QfSVFibVS/7QQgJ777G7lUaXond9Q6JZO2tYRB1wlGlgqXUiCHDg+hZPo2mIP
         lYpB51fPuiLaiRCeRWl+9QD2iGQrbvBjaN0Q2OAl95R6COOi/wUqOjcIv1p6zlScTvlu
         vYGswxtinNmToj/pAFIP2I8HhEwuIESVWEhJ6P6nafksUg4XuJE/7P3IIHtqoegkXEGw
         EsUzXSXPjVxjil5koHqYfFEsRPm9OhrlDKFaLrB5lL0wGMNE6R7tst93DAfMACTJJ8Wm
         WSsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MYkOdfBSM9SFlMuQi4Jfxt1dNumt0tlxahK3IOXJ4zU1RxBf0
	TMZQ26+Ne0H0bIKPxS00hio=
X-Google-Smtp-Source: ABdhPJy4FpSO2bbSgKk0VvYRVFrlU77d2q1JR5qn8WnEKzLIEYT1rslUqVMpLBg9x6tZfmXV4YqgIQ==
X-Received: by 2002:a05:6512:388f:: with SMTP id n15mr2960344lft.8.1614287996336;
        Thu, 25 Feb 2021 13:19:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ac46:: with SMTP id r6ls2222123lfc.2.gmail; Thu, 25 Feb
 2021 13:19:55 -0800 (PST)
X-Received: by 2002:a05:6512:504:: with SMTP id o4mr2810161lfb.438.1614287995326;
        Thu, 25 Feb 2021 13:19:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614287995; cv=none;
        d=google.com; s=arc-20160816;
        b=u40JxEDVcMDSNkfY5vT7gGjF/qQv1pK4CtxXrnNRpACm6fiqkeRX5QsD+P6Vy6NF6p
         CVDolSwwT4+RzF2lJ6EFGxALcV4GsZ6Omn3wjNpyuI30RINiE7DO4lRr4eeE8gK1vyz6
         3opK2K9vYEZtDMipG4e7oAM7mQvbFx4hC4Tfq3tIl+I5mpOaCHxQRKc1WGMBoWZ05N7I
         l2k1yrsZAaeufBKMurBKM2XNn9Oqx7OOPp54dyTu+y/HVKha4jbRrTAa2JR57B4qvlmW
         UmSZHsqosk9L49ula4X9H6t8SjvSeeuGDYLDMwx5q/Le680O9COE6QduxMpp1/gPGxHe
         OmSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=2wz9+kbN/mQrDLqyyNCHQEGIZsX5qRgfk6bbP88XaiA=;
        b=V2pkdANFvxQ4uKOfDms+idZIT2v5pwbJtqMh2tOLcqh7q0b5NX7EATrtmPU1f4Vr3w
         nfbqB8ZXCnC7IiQ0v46tCvq8aR29rXZ9jqTXf50nQlkC6MrDop5lw3Gdn1XAq6O59wg5
         c2VY4NfzM5HwBGcW3FYOSKnEAVXTLhmd5hmgDjsrSdm6wfeIjkmhxpJkj1rJrsxrYUop
         Fz+594r32AdJtjfLKh1GZnRMzNW0uXDyG2chbPQ/ZbygUC26ulG5cEt3CLhHADApcgnV
         W68hwr8R6CeZTGsmf9itdsDumo5LHSdGWA6eQBN1ZPSPCy7IG+mi/d/cLal0m86I9q8o
         m0fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
Received: from gloria.sntech.de (gloria.sntech.de. [185.11.138.130])
        by gmr-mx.google.com with ESMTPS id v3si344296lfd.4.2021.02.25.13.19.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 13:19:55 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) client-ip=185.11.138.130;
Received: from [95.90.166.74] (helo=diego.localnet)
	by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <heiko@sntech.de>)
	id 1lFO2n-00059G-1g; Thu, 25 Feb 2021 22:19:33 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Mark Brown <broonie@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Emil Renner Berthing <kernel@esmil.dk>, Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Jon Lin <jon.lin@rock-chips.com>, Chris Ruehl <chris.ruehl@gtsys.com.hk>, Alexander Kochetkov <al.kochet@gmail.com>, Johan Jonker <jbx6244@gmail.com>, Vincent Pelletier <plr.vincent@gmail.com>, linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] spi: rockchip: avoid objtool warning
Date: Thu, 25 Feb 2021 22:19:32 +0100
Message-ID: <5587539.MhkbZ0Pkbq@diego>
In-Reply-To: <20210225125541.1808719-1-arnd@kernel.org>
References: <20210225125541.1808719-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: heiko@sntech.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of heiko@sntech.de designates
 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
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

Am Donnerstag, 25. Februar 2021, 13:55:34 CET schrieb Arnd Bergmann:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Building this file with clang leads to a an unreachable code path
> causing a warning from objtool:
> 
> drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame
> 
> Use BUG() instead of unreachable() to avoid the undefined behavior
> if it does happen.
> 
> Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/spi/spi-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> index 936ef54e0903..972beac1169a 100644
> --- a/drivers/spi/spi-rockchip.c
> +++ b/drivers/spi/spi-rockchip.c
> @@ -521,7 +521,7 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
>  		 * ctlr->bits_per_word_mask, so this shouldn't
>  		 * happen
>  		 */
> -		unreachable();
> +		BUG();
>  	}
>  
>  	if (use_dma) {
> 




-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5587539.MhkbZ0Pkbq%40diego.
