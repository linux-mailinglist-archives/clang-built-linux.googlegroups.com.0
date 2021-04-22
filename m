Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJFDQSCAMGQE6PZYQNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EBB3679A1
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 08:03:22 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id m18-20020a0564025112b0290378d2a266ebsf16134815edd.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 23:03:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619071396; cv=pass;
        d=google.com; s=arc-20160816;
        b=zQLdoyqxqako75wO1PCq9r+PVta0u0yojgUhsd+zLgOL79ARCkMuKfjJh3XKeV9D8G
         vb5dV4TO4tSKF9GBi2ndMd1azjdbRQ5NH8oipeIJ3sMfPTbGppnEAm5AB+mWed5njVmd
         NZHgo0/+VfDev/mzqmfVjY8qBYxOGhu93xPebRmoq69HWxEjYLJYCOq12n+7oZfJtfoO
         dCesjxS26tmJAEqvnm9/OYq7eMHicsfCXCrRmgpv2onvGSl5xZXZtzT7XvTkUP8iF2fZ
         1notmeD2az2VV02O8mGY2pMOouce73v7P4rNfd5xGnV/L5T0KGXVr2mT7Tt31rvTv64U
         Yc+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=zZa1xpgajgKCD2GjkJIyG3zYJdPGDZCMwdn+FebX7iI=;
        b=apZIuctLIxPXt5NmyfFlf765pib75wj7jm3KPzxAXbtkHhJ8zyT7oCPMtWQQHMMbpd
         29O/EXQ2P6CiNEspMFqxDwh3ZYfX9SCTvHlVcKsEZQn+SIwmkjJHhIMSEG7tUHUCKQvR
         ZEv1pzC0PmV95UbH+g4Y3RB9mZRew4+fbhId1wt0svh1xL/AV3hcqOfVSzbZSyVYDu8Y
         d5y37lelQGcg7YanwQ5RdiDoROSJBNkK6qurTN2tBV1MvYoailj41LdCGJToN0xleJbB
         hdwejQXCwf8rWGJCFMpRS62vKrrkdiek5Emk2zQgBDPcaiFi+ptFyGpSaig+WFGbnIx2
         WweQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l+3O2rLm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zZa1xpgajgKCD2GjkJIyG3zYJdPGDZCMwdn+FebX7iI=;
        b=O3ZqMFzxjGNaLOrLw3hCBrR5PPsP5epAi/7lffn+zSqwddKajgsAW9YeiOd75O+Olw
         ejQPx8gqkFkCXnG02nHv0Xfbu1FaEoU4B2lTKTUWVCgV59ki17gIEIaMZFfgtBL08TCG
         C82KBo2TTaYn7pCHS3Ubd3ixMVBgdFf9+10Qt7OGaKobZigPWUHkYOg+pAeml9scYd++
         0lHhg/v05QhAz72yPvFsIYTb9l7flujnhJwg+qUzQ+qL5LvgCWR7KpRur3Gkl7M7R8yh
         7neNbcKjr5Gp4cU/otrx+2sM0MxV8uSyiuI8JKbjtdAE9+usWBPe5EWp7X4s7s/mzLr7
         Wtmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zZa1xpgajgKCD2GjkJIyG3zYJdPGDZCMwdn+FebX7iI=;
        b=KtY13BQeSBlaPmZXAKLjGUO0qiWzFiO43PymRIZD6rhqNAfRmEcgiBkBLVBDwmD7QM
         uUpCYK1k3WZP3/VuHEZS1nae2vzgNUqHc7ulfOjGXUmfNo458FH4ilJbAPSjRL3KYUTb
         kNzd3itkueGE/6v0pBhinMBltl1CJyEpzdevRm0LBYWgWqmhna6uyY9FK1lxE3YM3c80
         XzwCXpTQA9f9bS71nuZfRF+q+0xcC3McETBw6Z/e91KA2668Rs1vJVMqoIiB55eVoYYh
         PNb8fXabahGVIv5Zq88NLCHnPcLA9ZuG4sowNHT//WWIBzAMK4zvzYZcCjZMhQzgmr+3
         e8cQ==
X-Gm-Message-State: AOAM532iN1qyy2wxZ0rr2BCbU58VfQgtRU+2kOOImDK/YfmQYjKYN3Jb
	3KUHDH5okoMw6pxPqQpWDFo=
X-Google-Smtp-Source: ABdhPJyizOCCtCzt7QDVoPWgUkNp2h/bSrNjH5mzvpVQYR52VR1FNarCgSGsRE3rwndPuq+lxQZHuA==
X-Received: by 2002:a05:6402:138f:: with SMTP id b15mr1671558edv.121.1619071396708;
        Wed, 21 Apr 2021 23:03:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:970c:: with SMTP id k12ls2229964ejx.1.gmail; Wed, 21
 Apr 2021 23:03:15 -0700 (PDT)
X-Received: by 2002:a17:906:8921:: with SMTP id fr33mr1542017ejc.151.1619071395884;
        Wed, 21 Apr 2021 23:03:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619071395; cv=none;
        d=google.com; s=arc-20160816;
        b=aLxPtfaI78ZHTGdyWIpZ8fJnf63uPY6qkiwwk/2KGnDWzC72iSdaoQreI4uHoS9Wg2
         r1hKz0VOce/HknBLEDpCCFXIVegWfl+XVV3XDSOHDkg21+a1imFc3zQ+ihEkq5Bb+Tq8
         KeoOfRP+b6qxdecSZ4t6CBDbN9gQ5h3sgVvLvOMrbP69UXdKD8I9hF9gdy7RhSTM/KA7
         RFPiCp5gZiNIKnAkphR+E2yXeeiPhrQgjMNy847cMP0JTtjmkcP6SzmBS5eOkO5iZj+X
         0pu9MR9W0Gei9VHR0UOKPdBVAtjILpw6LSVUBhTALK6iK7eReT8JDP9a17nqnnSj6WOG
         8udQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=bj1IThlkI/EV+QtjkIjpzAu8mxAbwAy4hqzz+eDCG6k=;
        b=KDyPZKNkmRoa01FiNScfX6vGgBBEHg4uMOEtPlSvR8pYUlg2LoOXY7ScxUBTBHNskC
         ES/Tal4YY4pYpD87GB+JGJsqjec4e3HT01PWWVoUi1nGVW8B3N8XVQvHdCcT1wU1NaJH
         tZEfueenRuP9xFKx/2w8vMhgqhXz/00FGq6rP0M3CO9wEPW3KVrRFjQjzhuU/4sKsOqU
         i1rCZKdbO0lLeEJNjPSiTAaMYzTc/TJNDhUPJDxzC3+DizJ3ASATIVdOu3OkyLqfV6HP
         0GAMbFKKSiHky3TYYZfPXUdKXhLsUWHkZE0Twk9mnx4zGCr6ExXflmH5pWF8dUGBzpf5
         C8zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l+3O2rLm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id h1si355018edw.3.2021.04.21.23.03.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 23:03:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Received: by mail-lj1-x22f.google.com with SMTP id b38so9306409ljf.5
        for <clang-built-linux@googlegroups.com>; Wed, 21 Apr 2021 23:03:15 -0700 (PDT)
X-Received: by 2002:a2e:88c6:: with SMTP id a6mr1316394ljk.116.1619071395037;
 Wed, 21 Apr 2021 23:03:15 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000eff40905c0894ce8@google.com>
In-Reply-To: <000000000000eff40905c0894ce8@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 21 Apr 2021 23:03:02 -0700
Message-ID: <CAKwvOdnq+9wNZwhmKV3HBCL_CX_W3Cfer107yEsZKJqUpK1dXw@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - April 21, 2021
To: Nick Desaulniers <ndesaulniers@google.com>, Android-LLVM <android-llvm@google.com>, 
	clang linux fellowship <clang-linux-fellowship@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=l+3O2rLm;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f
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

Hey folks interested in tomorrow's bug scrub; if you have time come
join us at: https://meet.google.com/yvj-tmcy-jup any time 9am-5pm
pacific tomorrow.

You'll probably want to rebuild LLVM tonight with all backends
enabled, and perhaps even the m68k backend enabled. ie. do not set
`-DLLVM_TARGETS_TO_BUILD`, do set
`-DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD="M68k"`.

As a template for closing bugs that are not or no longer reproducible,
might I suggest the template:

```
Thank you for submitting this bug report.  I'm not able to reproduce
it using llvm @ <YOUR LLVM SHA HERE> using the following commands:
<COMMANDS>
Therefore, I am closing this bug report as obsolete; please feel free
to reopen with additional steps to reproduce beyond what was attempted
above.
```

The goal is not to close every bug, but to see if certain bugs are
still visible.  A good comment for one might be:
```
I was still able to reproduce this failure using llvm @ <YOUR LLVM SHA
HERE> using the following commands:
<COMMANDS>
```
The key point being the date on the comment will help us understand
which bugs have grown stale or not.

Probably won't be closing out any feature requests.  Might even get a
few bug fixes in too for low hanging fruit; or new bugs filed.

On Wed, Apr 21, 2021 at 10:53 PM <ndesaulniers@google.com> wrote:
>
> http://go/clang-built-linux-notes
> Meeting: Hangouts Meet
>
> April 21, 2021
>
> Ppc32 boot failures
>
> https://github.com/ClangBuiltLinux/linux/issues/1345#issuecomment-816864777
>
> Debian LLVM patches causing issues
>
> https://github.com/ClangBuiltLinux/linux/issues/1355
>
> Gcov shenanigans
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7af08140979a6e7e12b78c93b8625c8d25b084e2
> KCOV issues resolved
>
> CFI feedback
> Aarch64 per task stack canaries (Nick): https://reviews.llvm.org/D100919
> Alignment issue in blk still not resolved
>
> https://github.com/ClangBuiltLinux/linux/issues/1328
>
> Double CI, oops!
> Fortify source
> Merge window opening
> Bug scrub tomorrow!
>
>
> ________________________________
>
> Sent by http://go/sendnotes



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnq%2B9wNZwhmKV3HBCL_CX_W3Cfer107yEsZKJqUpK1dXw%40mail.gmail.com.
