Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBGL2P7QKGQEKT3KPAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 875CD2EB54A
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 23:17:42 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id i2sf501556plt.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 14:17:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609885061; cv=pass;
        d=google.com; s=arc-20160816;
        b=z5GBEwUeeHG5cWt8t8ynV5jwscS9lphbPTyLa2A1gBwI46yNyx6wj8sE5mFNR6VRvz
         FQGyns0NJ39cdfxZ6rWUkfGq4j3Vf6QPSANGi2g7+IzFjMxulDb72hnIlZee4g9lRWLA
         9Ejf3SR0sA/MaBbIjDUg9ZiB/0bapYvLtaVxJFbHhmMCm+Wm5uAUsXhR6eWsh9K1Iyph
         4aRxBN3bo3QCa1lXsQvodigIRlAZGDLC8+TeqQUem285v7sAW7Y6IJfUwVe0zoHYp/IC
         vwdct5XT9IHMk+XhtMoWk/6+B58/vl0RuSINWj0U0WrD9l38jGoEHxfB4bIQOFBd8dgT
         IF8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YRVu7/PU0YCq8bUz62AwdoXUbEike+74nF5z1IJhbig=;
        b=lghPsShVAZ47/A+uOFbXWsFZT84D/ft0PzJlvm0v0XD+6O6MLOIYl5yE287+HATgQN
         dvcifUe3xb1oiacVhRAugiL7O736hNv+o4f1DgQs7vvs4CTGLq11M52LifHS+0YDLBoE
         35TQuHE1ufzit/whVxgwWUkwJMGxDTSJ2nWA33EL7/JNWJ3hCFtiZhMtpP9iw92Q7VGV
         nwDgXir1nwoxpRbex0nbY5YkWlr1tDXgi0lVKpJnqXHDOErS4IlTpE5vvhPcN/MwyaFS
         /4O7VQNq8irhTXg7DrdnO++p1x6Mjy9OeYGlworArqJqO/LqndAB7v9fPsJlIHgPPpFK
         T9yA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H7NU0d3C;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YRVu7/PU0YCq8bUz62AwdoXUbEike+74nF5z1IJhbig=;
        b=go3ykRbI5M0tGZ0BE55zs7AEUov0SYWNYsg2Qop/2GLTz3QMR1n1c3SMxrUGICwTI6
         ShVobgzKewriDXtkPOAxqhkspWjj46M+JZBHlA7LQ7MMH4wGSodixnEDqo8M1A4OQOMS
         lAbNkjoN2Nd7gAwvi2zPIV67nzuT1t2gheg7LFVLwRMMYaxzvMRAdTKm7tOngg5RbYvi
         USSlGBvvh/20HAYiPo0zEbWsSrvt+J8OV/fQiPHSPysMjigH5mMwK7qWp4vdJxb87DI+
         S7siUcDLsix6gh9LbbI9y1+nsWo16OlH2q5icZtFiU1VRUyZELZZ3LUX8Ps7EDl+5d1N
         yLqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YRVu7/PU0YCq8bUz62AwdoXUbEike+74nF5z1IJhbig=;
        b=EAz/wpkFP24K3Mev9RLerlCdsP5NnrxtRZH9Tz+G6dk4qmtqEsfuWMJrxX7ICDllQp
         j6Y7HMkS5/wf2rWpLU6J6rW3nbEWgCt+pFAQskK9s/Lpu6mKc65WtRiFxQY4QRi9KoVk
         mZh9a96ybwslSITF4YeJ6D8q7L82jSAIT/pJ4CD1W/1uMEpTW0Ir5xWfadHICN1x+c47
         z+1r4h/tSJQ9GQUw6ABzh7McGUOqdxl7sVEohp9mKDRCI4TMGEGoJee8PFcBppRNzsMa
         hO+kr9S0VTRbj9IhuC2tY3tuMWQeTLqOLxpGkzf2P6WvfuAINgU2erUFlrBA/jeGhr3n
         9o5g==
X-Gm-Message-State: AOAM532aEJF5QHwquDQDGxKwDjqpv8Q+3yimeSAh8Jwu+UNTuWD+ZA5q
	/xRpiM/QrHtAx5mEYCz7klA=
X-Google-Smtp-Source: ABdhPJwscCYpcdWcs2jafqnlQt9jcXbCe1dLXLGK1iQW5pMaEIfoLTIKgffOp2Vi1lanCepV9sxXDg==
X-Received: by 2002:a05:6a00:796:b029:1ad:6394:432d with SMTP id g22-20020a056a000796b02901ad6394432dmr1280648pfu.36.1609885061025;
        Tue, 05 Jan 2021 14:17:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:f0f:: with SMTP id br15ls372494pjb.3.canary-gmail;
 Tue, 05 Jan 2021 14:17:40 -0800 (PST)
X-Received: by 2002:a17:90a:7844:: with SMTP id y4mr1274214pjl.68.1609885060400;
        Tue, 05 Jan 2021 14:17:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609885060; cv=none;
        d=google.com; s=arc-20160816;
        b=gfLnbB7Es8PznVWJ5ilGFhpUWfHeccIS88JhLbLmVa/geFZMkh8xpgYSLVE5YoRbIl
         y81CdWLirFw/7ND4HRaktBM8DNCLbNp5qiyON6Pub3epXO8Lo/CAWTJjwr9O/UGdvbYl
         nVKz+KVDRC0YZ89fFUFPWNv50FdqMyfpcwm6uW3aGrBs0HLTMwENdeROTOpNxgnZMfiI
         dhkFYigEoxDzo8tNLkG5NM4b+SFZLs9Q9XNXqCDNoc2voRH5MVt9fHtbbDCeI1PBfBfm
         pVGdAUmJ2WrkPXNb3biXiyKqryXjwW/HmYxqx4utw9nzQZdVmB+UfanFVNeODc8FVa3j
         iUsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+JK23kDLwGA2IZalKz72nGpZJSKK6hFEZ1Jp1FvORLs=;
        b=oGts/BgdK6jjA7azSDFE3jbXwNPvb/d75mOaVed2GJYtBKfn42vjc11I8HGCyIe2CQ
         EbdLyImpO207tfIVzMX3TcsJB0pYeCPrh20QjpouFe8HyYQoWyj0mvSW9JogOrG9x2Hq
         91W65YWdBcR+EZnSSryEthKrBnAHCTpTd4G0nwsaETg6gklDxVBaqHXgBixRg7S8HXwI
         taHMXaBY3lgiKXSRWqK3kj+f+kJOmpMQG6/XRCWWjxZtxDMaO0Grw5NyvEmopo2ODRL9
         EvdSCiAdDfQTsOXdG+PhaQsNEIw1DXJWlmrsqRo9tsGmwmYb2WNEOgoqhkPxGhHq8QSH
         PJHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H7NU0d3C;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id q32si69076pja.2.2021.01.05.14.17.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 14:17:40 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id s15so493664plr.9
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 14:17:40 -0800 (PST)
X-Received: by 2002:a17:90a:31c3:: with SMTP id j3mr1203957pjf.25.1609885059844;
 Tue, 05 Jan 2021 14:17:39 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdnmqUUfawmCdTX3My31QqyJi3KSJ+1PENrn1fSaUCLSSA@mail.gmail.com>
 <CALn+=JrshHxPBdJbiBcwmMBGKr4v9G4_K+f1ccyz6UcWSK6MsQ@mail.gmail.com>
In-Reply-To: <CALn+=JrshHxPBdJbiBcwmMBGKr4v9G4_K+f1ccyz6UcWSK6MsQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 Jan 2021 14:17:28 -0800
Message-ID: <CAKwvOdmfK_tVb9wEwYBrirJktF64Wqe8ZH6qNGSh6Y5bF_=4dg@mail.gmail.com>
Subject: Re: LinuxConfAU Kernel MiniConf - LLVM
To: Andrew Donnellan <andrew@donnellan.id.au>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=H7NU0d3C;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631
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

On Wed, Dec 23, 2020 at 8:03 PM Andrew Donnellan <andrew@donnellan.id.au> wrote:
>
> On Thu, 24 Dec 2020, 06:55 Nick Desaulniers, <ndesaulniers@google.com> wrote:
>>
>> Hi Andrew,
>> I saw from https://linux.conf.au/schedule/presentation/4/ that you're
>> running the kernel mini conf.  I'm the kernel maintainer for LLVM
>> support, and was wondering if it's too late to submit a talk proposal
>> for your miniconf?  Joel Stanley gave a talk last year
>> (https://www.youtube.com/watch?v=6d6NGrSHyRE), and I'd like to provide
>> a similar "status update/how to get started/hackers wanted" style
>> talk.
>>
>> From https://linux.conf.au/programme/proposals/ it looks like I missed
>> the CFP, but was still curious whether the miniconfs still had
>> room/flexibility.  If not, I'd love to fly out for my first
>> LinuxConfAU some time, maybe 2022.
>
>
>
> Not at all too late - I'm actually trying to reopen the CFP right now, just waiting on the organising committee to update the site and reopen submissions. Perhaps email me your proposal?

https://linux.conf.au/proposals/179/
```
"ClangBuiltLinux: What's Next?"

2020 saw further adoption of LLVM for building Linux kernels by Linux
distros, kernel developers, and CI systems. But what tradeoffs exist,
and what should be the focus of 2021? Come join us for a quick
retrospective of 2020, help us review outstanding work to be done, and
learn how to get involved and participate in kernel AND toolchain
development.
```

Sorry for the late response, totally unplugged for a much needed
reboot over the holidays.

--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmfK_tVb9wEwYBrirJktF64Wqe8ZH6qNGSh6Y5bF_%3D4dg%40mail.gmail.com.
