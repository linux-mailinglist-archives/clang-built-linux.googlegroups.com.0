Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7FGQSCAMGQESVRSA2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id CE42B3679B0
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 08:11:08 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id r30-20020a2e575e0000b02900bab4d6b74bsf9857256ljd.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 23:11:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619071868; cv=pass;
        d=google.com; s=arc-20160816;
        b=mqqnaLHeKw9M6yMmR4ICA8wUPodLRcEt+IrCEEMo4hpDLwS3D4Rh1y7xrgL2Dea+PW
         WvFf+dakUbdOCqtDa7dO/w7RWFh2NJm22wDWwilGTE2I5vmOD8VvMp07CD5zc38J15cA
         rHFBdHSketHqRQ200Oqt01IdZGJMBwEouFexgykFh+F0cCy/EykX+oa6YZsMfC2hjfWx
         q2hRQ7gil9PupozIVnqyql3w5KxyEjd9Fw1ekd8GMoDPcPAlUtkxSC1tZyX9HlLnMuc+
         hNYMJHakmIfilS7Sx2sncJdMlkUaI9uaalmuhSuvpsW5UmyZBbcm5xx9WhLErVjF259V
         dTQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=R+9ry7TioojNhvpmLh/Wq2xnomOLNXV8K/rckk8f1IE=;
        b=tixAofKLvFnZ5rTB8KnabhJTefuIRaJoJnTZbnvVR4CjYH0eakpaXuxeU0guu5cgQ4
         BsTNO0AR2cXI5ORKRqGs404YlQG4uxy8Q7VgunHFQOUfABEoo7ww33SkorThLIpA/gHU
         3jAwy1Ukyw4APMlR7sS3DhEsiwXWUd3FoQzRy13uYGeF4Kg8w8JHU4lDTx6oprIIajKE
         VO72W2e9FY3cswWgZQlqKTiuj2Tclyghp3nzAq1alZY5YmOYp3pauMv9XGuwkWYgMliR
         JtVHwFfsfJjlJerKlVsk0zIrCQJ63r4+zt5t1bcUGrIvwn8L/bnQLz8bjaqDp5x3kA/O
         kvQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aHKvH1Ct;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R+9ry7TioojNhvpmLh/Wq2xnomOLNXV8K/rckk8f1IE=;
        b=cs52on4/UelsKYf/ZRB0ZXdEA1SuKdrSOs4kdTFQGJ2Zy30Qa4lzelOeebLtyCcqPX
         FTaUoQp0OlyDZMTPDczRDwIbytkFL2ezZSOKEOKhK6y37GvFlXL2rUfk1lqeNulodGVo
         O8r4q6nvnW5dVWqN5rlJmEerfLC1TE2A7+iKZXl4GXH+JZC6lafE5kzgskQ+QeBINRUt
         sIlBkuhhcEGuxPAO4/KEUtIVJb6c9KwhaBoTjFem/47TNxJi+W9bkIEwaiH0H+OyVLbW
         cKLHqLdQwLA2YJSD8X925X1dYS1IX159lLmLXUInB2lXLUd7WatOrhZmWurwyQJS2Izn
         lJlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R+9ry7TioojNhvpmLh/Wq2xnomOLNXV8K/rckk8f1IE=;
        b=qRK2DR0gKzaRC48csQsD98mWj10Z5bELu0YeF7WRlOzWrorcOQhmrxtCt9Kp8udiyH
         GVaW/YdLYwBVGLuwNS/7H8B6L7V7ouEIvS8UZYjAvhYoUGKixUEJGaOmyvv81RLBR2Zo
         2crC3urfdGg2nTDki9O1VO9EUpbUsgpS+6jJCUXIT1/9pKDVtjjM9XzDyfTLaJPP99F4
         n228bHon938+h0K3+p4RUn5jW2dRHBvAIgFQCBvE6T1rbVWfNy8C/8jlzkWIFXOC+E33
         F7UG9D/dPqSzf7BPLTAYjLlLtzFYwRXQJ4XN9+pg6OG286A8MxSCWzteNbwddE7e4Q8a
         gW8Q==
X-Gm-Message-State: AOAM532MJ3f0mqJ4HZgvffUIz5yIGnQxFNcklWid+cUyYKU6EA8+Gg4C
	CWY7ybqABUvp0nJxE3MUrUA=
X-Google-Smtp-Source: ABdhPJwxQvI6gQkptfVFteXAvJTbP6YTjUp5MWLZQpGQmBQ+WSsSEmlZ5XSpfmNToO7vTaLfr+5oow==
X-Received: by 2002:a05:651c:105a:: with SMTP id x26mr1350500ljm.158.1619071868379;
        Wed, 21 Apr 2021 23:11:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:f815:: with SMTP id a21ls4210644lff.1.gmail; Wed, 21 Apr
 2021 23:11:07 -0700 (PDT)
X-Received: by 2002:a05:6512:78c:: with SMTP id x12mr214165lfr.233.1619071867335;
        Wed, 21 Apr 2021 23:11:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619071867; cv=none;
        d=google.com; s=arc-20160816;
        b=o3izeOKNazDmSt7ePQa5H7XbJW9a1bqKIWoaw4z0JHIKgL0yHWzfJ0wIdwbDryYg9X
         8s7MOauXBmTiexHZN5+/Ens9GRU5uM6+pqCoVpYT+InH3G1XbEZ8XNpxt4A4TMjwLZDP
         3zh0U20ul/7BWUbgt2E2SkDLyNQF7TEMk9fL6H9GpwjsNRdIxUwXupaMhpq4Z2hyBJjX
         VLE7l9E9gJADScZsWWPn1LgM6BiqZDo8NkW/qm2DC47A5oGhuAPXN92V2/CuH1ST0pel
         Kg8cnMc82JM/t+atnAvVE1vA9ikKw81OO46prezvl/GydvAq+A+dCfwKAKAxfRj5XrSW
         I2hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=mtxZ6+qiZdo8MbiPQHIi/9Hmp9C/czmXlcQzM0bb7Cc=;
        b=PFZQWxgC+jZo+xWR6VKIXPuOveYxC2TrktuGZJikde4uMuH120HZieaeZuw02ew1FO
         4FeOF7q/pMJ57PV7wJNBt0KYIQ5oB+yI4UTFKhtJjgi44mTUSn+E35ds3dyTGzJoqu/Y
         haVaNIrXJnZKj/aaBwloRIHq1T3TVA1acFzGuP76+YdUDQXBM0XBN8pttZfVRiZN713c
         LbOAW2/5uxEiJ5HOtKGfkfKnDqgXgoab9VGHeNa1OglgxWsgUmG7G6RsCx4DMfeSeNJ+
         MiVXahxmRAlZNWRii3yJ6Ic28hYBFWqQCyfJ86+6kUmv8WZ5OmTo7KZrOE/6Feq59f7q
         HNGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aHKvH1Ct;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com. [2a00:1450:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id w18si328616lft.10.2021.04.21.23.11.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 23:11:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) client-ip=2a00:1450:4864:20::12a;
Received: by mail-lf1-x12a.google.com with SMTP id r128so43346024lff.4
        for <clang-built-linux@googlegroups.com>; Wed, 21 Apr 2021 23:11:07 -0700 (PDT)
X-Received: by 2002:a19:ac09:: with SMTP id g9mr1332550lfc.547.1619071866912;
 Wed, 21 Apr 2021 23:11:06 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000eff40905c0894ce8@google.com> <CAKwvOdnq+9wNZwhmKV3HBCL_CX_W3Cfer107yEsZKJqUpK1dXw@mail.gmail.com>
In-Reply-To: <CAKwvOdnq+9wNZwhmKV3HBCL_CX_W3Cfer107yEsZKJqUpK1dXw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 21 Apr 2021 23:10:54 -0700
Message-ID: <CAKwvOd=XixtbdYfwtUf7+ddxxv=h7eCX4-VP0XZNNFvFuxDSMw@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - April 21, 2021
To: Nick Desaulniers <ndesaulniers@google.com>, Android-LLVM <android-llvm@google.com>, 
	clang linux fellowship <clang-linux-fellowship@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aHKvH1Ct;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a
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

On Wed, Apr 21, 2021 at 11:03 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Hey folks interested in tomorrow's bug scrub; if you have time come
> join us at: https://meet.google.com/yvj-tmcy-jup any time 9am-5pm
> pacific tomorrow.
>
> You'll probably want to rebuild LLVM tonight with all backends
> enabled, and perhaps even the m68k backend enabled. ie. do not set
> `-DLLVM_TARGETS_TO_BUILD`, do set

Alternatively, you can set -DLLVM_TARGETS_TO_BUILD to:
-DLLVM_TARGETS_TO_BUILD="AArch64;ARM;Hexagon;Mips;PowerPC;RISCV;Sparc;SystemZ;X86"

> `-DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD="M68k"`.
>
> As a template for closing bugs that are not or no longer reproducible,
> might I suggest the template:
>
> ```
> Thank you for submitting this bug report.  I'm not able to reproduce
> it using llvm @ <YOUR LLVM SHA HERE> using the following commands:
> <COMMANDS>
> Therefore, I am closing this bug report as obsolete; please feel free
> to reopen with additional steps to reproduce beyond what was attempted
> above.
> ```
>
> The goal is not to close every bug, but to see if certain bugs are
> still visible.  A good comment for one might be:
> ```
> I was still able to reproduce this failure using llvm @ <YOUR LLVM SHA
> HERE> using the following commands:
> <COMMANDS>
> ```
> The key point being the date on the comment will help us understand
> which bugs have grown stale or not.
>
> Probably won't be closing out any feature requests.  Might even get a
> few bug fixes in too for low hanging fruit; or new bugs filed.
>
> On Wed, Apr 21, 2021 at 10:53 PM <ndesaulniers@google.com> wrote:
> >
> > http://go/clang-built-linux-notes
> > Meeting: Hangouts Meet
> >
> > April 21, 2021
> >
> > Ppc32 boot failures
> >
> > https://github.com/ClangBuiltLinux/linux/issues/1345#issuecomment-816864777
> >
> > Debian LLVM patches causing issues
> >
> > https://github.com/ClangBuiltLinux/linux/issues/1355
> >
> > Gcov shenanigans
> >
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7af08140979a6e7e12b78c93b8625c8d25b084e2
> > KCOV issues resolved
> >
> > CFI feedback
> > Aarch64 per task stack canaries (Nick): https://reviews.llvm.org/D100919
> > Alignment issue in blk still not resolved
> >
> > https://github.com/ClangBuiltLinux/linux/issues/1328
> >
> > Double CI, oops!
> > Fortify source
> > Merge window opening
> > Bug scrub tomorrow!
> >
> >
> > ________________________________
> >
> > Sent by http://go/sendnotes
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DXixtbdYfwtUf7%2Bddxxv%3Dh7eCX4-VP0XZNNFvFuxDSMw%40mail.gmail.com.
