Return-Path: <clang-built-linux+bncBCMIZB7QWENRBINXR3ZAKGQE5OVG3GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D8915A148
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 07:30:58 +0100 (CET)
Received: by mail-yw1-xc3b.google.com with SMTP id j185sf687965ywf.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 22:30:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581489057; cv=pass;
        d=google.com; s=arc-20160816;
        b=G6kcRc9BiPBVdA2L0PQJlqivhY5evv3LzIaaX98yrxF/UbC/Js/6KVTGpRdlrrr9+6
         9t1xef1c1s1GINCzLpnY26KsPL/UHychedClgNGjRIXc3QxkT2rX2Ap2gAF4EZO6CnY5
         9/WGXABdG6XHa+7JtzspuH36MjO3easM3xkK/1R79fyZBbV+PFVNScFWYo3hrg9OJIBQ
         +8c+QOUdmDXZaJpbAcmoSEud78AqjCQVcnzoRojRPH5jF5LRGH9OPOn6jzPeYhwz3cbN
         2daf/k5XuipzyRKNe1bD/u7QhTDh639ygFlYNJots2tfVg+0+pZxG0lCAkXZOQ3CHjKA
         1TyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=K7btNB0x+nGT8xJs8/8mWZs8IaxBZYzVi11bpnlF7XM=;
        b=DqUPjLe0jSYf6+9Dk4B7kI3ZoB/1t1OdO2IXcCv3mn8OwwLvL+pA7RWnrHhcxbnOqQ
         XkOTFHkJzy6VRQILoZ2cA0NyfuxyMAu14ui2lGHFuFwH2diBQYbfAzgF7dyzIsiT7G8z
         o4hePrQ5sOCI96WSimHf5e0wi9GtByCygxJSHGqGwiKd2bAoBeTEOSUAoYGVPHaMK9cR
         Osyhy3B/X0hkZ75q8QHVB0Ys+TKfaNuiydC5x2d+FWpHFG4Ki2w8zOVvzTZoGPwxIK+I
         VuIdnJdDVGmSffxtcIxoh9RkOKaxmn8A9wtQxdf6177RnDkYBsYk1NTdMd9Z0Mm5yW7o
         wpQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dehosEBO;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K7btNB0x+nGT8xJs8/8mWZs8IaxBZYzVi11bpnlF7XM=;
        b=UJImd2aiKJ+b3kZzzl5GL12QeFGH0fl7D1eDC6FWCBWVNOvBgPcXcOUqRMAmw2p/5t
         QhY0ge3OBf7FKhA+SqJXcjhAD+enOb25MWnEU53sZnS4CsRJYrt13nC+kI1tqlJF1iFG
         O7gWka2iUq+kLKlB+5ZEIxg9PgLEWGPgb/D/I+LgiHVBPQ8ohr7qySpoU+yiRHBUStjF
         KWdAs4ih3HZM1OVZ1dhD9xXz/3D4s7bvv1jEvZ0Mjx3AYKM86GvjEZFf/6H/rFRjNvQR
         FaOk+Toe/FVAlAbJfVhZOIY/R5Q2ikoKh3rZuRbAZFS8jGjeU2ML7S51T0FA8zrQQTnh
         1jwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K7btNB0x+nGT8xJs8/8mWZs8IaxBZYzVi11bpnlF7XM=;
        b=Y9nYbmnDDh0mA8sIPsWMGy4aHgzBA5ESAafFf+1D0HHhR++e+UhJwD5G5AopcKgUuQ
         Jpn3z/FB6x2EmIfijKBqjtCmusnbIdc16D+3xxgL1JKDqGiL3VzVIhN99UCRFUMLgzJE
         jAy5Mj6uPO9c0IuBIAyWsqzBXmevWuQV6lyn8CSoNelH9P+FHDw74cuysEGy8Sry9VIa
         G8MKPEOsyT9SkvzZLqIeZq/wpOpZDCjGf9vVYD1TKpoBKXv8o6Xz5Nf9zEzIaYRdk0Rw
         im4o12SAtu28lPAsO/f4Bf2e9q3QeRvutRCVNPWTv1+vmCYZ9Vrp8voo/09Wh/rwJr2Q
         aotg==
X-Gm-Message-State: APjAAAU4WNkbMcMV8kLXHkBeKyzKgVok0dgEb9ux1jSVmUDgYzHG8RD8
	4+iZTR9e6F1Qstx6jvmme6U=
X-Google-Smtp-Source: APXvYqyTIxmnE4B++PyCKsaQ2i1A5GIOWbWYIIlSAPl6KKm7oH/JxV2xCuG2tN0YGprs25zaAy9JBA==
X-Received: by 2002:a0d:ead0:: with SMTP id t199mr9540731ywe.70.1581489057565;
        Tue, 11 Feb 2020 22:30:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ca8c:: with SMTP id a134ls3152513ybg.0.gmail; Tue, 11
 Feb 2020 22:30:57 -0800 (PST)
X-Received: by 2002:a25:d104:: with SMTP id i4mr9491355ybg.218.1581489057199;
        Tue, 11 Feb 2020 22:30:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581489057; cv=none;
        d=google.com; s=arc-20160816;
        b=EZN6yUTpjI/RQwI5wLGU6lIJruDs2ICL7eT/wgY20pjpWXDo7ipIRcCidwvLBDX48/
         lBx1dtvnwWWRKcZEFE3B55fZACq77k14qHdZNkdcUOvINjcy5ap5M7c8zTT1+JGNABkb
         R35hRrMpiOnxVe9Jl/Ep1eEKxCEqSNFbD2K+QQl4Bjmjjc/PyPR99QQa7Stg29gcDO8o
         3q8BQhsKMX0YO1k7ec+kyQV27clJpX3SE+YvAlWQeqH+he/Xv0L3cowaN5Tc+HdTBZzW
         snzSdOjOkG6NDV+ybzQlZH25S9+oMtJi2LbJf31azg69LvOk7v2C1DeQl2IHxOvF3jBk
         EthA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=inMeqbcuwihRnqbRTx9b+biRU6BsAieqCAn68AtBHrc=;
        b=W34bcWuNmQ8ApRc/s9Ipr4wC8lcX0u19EVIV/SpW12FuJtpKqqEfkeaNyWqOk1KIz8
         +8HtOUFrg5LY7XrnnunZVFbWfwQUPbiTeojwqvS4DQsqt4GyA6e9EuRJ0S0Rc77XWw35
         71NZ3PvvL91HUGjsSKfe9h9pjCyTfYkT2iHnJhyEb7fjthdhWEM9dBuqKZmf1oPVYXYI
         5aPZQlQ2e2y1eeiMu6aw5q3wwIvXiqlL/XWxYZkHlUOznzMhl9QgGiOH6gwBBW5QeIoE
         EUqqeE1+fliK1qF6nj6RyzMu5HBT1K+KfRg3DYTlyvKtlyNPdh/dsFDYcJ2hSWICT7WW
         am6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dehosEBO;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id s2si387469ybc.0.2020.02.11.22.30.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 22:30:57 -0800 (PST)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id l21so793529qtr.8
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 22:30:57 -0800 (PST)
X-Received: by 2002:ac8:340c:: with SMTP id u12mr5715791qtb.257.1581489056555;
 Tue, 11 Feb 2020 22:30:56 -0800 (PST)
MIME-Version: 1.0
References: <20200211101043.3910-1-natechancellor@gmail.com>
 <CACT4Y+YdQCfprPWicQWtgCL1AoF2N=ee4Bkuat5AihLxYCbmqQ@mail.gmail.com>
 <CAKwvOdmSq7S3i6LDbOC=xGxi5B6hG=MGwfcaHXXuTzr5cxeUnw@mail.gmail.com>
 <CACT4Y+Y+gz13-Bd4A5ePuDcbaq8Y-d-212w4DUkhVaH2MDRXxw@mail.gmail.com> <20200211203106.GA14632@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200211203106.GA14632@ubuntu-m2-xlarge-x86>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 Feb 2020 07:30:45 +0100
Message-ID: <CACT4Y+ZSTo_WzniCi_-9V7qY_o0ESRYrt5dYcb2+VP6sw6gvVg@mail.gmail.com>
Subject: Re: [PATCH RFC 0/6] Silence some instances of -Wtautological-compare
 and enable globally
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dehosEBO;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Tue, Feb 11, 2020 at 9:31 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Feb 11, 2020 at 06:24:37PM +0100, Dmitry Vyukov wrote:
> > On Tue, Feb 11, 2020 at 6:18 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Tue, Feb 11, 2020 at 8:45 AM 'Dmitry Vyukov' via Clang Built Linux
> > > <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > On Tue, Feb 11, 2020 at 11:10 AM Nathan Chancellor
> > > > <natechancellor@gmail.com> wrote:
> > > > >
> > > > > Hi everyone,
> > > > >
> > > > > This patch series aims to silence some instances of clang's
> > > > > -Wtautological-compare that are not problematic and enable it globally
> > > > > for the kernel because it has a bunch of subwarnings that can find real
> > > > > bugs in the kernel such as
> > > > > https://lore.kernel.org/lkml/20200116222658.5285-1-natechancellor@gmail.com/
> > > > > and https://bugs.llvm.org/show_bug.cgi?id=42666, which was specifically
> > > > > requested by Dmitry.
> > > > >
> > > > > I am not currently sending this series to LKML as I would like some
> > > > > pre-review before I get torn to shreds :) I have included the
> > > > > ClangBuiltLinux mailing list to start plus a few other potentially
> > > > > interested individuals. Look for things like dodgy explanation or wrong
> > > > > approach (location of macro, naming, and such). I do not see any more
> > > > > instances of this warning (aside from
> > > > > https://github.com/ClangBuiltLinux/linux/issues/749, I just need to bump
> > > > > the patch for acceptance).
> > > > >
> > > > > Once I get enough review, I'll post to upstream for review and
> > > > > inclusion.
> > > > >
> > > > > Let me know what you think, cheers!
> > > > > Nathan
> > > >
> > > > Hi Nathan,
> > > >
> > > > I don't have any objections. The series looks good to me. But I also
> > > > can't predict the results of upstream shredding :)
> > > >
> > > > How does compiler know about addresses of sections? as in e.g.:
> > > >
> > > > mm/kmemleak.c:1950:60: warning: array comparison always evaluates to a
> > > > constant [-Wtautological-compare]
> > > >         if (__start_ro_after_init < _sdata || __end_ro_after_init > _edata)
> > > >
> > > > Isn't this info only becomes available after linker script?
> > >
> > > These are forward declared as `char[]` in include/asm-generic/sections.h.
> >
> > Yes, but it does not know values. Compiler does not know the result of
> > this comparison, so from a practical point of view it does not look
> > like a constant. Maybe it makes sense to warn iff compiler knows the
> > result?
>
> I wonder if it is possible for the compiler to know the different
> between linker defined symbols and regular char[]. This situation is
> pretty unique, I am sure there are not a ton of projects that use
> linker scripts and check the values of defined symbols at run time...

I don't see a way to distinguish them in the compiler. Both look like
extern char []. However, the compiler does not know actual values for
either of them. So the predicate may be just comparing addresses of
globals. What is the intended class of bugs that this is supposed to
detect? I mean pretty far from the initial case that we had that does
and and or on actual constants.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BZSTo_WzniCi_-9V7qY_o0ESRYrt5dYcb2%2BVP6sw6gvVg%40mail.gmail.com.
