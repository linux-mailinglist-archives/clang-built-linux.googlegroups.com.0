Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDGVSPZAKGQE7H27WRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5AA15B988
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 07:19:57 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id d3sf3828069ilg.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 22:19:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581574796; cv=pass;
        d=google.com; s=arc-20160816;
        b=jNCtG5bEpZWAQOu5QJAP++2nZr2Rl2C48gBIhPB0bHcQbCOAdJqZ7kGN/mYTReZb4q
         5mpjYXS7yaLytc88MrrjrGkpu/xBMMqiHUf+3cP3MTjdgI3z9iiAL0yXRhljWlPuPMeW
         w5MXxpRIGQeXu3yEW+PVOExRZkA1dowZk4mpHGc0AeqXXfJHu45gslyIr8vQyKPcJvjD
         XOMB+ZglfWsarXmDtfY1uJmhL16bzpOAPiQWUWEnK9Ef68+14hARlp4WdcTcHv09NQ3v
         4+6IpsTVv2kFekpHKPgRE17QfNHe3CUvRkB2E6IRU08dA7FVke8UgXLlGEkopORF87KQ
         Jy6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=RGERvWpCW/MUgWyDntYkhIM05Birdnn3GuJOhYFAHM8=;
        b=gfu6fCdUr1DY0Zjh9hN0fNMRkEFeG+BSAS3jN6csGFYUhc2mEa1w6mjBw5bTXWtFfp
         iOU2NWyO4LAGP21vgqUw7kCTvZMqPheS/aUA8VIQpOdbyCBuEsk1u4RF+CKvfbBuESGr
         UiAQGTQjPHV8Da4exlcZTfz/E+iuup83gOtBMMNlaj3nnLDBdmIbHTWDck3gMH6MmPZI
         Qu6vLIbU9Ox/+4jYgTw/GN7TWPeiwBTclRcPJLE64NRcARaqKsehYTiyAONCOWedxtjL
         k34qozx80WQlE04z2YIw4nhBXhrbZMAi8HPCE/X7G5aD3/MDXXacSCH+4gpW1oHcqCnX
         CqJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CKbe9KYl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RGERvWpCW/MUgWyDntYkhIM05Birdnn3GuJOhYFAHM8=;
        b=pmoBd88wtBsUHDEcm5eAkvVikfsLqnchX+LjHb9Y0tJcFc9PgfsdBOQfo7hJZ70Zdg
         hp+t5HxcWbMWz4XPcc94biLrhyOwc77cdhfsm+ujuuHbEKUJlFXr7BS9C17zl7BDejjq
         2Lgr1UYI/p0CNSO08luxpoY5AfK/tsw6j+lrGr4hrZX2t4XjQu7yDbFL8GLD7/lkGgHI
         YGjdacMAMOAIMC5mem9vOGOduc9ASLLtdyo93blHMLpFiE0LAeflK9BgqjxvBe7gpeMV
         RTA3idk2jWlNow8ny8MRfVekbR5avPLlokC/BAQSum8GDURkkhjVhs8Cn2Yjnee0MNSG
         WEhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RGERvWpCW/MUgWyDntYkhIM05Birdnn3GuJOhYFAHM8=;
        b=gRrBigEJzIndlhDA3UR56Z5hKb/CZDd4edKW6e+L4TbPyiTi2UgB3GtBD9CqQT/pyH
         BgmhhmaEssZuFvZ0QRyT1wu1wH57xYgwXE9dXhDx4uFRcO74bKfQqv7O8Y4xeGGKD2Yp
         Qx/lYbj1Ku4ar810+KTrHv0INY2H84LcRI2OIxAa0HbyoDWRGzfcjSsqnLiDPT2lig/n
         XBRm2GnIsIyfeIlxQVtSykrWd6OYto1Y1MYWH9phT6xxnTeHj3Ft0lt0jH/aX3/cJo0q
         dL6hVG4AWj/WLTjILKQ3q06WVjyy3xlLrxbw3FtV5cR1w+7SZiE6j5DqWZ2QjTNJGHjt
         9NtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RGERvWpCW/MUgWyDntYkhIM05Birdnn3GuJOhYFAHM8=;
        b=YWo9ytrqlPeJzGaDAFrUCMEyhYhsZEWvKRVF+BWEu4+15Y/6M5hRSP5qpiMJ9hDVdO
         5MQ3B85Lw++eraAcHwdXqV3ufEVS5rb5p8IOoXhpVo5x+uIomxyywIrjoSg35TIGcACF
         OddhR+Kw5vPV9NbS7w7L2SgWUJgicW1cUH53sBqI+z84SWAQF36eztKYPR/t1o9o2ehM
         BmwXss4d24nC5WiSosTPZO3lrGaanoi/L8lil5ZOh1247wYQVrEBCwXrddt2/xkL7mXN
         M7+CzrppV1wjtZPF1RuA9sIs3+NYqMBjuuQtZ7hX+Pcu7kHTNqVAYYAY1urXD7DSGpAb
         DbmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVGzoXQ+AK3Ta5qdnGOqqk7gU457Pmdbm+j54DA4Dsv7L6qkYAD
	uzaSS+m7OSR7xL/tvNTveAY=
X-Google-Smtp-Source: APXvYqy0D5EFLrje9SbrQvL2UK1DifCfgjeB0Lh82d2IFjlizyS2CIpqC2EuuBP9wjwZoZMhyI3UaA==
X-Received: by 2002:a92:c04e:: with SMTP id o14mr15600419ilf.133.1581574796758;
        Wed, 12 Feb 2020 22:19:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:f13:: with SMTP id x19ls4381246ilj.0.gmail; Wed, 12
 Feb 2020 22:19:53 -0800 (PST)
X-Received: by 2002:a92:5e8b:: with SMTP id f11mr14647713ilg.178.1581574793416;
        Wed, 12 Feb 2020 22:19:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581574793; cv=none;
        d=google.com; s=arc-20160816;
        b=gvlT86ssUsz1weM5EOn76L0zwiJ66sAHwEaLNu2YuhJwYp1hyQZqcR3oDzwYHM9Ypb
         iorzZ4qZdGmWtIXNxU4o8q0+EmeK98eypKqmadg6EUnzujksFDG9OQtBcvxokSrXqas0
         eAu0XfPI2Y2B6VFMpdSyUmf6rdA0IHOgLMxA5QOFZIbKaDmefoY1ZktUkMJsMSZH/d7s
         dqAaCq79i8RK39KEzInbpAyZiE6ArXu3j0HvFGBW9gYvsROjL9g0IOjpavyfgi7L7Jee
         aU/eqvIImtLQgNmw5W/kpwz1YGwZfgxPcrb3vU3G1wA0GgeiNbDqdaYvw/SwVk4GHSho
         THUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tblO6VAYgz6cLhDfYvhO3LXGJ7wK81mMoV5wr+fZjCY=;
        b=TCMdUvx5b32Ygd1fRvFOy23dlSsfXcNylkct7sIPylaGfz9qIjS5z90j1ytYKTlFqL
         xy6N6QLwl4QLtyA0+3xFPgeWEvleWhv+uO6v7iDv9YBHEKtgznKToTVLz6vHFurr/HYd
         WoyYdYCK10BQ2yjIMcClsykvhMlhdy2aB67MmSWBUnIa1/YceMeyef+nz5MW/hz++pez
         JlZEusJb0pZCEgLmbeHVCOusJAcnNmny9YBxHXPUIzqjnAB05vEKsT+WUdW8bXZTl9gA
         csgiLLtjLefs7pd4aV1m1Pik0KI65a3qy2+wkKv2zguK7/TT6ID52t5lCLDPXYhfvGze
         W8Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CKbe9KYl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id i4si73270ioi.1.2020.02.12.22.19.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2020 22:19:53 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id r16so4535733otd.2
        for <clang-built-linux@googlegroups.com>; Wed, 12 Feb 2020 22:19:53 -0800 (PST)
X-Received: by 2002:a05:6830:1e5c:: with SMTP id e28mr11970649otj.163.1581574792895;
        Wed, 12 Feb 2020 22:19:52 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id d11sm515203otl.31.2020.02.12.22.19.51
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 12 Feb 2020 22:19:52 -0800 (PST)
Date: Wed, 12 Feb 2020 23:19:50 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH RFC 0/6] Silence some instances of -Wtautological-compare
 and enable globally
Message-ID: <20200213061950.GA518@ubuntu-m2-xlarge-x86>
References: <20200211101043.3910-1-natechancellor@gmail.com>
 <CACT4Y+YdQCfprPWicQWtgCL1AoF2N=ee4Bkuat5AihLxYCbmqQ@mail.gmail.com>
 <CAKwvOdmSq7S3i6LDbOC=xGxi5B6hG=MGwfcaHXXuTzr5cxeUnw@mail.gmail.com>
 <CACT4Y+Y+gz13-Bd4A5ePuDcbaq8Y-d-212w4DUkhVaH2MDRXxw@mail.gmail.com>
 <20200211203106.GA14632@ubuntu-m2-xlarge-x86>
 <CACT4Y+ZSTo_WzniCi_-9V7qY_o0ESRYrt5dYcb2+VP6sw6gvVg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+ZSTo_WzniCi_-9V7qY_o0ESRYrt5dYcb2+VP6sw6gvVg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CKbe9KYl;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Feb 12, 2020 at 07:30:45AM +0100, Dmitry Vyukov wrote:
> On Tue, Feb 11, 2020 at 9:31 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Tue, Feb 11, 2020 at 06:24:37PM +0100, Dmitry Vyukov wrote:
> > > On Tue, Feb 11, 2020 at 6:18 PM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > On Tue, Feb 11, 2020 at 8:45 AM 'Dmitry Vyukov' via Clang Built Linux
> > > > <clang-built-linux@googlegroups.com> wrote:
> > > > >
> > > > > On Tue, Feb 11, 2020 at 11:10 AM Nathan Chancellor
> > > > > <natechancellor@gmail.com> wrote:
> > > > > >
> > > > > > Hi everyone,
> > > > > >
> > > > > > This patch series aims to silence some instances of clang's
> > > > > > -Wtautological-compare that are not problematic and enable it globally
> > > > > > for the kernel because it has a bunch of subwarnings that can find real
> > > > > > bugs in the kernel such as
> > > > > > https://lore.kernel.org/lkml/20200116222658.5285-1-natechancellor@gmail.com/
> > > > > > and https://bugs.llvm.org/show_bug.cgi?id=42666, which was specifically
> > > > > > requested by Dmitry.
> > > > > >
> > > > > > I am not currently sending this series to LKML as I would like some
> > > > > > pre-review before I get torn to shreds :) I have included the
> > > > > > ClangBuiltLinux mailing list to start plus a few other potentially
> > > > > > interested individuals. Look for things like dodgy explanation or wrong
> > > > > > approach (location of macro, naming, and such). I do not see any more
> > > > > > instances of this warning (aside from
> > > > > > https://github.com/ClangBuiltLinux/linux/issues/749, I just need to bump
> > > > > > the patch for acceptance).
> > > > > >
> > > > > > Once I get enough review, I'll post to upstream for review and
> > > > > > inclusion.
> > > > > >
> > > > > > Let me know what you think, cheers!
> > > > > > Nathan
> > > > >
> > > > > Hi Nathan,
> > > > >
> > > > > I don't have any objections. The series looks good to me. But I also
> > > > > can't predict the results of upstream shredding :)
> > > > >
> > > > > How does compiler know about addresses of sections? as in e.g.:
> > > > >
> > > > > mm/kmemleak.c:1950:60: warning: array comparison always evaluates to a
> > > > > constant [-Wtautological-compare]
> > > > >         if (__start_ro_after_init < _sdata || __end_ro_after_init > _edata)
> > > > >
> > > > > Isn't this info only becomes available after linker script?
> > > >
> > > > These are forward declared as `char[]` in include/asm-generic/sections.h.
> > >
> > > Yes, but it does not know values. Compiler does not know the result of
> > > this comparison, so from a practical point of view it does not look
> > > like a constant. Maybe it makes sense to warn iff compiler knows the
> > > result?
> >
> > I wonder if it is possible for the compiler to know the different
> > between linker defined symbols and regular char[]. This situation is
> > pretty unique, I am sure there are not a ton of projects that use
> > linker scripts and check the values of defined symbols at run time...
> 
> I don't see a way to distinguish them in the compiler. Both look like
> extern char []. However, the compiler does not know actual values for
> either of them. So the predicate may be just comparing addresses of
> globals. What is the intended class of bugs that this is supposed to
> detect? I mean pretty far from the initial case that we had that does
> and and or on actual constants.

I am not sure what kind of bugs this is supposed to fix. It would be
nice if this kind of warning was moved under its own warning flag like
-Wtautological-array-compare or something so that it wasn't holding up
all of the other warnings.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213061950.GA518%40ubuntu-m2-xlarge-x86.
