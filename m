Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGUYXL5QKGQEVHBEQMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C5F279596
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Sep 2020 02:32:28 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id t128sf375662pgb.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 17:32:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601080347; cv=pass;
        d=google.com; s=arc-20160816;
        b=u5WnVQYeeFUbNv2qGyCQuJc295Sxn4LYdjURLns64LnSCf43qRVfdyDw4Wsubi3X5o
         CWG0rC6Ewto5/x5Poyui4ytR+4ZgCPXVFgz67u4B1pj0uFn4S1Z9QB4z7pyk3tnzaiAY
         f7yHpCcKEHXctElm0anERmBJSKATtx9v3k5sQ4MsvvP6R8kMwibdKttu7Slyby+aIl7z
         38OZRIRwvz3OlvIKJr6phSwU4y8/pP3fFm/WB2wPi9foQxAmK8GubPp7x5i5eQ9cq/Yb
         EdFSfODDo3jeYAKw2Mj0zK2a0dzsicsM6xauShrPc6qy1234HlJBkVLMmldLnr/2HPb5
         kVuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AE/fgkFnEAAim4xdJpso5cjPGBMHqXHCMTCrcFsF8no=;
        b=S+754MMxoWwhYNZaRHdF+eTZK518v4oQ3HNr8W3nUNL/hrRCV5wHKaCOqXmhvTx3Ne
         RyD+OZSPVcetd8/BKsVFZgvw0CjDtV99/rozE1TWB71D9IdlExolKIcldd7B41Kw3cRZ
         HSqGFb85SDdx9LRCgF4yG29O7F90gB9c9xQ6q7nXIj3OsYotp+wTTrDOj5+AkyZerTkl
         uFnCehMlGQOW40PE49B4RNVyoPhhOd/SMJkcQuOuu4sn/16dEJ8BnF8EeUq74wyXPK3Q
         OzyPZCcSP9Ur1Sx+/joA4O+Xtb1I6REOcl3n2Crk/LbwQYP1BhBgyAGj3eUYidsVjcLu
         5lvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HVnZBsEH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AE/fgkFnEAAim4xdJpso5cjPGBMHqXHCMTCrcFsF8no=;
        b=Uip2PMQre2V1cojLhykMzq13s59ud0qNprhrPNWFGgBNZsc/4CYUl4xg6+BnBt5hiL
         j3q1SKckO/U4h16DWV3ljn7HKWMCUL5CexLzogCSgm8uAtWQIPWV8hAfiqMYipIBV7Ii
         IYy/J9a50jtTpJ/YEXgV1GKARBaHE7RA5FkxIqHPb6r1F56ebZuw7WzIYnTOO7xcv87K
         WWcCa/7+ehjFqUx39NNG4WL/Kty6T0K6030+uXCk8PlzgFdCNkOItTnyJV7QJmk7mA4j
         BxiAc1cvKU8UhvCZzGfXzC+MTWo0gkRdwNPdUWEbdhmxEpkB4eQImK0b1u3ac7udpCYR
         1n6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AE/fgkFnEAAim4xdJpso5cjPGBMHqXHCMTCrcFsF8no=;
        b=QNlMvjYd+5Jasn2kj5OYl+Fv9a/hi8T++11coXQbY7Vb6j5m9/S25MS29F47p8m6Vq
         G3RZv164JcTAnhYl3mgQ8lfznkfYNwzzdytS+w+ZNezk2CZ8ktVpX504WJLvAJTFTPVI
         rnoW2NVDj4yNd+Et5/g1PF2krzvV5GeKPkKfAHWggOb9SV8qngPY9NZAXIVwWCFTr5Ax
         ZQ87+uVZ8oTixF1QZrTdLGsJ1+Nx+PBkTcw+mmnXiIeayPeb611jT3ARJf6NGuRVFytl
         /quFEDIGo2t4t4oNGvGnGz185/GCCfeNjC5addrJyRvQAbNqMpu/lkOe2IPHoURuuE5b
         3rKg==
X-Gm-Message-State: AOAM531cPOmIkP88Hy0W00zhX8pso2LwaC+owKxgVshTWYgYWfhDFnLp
	njujPqIoxcz0xgQ73ibG9vE=
X-Google-Smtp-Source: ABdhPJwuoa0YC9dvD8FmoRsZZhCaV0Zy37Fw+z9jtZolj32xSd3J1dZdgGV2dL1Lnz33AsToJXxScg==
X-Received: by 2002:a17:90b:357:: with SMTP id fh23mr107440pjb.221.1601080347080;
        Fri, 25 Sep 2020 17:32:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d90:: with SMTP id v16ls307659plo.3.gmail; Fri, 25
 Sep 2020 17:32:26 -0700 (PDT)
X-Received: by 2002:a17:90a:ae12:: with SMTP id t18mr117881pjq.147.1601080346450;
        Fri, 25 Sep 2020 17:32:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601080346; cv=none;
        d=google.com; s=arc-20160816;
        b=MkkyWcTZ0SbCeh5du43IRYrNzE6zqKpPsvikTSIMZPRIwHS9fV6GuLJCQ3y63cVWWS
         Jq36fm94oITrRI1334jSEByL9DLHabAyv7b9EGoVeLCrewGBZ7FBmgs3liSSaghkBTYj
         xp4YRFDnY7UTS8kSgPub1E39/EOgFKzFT+AY2V7qZ/pY36ov2gvwFMrJZlSkViP8PQvO
         0BpyDEmXOPAGREowBF9onx2yLsJhNeK7D0rhcESNNjKd7c0mRW4b1991ziLDwyTknMwh
         5WG+b2L0Hvk/FhNplgSq1RbUsERP1RTL8RImkwTXPRkyDNWZmE89zNRR9jHqaESSTRGy
         Zb1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7A7wvtihbUasQazeiP5kITL56ahdnZrHt6WOUS33Asc=;
        b=W5BSSsSAKhxrmomts7Dv2anioQVHzrxIBgrNCkuXzQdw+Mou0MAW4HBW/4YjMO9821
         SyMzqMBjW3UtXJzLjojHaqNxqeOkfn77ZENUgT67yR5G4PXy0X3Dt1bicv1J1NrECe5e
         kyluswmblddL6hlvibVdT6smFYrNwtbJdksdCnNZBocreKlUoFUHO77nJciCWXYrzV9i
         G+ENHjmlo05l2yQptBrY8tdS/sWQR2qXJBqw1kDhz5AOkp1nCAvUJTGwGP/1Z4bWGjtF
         Nf/8v7LNK2pdZi9yX1U1DiB77BCrOye0whnPW6oDoxNRh75JDcLAgu9Y6nSCm8PeieaO
         BxSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HVnZBsEH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t16si37231pgu.1.2020.09.25.17.32.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 17:32:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id 197so3926642pge.8
        for <clang-built-linux@googlegroups.com>; Fri, 25 Sep 2020 17:32:26 -0700 (PDT)
X-Received: by 2002:a63:78b:: with SMTP id 133mr1058914pgh.381.1601080345839;
 Fri, 25 Sep 2020 17:32:25 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200919110831.GD7462@zn.tnic>
 <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com>
 <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com>
 <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
 <20200921221336.GN5901@zn.tnic> <CAKwvOd=E11KriNqeVv2-Tvq5sQy=4vyBzDEH22D5h5LgBeFsVw@mail.gmail.com>
 <20200923090336.GD28545@zn.tnic> <CACT4Y+Y4-vqdv01ebyzhUoggUCUyvbhjut7Wvj=r4dBfyxLeng@mail.gmail.com>
 <20200923103431.GF28545@zn.tnic> <CACT4Y+ayTBwBwsnV9Kp-vMQ=hgu9-r9g4qzAfd+HdQXX95PX9g@mail.gmail.com>
 <CACT4Y+bjyAfO-TRjBHT9wR194=prH2C284Oc9akVVHR1492WZA@mail.gmail.com>
In-Reply-To: <CACT4Y+bjyAfO-TRjBHT9wR194=prH2C284Oc9akVVHR1492WZA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 25 Sep 2020 17:32:14 -0700
Message-ID: <CAKwvOdkYEP=oRtEu_89JBq2g41PL9_FuFyfeB94XwBKuSz4XLg@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Dmitry Vyukov <dvyukov@google.com>, Borislav Petkov <bp@alien8.de>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, 
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HVnZBsEH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Fri, Sep 25, 2020 at 5:22 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Wed, Sep 23, 2020 at 5:20 PM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > On Wed, Sep 23, 2020 at 12:34 PM Borislav Petkov <bp@alien8.de> wrote:
> > >
> > > On Wed, Sep 23, 2020 at 11:24:48AM +0200, Dmitry Vyukov wrote:
> > > > 3. Run syzkaller locally with custom patches.
> > >
> > > Let's say I wanna build the kernel with clang-10 using your .config and
> > > run it in a vm locally. What are the steps in order to reproduce the
> > > same workload syzkaller runs in the guest on the GCE so that I can at
> > > least try get as close as possible to reproducing locally?
> >
> > It's a random fuzzing workload. You can get this workload by running
> > syzkaller locally:
> > https://github.com/google/syzkaller/blob/master/docs/linux/setup_ubuntu-host_qemu-vm_x86-64-kernel.md

These are virtualized guests, right?  Has anyone played with getting
`rr` working to record traces of guests in QEMU?

I had seen the bug that generated this on github:
https://julialang.org/blog/2020/09/rr-memory-magic/

That way, even if syzkaller didn't have a reproducer binary, it would
at least have a replayable trace.

Boris, one question I have. Doesn't the kernel mark pages backing
executable code as read only at some point?  If that were the case,
then I don't see how the instruction stream could be modified.  I
guess static key patching would have to undo that permission mapping
before patching.

You're right about the length shorter than what I would have expected
from static key patching.  That could very well be a write through
dangling int pointer...

> >
> > The exact clang compiler syzbot used is available here:
> > https://github.com/google/syzkaller/blob/master/docs/syzbot.md#crash-does-not-reproduce
>
> I've marked all other similar ones a dup of this one. Now you can see
> all manifestations on the dashboard:
> https://syzkaller.appspot.com/bug?extid=ce179bc99e64377c24bc
>
> Another possible debugging vector on this:
> The location of crashes does not seem to be completely random and
> evenly spread across kernel code. I think there are many more static
> branches (mm, net), but we have 3 crashes in vdso and 9 in paravirt
> code + these 6 crashes in perf_misc_flags which looks a bit like an
> outlier (?). What's special about paravirt/vdso?..



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkYEP%3DoRtEu_89JBq2g41PL9_FuFyfeB94XwBKuSz4XLg%40mail.gmail.com.
