Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBTOZXL6QKGQE2POXIYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FF12B1F52
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 16:57:02 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id z9sf2519335ljh.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 07:57:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605283022; cv=pass;
        d=google.com; s=arc-20160816;
        b=SQmhxDpIg8E4ma36xAr3ob75mxfud7pI98eAgLWDmkm8J8phO7cHd+eU2V/KpTqXej
         hZHpHUtWb+Gyq7gGlokDzKLZr4PSiDUeZbtBvGoQlKHmjFFMZzdZ8par9YcMFeUiWCNI
         0xQbRjld8y6fpV1bqOH0v/hNrZ5MieYwYYQXduErHsbt6uGywC0bclMQ16TAyL54iDwA
         G0vi6vjsfuByBDyfJrFntgh/oFAXSREbPxwPV0dOnT0m03uWhwkDCoIEI0aHDuI6OcZS
         avg7mgY/pRKbXM/qEABcTajG0cC0VvVP5sXZIAhxekiFE+F1PnQyXsBenxHcZPJ2tNYX
         /P5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=5tOuXAPMY0jr5CAqR2ruMLcAOqwbcgVnF6Bhg7bn5/E=;
        b=Qy5guCttseEleujafWJkidlCLPyqMCsHjR68L1oYPdK1guE2xD/N2Q3UiqWkKcZSTh
         kWbg2CTOW8hXj4d8FMH6stFjrqZrdMmIk3Mcud81fr51/QLk5xgGnGSn2HyXE4V+53SP
         rbm0HdEXrPl5TsOyQ5f2VU+KmAcR79PJMQvntnTqSBZILP+gI1GeihKG2pdviiXzMken
         kQPKgG3l5Hmm78usL24Lo6ED7RbfmJBsqo1IiU47T3A9BvYaB1SzbSONlMbpjCEgAw8Q
         qaC+2oX8RkgBHgsgdURY2vkO07hbN1hvajm8D1o9R5K8LrDyHoIWkzWxNhq3nWt4bYCw
         gmIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=XObrq8K4;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5tOuXAPMY0jr5CAqR2ruMLcAOqwbcgVnF6Bhg7bn5/E=;
        b=FKNntgaWWHb6GosJVP7uLVpQZjUtH9z029EpPPxefY34JxpfwVJOPgmncYwNrd7HYY
         XxBVV3I6FpSC+A9E7qjdyJisVPCFQyDjwUbrrwmcuc2tTRYSjoLc/LG3PKnO04fmdOz3
         71VJydU3CaXrGDIAKC7WOe1Tz2R4u+K4ay7Te8oElL4vfuC7YX0Vi59YhxPmgP8BY+3X
         Mw+57daFyyP6UNyO7jraAnIzXaOGjPbWl2wOgOQTyCxn+9A2bHB3/L5tP5gDi27kZ5fX
         SvD0ZXC4+h2dQlZGVfxXWrhi+fIg1B7GZwDPmX9QhvdXcF1p/N6gqFFQSWJELrgz05pY
         Hj3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5tOuXAPMY0jr5CAqR2ruMLcAOqwbcgVnF6Bhg7bn5/E=;
        b=rJrqiZjaatZZZfIvqGbgtNJeew5OpKuAUceBCRtLjbnOKdzF1GGAa1qFzPJl/6KpkF
         6wUpAWfSB2c9rb4r0fE29v43CaF+GPtUmdH8L02OsVd6ACkUuT+7pQKlgTH84iDwQRBp
         TpTOVyg6J3wrRB8MVDe29drRp+58DzkmCOTZCzGeavK/rFvLn3JU9MS6oLxzkjr+1+nX
         mUp/aWZ5ukCYQOB6QQrKmMXpsfpkmbEaUXMfhZzlOZN/FyGCFEAo8Fpf1/ni82L9pTFP
         UFl9mP9tpa5tjs+F33E76SiMr4NjkGghkpm76qCzwg+7IHL0UcXy/Kv5gIdbKjVriJ/5
         zNqg==
X-Gm-Message-State: AOAM532k0o3tjkPIoaudiy08QETBhAtqUFnnbU+LY67oDGcCIDZ9xogT
	rnp6DpK+EWf87pHddYj/SBU=
X-Google-Smtp-Source: ABdhPJwRDtVz/yNF2hZ5Q4ZrSzVunoiBGFaozgy8EO0uG9H8BGpXnktKBYDHj1SCbgaiSmHjtUdCNg==
X-Received: by 2002:ac2:4831:: with SMTP id 17mr1184414lft.487.1605283022156;
        Fri, 13 Nov 2020 07:57:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9908:: with SMTP id v8ls1329267lji.1.gmail; Fri, 13 Nov
 2020 07:57:00 -0800 (PST)
X-Received: by 2002:a2e:8604:: with SMTP id a4mr1479089lji.100.1605283020830;
        Fri, 13 Nov 2020 07:57:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605283020; cv=none;
        d=google.com; s=arc-20160816;
        b=fD0fn80vuYwFbXdDuhMM79MkoLkeV2GtyeqWM5I4xqYzQGwSDCYNSgBd1KNlVz0qVX
         Y9egMTqa9gavVuSrGSxhTkwS46/KTnfaq2WeQKtJ2JyW4eWUvR79N6KbAtdEW6c5uUxF
         xcCDtqxV2MfOg1L/kHXAgt95Qq03rZI2bFeIr2l8TCIMD0gjht5W4cAwbTvNmNK1euTi
         ZZ1r2wk5iogfOteVu7we/CCzKfCjq4/FzIPOMjxScecai7d37FcIl553gWAr6FlnM1fW
         i5IwNMP5Iw4LMWMz/gvD6SRq7LLYgdPTTNojyqkTBtjiwruvLm5Ou6/xt0hjeZuO7++v
         GhbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rOuCTKmLpMQNXtXb2BJrqYzxdZQPyxTkqBZUS54RrzQ=;
        b=JT82sB+EqNGGxGk8nIn8CHOJ4y7NLeEztKDBcbo/AZs0K++SdV8zP0Q66snInSbDx8
         tNdH+iggU9wJGWQll16pSi9+6Yphchhb9W97VdwCpziyBhj8OKrgCmepRc86H8G4PC2J
         TZlEoajGP0MtEI54E7bCPeYGRp4Jw0SJvAC0b/YLtdP7RHujUE24+CdxE8ZCxhl27ytb
         39uTyEGBEgNud7YflQz9QhtLgj9/XSfJcqbEZKmV9+KpbsyrMgm83A+c6wXsbzW4itrF
         WC+sISJyqEC/ACGdAr4UYli2P312hmLHOGXb46yJvzjGNk+beNu9QZDGTh2GuKSYz4zv
         ZXtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=XObrq8K4;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id i67si223241lfi.2.2020.11.13.07.57.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 07:57:00 -0800 (PST)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id CF5FBAE49;
	Fri, 13 Nov 2020 15:56:59 +0000 (UTC)
Date: Fri, 13 Nov 2020 16:56:59 +0100
From: "'Petr Mladek' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: mcroce@linux.microsoft.com, akpm@linux-foundation.org, arnd@arndb.de,
	keescook@chromium.org, linux-kernel@vger.kernel.org,
	linux@roeck-us.net, pasha.tatashin@soleen.com, rppt@kernel.org,
	tyhicks@linux.microsoft.com, ndesaulniers@google.com,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] reboot: Fix variable assignments in type_store
Message-ID: <20201113155659.GN1602@alley>
References: <20201110202746.9690-1-mcroce@linux.microsoft.com>
 <20201112035023.974748-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201112035023.974748-1-natechancellor@gmail.com>
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=XObrq8K4;       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=pmladek@suse.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
X-Original-From: Petr Mladek <pmladek@suse.com>
Reply-To: Petr Mladek <pmladek@suse.com>
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

On Wed 2020-11-11 20:50:23, Nathan Chancellor wrote:
> Clang warns:
> 
> kernel/reboot.c:707:17: warning: implicit conversion from enumeration
> type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> [-Wenum-conversion]
>                 reboot_mode = BOOT_TRIPLE;
>                             ~ ^~~~~~~~~~~
> kernel/reboot.c:709:17: warning: implicit conversion from enumeration
> type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> [-Wenum-conversion]
>                 reboot_mode = BOOT_KBD;
>                             ~ ^~~~~~~~
> kernel/reboot.c:711:17: warning: implicit conversion from enumeration
> type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> [-Wenum-conversion]
>                 reboot_mode = BOOT_BIOS;
>                             ~ ^~~~~~~~~
> kernel/reboot.c:713:17: warning: implicit conversion from enumeration
> type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> [-Wenum-conversion]
>                 reboot_mode = BOOT_ACPI;
>                             ~ ^~~~~~~~~
> kernel/reboot.c:715:17: warning: implicit conversion from enumeration
> type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> [-Wenum-conversion]
>                 reboot_mode = BOOT_EFI;
>                             ~ ^~~~~~~~
> kernel/reboot.c:717:17: warning: implicit conversion from enumeration
> type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> [-Wenum-conversion]
>                 reboot_mode = BOOT_CF9_FORCE;
>                             ~ ^~~~~~~~~~~~~~
> kernel/reboot.c:719:17: warning: implicit conversion from enumeration
> type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
> [-Wenum-conversion]
>                 reboot_mode = BOOT_CF9_SAFE;
>                             ~ ^~~~~~~~~~~~~
> 7 warnings generated.
> 
> It seems that these assignment should be to reboot_type, not
> reboot_mode. Fix it so there are no more warnings and the code works
> properly.
> 
> Fixes: eab8da48579d ("reboot: allow to specify reboot mode via sysfs")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1197
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  kernel/reboot.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/kernel/reboot.c b/kernel/reboot.c
> index deba133a071b..8599d0d44aec 100644
> --- a/kernel/reboot.c
> +++ b/kernel/reboot.c
> @@ -704,19 +704,19 @@ static ssize_t type_store(struct kobject *kobj, struct kobj_attribute *attr,
>  		return -EPERM;
>  
>  	if (!strncmp(buf, BOOT_TRIPLE_STR, strlen(BOOT_TRIPLE_STR)))
> -		reboot_mode = BOOT_TRIPLE;
> +		reboot_type = BOOT_TRIPLE;
>  	else if (!strncmp(buf, BOOT_KBD_STR, strlen(BOOT_KBD_STR)))
> -		reboot_mode = BOOT_KBD;
> +		reboot_type = BOOT_KBD;
>  	else if (!strncmp(buf, BOOT_BIOS_STR, strlen(BOOT_BIOS_STR)))
> -		reboot_mode = BOOT_BIOS;
> +		reboot_type = BOOT_BIOS;
>  	else if (!strncmp(buf, BOOT_ACPI_STR, strlen(BOOT_ACPI_STR)))
> -		reboot_mode = BOOT_ACPI;
> +		reboot_type = BOOT_ACPI;
>  	else if (!strncmp(buf, BOOT_EFI_STR, strlen(BOOT_EFI_STR)))
> -		reboot_mode = BOOT_EFI;
> +		reboot_type = BOOT_EFI;
>  	else if (!strncmp(buf, BOOT_CF9_FORCE_STR, strlen(BOOT_CF9_FORCE_STR)))
> -		reboot_mode = BOOT_CF9_FORCE;
> +		reboot_type = BOOT_CF9_FORCE;
>  	else if (!strncmp(buf, BOOT_CF9_SAFE_STR, strlen(BOOT_CF9_SAFE_STR)))
> -		reboot_mode = BOOT_CF9_SAFE;
> +		reboot_type = BOOT_CF9_SAFE;
>  	else
>  		return -EINVAL;

Great catch! I guess that it has been a cut&paste mistake when writing
the code.

I feel shame that I have missed it. I think that I have even tested it
but I probably tried only mode_store() and mode_read().

Reviewed-by: Petr Mladek <pmladek@suse.com>

Best Regards,
Petr

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113155659.GN1602%40alley.
