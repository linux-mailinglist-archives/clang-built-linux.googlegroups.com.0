Return-Path: <clang-built-linux+bncBCMIZB7QWENRB26HXP5QKGQENQTBHKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id B30B0279750
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Sep 2020 08:47:09 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id s204sf4061106pfs.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 23:47:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601102828; cv=pass;
        d=google.com; s=arc-20160816;
        b=vk8Oe0iWIbvQVzy7NsEwq0KLdbW4Ppk/zHTSt2jnIYZkA/tvZb9ckw8sJYSV26NO4u
         bbscSb0TAo0Jen6yl83AQDy4CqL/Ytbes1s0gz2s1z6PMXF6l9x6MiI8e3241fcj2Bjd
         aJM+DkHioCQG0t+/sMaG/u75kju1WZjZtBri68pKevNU8Vpt6zBYbWU4mmddp56OXITV
         32R+BJfPa1AJUaCidzJpyEwX+h2080rgqY/ddEzI51hLVfMOgBQuPrmI9wDysdOI3cSf
         rt01dYUOBHME8GL77YKDfLvbfaCnzbDgDRCeu99o1Zvw20RylTHLGSP35o0mlqz5USAh
         4CnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VcaA1QPjQ116U2aZZiGzX2nULNhv4xWaaldsJ+MxGjI=;
        b=sEGM1+3g32+vhxehWJi7n37iVWtOcu3/qv8dsgrbUdIDJYPj92gSEc1m5Az5ausGnr
         oPFZHAUwiYFFHQXXjWvaQ1GFjlt1SdBh1EKhlRTbeGkgevXZEBFqUTLtThxjWBOpLLtq
         /fYgep+KhwtRPG7nrK8kh3KmhgClvpYQjlTUJgMUYf+Grlemy+GwDjI5DFKdBfZ+LK/Q
         07SymNiyk0Bx9v+7QKMgmRFvn3pdGFMeK9fA0bg6RF6byo+hN0OoZ+tsQJlb+dt3Na2y
         rwSWM+eTaCPw9sOCOpxxAcMKWNqX7qGZJPsO7/Y1AFTMgbFaGxUFezbYPek7DKVyuW6u
         6bUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=msjlhrZA;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VcaA1QPjQ116U2aZZiGzX2nULNhv4xWaaldsJ+MxGjI=;
        b=c3pvS/FPsKKYmgdqMy0ovIXsZSBT8e6RrpNquHNNkD4lqxaQgwSN3t+32tTJ0h+gC4
         hDK9m31yMcsuvqAOFfmKJuqT6YYY/I2xQxgdRVAmzVXtCt4vjKIDpL8c1o2eMINjNmvT
         ovNc5MNiY4AF0S+t+gE4FTHZxsR/IYhYvZ0/+ukrqixbZH5R4HtKMlvcCjQa/VN+kKj3
         b/LKHlC6xtG5PgG139abjA49/g6nN5cWmXXTCmR4gcGxlilUTe2PTdiCNY2K8EurxIpq
         cNeV+oS+6KxEUWOvSVoHWTk24h/L8mWCyVsODZqOFHApG9V3BpwqCZBnqp4/ftAuGWM5
         fmjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VcaA1QPjQ116U2aZZiGzX2nULNhv4xWaaldsJ+MxGjI=;
        b=tSi6+yYb3KEzjPQfoh/b7rl9uNaYS73VtNFBlwJsT9idhP29mMFDb0r3uhSJfyjEIN
         3N0LUctulgP2X6ugUDYPdEN273DU7qvC2L50gUCxaO8qNQ1Fe2qVqJ+IpTUvllgLeYTV
         75hW7XKmUg35rx75lQf2OYcMi+eJ4Zd+CWjnj5dICyu9dB7GJJbQN6xEnBabTOxbZEuv
         GxfIeo7fxPi0+hyUEXZnVkxAmwpTLp0W0rLwzntC8vsIdzpoyztQXoJUtcwgurwWaJfN
         7198Oo0x7hhqiyRkJKQ5HEdCl5Z+V1xTYPdnknQ+mtZgvmi4F7bXeF2Olp/XAuRIkuVm
         vyyQ==
X-Gm-Message-State: AOAM53285EOR4u60H8QLBXVMEwugl0YcdHjUdNmhWbUmxhmPPUPPD676
	NXZ5PcuRcXfTGjBdVwmS4j8=
X-Google-Smtp-Source: ABdhPJz9eH8vgrmaS9OVCJ9c88DPVdZrw7wH8Ams4LBZj7D8LfImzcGSj+CgueZUuqlUey6ebresFg==
X-Received: by 2002:a17:90a:9505:: with SMTP id t5mr1006326pjo.121.1601102827962;
        Fri, 25 Sep 2020 23:47:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d745:: with SMTP id w5ls364389pgi.8.gmail; Fri, 25 Sep
 2020 23:47:07 -0700 (PDT)
X-Received: by 2002:a63:1226:: with SMTP id h38mr1888067pgl.196.1601102827271;
        Fri, 25 Sep 2020 23:47:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601102827; cv=none;
        d=google.com; s=arc-20160816;
        b=anu19A9tRCbYoFz0jf6zG+Ilu78l2qOT5bJwiJpSQZ+8yWWeWZcuKRSkh76m87GWi+
         2VQHuLJtUN+6JO+Ylu7v6Lho0g7L7u7N8Xq8u/dacJ3Z+f/SxR8LGe7ICZcor85Ydu5Q
         B4+gG3zXU9Jnghou+V8s6o55MhTr7azWf/qYSqkoFT/PDQKBR3UVt5myGU9OvYDEL2nv
         HgBU/EHvNgENUBs9MhCnY7aagiNHUA+6UDD85rvHxGRtvXgFCt52PioA9pWiKRAR90f7
         NMtp+rhdKwjX7epTyJSmOJZf4/12BwjQZbqP+BavJE1xmS08MlIR60rWo1j4IvCKGowb
         i2WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0UiAMmLV3chB4WVnJpu5YMg6M65xGLtvRdJzsmaCauk=;
        b=UvrAgEAPfZe+0Bc9o8U5UXaEpc02xsg5X22kK0U3HUxEz0ASI9Uw3LdXqdXANKI1I2
         yc2EygdDmFviLwULwUpg0IulSPiwFMgGBEYj/48i+yZhlBjIKU47v9TrAgfMA1cG3kd1
         IXy73Q+0NQ6kNU4cQ6c0u+Bg1axHoUqdDWLTRCUsoUpVBCKtMLLWYa/t9k9xdUyiZghK
         8LJojSST2q9PIebmxUBGuHxFKmE7uSRJG1CSN2xNRb5VGy5qsuySYFJ7n/G4JAO3IJyX
         CQJuBfppiyh6VXwVO14EaZ23GStkswJbggP+Stf8n6YpQ8dKniwswB3k6bMmsQsLlFlF
         EakQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=msjlhrZA;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id q125si380844pfc.2.2020.09.25.23.47.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 23:47:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id r8so4187751qtp.13
        for <clang-built-linux@googlegroups.com>; Fri, 25 Sep 2020 23:47:07 -0700 (PDT)
X-Received: by 2002:ac8:4806:: with SMTP id g6mr3318476qtq.380.1601102826168;
 Fri, 25 Sep 2020 23:47:06 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200919110831.GD7462@zn.tnic>
 <CACT4Y+ZhofJhNjfav22YNVpxtH4_+3Qaut6rOiqv4MLNU5mcEg@mail.gmail.com>
 <CACT4Y+b9ZCKJkOmwbEC6sZxEQ-9g2g=-v4+X0aWv7AsrZo7utA@mail.gmail.com>
 <CAKwvOdmKcn=FNzwtBZ8z0evLz4BXgWtsoz9+QTC6GLqtNp1bXg@mail.gmail.com>
 <20200921221336.GN5901@zn.tnic> <CAKwvOd=E11KriNqeVv2-Tvq5sQy=4vyBzDEH22D5h5LgBeFsVw@mail.gmail.com>
 <20200923090336.GD28545@zn.tnic> <CACT4Y+Y4-vqdv01ebyzhUoggUCUyvbhjut7Wvj=r4dBfyxLeng@mail.gmail.com>
 <20200923103431.GF28545@zn.tnic> <CACT4Y+ayTBwBwsnV9Kp-vMQ=hgu9-r9g4qzAfd+HdQXX95PX9g@mail.gmail.com>
 <CACT4Y+bjyAfO-TRjBHT9wR194=prH2C284Oc9akVVHR1492WZA@mail.gmail.com> <CAKwvOdkYEP=oRtEu_89JBq2g41PL9_FuFyfeB94XwBKuSz4XLg@mail.gmail.com>
In-Reply-To: <CAKwvOdkYEP=oRtEu_89JBq2g41PL9_FuFyfeB94XwBKuSz4XLg@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 26 Sep 2020 08:46:54 +0200
Message-ID: <CACT4Y+YhLFzkoqfUWy3rh86KnpLEaffGHXhfk1xSv__60uvGeQ@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@alien8.de>, Josh Poimboeuf <jpoimboe@redhat.com>, 
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
 header.i=@google.com header.s=20161025 header.b=msjlhrZA;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::843
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

On Sat, Sep 26, 2020 at 2:32 AM 'Nick Desaulniers' via syzkaller-bugs
<syzkaller-bugs@googlegroups.com> wrote:
> > > > On Wed, Sep 23, 2020 at 11:24:48AM +0200, Dmitry Vyukov wrote:
> > > > > 3. Run syzkaller locally with custom patches.
> > > >
> > > > Let's say I wanna build the kernel with clang-10 using your .config and
> > > > run it in a vm locally. What are the steps in order to reproduce the
> > > > same workload syzkaller runs in the guest on the GCE so that I can at
> > > > least try get as close as possible to reproducing locally?
> > >
> > > It's a random fuzzing workload. You can get this workload by running
> > > syzkaller locally:
> > > https://github.com/google/syzkaller/blob/master/docs/linux/setup_ubuntu-host_qemu-vm_x86-64-kernel.md
>
> These are virtualized guests, right?  Has anyone played with getting
> `rr` working to record traces of guests in QEMU?
>
> I had seen the bug that generated this on github:
> https://julialang.org/blog/2020/09/rr-memory-magic/
>
> That way, even if syzkaller didn't have a reproducer binary, it would
> at least have a replayable trace.

These are virtualized guests, but they run on GCE, not in QEMU.

> Boris, one question I have. Doesn't the kernel mark pages backing
> executable code as read only at some point?  If that were the case,
> then I don't see how the instruction stream could be modified.  I
> guess static key patching would have to undo that permission mapping
> before patching.
>
> You're right about the length shorter than what I would have expected
> from static key patching.  That could very well be a write through
> dangling int pointer...
>
> > >
> > > The exact clang compiler syzbot used is available here:
> > > https://github.com/google/syzkaller/blob/master/docs/syzbot.md#crash-does-not-reproduce
> >
> > I've marked all other similar ones a dup of this one. Now you can see
> > all manifestations on the dashboard:
> > https://syzkaller.appspot.com/bug?extid=ce179bc99e64377c24bc
> >
> > Another possible debugging vector on this:
> > The location of crashes does not seem to be completely random and
> > evenly spread across kernel code. I think there are many more static
> > branches (mm, net), but we have 3 crashes in vdso and 9 in paravirt
> > code + these 6 crashes in perf_misc_flags which looks a bit like an
> > outlier (?). What's special about paravirt/vdso?..
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/CAKwvOdkYEP%3DoRtEu_89JBq2g41PL9_FuFyfeB94XwBKuSz4XLg%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BYhLFzkoqfUWy3rh86KnpLEaffGHXhfk1xSv__60uvGeQ%40mail.gmail.com.
