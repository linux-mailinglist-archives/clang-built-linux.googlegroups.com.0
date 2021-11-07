Return-Path: <clang-built-linux+bncBCA6JPVV7IARBMNQT2GAMGQEWCFFPRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FF944724E
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Nov 2021 10:11:14 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id c13-20020a05651200cd00b004001aab328asf5136438lfp.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Nov 2021 01:11:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636276274; cv=pass;
        d=google.com; s=arc-20160816;
        b=zUCGzQKRQOaDETYXvJ1CPE/b21Soa6R9XBz2Q1wFDCug47mLenRRr+MiR5rwrfdkme
         kbjYrFi7+IcE7cBycCYswiAm215segP/vdivjdq8uSEItVtATKZoyunBmKzdMx1gpVQR
         HfTanFig3WPXPyh7JtsnooQI1cQDV6+LQhiwG/auOqQBEB500kjFKFQwyBcT7kkiQ73i
         4lVVSaIucoSk2+WDqF94zjhZ39Niekmt/A8beFLVc7gBws2XAMpPwsZ794mSjVH61c98
         U9QHQJE0ABi0imXwSPipmq3mM1SBdcIns59+P+qbiy+y1V+mQ7y0hMTDcdTyCW/zjT/o
         XFtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IhDxMvRq6U9EQcjmvC+o3cjPcI6HHT7HKN4i3B4gklU=;
        b=iEd+RVF/5Zy/4qkhC7+kYq/Fc+Dtg+IHMVpcIVXo+4rxBxWaPaGL7Jpdr9TKKoymjn
         yg54cjvE0vaurmfiP0yXfrmi+6dPhx+wrR4R7AfpWNMs7ni8UKJ1GPvnnFwVuyG9Nbk9
         mj/L6H0LDQ+d40Q2+lP12frzf9kEb0d0bMJV7S8AqdForDaFzRAkeVNrZWLgsFCSvHUH
         MBkVG6Ex3/EZc/5VdvKjTuCR6pcVqw9+x4RXRU54OtFfvS5uk9/k/lKwRbDF0P8viF0H
         ByHi8qIoSU2v+r84NKmfdCYmwsSPdM2wDYOJUfXlG2DAubH4xPrcjSajFBUtzrQ8AsJx
         seMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=ltjqBaQT;
       spf=pass (google.com: domain of oupton@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=oupton@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IhDxMvRq6U9EQcjmvC+o3cjPcI6HHT7HKN4i3B4gklU=;
        b=g8zzmp8em3V24yvJar7570edlU3X6Rskj57kyMm2GxNPjO7qZKpwxQjkpk8JMLkEPg
         SRFmoknbq78Ixk+95NqcxuuQgn02+5lUuyKy+q25BH0+wOV5t8QncOu/YK9sgtd5Ezam
         UrYWu5Qe9dIvKB0UxbuZnuWPgbh+1cigqUsPBKAf+Qzu6DobMldwR6RBGU5SuaesWHhx
         ruN8PjL9vP1Ijhez3SsMsusE1VLAp4qNxUqNHDXlsV04fwZeFBHpMScmam0cch2GMgLJ
         4omXB45Ga+DJo1nV2DOpEQpDuM6KJWzYKLeIlk+Io/eKVLt1qU+06+iL96C/oxK5SMrz
         MzqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IhDxMvRq6U9EQcjmvC+o3cjPcI6HHT7HKN4i3B4gklU=;
        b=ANodYB7Uo5BXNRGeSyFDEAWR+jHJElibZovY4hdriHrv1KqFW5ZQWlXDIv6Hc3OlQq
         7AXSoTXGOP1q1lYfPV5gnISGdlc9UuVj4HGvSIibMAXkFeIIFHe1AF4SU0H3UEs1p7z6
         pFN6JboXnOOARDYJR1rB7cnUBf6LpPkw0Jy+1T/tuv+r0ieQhrah+0bv6gUe4YqNWmDV
         y5aHywpOqX1w8rTQgjVrtZ578v2yw41gnKZ/YRSDp+o+wlB3Zuxg3b7mVokTMHN2RD4M
         x3cYOB06u2/aCoiiN7BteLukc6b3NSwyJAMNR6o0GpmJdKtRV+3Yfepa3i+Rm/SGOzwC
         xbSA==
X-Gm-Message-State: AOAM531Tk6esPLLs3pwvYa3EtiUnrwgxOFlh0PMZRwNLEA8yvpu1jc+p
	ZjPndHi6cUaMtamPCMEjjoc=
X-Google-Smtp-Source: ABdhPJwbx8qd45ZLnfARV6mfPomloLo4qU6fEwNYQ2a/liEWoBYGl5CqU88a9RbB8a1zOu4oYikwfw==
X-Received: by 2002:a2e:b896:: with SMTP id r22mr39291433ljp.341.1636276274058;
        Sun, 07 Nov 2021 01:11:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:31d4:: with SMTP id j20ls23223lfe.2.gmail; Sun, 07
 Nov 2021 01:11:13 -0800 (PST)
X-Received: by 2002:a05:6512:694:: with SMTP id t20mr64318780lfe.558.1636276273102;
        Sun, 07 Nov 2021 01:11:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636276273; cv=none;
        d=google.com; s=arc-20160816;
        b=StZGkNh+4bfib1cUn04kJTSCrBektiZnR5yOP9DMlRgAoeEuHwQDhbdiRja0BEkXYx
         HYqoK5xdsm5Dh4GqIqKAMfUgAs17kFUpf1Swc4oR0d6H2MLu/mtG9Ko5LyXraPFFd04M
         OrZp8pIHKHBPY0Hagbi7dayW0Bsk91PIhmqo1ZuqAKUl0Em266Ajri/gq/W2XtvhZnZ0
         lmTHTK1pdLYT06F/lxLmvYbor96uo1o5Al35Q7j+uy/cyMbTbJv1GHg0T5gI356/Q4GP
         d3GTD0dLUoOrqnrTHLKjR6cfTil0ma/As2cKSG4B7Oui0sgoYlwK/rIoRDVtySgbakzK
         0oVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nJ7aYIZ+WsDLrlqk8rJxe0Wwdo9H7Tvr0wNsilAVGy0=;
        b=SOQkniwdiC5Fd1P+trj3Jqp3CiQ6U/s7JiaWcgtqtwFB6L5xIpyhR8tGISQtOKFoox
         By6mi4Z/lFAasUBeNXUXvqFCY/vNmcd5CuP32KdSz20dCAQf21zmPuPMozK4dxEVJgtS
         tS81f5RM9ubfJvGMKejR5BnSi9EeyNfFDum3ee5Zce+gaYYFx/IMZnLsHXF2yQyxh2ja
         2DxgM72JQwNtyiWnn5TpqLtnDIsFkODQNlAtjYjjbsu0P81wwK1b7Bzj9VJUDz0peMjd
         eDcl9Z6LQVC2lskDs8WEF2j4eMqNFXqPl473+ENgoE0ZVVON4woz1/64ZgKGH38KSAgm
         9yPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=ltjqBaQT;
       spf=pass (google.com: domain of oupton@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=oupton@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id u19si21203ljl.5.2021.11.07.01.11.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Nov 2021 01:11:13 -0800 (PST)
Received-SPF: pass (google.com: domain of oupton@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id m5so4993345ljp.4
        for <clang-built-linux@googlegroups.com>; Sun, 07 Nov 2021 01:11:13 -0800 (PST)
X-Received: by 2002:a2e:1546:: with SMTP id 6mr43780092ljv.479.1636276272476;
 Sun, 07 Nov 2021 01:11:12 -0800 (PST)
MIME-Version: 1.0
References: <20211107090144.3172241-1-oupton@google.com>
In-Reply-To: <20211107090144.3172241-1-oupton@google.com>
From: "'Oliver Upton' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 7 Nov 2021 01:11:01 -0800
Message-ID: <CAOQ_QsjTfuASGw3raFxkqrGQBsL0-xBmbCf6NBjHeUbWxq=J0g@mail.gmail.com>
Subject: Re: [PATCH] clocksource/arm_arch_timer: Fix bogus -Wsometimes-uninitialized
 warning
To: linux-arm-kernel@lists.infradead.org
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: oupton@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=ltjqBaQT;       spf=pass
 (google.com: domain of oupton@google.com designates 2a00:1450:4864:20::22e as
 permitted sender) smtp.mailfrom=oupton@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Oliver Upton <oupton@google.com>
Reply-To: Oliver Upton <oupton@google.com>
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

On Sun, Nov 7, 2021 at 1:02 AM Oliver Upton <oupton@google.com> wrote:
>
> Since commit 4775bc63f880 ("clocksource/arm_arch_timer: Add build-time
> guards for unhandled register accesses"), clang builds emit the
> following warning:
>
> >> drivers/clocksource/arm_arch_timer.c:156:3: warning: variable 'val' is used uninitialized whenever switch default is taken [-Wsometimes-uninitialized]
>                    default:
>                    ^~~~~~~
>    drivers/clocksource/arm_arch_timer.c:163:9: note: uninitialized use occurs here
>            return val;
>                   ^~~
>
> which is of course meaningless, as we break the build if the default
> case is ever taken in the switch statement. Clang does static analysis
> before deciding if the branch is ever taken, leading to the warning.
>
> Fix the bogus warning by initializing val on the default branch.
>
> Reported-by: kernel test robot <lkp@intel.com>
> Fixes: 4775bc63f880 ("clocksource/arm_arch_timer: Add build-time guards for unhandled register accesses")
> Signed-off-by: Oliver Upton <oupton@google.com>

My inbox searching was poor, there is another thread on this issue
where Miguel proposed tweaking the assertion such that clang no longer
emits the warning. No longer having issues with the patch applied [1]

[1] http://lore.kernel.org/r/20211014132331.GA4811@kernel.org/

--
Oliver

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAOQ_QsjTfuASGw3raFxkqrGQBsL0-xBmbCf6NBjHeUbWxq%3DJ0g%40mail.gmail.com.
