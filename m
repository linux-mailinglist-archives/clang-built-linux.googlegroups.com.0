Return-Path: <clang-built-linux+bncBD4LX4523YGBBUMMZ6EQMGQETC57DTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id F41CB400CCF
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Sep 2021 21:17:38 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id l13-20020a67b74d000000b002c95daf232esf839512vsh.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Sep 2021 12:17:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630783058; cv=pass;
        d=google.com; s=arc-20160816;
        b=SNO+yO2NvRyHZPUQYhKhWakN05RY9fY/A38wZLgeE0JGOW2mCphqrWZmdXeyz+wxq8
         TeuWPXA9N+tYq0LjP+lurR9M01G6LISuAylJvSwkF8W0c2ZM1m6jcrER/NigRI8UurjU
         uLxHyfLmQjt7dCEuz7xZFHhkT9unoIrKd1odxEPjvhpseL5ibLi8TTxdqezQBY+b0Fh+
         Yh444atbgbLitU+FY4/fvKCpvKTrQLwXjjSHiTV0WsR9FSIjhz5Qrccb6qvREBMgpvEk
         EcxkX9mJd+aRn3RcnSvp6CSTjkkCYMprd1KjxntSqQhZsMeqLbJmgRkdSSdb23zkjciG
         dZoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=mnRDejd29DyomNz9PqeT3u6jm/5krqhG/qyCLsWWvTI=;
        b=stE+UPQ+Dlq6IYApD/3joc+mbS0B8Pi9w1itQU09XEiJNza6nrsfw4Ocv71PBUHPaS
         bJSrW30NBNhWOdVH8GuCV9lXDqoNWstqqdEY4T52XLeJfWuCfavwcxBmgccctBRdQphX
         1wtKU6xUkhrrlSfDLcnisNm+JkTdwjKhfgT6q4pYaneOfK5sJfiC23xHahPj1c6RjAkF
         b8FP2jHUILg19SCZk7pb0PUp/JHHT3zhQuXzLC9N6JF2FyktCYfVf68TdA+DqS/Zh0+7
         fnxvNIooluzVNsHZ+DSq5ZleYtQoaX5oPT0JMwP50t4BajHmgiGrv6amUTnu/o4LuOpi
         PJ5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mnRDejd29DyomNz9PqeT3u6jm/5krqhG/qyCLsWWvTI=;
        b=gMLXNy2fZvR75DmgTnS0UzsRmQdtmC+32FFk38Z7A7Qm//Cg2HUaoUmo1C7q4oERH8
         a+8/mdgcN2/gDyCdsQkNMPKqKeHCs9r/Mc49nBOuhi/rWgUYnU1KD7T62nUMdIQ1HdP/
         sKiPN/DLMmd6Ul+ddPn+uCBaQO5SOq/+JIGpMMZIWyfeuA+EuxE3nXK6TwANL0f91dCz
         ujfJjtAz4ufLiTZcp2CYefMYbxEXmNJGFSR0/IoNf5rKlnzcwZOqiMpOcKsUMS0T5mdk
         9mdfixAQxUA4iLqH1JnsEWqZO2qNCXbJ/ekz46rF4UTHTPrbFxqwATrCc1BnQmcM/wGU
         HiOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mnRDejd29DyomNz9PqeT3u6jm/5krqhG/qyCLsWWvTI=;
        b=pVvRqsigYUB0FntxXLnDG2Mm6JgoAuL3AnFbKMShlOvnhmd++uU5y7NhMKcrWvIWog
         1jYZinr6DnuGVmiYM51T8MUy+ScOuw7NkHszIl6xHvn4amJNWszjmmqQVCAJ97OeUIHk
         nq/g3gpl4+EQkikiwP2cMqvBjeCkKxXqw8Od9r/SLRGsQNi5OrEM8g9UMtpOvvvfCanm
         A2v81gGRdiPxoZr8hPEhZpIqumMduaO/QW9qo7lVhznx3VITcMpaVNxQrYNuszMlP6su
         sIPdC62czY+3vtnXDzZ4dmq1+0bPNxW3YLERjbImdrrlPBP44Om1wwFZBMkSu8dBiNIx
         UUWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HccFZdY3gN04DB2nC0aHQnQIClwOOpGolSYnodCXK5zs/BlNn
	JUpv+3eFyolRLPsrPn7B/Yw=
X-Google-Smtp-Source: ABdhPJyserCN8wz/zZd2/JU+A5YFm8NZQ8FHWTV9bD4XZJZhiFSxE3oPzc8YawGVJ8CiHYpGuu/0WQ==
X-Received: by 2002:a67:fe0a:: with SMTP id l10mr2508765vsr.11.1630783057909;
        Sat, 04 Sep 2021 12:17:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2469:: with SMTP id 96ls223783uaq.4.gmail; Sat, 04 Sep
 2021 12:17:37 -0700 (PDT)
X-Received: by 2002:ab0:3303:: with SMTP id r3mr2503147uao.17.1630783057403;
        Sat, 04 Sep 2021 12:17:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630783057; cv=none;
        d=google.com; s=arc-20160816;
        b=Uf+RzFm2ATc6reaUH1nc5ztFJFPTq16/NVAlb5oLQLiAEocccyTmE0iGKDSlsyo7DQ
         wFqwXjsUKeQLj4Rvs0WRBd4mu0Wsdbm8zdtQrOl8fYZGYsmn6Of2IVkQ9KmSsu7ntZh6
         /wi/ZtVTO+bfR0NIlqDIQMkO2tXI8CsRq1zcU7GlU/y9RjlzG9rOYMrgPKCnXOhw5/Ny
         GhBFa/y9KH7LyyV3sG0/qJq/rLWiU048WOBaXGjZgqydxOMolBBgEPiX/AekfivKrX4H
         aHHS8iN/aA5/frB57GhHKW2G4KhUJtHbj6Vb6H0NWqJocd8W6WB8cMTjYxQcDIpHH9VR
         4sUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=q2x9t1oDyeNikbtJDE3PaeK/m0CIlTpN76yai9Qfuno=;
        b=axJwLoPtZHOVBz/pQqqIsZhH8iU+yInSbWMBGtZfd0TNIhop3jm2lGEYVrxr72YTf5
         mpOJNc4xDnicZRnFmr6wKNWi2a4XrEBzdZbuGSFdZTtcY0/lMxYinKy0a1VNj+l6r5am
         +bpvQGVsxGWYExJLzJmO+Thvhtt0dUeZ0p8OxBAwHvKI72FQUMWvQKwB3/kL2ICTCFUm
         fFeyi15CZSKltb3hC9s3e/ED/aFXkErJ654crYCzM92/8QX/xjZei12bLowVkZsrf+Vr
         xV+tNnK5v2P/Vrhn7wSQTTRZNBrAHUfoEocTStRXhDz2LCNx7NI6HPHFTrvWerCM5oMt
         O2Jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id az31si180852uab.0.2021.09.04.12.17.35
        for <clang-built-linux@googlegroups.com>;
        Sat, 04 Sep 2021 12:17:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 184JFW0f025749;
	Sat, 4 Sep 2021 14:15:32 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 184JFVsP025744;
	Sat, 4 Sep 2021 14:15:31 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Sat, 4 Sep 2021 14:15:31 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Linus Torvalds <torvalds@linuxfoundation.org>
Cc: Florian Weimer <fweimer@redhat.com>, Nathan Chancellor <nathan@kernel.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        llvm@lists.linux.dev, linux-toolchains@vger.kernel.org
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
Message-ID: <20210904191531.GS1583@gate.crashing.org>
References: <CAK7LNAQ0Q6CdXaD-dVGj_e3O3JYs_crpejWKpXHYQJYxyk-1VQ@mail.gmail.com> <CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com> <3b461878-a4a0-2f84-e177-9daf8fe285e7@kernel.org> <878s0c4vng.fsf@oldenburg.str.redhat.com> <20210904131911.GP1583@gate.crashing.org> <871r644bd2.fsf@oldenburg.str.redhat.com> <CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Sat, Sep 04, 2021 at 10:22:25AM -0700, Linus Torvalds wrote:
> On Sat, Sep 4, 2021 at 8:19 AM Florian Weimer <fweimer@redhat.com> wrote:
> > In any case, it would be nice to know what the real motivation is.
> 
> I don't know about the original motivation, but the reason I like that
> patch after-the-fact is that I've actually been in situations where I
> test out self-built compilers without installing them.

Then you probably know that that is quite hard to do correctly.  And
installing the compiler (into a temporary dir that you can just blow
away after you are done with it) is trivial (see for example
<https://gcc.gnu.org/install/finalinstall.html> line 11 or so).

Also, the standard headers are *part of* the compiler.  Including those
(like <stdarg.h> here) that are required for freestanding
implementations.

> Then it's convenient to have a completely standalone kernel tree.

Yes, and you certainly do not want to mix in anything userspace,
accidentally or not.  But these "freestanding" headers already have to
make sure they do not do that, and they are used by many OSes and
embedded-style things, so you can have some confidence that this
actually works.

And the C standard requires you to use these headers to use some
features of the C language (variable arguments in this specific case).
You can of course mimic whatever some implementation does and hope that
will work on some other implementations, and on future versions of that
first implementation as well.  But that is imo not a good idea, just
using the standard headers (which are required, and are there on all
implementations I have heard of, without bugs) is a much simpler idea,
much more future-proof, much less maintenance.

> Nobody cares about things like <stdatomic.h> They are completely
> irrelevant for the kernel, exactly because we've always just done our
> own, or used __builtin_xyz() for things.

The Linux kernel needs (or wants) stronger primitives than provided
there, yeah, so you could not even use it as the underlying
implementation for the semantics the kernel wants (which it could do
with <stdint.h> to implement u64 etc.)

> <stdarg.h> is the only actual core header file that we have always
> taken from the installed system headers - because historically it
> really was required. Everything else we can just do ourselves.

You also need <stdint.h> and <stddef.h>.  These are much simpler to
implement of course, but see for example the c46bbf5d2def commit I
mentioned before.  Some of these compiler headers might have been buggy
(or non-existent) historically, but that is very long ago, you really
can expect at least C99 to be there (and work correctly) nowadays :-)


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210904191531.GS1583%40gate.crashing.org.
