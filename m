Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFGA3XYAKGQEBPQN65I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F00E135F18
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jan 2020 18:17:10 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id m4sf3752407pls.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jan 2020 09:17:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578590228; cv=pass;
        d=google.com; s=arc-20160816;
        b=z4F3vC0zgTAvsbUVDmq4qBZiNE7ub+SMjysASqgbVzkva7JorGaaJGcUENW4C0tTrJ
         UlbAPrvEpN7MkBcKUxPor3ZT4PtQsNAmfBPPZj5u1eLVKslIad1T2OzE2x0kCM+E8MZx
         Q/o3msUaZ/JD/jDGDZVpGDpk0OzNhQaM7XTz3v6mAnrq8c4+H1jaN1XA9161LnV+qTnc
         LWskfn0eEGJJB4UrH29pgNrK0a49Cg2p6RtxPkT1iRvrsZcNYzmLo/LL1kt8oZfNTS5S
         K/RoOgi9w3jkO1kzG4W/Ftb4zvWWHoqv1hZ6zK2cGSRX/PbTqLo1NGp9xA5OsaphtR4z
         Ph6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=e49NhYCuUCrxv0kwOJUEPCyR4oz0BmDdSa6/VbXnBTg=;
        b=QLTCpKPHMld4SUg0wQU+PdSYmKjrGwtwfnwQ+uvw0FlTfFu8wDsxrEZtoH6+IKcKxt
         uzweD8i4Aa/ZuYOz41IOh6SjqvUZNLMvEveEjvDAA2jZD/DXNfRedhr8HJ66lMBweewR
         gJ6q+SYAX8KYI75hJDUh7jG7nimwunVIu3e9iK9bA7v5tNdkiLxw3NY73y1IrOgKmwaj
         Zvle1Wt4cVUFHMFneT+G60fRtJLfuj9XyP0e6NyGcpLmTLK9unrAjSzf88fQaJWUNUjN
         /wAbD2TjAplMSbkIkynDG1NChCiDidPaEk4wurBc6HlhP2VZqjwnwxQY1xF05W1IVbdV
         1OVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Bfe+uK8L;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e49NhYCuUCrxv0kwOJUEPCyR4oz0BmDdSa6/VbXnBTg=;
        b=BgZ1JLOwnbKDreFSKbInQonoFcue7R1vdkMoTAFsgWtds6yu45zuig+7bup5fHvFNb
         NAJqC7gC5iHx0rxyd713abWUVFZD87LTTtv1EsRyMpHRiArAeUdhSLpWVMxNgb2QP8WN
         ZEE1WxMN0QuG3Mm+7YpnsKmDd7sMg30ZhguRwLFtr/FMZa0PM8nNJb0pkN4dH77ys1fk
         CbZL2JevIpIXImLShGsgS7xS7b5URL65ODyO0+fc1DmL+I9xpNMmM7+WXpCd5/bubxF/
         ZshBLFM4qjzF9KCLyFOn+FlEgbAK0dSJaBA0yeezNcxXqexv2ZmvwRmskR81+pGbvRlD
         XDmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e49NhYCuUCrxv0kwOJUEPCyR4oz0BmDdSa6/VbXnBTg=;
        b=tYsH8ePckeA8GbkB6CwIoNaenNI+yvyUFl67flKDhEqcWvQzoElydzHaI/qTtKs1QR
         z2OpUfdPCm0qF4MD/2RVJaTKcWQw8bcIAFKlLcVUYMTaLJyGoOo9gQ+gSvAiFsOv3sZ1
         xpc98wNg0vXPfQhe/EqaegX8NvxIrQQwzNEeSUFtgVXpFNXytUdiKwVODhLacJNjzntS
         iMJrvo4pW2GRchlu1h7+iLNT6HUZL7D4m3CqXN4DLRCQXpE+EgmHNq+lKwGAqWLNtpTV
         o6G9VMOhdORY/XFZ3hYDn6H/vw9Po/2aPVSRyKMoPh+/nW8XK9nXIcTksgzMnXGQBfKT
         XMiQ==
X-Gm-Message-State: APjAAAUyJCqBVHmcI5QSScV2Wlp+LuAXLaKrNpladmXx3NgW65u0QWq7
	Sya1+KnpQMWfluzPwToMcIQ=
X-Google-Smtp-Source: APXvYqyCBnDxT7DvcsGLZdzz77n4TJXAJAKyHUk2p4KG5WGi06PmdN4ZhzoEpfus/t5HQphSIr77/w==
X-Received: by 2002:a17:902:a614:: with SMTP id u20mr12869995plq.107.1578590228505;
        Thu, 09 Jan 2020 09:17:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ad46:: with SMTP id w6ls890560pjv.4.gmail; Thu, 09
 Jan 2020 09:17:08 -0800 (PST)
X-Received: by 2002:a17:90a:a881:: with SMTP id h1mr6514267pjq.50.1578590228097;
        Thu, 09 Jan 2020 09:17:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578590228; cv=none;
        d=google.com; s=arc-20160816;
        b=G74x6t5VW/5im3VL6fYnL5ozgEihie39gJ6b3QwNxPWzdNTSA1i4ueYkm2Jib0KB4N
         rhlBGdvvTpFYZ3ImeCFJSC1mbGLajpEoZA0uGL7zJJFy2lNzRQVqVFSmcYyV6WyzURY7
         Z+rfiEua+KUl54Kwg1N5DfSZ5LK8gch5l5iyQ1JoBFCOGoaBperRfFRbMZRKFONErtRQ
         DnhB0s363UhUBiGxCRK73by6bxoJFIkUmNqtpm6hOeWyduEOr85VeOIWt/0mXh41wT85
         c61Q17migosngKcelm8dWavyHzFAO5YrsIT1sTjXa2sLP+oZv6twIm9PnKY/cN4jL0Uq
         DIvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VQMh9njmfCtNXD8iZHUjnxm+asnCt/ee/1OxShUW+4g=;
        b=pPE6D2EbQ1o18R+YTseDg9YWceMJ4iiLml0tMMTtw9EycWsY3ES7bHQdDn2I7ZOKHW
         79YzCTMo3GvrpJpG7oK0jzSp4UqCYw5WrJswmtpzBaOQ9z0i5XreM1ya5AyGV+lDrJ/H
         OoxLPFrKbQ5KsawrLjw9FMhwi48Jap45c05Qpb3KjdkPPF7VBT9oHCXywtXtY363g19Y
         e/m8I4774iJU/oaDeACxnlN1hGVlWipmn4Hm1ssUSXjBQ+7/1JE1PkexPa4+lbEpjDLp
         FqkZ60hy/OaeWOD1RfMCLXg541alN4NiYHCwF+uLbkheo6Jf054p4W6LOO8FWx7IrrjG
         U5Cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Bfe+uK8L;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id r18si357538pfc.2.2020.01.09.09.17.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2020 09:17:08 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 4so3662962pfz.9
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jan 2020 09:17:08 -0800 (PST)
X-Received: by 2002:aa7:946a:: with SMTP id t10mr12372748pfq.165.1578590227281;
 Thu, 09 Jan 2020 09:17:07 -0800 (PST)
MIME-Version: 1.0
References: <00000000000036decf0598c8762e@google.com> <CACT4Y+YVMUxeLcFMray9n0+cXbVibj5X347LZr8YgvjN5nC8pw@mail.gmail.com>
 <CACT4Y+asdED7tYv462Ui2OhQVKXVUnC+=fumXR3qM1A4d6AvOQ@mail.gmail.com>
 <f7758e0a-a157-56a2-287e-3d4452d72e00@schaufler-ca.com> <87a787ekd0.fsf@dja-thinkpad.axtens.net>
 <87h81zax74.fsf@dja-thinkpad.axtens.net> <CACT4Y+b+Vx1FeCmhMAYq-g3ObHdMPOsWxouyXXUr7S5OjNiVGQ@mail.gmail.com>
 <0b60c93e-a967-ecac-07e7-67aea1a0208e@I-love.SAKURA.ne.jp>
 <6d009462-74d9-96e9-ab3f-396842a58011@schaufler-ca.com> <CACT4Y+bURugCpLm5TG37-7voFEeEoXo_Gb=3sy75_RELZotXHw@mail.gmail.com>
 <CACT4Y+avizeUd=nY2w1B_LbEC1cP5prBfpnANYaxhgS_fcL6ag@mail.gmail.com>
 <CACT4Y+Z3GCncV3G1=36NmDRX_XOZsdoRJ3UshZoornbSRSN28w@mail.gmail.com>
 <CACT4Y+ZyVi=ow+VXA9PaWEVE8qKj8_AKzeFsNdsmiSR9iL3FOw@mail.gmail.com>
 <CACT4Y+axj5M4p=mZkFb1MyBw0MK1c6nWb-fKQcYSnYB8n1Cb8Q@mail.gmail.com> <CAG_fn=XddhnhqwFfzavcNJSYVprapH560okDL+mYmJ4OWGxWLA@mail.gmail.com>
In-Reply-To: <CAG_fn=XddhnhqwFfzavcNJSYVprapH560okDL+mYmJ4OWGxWLA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 9 Jan 2020 09:16:56 -0800
Message-ID: <CAKwvOdmYM+sfn3pNOxZm51K40MjyniEmBvwQJVxshq=FMaW_=Q@mail.gmail.com>
Subject: Re: INFO: rcu detected stall in sys_kill
To: Alexander Potapenko <glider@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>, Casey Schaufler <casey@schaufler-ca.com>, 
	Daniel Axtens <dja@axtens.net>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, 
	syzbot <syzbot+de8d933e7d153aa0c1bb@syzkaller.appspotmail.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Bfe+uK8L;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Thu, Jan 9, 2020 at 8:23 AM 'Alexander Potapenko' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Thu, Jan 9, 2020 at 11:39 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > On Thu, Jan 9, 2020 at 11:05 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> > > > > > > On 1/8/2020 2:25 AM, Tetsuo Handa wrote:
> > > > > > > > On 2020/01/08 15:20, Dmitry Vyukov wrote:
> > > > > > > >> I temporarily re-enabled smack instance and it produced another 50
> > > > > > > >> stalls all over the kernel, and now keeps spewing a dozen every hour.
> > > > > > >
> > > > > > > Do I have to be using clang to test this? I'm setting up to work on this,
> > > > > > > and don't want to waste time using my current tool chain if the problem
> > > > > > > is clang specific.
> > > > > >
> > > > > > Humm, interesting. Initially I was going to say that most likely it's
> > > > > > not clang-related. Bug smack instance is actually the only one that
> > > > > > uses clang as well (except for KMSAN of course). So maybe it's indeed
> > > > > > clang-related rather than smack-related. Let me try to build a kernel
> > > > > > with clang.
> > > > >
> > > > > +clang-built-linux, glider
> > > > >
> > > > > [clang-built linux is severe broken since early Dec]

Is there automated reporting? Consider adding our mailing list for
Clang specific failures.
clang-built-linux <clang-built-linux@googlegroups.com>
Our CI looks green, but there's a very long tail of combinations of
configs that we don't have coverage of, so bug reports are
appreciated:
https://github.com/ClangBuiltLinux/linux/issues

> > > > >
> > > > > Building kernel with clang I can immediately reproduce this locally:
> > > > >
> > > > > $ syz-manager
> > > > > 2020/01/09 09:27:15 loading corpus...
> > > > > 2020/01/09 09:27:17 serving http on http://0.0.0.0:50001
> > > > > 2020/01/09 09:27:17 serving rpc on tcp://[::]:45851
> > > > > 2020/01/09 09:27:17 booting test machines...
> > > > > 2020/01/09 09:27:17 wait for the connection from test machine...
> > > > > 2020/01/09 09:29:23 machine check:
> > > > > 2020/01/09 09:29:23 syscalls                : 2961/3195
> > > > > 2020/01/09 09:29:23 code coverage           : enabled
> > > > > 2020/01/09 09:29:23 comparison tracing      : enabled
> > > > > 2020/01/09 09:29:23 extra coverage          : enabled
> > > > > 2020/01/09 09:29:23 setuid sandbox          : enabled
> > > > > 2020/01/09 09:29:23 namespace sandbox       : enabled
> > > > > 2020/01/09 09:29:23 Android sandbox         : /sys/fs/selinux/policy
> > > > > does not exist
> > > > > 2020/01/09 09:29:23 fault injection         : enabled
> > > > > 2020/01/09 09:29:23 leak checking           : CONFIG_DEBUG_KMEMLEAK is
> > > > > not enabled
> > > > > 2020/01/09 09:29:23 net packet injection    : enabled
> > > > > 2020/01/09 09:29:23 net device setup        : enabled
> > > > > 2020/01/09 09:29:23 concurrency sanitizer   : /sys/kernel/debug/kcsan
> > > > > does not exist
> > > > > 2020/01/09 09:29:23 devlink PCI setup       : PCI device 0000:00:10.0
> > > > > is not available
> > > > > 2020/01/09 09:29:27 corpus                  : 50226 (0 deleted)
> > > > > 2020/01/09 09:29:27 VMs 20, executed 0, cover 0, crashes 0, repro 0
> > > > > 2020/01/09 09:29:37 VMs 20, executed 45, cover 0, crashes 0, repro 0
> > > > > 2020/01/09 09:29:47 VMs 20, executed 74, cover 0, crashes 0, repro 0
> > > > > 2020/01/09 09:29:57 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > 2020/01/09 09:30:07 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > 2020/01/09 09:30:17 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > 2020/01/09 09:30:27 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > 2020/01/09 09:30:37 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > 2020/01/09 09:30:47 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > 2020/01/09 09:30:57 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > 2020/01/09 09:31:07 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > 2020/01/09 09:31:17 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > 2020/01/09 09:31:26 vm-10: crash: INFO: rcu detected stall in do_idle
> > > > > 2020/01/09 09:31:27 VMs 13, executed 80, cover 0, crashes 0, repro 0
> > > > > 2020/01/09 09:31:28 vm-1: crash: INFO: rcu detected stall in sys_futex
> > > > > 2020/01/09 09:31:29 vm-4: crash: INFO: rcu detected stall in sys_futex
> > > > > 2020/01/09 09:31:31 vm-0: crash: INFO: rcu detected stall in sys_getsockopt
> > > > > 2020/01/09 09:31:33 vm-18: crash: INFO: rcu detected stall in sys_clone3
> > > > > 2020/01/09 09:31:35 vm-3: crash: INFO: rcu detected stall in sys_futex
> > > > > 2020/01/09 09:31:36 vm-8: crash: INFO: rcu detected stall in do_idle
> > > > > 2020/01/09 09:31:37 VMs 7, executed 80, cover 0, crashes 6, repro 0
> > > > > 2020/01/09 09:31:38 vm-19: crash: INFO: rcu detected stall in schedule_tail
> > > > > 2020/01/09 09:31:40 vm-6: crash: INFO: rcu detected stall in schedule_tail
> > > > > 2020/01/09 09:31:42 vm-2: crash: INFO: rcu detected stall in schedule_tail
> > > > > 2020/01/09 09:31:44 vm-12: crash: INFO: rcu detected stall in sys_futex
> > > > > 2020/01/09 09:31:46 vm-15: crash: INFO: rcu detected stall in sys_nanosleep
> > > > > 2020/01/09 09:31:47 VMs 1, executed 80, cover 0, crashes 11, repro 0
> > > > > 2020/01/09 09:31:48 vm-16: crash: INFO: rcu detected stall in sys_futex
> > > > > 2020/01/09 09:31:50 vm-9: crash: INFO: rcu detected stall in schedule
> > > > > 2020/01/09 09:31:52 vm-13: crash: INFO: rcu detected stall in schedule_tail
> > > > > 2020/01/09 09:31:54 vm-11: crash: INFO: rcu detected stall in schedule_tail
> > > > > 2020/01/09 09:31:56 vm-17: crash: INFO: rcu detected stall in sys_futex
> > > > > 2020/01/09 09:31:57 VMs 0, executed 80, cover 0, crashes 16, repro 0
> > > > > 2020/01/09 09:31:58 vm-7: crash: INFO: rcu detected stall in sys_futex
> > > > > 2020/01/09 09:32:00 vm-5: crash: INFO: rcu detected stall in dput
> > > > > 2020/01/09 09:32:02 vm-14: crash: INFO: rcu detected stall in sys_nanosleep
> > > > >
> > > > >
> > > > > Then I switched LSM to selinux and I _still_ can reproduce this. So,
> > > > > Casey, you may relax, this is not smack-specific :)
> > > > >
> > > > > Then I disabled CONFIG_KASAN_VMALLOC and CONFIG_VMAP_STACK and it
> > > > > started working normally.
> > > > >
> > > > > So this is somehow related to both clang and KASAN/VMAP_STACK.
> > > > >
> > > > > The clang I used is:
> > > > > https://storage.googleapis.com/syzkaller/clang-kmsan-362913.tar.gz
> > > > > (the one we use on syzbot).
> > > >
> > > >
> > > > Clustering hangs, they all happen within very limited section of the code:
> > > >
> > > >       1  free_thread_stack+0x124/0x590 kernel/fork.c:284
> > > >       5  free_thread_stack+0x12e/0x590 kernel/fork.c:280
> > > >      39  free_thread_stack+0x12e/0x590 kernel/fork.c:284
> > > >       6  free_thread_stack+0x133/0x590 kernel/fork.c:280
> > > >       5  free_thread_stack+0x13d/0x590 kernel/fork.c:280
> > > >       2  free_thread_stack+0x141/0x590 kernel/fork.c:280
> > > >       6  free_thread_stack+0x14c/0x590 kernel/fork.c:280
> > > >       9  free_thread_stack+0x151/0x590 kernel/fork.c:280
> > > >       3  free_thread_stack+0x15b/0x590 kernel/fork.c:280
> > > >      67  free_thread_stack+0x168/0x590 kernel/fork.c:280
> > > >       6  free_thread_stack+0x16d/0x590 kernel/fork.c:284
> > > >       2  free_thread_stack+0x177/0x590 kernel/fork.c:284
> > > >       1  free_thread_stack+0x182/0x590 kernel/fork.c:284
> > > >       1  free_thread_stack+0x186/0x590 kernel/fork.c:284
> > > >      16  free_thread_stack+0x18b/0x590 kernel/fork.c:284
> > > >       4  free_thread_stack+0x195/0x590 kernel/fork.c:284
> > > >
> > > > Here is disass of the function:
> > > > https://gist.githubusercontent.com/dvyukov/a283d1aaf2ef7874001d56525279ccbd/raw/ac2478bff6472bc473f57f91a75f827cd72bb6bf/gistfile1.txt
> > > >
> > > > But if I am not mistaken, the function only ever jumps down. So how
> > > > can it loop?...
> > >
> > >
> > > This is a miscompilation related to static branches.
> > >
> > > objdump shows:
> > >
> > > ffffffff814878f8: 0f 1f 44 00 00        nopl   0x0(%rax,%rax,1)
> > >  ./arch/x86/include/asm/jump_label.h:25
> > > asm_volatile_goto("1:"
> > >
> > > However, the actual instruction in memory at the time is:
> > >
> > >    0xffffffff814878f8 <+408>: jmpq   0xffffffff8148787f <free_thread_stack+287>
> > >
> > > Which jumps to a wrong location in free_thread_stack and makes it loop.
> > >
> > > The static branch is this:
> > >
> > > static inline bool memcg_kmem_enabled(void)
> > > {
> > >   return static_branch_unlikely(&memcg_kmem_enabled_key);
> > > }
> > >
> > > static inline void memcg_kmem_uncharge(struct page *page, int order)
> > > {
> > >   if (memcg_kmem_enabled())
> > >     __memcg_kmem_uncharge(page, order);
> > > }
> > >
> > > I suspect it may have something to do with loop unrolling. It may jump
> > > to the right location, but in the wrong unrolled iteration.

I disabled loop unrolling and loop unswitching in LLVM when the loop
contained asm goto in:
https://github.com/llvm/llvm-project/commit/c4f245b40aad7e8627b37a8bf1bdcdbcd541e665
I have a fix for loop unrolling in:
https://reviews.llvm.org/D64101
that I should dust off. I haven't looked into loop unswitching yet.

> >
> >
> > Kernel built with clang version 10.0.0
> > (https://github.com/llvm/llvm-project.git
> > c2443155a0fb245c8f17f2c1c72b6ea391e86e81) works fine.
> >
> > Alex, please update clang on syzbot machines.
>
> Done ~3 hours ago, guess we'll see the results within a day.

Please let me know if you otherwise encounter any miscompiles with
Clang, particularly `asm goto` I treat as P0.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmYM%2Bsfn3pNOxZm51K40MjyniEmBvwQJVxshq%3DFMaW_%3DQ%40mail.gmail.com.
