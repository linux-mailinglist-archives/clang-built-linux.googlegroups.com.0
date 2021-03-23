Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMO55CBAMGQE66KP6PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C85346733
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 19:08:50 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id r18sf2719822pjz.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 11:08:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616522929; cv=pass;
        d=google.com; s=arc-20160816;
        b=e6eOXTLeYKjs2LzHHcZwRsTPDxrO2OW+MYGkPtgc97ApAmhuNj6g54aCPuSKiqwcys
         LBvptk2Ro3DnK0dlpNQdZbSM/7027bpMaU5tcqrYVPy1jAOHLCIhmAzn1DiKvxVDIvIH
         SmRc6RKFNX45L1YuL6YSIHyqKWNo7YzUNk3cYjcj0rgKkI3iIzMg/RTc0DRcfkB23Chs
         m9131PbTqluPLpPxNmC571Jt77C8GpTP/LM/QXoza+GcCdlDzpUU6DuppWsJDWpnDlg/
         rEhl0fC2k7TCOHXNJ87EiAOs1NL5l5syE1XZlRRZrJmrJd0DhlRTugvbu0EzwxtUpUsX
         Ebuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KjZSQpI+aHV9clJLtvkUPMtD1q9t+p30Ejkg6qi7euw=;
        b=KSEh17rb3KXszezkaLfrzOYA7lpeRvbJ6DUDFAgfNmF75T6jVFkKTKd28jPSiZE/eu
         2lW+Cpd5OFXonP6TsEboKYHtbmyr0GMWTO5gYEIYxdpwfRcGkNAtLW+g5VRvMEx6KZXA
         wxeeYIZcyjguBQD3S1GGWx9q+7iERMxGfAz3Yym4qGlaiGduqinMmzwDPmAtcIgy38Ra
         K3XGKulm2jwbh0w8y4/18RmAdLy7CeRdNNaOISK79lK/hFBdtwjVWlvUb6yQFCNSD+9a
         9zlQX3RQdn/3UBtx5iJHvcV0XMDLYBUwQta8gVj0eJ+k4lUJ1hr7Oahzf9PYsuf96BIK
         0KlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gIpvHBF3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KjZSQpI+aHV9clJLtvkUPMtD1q9t+p30Ejkg6qi7euw=;
        b=GE+VCbYcXKnEkzLrWKUC4Ge8G0o4QaIx6OFe9F6I3JLMrxaUK77Ll6U1J4UOOnWfQp
         1UuzT2MVuGsb7bBqP01piMu8F4xxZVE5v9bAIq4yrXkkO/c8lgQflRFe/eVWeVv0nQPZ
         dvp/6Y3Zp8qISGT7uZYsIWdgd6mjxXoz12/TR6Jsb1R6EAyNohS4YIA43ZV9cj8lOfTG
         S0MDd9ijUEYsy5Tgk/yRrdEOqn1vhhKXGWtsao7ZIEJPu2AuNzM63/ZsTrRAEWaE/TaY
         TcTFCMRq+zSy7UhaFzZU1phDxwlBWkPp+pQ4feWm+p6LD3qg23IGgjFS7FDB3mebsqnq
         68Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KjZSQpI+aHV9clJLtvkUPMtD1q9t+p30Ejkg6qi7euw=;
        b=aR+ha0XfvWePhr9BHOR0/5fW2LbAOh6/aZb5vPXGkpJWGdrmrnaMAPvRMH9ko5GOXY
         qQlh/RUcGMgLCuctntvG9AUyD7MeY8VDb8TFxuadRBSRqkdAAT177PCGVzqS6GkjlJLj
         BGHgnPmZs7c7rca6LTwEIfM5JaqqBlcynS4thzNUJIPBauP6xv4GTHl3GA7UJpym46V7
         E66tR9bEu2h+PEviu62R6QbJcngITQH/IJcsxIX1EwyBCWlhodg7pjzr+npi88ez7SSe
         ttxav6vRYyi7e+G0TabjC3fIM9tAFeQP4Pi/XK9yD9zibzSMc6FyG9ja36tGZT8iosTR
         8YeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vw82llPpmXeJdHS3Jy61JbkZOJup9OjIA1P1OV3BgOUL0aVWu
	oDSkQC/guutjQsdwsIMvAwA=
X-Google-Smtp-Source: ABdhPJzINPfVpdFN9vNd826cjgrKnHY2TPnWwQleJ891rlv4tAc8Ek7Hbbb4JIOg2B2alxqrTr1j5A==
X-Received: by 2002:a05:6a00:2389:b029:21a:d3b4:e5 with SMTP id f9-20020a056a002389b029021ad3b400e5mr5800122pfc.39.1616522929278;
        Tue, 23 Mar 2021 11:08:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:eacc:: with SMTP id p12ls1961560pld.11.gmail; Tue,
 23 Mar 2021 11:08:48 -0700 (PDT)
X-Received: by 2002:a17:90a:3b0e:: with SMTP id d14mr5787398pjc.198.1616522928749;
        Tue, 23 Mar 2021 11:08:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616522928; cv=none;
        d=google.com; s=arc-20160816;
        b=bvSNzFcl9Nyg8BFH8xxV3xv1w2Zx6Y7DT2Hdzv2O6CzxOy30zgOabWYH2rgBb1sr+C
         ZC5poD2eUdkyOmxxhyr8u0ZbIksMrf4/V2jnwiS67cd9hzU8M+YjimTFt3nP0RmZFGSN
         HvcBzplSve2Bl/rbzO78u1FPk5RWF6gpTaPguhNVbSEZBq6SkNSkiOyangx7+6g3a4EN
         dtQgKEgj0Mwj9R7xqcwK++exXHuT2npsHgmxMhAD5RbfMVyMdeSI8S5URfuBMc4njka+
         CQSdky3MO9e2KBIGGQybY5U9GgYG/t85/LicChqQyKG7qyVjyi397mQDVQxtdkDx0vgg
         7sTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zEwzNjwzNmwhDhLPtwIuCu0XFePHbFwBjZf+TohYBvo=;
        b=chjn/WEuKi5/3UMq/zf41nmQpm41T7DMAP8lTRaLPW9TQE1Yo7yuQ3CRNqtIMxSPKs
         G8UkMVnXzZdKITODYVwpB12j6Athz/YxiKg+M8OVk1qG1mzjQZKtcFdgcUxPnilTLgKI
         +Vg5Y/5zDuahNX14j/NEzupVXO5jYxc1+tb+gxk5wFETR+nO5EApk2D+yaeg0WrA/PAT
         pc1dysbDTNJWYBRyUWSdKPTyAiBwnIyrFZCoXJnAy87G4MWbWDkJZQBm7Lf24qmDX7W0
         MY9urWCwfRfLbO3tIAl9CHnTZq2t5voPkXYzWOTcngmdRS9tnHo8gqCaRkWYoRJJJZZ2
         Yblw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gIpvHBF3;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s9si803164plg.2.2021.03.23.11.08.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 11:08:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id F37676192B;
	Tue, 23 Mar 2021 18:08:45 +0000 (UTC)
Date: Tue, 23 Mar 2021 11:08:42 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jeevan Shriram <jshriram@codeaurora.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] pinctrl: qcom: fix unintentional string concatenation
Message-ID: <20210323180842.ecpb5yza6bgjdl5n@archlinux-ax161>
References: <20210323131728.2702789-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210323131728.2702789-1-arnd@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=gIpvHBF3;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Mar 23, 2021 at 02:17:13PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang is clearly correct to point out a typo in a silly
> array of strings:
> 
> drivers/pinctrl/qcom/pinctrl-sdx55.c:426:61: error: suspicious concatenation of string literals in an array initialization; did you mean to separate the elements with a comma? [-Werror,-Wstring-concatenation]
>         "gpio14", "gpio15", "gpio16", "gpio17", "gpio18", "gpio19" "gpio20", "gpio21", "gpio22",
>                                                                    ^
> Add the missing comma that must have accidentally been removed.
> 
> Fixes: ac43c44a7a37 ("pinctrl: qcom: Add SDX55 pincontrol driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  drivers/pinctrl/qcom/pinctrl-sdx55.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pinctrl/qcom/pinctrl-sdx55.c b/drivers/pinctrl/qcom/pinctrl-sdx55.c
> index 2b5b0e2b03ad..5aaf57b40407 100644
> --- a/drivers/pinctrl/qcom/pinctrl-sdx55.c
> +++ b/drivers/pinctrl/qcom/pinctrl-sdx55.c
> @@ -423,7 +423,7 @@ static const char * const gpio_groups[] = {
>  
>  static const char * const qdss_stm_groups[] = {
>  	"gpio0", "gpio1", "gpio2", "gpio3", "gpio4", "gpio5", "gpio6", "gpio7", "gpio12", "gpio13",
> -	"gpio14", "gpio15", "gpio16", "gpio17", "gpio18", "gpio19" "gpio20", "gpio21", "gpio22",
> +	"gpio14", "gpio15", "gpio16", "gpio17", "gpio18", "gpio19", "gpio20", "gpio21", "gpio22",
>  	"gpio23", "gpio44", "gpio45", "gpio52", "gpio53", "gpio56", "gpio57", "gpio61", "gpio62",
>  	"gpio63", "gpio64", "gpio65", "gpio66",
>  };
> -- 
> 2.29.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210323180842.ecpb5yza6bgjdl5n%40archlinux-ax161.
