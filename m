Return-Path: <clang-built-linux+bncBDE6RCFOWIARBLNQZL5AKGQEELRIDKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBF725E208
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 21:40:30 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id 184sf2480453ljf.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Sep 2020 12:40:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599248430; cv=pass;
        d=google.com; s=arc-20160816;
        b=TAIDKjq7wz+mcVPePfTA0WwdsOuQMMj3jlToAJ5TJyK4KUELDzJuYS9XC5Kuh8TqSP
         Tyez5cfPvxiEXvVmzrhzK/oWe7aVHohzqFOBBW1GqfBDaU255rFsSkM+UTBhAZq9D7Pj
         /7q5mD8neaOP7KD26g9kcXMjbJOI7x7/OxRt3B9MtA2jevuxAEFhbkCac00cBVzR+lCJ
         2pXfPp2DYXB5fXFN1NSn76z9Vn0STugl7pX1yMN2RExCIN3Ksp8EqSAQgOWM6BilZ3rU
         PAs4LAH+rq5eSvLNDwVrrHhRH0qjKWCsyjusnFJ9cP2y6EfFsrnf1PiW/f+Xo3Lzy+EX
         8reg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=3z4cE3EdIMnOGi1MO8CIPtn3ka74gdfRB/mSmP7kImU=;
        b=eUM8/uHCQLkEEHrha7JXsACKfbZYDsluh4gxivtH4+gturur02U2QSP9FssiWp/8Tu
         CuNmLHDX5bb+uqcx7as9F3aBm2tywiLy5AiRMw6Yy39N8cVJrhZoh7w9iIc7Q6c0qewC
         qWkSsb9hZ6qMBVAnnOSVv0J9ADSUk6ykxb0W8fMuPp+V3fr4G4h0q5mxZUyaIksZ3fGa
         uiGHrEvdWyBOB/9ir9jj5cFO6auJwpNwhy0EcG1qlwhKBn3QwJmovso221rzusZxhzwi
         E8eLri6Fg5oHVOg0mtVOH4GPAqJk3TxpK68RinzIzB4/u8bW/DuA9nrjV/PgFiiyn5+0
         AIlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="r/cueaYA";
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3z4cE3EdIMnOGi1MO8CIPtn3ka74gdfRB/mSmP7kImU=;
        b=J7T62gnhJRnoh59siS7GNvEKIB7ismfhXWuX3vvRFYDoovEiM2ffo6Y4M0A0qAV2Fx
         dU27dy7y++XduxFlWKyO1hWD2adG4NVuJj+8jMqAm8/9B4lENBk4hPRlwruUYiHJnQLD
         GxfOSanioabMEyEoooZUli4Sbgp3Emco6yapZHCfiTHO8WWlpgbEFEKawnNHHft07uc3
         Me9srFoWsWTtnl3FVlV6pgfNPj7RNnwdzza+30K1hAiZI36ZvogpAZGaRHFFCwy43DUa
         C1P7r58meS+B7oGqDntcdx1K8CzK5ERWc/x8WEJALC2uw6Qxjff7dljP3t9JkjXzh+YO
         5ovg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3z4cE3EdIMnOGi1MO8CIPtn3ka74gdfRB/mSmP7kImU=;
        b=LU2MgR0oYknvSOemxe1FI+TaIec8pppELcSfriSBmQh1ctYLt6B98Zgo7ZZyXANBV6
         w0HzsMvdiVpDKYFsxnEQExzdU8qsFHJ9wERu4PCBnOJVxa/ItZJK6BxmVCDYE4fx3L4F
         X0pQ28Cyr18FkkDxx+vvzRCvM/s7kan2dgIYmbVDjNW3q2ADJNyqbSMe3Cwea9yqGCUG
         qhw9XHJceD3T0PpdTYuKi3DL5ruvOgf4XAfvytKC9+VXYfVFKi8GKQDQZBzB/aZyttsb
         pXJmY/k2ENtTOx6VgZ6BTgnGurCDNWXALi9b5rVFYEUYZxldyH61mRo6okiSvBKZpkNT
         n6WA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/kEB89TCWkHOKqTUgTmGWAedBMwqWYR/tP0ACZJ859OAlfS+F
	/y5HkJyd7t6QeFyFghYQlV8=
X-Google-Smtp-Source: ABdhPJxZk6iyjS0tK2CK2ts4YQpXdyvN9IcPNoyT3jg6JZ1NLxyUI5M5z36s9ha3VIAFXkT8tXaN3g==
X-Received: by 2002:a2e:968c:: with SMTP id q12mr4396428lji.51.1599248429948;
        Fri, 04 Sep 2020 12:40:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:294:: with SMTP id b20ls2146008ljo.9.gmail; Fri, 04
 Sep 2020 12:40:28 -0700 (PDT)
X-Received: by 2002:a2e:9b59:: with SMTP id o25mr4966376ljj.264.1599248428767;
        Fri, 04 Sep 2020 12:40:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599248428; cv=none;
        d=google.com; s=arc-20160816;
        b=PTt7ML+COhZlhIyZT3eRVDj3wUsntvc+x2DdiayNmiIvUA/LmasP/nBWhYqP/FZ4jb
         8lw0ZqcKDxrP9uOFH5HDZgHDKnFE63LVMl/mMaXxLVTaItEJo4x0EMiXDrVGzmoriXli
         pCO74jXgljEgqqMoZxGsiSYrZ3I+OB8w8vxtzfyH0p/0aHEDAKTvoWTWbdernLMWRiq2
         zB/dp6TZ8V4CmqM2T3JH2hnIIdeMHNAvX9LArkpvoI+Sqae5zoBymMXIFwJtlTf5Iu8h
         EO2dc4GDk+66EW3yPpQxFJ93fx8HPRL6oyc2z1QnP6KT+F0r8SmrncV9iehnQ5U9flC5
         7XGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=W0UbFzEEWSE3gZDT4mfLFFYaTV4nyB6Vy/zhKvQaSbw=;
        b=bFQB4swWfLr+K7GqbBWPx+yl3g/aypq5ERSIUPjHPwOeknwF4GY1QYvvBEI27lVogy
         lXjf+cSUkRgEtzA9KxAssGTxEdNK02ZAEtiONl1dio4Jql30u1hERTItFVGYszLcsukS
         pEJkGq+QdYDu7xcSApuzbFrWVYb68LPRiBG5Qxafix1EY6mjlILYSK+hfdnb6dhdoAH9
         rl5ay1TGIWOKWx1KebcWacF9ulyiEunfoIlDfyYTrVxbV5uWqy+mgUVZlyMfh6Yk1Za4
         Wjr+OcOjmHGqPdmoz7ubYHgiCaK7qL5Jj8dyCe47sMfEMETmgqp4+uANOCFgL3fNo6as
         BudA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="r/cueaYA";
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id z14si199883ljj.4.2020.09.04.12.40.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 12:40:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id r13so9373478ljm.0
        for <clang-built-linux@googlegroups.com>; Fri, 04 Sep 2020 12:40:28 -0700 (PDT)
X-Received: by 2002:a2e:810e:: with SMTP id d14mr5040510ljg.100.1599248428450;
 Fri, 04 Sep 2020 12:40:28 -0700 (PDT)
MIME-Version: 1.0
References: <202009041955.peRlCsZZ%lkp@intel.com>
In-Reply-To: <202009041955.peRlCsZZ%lkp@intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 4 Sep 2020 21:40:17 +0200
Message-ID: <CACRpkdaZzNe43q4rtAFnh1tv52xpEZ-6L9a9Be+r7+_-duE8+A@mail.gmail.com>
Subject: Re: [linux-next:master 1713/4903] drivers/gpu/drm/panel/panel-samsung-s6e63m0.c:322:12:
 warning: stack frame size of 12576 bytes in function 's6e63m0_prepare'
To: kernel test robot <lkp@intel.com>
Cc: Sam Ravnborg <sam@ravnborg.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="r/cueaYA";       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
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

On Fri, Sep 4, 2020 at 1:57 PM kernel test robot <lkp@intel.com> wrote:

> >> drivers/gpu/drm/panel/panel-samsung-s6e63m0.c:322:12: warning: stack frame size of 12576 bytes in function 's6e63m0_prepare' [-Wframe-larger-than=]
>    static int s6e63m0_prepare(struct drm_panel *panel)
>               ^
>    1 warning generated.

What can we even do with a warning like this? It's utterly confusing.

Whoever enabled this warning need to think seriously about how
these things get reported, to me this is just some unintelligible
noise and I even know very well what a stack frame is.

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdaZzNe43q4rtAFnh1tv52xpEZ-6L9a9Be%2Br7%2B_-duE8%2BA%40mail.gmail.com.
