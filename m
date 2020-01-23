Return-Path: <clang-built-linux+bncBCU73AEHRQBBBKP7UPYQKGQE6DSKC3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D0814609F
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 03:06:35 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id v2sf835685pgv.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jan 2020 18:06:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579745194; cv=pass;
        d=google.com; s=arc-20160816;
        b=x8OEdf2xh5LZrgWFdprLC2zcZ05lx8debRiII5T+8PWP1Tc2XmMl7Retz1PrdCyYdl
         GD1Z5Zb5lFH7RZBtdSLwxVqVRsc7WbY1KGmJYFtLYJ6YL2Gxmk7X/6DA7Uw751eygueA
         aoaTKmFzhvVAUgJUW+K7kXftjW+5VS2BOXX666xV/RnpZvbRHOhFfbSpiVEweU88u2E6
         wVWupq5jQdLLsKDMqwIQjgILrBqyDowt0Om6mAaKiT58nmWnm63Zvd1K7OTmH6ZZyQhr
         jhSQ7fI58HM3zKrnPX/b/g+88fAW71QIt0wsAFhtn6p9UHlwOrR5BmYTf+O+43FbD2Yv
         J/FA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=cAPYqxatJuVmJdATnTNGsLzIarZ3rro6WPgcGIyvMLI=;
        b=a39XmZjd/4N5Kejd5GD8RIhAbk7vsKs6XDN29BwI0PxLyIi+91j5Fe3jXcNTmDJlSI
         zgrvdEckLCZNTeycCPOot6vEn3PlPGSSDKAz/rwWzcroJMJqwHv+/niswydukMyZGtdj
         Fi7wRoz26NlaOei0KtDJPW6heJNTuSTDGtkbVm1lqKACaA4LMRRq39+jevic9XzpEXAw
         73tJEa8Uge/kf/qmTgfP8j6T0Bz58Ty+S5+BRDTdcK+nl9TDoSpkeCaCHuZbq32FwyJv
         TA78Z7kBnRvDmdbUgbKDhyUYwMblAhSmx6d4nyrglx5vfUtD1upLgM2aKNoKfDaogLIz
         Pf5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=l2q1=3m=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=l2Q1=3M=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cAPYqxatJuVmJdATnTNGsLzIarZ3rro6WPgcGIyvMLI=;
        b=WT01HQZkrwYognZDZ8lqVKweczkNSuGrVhTfyNei97KgRRP0USKIWQ3G5hJXvF8Eic
         q5PST8oNh3WpLHJaDBzGpdRv7Tmvk4LZZC9FhJcIHeePUmUT0cA9wFmaictIOR+pG52f
         I76+7+9ALmL1z4FusX/oSw2s/wuYU0uZnqG8jWdNLpwy6lLwpbAajCc9HkUkCpP5Ad10
         Y2NMMO7zIS9uZjSsO5pnPyXFna7m4ztT4JrpvnSBMENUYq2TWtLRLCH3BE6x0arYDm7f
         FrIUMaQmhJwJP91q77mND+v2z5I6l6GUX5wJBqeiJdVbhWtB3wF47Qo+F0o6GdLTWdTO
         e6tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cAPYqxatJuVmJdATnTNGsLzIarZ3rro6WPgcGIyvMLI=;
        b=q3TWYAZh1BLMQINOqCpW+eWYEDqP3MJTQzaagy7d1XOtmy2l6GZK5/aifX0CGwksE8
         OknQgmT/Ynmo4BWZKqd51HNb9R7ac/stPAQK2ydm4Wn/s+XZaqlQq6ACTyzvF/X9Z1PX
         VTSflbzzzA6rgsWQ+1dO27pLdjrA/lM1u+6qoStL5vDMWw3es07fQ+gvRs1sC7pFtYhD
         IZXV0iT5w1QgtXNeBmdhYG2ZosBnlAW0mcdyKiyxO039Xw1BXRXSGZW29RENcXhWwYG/
         OzbHbZPVoSqEfGMLf+GNAyFzyO5bT1cuVtCCe0GQ9+M5vKtb2SMuoYtY7eS2CbnVI5MS
         5Ufg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWRzBgtCregbUKCFrdcnisNmelAZsoOxOf+oTuyESzdEgW/Wr1y
	jB9P004q8+TlBa/U+3LsbK8=
X-Google-Smtp-Source: APXvYqzSLFFRy+NSjVIgtC6jL/USmi+E+mMn2fbydeKADGLEIo0CppR55yGgJfh3Z0BO+lb2lC8gQQ==
X-Received: by 2002:a17:90a:200d:: with SMTP id n13mr1860549pjc.16.1579745193911;
        Wed, 22 Jan 2020 18:06:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b601:: with SMTP id b1ls8772490pls.3.gmail; Wed, 22
 Jan 2020 18:06:33 -0800 (PST)
X-Received: by 2002:a17:90a:cb83:: with SMTP id a3mr1761524pju.80.1579745193315;
        Wed, 22 Jan 2020 18:06:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579745193; cv=none;
        d=google.com; s=arc-20160816;
        b=l6SDD/9m11uHShfEv3a2ZQIwRNjynleNTHM9+XQO2tc1ec2h2zbTOoae9wjH/ucJyK
         0OfQ476R0tMF4dLW9sgfsJfWa1/AxjWliOqStZrvhP73Pqs2mB70vF5/CdUWQ4m2WHpW
         PPs55xc/anuVlY8QcY4+/res5hSthtwHYLU6Bt1Aof2r8eVsJkmTUwYIoagLHMm9u+uE
         r0yI7heFkQQ0AxO4UMn+yTv7LfJFoHuU+ZwOoeYxNjJkczjl+h0xaA7+8Fx0T80zPOw5
         aQc3N3j+Ha0vx/5IFoTbYY126UtyxkjA8tKuLCBLeB6PhLtUdxdGqcsTtMdbLkuRSbrI
         hYVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=xWayMJEG0o5Y1Ksx8xnUQPOunnNWgtoOcomqSWZ+xCs=;
        b=RNyjemjGZbHPK186tu80ICvpeWLdQgQgZqMMMIaZ/uq/jgw87pu/MtjF9CX5GgBHO2
         /lCFzwG5ZP28IH+lRsXiR8AmxHV0CS/gtfh7kWWPKIB9WMzRdu+rk4OPCqrrW9yCfADo
         TnCIz9IFTYLBlfHODR4k+x95cZ+KfHS8Q8elZDP8w6U/+zdYsMEQN5bCvRQ+c+eWPKUz
         3eGt469vWRb9e7/VsartLKLL4/KRP45dt2UWsIYUw0Tkn37NMhW3BvAB3mGc4ecw/kek
         vqqzPYW63WnYySOo7FTEFYBvFskuXNpfskL17FUUAwyucnplD5Pj2nemr6/AS03ilmCQ
         Berg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=l2q1=3m=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=l2Q1=3M=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x13si41390pgt.3.2020.01.22.18.06.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Jan 2020 18:06:33 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=l2q1=3m=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from rorschach.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 605EC24125;
	Thu, 23 Jan 2020 02:06:32 +0000 (UTC)
Date: Wed, 22 Jan 2020 21:06:30 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild@lists.01.org, clang-built-linux
 <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>,
 kbuild-all@lists.01.org
Subject: Re: [trace:ftrace/core 29/38] kernel/trace/trace.c:3232:6: warning:
 variable 'buffer' is used uninitialized whenever 'if' condition is true
Message-ID: <20200122210630.0bb88807@rorschach.local.home>
In-Reply-To: <CAKwvOdk50vX+MXFYTt1Y3uQ_p2ihLjQtUR+s94nooaP1sFeGXA@mail.gmail.com>
References: <202001230452.x1ZgvXCx%lkp@intel.com>
	<CAKwvOdk50vX+MXFYTt1Y3uQ_p2ihLjQtUR+s94nooaP1sFeGXA@mail.gmail.com>
X-Mailer: Claws Mail 3.17.4git76 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=l2q1=3m=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=l2Q1=3M=goodmis.org=rostedt@kernel.org"
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

On Wed, 22 Jan 2020 14:02:56 -0800
Nick Desaulniers <ndesaulniers@google.com> wrote:

> +Steven, looks legit, can you please take a look?

Yes, I already fixed it and it's in my queue to be tested.

-- Steve

> 
> On Wed, Jan 22, 2020 at 12:40 PM kbuild test robot <lkp@intel.com> wrote:
> >
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200122210630.0bb88807%40rorschach.local.home.
