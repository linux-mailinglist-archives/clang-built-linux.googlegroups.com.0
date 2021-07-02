Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSG57WDAMGQEVAVFUHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BA83BA47B
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 21:53:45 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id y10-20020a05651c154ab02901337d2c58f3sf4428815ljp.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Jul 2021 12:53:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625255624; cv=pass;
        d=google.com; s=arc-20160816;
        b=xl887zZy1/eaFUk92DmAhgOpZu0rnGGHFQ+eNgNiHX6j5qX4gX1o/ygx2R3OhPu3iJ
         wbWpK9J9IhDln4ylBxTgbAosjG7n3Q3seC8u1PWeci16ghqzjbD3y/QkCL3ehOitKB+O
         u+KXk+cAG3DCNNsgakAmyK8G185YJbkpLyRCDKWGTDsFfG7iUbw4DYttAX+DxVajb0E0
         B2KCEP1bWfMqYIK78WEfFaDUg6rE7NolJESWFpb7uEVqKI+ONVOXjiSCsxJ95InY4lMJ
         K5+G9WoHglxWTtP+egNZYIsUqC1qffjzv8ANfNwKcoTsTk9xyZkpg7xFGYm84vKgkRJT
         G7FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FFEP+uymt0n9Vw7HhExy+ncCaCfdYyBJMT6wCBW5rxU=;
        b=Y21ZVuIu+oiLfMp9IJw0HY2Iky2iq8j4OfyucCO+4wPzxN6304S7P28gDGsQhy5jyM
         vnjm4pQ/RlEB497AuKcFm4Bf37VfZH6yJCKE6sZgl3PJ5C+k87xfYkNCn+VA+2AuU1R/
         rXzEZfHgwiqLH/TgntEjUdTJ8FwpiWk3VwIy5+gaif8ZrBqh6UKfPS6EGenYkVUtpOks
         TZiMKrW0cTnETryiST/my6uFragGHlC+umoLj9tuHNhb/VHqZpceBrSei3VeOtqmBF5r
         H41a5aut5JNCKT7UsGgzyC04bbJkGcRAtabQNxHL7FcUpue4CXbOD6RUdWSz/PLfuNQz
         1PDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Hv4c9Le+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FFEP+uymt0n9Vw7HhExy+ncCaCfdYyBJMT6wCBW5rxU=;
        b=pMUwhuLr1ufsbodYjuHDGS3mwDii3mnLtYBBJxoQE1lbug8fVavV7YngMBXRHPWiKT
         t1jA5AMjpKceXzEec/tyvuk3Xg+n+jE30Qyyh6OhD5nPr0J5s/jebGOFyYNl5rgyXs9y
         zk6XtbKt9LcK1/looaZfNtNCGw6TtJlsXMyARwGKxLHeoMATmZ22A/uiCAiWV3xQftt3
         lUQGWxtgHpmBmfMq6x/6KYY3Ig0jaXT0oe81e+ufzQMkt6mrPze1o2ywijv7G4moTgmA
         9mlBbPiKbPZO7AhKLfQWW4QZtqImalmMcNYc6d9TTk4ODgG9M64Rd1crFB5Grd1I1NVX
         elug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FFEP+uymt0n9Vw7HhExy+ncCaCfdYyBJMT6wCBW5rxU=;
        b=uU/0H7NaGuQuMTTnXUYmvFK/yE7yey27wY9kKJpuk/VYdpVVpZnowE4cXxCpTk/QX6
         opv4/fcSJp0dDG8NCeGkAJ5/e8q1t8TbbKWNMEGcG+PeEArBsa2/ErrBegcVMClLS3HI
         bM+3ADoy3506hO/vmJkYt1QelfuxeWJb5s8/w8bFBygR9Iit0GVR2uJWPtdMevb+Yl5C
         ha/Ssgq23Em/GoFGsHRTen5DyfMpgCHpk6Yt5cJQ8mR6PUdHJRnYhc/jfNNJe2NabFNT
         OZ4++rSkwmBTymE+NVtbkwyRbUR4vw4QLTXetwHwnWo6SHH/Chdj1zrvN7d9fRTSF0Qk
         jTaw==
X-Gm-Message-State: AOAM530W+UyS3pPKm7vHx3yRE5Px8n7WsuFwsbgJ+j2bKj2QPxVKsbYk
	fgYYm2BGobSwzuqfm/eEUZo=
X-Google-Smtp-Source: ABdhPJz2ovzLxatoIuJe+aIjsyp3lEBldfH2T1+5tlRohmJpm6Vsp/NBAK899Z4i2zlVPGTl4gWO/A==
X-Received: by 2002:a05:6512:38c1:: with SMTP id p1mr979274lft.50.1625255624751;
        Fri, 02 Jul 2021 12:53:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:508b:: with SMTP id f11ls1926151lfm.2.gmail; Fri, 02 Jul
 2021 12:53:43 -0700 (PDT)
X-Received: by 2002:ac2:4356:: with SMTP id o22mr978119lfl.309.1625255623688;
        Fri, 02 Jul 2021 12:53:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625255623; cv=none;
        d=google.com; s=arc-20160816;
        b=NgZ0RW7Ky5i6wIX1r/OyO7ZzJ2r99APbUbDRmPe7X9lcT8SHnj+mUYpsSmZkW7bxbh
         5GVWnxZoPGBTqF0HssMAbuBxMR1DNfmEgHDVzs4CfUOHGkoXYuf8QqCewzJvuxDGOS4N
         0nVYU3pY7QaNwhAiR7ikXjAa4ud3pMoag2xW/VZ/Zl/uc2cH7sfDOa4ejHjvFNaX+Tna
         mmjJ3Fm+MXQ73wczTFlRmVxzborrhyK01PVrmNgp+bQYkTgPq8YZo8pu7uR7pRnn/ShP
         5I/EMVEo8pfuQKxfTMjMFejmkHJti8HpdMgjDeRbJZyYuFQQCYEU8JSTVsbWDpt82/2c
         qneQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=P3T9fm0vrNyqUd7WUhq5udhwWx96T+TaxmLZI67T09A=;
        b=QHSI8OarHGYoYG6jbcO4YaSzkfbdawAbGwq4qSt8MFQCkkotC9di79sIaaNKpikAAv
         AtCsWHZu+tPJkK1cod5pv5TvxW+2w1pvv8azulSaMNvoTM95K6q5ojG+LA4KdUnDXeob
         rR1k/HhFa7sOs4xcvCaa+ygtqSq6fJjyLARzs2K1RUNdC3K4ILPruQ0vrnhG0bJt+nYN
         7QWaKrddhQiX1AbpIuZLv8SxdZabmtTc6QUeNhKCpSIsCusJ3El0/vrEqYhFLo4y+fgf
         2AiyydhMsrjtsMCqavuVOEpPzxb+G6H6IlU7SFniwr6ZpFmP87mEtp04xvRn9n6aETJA
         f1bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Hv4c9Le+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id n8si170746lfl.2.2021.07.02.12.53.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jul 2021 12:53:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id a11so20015201lfg.11
        for <clang-built-linux@googlegroups.com>; Fri, 02 Jul 2021 12:53:43 -0700 (PDT)
X-Received: by 2002:a05:6512:ad2:: with SMTP id n18mr900187lfu.543.1625255623049;
 Fri, 02 Jul 2021 12:53:43 -0700 (PDT)
MIME-Version: 1.0
References: <202106281231.E99B92BB13@keescook> <CAHk-=whqCT0BeqBQhW8D-YoLLgp_eFY=8Y=9ieREM5xx0ef08w@mail.gmail.com>
 <202106291311.20AB10D04@keescook> <CAHk-=wg8M2DyA=bWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg@mail.gmail.com>
 <CAGG=3QXrOnN3-3r-VGDpmikKRpaK_p5hM_qHGprDDMuFNKuifA@mail.gmail.com>
 <YN8NGLPQ4Cqanc48@hirez.programming.kicks-ass.net> <CAKwvOd=-qdp6xcuVb-fSni6X-0UuJ6GM5+TJdWSkAfvNmqfZ+w@mail.gmail.com>
 <YN9ho7yDFStVw8g3@hirez.programming.kicks-ass.net>
In-Reply-To: <YN9ho7yDFStVw8g3@hirez.programming.kicks-ass.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 2 Jul 2021 12:53:31 -0700
Message-ID: <CAKwvOdk663=pjf-1gSwqUYz479nStosM1bmO0O3dmP2-FPpLaw@mail.gmail.com>
Subject: Re: [GIT PULL] Clang feature updates for v5.14-rc1
To: Peter Zijlstra <peterz@infradead.org>
Cc: Bill Wendling <morbo@google.com>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Kees Cook <keescook@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bill Wendling <wcw@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Heiko Carstens <hca@linux.ibm.com>, Jarmo Tiitto <jarmo.tiitto@gmail.com>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Peter Oberparleiter <oberpar@linux.ibm.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Hv4c9Le+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
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

On Fri, Jul 2, 2021 at 11:58 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Fri, Jul 02, 2021 at 10:26:40AM -0700, Nick Desaulniers wrote:
> > On Fri, Jul 2, 2021 at 5:57 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> > > I've asked this before; *what* is missing from LBR samples that's
> > > reponsible for the performance gap?
> >
> > Are we able to collect LBR samples from __init code?  I can imagine
> > trying to launch perf from init/pid 1, but I suspect at that point
> > it's way too late.
> >
> > Increasingly, boot times of hosts (and virtualized guests) are
> > becoming important to us, both in the datacenters and on mobile.
>
> For a guest, possibly, I've no idea how any of that virt crud works.

Oh, another issue we've hit with LBR internally as well is the ability
to access them in virtualized guests.

It looks like support for those did land upstream a few years ago
though, so I'm not sure whether it's a question of us not having
backported/cherry-picked those internally (I'm not on the team
responsible for our datacenter kernels) or if there's some sysadmin
related restrictions where we block access to these MSRs for guests.

Either way, I had an intern last year (2 years ago, perhaps? how long
has this pandemic been...) looking into profiling LLVM, and we hit the
restriction where interns were only given access to VMs in the cloud,
and yet in these VMs could not access LBR.  "Guess we'll find
something else for you to work on then."

More of our developers are moving to cloud based VMs, where they have
access to larger build resources.  Perhaps we just need to work with
our sysadmins to get whatever capability is necessary, at least in
some limited capacity.

Opening a perf report is painful.  For a profile of a kernel build, we
get ~5GB of profile data with LBR, which takes a while to open (is
perf report single threaded?).  This is much better than via dwarf
based call graphs, at which point the data becomes exceedingly painful
to work with.  So LBR is a welcome improvement, when we have access to
it.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk663%3Dpjf-1gSwqUYz479nStosM1bmO0O3dmP2-FPpLaw%40mail.gmail.com.
