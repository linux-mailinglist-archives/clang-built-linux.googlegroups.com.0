Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBDWDQKAAMGQECDNDDSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2B82F6B8C
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:54:56 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id r29sf4445287pga.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:54:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610654095; cv=pass;
        d=google.com; s=arc-20160816;
        b=c66tNi28DoyrYwmdW6GlpahePPJF9PsAAibcHlBr9V9KAAf5GIllboFITIk0fzjibo
         SlSGYZq8BAgh9b/PyG8j3+n7kGYeBPizC2zIK9myR5qI4wBflYyGYkm25UzUfKlYCJfy
         6ZOK3L1XNouxnC2bmWj7ipz5pMOTiB7Ftn1qWT1r50EN44l4UkpGyUj53D6ZRZEUSV3g
         cZZ5iX5MzIJNs7/zB/GXMyzACiGFm/kvwYEnil9swIql66TU7qQAKLYSu5aWZ3aSmQ+X
         yLRUvXx6vQmFAIqLPuk2kkTN5jcktIEKSzZmals7np78yVcKZutbrhHQ4FtOidnvk8Q8
         2EVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9FZqQk3zchzepomg61e2wvq5RPPl7oGCcBNB0n2SF9c=;
        b=FGOceTMjjBmcXsW02XEk7pneBEm6iyHKP53Z33hMPHkhaUlKjtsPV3DRqDeDy+hYVF
         Ea59A5nnfuEGrX8153Pe+lLe+Bi4oTUFzK5J9Z0zct6HlXxopp8VJUWCebJCmcUhfJ3f
         kRTqfPiCxwdHpSB3RXo7Pd+J0f9+AH/JIHp+879aguVoPV4MlQzqFZODdSZxo7/DUQ60
         SAmtOqVNv4efA94tkIzXyr7sTQb09qaWE2wTGkiBY1V8hJwDvd+3/1tVjqDrz3NbLnh2
         V3pDvp1mZcnESK5BbHC9sLsHas14EQ+RgdGJBn+faXcwp7d8DSaZEV7VVaImIexBWLDR
         MiaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ql0fQZzK;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9FZqQk3zchzepomg61e2wvq5RPPl7oGCcBNB0n2SF9c=;
        b=NSswrtrx/fSXAjIbqOgMrb5oecxNcpz6Z1h2qb+LQmkXi0YeUXEn+HBPEncWY0zX62
         XUt4PA6Dz9ji932eh1S6irkpQZA+y4m5mFKlOLnZert/sSDaJtfb1jVSo9Ny91dP4rjl
         Ad9oK23kZhOf9HKVh4F/OsOtZVHqYCey+++EAmdKjfT6nNu/PYOmM0fepKGerId5F2/5
         4gV0eOAjg+EtcGLPzv2D1tulHvEIqF8myrnaq92ScGTyzo3DXgCnbKELgPHewPGepHeh
         i2L9M8NxOYpY4oJWcWzR9dUtgvZ8ePB6bNoeBGSzYQb/azUtosBPQdiqS4pX2nIrp2nn
         Cz5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9FZqQk3zchzepomg61e2wvq5RPPl7oGCcBNB0n2SF9c=;
        b=jUNhA/v1nwNfUr1H3jhWfJXbA2q8DUFhbpMxMe2nOzWhf7xpKnIKHD43yaizcxVDn+
         cpJYvdDunJQdxtHQxjpkiHwbff4M63DJpkUqAjjNCJXcuCdXxifFZ11AEApSrBuiFdu8
         882NLc2Uptwd3kRUdJQUE6eX9vFP+DFTMZJeNBo8dQXKN1j8ZeDQ3OHiZmTTPRD6avNl
         6ws+vEHGvzJF4BYaCAhpu2zWUOQJFc338Gkja1LvJAXin9UacsFCbJ44QEhpN+BzXLzk
         pJd32ejW9/yoWNPiJTuTvf0qLVgHEVzWun0FBHhFCRLrQa0IkcOM6XAWQ+tTA3D2ffFm
         LPFQ==
X-Gm-Message-State: AOAM5304h2p/Au1sYLU3pxHlMIuj45VNs+VLFgwP75qcpCMJNIhA4EVN
	xIf8qkcWD1ngbPIROM4ZeuU=
X-Google-Smtp-Source: ABdhPJx/Z8zwMTW5rEDrhdg2ivu11OhfVIfV/lsKUFGdULSWEzZdvRe+y3kLmPtKog4eFb1PhoG3zQ==
X-Received: by 2002:a63:a556:: with SMTP id r22mr9133946pgu.296.1610654094856;
        Thu, 14 Jan 2021 11:54:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls3188510pll.0.gmail; Thu, 14
 Jan 2021 11:54:54 -0800 (PST)
X-Received: by 2002:a17:90a:13c8:: with SMTP id s8mr6702556pjf.6.1610654094136;
        Thu, 14 Jan 2021 11:54:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610654094; cv=none;
        d=google.com; s=arc-20160816;
        b=qnNMfZ6IieWWtdtiEcelpKKMoT6cEAvj7WDXDof9F7rtGk2E5wsCnMMgz1EcJZDbzm
         1TBVNSbUToq24onWcoCyEunJ0lYL8CaMPAMCOmybQknIVjeWF2sSRYQOJfobE1tpUmQR
         Q8cXtB6PyjgxFxAcLfzTOXhIeY5MspNHzxA43FbZIpE9zC7xo9CG6cZL49J3nAIWeiaw
         xXJ2LKjGlBEUJv3Mut4+gUIzhQJWhxfCRUne84Azpyb5O9u2G9vaKQdANUJMc1FXiUnT
         Js9Lf+4EWiTK16O4nf2oWY3d4rjJ8tMhIHd92Th/R/oF/+surI1j9P/nbF7IHOcNqDWz
         l50g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/SuJMUWVOi8e1e2W8L0m+9Q9z4tau/lW1SPqWZ+fTKM=;
        b=ubobhMkWnbgKOSPBHM8jpizCAlPlvnE9EDd/tG6EfK9R1QON8sQ9OV/JIpoCZeAX3y
         lUXFiRMhrQcuKhR2UIWRGtdt6y16IUSGbSeXD90XZ5J0gOmyHQsE1roUdvpgIQ/fwYcg
         mZXZ8d9XAWFQgs84vrkSEs1BKcH4tBCYuPk8GKGJceXobp8DD1QlEGbJigYj0Zi8I8ZD
         JPRwzAecCLU5RFlhKdu9TkT7x3m3XvaThry4rk3Yax2+PE5n7LcuRQYTnXmdlMq0yb9D
         Omddm1FyH7+VtUzJGjcIPWSiqQPISJ2mVO3lN/E9QVM4vO00tlAXPQyQ0V81bDtKnXfc
         R7kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ql0fQZzK;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com. [2607:f8b0:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id f204si363376pfa.5.2021.01.14.11.54.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:54:54 -0800 (PST)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32f as permitted sender) client-ip=2607:f8b0:4864:20::32f;
Received: by mail-ot1-x32f.google.com with SMTP id r9so6312222otk.11
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 11:54:54 -0800 (PST)
X-Received: by 2002:a05:6830:2413:: with SMTP id j19mr5923004ots.251.1610654093639;
 Thu, 14 Jan 2021 11:54:53 -0800 (PST)
MIME-Version: 1.0
References: <0000000000004a33a005b8b8eaab@google.com> <20210112194058.GA200254@ubuntu-m3-large-x86>
 <CACT4Y+YFZf=BnCQJQUYwG-UpaYKG97VD-XWpEdXoR3ZnOxH5NQ@mail.gmail.com>
 <CACT4Y+Z-f+r_Bm5RD+ZFrspHdVrDrzPgEB_9_uACa_8o4vz7aw@mail.gmail.com> <CAKwvOdmBGNK0iVCAGc=7oKx9k1fE1C6y7G9S+hCYLmdu5kaKLQ@mail.gmail.com>
In-Reply-To: <CAKwvOdmBGNK0iVCAGc=7oKx9k1fE1C6y7G9S+hCYLmdu5kaKLQ@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 20:54:42 +0100
Message-ID: <CANpmjNMmObBWzHqcQ2VHru2Tdu8k0KOkVUE2upPitsOh3OoF3Q@mail.gmail.com>
Subject: Re: upstream build error (12)
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	syzbot <syzbot+76880518931d755473cf@syzkaller.appspotmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ql0fQZzK;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32f as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Thu, 14 Jan 2021 at 19:07, Nick Desaulniers <ndesaulniers@google.com> wrote:
> On Thu, Jan 14, 2021 at 4:38 AM 'Dmitry Vyukov' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > On Thu, Jan 14, 2021 at 12:32 PM Dmitry Vyukov <dvyukov@google.com> wrote:
> > >
> > > On Tue, Jan 12, 2021 at 8:41 PM Nathan Chancellor
> > > <natechancellor@gmail.com> wrote:
> > > >
> > > > Would it be possible for clang-built-linux@googlegroups.com to be CC'd
> > > > when there is a build error and the compiler is clang? Especially if
> > > > clang is hitting an assertion.
> > >
> > > Hi Nathan,
> > >
> > > I am adding functionality to CC specific emails on build errors on
> > > specific instances:
> > > https://github.com/google/syzkaller/pull/2388
> >
> > I've updated configs to CC clang-built-linux@googlegroups.com. This
> > should take effect on the next build failure (hopefully).
>
> Thanks Dmitry, (and thanks Marco for updating syzbot's clang).
>
> Marco, can you update:
> https://github.com/google/syzkaller/blob/master/docs/syzbot.md#crash-does-not-reproduce

We have:

> compiler:       clang version 11.0.0 (https://github.com/llvm/llvm-project.git ca2dcbd030eadbf0aa9b660efe864ff08af6e18b)

Which is in the list of compilers:
https://storage.googleapis.com/syzkaller/clang-11-prerelease-ca2dcbd030e.tar.xz

> I wasn't able to reproduce the reported compiler crash with ToT llvm
> and the reported config, so I assume it was a mid-release of llvm-11
> bug that has since been fixed.  Do we need to report to syzbot to
> close the issue? I did a quick skim of
> https://github.com/google/syzkaller/blob/master/docs/syzbot.md, but it
> looks like communication with syzbot is based on commit messages?

Given we this is likely due to a prerelease compiler, we can just use:

#syz invalid

^^ it should pick this up.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNMmObBWzHqcQ2VHru2Tdu8k0KOkVUE2upPitsOh3OoF3Q%40mail.gmail.com.
