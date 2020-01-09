Return-Path: <clang-built-linux+bncBCMIZB7QWENRBAHF3PYAKGQEPQE5ACY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id CD94C1355CB
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jan 2020 10:29:37 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id w4sf4332576ywa.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jan 2020 01:29:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578562176; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z4wwxoP1ZJFjxosTTWX75W0CZ2zf2unRhqXbmQlfO0hmkl2FVPd3Nk6zFxZI29IrD4
         L2RmX0ctpE25NHayooVuW4EbcTVbnw5SM7PLi9dQiWh34ix83jDvYFNBq7W/BYiG12em
         ssvsCum1ivXbWSIOYeFrTXmygzLQicd1bTeN9QoOqrqoFY5jgSjFzUeEBsIduX9nvY7u
         p8og9c44aXqob6ntlw+K84OuRnvrzKKYWD0am5EBD1ksTOJnSoUUxoMUEzNYg3tPKn/T
         3SNkR1rRk035OZDf41J3GBFOZZkN+Vtaqw0IRy5LEklbeUIQUDL0+Shc4MTDeatBSL9F
         V59A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uUWcl81pfe02w7dsA3b216VCIrc4ynjmTnEheAKS6oU=;
        b=vVuXB28Y1ZWx7uOoi12JJFLi/MROm5b0veAcT6XGMfOsKasxdfLAscYeZcaciS+uD1
         J4PRt6DvBuw8si0zTR3A2H5etwtHwlXZUABvD4L3vabaZ0tV8+oCAJKw5KQL9lYc6nqx
         LIUPM6nCJkSKW4ROZlI3BXv/hq8CXrMMcZ/D05ZFBC7asm5CRJennaBruVlpcQYJvpA7
         9sXP6ymFNyKLOLtEE/X44Am99U0a/I7OSvMNELs3NT5Kl75zcIMDc+lNxCKhHsq6I8WD
         hnZy25f2ZyXbUBXY7cCiZHFM4cZRuKKH8sqYvKTvrKCwLV/WcWY8RoFPnbjJHGtvzfki
         kadA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CF29A5OZ;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uUWcl81pfe02w7dsA3b216VCIrc4ynjmTnEheAKS6oU=;
        b=jZ8js/CBWZ2435Lwmo8FEHpukFwZLhO9MxboisMQ1PIi+j7566o6vcWi0m1eRvlXDK
         OYSV+zpxQRA6M/GLLKFGhBjFY3DS7RhoEaRs2rk3F6mDdFhTdZj9iIxtKxUhHd04Q0wq
         PVcpyoj4G4wBVpBViKXCJjC2LRZ342Wp5QLhvqa41cOi2xTXoz43JJv9RWkUcG/AUEbJ
         YmMItMyLVlaA2zlTJ41G668nm57EHmLJIijpn0ddui6dFX8gByDPqvRQF7Js0K5ykv4R
         9xrFHEVGdgoc1qkBAoirS564jmQeM2RWJGSi4dymem9n4YaunrVbb4V6QeXVRgjTrN3S
         hOHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uUWcl81pfe02w7dsA3b216VCIrc4ynjmTnEheAKS6oU=;
        b=UlK+Sj/hVjj3/+sdUvw5980LYZEHr952NGdKSgDJ7eE0o17qHGwW3oDd2/C6EfLKuZ
         BfQWiQAGAnNBMaCt4m2oJFThBqvmmC1hGeqTcQaSDrwWKxII11kXDD++AM3g78VUS5LW
         yeUKGgnsHT64shYynwyXYmHlz5FgTJ04yuWbZmw58rYWZVRfmC5HEXfiszSp7kzvL3oE
         V2CkWvAGcEJxTQmF+gxf1oUmiz8+BziiUlWqEJd+3b/8B6Wf9lAAQcMAhRyWHnLMepdn
         A2/9H9eMa9ygVUleDnzPSDuyAyj58sQ6Gij4w33JT9eRD3yrcQeQlnDRDtez2v8rtgso
         pSrA==
X-Gm-Message-State: APjAAAU33U+9C/x/oVYbpo7UzoF5c5icvG+m5PmU+vg2Wvi8cpvzCAYL
	lautXIU1xQFGeKyxMdr3aDk=
X-Google-Smtp-Source: APXvYqwUMyEEFsP1PcLXhInK+0N4a/JjDW+7cdi7EAx3KdB6sifnDimPlikRRUy+5YTqOW74TkQO0g==
X-Received: by 2002:a81:5b45:: with SMTP id p66mr5489062ywb.184.1578562176377;
        Thu, 09 Jan 2020 01:29:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cacb:: with SMTP id a194ls189599ybg.13.gmail; Thu, 09
 Jan 2020 01:29:36 -0800 (PST)
X-Received: by 2002:a25:3041:: with SMTP id w62mr7451777ybw.320.1578562175984;
        Thu, 09 Jan 2020 01:29:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578562175; cv=none;
        d=google.com; s=arc-20160816;
        b=XLjsY+XhyZWGBzaAnqO7kNc2upaObGnchcCwZtGox1+1VJNmqSnWccxr+LMdtJVjAd
         rykDb4lXAE7Wdq1qqZFdrowqPd3ID8H5ZV5bHN6/FUWDvTZ3iPE9LBwCmv55hKZcx6Aq
         NKqC/L1n/8+Gic+xzBo1iCvazxpvq1jN19QS98lRvnCUicBmq3uCWBYmj/iSb1BVH2xP
         +1+poH0GpEurO94LIXOzQorng64q/TeDUFPFbVx41wTdhqBTictA6nCQQnAfb3/fgqs6
         mqaUT2YD9rMkUZxfA5qNVMKmrA35YwNw78IqlKCAx5aHSKcYact3ROkhHAU4f+5Sx3ql
         n76Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=htGEPzh2cvAg6/SqoSQkw2b0L7SR3bZlTMACQb3VVDc=;
        b=HoC1sABVgAfbEZWjTxKYWn2HHttPwDVpJrLnbXDXBLyY6JEKbA2Eknog84w9dAHzaq
         8qjmjwGE8uj7/VChLNxFpZLCy1gN8SdthvQuJDcVHs9wWVsdMZwFUbgEd/zkCLv8Y6HR
         iG7YEdtxfD9imNGTldeSnb45y/inLxOxNd9VvI1uUeeYW/KTQq7i9szyeTP459FtusQG
         C49IELLZWgfWtKQ+bFCV6BFsoJM5H2QZEZ6FXfkXmNc+8EBhZqduypg9X08RTuHoUYKr
         aJnTYhivpD6ZpLWIhtuy8byhHZz+Xi8RHY4e+LIRMDQJPVL3+NRLPA1F8hPuu3Q+BUHc
         C5OA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CF29A5OZ;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com. [2607:f8b0:4864:20::f41])
        by gmr-mx.google.com with ESMTPS id f8si310487ybg.2.2020.01.09.01.29.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2020 01:29:35 -0800 (PST)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f41 as permitted sender) client-ip=2607:f8b0:4864:20::f41;
Received: by mail-qv1-xf41.google.com with SMTP id y8so2670196qvk.6
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jan 2020 01:29:35 -0800 (PST)
X-Received: by 2002:ad4:5a53:: with SMTP id ej19mr8036254qvb.34.1578562175261;
 Thu, 09 Jan 2020 01:29:35 -0800 (PST)
MIME-Version: 1.0
References: <00000000000036decf0598c8762e@google.com> <CACT4Y+YVMUxeLcFMray9n0+cXbVibj5X347LZr8YgvjN5nC8pw@mail.gmail.com>
 <CACT4Y+asdED7tYv462Ui2OhQVKXVUnC+=fumXR3qM1A4d6AvOQ@mail.gmail.com>
 <f7758e0a-a157-56a2-287e-3d4452d72e00@schaufler-ca.com> <87a787ekd0.fsf@dja-thinkpad.axtens.net>
 <87h81zax74.fsf@dja-thinkpad.axtens.net> <CACT4Y+b+Vx1FeCmhMAYq-g3ObHdMPOsWxouyXXUr7S5OjNiVGQ@mail.gmail.com>
 <0b60c93e-a967-ecac-07e7-67aea1a0208e@I-love.SAKURA.ne.jp>
 <6d009462-74d9-96e9-ab3f-396842a58011@schaufler-ca.com> <CACT4Y+bURugCpLm5TG37-7voFEeEoXo_Gb=3sy75_RELZotXHw@mail.gmail.com>
 <CACT4Y+avizeUd=nY2w1B_LbEC1cP5prBfpnANYaxhgS_fcL6ag@mail.gmail.com>
In-Reply-To: <CACT4Y+avizeUd=nY2w1B_LbEC1cP5prBfpnANYaxhgS_fcL6ag@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 9 Jan 2020 10:29:23 +0100
Message-ID: <CACT4Y+Z3GCncV3G1=36NmDRX_XOZsdoRJ3UshZoornbSRSN28w@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=CF29A5OZ;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::f41
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

On Thu, Jan 9, 2020 at 9:50 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Thu, Jan 9, 2020 at 9:19 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > On Wed, Jan 8, 2020 at 6:19 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
> > >
> > > On 1/8/2020 2:25 AM, Tetsuo Handa wrote:
> > > > On 2020/01/08 15:20, Dmitry Vyukov wrote:
> > > >> I temporarily re-enabled smack instance and it produced another 50
> > > >> stalls all over the kernel, and now keeps spewing a dozen every hour.
> > >
> > > Do I have to be using clang to test this? I'm setting up to work on this,
> > > and don't want to waste time using my current tool chain if the problem
> > > is clang specific.
> >
> > Humm, interesting. Initially I was going to say that most likely it's
> > not clang-related. Bug smack instance is actually the only one that
> > uses clang as well (except for KMSAN of course). So maybe it's indeed
> > clang-related rather than smack-related. Let me try to build a kernel
> > with clang.
>
> +clang-built-linux, glider
>
> [clang-built linux is severe broken since early Dec]
>
> Building kernel with clang I can immediately reproduce this locally:
>
> $ syz-manager
> 2020/01/09 09:27:15 loading corpus...
> 2020/01/09 09:27:17 serving http on http://0.0.0.0:50001
> 2020/01/09 09:27:17 serving rpc on tcp://[::]:45851
> 2020/01/09 09:27:17 booting test machines...
> 2020/01/09 09:27:17 wait for the connection from test machine...
> 2020/01/09 09:29:23 machine check:
> 2020/01/09 09:29:23 syscalls                : 2961/3195
> 2020/01/09 09:29:23 code coverage           : enabled
> 2020/01/09 09:29:23 comparison tracing      : enabled
> 2020/01/09 09:29:23 extra coverage          : enabled
> 2020/01/09 09:29:23 setuid sandbox          : enabled
> 2020/01/09 09:29:23 namespace sandbox       : enabled
> 2020/01/09 09:29:23 Android sandbox         : /sys/fs/selinux/policy
> does not exist
> 2020/01/09 09:29:23 fault injection         : enabled
> 2020/01/09 09:29:23 leak checking           : CONFIG_DEBUG_KMEMLEAK is
> not enabled
> 2020/01/09 09:29:23 net packet injection    : enabled
> 2020/01/09 09:29:23 net device setup        : enabled
> 2020/01/09 09:29:23 concurrency sanitizer   : /sys/kernel/debug/kcsan
> does not exist
> 2020/01/09 09:29:23 devlink PCI setup       : PCI device 0000:00:10.0
> is not available
> 2020/01/09 09:29:27 corpus                  : 50226 (0 deleted)
> 2020/01/09 09:29:27 VMs 20, executed 0, cover 0, crashes 0, repro 0
> 2020/01/09 09:29:37 VMs 20, executed 45, cover 0, crashes 0, repro 0
> 2020/01/09 09:29:47 VMs 20, executed 74, cover 0, crashes 0, repro 0
> 2020/01/09 09:29:57 VMs 20, executed 80, cover 0, crashes 0, repro 0
> 2020/01/09 09:30:07 VMs 20, executed 80, cover 0, crashes 0, repro 0
> 2020/01/09 09:30:17 VMs 20, executed 80, cover 0, crashes 0, repro 0
> 2020/01/09 09:30:27 VMs 20, executed 80, cover 0, crashes 0, repro 0
> 2020/01/09 09:30:37 VMs 20, executed 80, cover 0, crashes 0, repro 0
> 2020/01/09 09:30:47 VMs 20, executed 80, cover 0, crashes 0, repro 0
> 2020/01/09 09:30:57 VMs 20, executed 80, cover 0, crashes 0, repro 0
> 2020/01/09 09:31:07 VMs 20, executed 80, cover 0, crashes 0, repro 0
> 2020/01/09 09:31:17 VMs 20, executed 80, cover 0, crashes 0, repro 0
> 2020/01/09 09:31:26 vm-10: crash: INFO: rcu detected stall in do_idle
> 2020/01/09 09:31:27 VMs 13, executed 80, cover 0, crashes 0, repro 0
> 2020/01/09 09:31:28 vm-1: crash: INFO: rcu detected stall in sys_futex
> 2020/01/09 09:31:29 vm-4: crash: INFO: rcu detected stall in sys_futex
> 2020/01/09 09:31:31 vm-0: crash: INFO: rcu detected stall in sys_getsockopt
> 2020/01/09 09:31:33 vm-18: crash: INFO: rcu detected stall in sys_clone3
> 2020/01/09 09:31:35 vm-3: crash: INFO: rcu detected stall in sys_futex
> 2020/01/09 09:31:36 vm-8: crash: INFO: rcu detected stall in do_idle
> 2020/01/09 09:31:37 VMs 7, executed 80, cover 0, crashes 6, repro 0
> 2020/01/09 09:31:38 vm-19: crash: INFO: rcu detected stall in schedule_tail
> 2020/01/09 09:31:40 vm-6: crash: INFO: rcu detected stall in schedule_tail
> 2020/01/09 09:31:42 vm-2: crash: INFO: rcu detected stall in schedule_tail
> 2020/01/09 09:31:44 vm-12: crash: INFO: rcu detected stall in sys_futex
> 2020/01/09 09:31:46 vm-15: crash: INFO: rcu detected stall in sys_nanosleep
> 2020/01/09 09:31:47 VMs 1, executed 80, cover 0, crashes 11, repro 0
> 2020/01/09 09:31:48 vm-16: crash: INFO: rcu detected stall in sys_futex
> 2020/01/09 09:31:50 vm-9: crash: INFO: rcu detected stall in schedule
> 2020/01/09 09:31:52 vm-13: crash: INFO: rcu detected stall in schedule_tail
> 2020/01/09 09:31:54 vm-11: crash: INFO: rcu detected stall in schedule_tail
> 2020/01/09 09:31:56 vm-17: crash: INFO: rcu detected stall in sys_futex
> 2020/01/09 09:31:57 VMs 0, executed 80, cover 0, crashes 16, repro 0
> 2020/01/09 09:31:58 vm-7: crash: INFO: rcu detected stall in sys_futex
> 2020/01/09 09:32:00 vm-5: crash: INFO: rcu detected stall in dput
> 2020/01/09 09:32:02 vm-14: crash: INFO: rcu detected stall in sys_nanosleep
>
>
> Then I switched LSM to selinux and I _still_ can reproduce this. So,
> Casey, you may relax, this is not smack-specific :)
>
> Then I disabled CONFIG_KASAN_VMALLOC and CONFIG_VMAP_STACK and it
> started working normally.
>
> So this is somehow related to both clang and KASAN/VMAP_STACK.
>
> The clang I used is:
> https://storage.googleapis.com/syzkaller/clang-kmsan-362913.tar.gz
> (the one we use on syzbot).


Clustering hangs, they all happen within very limited section of the code:

      1  free_thread_stack+0x124/0x590 kernel/fork.c:284
      5  free_thread_stack+0x12e/0x590 kernel/fork.c:280
     39  free_thread_stack+0x12e/0x590 kernel/fork.c:284
      6  free_thread_stack+0x133/0x590 kernel/fork.c:280
      5  free_thread_stack+0x13d/0x590 kernel/fork.c:280
      2  free_thread_stack+0x141/0x590 kernel/fork.c:280
      6  free_thread_stack+0x14c/0x590 kernel/fork.c:280
      9  free_thread_stack+0x151/0x590 kernel/fork.c:280
      3  free_thread_stack+0x15b/0x590 kernel/fork.c:280
     67  free_thread_stack+0x168/0x590 kernel/fork.c:280
      6  free_thread_stack+0x16d/0x590 kernel/fork.c:284
      2  free_thread_stack+0x177/0x590 kernel/fork.c:284
      1  free_thread_stack+0x182/0x590 kernel/fork.c:284
      1  free_thread_stack+0x186/0x590 kernel/fork.c:284
     16  free_thread_stack+0x18b/0x590 kernel/fork.c:284
      4  free_thread_stack+0x195/0x590 kernel/fork.c:284

Here is disass of the function:
https://gist.githubusercontent.com/dvyukov/a283d1aaf2ef7874001d56525279ccbd/raw/ac2478bff6472bc473f57f91a75f827cd72bb6bf/gistfile1.txt

But if I am not mistaken, the function only ever jumps down. So how
can it loop?...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BZ3GCncV3G1%3D36NmDRX_XOZsdoRJ3UshZoornbSRSN28w%40mail.gmail.com.
