Return-Path: <clang-built-linux+bncBDYJPJO25UGBBG453PVQKGQE2K4VUHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B5FAE080
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 00:13:49 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id g126sf20163838iof.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Sep 2019 15:13:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568067228; cv=pass;
        d=google.com; s=arc-20160816;
        b=W1zhf9fdRfRto7O0tPRU/jaXIGOe/u4+aqIo5p9MQuZ9+oe5+LgBSslaTRgRCrxizM
         ZEA4s0iab5ZGzS8maNjqCX8VP9LMlCRTs9EWUogg643BYXkmmP4Ynnfwo1YSMvN2dBW4
         hFZCdxdVDtDR0Xf3gfX+7V+g/ZrIif9RH1MXaQg3HDU8a6SGTTp6eQJ77rNlkD5Bb/BA
         iEn9/0ee0Gp70NfFYW8Ecz2A2cB0XyjAeIZTCoQRmfdu6owbsPb85UTyE9bPOgKkp+B3
         H0/3UDcalAtJ10QV6tPRlsUtceIMAuxRTz9xor+zUtlFVDBmlu0yuIwjZULCoce+fGHj
         riIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9iGdmeFNZGseXQFOSoJfo4qmILwNqo6hx80yiPUlnz8=;
        b=pzn/jA4+3yicaXfrGPG+yPpWXtsvX4RDC8NltWTQRraKgzOVZQ5RP0XeQ3aGbxV8BD
         yX2IN9id2WeLf+ekF2gCQGPNeFjJ9p5LRbzjkeYKML47wPN7x/i83A6/Sm0M7n0sZPzh
         cqkczRc2SQmhBzCZ8tm4feTjDW4ZVO5sQhd/IG9oJ8GVPX7gW7EyS3U4dK3NOLCV21F5
         ugn3u5PWGTpsPZQHoeY/UNh3nvB44MjSZUaNgXcnrS+uySgOL+rSxA3o0vdmfk+1oYia
         XV5gpPFQ3BRmpzp7IZdeaR8MMumgtsxG3QuvcE5dpMLDroD5UvPXDnmqs49F/7lGx9NI
         6W1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NxdyUEb6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9iGdmeFNZGseXQFOSoJfo4qmILwNqo6hx80yiPUlnz8=;
        b=tl/GD8Ueum3lmwqTPugn8TEXxBATyBcS6RKiACNVVKZea3/c1QOucZe2jzRG8twZmh
         dlhaejaY3e/jdbG7y/NigP0O9AseP/l14F21HBBaSWgiPwnvVi3bFJfnWazlzi6b5y3M
         5jwp+ooroc2xBzEyKtMG1wHcnrB2d2eax6w+46TEUMsW4OGAKBO7zEwHTAwqm8evUDeM
         hIXoFIWlxulRhuiAGYznmghHWiA5H0+TuDtAaFl++/LOXyfz9I1LlAEmTrFZx4kaNHrK
         94HtK8XM7RwDCX/alzIDf+4Fgpbmd+JFxLWnClGZ6lLdouqXdcQ8cj3sK1oH+hVPpYZX
         1cDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9iGdmeFNZGseXQFOSoJfo4qmILwNqo6hx80yiPUlnz8=;
        b=bwZ5KfIglupR7RYv1hSDBPDNKHVG1OYCJ/Rv3mgVOi3JzUm3sR78OsrbPWZ1D0C9as
         MXAMRH26K9mVM58X07vPPX6HBgv9uMYC8qWagrkA4zPjOfDpPygdlpZENrIPdbtXyGyC
         b4OGqXI8ggKYw9JSVenFGyZkzEfVOooaz66rg9CJHJhTFA83Yb680WxwNkDqptd2JQxE
         ZhTBi9W3T0ZcOOgMzGLepQao6V+1Fa/Wdq7nKROD97YFlBQzYmXSwrCyIXNH469jWow8
         5Wgn/mMJj/h1LBkli70m4dlHdtsrnNTzIQ2fxE7Rrj1zIuAv5an3OXLZDUDC3uIJU6y/
         HGoQ==
X-Gm-Message-State: APjAAAXIt2lSBkHoI56KoXuIaHSLREIiAU6MgX/Cgrx3J2YAteWCmRtt
	/eIEEccgjHtpPSP2RKEDSN4=
X-Google-Smtp-Source: APXvYqxj1X0qUVvdnmfKKXegWMSDOGMij4apMB4+skqmknGf4NnlQ1vsgAoGupjtuAufClZP4QZZBw==
X-Received: by 2002:a6b:7207:: with SMTP id n7mr18283416ioc.86.1568067227878;
        Mon, 09 Sep 2019 15:13:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:289:: with SMTP id c9ls1802856jaq.14.gmail; Mon, 09
 Sep 2019 15:13:47 -0700 (PDT)
X-Received: by 2002:a02:c6a4:: with SMTP id o4mr29113585jan.6.1568067227575;
        Mon, 09 Sep 2019 15:13:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568067227; cv=none;
        d=google.com; s=arc-20160816;
        b=PEjfVhg0E88Hrzfo7cg38IcpvYRkYSgQ/TQfFZJvTHr37cddhd7Gt3pxB/aUUuwS4X
         JpzT+Rc1fTLdhNxlBJYu07VvocPEljXp9IxinM0NvQ/utyERPiCK2ZSZzePIJzhFX+IT
         R+NMOZ3Jj0oZf0nztH3gRkT6VDLcs3BhhZPrxzEZ1gbbwMtY7mhlFFyRA4pNu1arC+zi
         fWWrVTHQZYbIkUl7BnkeVAxXBQuaqY+x9tNuq4uHx4x2UEI0Lf/zYxuiC172kS01g6aY
         N0SBobp+ZE76jCkzkT9O1RAYa9mfoGrc5tqLPqdTnjcaGkZkLuNFNIzELJj/UD28Hk9g
         CZfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TSTVK2Z5qn84fUhIINKzcnP6L0AbWB3aqiyl8TU6D7o=;
        b=aEtELL3VmS8eNzx2OIv3KnmQD6qN3i01E23K4sjMCSRhJQDWUf2RCPhXel9D8MkMRV
         pT5ord+wEyK0BLizaJ5r41PqnkgZaAJuM/hhgvxvU0IjHAn440NsZ9Gk7vYw8KgEby3e
         KHVxBfu6/6Y3M0A1sFB9GWwiudpxU2XGdqP5dsi+iIFAR7A3t/kecvkfkr3lT3flaKSt
         q/LQzNK8DIzGkAe9sv3mzxBtnkw6V0SvpLcT26Gj60s4WbmKeILrCZMDeK7gzozfzI3q
         QP5rFHU9sRyoDoK4sOnasaRIoXAZoZ+sMLK4KeQzd3mUri0KtP6TR2scd0quQYlaCq32
         YaUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NxdyUEb6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id l124si675456iof.1.2019.09.09.15.13.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Sep 2019 15:13:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id f19so7328479plr.3
        for <clang-built-linux@googlegroups.com>; Mon, 09 Sep 2019 15:13:47 -0700 (PDT)
X-Received: by 2002:a17:902:8484:: with SMTP id c4mr26693712plo.223.1568067226540;
 Mon, 09 Sep 2019 15:13:46 -0700 (PDT)
MIME-Version: 1.0
References: <bug-43121-8919@http.bugs.llvm.org/> <bug-43121-8919-cA4BWUkQgt@http.bugs.llvm.org/>
 <CAKwvOdmAakhyifHBQunZxjegSUkBbuoDdcbVbsfTpH9HHUsvAA@mail.gmail.com>
 <MWHPR02MB24795CAA0744539FC6DFB513CABB0@MWHPR02MB2479.namprd02.prod.outlook.com>
 <CAKwvOdm8GPyqxPyWfdsBydDTm6cHZUrPuN0e5HgJMQvOe1+ziw@mail.gmail.com>
 <CAB8jPhf_Lj4N8YN1tRpM2NMR0k+uvaN6N=cp4Z7RSEG_CaabPA@mail.gmail.com>
 <CAKwvOd=4hWG1MhPSou2jfAGLpCEEh=tQ+sJNnmiz5=VakGWr8g@mail.gmail.com>
 <CAB8jPhfZUgVKq2=nMjqgFVA6_2wT2bsNbd2XPn5UYomtU_iaJA@mail.gmail.com>
 <CAKwvOd=vmQL6pJVCGkxee3LQUEPOyeGG1AH+syya-FF4gGtpaA@mail.gmail.com> <CAB8jPheC1sb2t9tiGyr0FOJRSCS9Vo60LBpSM5Szu5rR_CaRdQ@mail.gmail.com>
In-Reply-To: <CAB8jPheC1sb2t9tiGyr0FOJRSCS9Vo60LBpSM5Szu5rR_CaRdQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Sep 2019 15:13:34 -0700
Message-ID: <CAKwvOd=DRLcv7CgLygG8COxabZaZDKcWxxOeFG8cwYZONpHupw@mail.gmail.com>
Subject: Re: [Bug 43121] ARM: invalid IT block in thumb2 mode
To: Hans Wennborg <hwennborg@google.com>
Cc: Eli Friedman <efriedma@quicinc.com>, Stephen Hines <srhines@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NxdyUEb6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Looks good, thanks again, all!

On Mon, Sep 9, 2019 at 2:12 AM Hans Wennborg <hwennborg@google.com> wrote:
>
> > Cool, just landed my fix, and Eli put up another patch that fixes the
> > arm32 issue for me (big thanks Eli).  So having:
> > - https://reviews.llvm.org/D67306
> > - https://reviews.llvm.org/rG7a7bba289521e6d4da199565cf72dc9eaed3d671
> >
> > in clang-9 and then that's zero bugs related to asm goto that I'm aware of.
>
> Thanks!
>
> I've merged these ones:
>
> - r371111 for PR43121 (and other PRs)
> - r369705+r369713 for PR43243
> - D67252 / r371262 for PR43222
>
> and waiting for D67306 to land (it would be great if that could happen
> today so we can get rc4 out).



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DDRLcv7CgLygG8COxabZaZDKcWxxOeFG8cwYZONpHupw%40mail.gmail.com.
