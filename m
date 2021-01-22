Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBVGUVOAAMGQEJI37QMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8395F3006AD
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 16:08:05 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id m15sf2250612oig.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 07:08:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611328084; cv=pass;
        d=google.com; s=arc-20160816;
        b=cfW3Sdak3xSQ5vCTWzlVcm6N7IK445Zu06RZRQ3iPt8rZkq6+sFC61z8Gf6ZQcHzsg
         Ptk6ifv20pBwDfpxBHiMb1Yy2RedJwjX7ST1y15EabQwAH8h1HD1jED4Y5YpNQURwDRM
         REqdmCuxOB3pNIkrM7A36oxu2brwL0nNkm0getVmbQZQMrcIhHv4ToagRjXZwg1lUB8s
         C5UONcyoNZ0VAmQWX5dmo2jtkTtC3PV1j4iiVOfo/x8h5Blsr/aEx7Nes2PiRBnvnW0n
         mpAzFQoDlMCiMaJBA7qkq7T8rkA3RDsvYyhWrDJAt4sjTtgdEFjNOPA4luO7vg3ETBF0
         gLvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=c6VKxv+4SGhqXWncd9fjBqE5hxPlhAHC0EWlg6BsueI=;
        b=xYGjx7vOxO42xTXtUs98mu6mZH+3PEqGD4k1FGlhJFNUDy1ohAOQwhMLj9Yz5InFtq
         6gZOA9eD3wTY4a5DfOKzu9CRdUfVdupm0PPaB1RWBVecGWQXU0yWRpiO4IshlslAkRGw
         YqkLQuPPR7WXxDIJElBzlO2gH1/dJxoqp5y5mqQ+kpFUfIT8ln1JMNkBRJLKUlpNEZBW
         b5RgS/fOU/xfkdUISqrBURZ6HTgHRj8a+QXfLy5loJd++cbsnxjj+3wKI6DD/Q6G+dlU
         vQsBevewWu+m60WqKa4CsbXZE25csSKNTjzNXdnlhzODMM9jGfVCf87Zsj7y3etoU9EE
         2/GA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=WDgeuQvf;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c6VKxv+4SGhqXWncd9fjBqE5hxPlhAHC0EWlg6BsueI=;
        b=aWgPLmq7izke1WPzFEE3pZqQaZCVJ/LYemNe0Ei4rOgGT5PvgpGZq71Ie3CyrZ//kc
         3sBZ3YPrNJNzTSiirr7WYilN95WRQ5DKSLHYU9z40q+g8mXjAw29iE7SFXVEpciwifMb
         XFiS3inFwMxIXlP2us4nw+046Up20pshGqA5M/Hg9U2iSxBsOOiPXCp462CdHgRZ/yah
         LwVxccjSKWmFMTZFD87QPX1vuC8O+sG+LwIFLSseG5U5R2Y8psg3HRVPnwh7dRNeUgI1
         FbZ3l6ELYybDmZickxQcou9clVGiCNqfi3QtHQZa2GezRCAgf5LTI1Amv8hflg0/ma6W
         O6xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=c6VKxv+4SGhqXWncd9fjBqE5hxPlhAHC0EWlg6BsueI=;
        b=UaM8TimJ+KVYstwNnQ0X7IlKT4Cie/JyOCKQDYfeDq5JR4Yi+TjIE0ynvgmoqBrzmn
         LskV7T9so9yYA/vr1f3WFMmCHRiMz70Y2ccwQqVuYk7S6pZHMYfpV7s43k4LIWuPPsC1
         x/zdsvAkD8kFwQf7pvnd5EFPtiEX0KWpndyiuJwpenuJ88FtOLeLmj1cU2iY+ElUkblZ
         PSPhJmrDPIEf0SJyBRpbvMdMDeZhxiSIxeGTWYJwoBLOsM2yc/P96BgmVkcGPlqyV7+x
         NNZO1sDHxwO2VrZUteCyz9IMjS+U1AF5pbgF1E1vzU6pSxOQmma4bIczGA3Awi4T/Rnm
         AbYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533CU3xm0eWwNCKY+VHp/4Ezl5qSIvmiiK23gGA2eoNaegBAIfZx
	Nna6Cda9VckVMTmrGQSmpAM=
X-Google-Smtp-Source: ABdhPJxeMWGwPauqfcflFRQRZCzcS5xf641NIkLQWvHqacndYTBH/5yfW7Q3Rx7fFOcykCfLg6yMRQ==
X-Received: by 2002:a54:480f:: with SMTP id j15mr3604932oij.50.1611328084419;
        Fri, 22 Jan 2021 07:08:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:3c3:: with SMTP id o3ls1018502oie.1.gmail; Fri, 22
 Jan 2021 07:08:04 -0800 (PST)
X-Received: by 2002:aca:dd08:: with SMTP id u8mr3452353oig.85.1611328084041;
        Fri, 22 Jan 2021 07:08:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611328084; cv=none;
        d=google.com; s=arc-20160816;
        b=m2V+OG16BbX1PUH/6mtlRw97rQGkS8JKhf007Q6Bmp7x03qekPdUEHeci8DwyTovQ9
         KN1P/gKrwzWfgw2h+GDRnjXwHJAvQ/a65sSNnlwCaA7rRVV/pM+UaNZdMZiLqdcNPSke
         hz4uTX0lX2sQ+mVvT1+5jf4EdtOHNOfDfT8lT/UB9qzJcm9EMyr9fFVYgA8uCqULiYNg
         dZp4CpHsdy1ZzH9MolmaF+z0lW/aDX9EuutAyTvBttZJAdt4CRIRrs8Ew0X2oG5z5XvN
         NrZpbNm5JA84/8F4za/aVby4V3Hc5c+8HIux1YXUeG472Zxkz0vE8jE0D20wttoAfRss
         v3JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qprfMSWAN8X1Z74dcvN1JEnWpZlz8GFGxcSrkFS43tk=;
        b=x/YgGshKNnCotOIDVdsDgYKCSK+5vEPAthQco8OEAZN2gXREdeRbS088cp4V6trJsu
         ZpiRPIJiuETJ1YA0qlNHyhsdIEaALDVr+4kbWgN/W5cRkyz0rGHt8ry0gOjJl0p6uqZ4
         BuO5w91dZGMrh0qbA10Dxv6ZO2Prqj9RmwECSZbPuMOLa31kKwE3Q6a651K+Fvsz0rOK
         8lOg+47ds8fp+nMVGdaFYZLM1hjX5ocFyYIODWO7hkNSJmlNErbqA1rfuro79rvNSvue
         n2YBxpI6n++bQsUvcxZlyv9OtKm20tiaELUEo+SwD2bQDMAGu61j3dXRQa0Bx6rgqdT6
         q1xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=WDgeuQvf;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a33si525145ooj.2.2021.01.22.07.08.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Jan 2021 07:08:03 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9A61923AA1;
	Fri, 22 Jan 2021 15:08:02 +0000 (UTC)
Date: Fri, 22 Jan 2021 16:08:00 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: open list <linux-kernel@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
	patches@kernelci.org, lkft-triage@lists.linaro.org,
	linux-stable <stable@vger.kernel.org>, pavel@denx.de,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>, Russell King <linux@armlinux.org.uk>,
	Arnd Bergmann <arnd@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH 4.14 00/50] 4.14.217-rc1 review
Message-ID: <YArqULK9c1Cnt5gM@kroah.com>
References: <20210122135735.176469491@linuxfoundation.org>
 <CA+G9fYso4QNbRWdrQiiOiMb5RUr8VtM3AkKEGLasgN+KsPSvDw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYso4QNbRWdrQiiOiMb5RUr8VtM3AkKEGLasgN+KsPSvDw@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=WDgeuQvf;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Fri, Jan 22, 2021 at 08:32:46PM +0530, Naresh Kamboju wrote:
> On Fri, 22 Jan 2021 at 19:45, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > This is the start of the stable review cycle for the 4.14.217 release.
> > There are 50 patches in this series, all will be posted as a response
> > to this one.  If anyone has any issues with these being applied, please
> > let me know.
> >
> > Responses should be made by Sun, 24 Jan 2021 13:57:23 +0000.
> > Anything received after that time might be too late.
> >
> > The whole patch series can be found in one patch at:
> >         https://www.kernel.org/pub/linux/kernel/v4.x/stable-review/patch-4.14.217-rc1.gz
> > or in the git tree and branch at:
> >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.14.y
> > and the diffstat can be found below.
> >
> > thanks,
> >
> > greg k-h
> 
> arm64 clang-10 builds breaks due to this patch on
>    - stable-rc 4.14
>    - stable-rc 4.9
>    - stable-rc 4.4
> 
> > Will Deacon <will@kernel.org>
> >     compiler.h: Raise minimum version of GCC to 5.1 for arm64
> 
> arm64 (defconfig) with clang-10 - FAILED

How is a clang build breaking on a "check what version of gcc is being
used" change?

What is the error message?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YArqULK9c1Cnt5gM%40kroah.com.
