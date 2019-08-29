Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBX5TUDVQKGQE6F6TY4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id D24F5A2574
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 20:30:55 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id b30sf976161lfq.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 11:30:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567103455; cv=pass;
        d=google.com; s=arc-20160816;
        b=GYz8WcvGszg/g1bkLb5GM/DK6o7HPI+1Ea0EOEGUj0l32xUkIzVubPDBCq3gCcTGE0
         0ZD63cZFayXeB0ZRZyK67zF6ABaDBd7UO4uIRhxwwUbjuZoa02HiY/RxNOB7OJzA4c1e
         F1FlyNN21/5CgzBM8YMYfk19nrG7nMI6UoqjgQ7TOrKfDshZXrCQxkgJQupSMlmxiTln
         UB8Sq7sTPPdyodhm0IoDOgowaEZPXcsEQ4pFFBIoGzFypTGfd0MkwvqGugEWMCuZeIKq
         tjdVMq5N0QlZ0rQNAjYzoQ/HoL55GVb3w/Eid3U8BfSY0Vgpx5Ts/KGFSC/M/Zi2nZD0
         dwNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=UXv7t9sQlTTMAT3AKQK3cBUm+3RtDQj83hxdfo7pnjM=;
        b=DiSzMSnXhRcabW0Cw7XZVUqhQdjozwq41xmDk/TbWs3qhADFdPp6BwJlHEfi0RtQRp
         JfJzl+ZhOTPObgXg13H/GqjxRUKxWBs7+lwlKGExqIyUeWRwMr/wwlaylW8TwGaBJQdf
         FsmoQuRObQuDA305m/TwbeZtFDXJ1cBmA/LXtPBtFGV9hTh++3Ptc4etIDvuzVwvXNsK
         NvrJD1GJOJwoy6QncpO1KXhqZ2lDOrNTIJGZh1eeVZBhjTOLJYhHmN4kHdyGdLwCeuB/
         OAolc7S0f5jKSGn/5jUkMCnxJQBfzeswIQ4VoVpCQl6sfSOwc7XmpcgGeG4V6OCcZWRA
         K5Bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=ZYz0cIUb;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UXv7t9sQlTTMAT3AKQK3cBUm+3RtDQj83hxdfo7pnjM=;
        b=VB+vipEvWrCTnWNM1TveVeIjiKcfakL9gkCTm+Sgj6s5SAuLPwnaHsROsn8HGyi73V
         9M5W1ARAtUe4o5xnXXMrTlDwGGIlr1gd5sg5bRxd7Yo0+V9iBjhKMiPfbb0CfSz58uZ/
         BkdNNtbyPJJ8ByZjhB0Nc9a3yX6Kg5POy1ilLi1dUYFK2tAqfYwkn5WMCXjGWeAR9vWP
         0BhdksJwNPJyMutwXzP/DHuuBI7tYr8IXcZ2X5O5/OvnbMBisK7YkvsE/GA43BzRXfFS
         ndLHdqUc836bapv1B40ZUQf8Qu7Pdy5HBEMKLoxoihC+OqQ7LwRFnjzTFPDAyCIO/+jt
         Aj1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UXv7t9sQlTTMAT3AKQK3cBUm+3RtDQj83hxdfo7pnjM=;
        b=k11HA2Q4fIjq4GXlQzUsgMYF2DvScZHQQfVZD1jAPriSTopEoIhHeOw32N8KzGiq7r
         /iTK3EYTlbEd2FBwCYMD5Jza/xnoAmrkFMcZz37g5ZExVyI+qPpCaiN6K1zuuoTKXH6C
         BV9+IIJWaMD/ecddcbUEXYXiEBorX7SaxG28kNqnojY3ku+SN/IQgknWanNIuGhNU6rP
         EJelUxQV9BSdLwPayfKYw4O0sOp7VslP78Hd6UQ2bZi6klIMkYy6JMl0spLajaTrSQC3
         FX2rPJth6/1+EXgNYpFRMoWHDYRVLf/CfOuqn3NdePXRoeQGtfkwjnR5wD6ML/wz7dYf
         aPCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUCebWG5V+9LnaBzxyPCr8ccBSEgo1wy7j09Y1ubxEGvPbCbXQP
	qETdvEPBxBW48tqiIxT2yFI=
X-Google-Smtp-Source: APXvYqxNRARmz9Nck2B2lVamuvZvYlgnKJfxmxP/kyQMKJLVdRhtCylFTjMGHqxHmKk5cxVbgKmrKA==
X-Received: by 2002:a05:651c:c1:: with SMTP id 1mr6409605ljr.119.1567103455456;
        Thu, 29 Aug 2019 11:30:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:54ac:: with SMTP id w12ls329156lfk.10.gmail; Thu, 29 Aug
 2019 11:30:54 -0700 (PDT)
X-Received: by 2002:ac2:4558:: with SMTP id j24mr6807081lfm.54.1567103454609;
        Thu, 29 Aug 2019 11:30:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567103454; cv=none;
        d=google.com; s=arc-20160816;
        b=0X4M0vvKguDfx0O5YmA7qAzY9bRQC3R6wEuuA48YznPjpRwcVc5Sjh+WNJphWkfNwi
         Nv+Ft3trQCE2xmneDcmENvkBO5ugO6BUdOtTZML83zO58WDZN2tlZSIpd9/VT/PBtT+K
         pgfEc0p7o8fCECiNTz9vtLPPzO5wD6rUBDSINXG+atIsvSpOtCA+32MB1ljRT0Fw2s5Q
         nDLAXp9O3XN/Of9/EroMiUZBEhibUckEY/Qn+nG1kEY1X6DC7EmbcET7ZwpDRDUsuegx
         eANHhEm3780XoNr35RxXgOXc6C9EEMTSp8Mw+0DBaZ7j18eikYnDyrDiRIvuujPEiFwA
         2AiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eLRCb7IDKwd9Z6eMXVFq9v2wg3nX4xhHUDMDC8KHnII=;
        b=AFSBLraJU2G5Yr/aYQlkszG9sOT3/raroziGQ+AgANCQSmBMxBn8LGagQVSsFKpprr
         kwUFimr5REyVxgC0BNVv809Db6C+qAXG2YkiwPuEeU0RBtRFb9IaXisjyGLBmGwdqzf9
         jREfiaEMlT6UMAroscFoE3Bek/JDUSDTUzzDEZRbHQsde0HTyLNd3lOrokrEv8z6AA/e
         8qb7S6QQZ9BMKTWHsAhge2CP2Zpq23uFrfZOEkIwRtbHcKPmXiAKJ8WfZLdGiIWQP6t2
         LxR5SRXIZEDnAGs1VzTfvEcXWqEDgcbZvfFJxfJrSAB6Z7wSW4jJj/4TjPqn0AgaN5Kx
         OPSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=ZYz0cIUb;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id h19si205570ljj.3.2019.08.29.11.30.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 11:30:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id u13so3292513lfm.9
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 11:30:54 -0700 (PDT)
X-Received: by 2002:ac2:447c:: with SMTP id y28mr6791781lfl.177.1567103453575;
        Thu, 29 Aug 2019 11:30:53 -0700 (PDT)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com. [209.85.208.170])
        by smtp.gmail.com with ESMTPSA id 63sm469235ljs.84.2019.08.29.11.30.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 11:30:52 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id l14so3993734ljj.9
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 11:30:52 -0700 (PDT)
X-Received: by 2002:a05:651c:1104:: with SMTP id d4mr6182276ljo.90.1567103452117;
 Thu, 29 Aug 2019 11:30:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190827145102.p7lmkpytf3mngxbj@treble> <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble> <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble> <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <20190829173458.skttfjlulbiz5s25@treble>
In-Reply-To: <20190829173458.skttfjlulbiz5s25@treble>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 29 Aug 2019 11:30:36 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com>
Message-ID: <CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>, 
	"Paul E. McKenney" <paulmck@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=ZYz0cIUb;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Thu, Aug 29, 2019 at 10:35 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> Peter suggested to try WRITE_ONCE for the two zero writes to see if that
> "fixes" it.

I'm sure it "fixes" it.

.. and then where else will we hit this?

It's one thing to turn a structure zeroing into "memset()", but some
places really can't do it.

We use "-ffreestanding" in some places to make sure that gcc doesn't
start calling random libc routines. I wonder if we need to make it a
general rule that it's done unconditionally.

Sadly, I think that ends up also disabling things like
"__builtin_memcpy()" and friends. Which we _do_ want to have access
to, because then gcc can inline the memcpy() when we _do_ use
memcpy().

We used to do all of those heuristics by hand, but wanted to let the
compiler do them for us.

So:

 - we do want "memcpy()" to become "__builtin_memcpy()" which can then
be optimized to either individual inlined assignments _or_ to an
out-of-line call to memcpy().

 - we do *not* want individual assignments to be randomly turned into
memset/memcpy(), because of various different reasons (including
function tracing, but also store tearing, yadda yadda)

Conceptually, "-ffreestanding" is definitely what a kernel needs, but
it has been *too* big of a hammer and disables real code generation,
iirc.

             Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwi-epJZfBHDbKKDZ64us7WkF%3DLpUfhvYBmZSteO8Q0RAg%40mail.gmail.com.
