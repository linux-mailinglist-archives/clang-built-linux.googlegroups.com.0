Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTUP2HZAKGQEFSVIP3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1A716B37C
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 23:01:51 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id t4sf20882164ili.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 14:01:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582581710; cv=pass;
        d=google.com; s=arc-20160816;
        b=kwSxfb/1ZR4tJvNHQppSpfnNKtT+VVh6933RPm69azZrLsivAJwAwlGRlcHCYNx0T8
         Zm2LOkjlr6F0YED/Xdsi9s0Ji/RFAi+UjZ9436qzUz8H+8DAkiZeSRwC9FxOnPzoApws
         QJejdqoQaPpR2lIeMrU3D7T86WX2Kibq4yAzkRHQWowT89j3eceKUhOtVDAb9QPg6Zmn
         BgudWOoXm+ze4ZWiaXQwNHXJdyvq22He2pQlRvlSUXo/0UuYBA+J+yKSZiXnJqrvdyKs
         xIP9IAd18Sfn5PnFwds5vZtm3RtANG3uE7qiY0c+GB5zFIgXvHkmhyjtQXAwXx5ZIXXe
         gwOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QN3klFD7oAcoHAk6T87Qeg+conDNa4nyPQjwkR2mUqM=;
        b=pKEsWNtg6rZoUBKZ+owTCft157tZkMRnbnBkDL/PWXPmojlHXCDHxOK/UpoFKlFvVl
         d7N3jn4NfFG5PdjlB91HF/dqCokOriwbNdkMzU/cIYiLMhXKvVSXjHbupLfWBVTXePeF
         7VOitWiCByKUcequIGE2cbnvRGa4k0KsNaAFWhjnhZxcx4sSEuQ+w9HkGduUfmP1nlY8
         jxlvNxM3cz3x8nUfJFRzWlirGDjWiN7b/JPMHaA6jmBRxR3rpn1gF0tU2aVjS7XnSqXG
         g+jwp5DKwbRXWjkYewEtAaYNmXhuJMrIGR/AcCloSBi3bFkX6QQDmwFS5NEcVS1FmKZQ
         sARw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R6ZspJE6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QN3klFD7oAcoHAk6T87Qeg+conDNa4nyPQjwkR2mUqM=;
        b=qvj6oGpT4rp20pmTH+wYwGDgHx2EDKEigJRon63gaRvIDe1zGqrhQfma4JkQ3qSFH6
         Q4WxqYQSoyfqV7gnDCmng8jED5vtiT6FaDGSUCaZw3JF8hE6byh6krPtE1rbiEP2pnLq
         KoNcvcN/mF8DlwtBMCtlo9SOxfKmxwBYhFKirCuowJ2ZSpgJT8bh1s+y3+sNzRMhIx7Z
         4EvaJhh4XS88hi0sCF+KMfSJkQghiFTtTVlW3D83pwGZp8q3Tt8M4hqi3IOxLr87zg68
         kRQn/j98nj2nZFCEmylALCejc4whQ2V8vFJFzs7KML2twANPdF7PSwazmX4HDVYsqrPI
         bJ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QN3klFD7oAcoHAk6T87Qeg+conDNa4nyPQjwkR2mUqM=;
        b=o58kMnCNbvYDBscbccc2IUdj7lkyDt7yHDbstZWe7boDMO4h9HbGNJcYJBfHAkSiOq
         KVBqhTHaNO/CRzXjyjIzYw9K/IYbv18XKQAaZk7HmoUOgBJBpYc0d4bCP9SruE/peS2G
         HUa/u/8jeZzLLWLeFV+0al0SYs7g5HBAUasUGDr7yoRG7uThNA0oEinjJ4hvVD2CDcho
         kbeb1deiOURd7fRk0kNgdEOj/6chdK5Unz55Lhd3oenLHewiupGboXD8jolcReStVxj+
         VMfJiW4m965ihaHdsp01sXbclgVOWi4BRd+IMIgA4MG7AeTSnMfku+xdhlWI5LHSE0NB
         breQ==
X-Gm-Message-State: APjAAAUpgGgiCCCEzCZtqLMzgPK6RL1/RytGLIN7IO74aQ5+o9tjuRbL
	VPkR/zhbSrleFMGAJwmnLas=
X-Google-Smtp-Source: APXvYqwzQAl8P3poyS7nT18zmTDAY0QYikCmtSqVFF695hRudA3dYQRnNAC0th0QAiBUg1FUbxRaGw==
X-Received: by 2002:a92:3a8d:: with SMTP id i13mr65065598ilf.112.1582581710721;
        Mon, 24 Feb 2020 14:01:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3d8b:: with SMTP id k11ls2228199ilf.10.gmail; Mon, 24
 Feb 2020 14:01:50 -0800 (PST)
X-Received: by 2002:a92:50a:: with SMTP id q10mr64861082ile.294.1582581710370;
        Mon, 24 Feb 2020 14:01:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582581710; cv=none;
        d=google.com; s=arc-20160816;
        b=hnCnCTcv+/vTTmxuTtov7QmzpXywJ6msbuuP72EjFiAe/T6xgEfDzpRPIK8b1Sot6R
         zbxwSeHvMRaHRKAekjjoDI6kHYmK3UYtMQQwEUdTD+TYQWBs5QLVFryCn4fJKam/m+VW
         QWTWzHp7zdfsKyx8KeI3mLLSaUYvaLfXJOClEe7QSUn5lI4FmRSvUmIFU7rZPRTfTGU8
         p2f+no0OEmaflYW4FA7WgGtKAlLxEevsZ0zhIUugVO34znXKp45L+GYr830d/teQbnyC
         bogNueRL2lme1yHdYxTgC5cfFKtFBTBt70rKxZNcKa3LF4L7jbO2FsCEFa+ah2pkeT4/
         XulA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IWLJOFGxvVMno0/8se2X6awifOIRIcp17izGUYTA88c=;
        b=Vi45/uMGJlnkJY4arBqPgKEAohehgpyweeY6TFYbHImD+AwgD64w1nin9Ok226v4y3
         QZABCtFdjGSo0HuSxSWXT46+Al4vgeKTQji/TkFzmpEyvqEkDvMqRLxmcD2duf1h54Jq
         +jiXvqnRt+LvJxpD8ETaxlx4d8osCdQxJ9DkieqzOD0nCKR+LHayzzwpXNh+E0nknqgs
         VoD6MIeb8SApvcQe+6uy3rPVCTyWRrjZzN8mkiuV2CxIZ/+Dmi0gnecAKY/h/7d3egXK
         YMEum90yF+0kTr2n6mlN+U8P2AuS5WzCgNTMFr4LmVpMACKEwl3bG/RGKGAGUfzEnGEJ
         U6/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R6ZspJE6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id g12si768229iok.4.2020.02.24.14.01.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 14:01:50 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id y8so4587792pll.13
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 14:01:50 -0800 (PST)
X-Received: by 2002:a17:90a:7784:: with SMTP id v4mr1372238pjk.134.1582581709602;
 Mon, 24 Feb 2020 14:01:49 -0800 (PST)
MIME-Version: 1.0
References: <20200222235709.GA3786197@rani.riverdale.lan> <20200223193715.83729-1-nivedita@alum.mit.edu>
 <CAKwvOd=qVmb7UEzUSQ5-MUhpRA9Jpu3fMmmMLGdmydLoJV-kkQ@mail.gmail.com> <20200224215330.GA560533@rani.riverdale.lan>
In-Reply-To: <20200224215330.GA560533@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 24 Feb 2020 14:01:38 -0800
Message-ID: <CAKwvOd=wGYRPY32P3xA-WGG5FiNYk-S6BrjLw3nRqcQ3X0oPFg@mail.gmail.com>
Subject: Re: [PATCH 0/2] Stop generating .eh_frame sections
To: Arvind Sankar <nivedita@alum.mit.edu>, Borislav Petkov <bp@alien8.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michael Matz <matz@suse.de>, 
	Fangrui Song <maskray@google.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=R6ZspJE6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Mon, Feb 24, 2020 at 1:53 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Mon, Feb 24, 2020 at 12:49:03PM -0800, Nick Desaulniers wrote:
> > On Sun, Feb 23, 2020 at 11:37 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > In three places in the x86 kernel we are currently generating .eh_frame
> > > sections only to discard them later via linker script. This is in the
> > > boot code (setup.elf), the realmode trampoline (realmode.elf) and the
> > > compressed kernel.
> > >
> > > Implement Fangrui and Nick's suggestion [1] to fix KBUILD_CFLAGS by
> > > adding -fno-asynchronous-unwind-tables to avoid generating .eh_frame
> > > sections in the first place, rather than discarding it in the linker
> > > script.
> > >
> > > Arvind Sankar (2):
> > >   arch/x86: Use -fno-asynchronous-unwind-tables to suppress .eh_frame sections
> > >   arch/x86: Drop unneeded linker script discard of .eh_frame
> >
> > Thanks for the series! I've left some feedback for a v2. Would you
> > mind please including a revert of ("x86/boot/compressed: Remove
> > unnecessary sections from bzImage") in a v2 series?  Our CI being red
> > through the weekend is no bueno.
>
> Sorry about that. Boris already updated tip:x86/boot to only discard
> eh_frame, so your CI should be ok at least now.

Yep: https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?h=x86/boot&id=0eea39a234dc52063d14541fabcb2c64516a2328
Looks like our daily CI ran 6 hours ago just missed it:
https://travis-ci.com/ClangBuiltLinux/continuous-integration/jobs/290435629
Thanks for the fix!

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DwGYRPY32P3xA-WGG5FiNYk-S6BrjLw3nRqcQ3X0oPFg%40mail.gmail.com.
