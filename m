Return-Path: <clang-built-linux+bncBCMIZB7QWENRBI6CW75QKGQEQRZKVBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0700127870F
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 14:23:01 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id m13sf1687944qtu.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 05:23:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601036580; cv=pass;
        d=google.com; s=arc-20160816;
        b=aQCP6UhTAVxA3ljpM195ssuoSMf4SmloLlRU2FWhG76zleCfTJS0wla2xyQbo3DJjX
         WudPm4kQo/83Va4PHnVjF9C4SLjxe4Gw85adQhgNFFHBRRgU+ywQNvVSXOztOgTZ4i5r
         9mF5AeVr3254r3hg1Gms/UgnAcnlz8agIXjBiCmmz4ciw9BDv6mc+RD0R7h6aJgQ8hl6
         fh0rrs1CmTnILF3f7N0VLYuQS/KN4HzIY3W2Dl21uZ+wZKSVIupRBwghMFzg/uM/6AJH
         HOgWF5P4ATlbk4a/xyrmRQs79g+JInA6LfsLVhckqibzuDK0qnCxadsDkuguBQoXvDXk
         G1bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xpCojQudPsOZeCh9nMNFkpjWbR156RVlM78fakvq/qc=;
        b=ZkFQKCGQ3lTw+2Td9i+Sc8M5rUl9qOt3YzNLoSwNqQjg+8tkdl0pRbLIHYq8s0IH7b
         PdQlc4hF1RLj5cHyUqt9Qu9qOmRZjooKynP84lVXrXOg+fkqG0Muki4b224yKbhUqCG+
         rMj8xezPO9L5s6vVsCQOaborPVuyCTn+4lC7M7oaqLIryU6UBDEGeBEOYU2PczKqq5p4
         j2s7mRNZSe0LV9s0mxuLmIgHwFDGbQ3ZzoXEwnYWQC13kxGtwh8sianTXabcj5a6hGHx
         WshuImdJ/ERz/bXFRBdLKErQ9SHk//p+abqtvr7eD3mN8txXlPHExMAXqFXbJoOw+lYB
         6lWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RaEYAZyM;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xpCojQudPsOZeCh9nMNFkpjWbR156RVlM78fakvq/qc=;
        b=DI9kDCPIYSnNEeOuuLMBYdOI3KMEIFT6HVOxJAbW2Eks8DD6ARwSI6gDddy+J1Gby4
         eFNGdMdJNs12Y/y6LoPmWmW1j4z3towRcp/lGamOpi5wBZAgUEsrXXP6GchB6NpDhTkh
         t6JNHLene5rL19ozdZlJSjd4csI8mXDRSJSQ0x8jkmZk41oj/h/FdrsnXFlpjW3b1q78
         PMxhOkFloEo9VDz3XMOfCG7dDJYmDh1z/CkAW0rNhVSBvchsx2Y0iu8WngtskSB1WRoi
         DDQ+NS+4TPwRqgBFZXhtfD4ZgUHGO61hfolARpNN7yPIafujhj1mwkqYWdFhhPHGSNCm
         EMTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xpCojQudPsOZeCh9nMNFkpjWbR156RVlM78fakvq/qc=;
        b=G8+7yNSCI6tnlg6hGzFma9Nfnu8BZh8Fn1ysI4RPsDOXp7Y53BoZcXfS73zU5GQZXP
         Ihwg87wJ9vqjaXzcKu0hJKGfUN6Kpla8A9XEyFMdEYlhnQYPjQYD6R2ZY+TonpbzE8af
         QRClMXXMP48AYR9McdhpickQ6g9LV7qFsdjMgyq5GESI7IhitryGBTHkP0Tv8gP7SB+d
         GHYlmmQK5IxtdheB4PYvxNRy85DwFcnX4y8llFtOPZM8ADDZZT5hhecoaqDWA0faF8pk
         CY7PyrsOAuKjiGLsbnBMtkZCWjPM0y9TCIlc2hshCyp1IuN5LPcvdHlMw4/Z8+XKv+aV
         bEtg==
X-Gm-Message-State: AOAM533VOGN50XvGupoUzXvFFjBj+py4USaAoHIynIhSpFbnhdXBnaEP
	vEAkPRxqB7hEKNtvU7yhapM=
X-Google-Smtp-Source: ABdhPJwP/twOa8tMyfWSg0ro3cnVjNxgy/nckhF4VrTXuj6U8rvE4Qsztd62hqXlVVNC0JLHYIvwPA==
X-Received: by 2002:ac8:1bb3:: with SMTP id z48mr3835293qtj.203.1601036580054;
        Fri, 25 Sep 2020 05:23:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f204:: with SMTP id m4ls1151629qkg.4.gmail; Fri, 25 Sep
 2020 05:22:59 -0700 (PDT)
X-Received: by 2002:a05:620a:4d9:: with SMTP id 25mr3881187qks.285.1601036579600;
        Fri, 25 Sep 2020 05:22:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601036579; cv=none;
        d=google.com; s=arc-20160816;
        b=ZgsOWFws6CWOqVQBlz2N9d2ZhmC9lG5hdMjqm22Ueku9VmarSqxXLnHhpRDtRhL0F+
         rooqHvirIl6lFnSuBI9voW0ua4xEY7QW6lGS0uOlqKEIERSaXE7tIS31+Wxc0uUIiP5x
         dOCo0ZmGWzwCpyYsrqyRbVBSBjFtfYIdDJfz5opHDuSvZnr2/faeWvZE+KdyHc7lZ4rS
         qvmfB/eu9WGRXDUvsqJxraWUKlsPqh0xopUmeyftuMws7P1JhRHvuxZGpxyrApIA23sG
         Kb5mBRUJzBiG+IKgJtXmR5aolbYYTMQ/08hooCH8H+XGjU75Ch8E3vN7yG8Rf298yKbP
         dfCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JiwHunS73dKhzMvuruWEdSZBTGiMntQmhlw2d9kKF/g=;
        b=iPBV8pCJtQXVhqpVX7NwV2STQNtioviCtWkMREphX6YYq6HfwOwGUmc0uIIAA4pHSv
         IHePR8Rej3wh56FVaylZKLHX0nnhRSCeRKffcZNv6LKvXJfk9rG5pXthSd3uUcAhqXqR
         uFJXiAe82VaEuw446X/52HZFI+3kJTu8DahXxs5a8gvlc5DM+td4+P/LPh2e22kveUzc
         LsTljVgCeaCXifb2iefzJsawvkw1nMZM/k5bT1q5LBI3WBWXwRWPbNvcxAOmvv1x04Wl
         Fpar3TWuiTuanH4D6zDvpj7g59cPlOCuwp1uNZ76/vO7aytAZMnta8uFautVNkwfSzts
         4fcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RaEYAZyM;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id x13si170057qtp.0.2020.09.25.05.22.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 05:22:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id z2so1605195qtv.12
        for <clang-built-linux@googlegroups.com>; Fri, 25 Sep 2020 05:22:59 -0700 (PDT)
X-Received: by 2002:aed:26a7:: with SMTP id q36mr4018858qtd.57.1601036578995;
 Fri, 25 Sep 2020 05:22:58 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200919110831.GD7462@zn.tnic>
 <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com>
 <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com>
 <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
 <20200921221336.GN5901@zn.tnic> <CAKwvOd=E11KriNqeVv2-Tvq5sQy=4vyBzDEH22D5h5LgBeFsVw@mail.gmail.com>
 <20200923090336.GD28545@zn.tnic> <CACT4Y+Y4-vqdv01ebyzhUoggUCUyvbhjut7Wvj=r4dBfyxLeng@mail.gmail.com>
 <20200923103431.GF28545@zn.tnic> <CACT4Y+ayTBwBwsnV9Kp-vMQ=hgu9-r9g4qzAfd+HdQXX95PX9g@mail.gmail.com>
In-Reply-To: <CACT4Y+ayTBwBwsnV9Kp-vMQ=hgu9-r9g4qzAfd+HdQXX95PX9g@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 25 Sep 2020 14:22:47 +0200
Message-ID: <CACT4Y+bjyAfO-TRjBHT9wR194=prH2C284Oc9akVVHR1492WZA@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RaEYAZyM;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::842
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Wed, Sep 23, 2020 at 5:20 PM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Wed, Sep 23, 2020 at 12:34 PM Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Wed, Sep 23, 2020 at 11:24:48AM +0200, Dmitry Vyukov wrote:
> > > 3. Run syzkaller locally with custom patches.
> >
> > Let's say I wanna build the kernel with clang-10 using your .config and
> > run it in a vm locally. What are the steps in order to reproduce the
> > same workload syzkaller runs in the guest on the GCE so that I can at
> > least try get as close as possible to reproducing locally?
>
> It's a random fuzzing workload. You can get this workload by running
> syzkaller locally:
> https://github.com/google/syzkaller/blob/master/docs/linux/setup_ubuntu-host_qemu-vm_x86-64-kernel.md
>
> The exact clang compiler syzbot used is available here:
> https://github.com/google/syzkaller/blob/master/docs/syzbot.md#crash-does-not-reproduce

I've marked all other similar ones a dup of this one. Now you can see
all manifestations on the dashboard:
https://syzkaller.appspot.com/bug?extid=ce179bc99e64377c24bc

Another possible debugging vector on this:
The location of crashes does not seem to be completely random and
evenly spread across kernel code. I think there are many more static
branches (mm, net), but we have 3 crashes in vdso and 9 in paravirt
code + these 6 crashes in perf_misc_flags which looks a bit like an
outlier (?). What's special about paravirt/vdso?..

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BbjyAfO-TRjBHT9wR194%3DprH2C284Oc9akVVHR1492WZA%40mail.gmail.com.
