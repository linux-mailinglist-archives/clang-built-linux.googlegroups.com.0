Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDM6RTZAKGQE5TLB4UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9A8159A88
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 21:31:11 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id dw15sf2302609pjb.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 12:31:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581453069; cv=pass;
        d=google.com; s=arc-20160816;
        b=z2bVxCA7cIy9MJcHecvjeugALgrJXWrxV9gAdZP8I70p3hM/5DUPkQAEsoLWfFZTPY
         ncV5+kIodlTZAMoWbrlhMBKTYc9IwqKTppoHRDU8mkPen3+te0rKWWANMh7/Z7N1Ejtf
         wlaWeanqeeROv28fggJW+tac2PcTlqhvG/cOZROilzYdKDE8WcO2L0X7XzgMdhU0WIjv
         euGz+x6DTj3N0BqVEmWjHKCwRw+b5xGcjHTU/HkQHj+HnAOnG9qJDZ6KeYoJgRz1UOos
         tsvKX3aaUgqTziCSsAHNCNLxSR0bFx4L1sRD41LouElRWYFVcOhDFq3q9yrALFhzh4NL
         o5qQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=u0NWReegpFCM05/fTJkVoPBidTBxs+MsvMK2afq2NjY=;
        b=UCL6ZbedsFEX7FwAfH3x1vWBjyWmANpscD+Kp2BuIacoQWNC3EZBP7Nl50n8sAb/z4
         aPthhDlcvzLQkurT1YsjH5PQF88yuIuTlVGYWfGcyALdbR7gIeagRbYhJueKXPkwvLuQ
         P0tyQaK42Hxq13cgNr+lpWhsIoabqLCtSCtwwIM6nl6NeHd6mKT6+nE85ro6aS6djgr4
         si4q/kjCyzIDXU+IFIRRuF7ViPoytP2DQV/FJHULlLPg6LskD626B2UXVXeRHuI2alWI
         AUgMwA+jpzEZw+sBlCnWYPtfNsCf2riAY0BIP1SglB9utkRVD+cyOJc/tuTcw2lvTMja
         Ajgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mjni4Ux3;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u0NWReegpFCM05/fTJkVoPBidTBxs+MsvMK2afq2NjY=;
        b=WmrlwiJlimwzFIUwx9/3kNfCZTTf+w+8fuc6D6VEtcCxxoEtaGEWc8WAn2EjWjVVbT
         +6Wf2Gqu/xBfuEDLDutYO4TwX1VEB73jqigNMzjlnfsXr0UEz5pBU0VWgYaAAiBl08qU
         mI+D5ikvUDl0UKe4FBdBetoQLcivwCt8XsWfklLCusqvCImn9X5jDSzMO7KN+NuCsUwB
         b+KXrLDt3Y/STxnSwessQJLOkcQxJIgMPSPs6hvnXf7/XEjfqYAD6w963x+ZZN+Gww8f
         I72PPvrKGeRAmG9NM/Kz7fizrrCxVWqhp6j/81xGFLMXGZzG2rrjN4S3CkotvnYBcIcm
         i8ig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u0NWReegpFCM05/fTJkVoPBidTBxs+MsvMK2afq2NjY=;
        b=kinAXYctjaapicAHV9X4ZQ1iX65jwYBiHcO6aZcTI1RyFm/bILemiGjITlwV0/t0De
         qhitIvIWZ0nvZpKyK7UWWxEj8+VN6xBh7RmJAYxmL3FO8LAkST3BAgjv7tK8htOe/UEV
         PRAaofJuDzEhsrX2sr/srL/iF/gbgGpuPF2mr81hU1uoOmk7yn06aRMEHINu5H+j076b
         Y5F+jEfvAURMMTVxOTYYhI2BNXGqippoqcjOrh9hbizOrha4sSI5pxMyEw7MRVRPO6Tm
         2SETr9DqPcXY9ydFN1BdMD8R/HKsQ+4kv8+r2aNxmkyDz/+teakhfZ6XK5Oj7kS003mk
         RVoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=u0NWReegpFCM05/fTJkVoPBidTBxs+MsvMK2afq2NjY=;
        b=SEV/sHsaERbFSi8LMpa1yrcFUlQUpT9VLHQKHGL0K/1UwEOqHSQc4l+/P09zf6KWYV
         1cVQ1YmmIje74gD6QiSVpWlSiFj7dRVrnL9KGI0zRvq8pKV1nHVT8MCP77T0bStdafwY
         bkEcRuszq+Z1H66JXd2VpT0kuFE7mVKEmHJnByy9TPT8s4GyQp2hCxtnx+Vr15IOXFU7
         G77oz1Dnwi2z0/t16lRhjjku8u+spDgVtZMVAAUK9Z7wNgiQkwVK2+nfpKv5UnJfC7u9
         AIKyqmtwh+e4xT46i++ZVgdTXMG/y1h+Sy//e0eWN2lfOiHjxT7tcxDis9JCdUL23E/Z
         stbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUwGlDI2im8UP6FxF4JbLXcIAn0vPoM2qqZkoc1QbdQqe0a2fh4
	P5PhSGxuOzar5OEeKXQ5vww=
X-Google-Smtp-Source: APXvYqw20cTZu8dwwEAxXcXpmS92Klo+6EEjGqs4sFhwbnGoHasD3yFgW0FHb9PW9+5BNKrnUuP9pg==
X-Received: by 2002:aa7:95a9:: with SMTP id a9mr7968124pfk.15.1581453069509;
        Tue, 11 Feb 2020 12:31:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c244:: with SMTP id l4ls6181526pgg.2.gmail; Tue, 11 Feb
 2020 12:31:09 -0800 (PST)
X-Received: by 2002:a63:8f49:: with SMTP id r9mr8769530pgn.190.1581453069041;
        Tue, 11 Feb 2020 12:31:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581453069; cv=none;
        d=google.com; s=arc-20160816;
        b=sDwtOAsz+OqeliiqOx4KBv5Ep7V8KtU/X4sAIwOups1KXKkC5s8rGJAqBEcCqY/q7s
         PZLY7qEimbpsTSyOYlgHc6cdbUhRiH3QnssbyWvaHVKFM6Fsj+P6lTmwop3QWdTDJ4HX
         qa57MsObboeHYlf23Z7Rs6YaViTzU4Q2hUbFBXG3YzxgguA2lEcUXvR88I0FNXpRtBAg
         N6bbccx7iezdO2fQTg1SME5Qw+8Jl2gq1dYplbE+Xp3Ys4MwJshtT2SuYmhL3bUUTMlz
         WIHaI1R3u4OS/+eiOm4q3zSuUqgR2hkINpn/5QDJsQ906bfH0UUOfYKHZm/6rwbLTIic
         FxXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+KAmY6zErQ1I5UZNh9+ekQ9uf/1K4EKHEKVtt2hLabk=;
        b=V0FAem5Sv/XIHIeSsj0b1Aw+ZCmxd1vAr5SJxFJdu8+0Puc2EbW8eJA7CLrFmWepJ+
         IqheRFE8+hufXrppQxq+niwCx8RqOKq26IhFAv2yAHJpRH4jbB44BToqpXBJm7ylc1LV
         a4PKxkAwWdLUj9qBgzeY/xE75SdfD+iE8GXpkzlaYNS2CF1hCYGJrKGm8bZDsE7zLnhV
         WNGhKPPGX4pf43m/Vj3bEHud5o5N+51/oiwAz3qL4WqEldQkG2Hw1KVNw6HrLwdx0RW5
         LoDVDjT396A35yFx8IS994iJau7+j215f0DuEIDZogr64Fm7kQbBzCFPoU4ZVVL1utVl
         fvSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mjni4Ux3;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id n20si253376pgl.1.2020.02.11.12.31.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 12:31:09 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id j20so11523979otq.3
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 12:31:09 -0800 (PST)
X-Received: by 2002:a9d:6c58:: with SMTP id g24mr2606otq.229.1581453068639;
        Tue, 11 Feb 2020 12:31:08 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c10sm1534740otl.77.2020.02.11.12.31.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 11 Feb 2020 12:31:08 -0800 (PST)
Date: Tue, 11 Feb 2020 13:31:06 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH RFC 0/6] Silence some instances of -Wtautological-compare
 and enable globally
Message-ID: <20200211203106.GA14632@ubuntu-m2-xlarge-x86>
References: <20200211101043.3910-1-natechancellor@gmail.com>
 <CACT4Y+YdQCfprPWicQWtgCL1AoF2N=ee4Bkuat5AihLxYCbmqQ@mail.gmail.com>
 <CAKwvOdmSq7S3i6LDbOC=xGxi5B6hG=MGwfcaHXXuTzr5cxeUnw@mail.gmail.com>
 <CACT4Y+Y+gz13-Bd4A5ePuDcbaq8Y-d-212w4DUkhVaH2MDRXxw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+Y+gz13-Bd4A5ePuDcbaq8Y-d-212w4DUkhVaH2MDRXxw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Mjni4Ux3;       spf=pass
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

On Tue, Feb 11, 2020 at 06:24:37PM +0100, Dmitry Vyukov wrote:
> On Tue, Feb 11, 2020 at 6:18 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Tue, Feb 11, 2020 at 8:45 AM 'Dmitry Vyukov' via Clang Built Linux
> > <clang-built-linux@googlegroups.com> wrote:
> > >
> > > On Tue, Feb 11, 2020 at 11:10 AM Nathan Chancellor
> > > <natechancellor@gmail.com> wrote:
> > > >
> > > > Hi everyone,
> > > >
> > > > This patch series aims to silence some instances of clang's
> > > > -Wtautological-compare that are not problematic and enable it globally
> > > > for the kernel because it has a bunch of subwarnings that can find real
> > > > bugs in the kernel such as
> > > > https://lore.kernel.org/lkml/20200116222658.5285-1-natechancellor@gmail.com/
> > > > and https://bugs.llvm.org/show_bug.cgi?id=42666, which was specifically
> > > > requested by Dmitry.
> > > >
> > > > I am not currently sending this series to LKML as I would like some
> > > > pre-review before I get torn to shreds :) I have included the
> > > > ClangBuiltLinux mailing list to start plus a few other potentially
> > > > interested individuals. Look for things like dodgy explanation or wrong
> > > > approach (location of macro, naming, and such). I do not see any more
> > > > instances of this warning (aside from
> > > > https://github.com/ClangBuiltLinux/linux/issues/749, I just need to bump
> > > > the patch for acceptance).
> > > >
> > > > Once I get enough review, I'll post to upstream for review and
> > > > inclusion.
> > > >
> > > > Let me know what you think, cheers!
> > > > Nathan
> > >
> > > Hi Nathan,
> > >
> > > I don't have any objections. The series looks good to me. But I also
> > > can't predict the results of upstream shredding :)
> > >
> > > How does compiler know about addresses of sections? as in e.g.:
> > >
> > > mm/kmemleak.c:1950:60: warning: array comparison always evaluates to a
> > > constant [-Wtautological-compare]
> > >         if (__start_ro_after_init < _sdata || __end_ro_after_init > _edata)
> > >
> > > Isn't this info only becomes available after linker script?
> >
> > These are forward declared as `char[]` in include/asm-generic/sections.h.
> 
> Yes, but it does not know values. Compiler does not know the result of
> this comparison, so from a practical point of view it does not look
> like a constant. Maybe it makes sense to warn iff compiler knows the
> result?

I wonder if it is possible for the compiler to know the different
between linker defined symbols and regular char[]. This situation is
pretty unique, I am sure there are not a ton of projects that use
linker scripts and check the values of defined symbols at run time...

Thank you for the comments so far!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211203106.GA14632%40ubuntu-m2-xlarge-x86.
