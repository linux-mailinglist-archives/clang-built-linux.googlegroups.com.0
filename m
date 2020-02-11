Return-Path: <clang-built-linux+bncBCMIZB7QWENRBYOGRPZAKGQESS2U5CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CD215961D
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 18:24:51 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id m69sf2759021ybf.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 09:24:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581441890; cv=pass;
        d=google.com; s=arc-20160816;
        b=knMlgPG6XAT37y6R2dV0/VSD086DjB6Ww9tgEfxJPral4IGjUebPYnxRHxr6gkBtvZ
         JRnhXfiE/BPEIP/h8B7ZXfAAeBJvE67HZZFIqQX6jmbaq0EetgFrwKO1g/HsyGiAv+LW
         co3GMVtTWPALuaHgjpPuMbRfYqxU8P7lzhlG8zD4dscXEO0CnUA36GXh6sehWrCbbN/G
         6uhrGLCNenb+ad5l0yaF+X7e3ba0FsFbo1FY2kCoTp29rk54gsZGpo5P/Hr92DOiNBrN
         95XF+t2uZOc9hfjbVFV7+pbT0BRjeLc5h09bXtGxF7/EYSNs/Nt0T+b7o5u4hDEzAnTA
         FHcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Y1QmRftyBZYeyQ/yW28qIiiqeWpqusfEg9wr04ZEZ9o=;
        b=NELJHeY93lpOtPt/M7M6ATWupUQKrkBKq7McM8bptSAdEJ1JahB+KsITvDwWMBrkSj
         EsC0RNljsTU8Zf256qKwnAxxx9WaHlgOufmlx++f1sxvY39GyiBBly0yL/wRHAt2JO4R
         RQQs7pwOqNJdx/EkwTt0Zy7q7kgQUNFABCuUdMuzGBElkJECRjDH+Mp6oJG8FEuAoC6l
         Mp4IW+DYb1lcMDvcqnxerABueJroIECk+xIEPw8clfSNiA4ONBS+VNTXFqvq2Y87uAun
         zrfmvIvoMcMcr5jksBFuW8zRpp3EWgoMXnti9h4c7UlH0Wadf33O44z2hKSJV6k46cnq
         X+Hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ofjGHoZr;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y1QmRftyBZYeyQ/yW28qIiiqeWpqusfEg9wr04ZEZ9o=;
        b=dvtE727Ets5UYQoIoZGCP5CuHTUiDUZtpwstXwZjCeVgMkkLv/dyWV2bwkf5UIV+ni
         UQSo32Nek//a1zs92FXNZATeAhR7UAhIvpDFNC87NagjOcvys4MWG0U8PlWst6KITXj2
         oDsskul2EqGozN81xFoNniY7vI1cfhEn/g0jI1GD5jnCPxcn4FHYOxN3x+Ulu3nUf/Nn
         vYZgPc0+7uFuQUFa2PD4Cvpqi3VALiqp2TQWqgIczOrqsWBS91yUBJoQCCbHkFB0Pfyo
         RHlRzn3kA0skM6Hao6D3E8LU1kXWsJSFRi+D2ZbqklFrvJSvxpZVP84/NJIG0ExboV9a
         5FXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y1QmRftyBZYeyQ/yW28qIiiqeWpqusfEg9wr04ZEZ9o=;
        b=EX0eoO/E6HpfU1e0Ajb63yBBOw5yHJtFBpeVhQYMmoxx1+mud7tV35PXoCNOzO0t/x
         fz4LImZxYwmNYvCRX7NY+AuEDiAV1R9Sk9FWNPOyRWIta9xZfUXfG9k1P6Hu+8HkUOj6
         V1PcknNeAeeTc02vGcqF/38VS3u1oX5JSX5Oo0+1dg+6dRELThBNGbQ3GUgYByMhtY40
         1ZberySQJX3hjBm73kwKwg4fSdmpAvRgHZ0sRsIpjWgrV7ZyceDcGra4qApuqwdYUKK2
         oW/u+JMNgMWpjhaMUnuKYVD0s8dTxpMg6Nh08i12tgdnCZBloeR2IySXObHUbnHEi4j/
         neDA==
X-Gm-Message-State: APjAAAUVf07itRouQi3ykYFSLzuOY19EhEgWK6Wczyt60/Y06Bx4k1sy
	+nl+mPs+v7RWAXGags63eAI=
X-Google-Smtp-Source: APXvYqwG2m0KE8/AQY4NxuXcTrVbqlzUkOEnlwDaJufmwU/0MbpZTf+2JDgmcXesXE1+LCliSXfxhg==
X-Received: by 2002:a25:2a41:: with SMTP id q62mr7133805ybq.406.1581441889958;
        Tue, 11 Feb 2020 09:24:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:69c1:: with SMTP id e184ls291310ybc.1.gmail; Tue, 11 Feb
 2020 09:24:49 -0800 (PST)
X-Received: by 2002:a5b:b86:: with SMTP id l6mr2582676ybq.18.1581441889582;
        Tue, 11 Feb 2020 09:24:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581441889; cv=none;
        d=google.com; s=arc-20160816;
        b=C4l1lBcwJHriTh86/c3kqjNmR8JTeWO2DrzbWHaYuOo8eAdGwJc1QkxTY/npUH20xe
         pcK6XVBwQ1G1HZXeljFqGIhRMUpcHk5Azmuq0h9i7sdBL3ayrkPkduk+os4bOnpeNAqU
         idCL+wfVkzrxvES0tE8uO14OjiK7LiT+y1AjTUKYj9n551CfrTXW4YnzAeMMkXUZS4j9
         bJyl6y7/jjBGhFOcmzxsV5nQAxN6gzgowgFtWP6xVDfxlF4JhssmbOyyIypcCAY/pWk3
         CsL/H348ReoyYpLr5IRABLt/NIJIYVlRtyjzfsQJRPhyEm1VNwQk/Vy/8eXc+4RePySH
         86Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=l48XuF2scyvP7hdlu6MR6OOPL5BYh/UrElmS5+/Cq5Y=;
        b=MKlXzAasqDMhHekOefH6hfxxFPu2nth1Xe2GGXuEATb6p8CzsuTGxCb0TwsI3z1WGS
         7xAUxfjcTz7lWxtHO1KzCWMp/S/+INBEXadg2PzWmZZFALHYlVcbeaK1YJhL90Kx9ore
         ULnfefGj2zWaVmAbsf6nj2mGjvexI3E0KecJr6Z7n7wUPFfk3BXk3igGpbem3gCYoz1U
         qLrwt6uEenlBlgpLO2MSvZWgcVqC3N932h+xwd1ATWNV1nyawlX9ESjk0cwsud418Q1V
         t3syp5/68BQ1fWlLkrWk1iOS9z6fQNNVR5/5Q552ptVJ09xV5UeTiLlX3k19jRGrhAur
         bR6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ofjGHoZr;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id l1si165525ybt.2.2020.02.11.09.24.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 09:24:49 -0800 (PST)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id n17so8558826qtv.2
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 09:24:49 -0800 (PST)
X-Received: by 2002:ac8:71d7:: with SMTP id i23mr16061320qtp.50.1581441888924;
 Tue, 11 Feb 2020 09:24:48 -0800 (PST)
MIME-Version: 1.0
References: <20200211101043.3910-1-natechancellor@gmail.com>
 <CACT4Y+YdQCfprPWicQWtgCL1AoF2N=ee4Bkuat5AihLxYCbmqQ@mail.gmail.com> <CAKwvOdmSq7S3i6LDbOC=xGxi5B6hG=MGwfcaHXXuTzr5cxeUnw@mail.gmail.com>
In-Reply-To: <CAKwvOdmSq7S3i6LDbOC=xGxi5B6hG=MGwfcaHXXuTzr5cxeUnw@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 11 Feb 2020 18:24:37 +0100
Message-ID: <CACT4Y+Y+gz13-Bd4A5ePuDcbaq8Y-d-212w4DUkhVaH2MDRXxw@mail.gmail.com>
Subject: Re: [PATCH RFC 0/6] Silence some instances of -Wtautological-compare
 and enable globally
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ofjGHoZr;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::844
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

On Tue, Feb 11, 2020 at 6:18 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Feb 11, 2020 at 8:45 AM 'Dmitry Vyukov' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > On Tue, Feb 11, 2020 at 11:10 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > Hi everyone,
> > >
> > > This patch series aims to silence some instances of clang's
> > > -Wtautological-compare that are not problematic and enable it globally
> > > for the kernel because it has a bunch of subwarnings that can find real
> > > bugs in the kernel such as
> > > https://lore.kernel.org/lkml/20200116222658.5285-1-natechancellor@gmail.com/
> > > and https://bugs.llvm.org/show_bug.cgi?id=42666, which was specifically
> > > requested by Dmitry.
> > >
> > > I am not currently sending this series to LKML as I would like some
> > > pre-review before I get torn to shreds :) I have included the
> > > ClangBuiltLinux mailing list to start plus a few other potentially
> > > interested individuals. Look for things like dodgy explanation or wrong
> > > approach (location of macro, naming, and such). I do not see any more
> > > instances of this warning (aside from
> > > https://github.com/ClangBuiltLinux/linux/issues/749, I just need to bump
> > > the patch for acceptance).
> > >
> > > Once I get enough review, I'll post to upstream for review and
> > > inclusion.
> > >
> > > Let me know what you think, cheers!
> > > Nathan
> >
> > Hi Nathan,
> >
> > I don't have any objections. The series looks good to me. But I also
> > can't predict the results of upstream shredding :)
> >
> > How does compiler know about addresses of sections? as in e.g.:
> >
> > mm/kmemleak.c:1950:60: warning: array comparison always evaluates to a
> > constant [-Wtautological-compare]
> >         if (__start_ro_after_init < _sdata || __end_ro_after_init > _edata)
> >
> > Isn't this info only becomes available after linker script?
>
> These are forward declared as `char[]` in include/asm-generic/sections.h.

Yes, but it does not know values. Compiler does not know the result of
this comparison, so from a practical point of view it does not look
like a constant. Maybe it makes sense to warn iff compiler knows the
result?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BY%2Bgz13-Bd4A5ePuDcbaq8Y-d-212w4DUkhVaH2MDRXxw%40mail.gmail.com.
