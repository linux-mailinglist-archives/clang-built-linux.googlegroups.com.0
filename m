Return-Path: <clang-built-linux+bncBDYJPJO25UGBBB76Q76QKGQEQK36ZRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C012A5B82
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 02:08:24 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id f8sf7396854ilj.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 17:08:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604452103; cv=pass;
        d=google.com; s=arc-20160816;
        b=ff4c1kQHgCmdrE2/wTgcvFajxT+FTyMTuMj7fk2lBaFT/w25Y3vYFQrVlXfWuMkD+V
         1jC3WgQ1bM9DIxVGsp7iRx8X0mLmlyd1EA9MUTKwjokaGC2ag+QkK6HxegYEVELyJluC
         03obmDnAaxPSFpqpXBfEc4W9isE5ww6h9RbitUiX0twcaHtAYuYpfYutm0AMfBZkQ2Sb
         lvh9Q/c8b25YqGUMlbAXc+YuWun81D+/R+HFMo9liJnxmFYmTe6OawpmX72BiIrerYPo
         5zjnBiltN4KDzdMz31ZYOwaoLTPoOasFAIGMJm2Qivy+uATpKx6balagow06QtcawTVL
         6MrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=e2ddsBetCT498nBKMhHiZ/9mTqWjTXBExbx/x5wyBdU=;
        b=OrNHkrM4O9oalwGVYmnoqqXL0WdIuMV9Yk0Ou6NoEOroN5Gqi9OJirMowplnkYym7Z
         hdkbgEnczYNnOj4BHMBCWIQk+8q57DjBfKkEgIz2gL6jPQYD2fyCQlKCJ2bZcDek/KRp
         dFHf2uZxI36xNkrpL77M4ixxxRC4fv4+KW3Y7HMtzSnCAfR3kzSsa2X9yAL1/sI3d01I
         OFCW+h7uyR2QpgwDVfUNOJ3UskRg4rDFW1ihlgoY2QNzYukNBg0I3eAely1/9pq9y8CN
         60uLKGtZ4g87pSLGopzB+W8z0WDLitKxjVrX/3lanjSvbffk0h5ewCXUzafDDEo80bcg
         4Byg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lvA7m4DD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e2ddsBetCT498nBKMhHiZ/9mTqWjTXBExbx/x5wyBdU=;
        b=kLDB7Xz0KVZ3RHOegE6V5QH1Qf9um3bgOkRpY2ptR4qzD0+nV1Hie/IEs3QA7kBqdw
         1fOkFEvB0j5qEeD9h1aNj2ly7KV3rtQ6+HIaXX7oG25JUadb8Qyz2kvID8YU8BHtJTlv
         YoG47ow7ZY28GhQEPfbNnyDu+BK27vLqu2BJ5W0uSPl/wyk85EHUTqE5FDN6xmmw7UAb
         BaTWzCu0mw2BXYGL1RLDI6Fh1ZMjyUqvw2d32C608nz8Zou7paehuoyIoaVAYXI33ZOD
         Pr8mPWJiLEyYSQ4Fpph2sjDGbS9dshn5iAodqJcoPsRF3e9stIQAnMRB9cG9RGK3EISi
         BOew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e2ddsBetCT498nBKMhHiZ/9mTqWjTXBExbx/x5wyBdU=;
        b=aAdQW/F6eezX+6S5jkV+UkM0lmS0HmBlUYv04Txwpu78+IsrTNsivfbBkFmzbadm2+
         DDCad5Jb691iEKe7KkWX2J5klz28WKK/IQukK2larwEX9CfCh2anFRfRxD6deXa0vJ9G
         abSq9yt6fSQoL/BWIt8OhiPwdi7EZvR7u746SnKgXjIIWdRIS0gQ+IRDNVgo6DOoZDa8
         rF6FBiIhoA59/SipzAYV0b5jyjqtK4rcboSz0W8gWIB8S8jQ53CO20/DJPgjnOplKpNt
         1SZOQSzQZQhnPJwlRhmrgLZRsciIMclNY6u9yMLYWca1Qe2RlZItq0fkSiu7JlR5vkwU
         qVZg==
X-Gm-Message-State: AOAM533FgoVaPH8Wc7p7gZskx+26Zodz2hM9CPpyWj1trvP1xEtqsRYg
	yf/9PuZ7y8vsQ4TzTkatpao=
X-Google-Smtp-Source: ABdhPJxf9pUaAvH5q10TkrvOszV2qZZq20yK/HNTu8BpMs5N+0HZvxyUHcrpWSUD5LSoAIVfU3jPvQ==
X-Received: by 2002:a05:6e02:106c:: with SMTP id q12mr16751067ilj.41.1604452103264;
        Tue, 03 Nov 2020 17:08:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5e9a:: with SMTP id f26ls52840ilg.9.gmail; Tue, 03 Nov
 2020 17:08:22 -0800 (PST)
X-Received: by 2002:a05:6e02:2cc:: with SMTP id v12mr17328484ilr.115.1604452102807;
        Tue, 03 Nov 2020 17:08:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604452102; cv=none;
        d=google.com; s=arc-20160816;
        b=jN0sZVTHvwGZLSpCdKlFgBMUXY0o1XOBdnSA63Oog2yaxtfizUZXjK8J+gHfVg7sXh
         7eI+efRzrIL9nl0XknmouHUbgKu7F2PeP56FunMdaWY2f/7Vun5w4E+GBPfnRlRzoOf8
         2PDVqgNNJnbnmBLmNLnXVU6KpjU6siqMzMWcnSqoGQKgHqyJnQFXnx45nw8XPYyNjlkX
         WkAeesXXyaRMqOq7wEuGL8m1L2iDO4r//7RLws1G29gzThz2AL1Crb1/ZoU3La+KMcVD
         nCRYukVi8Vb0hnDnsHISxFiTEP82aMCnuhB7Zi/H4LczXcmRYD31ENVYNqC8Q1ksp7S0
         EPvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XgDpLMdL0ctn8FkV6OAwyNPpcX4s32XQCwmQR7ICMB0=;
        b=syqpxLrnfVPV4BTlMVI3dSVELh7BOtYfAqqCnNKb9Y7qKSt2Sg5DLl66eLQGQ/6l0m
         pQIBgcY7bOKsLHWBrrA6H4uqP6zs3XDFF0BN2zW0Txtc5YP3KJbvjaLQNfh5cDJVhWV6
         hBTNcIvr2EQlxHvIrapBx1M8blrMG5T5cTLoSxJA5RV3Z7A1tkSgxVFtLxkU06i1kGi5
         bm/aQH0ktFgi30/wYl7RM7RtcJ3uIruENhttpx2nHWxKOg/WpAx9GMdE61W80wQ9U6W1
         6z8UEjbjiwBDOTPMygY6BL6IyUh6sPnZJnXDcpeKrDHf1Qxd0VgdqL5xpgIzxnS2Pf8M
         3JNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lvA7m4DD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id h8si32498iog.4.2020.11.03.17.08.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 17:08:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id r10so15097016pgb.10
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 17:08:22 -0800 (PST)
X-Received: by 2002:a62:5e06:0:b029:164:a9ca:b07e with SMTP id
 s6-20020a625e060000b0290164a9cab07emr27533012pfb.36.1604452101924; Tue, 03
 Nov 2020 17:08:21 -0800 (PST)
MIME-Version: 1.0
References: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com> <CANiq72=r6oieZ-Nj-e6e+HriW8kADB75z2pj6W-gg7Cff3nqGw@mail.gmail.com>
In-Reply-To: <CANiq72=r6oieZ-Nj-e6e+HriW8kADB75z2pj6W-gg7Cff3nqGw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Nov 2020 17:08:10 -0800
Message-ID: <CAKwvOdmnz-DJ-hG5FKJZYF7W-ujPrgfMkrb2hMLhmzhk8Hx6dA@mail.gmail.com>
Subject: Re: [RFC PATCH] .clang-format: Remove conditional comments
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Joe Perches <joe@perches.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lvA7m4DD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Tue, Nov 3, 2020 at 1:33 PM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> Hi Joe,
>
> On Tue, Nov 3, 2020 at 7:29 PM Joe Perches <joe@perches.com> wrote:
> >
> > Now that the clang minimum supported version is > 10.0, enable the
> > commented out conditional reformatting key:value lines in the file.
> >
> > Signed-off-by: Joe Perches <joe@perches.com>
> > ---
> >
> > Hey Miguel.
> >
> > I don't use this, but on its face it seems a reasonable change
> > if the commented out key:value lines are correct.

Joe,
what would it take to get you to use clang-format, or at least try it?
 Beers?  Bribes? Dirty deeds, done dirt cheap?

> It is, yeah; however, the concern is that there may be developers
> running an old clang-format from their distro (i.e. not using it for
> compiling the kernel). We need to compare the functionality advantage
> vs. the inconvenience of installing a current LLVM. The best would be
> to ask whoever is using it right now, but there is no easy way to do
> that -- many will only notice when the change is actually pushed :-)
>
> So far, I have avoided upgrading the requirement until clang-format
> could match the kernel style even better (i.e. so that when the
> upgrade happens, there is a reason for it). Also, the configuration
> can be overridden in subfolders, thus a maintainer can push things
> forward in a subsystem meanwhile.

Miguel,
Really? :P I'd bet if you picked up this patch no one would notice.

I recommend a simpler approach to multiple version support, which is
just matching the one version recommended for the rest of LLVM tools.
Sure, technically you can use older tools, but do so at your own peril
and don't complain to us if it doesn't work.  Otherwise trying to
explain different versions and even for different directories gets way
too complex for anyone to take seriously.  It's not like we backport
raising the minimum version.

I was very much in denial of committing to a relatively high minimum
version of LLVM myself, until Linus recommended the simpler approach
which folks voted in favor of at Plumbers.  Maybe not a perfect
analogy though.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmnz-DJ-hG5FKJZYF7W-ujPrgfMkrb2hMLhmzhk8Hx6dA%40mail.gmail.com.
