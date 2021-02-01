Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKMU4KAAMGQE2SSPHWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4130830B31E
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 00:09:30 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id h17sf15257435ila.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 15:09:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612220969; cv=pass;
        d=google.com; s=arc-20160816;
        b=RpDgyOXLjw8EpztY8C3WwJR7r11E7kD4dgiLQg/mfx9MJKQRllFJqMxXnelJd0RCtO
         4KzuYRExxUZmGSBi5fDaUXU9Qm6xUb8jRdPoELHCX1I7XuTdpg48JvIdaj45aCigLtaR
         s3eqBphNE9olw/f/+fvSnx47DLAF89X6XHYETYJlizXMCMuuyrOaP68PBSTVbTDnlUSN
         /F6UxCbNqdRCwzhtnSx4T9N4tHyDhPBaGhBTr+bfqDTditC3I9oNtphxXLvVKWpjmJoX
         X26DMJeLEKfPIpSdTWCEqF5HIRhRzasAUSsfKfQWCbacxzv3gixIk3t1VpUbgbXelUcV
         X34Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KyetHaxsLCOTlVkxr5M4GNPA+Ae3VIbGJyxcXfJAp1M=;
        b=LPbNSyK+n0Ykv4XSDT5I+CBKFuKoCv/8w6iyokRSoxkVuaOvxW43lGLEx4DgsdFdPx
         A5Cm38ydBmCglassI7KEcc1Zevclc/HdKbfYogcVyfIDO+NTtR10cuysqmLQaai10/o7
         MX9X6TyhIKdRneiKn1MhZDp958PRPAvY7ZOWAa8fesG5QeBtDqHGmlTeEnZHbtNod3ak
         Tx3stWd/9gNULKdDbfJARdpDaBR4YMvL20uZAoZ0TYHyPIq4fQ6Oo+GFVOuAVrpi+Qro
         GzQZJ4vj/2jqSAy9I/gMAH5AvQxLVfK7Y8N9bDPbED7oHoAPllHwK3zBNPBk1ApQQtM9
         qkJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jcCexse5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KyetHaxsLCOTlVkxr5M4GNPA+Ae3VIbGJyxcXfJAp1M=;
        b=eLFzpmPoB5sqhWy6uNnKqgGr+lzNDGRohUijVkra+jYAzlRIXNxGZPngUZLP7jjASF
         s+fFxQslaF0dtnVCzW1ncLkJSt/RkQnO9kUSsz3ILZb0bJlrhwtayl6Xc7iJJxPlSJo5
         bV+opWnvFhfaAwAEEvVB6al1VWENOrgyu+PpFRDU11M+cKi3euJ9dt2LIoFM6bJ5OrPb
         hVtVs3EMy6+VaSwSD9FReP7rpD0NqVvCX4VoJxvQqiPqV1KnwKkZYoFvJpAPk8YTQK30
         t3j9QOzP4zXQdjVY9BE+LI69R8hHTeCfjdi17be6qQZUcAooGLBqm0C59t5RrUijbCJQ
         +tOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KyetHaxsLCOTlVkxr5M4GNPA+Ae3VIbGJyxcXfJAp1M=;
        b=tVB16AhFgSwgtjkQXeHga3tvsQowjaKxVni2OTnzRB9TKw9XdxU3cfnn9ZtTaNmoSY
         5Npm7X5Nq/0+odN3/fgzgd7N2nPuyur1HRfm7oLChLQOTfaqXEpPdfXTU/sXlBtZlZS6
         E68lH4yX+1EmZHFypF65nXi9Fcwoy4cNEDoFmQY5NMGuJcaBwXV7yIv3EiTLYX0ae/Pp
         eUF7+JI/DrCkBFltjaDPrqkxv+VX+XLuMmLdduUbex8M19a0v6ZTrlL5/12ozMXIbpqF
         5eHKOYUfoI8OyjhJsPtEYcj3qiyS7qb69S3YI0SlZnu0xOLmCTeJcBMwWA0kIqqVowZ4
         5Azw==
X-Gm-Message-State: AOAM531YnhjpXcIST8CIZpXGgJX7+MctEzP8GaQW+blQcOHK3PQiuv6M
	s/5cazxh5AcmE+U6uKKg1T0=
X-Google-Smtp-Source: ABdhPJwn8X64HNWrwysUAoFe3eSJnvDy7ONq2vBuE3f08mBkmyNBMJpjJFdKTsNb0RNfRI20/jo9DQ==
X-Received: by 2002:a05:6e02:507:: with SMTP id d7mr14275708ils.133.1612220969257;
        Mon, 01 Feb 2021 15:09:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1c9:: with SMTP id w9ls2648412iot.2.gmail; Mon, 01
 Feb 2021 15:09:28 -0800 (PST)
X-Received: by 2002:a05:6602:2b01:: with SMTP id p1mr14689874iov.156.1612220968809;
        Mon, 01 Feb 2021 15:09:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612220968; cv=none;
        d=google.com; s=arc-20160816;
        b=aDpT6Q4+mplXKQc+/uPvTKOJgn6aDfyL/sUr8LvQNSfuy7vG0ib2pNsVTws6OXlcYI
         CHQBIKIViM1eRr50v11e9lP38WanS2VlMAiJdZ13b6TG7ZmH+l/g7ykz7l2QnNIJXvJk
         UWLVAMoDlUoXe8yDhwA/IV0SL6C+6u1fuZZMQZSrsULM25NkpL8C9BNNKh6rIttUf2lT
         Im8qiEE9lC9GtP5Y6mm0MtggSnnktGF6n0BjmOM0dafW/dftJsvdf2zwhvMcomv6zEtb
         pb6MKuJu1ouujmJi0VTNsUlt1yTER2A8/u3PILSumh+yRmHG7qgB46juFcphFJ7xbEUU
         lbJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GEACQRgbmcNz8U0z7UDtnpZG1N/k6q1juxg0BiyuRck=;
        b=FDzXUjgaghOBQ3FaEHGOjvbf1YixY4lXI1xJORWKhEX793a7g5mK1HbvkDEl1Y1Ezm
         SlUr87b8aXBkI6fq2d9EBkZyNZxPZEonjvNqxuPlkOFnYEsVtufITlM4b82VRVlLS1/s
         kNFI868UlKSurdmcfRvfk3ExwvpcfQhJjA4T/8lIfcohBFDMSM1+GE7gxyXehiAPGGUw
         qKi2BRx0Uu77WeNaDoXSt1LSNMLvg/2jZJW2IKBjBDTbDdWvuMzJ3KTDzURa7ZpMh8hY
         a/JUhOhUhhU8+kHPYsaag71F5/gtv0m4fB4nfS3299VmwFOrfsIMBSdZtw7JI65G6qRc
         LP9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jcCexse5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id o7si788260ilt.4.2021.02.01.15.09.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 15:09:28 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id l18so729132pji.3
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 15:09:28 -0800 (PST)
X-Received: by 2002:a17:902:728f:b029:e1:70dd:ac67 with SMTP id
 d15-20020a170902728fb02900e170ddac67mr4444213pll.29.1612220967989; Mon, 01
 Feb 2021 15:09:27 -0800 (PST)
MIME-Version: 1.0
References: <20210201003125.90257-1-viniciustinti@gmail.com>
 <20210201124924.GA3284018@infradead.org> <CALD9WKxc0kMPCHSoikko+qYk2+ZLUy73+ryKGW9qMSpyzAobLA@mail.gmail.com>
 <YBg20AuSC3/9w2zz@mit.edu> <CALD9WKzO53AXQW-qQ82VZ41H5=cGdLTUiEoz3X6BmPkb6XaTag@mail.gmail.com>
 <YBhuHJgZ3QPqHheV@mit.edu> <CAKwvOd=ny2TeYV8SGZMD+aj8Yb6OSYGKAzSb-45r-HKk6WTUCQ@mail.gmail.com>
 <YBh0ywVzkUIR3fXg@mit.edu> <CAKwvOdkZRdBzzW19sVAs+pX-7wWwN6AWrxUkkZwP8L4OT7SLfQ@mail.gmail.com>
 <CALD9WKx6HREQeTRXuv81v-=DTVuznXG_56YFm2dM1GOG3s4BRQ@mail.gmail.com> <YBiFVgatiz+owBs9@mit.edu>
In-Reply-To: <YBiFVgatiz+owBs9@mit.edu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 1 Feb 2021 15:09:16 -0800
Message-ID: <CAKwvOdk_OdMB5+YMKdWmK08Px=qYFy1X+imK+LqJbyptesEEQw@mail.gmail.com>
Subject: Re: [PATCH v2] ext4: Enable code path when DX_DEBUG is set
To: "Theodore Ts'o" <tytso@mit.edu>
Cc: Vinicius Tinti <viniciustinti@gmail.com>, Christoph Hellwig <hch@infradead.org>, 
	Andreas Dilger <adilger.kernel@dilger.ca>, Nathan Chancellor <natechancellor@gmail.com>, 
	Ext4 Developers List <linux-ext4@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jcCexse5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1031
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

On Mon, Feb 1, 2021 at 2:48 PM Theodore Ts'o <tytso@mit.edu> wrote:
>
> On Mon, Feb 01, 2021 at 07:05:11PM -0300, Vinicius Tinti wrote:
> >
> > The goal is to try to detect real bugs. In this instance specifically I
> > suggested to remove the "if (0) {...}" because it sounded like an
> > unused code.
> >
> > If it is useful it is fine to keep.
>
> The trick was that it was unused code, but it was pretty obviously
> deliberate, which should have implied that at some point, it was
> considered useful.   :-)
>
> It was the fact that you were so determined to find a way to suppress
> the warning, suggesting multiple tactics, which made me wonder.... why
> were you going through so much effort to silence the warning if the
> goal was *not* to turn it on unconditionally everywhere?

Because a maintainer might say "oh, I meant to turn that back on years
ago" or "that should not have been committed!"  Hasn't happened yet,
doesn't mean it's impossible.  Vinicius asked how he can help. I said
"go see if any instances of this warning are that case."

>
> I suspect the much more useful thing to consider is how can we suggest
> hueristics to the Clang folks to make the warning more helpful.  For
> example, Coverity will warn about the following:
>
> void test_func(unsigned int arg)
> {
>         if (arg < 0) {
>                 printf("Hello, world\n")
>         }
> }

Put that code in in godbolt.org (https://godbolt.org/z/E7KK9T) and
you'll see that both compilers already warn here on -Wextra (via
-Wtautological-unsigned-zero-compare in clang or -Wtype-limits in
GCC).
clang:

warning: result of comparison of unsigned expression < 0 is always
false [-Wtautological-unsigned-zero-compare]
        if (arg < 0) {
            ~~~ ^ ~

gcc:

warning: comparison of unsigned expression in '< 0' is always false
[-Wtype-limits]
    3 |         if (arg < 0) {
      |                 ^


>
> P.S.  If anyone wants to file a feature request bug with the Clang
> developers, feel free.  :-)



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk_OdMB5%2BYMKdWmK08Px%3DqYFy1X%2BimK%2BLqJbyptesEEQw%40mail.gmail.com.
