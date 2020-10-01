Return-Path: <clang-built-linux+bncBDRZHGH43YJRBV6Y235QKGQE5AGI5SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBA527FD0A
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 12:15:52 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id b2sf1837317wrs.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 03:15:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601547352; cv=pass;
        d=google.com; s=arc-20160816;
        b=iZmytOAH3lAPtpww16cAY+GCDKR//2LbQxzd5ksMrQOxVpOBF+WoGGUpeeNddaRGiz
         E/dkKyTkuE96WuAT/azcogevzbX0qmx7gi9l9S+L8j/A9qk8UPKgWgmeTi8w7WKVYfM0
         ExFUaZWxhNBLkPGUgv4sndCWzRJ5ftNQOlI3exjkJ1JUWnDWztPZUbsctY9OJTRmIyK/
         iq2153kpFfuGJ6Fvrz4jQUkEeiric7NLL4jodRtEaaevAqBquT9RsgxvyQlH6vVnfMID
         mhXbhFMR4fvwHDsY2v8dFeCERU4rFyZM1m/eRPS/HenS+rGfOEQDFCcUvwHlfe4K9Pr8
         /x8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=l0gIAt657u4uHOD6ixXtIKuxzTwl62IJAngrxySfbaY=;
        b=dTctDEooyiA+n7Q7GY4FXNwtYWmmayWo2t41iKQAIMqSEOKSGJtcdRVYQ4sCYhqYyt
         1GXHdSKtExRIiRiaRDN+dSsoHOQptSrRMOjjcoEolIpbl1Qv60IszMzMAOFd8Dui65Sp
         ANoBIk3ZJY4AAC5phBtgYuHRUuPsxFDFoyyOagJ5Pciw94go0fZsmgP9DnpkNjuxsKzw
         HCaTu/uBN2zPPGcuxYbQOXVhLthoVantJguYby2gyKr9jWAKYtTQz1R8X89dssysDFNL
         Dn0oZhvrKvYER11lXZkldT3b/a5PAtTk7r+Mp6cGHEMmqxo9tL5wCX8Bsd+znKnaCXzT
         OX5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="AK9x/1EH";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l0gIAt657u4uHOD6ixXtIKuxzTwl62IJAngrxySfbaY=;
        b=Fs2YQvnAKwFihQjIAd3iA6M444BHRaTlgZpmQ/C1nt8dXLOQj1bzQ3d3yWTJKO3pum
         yCy3xO2Q4mFiTcMYltxM+10n5tujoY3qwWszIuq0xhyZ/7CHZ0M8Bmqq4NKzUzN7km7I
         ceCFIgm5T1r8t0toszaXq51AbYXcsV8qTALHSGwVtHy8hyMIfjfEH3IYgAfjHBpP3j0g
         imwP5PpN4Nj6EH4Jhj/55/eFQNmrUDKtCdGaTxixbT1EgnqnxCAbDk8+6vk5MzqEokDM
         AImqosKdRw4dBPGA3y6fFvqzUZHE/gukpNcNc2064VOm/O53wPWh8wSl0ez/EJPDWqNq
         ctkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l0gIAt657u4uHOD6ixXtIKuxzTwl62IJAngrxySfbaY=;
        b=Un3X3cXN8pYqGe7j3wxQ6xUtlCyajuSmAsRBLtACnCm/doJ6OEbZx5uWZxdhsQ890v
         alb+im8MRYCfJ5JSBkI0PV1lNxDUGKmsbw/i6ssSLD5vIm//vFLRB1Der9W2mvKQqeSB
         0MjqQG98lqhBu4qHPYEIcNqwIEYqNN/iWDuKrkEs/Z2xeqDy4LEiON3a5BAxqAJDRIDN
         EUeRbNL/4v8HbwWEPzYF+4xaRU1D0/o29+2PtXXlU0sY9yq0l7Rx0o6Rj0Nvc+wdwnPL
         t2O5oN1lGuc2C5/mhkTOSw14MCpMZZ2Rg5W5ImUQvylZSiFonA8dM1/9T9hxDodPaoFy
         lolA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l0gIAt657u4uHOD6ixXtIKuxzTwl62IJAngrxySfbaY=;
        b=BHNmxEkSe/liQCRB3ijT0dUacs8sB0aXcSS4KrjwAmV6zmvNqXLx5vHJ3w6nEvRKbd
         lN+eFJm8iIfsBQYNOasrsbVxbQq7sftEKjHy4gEzBD6NlPCH06sdsEX/tBgc2AkBOXQ3
         zkjsrsll6o3/5DDnBxFUdQO7q2fESPwsERK0p3jo4KgGGusjXSO1XI9ZqvZSLtrjwagf
         lzx3XOLKTvy7KbNo3aaR9uWColXSKe6rAtYzh+/BrXGGyKPaZscCHbM9ZG8STCPOVzaI
         KCAUA8/Xx8bDCVy2bdvRWphrKCiWIsqiabYiEohJTQNxeOxsKFU8CoGiS9NVqZMl3xt3
         KAwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TvMilzsUbpmrvYvDpbm3QcCpM2iY7KpDPkRBeEfnmjkFItT/H
	mjycTo1M3cMqGrHElEYDJGQ=
X-Google-Smtp-Source: ABdhPJwXmmLtM2R5MFQXRN9Zvum63Vmgcfud+Z0KIOiuN7EKq9v/YZLaaQSzkYEvW7vqWkLKqGbJMQ==
X-Received: by 2002:adf:9504:: with SMTP id 4mr8312026wrs.27.1601547351889;
        Thu, 01 Oct 2020 03:15:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls211673wrx.3.gmail; Thu, 01 Oct
 2020 03:15:51 -0700 (PDT)
X-Received: by 2002:a05:6000:118a:: with SMTP id g10mr8305681wrx.67.1601547350955;
        Thu, 01 Oct 2020 03:15:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601547350; cv=none;
        d=google.com; s=arc-20160816;
        b=Q6LjEZ2EbE/uuPixbs98yCc4uu+vLWEeXzsq4BzRV9ktD+SYg6/sT1jMsQ7d8gKRtD
         SwWWmCqexKoE9ancCqXPb0M77JOQ8j19oXiIxo0gJNrhGKy2RTfoUupaypyx77NGcfAI
         a3VobRp+f8HOIHLDumamsxSIfTkWoDjOqkHDr8GC1HcYARz4CbOth1O1TV41A0KYZa1R
         CuCmw0d6ROYX8LxUp9xjLZKuYhimWTSuHXHysTvLgVyhYJVnhjvz1Cxe8ptQXx68Wq/X
         PhckMt6xnOb/ghzfru99iWumbaAkUswFD4GFiC8Z7fK29RoktUTSxvhIN7iF8ojB0eVk
         Ll4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yP779foQVZTd7hBfYzc8x5HVVPD9H4ll26i7mjT38To=;
        b=GxinBMLXSJlQyAiSLhzNaf+wbhrtacHcc8G8Jjp/FC7aIZEYN6BiwkI8ImrmBzfPAn
         Jecv0E+bsgwnLT42qEFnGSz9dn+tgxgopnwxr++hV67ccPt9R1P88O7FYsrb0wdUiAAx
         KwQ/fZ+mpOYvoyCD1Jz+QdCTh6t8amwTc3h+WIhsKJjDjNl0GAE7npg5gv6/Dh+B32c5
         DIE8bG1d7VdHjzHChO4gBwmn/hb+6chQ8AOBl/TcOw4TkivljlMW3mKFurjEY1AnpQ8c
         QiMd9XvguYbOtrR8wNnIaOLGjr9vL3J6v+bHLEs116eWVFQ03TABhLBmcw6duZpYfmkQ
         ZsgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="AK9x/1EH";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id h2si84734wml.4.2020.10.01.03.15.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 03:15:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id q8so5871864lfb.6
        for <clang-built-linux@googlegroups.com>; Thu, 01 Oct 2020 03:15:50 -0700 (PDT)
X-Received: by 2002:a19:7e8d:: with SMTP id z135mr2532283lfc.158.1601547350476;
 Thu, 01 Oct 2020 03:15:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
 <20200929192549.501516-1-ndesaulniers@google.com> <CA+icZUVgfnVQ1=zjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA@mail.gmail.com>
 <133589afbe999347454dfcc46ae782897bf9e3a2.camel@perches.com>
 <46f69161e60b802488ba8c8f3f8bbf922aa3b49b.camel@perches.com>
 <CAKwvOdkhyvTpY6pHT+CLSsBFuKRWsXucjbwN_tyJAsryZXvG1A@mail.gmail.com>
 <417ffa3fd3fba5d4a481db6a0b0c9b48cbbb17c4.camel@perches.com>
 <CAKwvOd=P+j0RaQfHsXPfB0EL3oRgAu8Q0+spUOn_v-p2+3=3pw@mail.gmail.com>
 <aefe941251d5d58062d06099afb58dea1d1d4e17.camel@perches.com> <46040e2776a4848add06126ce1cb8f846709294f.camel@perches.com>
In-Reply-To: <46040e2776a4848add06126ce1cb8f846709294f.camel@perches.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 1 Oct 2020 12:15:39 +0200
Message-ID: <CANiq72mSjs4myQQtUoegjRggjTx9UF70nAcWoXRoTeLMOuf0xQ@mail.gmail.com>
Subject: Re: [RFC PATCH next-20200930] treewide: Convert macro and uses of
 __section(foo) to __section("foo")
To: Joe Perches <joe@perches.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	"Paul E . McKenney" <paulmck@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, 
	Josh Triplett <josh@joshtriplett.org>, Kees Cook <keescook@chromium.org>, 
	LKML <linux-kernel@vger.kernel.org>, rcu@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="AK9x/1EH";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

Hi Joe,

On Thu, Oct 1, 2020 at 12:56 AM Joe Perches <joe@perches.com> wrote:
>
> So I installed the powerpc cross compiler, and
> nope, that doesn't work, it makes a mess.

Thanks a lot for reviving the script and sending the treewide cleanup!

> So it looks like the best option is to exclude these
> 2 files from conversion.

Agreed. Nevertheless, is there any reason arch/powerpc/* should not be
compiling cleanly with compiler.h? (CC'ing the rest of the PowerPC
reviewers and ML).

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mSjs4myQQtUoegjRggjTx9UF70nAcWoXRoTeLMOuf0xQ%40mail.gmail.com.
