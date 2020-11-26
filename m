Return-Path: <clang-built-linux+bncBD63HSEZTUIBBV437X6QKGQE3XA7JXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 622692C4EE4
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 07:40:27 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id p5sf960832pfb.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 22:40:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606372825; cv=pass;
        d=google.com; s=arc-20160816;
        b=iZvYin/TGD3A9c4cIlyNN3f9LvRD6ONm8eRUzRVNk9OqoeA49kjrE+b63x7PhAx5AM
         7mxPhaig7XZpDDPhVppaP7/td/+pq5FjV8FXMbSwP5cLF9FPyG/XywemXtG8mK1swdtV
         pvfVXl5L0OBFTeVquPx4Fw85AsjwsOXfU6LhYxyglXsDpgiZW0AZWChxE48A5kmuvbRH
         F4CaYUDN2WZVPHwDALrY9eb5XTM7I+5RPN7hltwnOwRDbfsciGomybh7mrZMrs7j+WdK
         ojBo4NEWPb6U5+Mbi0PP12iIkE/c7bAl/Us5Agnc3HbwoE+3vTnfOeVSiuU2nEoclPu4
         6Z+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=LkmOTRQw/glXGF6xUaFQ0Dw7E6wPbI9lh0XCqk0JPMg=;
        b=v5AiB5yCiqh/xzEmnW6GOmZxwhMmY+Gi8ynnlUxq3tlmYKZOHC2cvoLHHgCUe0xj08
         thQpc8vI+VyrOJ8fcrSSgKgTAPtRRP9VjPogb0NCOysXJ5aECzswT1H+h+8QDmplkO47
         +98JfNzeTS1sneRFIkviJWZBnPww8a23NcAt0GSTLYVGNwTasCCUihumdrPD5oTB8j5d
         2c3uW9mKZX0XBxRwHwNS+C3cck2dRRRE74HJGI545oorAWBfXcZslVLcmuxeTCnOmpng
         K9pH8UTVuS+PEPEbF1551uProCnbsJHZb0t5mEZj1md4UE3PN3YkwmnTZbA/aeRdzY3I
         qFCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PgLJTQst;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LkmOTRQw/glXGF6xUaFQ0Dw7E6wPbI9lh0XCqk0JPMg=;
        b=afKC0c52UO1FTYTpKOZWQ0oYlXmQsCS5DsVx0cYXw+/45kqYhU2ac4RTxCen48SeQW
         jzHK0kZm7IWJqdnqnmc0AkbyROmCDvHz4a6it9eeYV3D8/fgEbPBIU1J0/BZ/cNhUyzm
         kdyPMu1sTfXmNzFHLSsKTHd94/0rPp+V4cmA9JRzzn71bJoArIE0qrU6nvJP/hZkQHIz
         M1WNGBPiZX/Oeg5ozhFHKbFpmcCpIKA1QqIed+N9gKqNpd48aiTrie1eneujP0KQLULb
         e0rURmkAB1mX8uUeYAwdDSjsTQ0q1n6ZOsqYaSIkVf0l6Nyaal/dgxaVnPzgakjLiFNf
         bCSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LkmOTRQw/glXGF6xUaFQ0Dw7E6wPbI9lh0XCqk0JPMg=;
        b=fp/Xh8b9Wqcfck4ZeVSuiT7vu11MnOiqAx25jvYz2LZZqflZO6HKeJ9HqmmkzMayAf
         TTCzGp+18PfLX56ReHJ9XG7k+PziGXvj9AxHZY9tWXFI0UJIHeP2wDiEiADI7QsGawpn
         C3WJ++sTyw1jW4K3SBjzcdMwKhAvKybsHhqWOAaDrbaG15SPMzuBVX3CKJzn1Uh78cB1
         lLb78xW+6ad4O1OA8E1LDmRqtjj0Ct74TyTVpxaP9x+GP+0M1W2YJmEHKvRkM2xyWsKJ
         PctSebILzS1gwzDwrN+B28aDQXIg3RQ8fk7Yw0YJIKHSLh8LDsoyRT1hTQnm0U5hQB3V
         cOfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BryL0PK96oHl2Fuxca/YPwcvylThL2rU9GE3G266p2ROd86Xh
	zckdZ3sty2hN3Se14Jk6pds=
X-Google-Smtp-Source: ABdhPJyyi+vOgDhQrNIOVmcpu9kY23TgSH18+U+JAXlRqY1OvFGy/M5Rw6vOOGSnwrmZeAkcF8sKOw==
X-Received: by 2002:a63:d50a:: with SMTP id c10mr1441689pgg.217.1606372823864;
        Wed, 25 Nov 2020 22:40:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:34b:: with SMTP id fh11ls714152pjb.1.gmail; Wed, 25
 Nov 2020 22:40:23 -0800 (PST)
X-Received: by 2002:a17:902:c392:b029:da:121e:295d with SMTP id g18-20020a170902c392b02900da121e295dmr1471918plg.49.1606372823266;
        Wed, 25 Nov 2020 22:40:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606372823; cv=none;
        d=google.com; s=arc-20160816;
        b=oWyW1bhtwSVgK0J6Yqdknb3tpeOrDHQCF2jHc35rygOsAUuRpLol3KIJ/ocrcUT0TY
         k7RsEf2cre6FQJV3Erpw4tQ66/S33AFv3AiuCuw04TZobszlEJavv+1bqn/Tzbr2D2qQ
         7L9RmObErT3DU3uedyQrqaBh2VQjxyVFaxu/phjsRcr3crtoKNCkcP+wiJB7YHRkFLLy
         kb0SEeDzoq3pVZ5wu/oxs6UvwzaT6zeMGIOCDc+m2H6+vPXaueqNGy5Gk6XmKFrhnAWO
         I1e24l6iyI8wLzO1dwk4dTo2fWHjCYpb/8mK2Fomr20z3sXyMlAI+dmrM34VP0urCEQ3
         OBxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TcisTbAGyou2ITcXHQzZ+rLJmyPLbnu6jEYKCDUDy6U=;
        b=x/tbwYOfEt8XIvPRImEYrFZO3wJmBvkzbZwH7M6btuGfDor/Tw7y//tV82F6msksTg
         7WRpx7ublwJWCLf98JqjefnVg+zLIG7nRNxRMg9PoJXP7uyE1U9nKEYJq3ZdGB/P/WAm
         anKI+PQmvO+53rO3RYUjquO9zty5QN510VxtLoeiabDOAhzFVnGA7QtGx19ooR2Jtdz7
         pKK7Xey/lDAdSUOnEEqwGcpItP1vGyRQFijzzlGjMBx4rXDGTfwf313nFt/oD4qQzEsq
         tHJTy4t2tOZCfRmvA6MmbVi/lZmts94uIkUoiQKsMmSIp7xIg5pMaTdyH7CJmSZBKZ4H
         nM1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PgLJTQst;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bi5si214151plb.2.2020.11.25.22.40.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Nov 2020 22:40:23 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9C87021D7F
	for <clang-built-linux@googlegroups.com>; Thu, 26 Nov 2020 06:40:22 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id k3so985436otp.12
        for <clang-built-linux@googlegroups.com>; Wed, 25 Nov 2020 22:40:22 -0800 (PST)
X-Received: by 2002:a9d:62c1:: with SMTP id z1mr1427074otk.108.1606372821209;
 Wed, 25 Nov 2020 22:40:21 -0800 (PST)
MIME-Version: 1.0
References: <20201109144425.270789-22-alexandre.chartre@oracle.com>
 <202011131552.4kvOb9Id-lkp@intel.com> <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com>
 <20201113234701.GV2672@gate.crashing.org> <CANiq72nKMd_BOOowqowLAn0PZ5tu7X8G=8OrpG34qYHGLDGw6Q@mail.gmail.com>
 <20201114002624.GX2672@gate.crashing.org> <CANiq72n7R5Pfx4q4F9QpTrLK3Jxm0_hFu5FTvM-JcoZgr4SxRg@mail.gmail.com>
 <CAMj1kXGb6LGrDiM-oSxnt6zcCouKyhkNC+vK_PLCCWQWOSPpeQ@mail.gmail.com>
 <202011251156.055E59A@keescook> <20201125230010.GC2672@gate.crashing.org>
In-Reply-To: <20201125230010.GC2672@gate.crashing.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 26 Nov 2020 07:40:10 +0100
X-Gmail-Original-Message-ID: <CAMj1kXH--kzizmzy8kFZMJkR5R17zr2aq-O=VN0uN2Viq1mFwg@mail.gmail.com>
Message-ID: <CAMj1kXH--kzizmzy8kFZMJkR5R17zr2aq-O=VN0uN2Viq1mFwg@mail.gmail.com>
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST
 entry C handlers
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Kees Cook <keescook@chromium.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Alexandre Chartre <alexandre.chartre@oracle.com>, 
	kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org, 
	kernel test robot <lkp@intel.com>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PgLJTQst;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 26 Nov 2020 at 00:03, Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Wed, Nov 25, 2020 at 11:56:40AM -0800, Kees Cook wrote:
> > On Sat, Nov 14, 2020 at 11:20:17AM +0100, Ard Biesheuvel wrote:
> > > In spite of the apparent difference of opinion here, there are two
> > > irrefutable facts about __attribute__((optimize)) on GCC that can only
> > > lead to the conclusion that we must never use it in Linux:
> > > - the GCC developers refuse to rigorously define its behavior, so we
> > > don't know what it actually does;
>
> This is because it isn't clear at all what it *should* do, for some
> options.  For others it is obvious, and it works just fine for those.
>

The problem is that the distinction of some vs. others is not
documented, and may change between architectures or GCC versions.


> (And we do not rigorously define the behaviour of almost *anything*, not
> in the user manual anyway!)
>
> The interface has huge usability problems.  We want to wean people off
> of using this attribute.  But claiming all kinds of FUD about it is a
> disservice to users: it works fine for where it does work, there is no
> reason for people to hurriedly change their code (or change it at all).
>

What do you mean by all kinds of FUD? The kind of FUD appearing on the
GCC wiki? I'll quote it again here for everyone's convenience.


"""
Currently (2015), this attribute is known to have several critical
bugs (PR37565, PR63401, PR60580, PR50782). Using it may produce not
effect at all or lead to wrong-code.

Quoting one GCC maintainer: "I consider the optimize attribute code
seriously broken and unmaintained (but sometimes useful for debugging
- and only that)." source

Unfortunately, the people who added it are either not working on GCC
anymore or not interested in fixing it. Do not try to guess how it is
supposed to work by trial-and-error. There is not a list of options
that are safe to use or known to be broken. Bug reports about the
optimize attribute being broken will probably be closed as WONTFIX
(PR59262), thus it is not worth to open new ones. If it works for you
for a given version of GCC, it doesn't mean it will work on a
different machine or a different version.

The only realistic choices are to not use it, to use it and accept its
brokenness (current or future one, since it is unmaintained), or join
GCC and fix it (perhaps motivating other people along the way to join
your effort).

"""

The reason we have to change code in the kernel is because it actually
breaks stuff. For instance, functions using __attribute__((optimize))
to disable GCSE are suddenly compiled with or without stack protector
checks or frame pointers, even though the opposite option is set at
the compilation unit level.

I am not disputing that __attribute__((optimize)) is highly useful in
some cases, I am just arguing that such cases don't exist in a Linux
kernel running on a production system.


> > > So it does not matter whether you call that quirky or something else,
> > > there is no way we can make meaningful use of it, and therefore,
> > > abstracting or parameterizing any of its uses should be avoided as
> > > well.
> >
> > Perhaps it's worth adding this to CodingStyle or deprecated.rst?
>
> Sure!  But please don't claim things that aren't broken are.
>
>
> Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXH--kzizmzy8kFZMJkR5R17zr2aq-O%3DVN0uN2Viq1mFwg%40mail.gmail.com.
