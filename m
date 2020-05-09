Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAOY3D2QKGQE5B3B7KA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B97C1CBD20
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 May 2020 06:05:23 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id o103sf11208386pjb.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 21:05:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588997121; cv=pass;
        d=google.com; s=arc-20160816;
        b=rxyfnqn5iJYjzhYR17eTEs+hSO7Z+e+0KcU4ZsJlrfvTDcFtyKV0JetFhWNbO8FYXj
         mYQWAWASViqra2p/2LX+erqh2I7XlcHcIj47R7/ahWFroqtNtcRc7q/nQYqDXaSGhRIr
         80Ny7BXr8PPNPrLMHJrNneUillHM9NsV2TlTUdlgK0AfTn3D5CojwJWFvqD/xv65nniH
         c7sqvLw7tPsd/UF6/Q4jQpWGttg1lLCPngewApbkCM1jaWD9l9XWU51H+Q3QWBYz5Myv
         YCcrQeXitP0VS7peWzDE9jirvkR+IqH2rrARJpciRHeoNTgMxsuaK1qI/NGSU8VyBUK4
         pIEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Gzxclfba5U9r+SGj66z2PS/evZozYal1EPmNsBYXpkE=;
        b=aMZERsgzTDyDNJvl4aiSp/2l6E4kDF46FOhVAiRn88UZ3FWfp/+U1NkI32/rwQYmA4
         Mem0kez/X37KIXEquJEvS36C9dcIVmrkLnBJf1H1G2VGaTGjyRXL2Nv1anU5f1dKKnGa
         Qg6K/wS08wOryO/A3rCTo9wnxMWsf7nUsGuGiTJidnTyDe8sH/Z7ZsDbT6mfQuCEOoOR
         qPo1W8BFKhi9UvyEN0ep5wXhniPKrqQBG8xrqdDOhhxYn9YxEEt4+veGZI2ZsWeuwrGL
         91+MA5IOCnQKTbhdP0XtQeAtYQ4IaI+5O/9zTyGGdToPbtv3b1wviiPI4UKjotR/TjFd
         u1+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r36zQX2d;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gzxclfba5U9r+SGj66z2PS/evZozYal1EPmNsBYXpkE=;
        b=b9UAIeiXxZdQnPSMB9FB27Q5hpJ66PT7BaIEjoxezIiw8C8CD+LSfMxIdjFtPHnrhq
         hIrpqk+H6KDK57sfdaS1TZIeA3YaFqtVPFeGEE8aPJUbz/QDKtDEJamItl6mrGBKOxeK
         E20Svk74NM8fQ6B2mtIXj0IVJpOxkqmv/vfCWBP7V4zCye0vmm5au1CDe/KGo7sCmCh1
         7P7WnPDlw8dCBo6ZgGJ46oFWwypmh529PpYFf+Lwxt9F5TBEoUnSqCjZvsRD6IYhge+4
         YkbR7OtcLvo6gas4PojJUVWnrrcrgDKk7fiEdE9Tdk2RvZwXWUzGFHxf5qEJQkVGaivo
         6dcA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gzxclfba5U9r+SGj66z2PS/evZozYal1EPmNsBYXpkE=;
        b=jW5XwQ+bl/GWAubUHtfJd33sSa1JZP2wZGsdmRMaCrdPa/D5sK1pi2ABKFtTtvVo7I
         w3nP6e2xUk28Pxfu6fXGXwSOOxDYpaMAlSUd9jEcLxy71kTnCacyjuDmtKOgKvyKWaUf
         Nfcrvlb429pT/DN+2i7dxkptnS3p6gxMTxcthc+h7XysfIgYc635Y1ikKnI3S3OB7VpP
         j6nSH/QxPbHemlLkAZBnQemp2XZ0psnGfe+psBSOpuwaKb5xxEEDQ/KEextQSqVB0S5c
         ssEPc6PlBkfPugCgwSJXXW6FIxX1On+TAKUzlXjF+phvsV36hPXkaUNPLVT4rhl86k8C
         FxPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Gzxclfba5U9r+SGj66z2PS/evZozYal1EPmNsBYXpkE=;
        b=VrKf2VhgTGlJj9Vui227WyqeaIVVIHbvZ/eAZsfwaYGXpUsQfUgdeWDgxX4STVfSdk
         bBt8/ee3EJAmmpVpiSIe4TrTL0tvtMIJALG970eiOAY39gMbAmKNZkqrqqP4hu6eUuAi
         AtbnPpQpPTSbXlBD5Fp9H+03GaVkNqpiw92DP4UYqf1qm9dsrL1SoAZhzMuih/y+mfoJ
         rEPFJHoXVwyedUFewQM6azEI1iPh10GsYl6zeD+WY1k5vkp6x+3c67WcW0xiiL2Y2wKm
         cRdsU21UopWywxPURMl8HSwDWMAbJ43w4VM44k093mf043wF1Oly+cTgp9j2vbejHs6H
         Twlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubHovBQbD2E8D6tDdrqIovf/y2Lvb71CWvQihKK6bHze7V6Qot9
	DA+uxsS/P/GAZD+7DsEqmi4=
X-Google-Smtp-Source: APiQypKTKkvUqTfz5jT9wI0dd88rDqxnTWQS0GC96PhAJQtwAP9DojQlknkllw69N4i3cbZZI7OLEw==
X-Received: by 2002:a63:d80e:: with SMTP id b14mr5154526pgh.9.1588997121307;
        Fri, 08 May 2020 21:05:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3543:: with SMTP id lt3ls13478448pjb.3.gmail; Fri,
 08 May 2020 21:05:20 -0700 (PDT)
X-Received: by 2002:a17:90a:ce8f:: with SMTP id g15mr2209010pju.203.1588997120871;
        Fri, 08 May 2020 21:05:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588997120; cv=none;
        d=google.com; s=arc-20160816;
        b=H7xi+8ccLwWe99M/31Ekn5iKmOSwr62yzM1tQhgZ3OcGSl996mfODlqvokvbmhJdfx
         Bf8BfHAcfUhyrdv5HTT0HVq3XoKWFZa+VLlERisrC6tZrKLhuqKgFCU0oHdAxSU9LHh8
         SqXyGVbGzK26smVN3CF9E7OoiTJtpDPFxRbCqGrLCU9OOx9AoSMojSi9z+1eDPU1M0Ft
         JshazpOpa5zvCBs/1tvR/mkRrmU9wagYifOiXfi1MJXSHrWn7QrVtEoW3zkF9wwZ/lXw
         XRhkaaP4mDNGKtpuNTGg/VjNoCfhKih5RT45CmH7OxHhpvTgLzG9cLEF26DnwuelwOHu
         Vj/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tVNrffTQtB9Ag+Goyde3nzq9Velm5k0Tce4yjioaDWo=;
        b=jDDknzwHyjiRU1EfC9EDMiXf3rIa5vlPr0ZkD6GrJ18dWlEasHsCa50ukChS8W6Wq6
         oiRxHEzX5fCUOS8mYKffgqj5X0zJ0n6BBQKTd8dvqcSJpp6t7KYIkC5CjU7zJtQN6AJf
         VjUxOTzwAwYDYQreS5T1W64OqXMWiGrWxOQ80uvABdHWhfNYOuYNFZcfYuVFYeQiMUM3
         HYPVg64PLQNTcKEz05w4ts5qAcKyVNBnW6qX0f/Y0jHby4U9+TbTWLe04EG4iNh8rvMj
         d+1trQJGpB5zafGlfr2oY0vp8Ng1t6mWhcqeoD2Xa+vYDcIH0dw8WaRqjSv/uqy+rE5p
         +K+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r36zQX2d;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id g23si228844pgi.5.2020.05.08.21.05.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 21:05:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id k19so1611205pll.9
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 21:05:20 -0700 (PDT)
X-Received: by 2002:a17:902:bd47:: with SMTP id b7mr5657726plx.79.1588997120325;
        Fri, 08 May 2020 21:05:20 -0700 (PDT)
Received: from Ryzen-7-3700X.localdomain ([107.152.99.41])
        by smtp.gmail.com with ESMTPSA id q7sm2499320pgs.13.2020.05.08.21.05.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2020 21:05:19 -0700 (PDT)
Date: Fri, 8 May 2020 21:05:16 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [INPUT NEEDED] Linux Plumbers Conf 2020
Message-ID: <20200509040516.GA1158@Ryzen-7-3700X.localdomain>
References: <CAKwvOdmG04V9VPtfGKhWYQ6t3YP5OHXUGJsK=+0b4ZZPVrSuaw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmG04V9VPtfGKhWYQ6t3YP5OHXUGJsK=+0b4ZZPVrSuaw@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=r36zQX2d;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, May 08, 2020 at 11:40:59AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> Hello folks,
> Linux Plumbers conference is scheduled to occur Aug 25-27 this year.
> It's not clear yet if it will be virtual or held in person in Halifax,
> Nova Scotia, Canada.  I recognize that it's likely easier to "attend"
> or speak if the conference is virtual, but it would be good to meet
> again in person if possible and safe to do so.
> 
> https://www.linuxplumbersconf.org/
> 
> Based on feedback from our Zurich meetup, we planned to hold a
> MicroConference specific to ClangBuiltLinux at Linux Plumbers Conf
> this year.  While we probably have a more general session for other
> kernel developers to attend, I would like our MC to focus on issues
> that we need to or should follow up on since our meetup.
> 
> The conference organizers would like more information about the
> planned MC; this is not quite a formal "Call For Papers," but more of
> a list of possible topics, which shows we have enough content for our
> own MC.
> 
> I'll post the notes I took for followups from our meetup as a
> refresher, and try to clean them up for the conference organizers.
> What I need you all to help with is to propose other ideas for
> possible topics.  Again, this is not a formal CFP, but maybe more
> brainstorming.

Some things that I have recently been thinking of:

* A "where are we at?" kind of session/talk

  I think that we often get focused on tracking down regressions or
  keeping everything afloat and we kind of lose track of how we are
  doing.

  * What architectures do we have working?
  * What configs do we have working? What configs have issue?
  * What LLVM binaries have outstanding issues on certain architectures?
    * https://github.com/ClangBuiltLinux/linux/issues/514
    * https://github.com/ClangBuiltLinux/linux/issues/602
    * https://github.com/ClangBuiltLinux/linux/issues/666
    * https://github.com/ClangBuiltLinux/linux/issues/732
    * https://github.com/ClangBuiltLinux/linux/issues/811
    * https://github.com/ClangBuiltLinux/linux/issues/942

* More focus on stable branch testing

  We focus so much on getting the master branch of both repos working
  but I do not think that we put much stress on the stable versions of
  both trees, which are ultimately what most users use. I have tried to
  fix that this cycle and LLVM 10.0.1 is looking to be in a pretty good
  spot against several distribution configs.

  I have been working on a framework that tests several different
  configs in tree as well as distribution configs to try and shake out
  as many bugs as possible. I am not totally happy with it but it is
  coming together:

  https://github.com/nathanchance/llvm-kernel-testing

  I'd like to run that against LLVM 10.0.1-rc1 and reports the results
  to let it be known that we care about the quality of these releases.
  I will eventually start testing the kernel -rc releases for the latest
  stable (5.6) and LTS (5.4).

  I know that KernelCI uses distro binary packages; I know at one point
  I did a survey of distros and what version their clang package was. I
  should do that again to see where things are currently.

* Evangelizing LLD

  grsecurity put out a rather interesting post about using LLD with GCC
  for faster kernel builds:

  https://grsecurity.net/faster_multicore_linux_kernel_build_testing

  It might be beneficial to talk more about that and start getting
  people into the LLVM ecosystem there, instead of through clang.

* Evangelizing clang

  I have a fewer people who are very anti-clang for various reasons,
  including licensing, code generation issues, and lack of speed. It
  might be interesting to try and come up with either rebuttals or
  other good reasons for using clang, such as different warnings and
  point to bugs that it has caught.

* Talk about what is and is not working with regards to the greater LLVM
  and kernel communities

  I think that the kernel community as a whole is a lot less hostile to
  clang nowadays but there are still times where we can get some
  pushback. Discussing best practices when reporting bugs or sending
  patches to try and overcome some of this might be nice.

* Some sort of call to action

  I think that in order for the project to continue to move on and grow,
  there has to be more resources added, be that money, people, or
  infrastructure. I personally feel like we are reaching critical mass;
  I'd love to do more but this is merely a hobby for me, I am a full
  time student and retail worker in my "real" life. Having some
  actionable items in the way of how we want to try and get more people
  on board is one way to try and avoid that burn out.

Happy to hear comments/feedback,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200509040516.GA1158%40Ryzen-7-3700X.localdomain.
