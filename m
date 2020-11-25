Return-Path: <clang-built-linux+bncBD4LX4523YGBBOGF7P6QKGQEG23T7TY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 88ECE2C4B4D
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 00:03:22 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id c24sf121367pfd.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 15:03:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606345401; cv=pass;
        d=google.com; s=arc-20160816;
        b=N8/h2jrw0v+BdgJX1qFEbKGEVdaT0ndL1r8RP04be80159FCsAZkNi4ynCzqnGQ/Oo
         rof1/F7FE2j/88F98pH+hRxsqX8YbEOH8QfZHWH1+xM8yE8KhpN5PbM99+NbiJkjO2CP
         hKDp5ahB5ZJ47i8I/NosaghPSuo09lst3rcxt9bZ9t20mTP/L//2VFwQCps1bp3/Qd7K
         2ziZxYVrEiX2DEOXLp4LQZYf31CSpCh9Wk1SvrTwpJQ1pJ2D/jMeDV1S358p6ThWDSQy
         JAF41RD2BNoBpvOx0JiC05OKy7mTGFwvLHbURaGkAqvjNsk62XRCrZbqhobaEtvucAlV
         YXNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=s7O6LjDQ2/D/OZ7WxaT9KxqovEbx7C72CpWJnEqz3l8=;
        b=sUe6c6JeT7k7N79wc8bLKhj1eSO7rRik5r3x05/FTufY1cWp3l0+2nBT13BC88f6MT
         cT2JCWpKjXsBg4aiKf9RVli7yFmHrl8uKmXd0XITgyM+nTlLzAhvLzT1WeKvVqQX/cb4
         X+9/AvgSMDW3p4W4H+SQv+VLriknDQnTC6zSW9HlD3S/g0gFbwsNlGxc7RopQH0L/5+X
         vutCGSfmDeYVFu2y7tnTR/ZK8okR+Uzn4WQ/Swo1hEmvD3JCI7G4MdmMDn/MpyUqJR7n
         Un1lpq6CQyVO2qzMtYCnXMZaSq2rDUuWH1Tj7+AY3URqxMjZxx7xwNd+w4CvWy9WrwsR
         pFXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s7O6LjDQ2/D/OZ7WxaT9KxqovEbx7C72CpWJnEqz3l8=;
        b=A5YRwGRS4SmGD4nO8Dn4haXxidy2ewI2e1UBxtArbkgOVWEoOC43m/MMbk6USuDtzA
         r7LVhSniip0gfvP8jjOBIzfUJJhIgpHOSb9MtAYD3Qd3dS3RcZf/pavxOVxNnpvma9p+
         9TFhVR53hCE98YVZUcdB0DlLtXJi7NL3qK+ppcCt2ckBY1LR1Dmgw0MybijNGK4frh0O
         2ngw6jntAw7lZpz1vkUM9WXn11SbuwtMuR6QJ5gmn7mUOQHj8/eE7fl7hDWBJKcJgpaG
         XjEZb3pHh2tQCH1cnsrpYq1X8U6svs9BbBSaxn6OtEJu/YLW7OLteMZnSmAtz4xSKsKA
         5q3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s7O6LjDQ2/D/OZ7WxaT9KxqovEbx7C72CpWJnEqz3l8=;
        b=mh6ggQLpIFwAtjCcI6uQ81RKnqsp/0f3MNtxg9+ivWON4tWIRPZ+r5dg2XHQvu/bRH
         N2sTjeT6lV55tePi0HMInKd8AqtWhaUGvwBVy9fhams1noz5IovfHHEMqdHqhPkOJq56
         hRJ2ui2EZMAUQuxrZnuVcHV8mgc3DpvYWINdTLwjURRUVv2KZjrj01Onh3i1P61nK5Yw
         LSto/DizfJ+aM+czr5+wafJgFcv3uxC4uV2zak5HvQz4VDPjS2iytsXmHinqBuXWHGkD
         XBVUJT9LIX16TgscTmUKVgxeuCw49XZ0vunxkZhcUptjPCWwB8FwbFv0quqP/hDhhlcr
         q/aQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tTyk6fkDuWsXwzrnSqkwsxoghlTKxSgMf5NSB0mEBaDVxlpr+
	TN49gJVZWOwwMg+zW7d0qLc=
X-Google-Smtp-Source: ABdhPJyZN7sCB8uvmUcgGm+QG4lxrahySZnv/JOxpjIIircfaquLAecUNhLmyG7LfM2SnN3SAt27Bw==
X-Received: by 2002:aa7:90d2:0:b029:198:39d8:e5b0 with SMTP id k18-20020aa790d20000b029019839d8e5b0mr172923pfk.1.1606345401121;
        Wed, 25 Nov 2020 15:03:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ee90:: with SMTP id i16ls2415545pjz.1.canary-gmail;
 Wed, 25 Nov 2020 15:03:20 -0800 (PST)
X-Received: by 2002:a17:90a:f485:: with SMTP id bx5mr57165pjb.190.1606345400324;
        Wed, 25 Nov 2020 15:03:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606345400; cv=none;
        d=google.com; s=arc-20160816;
        b=UtK9n3euqDxW5WN2fNpdcP60JY4tsJ6zv/Jii2vYWxDzOIsgewey9pksMoY5xe0D4g
         xCipMD9Zzg0cu+uL9mpeAgJS+rf/aiTQcnRZZQdEKTkidjmMzoyJVA+lAJ6boNPLmJuu
         o3Fmn4vLjqQq8cyS9oSVrfTQE4fHb8FFoKCuCt1qnsTIRlUeISl1YK+mYXkanPteJD2z
         GurrfJaFp/ILeGH3dxWYOci0a++NyRrwg3MCVNfvO40QT9W4S0HAfl59WFtJUnrsDtQI
         HxEGO8IfrbIJCxJ7fOkRHGrVbYiCFHUdDbh9yVQ/6IOQwqe/xUhKMXN6W+hsAWsOzcum
         8Aqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=lkD8uhFVRIhuCLrujgH2Uwrawbc1qXpiRuPUYPBG3VA=;
        b=PkyORJi/ucWkg9qmJ0ZnBr4Z9SGsGSXhndOdWZsL0GM8WS21BqQ3qAtpGS1mUPV9hy
         V9oPxhYyXtMDYISH7DalF3NBvnWSt7cPf/bUC1w5Ve8okxEjY57aXfU3pej05lGGQw6r
         WDW9nhC4wTeiV/sOhEEDF7COT6Tt/5FWB0rKCvPXrtu9CM8dk4/mEP5V13qjvI3sKln9
         xE5f+EkRs93jXN2elBgO2ToaHoxJeP/QoqQXSvvOBpXjHBr1nvYrljalIFdOU/jyqVN4
         iA3/pdNn/j3hrEfWrkJv8pr7mUvb0sOKZk4Wb/vDDhEPLY3yhV91XPnQSy1/X0aM6FTH
         2q5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id mp11si362745pjb.1.2020.11.25.15.03.19
        for <clang-built-linux@googlegroups.com>;
        Wed, 25 Nov 2020 15:03:20 -0800 (PST)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 0APN0BF2011578;
	Wed, 25 Nov 2020 17:00:11 -0600
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 0APN0ArB011576;
	Wed, 25 Nov 2020 17:00:10 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Wed, 25 Nov 2020 17:00:10 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Kees Cook <keescook@chromium.org>
Cc: Ard Biesheuvel <ardb@kernel.org>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Alexandre Chartre <alexandre.chartre@oracle.com>,
        kbuild-all@lists.01.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-toolchains@vger.kernel.org, kernel test robot <lkp@intel.com>,
        Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST entry C handlers
Message-ID: <20201125230010.GC2672@gate.crashing.org>
References: <20201109144425.270789-22-alexandre.chartre@oracle.com> <202011131552.4kvOb9Id-lkp@intel.com> <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com> <20201113234701.GV2672@gate.crashing.org> <CANiq72nKMd_BOOowqowLAn0PZ5tu7X8G=8OrpG34qYHGLDGw6Q@mail.gmail.com> <20201114002624.GX2672@gate.crashing.org> <CANiq72n7R5Pfx4q4F9QpTrLK3Jxm0_hFu5FTvM-JcoZgr4SxRg@mail.gmail.com> <CAMj1kXGb6LGrDiM-oSxnt6zcCouKyhkNC+vK_PLCCWQWOSPpeQ@mail.gmail.com> <202011251156.055E59A@keescook>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202011251156.055E59A@keescook>
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

On Wed, Nov 25, 2020 at 11:56:40AM -0800, Kees Cook wrote:
> On Sat, Nov 14, 2020 at 11:20:17AM +0100, Ard Biesheuvel wrote:
> > In spite of the apparent difference of opinion here, there are two
> > irrefutable facts about __attribute__((optimize)) on GCC that can only
> > lead to the conclusion that we must never use it in Linux:
> > - the GCC developers refuse to rigorously define its behavior, so we
> > don't know what it actually does;

This is because it isn't clear at all what it *should* do, for some
options.  For others it is obvious, and it works just fine for those.

(And we do not rigorously define the behaviour of almost *anything*, not
in the user manual anyway!)

The interface has huge usability problems.  We want to wean people off
of using this attribute.  But claiming all kinds of FUD about it is a
disservice to users: it works fine for where it does work, there is no
reason for people to hurriedly change their code (or change it at all).

> > So it does not matter whether you call that quirky or something else,
> > there is no way we can make meaningful use of it, and therefore,
> > abstracting or parameterizing any of its uses should be avoided as
> > well.
> 
> Perhaps it's worth adding this to CodingStyle or deprecated.rst?

Sure!  But please don't claim things that aren't broken are.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201125230010.GC2672%40gate.crashing.org.
