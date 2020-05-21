Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXP6TP3AKGQEFV43BUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id E531F1DDA23
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 00:23:26 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id y198sf4054042oia.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 15:23:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590099806; cv=pass;
        d=google.com; s=arc-20160816;
        b=NZWFhpcxAZt/822qLWYAkPwAzhegT0dumXEWumi1X51DNEVT2XJ6DS4C5tZbKcI3mo
         6obiUP0xtRUM3DZvG+5cHJqkiP/fo98qHV7G/UllhJQmbYhzc1d+i9XOs04thK1vaiTm
         rNlqkVikVKNc6GQ0/DwRYgbidmyoeV3ylWURrPxvzvxBpW1o6H9ybluRnLqcTOHEKc7p
         /G56NRTvXkQRZWVtCcFJ2HGCUPSguzum3XSuAfs/sZ4m9n34Nzijon9r9hQV38m4DqO2
         z7xiV9in2vkEMMSsOfsRnt5qTO1HjMH0zSIhQsd/9zs4lpT7Y1TNC3DPHDTmiCMVTk22
         zL4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Wxs4a2rS9BIRahFQXraHf255FfbwvH18B/hgTd9Vo/g=;
        b=jCmHRmnVkYQN210JN59t8NWl+yZEPNsBTIj2XMz+ZiRt464uF9u6Z31tHn8JRy97Rn
         oNzuliLv+qytEf3j3IC/whwgzF3sWXEUO0s59YN4nUhsFsIB+2kfmJCx+dyOXy9TZyKW
         NvIwiA5cVv68BaK5UgaNctEv/d6/OPtEBbc8AzqHorktniMShtgtcfsG9WTcFykFzTSV
         vFfqG+rWXRJzb3Rq+aLA2DvbSOk5eiryiP+IuY17JjMofRokyPhSazRZq8ia4VsLGp36
         pqWaa73qMHhxZqS0I18p8g4TaaKl7+n9I6HQlaLmR4cYGYwiu4LmpD0rxVsaqyh5Dqav
         M4Gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W+8Ptz9t;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wxs4a2rS9BIRahFQXraHf255FfbwvH18B/hgTd9Vo/g=;
        b=AratYbZHP8CKEGTTpwDQ7UokuSq2HEEPUyTf4t/tqYy521uXIYm7oq/2xS6/tLnEmh
         VUAmbzIY4J6gq7hStWySEAuAMLte/uBoAdmsJCr1zCL7zWW4zzoPZfsUsTpLqJftNp/t
         tw//yIGi3Rbc0eSPs4IJ4uQesTjQJoOqAzrVBLJv5zl8XS3RxW/G//pM7iw6nFoSzzne
         MDJrvj21zr4A8hGiDe+LIiaIRS4aC/OXF1Ic4rp4pzeJEiuggPVN1qt4qC/s2LO/WNzQ
         ICL1O+6seD8oYF+iELv0Kkx021Kc+vwlZLQRACneidnQsMyOOzfS5KFExv/zjBiacYVZ
         p5ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wxs4a2rS9BIRahFQXraHf255FfbwvH18B/hgTd9Vo/g=;
        b=Bb/d9r/hvOvPSJ93/o6JdYMZh6vFvbNav9SZgU5AnhdYt3sxuGHu+7J9LMoysfTImf
         W+4O5fOdJ+bBEoLTPdJT/7iOUD/wo4fkRZsot1lWEH8Ui/NQJyvSPJJ+jGdbxHk5QY6V
         omywDff8C6kmfBFcM1IrLzpLMNBuqeN5q7x0ZYWtJ0I9aukMwVUxCmD+0JGU9opZ8cDW
         eKYqNt/kTwq4nOem8nszSEMUExUyzDE50Y54PV7CAFb5IVcoTMolKlbjRW6kLvq3OwcR
         Yd1QOQf+za7om2nn2b56hVuOrontoE8ceeh1nyLYfADBoWMouhFRlxQvD5/JAv4+1BYD
         qH/Q==
X-Gm-Message-State: AOAM5320NYks/tdQSYEX2NmdtGA+GgsIjYXityLt+FSydFZ5/fqBUmRk
	VP8xQvOrE5mCiXctdbSF7po=
X-Google-Smtp-Source: ABdhPJzuRg+0nXeLtmJxk86vEVlxQHaOFeAE/6EPR3vZxUgQlwYA4GD9bFbV6NqxWfl9oCuJtHRwWw==
X-Received: by 2002:aca:f00b:: with SMTP id o11mr604847oih.174.1590099805883;
        Thu, 21 May 2020 15:23:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1c34:: with SMTP id f20ls742095ote.1.gmail; Thu, 21
 May 2020 15:23:25 -0700 (PDT)
X-Received: by 2002:a9d:c42:: with SMTP id 60mr9269576otr.63.1590099805490;
        Thu, 21 May 2020 15:23:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590099805; cv=none;
        d=google.com; s=arc-20160816;
        b=KK65/EaaEcl9gP2ZkwF0U0jc1swstlbe4BYt5hkyz5+oJwPb7h4SZR2cZZ0+M0qApk
         nNdrFISq5wU11IGIfA3KykrPJv2xT/gLD56sdpiJuG4A2iKLEb5sEuS8u5/W7LotztW/
         ACviTIARf1uO4JvVv8w59aXKGnEs8kURnCZhSDqRlcFo+7PECJTw9yqPKLxIzBIp6E6B
         McpzoXfqAv988g7e6w9Hj6Pyp9tq9sTvJyJVecpoY/+SNGKgpcpRPgAPWfskGDDhIEF4
         AC0AkA4TxnwY3U8GnT0/rf2Z+kbhsWg+571/ld6PHmAab3FUYM2j91x1J9ZFoC7sT6D6
         /JAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yCV7YGOue6+HEZJnM2j50Jm1kKfGwuf3awt8ZBhkBDo=;
        b=mshlAoF0WgL8LIi6xPNZf8oTQj/e5i6iPQzmqpveHOCgPktTb32k26gCm/N7JcubOH
         sgwedKOYoQQnJkFYHxgNyk2K2jd5itf7S+Ifh2SPIqxqa1/8y/gv6Eph4eZLCBN1aK9e
         4W1C1fpstwbU4l3wdlIbO+TF2FTzggQgE5ytQsNQxBKJOxRHeBhHSzoCey66vPNo2bwc
         FH0NEm9bX+PGq8i99BLFaSJkvmz4gq2JgPICjTgQotx2D0AvGWOwJ2v8SNudymHj1RI2
         HrkRJQ0g51mJZmZNNG7GRMPLw2xn15b7kisxuAEGwTA+7GetySdLq3yPJaMRZdE5PfWL
         sy/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W+8Ptz9t;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id u15si621099otq.2.2020.05.21.15.23.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 15:23:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id x11so2562131plv.9
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 15:23:25 -0700 (PDT)
X-Received: by 2002:a17:90b:19cc:: with SMTP id nm12mr734050pjb.25.1590099804438;
 Thu, 21 May 2020 15:23:24 -0700 (PDT)
MIME-Version: 1.0
References: <ClangBuiltLinux/continuous-integration+164415390+broken@travis-ci.com>
 <5eb43a0c8d43d_13fb5db924ca0104770@travis-pro-tasks-6cc9887df6-4zmjd.mail>
 <CAKwvOdmendjEgurRBAyi4R0rDZRdwfHjddS_pfOQ6761XiiFMA@mail.gmail.com>
 <87d07fcdee.fsf@mpe.ellerman.id.au> <CAKwvOdn0Spc15v3WUE_rdrb5UvaTXmOvjEJOsD7ahktQOwQk+A@mail.gmail.com>
 <20200520010148.GA3327346@ubuntu-s3-xlarge-x86> <87r1vdh28z.fsf@mpe.ellerman.id.au>
In-Reply-To: <87r1vdh28z.fsf@mpe.ellerman.id.au>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 May 2020 15:23:11 -0700
Message-ID: <CAKwvOdn_rNgPERgUfBgGywbyRBdSoEbQCaBO1o7fgqkMcCYXqQ@mail.gmail.com>
Subject: Re: Fwd: [CRON] Broken: ClangBuiltLinux/continuous-integration#1432
 (master - 0aceafc)
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nathan Chancellor <natechancellor@gmail.com>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=W+8Ptz9t;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::634
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

On Thu, May 21, 2020 at 6:00 AM Michael Ellerman <mpe@ellerman.id.au> wrote:
>
> Nathan Chancellor <natechancellor@gmail.com> writes:
> > On Tue, May 19, 2020 at 05:56:32PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> >> Looks like our CI is still red from this:
> >>
> >> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/builds/166854584
> >>
> >> Filing a bug to follow up on:
> >> https://github.com/ClangBuiltLinux/linux/issues/1031
> >>
> >> On Thu, May 7, 2020 at 8:29 PM Michael Ellerman <mpe@ellerman.id.au> wrote:
> >> >
> >> > Nick Desaulniers <ndesaulniers@google.com> writes:
> >> > > Looks like ppc64le powernv_defconfig is suddenly failing the locking
> >> > > torture tests, then locks up?
> >> > > https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/329211572#L3111-L3167
> >> > > Any recent changes related here in -next?  I believe this is the first
> >> > > failure, so I'll report back if we see this again.
> >> >
> >> > Thanks for the report.
> >> >
> >> > There's nothing newly in next-20200507 that seems related.
> ...
> >
> > This is probably still a manifestation of
> > https://github.com/ClangBuiltLinux/continuous-integration/issues/262
> > because rekicking the tests usually fixes it.

I thought we had upgraded our version of QEMU in response to this already?
https://github.com/ClangBuiltLinux/dockerimage/pull/44
https://github.com/ClangBuiltLinux/dockerimage/pull/46

>
> Oh yep.
>
> I was looking at the RCU warning, which I still don't understand, but
> the lockup is presumably the same problem you hit with interrupts being
> lost.
>
> > We should probably just disable the torture tests like we do for x86_64
> > for CI because we do not have access to QEMU 5.0.0 where this should be
> > fixed. I believe it is slated for 4.2.1 as well but we still have to
> > wait for that to be updated and packaged in Ubuntu.
>
> You just need to start building Qemu HEAD as part of your CI ;)

LOL
https://github.com/ClangBuiltLinux/dockerimage/pull/46#pullrequestreview-395639442
Yeah I think the hard part for all these dependendencies is the risk
of living on the edge of "top of tree" for all of them, and trying to
control for some by using stable releases.  May not always be
possible.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn_rNgPERgUfBgGywbyRBdSoEbQCaBO1o7fgqkMcCYXqQ%40mail.gmail.com.
