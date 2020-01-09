Return-Path: <clang-built-linux+bncBCMIZB7QWENRBFWD3XYAKGQECE4OCMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F9D135F33
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jan 2020 18:23:35 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id o14sf4104418otp.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jan 2020 09:23:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578590614; cv=pass;
        d=google.com; s=arc-20160816;
        b=i9mheE6icjcE4xfFJ8lV771ECxqDaQdp6rq3OL7PY96W6UoOilhP4EezddgaR47FQk
         hj7WSe57PJkF24GYpTDEBbSGsGtpf0fBodGiWMrE058O8C/qnSmv+QvLY+VPRaem0GkT
         DHumURxqW8FPvcoYwkrtHCdx1xc4wMO07jsnDLrIRT2KryHgZZKp5C7Xw0C/scyYL//v
         lm1vwvUvDw1mdvWK7s1MJai1V9Ii+KcoFou36NjylIYpCvmQxGdgnHaFyqU5rQggOgpl
         uPl16sHu8Mrzkr/QXv9iZ8quTPOrClbuGl3niSP4ceTaSlAyAzd6Cp6bi2e46R66Zd86
         0pLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fTWgOqFZ0ruhmC2NVE3qdW1JV/GA2QRMSskiDRps7Yw=;
        b=ejr2CnY+wdEUA2xYVakpVC3FmrGC6pwS/fdr0uVbWB0tsF0n4rWxmpaTvW93y1lJgZ
         AvDluyB/dMirbd0+Dl1JMonp1Ms68LGHSINQTMIFoQHe+D6Hc1UL6C7mPgRSzkesGzFW
         c5Hm2SLhZTb6zVymohL5v/1ziBOnRm8wc8OJNb/iCXZ2bq/lEZ/TrKuZ9Adua6UjHVyL
         9R8bcPrO9+i0gnJTfG5iaN5FOyDiW+tG6TR7lEK5GNzCtU5QhU2h4HdUdYCH/0rY7EwD
         12HCORzbxLewS3DcTEON7flTqS+CyhNCZ+LQaQXwveQoWe9sm5CiT7EoWzIQxSuntcXr
         4UgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ogAjVnYK;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fTWgOqFZ0ruhmC2NVE3qdW1JV/GA2QRMSskiDRps7Yw=;
        b=HJXS2vDep1B06qgrMWq9TW98z0O2ECmtDvT69q4gmoWg9SuP83qmHyJB179CR87W+C
         tBi4ZPe4l1Zq095h29Bjbq8LVKLx+kj3Nj4gq/Q/1rCcwKL9hGDCCLHhVkESpNnJvfyO
         iCi0YEEMwRpkCS2b7AdqXy1CM1sHoLZdWeeplPZLqQ/JBHCmCahDdsGsgA9VRPtQIkaz
         c1i31pAG/07VMrpoMYg9GletbrhqPa+Sg5W6ymlnhBdmMohyf4RvT/94yT6Apu5eVkx4
         EjcKajaunZ8slJ40Hx78gLudIdgTxgif8e7wp3gZD5k/WMz1wvJ4u5BSHwxtj2Brip7z
         PBtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fTWgOqFZ0ruhmC2NVE3qdW1JV/GA2QRMSskiDRps7Yw=;
        b=SFedDF/fZ8c2286R+Q1L7b0D3umiY8WVNBxcHCOWVDxHG1YelDw4QI3rECgFlEt3y0
         P2NuFQwelwjB9TqcdnYpDZ7ZFtQbweOFHJ2LYiHwgyddtxaMUNCXb7+YwUXwn3rrcUnQ
         NSPuBgIqyQJiKh6mgAFfKBgm0Np3u6/N8NA1YlACOgs/zUUtW77AJdICWG+GNay9AQTM
         /cUaM6zVBDUBplJ7Etn28I08KoV6NCUjEA+51VNpvJpPid4Vluig91BNesN5i/lnxEq0
         mff3FMv5xeSfYJZgdGCqzIWGpB5UbLL1mZbTbuE1OJCG9z6brsN3Np7XqzO7l3BO8dsM
         Wakw==
X-Gm-Message-State: APjAAAUJclSy4uoVqKUhV97OPItJMeNI7KMwmf4GMeh+dk5S/wgCqNPG
	ehIOKitU9gdBCzA56BzyAYk=
X-Google-Smtp-Source: APXvYqzliObKSYJDtNEEwz/Lix6mvxPBlxWO9iNs+adVW1dbSzU/15+DwP7DH3JIjSesqeYmRTgUPg==
X-Received: by 2002:a9d:d06:: with SMTP id 6mr7195260oti.176.1578590614310;
        Thu, 09 Jan 2020 09:23:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:60d0:: with SMTP id b16ls551427otk.0.gmail; Thu, 09 Jan
 2020 09:23:34 -0800 (PST)
X-Received: by 2002:a9d:65cf:: with SMTP id z15mr9873254oth.238.1578590613779;
        Thu, 09 Jan 2020 09:23:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578590613; cv=none;
        d=google.com; s=arc-20160816;
        b=c0898/gqwDM9/JWlGf9Yd/YSAYe93AtSzsBgcCaqw6Gdk9evA7hxNVoJjp0oHDoxHi
         nNj/RdQTcsk7pYxrJvbDPyytooro1k7WO5JgnHYF/lg2zRAJs3k+tBebfFFIPc/0CNbz
         Kxk41V8H6IqBYvn1UiKvMoqcah3yZiVJHkU+8KzD7XGwAZXN/DejQqVAt9QamlpCw6Zw
         Ss1QKxfDAD1GtolansSWaFYX6qB7gJMhxqPU00VSeztBSCLS5gexNDGg6wnph+9DKkdt
         S23V0fz2e6I3j/tVyiBluTM6Wer48wFoOSq5FDdqERR2iO8KvbTGPTey5zfXRJQToNqA
         zmQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ol7Z89x1q9Bk2b0iHrV1d110XANTLcaOuCwuCwl9eDw=;
        b=zkeLFLaXk8/96ogGG3Cm5+kNON6CiytGyLVBRpC9nwFoHqK+Oy7ASYMoPd9YwAgmd9
         1NjY7/cn+MF3IcmRMCXSC2rYtjP+yBArNGhwv4a19OGvXyEMZTyoBcWrddvSTBwh8miO
         xY82I0dmOWE63r9+rdgHw/YjtiW0JuiZxeNXUzedC6FRyWh281ptA2KSs4fgrYIiMXDK
         dtlf34wJnQDgNfamRgoK6fY/bMYi3leTrP9tMsSA6s5pxzGENyW3K4ZaQtZWDEh7xGjJ
         ZW8JgeWinKzufpVjHD7OweFbxIdLvi5JvskhahGCf3PGo8sL7qMWWilg63i/9Dfi+v2m
         h4kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ogAjVnYK;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id d6si347603oig.4.2020.01.09.09.23.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2020 09:23:33 -0800 (PST)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id dc14so3277242qvb.9
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jan 2020 09:23:33 -0800 (PST)
X-Received: by 2002:ad4:5a53:: with SMTP id ej19mr9842934qvb.34.1578590612698;
 Thu, 09 Jan 2020 09:23:32 -0800 (PST)
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
 <CACT4Y+axj5M4p=mZkFb1MyBw0MK1c6nWb-fKQcYSnYB8n1Cb8Q@mail.gmail.com>
 <CAG_fn=XddhnhqwFfzavcNJSYVprapH560okDL+mYmJ4OWGxWLA@mail.gmail.com> <CAKwvOdmYM+sfn3pNOxZm51K40MjyniEmBvwQJVxshq=FMaW_=Q@mail.gmail.com>
In-Reply-To: <CAKwvOdmYM+sfn3pNOxZm51K40MjyniEmBvwQJVxshq=FMaW_=Q@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 9 Jan 2020 18:23:20 +0100
Message-ID: <CACT4Y+apeR4GJdS3SwNZLAuGeojj0jKvc-s5jA=VBECnRFmunQ@mail.gmail.com>
Subject: Re: INFO: rcu detected stall in sys_kill
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Alexander Potapenko <glider@google.com>, Casey Schaufler <casey@schaufler-ca.com>, 
	Daniel Axtens <dja@axtens.net>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, 
	syzbot <syzbot+de8d933e7d153aa0c1bb@syzkaller.appspotmail.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ogAjVnYK;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f44
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

On Thu, Jan 9, 2020 at 6:17 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > > > > > > On 1/8/2020 2:25 AM, Tetsuo Handa wrote:
> > > > > > > > > On 2020/01/08 15:20, Dmitry Vyukov wrote:
> > > > > > > > >> I temporarily re-enabled smack instance and it produced another 50
> > > > > > > > >> stalls all over the kernel, and now keeps spewing a dozen every hour.
> > > > > > > >
> > > > > > > > Do I have to be using clang to test this? I'm setting up to work on this,
> > > > > > > > and don't want to waste time using my current tool chain if the problem
> > > > > > > > is clang specific.
> > > > > > >
> > > > > > > Humm, interesting. Initially I was going to say that most likely it's
> > > > > > > not clang-related. Bug smack instance is actually the only one that
> > > > > > > uses clang as well (except for KMSAN of course). So maybe it's indeed
> > > > > > > clang-related rather than smack-related. Let me try to build a kernel
> > > > > > > with clang.
> > > > > >
> > > > > > +clang-built-linux, glider
> > > > > >
> > > > > > [clang-built linux is severe broken since early Dec]
>
> Is there automated reporting? Consider adding our mailing list for
> Clang specific failures.
> clang-built-linux <clang-built-linux@googlegroups.com>
> Our CI looks green, but there's a very long tail of combinations of
> configs that we don't have coverage of, so bug reports are
> appreciated:
> https://github.com/ClangBuiltLinux/linux/issues

syzbot does automatic reporting, but it does not automatically
classify bugs as clang-specific.
FTR, this combination is clang+KASAN+VMAP_STACK (relatively recent
changes, and that's what triggered the infinite loop). But note that
the kernel booted, you can ssh and do some basic things.

> > > > > >
> > > > > > Building kernel with clang I can immediately reproduce this locally:
> > > > > >
> > > > > > $ syz-manager
> > > > > > 2020/01/09 09:27:15 loading corpus...
> > > > > > 2020/01/09 09:27:17 serving http on http://0.0.0.0:50001
> > > > > > 2020/01/09 09:27:17 serving rpc on tcp://[::]:45851
> > > > > > 2020/01/09 09:27:17 booting test machines...
> > > > > > 2020/01/09 09:27:17 wait for the connection from test machine...
> > > > > > 2020/01/09 09:29:23 machine check:
> > > > > > 2020/01/09 09:29:23 syscalls                : 2961/3195
> > > > > > 2020/01/09 09:29:23 code coverage           : enabled
> > > > > > 2020/01/09 09:29:23 comparison tracing      : enabled
> > > > > > 2020/01/09 09:29:23 extra coverage          : enabled
> > > > > > 2020/01/09 09:29:23 setuid sandbox          : enabled
> > > > > > 2020/01/09 09:29:23 namespace sandbox       : enabled
> > > > > > 2020/01/09 09:29:23 Android sandbox         : /sys/fs/selinux/policy
> > > > > > does not exist
> > > > > > 2020/01/09 09:29:23 fault injection         : enabled
> > > > > > 2020/01/09 09:29:23 leak checking           : CONFIG_DEBUG_KMEMLEAK is
> > > > > > not enabled
> > > > > > 2020/01/09 09:29:23 net packet injection    : enabled
> > > > > > 2020/01/09 09:29:23 net device setup        : enabled
> > > > > > 2020/01/09 09:29:23 concurrency sanitizer   : /sys/kernel/debug/kcsan
> > > > > > does not exist
> > > > > > 2020/01/09 09:29:23 devlink PCI setup       : PCI device 0000:00:10.0
> > > > > > is not available
> > > > > > 2020/01/09 09:29:27 corpus                  : 50226 (0 deleted)
> > > > > > 2020/01/09 09:29:27 VMs 20, executed 0, cover 0, crashes 0, repro 0
> > > > > > 2020/01/09 09:29:37 VMs 20, executed 45, cover 0, crashes 0, repro 0
> > > > > > 2020/01/09 09:29:47 VMs 20, executed 74, cover 0, crashes 0, repro 0
> > > > > > 2020/01/09 09:29:57 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > > 2020/01/09 09:30:07 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > > 2020/01/09 09:30:17 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > > 2020/01/09 09:30:27 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > > 2020/01/09 09:30:37 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > > 2020/01/09 09:30:47 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > > 2020/01/09 09:30:57 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > > 2020/01/09 09:31:07 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > > 2020/01/09 09:31:17 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > > > > 2020/01/09 09:31:26 vm-10: crash: INFO: rcu detected stall in do_idle
> > > > > > 2020/01/09 09:31:27 VMs 13, executed 80, cover 0, crashes 0, repro 0
> > > > > > 2020/01/09 09:31:28 vm-1: crash: INFO: rcu detected stall in sys_futex
> > > > > > 2020/01/09 09:31:29 vm-4: crash: INFO: rcu detected stall in sys_futex
> > > > > > 2020/01/09 09:31:31 vm-0: crash: INFO: rcu detected stall in sys_getsockopt
> > > > > > 2020/01/09 09:31:33 vm-18: crash: INFO: rcu detected stall in sys_clone3
> > > > > > 2020/01/09 09:31:35 vm-3: crash: INFO: rcu detected stall in sys_futex
> > > > > > 2020/01/09 09:31:36 vm-8: crash: INFO: rcu detected stall in do_idle
> > > > > > 2020/01/09 09:31:37 VMs 7, executed 80, cover 0, crashes 6, repro 0
> > > > > > 2020/01/09 09:31:38 vm-19: crash: INFO: rcu detected stall in schedule_tail
> > > > > > 2020/01/09 09:31:40 vm-6: crash: INFO: rcu detected stall in schedule_tail
> > > > > > 2020/01/09 09:31:42 vm-2: crash: INFO: rcu detected stall in schedule_tail
> > > > > > 2020/01/09 09:31:44 vm-12: crash: INFO: rcu detected stall in sys_futex
> > > > > > 2020/01/09 09:31:46 vm-15: crash: INFO: rcu detected stall in sys_nanosleep
> > > > > > 2020/01/09 09:31:47 VMs 1, executed 80, cover 0, crashes 11, repro 0
> > > > > > 2020/01/09 09:31:48 vm-16: crash: INFO: rcu detected stall in sys_futex
> > > > > > 2020/01/09 09:31:50 vm-9: crash: INFO: rcu detected stall in schedule
> > > > > > 2020/01/09 09:31:52 vm-13: crash: INFO: rcu detected stall in schedule_tail
> > > > > > 2020/01/09 09:31:54 vm-11: crash: INFO: rcu detected stall in schedule_tail
> > > > > > 2020/01/09 09:31:56 vm-17: crash: INFO: rcu detected stall in sys_futex
> > > > > > 2020/01/09 09:31:57 VMs 0, executed 80, cover 0, crashes 16, repro 0
> > > > > > 2020/01/09 09:31:58 vm-7: crash: INFO: rcu detected stall in sys_futex
> > > > > > 2020/01/09 09:32:00 vm-5: crash: INFO: rcu detected stall in dput
> > > > > > 2020/01/09 09:32:02 vm-14: crash: INFO: rcu detected stall in sys_nanosleep
> > > > > >
> > > > > >
> > > > > > Then I switched LSM to selinux and I _still_ can reproduce this. So,
> > > > > > Casey, you may relax, this is not smack-specific :)
> > > > > >
> > > > > > Then I disabled CONFIG_KASAN_VMALLOC and CONFIG_VMAP_STACK and it
> > > > > > started working normally.
> > > > > >
> > > > > > So this is somehow related to both clang and KASAN/VMAP_STACK.
> > > > > >
> > > > > > The clang I used is:
> > > > > > https://storage.googleapis.com/syzkaller/clang-kmsan-362913.tar.gz
> > > > > > (the one we use on syzbot).
> > > > >
> > > > >
> > > > > Clustering hangs, they all happen within very limited section of the code:
> > > > >
> > > > >       1  free_thread_stack+0x124/0x590 kernel/fork.c:284
> > > > >       5  free_thread_stack+0x12e/0x590 kernel/fork.c:280
> > > > >      39  free_thread_stack+0x12e/0x590 kernel/fork.c:284
> > > > >       6  free_thread_stack+0x133/0x590 kernel/fork.c:280
> > > > >       5  free_thread_stack+0x13d/0x590 kernel/fork.c:280
> > > > >       2  free_thread_stack+0x141/0x590 kernel/fork.c:280
> > > > >       6  free_thread_stack+0x14c/0x590 kernel/fork.c:280
> > > > >       9  free_thread_stack+0x151/0x590 kernel/fork.c:280
> > > > >       3  free_thread_stack+0x15b/0x590 kernel/fork.c:280
> > > > >      67  free_thread_stack+0x168/0x590 kernel/fork.c:280
> > > > >       6  free_thread_stack+0x16d/0x590 kernel/fork.c:284
> > > > >       2  free_thread_stack+0x177/0x590 kernel/fork.c:284
> > > > >       1  free_thread_stack+0x182/0x590 kernel/fork.c:284
> > > > >       1  free_thread_stack+0x186/0x590 kernel/fork.c:284
> > > > >      16  free_thread_stack+0x18b/0x590 kernel/fork.c:284
> > > > >       4  free_thread_stack+0x195/0x590 kernel/fork.c:284
> > > > >
> > > > > Here is disass of the function:
> > > > > https://gist.githubusercontent.com/dvyukov/a283d1aaf2ef7874001d56525279ccbd/raw/ac2478bff6472bc473f57f91a75f827cd72bb6bf/gistfile1.txt
> > > > >
> > > > > But if I am not mistaken, the function only ever jumps down. So how
> > > > > can it loop?...
> > > >
> > > >
> > > > This is a miscompilation related to static branches.
> > > >
> > > > objdump shows:
> > > >
> > > > ffffffff814878f8: 0f 1f 44 00 00        nopl   0x0(%rax,%rax,1)
> > > >  ./arch/x86/include/asm/jump_label.h:25
> > > > asm_volatile_goto("1:"
> > > >
> > > > However, the actual instruction in memory at the time is:
> > > >
> > > >    0xffffffff814878f8 <+408>: jmpq   0xffffffff8148787f <free_thread_stack+287>
> > > >
> > > > Which jumps to a wrong location in free_thread_stack and makes it loop.
> > > >
> > > > The static branch is this:
> > > >
> > > > static inline bool memcg_kmem_enabled(void)
> > > > {
> > > >   return static_branch_unlikely(&memcg_kmem_enabled_key);
> > > > }
> > > >
> > > > static inline void memcg_kmem_uncharge(struct page *page, int order)
> > > > {
> > > >   if (memcg_kmem_enabled())
> > > >     __memcg_kmem_uncharge(page, order);
> > > > }
> > > >
> > > > I suspect it may have something to do with loop unrolling. It may jump
> > > > to the right location, but in the wrong unrolled iteration.
>
> I disabled loop unrolling and loop unswitching in LLVM when the loop
> contained asm goto in:
> https://github.com/llvm/llvm-project/commit/c4f245b40aad7e8627b37a8bf1bdcdbcd541e665
> I have a fix for loop unrolling in:
> https://reviews.llvm.org/D64101
> that I should dust off. I haven't looked into loop unswitching yet.

c4f245b40aad7e8627b37a8bf1bdcdbcd541e665 is in the range between the
broken compiler and the newer compiler that seems to work, so I would
assume that that commit fixes this.
We will get the final stamp from syzbot hopefully by tomorrow.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BapeR4GJdS3SwNZLAuGeojj0jKvc-s5jA%3DVBECnRFmunQ%40mail.gmail.com.
