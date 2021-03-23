Return-Path: <clang-built-linux+bncBC2JZN6WSAHRBTPR46BAMGQED34ZVVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id E852734614C
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 15:18:54 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id f26sf1258001qtq.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 07:18:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616509134; cv=pass;
        d=google.com; s=arc-20160816;
        b=KqDZkv4b3QdwgJbRu2uCAjUmrAM4NdamZ9H/WJ+rVUIwOI+Z/85b7KiuFc300nEdD1
         Yk60LW+uzZ8Kh810vhVrgupeyGchUuLyy/6/nRowXyuc1GvO6ejVqPXPuCoYgmu/4nPo
         SouU/y+znYZMNTD3ejozcKX+yhOkpU2fsBJqijkS2bLue/wn8Yk2bQrH0t94bc6aDUrt
         nKW9aTrxz59a1DtZvwD4g5kui93Z9OVvU+X8FuV/E595Vxp82Cho41twb22T6G9BjvCv
         qeKPbDLus8f5t52Z/i+KokbmjHuAo23IG7gBms/rSM5STwcsvkLKqiioM3y3GuAaQdd4
         kahA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Zga59/E7BCy1XWsC6Li6ppVhOP5LYVKTnkZ8BvYTgdY=;
        b=dEYPdt1ULk8YhwQhFMFk36GI780eOUggnO6apnZi45rATEkT7KFgZEjqAEGBazqGBG
         iLuMZt7/t+mygSZxu6sX0ZhKCYNbblM6GADSafMqhiDOupzvho3T7c5H6fq69i9X+A+X
         um0X3L9W+6QAiluo3H5yLlF2ExKe79Vsd2wY5A3ZV/QXKns0i8EmI2rtfF/tiqAMNZe5
         X9MGgZbLRnqJwzdSg/gHI3vcZ12PU8a6VCqjMH0SCnY0tSmLaKs9r60OsfQzdHNlzMW+
         s/Cz1oth8tMz0inl6rrvpY8aLDl0ur+7B3RvWf/dQQQDG+UyngAS7l8ZmwfW9L6wI9Cw
         25Tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=xH51TtUu;
       spf=pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Zga59/E7BCy1XWsC6Li6ppVhOP5LYVKTnkZ8BvYTgdY=;
        b=KI93/sYmQV6AVbh6piLtXgq6oOIigdiekhCaqGgh8Ru0844lFqE5TUSbhzRn7+c9wM
         jzIu6XRZJ7bHdmp67n1Maf8gBhxSQzID92pMclKcMGFxDkd3YZsVBtb3ZrUYHvDmqPhJ
         lBTyH9aoBLhTW17IDubH2qo+2jsguq6zeti8RJyRTnFbZ4FF0MEKdGvG7mf+byeqEJDM
         aqHv9IE3YP7ah91AxMfkxduoe6gYGlfSF20aeTdo0fQH0t6zS9c5XhmINyQ/40FoZXc9
         l++2x4CuucC8iEjcRD+sEquV9LC3IQI+yV60cKAJWM/FpwtHwpTEpz8EZ2c+lbUkSmPi
         9DcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Zga59/E7BCy1XWsC6Li6ppVhOP5LYVKTnkZ8BvYTgdY=;
        b=gVrKfWF6wHqbxbLgLzC18BSSeIkQqtmnGlqOb1JlzN9MY9m0gUNGGVgzmcfESY+Xd7
         v25t5z3j2M37mLbOaooMVhdk/hgnl0ZDHMS261VXbCTQ4jzbGBJVnCCrmLz3G1Z8qNQ4
         Ugh+Ucl+AayHiGpMQrtRET6r3sv9pG4WLNpEd7tt9nCsaswUSFe+foRvSr25JULJeET8
         d2B8DX/v6VbSpK7uxC++0t5I++DII6v+//+xefFio0dvwBLOzjDK52XzlmGk0Eia6g0T
         7fhemos6klJ2/Ypvr97dY7jrgePcdMiCUj8LIPeSWnsE40p2YRwdR/kHND6gBdCJ5+LT
         HNeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tiwUYzWvTBKNrLkoO3yBYwrzbLISq+zlbBodzZXIUlKMYqLek
	wovCQEhRkRj8cOxDfpdR6DI=
X-Google-Smtp-Source: ABdhPJylWHQR5WM7RFFUypsRNDpJWQ20BBODU43HHgJBq0MrPg91Bg4mW/lGrRMpwooNop/qaxSPNg==
X-Received: by 2002:ac8:6f25:: with SMTP id i5mr4684274qtv.202.1616509134045;
        Tue, 23 Mar 2021 07:18:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e752:: with SMTP id g18ls324040qvn.6.gmail; Tue, 23 Mar
 2021 07:18:53 -0700 (PDT)
X-Received: by 2002:ad4:584a:: with SMTP id de10mr5057881qvb.50.1616509132787;
        Tue, 23 Mar 2021 07:18:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616509132; cv=none;
        d=google.com; s=arc-20160816;
        b=hG/2N8YkRu+x5kECSNZCa+MAAEeXOLqJd5xzHSXN3TgdztPnc2Iuid1nhfHCui9DdN
         vTGRiQwvtSO+yxNfEcIrff/pLjpv9vvuKnw6vOpn0AunzM14h7AkHB5SJAkS9WLQ7ESD
         2CicW/Yq0hxl+ePJ3nTAOSXlmMKyKcVsVGblXGuae6vTSzozQug0fVxaBhPklU/76a/u
         nwXZ6WKv2abT4SCho3ADCJyyinv4jvU3tE/UpW/GEmCv2ndbvnRIaM+uFzgGKcYCJY0i
         5mWzffH7y0cdMQikWBx/8of5/JlG5pW4UMCj5Hm5EJ+QMViE3GMj76vRjYOETuv+49+S
         EAQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ytJvpAsy7oFoxUq3vApvk64rCGUzRxHQsHvMZr4O6zg=;
        b=iLRMIXYj33xsdvfhTYTD28msBbEJ4yDkDTHqjC253Zg7IkW3NqnUqeM9nRXst0sDCF
         IDgRxbN4+qFP/UydNevWo6ZrBP/2LpCbb0zRuzZzgxjhusy10wk65DVIy3bv+oq+2G4a
         Y0P2UFLFUWxf8JkVuFHtjN0a3C+nO/yg61hg7UQ3bxzjfwlG/SJkTf5+2CEXxf/a1EoV
         ACTHc8jsE0zBwiiUY11/8M5Ye3ylQLsaQ8BeYRjCVOYVMcdQKoh5snIycQ4f6NoL7yXR
         igyN9CiyMJnXs65wSm0Y3A99ivSflSHir4BA8ArtBFSYICtUZSj3UaaGQiKl7NRPos/U
         V7EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=xH51TtUu;
       spf=pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com. [2607:f8b0:4864:20::231])
        by gmr-mx.google.com with ESMTPS id r26si442856qtf.3.2021.03.23.07.18.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 07:18:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of bjorn.andersson@linaro.org designates 2607:f8b0:4864:20::231 as permitted sender) client-ip=2607:f8b0:4864:20::231;
Received: by mail-oi1-x231.google.com with SMTP id x2so17147079oiv.2
        for <clang-built-linux@googlegroups.com>; Tue, 23 Mar 2021 07:18:52 -0700 (PDT)
X-Received: by 2002:aca:d442:: with SMTP id l63mr3536830oig.49.1616509132104;
        Tue, 23 Mar 2021 07:18:52 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id t2sm3708079ool.18.2021.03.23.07.18.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 07:18:51 -0700 (PDT)
Date: Tue, 23 Mar 2021 09:18:49 -0500
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jeevan Shriram <jshriram@codeaurora.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] pinctrl: qcom: fix unintentional string concatenation
Message-ID: <20210323141849.GG5254@yoga>
References: <20210323131728.2702789-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210323131728.2702789-1-arnd@kernel.org>
X-Original-Sender: bjorn.andersson@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=xH51TtUu;       spf=pass
 (google.com: domain of bjorn.andersson@linaro.org designates
 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=bjorn.andersson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue 23 Mar 08:17 CDT 2021, Arnd Bergmann wrote:

> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang is clearly correct to point out a typo in a silly
> array of strings:
> 
> drivers/pinctrl/qcom/pinctrl-sdx55.c:426:61: error: suspicious concatenation of string literals in an array initialization; did you mean to separate the elements with a comma? [-Werror,-Wstring-concatenation]
>         "gpio14", "gpio15", "gpio16", "gpio17", "gpio18", "gpio19" "gpio20", "gpio21", "gpio22",
>                                                                    ^
> Add the missing comma that must have accidentally been removed.

That's certainly a useful warning! Thanks Arnd.

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> 
> Fixes: ac43c44a7a37 ("pinctrl: qcom: Add SDX55 pincontrol driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210323141849.GG5254%40yoga.
