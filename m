Return-Path: <clang-built-linux+bncBDRZHGH43YJRBIEFZOCAMGQESTOPMIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 866F2373F37
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 18:06:57 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id b16-20020a5ea7100000b02904037ac1756fsf1572935iod.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 09:06:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620230816; cv=pass;
        d=google.com; s=arc-20160816;
        b=wf2VGSCEj/V2NSlKtJKQG1oIjKffli9CECB99nWDAME0jc3VQxpqt2oEar76O+w0py
         yzBtj6RW0TYLiNsx8Jhshm8G8A253VcP0gZjM4ynZkFBYLQ0cG1AjRP9lTW+eIKE2HTk
         30Zq9TvDZGKq5H4rdfjlVdfE8zYJt2MzTjQh7ysHEXEtux/MdKZWPPn5+F3nu0+lpfH8
         iaclo8vEbUzCtHIcq4tCRgYz9H1ogHNYX99Z5Szl0pXiS4eKB9Va7JT7D5C5iVPE2Nbf
         fRLOejkazG4+2J26XJ/yL47sSSaCrU3rsb7J78DGSwChmn2g5TRzJTBABf+rGzlddqJo
         UOpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=sBRXW8t+zN82g7uZkCSyjV6VRs+gNiNEm+miE2+bvC8=;
        b=ScvTX/KJplvK0VlCKfhNkV6RXlRz2fhS9qvZKErWu8BrU6LrZHeCGXRsypHJIBCwKg
         OzrX7X3fuvSA+WxI3S5HECq/3Ps7RUMh9glUhFcMuSqjOOcjxadUh6BNEfnu+DJlw+ZF
         CL/OpCqxp5+fZ+6n0GBDyBpv4k4cRuo+2F/kmJKIRo9YmSsqO6ZOPC99JLBQhXHTLBGx
         /C714IqCmRev3R30ZdEkWcghNPWSDg3kLe2GoPmRyVhQ1sqVwqMxI/J0yJIGn1lJPFv4
         QLtxaYn+WV01h7z3VnA6S4F10uq0M+z6VzmzhwJFPhix6P+ZtAWYK7KwmxFhgdLxZ193
         Eahw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a7eYkZ+M;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sBRXW8t+zN82g7uZkCSyjV6VRs+gNiNEm+miE2+bvC8=;
        b=k8962sqZEpsrPGnE7wyk6DrzsK1z+2QRxuyMuG9VOGm7dTergPtR07ACRQj2m1ezcr
         uF/IrcxsemF+m2H1EvjwGQpTRM9+fdKN45Lh/RoBqbd/F6BjAearQtwBqfJNLvV0gcdo
         pwCcYvHQp92/gtjKwl8YgqegjjLmvhN8w9d/xZ1XqoQ9VE+KWpdOb9WMUJYAk2XxND88
         JhEtUV4kPuPl+1ZNRwZYUyjJT9i6Egv27SSBS0f1zzbvkSuERKB3dbezGKcmqplg9BoD
         EqwOu0NyD5glhL4eUptqoHwW0xuZdyo3eOHw7z5nULC4vfkim0Om8r23gxbablQHlMDm
         s4xg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sBRXW8t+zN82g7uZkCSyjV6VRs+gNiNEm+miE2+bvC8=;
        b=QAhjUHV2k/xLq7h8OAphzrVlb9i0KX8mUoT8wtbxroqsM23KciAby+akj0aSOIpRY9
         Viv6zi54Xvr8fxVKg3ibmIcOtzkXto88St2xMg2FwSdVNaFMcg6G5ElpR6rxS1zgw+aj
         vetQKbGWw2TA35EAvnoIVwGxRS6bGFho/UXeHudsL4xMSuf0jP97FScYk8+xg5QsDn3E
         JpZz1JNQN50nFNK79rMOcuJoosPfodKvq6UgF1SdPGP9it27favhvjGXI55nxZlpWIGm
         hM8QCFYj26r4f+SbqQRY/P1wYhrVDqw6eEQffo+vDACq0XDmDd14iOlQWPeOwDTDBOns
         FpmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sBRXW8t+zN82g7uZkCSyjV6VRs+gNiNEm+miE2+bvC8=;
        b=al1UW/l2I5MKrx9MMBq5hqqAWDKhlVQAL7IYtBPhA6ww+bAc9LwO+DtdqFVbQBV3gx
         dQ0JQYf36ipnlFLOO6/gohNuGJpSlWAgsUuAR86wpxBuz83tECgpIVpw0IYkotV9z+B3
         zLDETJxREA7UNNo9SDrZbwhADHnR0jNLMv1W/FTQFfQ1omO7xLm2+ttd3XouvS3iSOyg
         Jiof7KvvIeQjmAolcj832bqkCpivyjRr4cTT6DhBEcAa+d5o8vVtbvTRw+5yWOpZWx1T
         tqX+S2sRPXKaPTnbTobSMTuGTP1wH6BIdFqQFd2TstKh8BZsVl/bTzi1JZP5/UiDY3Dh
         RWrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531H5efR+obIphJtJ1JKyq9oI/mEis9qhp76FK5FYirnbssKcesu
	M9Q9sEVwQEW0BYhBLgKad0w=
X-Google-Smtp-Source: ABdhPJxEp/wV3hHAqptx9uVfU6x45jQ88KinBgqcc16RuRePYqTl2Z+cW2cmeeaP6UAa03e3FS0yNg==
X-Received: by 2002:a02:b398:: with SMTP id p24mr30098444jan.74.1620230816384;
        Wed, 05 May 2021 09:06:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:c00c:: with SMTP id u12ls797117iol.7.gmail; Wed, 05 May
 2021 09:06:56 -0700 (PDT)
X-Received: by 2002:a6b:690c:: with SMTP id e12mr16318672ioc.69.1620230816057;
        Wed, 05 May 2021 09:06:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620230816; cv=none;
        d=google.com; s=arc-20160816;
        b=EDX9PXkui7zW9S3CKWmB6AbOLG+G1FxC6+m4Xe5VrGVn2flZ+xOwxBl3Jeat4sewJd
         7AXlhM+7U5swfvHy4XGjXf4jWI7Xe/iSXmTlKNcfYYrCER9pYcpJCLC2bVduSSYm8qqB
         Cix7lvtPs3LPCmniwXt4QH/kh9YIgCKacG12DSxpYu4Wl+Aeiao8zecPeyUDAQQD5D+5
         OIMo2FFygaq5h1ib49jJJYqSnltgWfPRtqgHjAXM03DgU2ts+0OW8hU3fkSF8K9DsG10
         /40qzg6wHSk6FyNwopevd+XuUgtzzNp4iygRjYFftetMrIJ2sUgVlxDAo0DKMg+1NOAK
         YthQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LcLBjTr6PtB5gcjnwMykXk7R0waSGnrXkO7bNa1DIzo=;
        b=zl52W4Bi1M+YTH4Y/ft2HE3zJl4b0Ykyu0THQQaBrCD6cXVViHZqKNO4vuhqMVGI8m
         7tEgg72DC2z0twxXclILA4BepiOVvu1XBmx3Os/nvpZ4ByH2l7ac53HhQVoXzKXdPWLf
         Pn6kx/6HvMz2fwIG48hTG9zMWID1HJZxLKvfA8jXy+3+oVmhtmElHCB9DeC1uu99fGvq
         DfcuLw1pTZLHuNYEJM4/AiQjCM3q2ztuM7hpYa5AEAFy0WSmENf4cdFYtM7ntKPdxFSt
         VlxE+858oubcGiOy5aOBSetiLtSBlMg2oJtboTiolW3lnOt3XF27YTASI9OhegTWxIZt
         4LMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a7eYkZ+M;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com. [2607:f8b0:4864:20::b29])
        by gmr-mx.google.com with ESMTPS id o3si886408ilt.5.2021.05.05.09.06.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 09:06:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) client-ip=2607:f8b0:4864:20::b29;
Received: by mail-yb1-xb29.google.com with SMTP id v188so3369880ybe.1
        for <clang-built-linux@googlegroups.com>; Wed, 05 May 2021 09:06:56 -0700 (PDT)
X-Received: by 2002:a25:d45:: with SMTP id 66mr20346980ybn.93.1620230815765;
 Wed, 05 May 2021 09:06:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com> <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <20210502093123.GC12293@localhost> <CANiq72=aK-JJhpnZdeeGBtADrnXhyEp1Whw5+5rK6a4u85PhxA@mail.gmail.com>
 <5256ed6b6f7d423daeb36fcbfc837fbc@AcuMS.aculab.com> <CANiq72mq-SP5n_0cVr+eaP19xqJTP15V+JKUeqLiT910x=3NdA@mail.gmail.com>
 <3ab89c4f8b1d455ba46781b392ef0b2d@AcuMS.aculab.com>
In-Reply-To: <3ab89c4f8b1d455ba46781b392ef0b2d@AcuMS.aculab.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 5 May 2021 18:06:44 +0200
Message-ID: <CANiq72kPx48wTKCfgohwb2CbAf=SG3gyhv3htd3n_17aGAq2FA@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: David Laight <David.Laight@aculab.com>
Cc: Adrian Bunk <bunk@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Tom Stellard <tstellar@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Serge Guelton <sguelton@redhat.com>, Sylvestre Ledru <sylvestre@mozilla.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=a7eYkZ+M;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, May 5, 2021 at 4:13 PM David Laight <David.Laight@aculab.com> wrote:
>
> Many years ago the company I worked for found that the unix 'utmpx'
> file was getting corrupted (due to incorrect locking).
> The functions had been places in an archive part of libc (for
> various reasons).
> Getting the fix onto the customers machine (we were the OS vendor)
> involved determining which applications from 3rd (4th?) parties
> had been linked with the broken code and then applying enough
> 'gentle persuasion' to get them to relink the offending programs.
> Even this can be problematic because the source control systems
> of some companies isn't great (it is probably better these days).
> But getting the 'previous version' rebuilt with a new libc.a
> can be very problematic.

If you are a library vendor and you provide the fixed library, then
you are done. It is your customer's call to rebuild their software or
not; and they are the ones choosing static linking or not.

Sure, you want to offer the best service to your clients, and some
customers will choose static linking without fully understanding the
pros/cons, but you cannot do anything against that. And you still need
to provide the static version for those clients that know they need
it.

> No because there are messages sent to system daemons and file
> formats that can be system dependant.
> Not everything is a system call.

That is orthogonal to static linking or not, which was the topic at hand.

What you are talking about now are dependencies on external entities
and services. Static linking is not better nor worse just because you
depend on a local process, a file, a networked service, a particular
piece of hardware being present, etc.

> Remind be to request our management to let me remove all the C++
> from most of our programs.

Yeah, the problem exists since before 1998 :)

A stable, common C++ ABI etc. would have had some advantages, but it
did not happen.

> None of them actually need it, the reasons for C++ aren't technical.

Well, no program "needs" any particular language, but there are
advantages and disadvantages of using languages with more features
(and more complexity, too). It is a balance.

For the kernel, we believe Rust brings enough advantages over *both* C
and C++ to merit using it. C++ also has advantages over C, but it has
a big complexity burden, it has not had the luxury of being designed
from scratch with decades of hindsight from C and C++ like Rust has
had, and it does not have a UB-free subset.

> That sounds like it has all the same problems as pre-compiled headers.

PCHs are a hack to improve build times, yes.

In Rust, however, it is a more fundamental feature and the needed
information goes encoded into your library (.rlib, .so...).

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kPx48wTKCfgohwb2CbAf%3DSG3gyhv3htd3n_17aGAq2FA%40mail.gmail.com.
