Return-Path: <clang-built-linux+bncBDE6RCFOWIARBCN36KBAMGQEEXOXCDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C53B3493EF
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 15:26:18 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id r65-20020a1c2b440000b029010f4ee06223sf1040791wmr.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 07:26:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616682378; cv=pass;
        d=google.com; s=arc-20160816;
        b=rx5p6uriGDBOVjTorO8Djw4GNH5TdwPyUqPVFHBEeDwzrgbyGHtJ3Mr0ZCp+wJniVY
         g0dVPAw/f+zS8ZDHAwaqwczCquXZ8VP4Sy6IZu5VW+ihk6+WIW8iudgPQ3hsXGWQMFml
         zl/fGS7ulqGKPYKzFGHsBFgqAZ0Nkcko7F7ranLgcfSogEwY10/2vmJlS7wAgNrJjlbQ
         tLrIaQOd9/i+YEN7pQPMX6ytKLfx1eXmP9DCsr9OH5AsHrKyqobe6nFkUIVOGkV/p53Z
         DGLlnPwdP3OE1ku/neudtSgPk008uBq94T5+WlYs9lIYBElkCb6BL9/CXlznBmCyj3EG
         uFPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=a77XElKvMAy/XgELddVtlSn8D6xxuH74gV8AjCbj+Vc=;
        b=gBWZj5lT8O7bkgCY3vDb/U1lZQAiCL/W9J5PRJeJfR2rU8cMbJeTpuByNR0zJH8Zmr
         AsVrR1O9n4PipuvEOeonSK5s5OSRyrKn6wQULRATI5IxtTSBdyGV7T/I+Htq4G/KCHw4
         Xdb1q9idS2ge3Rkyn26Cm3SJsjqrDfKyTlhbbuqoCMeoViKmffhzQY2gWGaNEyZeTe1B
         +kfQQcxKGLoIM02Ymhh1jOPWHBSWuOnSkVLQIsjn2UDhc70jOfUjF+IlV2WDfAU+6tE/
         gRrdMSUhyj4mzIwvSYLXNYYb5ibgunpSTU5zXhvAkgIlcMPGTzlgghbG7VeM+VkgAyCV
         odVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=HnLlDdBG;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a77XElKvMAy/XgELddVtlSn8D6xxuH74gV8AjCbj+Vc=;
        b=LC3uPlOFnx2H30TUZzUDaOSeTl+V8BpqOmqwhTph/iUjTqLMOtzkSwYEMSe23HimCM
         AueAobI8Shl4vb+MJuGnhpaF8CIC+okBcqTUXYJhL778V5jlJ8crWonwe+PWWv7roa5g
         SGku869SW3eqjaZkgV93DxkvJV8AV7A5UqBpE9/OxhdqogarySNddL2tX+HVBRKdqdag
         aMznILfiDPXBJ8xpWBGPWOnnzkkQ6K+VcZ92qlSJUttiv8/5YodYT3+DCR8iajidxX5v
         rwFp2beRlAGlIz/scsBfSmjUNMXRncrZZAU1lr9h28hq6XAwc7E/hJp9eegnrdPdE3fi
         rBQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a77XElKvMAy/XgELddVtlSn8D6xxuH74gV8AjCbj+Vc=;
        b=BQmcz18W4tn2kW1kKWbuE9X6PVwyyZywd6eycA0dQkwjKrucPuRkrG7vC/HmlAkoE2
         PyuHk6rrGBGBCyiFDKC5Z3J9C5pzQQE6Dlyh6lm0OxuwEL9EH62z9CnCUoD1rDqbvkSJ
         aBTJbNVGMGYzLYbGmEdr1t4O9d/erCU/E8CQT4+498F/oYp3l8ZuaddvH3JQJ/DxgxpW
         Da0gXp/g1cmbZkmfWoN/E8Bu3dwjaxfLtqqRVV2HP4+EEkBlCoFqI/sgtjsQbVA8LPLr
         A/1XwkxSSDNQQk0Eezpde9uWKG7TjSSLE3QExBcrTjLGkfSS3fx7a7lqAvyQ26r3KoY0
         qvEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VMxAxUUCsryY5DVc+uQmy6BkyhOiiTJenZchBdO+Z/J3vC6Aq
	zeb/HxKGiyUUYXmyIs7uj/s=
X-Google-Smtp-Source: ABdhPJyocq5Q1jdMSCLXpwOOhk1ib/LO7wFmrvXsMao8C8fmM1Bl1E21j0PAQcssesFETYYRYYY3zg==
X-Received: by 2002:adf:e485:: with SMTP id i5mr9366395wrm.26.1616682378103;
        Thu, 25 Mar 2021 07:26:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls4645003wrb.1.gmail; Thu,
 25 Mar 2021 07:26:17 -0700 (PDT)
X-Received: by 2002:a05:6000:186a:: with SMTP id d10mr9128746wri.303.1616682377231;
        Thu, 25 Mar 2021 07:26:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616682377; cv=none;
        d=google.com; s=arc-20160816;
        b=oZkzHuWN04mBJw68/aPjD/5tUmNXIBgBCP9jueeUa3YCSU6pAbbkFp0bQdmumWH05B
         YqjtcXU24LSZU4yz2hh4/whawjEjj/FuWDjvkn4Ws1kUesC6PaWRni3QP7DWDPigkjU2
         oSlPmvNSjNlAPuJhlaQ8nZiyYRnpRkI1Bo+0JelKjW59wDq+Ip4SuUJGXZMr3H4w1pug
         Bk+8cVjQjcd69ho/WnceLYDCsFWLRqO5BG6Gkgw0IqgvPRuH21AlQFxkOIvxaEj/6OZG
         fn3fN9z59c3TmbtCuXqVjrTcxBng6Np0pgLSe8fAMhtELm/1CR9jTlQ9uS6jStxTKyep
         54xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hwetcsVKboaaGI7NOXNHnyGvYuGd+RB0dddZvR4dJYk=;
        b=t0a7Nmo8az1thUNfQ7vxrw8pYjVQQm/T3Gi+IdRP49pXLvYIiSNIX3qYyRxg6Vf+c0
         iy8Pr9gR86ikfs+qfurmJImMegtgRnH9UMItHA9ZkxPsfjfiM/bAVC6847D3Su1mm3Cp
         +3Jwv5alXLQGil0fw84VSYnlk0ivGouCEBipyyqhcyafBAVwCJUXYZzmAjN03TesVGC9
         j1GAqnIxscVsJXNoG251nL768WnPxNahY4mPrzfzzTzLczdZ8UggjuqaepuoCgRNyygK
         WWAbbimF8Kc3B1gn8ZFHowm+TIlagp7NlUtAo/b1+kz0gdNJHZwJuBZdACj+l5euzMhM
         lGcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=HnLlDdBG;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com. [2a00:1450:4864:20::229])
        by gmr-mx.google.com with ESMTPS id c9si334394wml.2.2021.03.25.07.26.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Mar 2021 07:26:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::229 as permitted sender) client-ip=2a00:1450:4864:20::229;
Received: by mail-lj1-x229.google.com with SMTP id z8so3317830ljm.12
        for <clang-built-linux@googlegroups.com>; Thu, 25 Mar 2021 07:26:17 -0700 (PDT)
X-Received: by 2002:a05:651c:103a:: with SMTP id w26mr5808808ljm.273.1616682376700;
 Thu, 25 Mar 2021 07:26:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210323131728.2702789-1-arnd@kernel.org>
In-Reply-To: <20210323131728.2702789-1-arnd@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 25 Mar 2021 15:26:05 +0100
Message-ID: <CACRpkdYS9JVnbdW_+_Qi9ujA8j9p-1r7c1UeeKToukQffN1u5w@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: qcom: fix unintentional string concatenation
To: Arnd Bergmann <arnd@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jeevan Shriram <jshriram@codeaurora.org>, Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, MSM <linux-arm-msm@vger.kernel.org>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=HnLlDdBG;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
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

On Tue, Mar 23, 2021 at 2:17 PM Arnd Bergmann <arnd@kernel.org> wrote:

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

Patch applied.

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdYS9JVnbdW_%2B_Qi9ujA8j9p-1r7c1UeeKToukQffN1u5w%40mail.gmail.com.
