Return-Path: <clang-built-linux+bncBCMIZB7QWENRBUOS3PYAKGQEIC74O7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C691354B9
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jan 2020 09:50:26 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id 108sf1186584uad.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jan 2020 00:50:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578559825; cv=pass;
        d=google.com; s=arc-20160816;
        b=XNochOhpCZEUtjaQwidj2X/qgTBXPtgAtzBE2z95FsoswvHfJoZhRLU3G+JkuryNeE
         McuFiKme08u8IMKzd82xTnFVI4dbUc0B0/IWLVOMubUhIjl8IwRX9/2S3Dycgt5ZiGGR
         +wn3y2ZIF7vX6qtUhe05XKv5D/SbsktbSc8w4ucm4KJzBSCyqHGLL1gUkKqb+URN5CJP
         E91LJK23VbtU/Bxy2jCyB4AKOF2Urnp7hMznbVTsJGnu3wFoXYJFVeJXVrmcxet19y71
         kQ/F1yk2+HYx2UMBLZzonHnYl+Hp47Pcd5a7B646yTCs/U3fhaWbjVMv09aDQ9rUHB0C
         6iJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qAPsW78H7LcJ+zYx2L+07CxTxN3q1ygcCAQNorc6zkg=;
        b=yGpfoUSahnypxL7uNCMSWVJsi4mWym+B95T02/8wLw1ql3IvqSyhdn3NdlC0fwoLWp
         e+45/zTPKH5mCVoJ2GF/d+H3NTeeSasjxTQrf4WgPdQJjox5K0D6z51mlj+50+PF0zKL
         oDPNL7+QUYygmyePSr5ptk9lx3XNBf/GCqZuglM7qS8gEH38dQO+JJP6yC3tSBjwPhxi
         ry59ZhNlJ8L2gB/J7z94fZDhnJx4No4+FXxQANkqQiAwX01UvQne9zanRWAQtFQg/L+S
         CNs9rhQi7KChx2fViM98aSs8lj+DQXw45LTH2DarS1Md5pNHxbD3jWJfBzD+grpl2vCf
         WITg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sgrs6iYb;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qAPsW78H7LcJ+zYx2L+07CxTxN3q1ygcCAQNorc6zkg=;
        b=D3ncLICyRFfdDUQYeXuPLOubpgD1Xnf+zYHLRhj41+JHB82izOXtcQyYoKKutF046S
         9yVwW84hqzfo5h4jeLop1IuAZQ6i5ARTThZIZhHEkt16THCjX6n3322DYzN2tYHBLrJO
         on58VQEaddhuAVfTI/alLB99yR5Aoo/Uv7d1BakFW9xnIvHgUgN6xJrPqj0lOblO303k
         2aXRGhU7+f+MJkJ96RYn+dqIUiBqTHcdnx0ZPgsUgFO/qi0O/NSC6eSo2qDxiAXWyLFo
         gmSWsxU/4XpnYhKQCu7a0VZOuZ6V1Aia/nTud4wXo8aAodKzBHfFUORCrlebanpUo9Vt
         y7gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qAPsW78H7LcJ+zYx2L+07CxTxN3q1ygcCAQNorc6zkg=;
        b=I5kvDXz4J8aPxANOIOhw1cbhwpBcjSyPKC4M7OmJJISLYQhT54+MzQ2EtL8nVQ6K+i
         Z/5QivPFHJPHMdv7VSKVWRN31WLUfK2R1Rmdv3hReTC/AXLC9VFTmuV2obrQzijjfchA
         xreMq8qCJ1osMMxRxsaRPB+2v+yGJVF6Ducc7L4Idur70cvhJU+WdsFZn0lVeCYOX1fQ
         tw6HcJ973Tohu8Mf0di2QhWPX6sieuVT8IzfPYgHB9thbBpjmw5joiLhAeHMtnCas3+S
         aNAffq0GPbOP+XEYNfSbvFfAHb+4utnIicJo0+0ZV6SomgLKG137AoppobfOYJY1SHdF
         pPhA==
X-Gm-Message-State: APjAAAXuOlV4oNjGcZPv13dMBHSAWsvvoUdNpqaXNl8IgMT1uH5KYaIV
	LVjQjUoejD+LxJTI3zxauRc=
X-Google-Smtp-Source: APXvYqzRhAp86tdNI5IwONeixo3WQRwMI6rTxg0nNdQQP+4RPe1OWgWoTcX3lpTIUmUvgtkvHp/3Tg==
X-Received: by 2002:a67:bb19:: with SMTP id m25mr5305993vsn.68.1578559825634;
        Thu, 09 Jan 2020 00:50:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4e02:: with SMTP id g2ls77925uah.0.gmail; Thu, 09 Jan
 2020 00:50:25 -0800 (PST)
X-Received: by 2002:ab0:738c:: with SMTP id l12mr6141843uap.135.1578559825244;
        Thu, 09 Jan 2020 00:50:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578559825; cv=none;
        d=google.com; s=arc-20160816;
        b=OIVI3l+ZCj15Qs6lXTstpAmNLhHgWIAKny3k8N5AoLU4U9N49JvmkGPUYNyqhkfOfQ
         V2c/QQf2+f0lBktwiDYbpJYumA09bcrBIyiSN9W1wP7VOljb1En1LV34dzI/2DZ/NGJE
         ggeVUV3BWNrZU4oS0z5GzaYCMpxjLa5iGvlJj4DbJPYoKnejta8VleJndXB1DSgtJVbj
         J60cAvccxah0P8eWgd57sgdBMwEw4rp6Yx+LbJEljwSscanYeeQIdFI6kULGeWa2P4HT
         JUXskIfltoF8WPDeyyeJzT2GOH+JYFACjTqxuwggEEB0FhvO6PcYnporoHjE+xtWqD+Y
         OruQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wloqhRoEICQ+k5+VnPqK5Heg13aiPvech9Fyx9hUKYs=;
        b=eZtpopXQxen3W1eyUM0H4PwQg8rox3Bf1+BXntGfcceN6FDSd4SWvpMfQ249EA7pem
         xex2xMmI9Rber3spn8vbjq5MhvPYSp2KKYNbdR+zk4pdIiwWnmTUgk1LEzqXMuuONJv7
         NnSO8SXrj/GeW5dLEMc5pN/xCV+sZ+O5u5fFV1rNggOLqhW9Wa4bvuMuTBlg4ygrOjvD
         8yt3me+yXz7JUiyPhokH6WQ283R53Z0UQV6uhx1r8CVBdlcaW9wLaKtpQyGFi2NveRnW
         x+jVmFolA1IXDDTE0ApWQrWt+TivhS26UcRfDpAdzEUgJfVn27KALttwq22yK9J4sQYX
         a6XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sgrs6iYb;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id i27si264535uat.1.2020.01.09.00.50.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2020 00:50:25 -0800 (PST)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id y8so2633703qvk.6
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jan 2020 00:50:25 -0800 (PST)
X-Received: by 2002:ad4:4810:: with SMTP id g16mr7563219qvy.22.1578559824505;
 Thu, 09 Jan 2020 00:50:24 -0800 (PST)
MIME-Version: 1.0
References: <00000000000036decf0598c8762e@google.com> <CACT4Y+YVMUxeLcFMray9n0+cXbVibj5X347LZr8YgvjN5nC8pw@mail.gmail.com>
 <CACT4Y+asdED7tYv462Ui2OhQVKXVUnC+=fumXR3qM1A4d6AvOQ@mail.gmail.com>
 <f7758e0a-a157-56a2-287e-3d4452d72e00@schaufler-ca.com> <87a787ekd0.fsf@dja-thinkpad.axtens.net>
 <87h81zax74.fsf@dja-thinkpad.axtens.net> <CACT4Y+b+Vx1FeCmhMAYq-g3ObHdMPOsWxouyXXUr7S5OjNiVGQ@mail.gmail.com>
 <0b60c93e-a967-ecac-07e7-67aea1a0208e@I-love.SAKURA.ne.jp>
 <6d009462-74d9-96e9-ab3f-396842a58011@schaufler-ca.com> <CACT4Y+bURugCpLm5TG37-7voFEeEoXo_Gb=3sy75_RELZotXHw@mail.gmail.com>
In-Reply-To: <CACT4Y+bURugCpLm5TG37-7voFEeEoXo_Gb=3sy75_RELZotXHw@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 9 Jan 2020 09:50:12 +0100
Message-ID: <CACT4Y+avizeUd=nY2w1B_LbEC1cP5prBfpnANYaxhgS_fcL6ag@mail.gmail.com>
Subject: Re: INFO: rcu detected stall in sys_kill
To: Casey Schaufler <casey@schaufler-ca.com>, Daniel Axtens <dja@axtens.net>, 
	Alexander Potapenko <glider@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, 
	syzbot <syzbot+de8d933e7d153aa0c1bb@syzkaller.appspotmail.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sgrs6iYb;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f43
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

On Thu, Jan 9, 2020 at 9:19 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Wed, Jan 8, 2020 at 6:19 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> >
> > On 1/8/2020 2:25 AM, Tetsuo Handa wrote:
> > > On 2020/01/08 15:20, Dmitry Vyukov wrote:
> > >> I temporarily re-enabled smack instance and it produced another 50
> > >> stalls all over the kernel, and now keeps spewing a dozen every hour.
> >
> > Do I have to be using clang to test this? I'm setting up to work on this,
> > and don't want to waste time using my current tool chain if the problem
> > is clang specific.
>
> Humm, interesting. Initially I was going to say that most likely it's
> not clang-related. Bug smack instance is actually the only one that
> uses clang as well (except for KMSAN of course). So maybe it's indeed
> clang-related rather than smack-related. Let me try to build a kernel
> with clang.

+clang-built-linux, glider

[clang-built linux is severe broken since early Dec]

Building kernel with clang I can immediately reproduce this locally:

$ syz-manager
2020/01/09 09:27:15 loading corpus...
2020/01/09 09:27:17 serving http on http://0.0.0.0:50001
2020/01/09 09:27:17 serving rpc on tcp://[::]:45851
2020/01/09 09:27:17 booting test machines...
2020/01/09 09:27:17 wait for the connection from test machine...
2020/01/09 09:29:23 machine check:
2020/01/09 09:29:23 syscalls                : 2961/3195
2020/01/09 09:29:23 code coverage           : enabled
2020/01/09 09:29:23 comparison tracing      : enabled
2020/01/09 09:29:23 extra coverage          : enabled
2020/01/09 09:29:23 setuid sandbox          : enabled
2020/01/09 09:29:23 namespace sandbox       : enabled
2020/01/09 09:29:23 Android sandbox         : /sys/fs/selinux/policy
does not exist
2020/01/09 09:29:23 fault injection         : enabled
2020/01/09 09:29:23 leak checking           : CONFIG_DEBUG_KMEMLEAK is
not enabled
2020/01/09 09:29:23 net packet injection    : enabled
2020/01/09 09:29:23 net device setup        : enabled
2020/01/09 09:29:23 concurrency sanitizer   : /sys/kernel/debug/kcsan
does not exist
2020/01/09 09:29:23 devlink PCI setup       : PCI device 0000:00:10.0
is not available
2020/01/09 09:29:27 corpus                  : 50226 (0 deleted)
2020/01/09 09:29:27 VMs 20, executed 0, cover 0, crashes 0, repro 0
2020/01/09 09:29:37 VMs 20, executed 45, cover 0, crashes 0, repro 0
2020/01/09 09:29:47 VMs 20, executed 74, cover 0, crashes 0, repro 0
2020/01/09 09:29:57 VMs 20, executed 80, cover 0, crashes 0, repro 0
2020/01/09 09:30:07 VMs 20, executed 80, cover 0, crashes 0, repro 0
2020/01/09 09:30:17 VMs 20, executed 80, cover 0, crashes 0, repro 0
2020/01/09 09:30:27 VMs 20, executed 80, cover 0, crashes 0, repro 0
2020/01/09 09:30:37 VMs 20, executed 80, cover 0, crashes 0, repro 0
2020/01/09 09:30:47 VMs 20, executed 80, cover 0, crashes 0, repro 0
2020/01/09 09:30:57 VMs 20, executed 80, cover 0, crashes 0, repro 0
2020/01/09 09:31:07 VMs 20, executed 80, cover 0, crashes 0, repro 0
2020/01/09 09:31:17 VMs 20, executed 80, cover 0, crashes 0, repro 0
2020/01/09 09:31:26 vm-10: crash: INFO: rcu detected stall in do_idle
2020/01/09 09:31:27 VMs 13, executed 80, cover 0, crashes 0, repro 0
2020/01/09 09:31:28 vm-1: crash: INFO: rcu detected stall in sys_futex
2020/01/09 09:31:29 vm-4: crash: INFO: rcu detected stall in sys_futex
2020/01/09 09:31:31 vm-0: crash: INFO: rcu detected stall in sys_getsockopt
2020/01/09 09:31:33 vm-18: crash: INFO: rcu detected stall in sys_clone3
2020/01/09 09:31:35 vm-3: crash: INFO: rcu detected stall in sys_futex
2020/01/09 09:31:36 vm-8: crash: INFO: rcu detected stall in do_idle
2020/01/09 09:31:37 VMs 7, executed 80, cover 0, crashes 6, repro 0
2020/01/09 09:31:38 vm-19: crash: INFO: rcu detected stall in schedule_tail
2020/01/09 09:31:40 vm-6: crash: INFO: rcu detected stall in schedule_tail
2020/01/09 09:31:42 vm-2: crash: INFO: rcu detected stall in schedule_tail
2020/01/09 09:31:44 vm-12: crash: INFO: rcu detected stall in sys_futex
2020/01/09 09:31:46 vm-15: crash: INFO: rcu detected stall in sys_nanosleep
2020/01/09 09:31:47 VMs 1, executed 80, cover 0, crashes 11, repro 0
2020/01/09 09:31:48 vm-16: crash: INFO: rcu detected stall in sys_futex
2020/01/09 09:31:50 vm-9: crash: INFO: rcu detected stall in schedule
2020/01/09 09:31:52 vm-13: crash: INFO: rcu detected stall in schedule_tail
2020/01/09 09:31:54 vm-11: crash: INFO: rcu detected stall in schedule_tail
2020/01/09 09:31:56 vm-17: crash: INFO: rcu detected stall in sys_futex
2020/01/09 09:31:57 VMs 0, executed 80, cover 0, crashes 16, repro 0
2020/01/09 09:31:58 vm-7: crash: INFO: rcu detected stall in sys_futex
2020/01/09 09:32:00 vm-5: crash: INFO: rcu detected stall in dput
2020/01/09 09:32:02 vm-14: crash: INFO: rcu detected stall in sys_nanosleep


Then I switched LSM to selinux and I _still_ can reproduce this. So,
Casey, you may relax, this is not smack-specific :)

Then I disabled CONFIG_KASAN_VMALLOC and CONFIG_VMAP_STACK and it
started working normally.

So this is somehow related to both clang and KASAN/VMAP_STACK.

The clang I used is:
https://storage.googleapis.com/syzkaller/clang-kmsan-362913.tar.gz
(the one we use on syzbot).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BavizeUd%3DnY2w1B_LbEC1cP5prBfpnANYaxhgS_fcL6ag%40mail.gmail.com.
