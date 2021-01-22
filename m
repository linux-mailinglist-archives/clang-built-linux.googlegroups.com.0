Return-Path: <clang-built-linux+bncBCT6537ZTEKRBIWSVOAAMGQEKXEVNRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D76930066F
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 16:02:59 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id t202sf2428453oot.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 07:02:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611327778; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vc1RqhSJ5hSxRX+3naJOPKExTEmXcwqSCxIQKcmYsoqtjLotJVjfwTIOPex7pnlRns
         UW5/0ZziNea4p2DZhPadxrvqJSI8O6tJNmK7TrDGeFdDgCzDyP+83dH7/21Sk7wXtxG0
         tPnhbn85wMbNPkxKiDsKJeU2mCoHSkjNeHPkkyDqnBDitCRYuMvptxJOU3pV8W1yFowx
         6vcGlZpPHr8kft4e5hEqI9rwGD+yO94HTnoh0fCGTH2xzqHm098i9FO2Ue1QEfy63TXB
         fH1x6kKUsuyxr42K0OW7BKD69oepTodN77UdZ0JyHzo8TaOi3KP4QXNTMi5LEbk/w76z
         JrEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=a/MqV1MsKM3Tv+++o5mf6OmtHqyJW5EY8NKEiXJM3pw=;
        b=y2OOEBx3Q5cHxzftfEsEoiBTkmwiR1RoNs1ApDpcADnGZ56d2pnby92CeICmq4F3hO
         OuUQrPkNQT8K3MMurvJkmU3Ap4rE4o6CDlXIkVr6LfyGO1mPm14GXMKmndMyY84XKoWp
         YUpQ2Xseb8tVm/ySz62RNkpj8vD5a1i9zTwdqCWHMBzzaIRAp3SaYeyTpYReuz1/if8E
         WaMrAPi2A1/i1ukDn5pWv1r1qdDZJnoM42zayg7QD6QKDOFul7sTCVf8BHWXVBBOUdJ+
         jQUWx9xeSZnfY6XHlY8kcpEfhBDj9eDRyCzGqwF/O1YG2nLVmFOclBnGhKwHfzKmNvQ4
         Yq0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LvEDFwUs;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::c31 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a/MqV1MsKM3Tv+++o5mf6OmtHqyJW5EY8NKEiXJM3pw=;
        b=qj7A9ufVjDdGPl7eBtCoHsmvVvry7Y8zJAhH0uPKisC6Hopn8gBzj8SAJTQV7Oaugm
         5GDImpx+H6+2UX0Fgpmay4ezcP/mKVuXRRndYT64tU2dmtAxh5Cc+4akseDXoDiwfd6o
         c4T+QC0ZyMupAA4X3kvZzZxx74lNYE+PBVsDb4+wsy4r+QWXHKClVG4eenAg4zqXLpbg
         qrdyVA/gfgYr6YTGszR2jjxJ1YxnN+aos8uN7hL7Ul9SGjFeDxFbKWTltXxYw4pWowQj
         TM3NEuZEFTEja+kF6W4H4r7yqGNBUyVx5F8V8w6slc9p3Mm2PLXnfPGdygdHWKbLjVfH
         82wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a/MqV1MsKM3Tv+++o5mf6OmtHqyJW5EY8NKEiXJM3pw=;
        b=R4WeMGWiP+KFj7Zu5BrnQOEdVwzMCwoN5PI3OkyIu0duODHHNy0yCkkgL0kHHsni19
         lV2oicQ5J7BIGSmTIsBQ8fSD78lprNdfpAZUi94s3eUMgZHxtEcmhcJ10xrU/9HKyx2g
         4oKO4e97MJQUxLz9QFY0i8VzO/+I1FHty1+7fAoqtQZGRdN3MTEsfQzJYHK2CSYvJuRQ
         NzzcW+E+Kh+oXpa0BUhRzh7GbBBaEyNm1rRDVepGqDQKsFqQdaAFAFvTkP7Wj3P2o9n4
         IldFGsy2STm0tl064FZ/rd6vYRKT0jWEgqlZEuqqaLfCUkyaykQ2xIQQwodAZJdp728r
         Eo1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530WAGsRt/Twm+/sBhxSrTH2O5lqZiVZANk1FHW0twq8KI8cBafg
	tnCOok1u59wiyUhSS24fJgY=
X-Google-Smtp-Source: ABdhPJz/27vYu1jKyLxDQyylXS2JRmUXpL+ukD37WJ9IR9v+bie6i7ut15GXOtOJbQT9tUzugMeg1w==
X-Received: by 2002:a9d:4c9a:: with SMTP id m26mr3477092otf.7.1611327778327;
        Fri, 22 Jan 2021 07:02:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:69c2:: with SMTP id v2ls888696oto.5.gmail; Fri, 22 Jan
 2021 07:02:57 -0800 (PST)
X-Received: by 2002:a9d:19c9:: with SMTP id k67mr3588647otk.292.1611327777841;
        Fri, 22 Jan 2021 07:02:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611327777; cv=none;
        d=google.com; s=arc-20160816;
        b=PO7WSaLNKcQnd3Ptoy4Z4tVXghTVuGMBZKP1rGvytnKbZlvkCG/XpT3SEoXTOjH4zK
         TqJU/M2ZDKgfhuWysUR567rH2WCAnRRI/2ugi5IboU3DwlP6SlNRs0cJjKfyw/NDaRrB
         CF5c2OHbGGKuU0CvexMp4xITjgAruq8WSdEybSvQNDwxpE2W08ksEASS1HDmmBzrdeDV
         Jst+rSdVMo9Nf05Sv25VuDeLlglt0LTullH10MVoAsGehXw6/nd6EtWFr0Hd4OBxi5fb
         yILiTm2BMdBVHBTfnC2UrqzT9b3Za2/fxuQXmWYh/8uKuVk5ek5VDhyRAqaB6vSIV50I
         EsnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OJKWIQqx6v0dlsfViKU5cuhP8gvpdjnjTIz5bInhKHM=;
        b=tuPgMcLwilBBDuV9ep/k4/5qIv+pnL9o+5A5jAWhj04dKobnuT+VoLrpUncbEinYAw
         36B/ugzdkn3oJY+IUCwGMs/bklxyaFl5L6JQXBAWIEOyVmsjTpNN64wPHT2LsfxdYPyL
         KSDkBpX9NjN60iUVA/eEQx7yN9wptL1eM+d5Aah1WTFA8XHmZdutDM5EYc5koWoq3EST
         MrQcD3i2EQgg3dggFonUKL8MLoScX+q/SkZI6TFhRUyxqUSklt190ev4oEpNwUZtJcbO
         1b0X7uC9iOjf9w5hWhMY3neAgepu243TM9dgrTgoiGOvDTPw5vZnD/CtSsLc3EAskoXX
         4h0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LvEDFwUs;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::c31 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com. [2607:f8b0:4864:20::c31])
        by gmr-mx.google.com with ESMTPS id i2si845144otk.1.2021.01.22.07.02.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 07:02:57 -0800 (PST)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::c31 as permitted sender) client-ip=2607:f8b0:4864:20::c31;
Received: by mail-oo1-xc31.google.com with SMTP id u7so860640ooq.0
        for <clang-built-linux@googlegroups.com>; Fri, 22 Jan 2021 07:02:57 -0800 (PST)
X-Received: by 2002:a4a:a9c9:: with SMTP id h9mr3957459oon.93.1611327777348;
 Fri, 22 Jan 2021 07:02:57 -0800 (PST)
MIME-Version: 1.0
References: <20210122135735.176469491@linuxfoundation.org>
In-Reply-To: <20210122135735.176469491@linuxfoundation.org>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Fri, 22 Jan 2021 20:32:46 +0530
Message-ID: <CA+G9fYso4QNbRWdrQiiOiMb5RUr8VtM3AkKEGLasgN+KsPSvDw@mail.gmail.com>
Subject: Re: [PATCH 4.14 00/50] 4.14.217-rc1 review
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: open list <linux-kernel@vger.kernel.org>, Shuah Khan <shuah@kernel.org>, patches@kernelci.org, 
	lkft-triage@lists.linaro.org, linux-stable <stable@vger.kernel.org>, pavel@denx.de, 
	Andrew Morton <akpm@linux-foundation.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Guenter Roeck <linux@roeck-us.net>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Will Deacon <will@kernel.org>, Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=LvEDFwUs;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2607:f8b0:4864:20::c31 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

On Fri, 22 Jan 2021 at 19:45, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> This is the start of the stable review cycle for the 4.14.217 release.
> There are 50 patches in this series, all will be posted as a response
> to this one.  If anyone has any issues with these being applied, please
> let me know.
>
> Responses should be made by Sun, 24 Jan 2021 13:57:23 +0000.
> Anything received after that time might be too late.
>
> The whole patch series can be found in one patch at:
>         https://www.kernel.org/pub/linux/kernel/v4.x/stable-review/patch-4.14.217-rc1.gz
> or in the git tree and branch at:
>         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.14.y
> and the diffstat can be found below.
>
> thanks,
>
> greg k-h

arm64 clang-10 builds breaks due to this patch on
   - stable-rc 4.14
   - stable-rc 4.9
   - stable-rc 4.4

> Will Deacon <will@kernel.org>
>     compiler.h: Raise minimum version of GCC to 5.1 for arm64

arm64 (defconfig) with clang-10 - FAILED

-- 
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYso4QNbRWdrQiiOiMb5RUr8VtM3AkKEGLasgN%2BKsPSvDw%40mail.gmail.com.
