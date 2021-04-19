Return-Path: <clang-built-linux+bncBC2ORX645YPRBNN762BQMGQECD6E7UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FD03646F9
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 17:20:22 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id t12-20020a67d90c0000b02902220448be25sf502403vsj.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 08:20:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618845621; cv=pass;
        d=google.com; s=arc-20160816;
        b=V4PfJB7SvQYgrlgeSiE3YpT6qvHTw6y76N1DtsfKghZ9H8njGnPeRwVKvNrjcwWJ83
         odXwLxYwvSDQhkChKXp112l81gTql6SexFkpeKLJo09QwIdjUfYsW49sXauoM8uhzpJw
         uk3GWeDNYl8mRMQ64L9PtDFzo4I5iMZGkZbVvGUQZJgJhzwz/m+H+a3GsZ9ptRSCszKv
         H7CH++eGhBwOC9IBAZOw1dEK2FzsHMVTS4nG6JHttWY4P2VobId8VVNur0ILchnunN3+
         wy5AQ4a1Old5BpT2iqs+gHQ3UR+ChzEriHqRCJq4+cATyMzOKQqiYzU41Ko5nKPnqXap
         yJYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JSQOLqMGzwTo+UJA9G6Xsccd3JejINsjnRCt7f0QQNo=;
        b=tqOQFso08gLp0bgaitXDee3uXsD2WLozRXt6LJQaD98tGhtkzPojUiJpBttClO9ryY
         UwTdoeYIyDLwTOK9vs5+YY9hAvrreqtUChUDvyHxlrrX95/3K16kf611PH363mBU9Jp2
         pndIV15yUIJTmaF8xIR4bhoJ+jZZ4sTKiXhqhi+KqIzvo7XGhd+jjtXFtQ76rHNcEEUc
         OOlM309c8yWaeHS2O3LsxX1AWHxwQGjzBuNIfbsXFr2oa/jT4Woa9/wGxhn4m6Hw6wTX
         fqoGBeC98ORjKdsn7LYNP//NUDTKnTbiadnpW7KKdSHoyD2ztC9/PdYpTmtujvo8SBcl
         9ojw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G2vOdpjG;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JSQOLqMGzwTo+UJA9G6Xsccd3JejINsjnRCt7f0QQNo=;
        b=bmpYo6pPnCMetVl9ELKWEK9ABYwZcRoFCptMy/754P9Qb/6/2ZlVxRSEKtqKlkfCEa
         z6gsBw6YPRmY6/Ql6wiD5gUpK/4JB5CMPPamfOqwopfE9SqPXd07EPhxDTsxyizU8Jeh
         US6QhLQYA52lhRV54XMPWnwWUZDwghWadvHfsnUtg8dSB27gLdO2QFuoB61ngq+yecGH
         zJwJFWe4f4kTbWX02zh9qb97gpD3qe/HDZEsjx2ARIv6ptWmwEGghEj5j4wh8eoGqGu4
         nl+kbH55woNtIUemAI5zvdx2hVw5iZjrxEyrm+Qel3MVDl0AbkkyU/xm3IBcjnXgcPGr
         pdzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JSQOLqMGzwTo+UJA9G6Xsccd3JejINsjnRCt7f0QQNo=;
        b=lu9hVu5qbbh0k31DYQL2K4zhL6eYA7g+aSZyhrTY7P3LWgcuTuXkE5aGvXby14yI/U
         q2S2T23mCy9RPJdb1gYckmsdgDyRQhJKB4Svt4yX6RbujUQLjEGL4kHXl0KgIoyzi2ST
         oOyAD0J/SPCYBqAm0wvbndPFR2lvXTgzf6kmHzz1ZCosXr4LWqbWQs5nALfHAtIMGtYY
         /FjLl3/+SGKyhss2DkRUxK/5lRgf7kqLVgvHUXsG+7fNnuUjxk9G7RNWIITeOZYv4zkA
         IDBAQqvUd7+MzSAMD9ikVWGPJJ7YybcvcwDqPMJuNTGRb7rTgdAZg0ZJvap9aPMN2tdi
         aWnw==
X-Gm-Message-State: AOAM530JbfM7Rmb6Gp1CYGr/IzB7KPQIjXMbs7bq4PzmdlRgbRfY76gY
	hbBeu12w8pS1jose5nqNRbY=
X-Google-Smtp-Source: ABdhPJwXQidXWKdwS8Ts+77s//FE3Sqggj7v4QvzaDbua4YnjUOt5NtmviVeb6VkWRTIME2rmbE+9w==
X-Received: by 2002:a1f:c345:: with SMTP id t66mr10233713vkf.20.1618845621755;
        Mon, 19 Apr 2021 08:20:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:242b:: with SMTP id l11ls2706502vsi.11.gmail; Mon,
 19 Apr 2021 08:20:21 -0700 (PDT)
X-Received: by 2002:a67:e317:: with SMTP id j23mr15578687vsf.17.1618845621218;
        Mon, 19 Apr 2021 08:20:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618845621; cv=none;
        d=google.com; s=arc-20160816;
        b=IBx+o92aXVoaA/D13WquJFItb+aeTzITANH+38KWbPFeuEnvP3D9L53E5MPQU/HD3M
         WNd1/dinalzPjGnUVrrlJcp4DLyt/8bONsf0RmdIosCVCYzKyOEmwlvYEpLofgTD6vUx
         D8x0g6bJ/lL2GLSQGGQaKCQ8Njzo1lzn03UpCQyolWGvlJWmgAuA//fIIEqXWsK4B92T
         ZvY07cUAK2P4BY3bOYmjsHwGhVrLsXWid+XxLRriv5LVtEdhPr+M3y+db4AhPEBedhhJ
         xrT27+C99W3NUISApvXs0bBTguXA2qc7cxjYZeivXKrAizO+2PUgJPkPx8j2qtBHcRni
         VG5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5AB0J56DB0+rKOzeKwffFNSyBpKCgRBJJxrIGM5WtAQ=;
        b=pLTw1V3aP0G7japyAOz+cOfG23Y71Fsg5scmRluR7nGZIIZWcgAIgHBGSL9u45K97Z
         rK+GLqRMxqT+P4HoRew3aiZwqa8yvpxAV8UPjOTkuu1KRGX8q0WA3TrVOFpScp8y4r85
         DBVADz1JMfrHobQD5aO98H38pgyuwoxLSFXSFYRbhRXPyQ/ge7bPQHlOxV1qboUn2uR9
         Y5lozpD12d/oCak78pcm6ovb130+HOmmz1e34m01EP+t/CtIEriQXjaVV74zP7jJmXVM
         HaWoJr3n0fhx4MJWMYkCSZ+LpN3qbzU+lSeExZGrJwU0VnAvPxRELmNZajpGpq6IV6rb
         yqAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G2vOdpjG;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com. [2607:f8b0:4864:20::b2d])
        by gmr-mx.google.com with ESMTPS id p12si373160vsm.0.2021.04.19.08.20.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 08:20:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2d as permitted sender) client-ip=2607:f8b0:4864:20::b2d;
Received: by mail-yb1-xb2d.google.com with SMTP id v72so18476692ybe.11
        for <clang-built-linux@googlegroups.com>; Mon, 19 Apr 2021 08:20:21 -0700 (PDT)
X-Received: by 2002:a25:7085:: with SMTP id l127mr18347488ybc.293.1618845620724;
 Mon, 19 Apr 2021 08:20:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com> <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic> <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
 <202104161519.1D37B6D26@keescook> <CALCETrV6WYx7dt56aCuUYsrrFya==zYR+p-YZnaATptnaO7w2A@mail.gmail.com>
 <202104161601.CFB2CCF84F@keescook> <CALCETrWUS52tzLNiWL5sAVVB5-ko1EW73-TEiO=eZ5jF_QyGPQ@mail.gmail.com>
 <877dl0sc2m.ffs@nanos.tec.linutronix.de> <CALCETrVEhL9N_DEM8=rbAzp8Nb2pDitRCZGRAVcE288MBrJ4ug@mail.gmail.com>
 <871rb7sh31.ffs@nanos.tec.linutronix.de> <CALCETrXRHhEivNK0hqEdRz+gN8c9jhdsjJC=4EQKMWB1roYw3A@mail.gmail.com>
In-Reply-To: <CALCETrXRHhEivNK0hqEdRz+gN8c9jhdsjJC=4EQKMWB1roYw3A@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 19 Apr 2021 08:20:09 -0700
Message-ID: <CABCJKufQqhXsP0Nv1hu60YoH=Tetp35=yENS_9LWZvzptFvjDQ@mail.gmail.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
To: Andy Lutomirski <luto@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Kees Cook <keescook@chromium.org>, 
	David Laight <David.Laight@aculab.com>, Borislav Petkov <bp@alien8.de>, X86 ML <x86@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G2vOdpjG;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2d
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Sun, Apr 18, 2021 at 3:57 PM Andy Lutomirski <luto@kernel.org> wrote:
>
> On Sun, Apr 18, 2021 at 9:17 AM Thomas Gleixner <tglx@linutronix.de> wrote:
> >
> > On Sat, Apr 17 2021 at 17:11, Andy Lutomirski wrote:
> > > On Sat, Apr 17, 2021 at 4:53 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> > >> which works for
> > >>
> > >>       foo = function_nocfi(bar);
> > >
> > > I agree in general.  But right now, we have, in asm/proto.h:
> > >
> > > void entry_SYSCALL_64(void);
> > >
> > > and that's pure nonsense.  Depending on your point of view,
> > > entry_SYSCALL_64 is a symbol that resolves to an integer or it's an
> > > array of bytes containing instructions, but it is most definitely not
> > > a function void (void).  So, regardless of any CFI stuff, I propose
> > > that we standardize our handling of prototypes of symbols that are
> > > opaque to the C compiler.  Here are a couple of choices:
> > >
> > > Easy one:
> > >
> > > extern u8 entry_SYSCALL_64[];
> > >
> > > Slightly more complicated:
> > >
> > > struct opaque_symbol;
> > > extern struct opaque_symbol entry_SYSCALL_64;
> > >
> > > The opaque_symbol variant avoids any possible confusion over the weird
> > > status of arrays in C, and it's hard to misuse, since struct
> > > opaque_symbol is an incomplete type.
> >
> > Makes sense.
>
> Sami, do you want to do this as part of your series or should I write a patch?

I can certainly include this in the next version, but that might have
to wait a bit for compiler changes, so if you want this done sooner,
please go ahead.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufQqhXsP0Nv1hu60YoH%3DTetp35%3DyENS_9LWZvzptFvjDQ%40mail.gmail.com.
