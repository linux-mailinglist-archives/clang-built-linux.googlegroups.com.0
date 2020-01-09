Return-Path: <clang-built-linux+bncBDQ27FVWWUFRB3PM33YAKGQELEK2PKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F28A1363BF
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jan 2020 00:25:34 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id n6sf270206ile.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jan 2020 15:25:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578612333; cv=pass;
        d=google.com; s=arc-20160816;
        b=NafB6fTfC5Nj2PguIsKhgZxFob7GGZTtrbmdUpVHmVPq1+Sy0Be+guLtjXDG5LL776
         gI2AvZiW+pitnfAH1XTNbXwszYfhEpfltBYcbS2uZL4z/tzYKj1h/MXbkT3hDhr4IwEP
         SJkBq3lohCbySJXEl7DeqfcdQIicb1zV7ppXkQ9a0QPnjMMWEDcg9X4TGZ/hY0d60w8O
         N7ffdjp+KFhYWZauKnRcQSLllASU9UOBqFlJOPJFjc5gBQsBRwi1KPQhPuLT5D4gzEAH
         agPk/neZQIFLeAXCmmsNnZ4ic6Jc5QlyRChgW7hXzbEAxNXZP6Ynd6mS0XeLY9BFl4iY
         d7CQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=VckJqgDO4C1ZwY41bhP2Z53UsXNo6GrBqfD48ICT5JI=;
        b=X10hfbSF3d/G/mj1mUCDBm1+l32ULpvnz8AgIvhnIJ997t6wHjEtsO0TBwuPBQB9c4
         yhBPFs58+S8Qd95LqNm/iM/u5v3He2yXaJNX+ZWUb/W6UCFMrpnFGEIMD0Rvqocnkdjx
         +0UwCsrheXYZid92kc7LlM3CZkAqhQ1Cd/uxiYyOwewVM6WD95hSepAYIDOiLOU6MLEW
         ar67aaeGIjpwvrmjcXFObaoMXXpYIy1tLWH3gyLS6RckTJ2NDsEp9tOA7Mgjwcgu8Tfq
         AYS7+j9qMm8LK/2VG2qS75PLZAt1s2YlilfVgQwsnsMy3wyw6dXEG5ONlGPcykkcTWI8
         ul+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@axtens.net header.s=google header.b=hJEPs+ON;
       spf=pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=dja@axtens.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VckJqgDO4C1ZwY41bhP2Z53UsXNo6GrBqfD48ICT5JI=;
        b=pmV1AIsxog1UdgCZH+F4NxOzCG4GvCmQWZG5FzwNphSXIfrMT3nrEbhLgu0gBwqD2w
         +vhnApv6N9NBDleAernsloxbkcgAuh6hzGknRWShNwhrZS84NEkJknbjJSZss3TPGpeP
         BdwKXBwxWEcwwffWoK2lGybiNs0ILIorTqmupbwCqh02I/WZ+2JXFQi9OpN8s+ZPsjhD
         1dQpdS5Vqyya1SKyYsTKzRNDF8KQfz0h5sLYPKnrby5uBRhkMDCeaQECczcvp+4raPu2
         vtssm+IPlH7ErC8KS7pOxPWVdPWkRjSfH32Ab4fNwyulK7QGsCjhOaBNK8WzQB4HB/ZG
         Kcag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VckJqgDO4C1ZwY41bhP2Z53UsXNo6GrBqfD48ICT5JI=;
        b=kmJmFLnT8dNBleH3JbiUOj2dHXYk9lzPqWuwUTfgZrOqOwhpNa+ILXAoVK5vhRVF57
         NGfySL8sSijETu1kufB918qwfDQxdnsDHXgLOh/EUK/gYunl/D0e+tbBDkGVP5EXsHzh
         ZiYZzx1MXmQZwE7IECRYhVun79MsIiSswU29b9Xid7mo5skPv1tgB60OkXxEQGPNmNnD
         hDslbIpjkVHv220NoRNogLwvTTxcII8+ISBUEDIhejLqNCSmBd1NfU2DO3euo+YE2v61
         1thYw913BWiUcQ+P9KiNHyRWmYPOjsLBNoSe6q4qIO6QCXJRgQZwqP4khPODOC+/NmE+
         isSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUYF35Lw/U/rd6bFj0cdMiHfJwOo+NJf9Z4Y03yVhWLraAgQPW2
	ikw+cP1KA63in9EzZw/khzo=
X-Google-Smtp-Source: APXvYqwfh0UmV2+hEysiK4WF9GCa23Pf6ddHso4Yn4zzVkp300qNLD2IPkjmwHncyLW8AR1+TIXRwg==
X-Received: by 2002:a5e:de04:: with SMTP id e4mr8699iok.47.1578612333167;
        Thu, 09 Jan 2020 15:25:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d3c9:: with SMTP id c9ls594866ilh.1.gmail; Thu, 09 Jan
 2020 15:25:32 -0800 (PST)
X-Received: by 2002:a92:d18a:: with SMTP id z10mr127251ilz.48.1578612332766;
        Thu, 09 Jan 2020 15:25:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578612332; cv=none;
        d=google.com; s=arc-20160816;
        b=jPfEMmkPRd2rUJT1SQET//wMEKVzEU0RUj/kOOJYx9zTd7hWrkvvSLvIcxzuJxh/K6
         oZhyCpKD0nmZY75/ZkMGTrTcy8RD9tPo1LEfYiiFVOaT1qYYG5cCFeO0RRw7y+r4A8Gi
         q3yY4lG6hzzUuxciMzVuW36yFLGIhJHII7j5gH/RBtXE8sb68qc1BWYhI8Ya4lxugGih
         xgRyL8fZdubDXXCHip0DsD9UEKUq6mXpyM7vDCXWQRiB+29qlZI3ytV+StJGmOckgQX/
         9EsP+FqfEjtE+hSmyqM3GN0rBO6F1vG4oksgZhi9efyFLVm7LaGUiB6OYkrbrkSQLWsL
         B0eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=UzPtNbIFdT7VgcJL3S0ZhY3HIrUCX+/Gia26wjd0jI0=;
        b=QXGllEkHC4qURC5WBLS8+9Doq7qrhfY3fQXq7M8FO5rezIwN+8A01ulhVu0AtALQGn
         TeREw6B/yx+hiSnXDz3ytL+mvpjXtWlgCUv6SI9i5tShZocFuR1bxCBY5ECZHFUQoXTM
         XkbpT5LGWhXZilgSGTct6eY8Tf1XRzAc9eUZp2lrhbXJHXYP+MJdx7Af/ripxJRmLT/L
         wspa/J2+izqaL2ctNPr8HH4GJi0ncOH+Cx5eygSJeBq6CMQUIEktvNu2nKRy2vkyEO55
         258K9WDkNSlL+IC3+xgXocdYujaczC5DRJMCfSIKYjnM7fMUnjrUsaOYeCDe++4nH3cD
         Go/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@axtens.net header.s=google header.b=hJEPs+ON;
       spf=pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=dja@axtens.net
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id z20si4700ill.5.2020.01.09.15.25.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2020 15:25:32 -0800 (PST)
Received-SPF: pass (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id 4so151342pfz.9
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jan 2020 15:25:32 -0800 (PST)
X-Received: by 2002:a63:1a1f:: with SMTP id a31mr538473pga.21.1578612331836;
        Thu, 09 Jan 2020 15:25:31 -0800 (PST)
Received: from localhost (2001-44b8-1113-6700-5cb3-ebc3-7dc6-a17b.static.ipv6.internode.on.net. [2001:44b8:1113:6700:5cb3:ebc3:7dc6:a17b])
        by smtp.gmail.com with ESMTPSA id j125sm107356pfg.160.2020.01.09.15.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2020 15:25:30 -0800 (PST)
From: Daniel Axtens <dja@axtens.net>
To: Dmitry Vyukov <dvyukov@google.com>, Casey Schaufler <casey@schaufler-ca.com>, Alexander Potapenko <glider@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, syzbot <syzbot+de8d933e7d153aa0c1bb@syzkaller.appspotmail.com>, kasan-dev <kasan-dev@googlegroups.com>, Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>
Subject: Re: INFO: rcu detected stall in sys_kill
In-Reply-To: <CACT4Y+axj5M4p=mZkFb1MyBw0MK1c6nWb-fKQcYSnYB8n1Cb8Q@mail.gmail.com>
References: <00000000000036decf0598c8762e@google.com> <CACT4Y+YVMUxeLcFMray9n0+cXbVibj5X347LZr8YgvjN5nC8pw@mail.gmail.com> <CACT4Y+asdED7tYv462Ui2OhQVKXVUnC+=fumXR3qM1A4d6AvOQ@mail.gmail.com> <f7758e0a-a157-56a2-287e-3d4452d72e00@schaufler-ca.com> <87a787ekd0.fsf@dja-thinkpad.axtens.net> <87h81zax74.fsf@dja-thinkpad.axtens.net> <CACT4Y+b+Vx1FeCmhMAYq-g3ObHdMPOsWxouyXXUr7S5OjNiVGQ@mail.gmail.com> <0b60c93e-a967-ecac-07e7-67aea1a0208e@I-love.SAKURA.ne.jp> <6d009462-74d9-96e9-ab3f-396842a58011@schaufler-ca.com> <CACT4Y+bURugCpLm5TG37-7voFEeEoXo_Gb=3sy75_RELZotXHw@mail.gmail.com> <CACT4Y+avizeUd=nY2w1B_LbEC1cP5prBfpnANYaxhgS_fcL6ag@mail.gmail.com> <CACT4Y+Z3GCncV3G1=36NmDRX_XOZsdoRJ3UshZoornbSRSN28w@mail.gmail.com> <CACT4Y+ZyVi=ow+VXA9PaWEVE8qKj8_AKzeFsNdsmiSR9iL3FOw@mail.gmail.com> <CACT4Y+axj5M4p=mZkFb1MyBw0MK1c6nWb-fKQcYSnYB8n1Cb8Q@mail.gmail.com>
Date: Fri, 10 Jan 2020 10:25:27 +1100
Message-ID: <87a76wnrfc.fsf@dja-thinkpad.axtens.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dja@axtens.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@axtens.net header.s=google header.b=hJEPs+ON;       spf=pass
 (google.com: domain of dja@axtens.net designates 2607:f8b0:4864:20::441 as
 permitted sender) smtp.mailfrom=dja@axtens.net
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

Dmitry Vyukov <dvyukov@google.com> writes:

> On Thu, Jan 9, 2020 at 11:05 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>> > > > > On 1/8/2020 2:25 AM, Tetsuo Handa wrote:
>> > > > > > On 2020/01/08 15:20, Dmitry Vyukov wrote:
>> > > > > >> I temporarily re-enabled smack instance and it produced another 50
>> > > > > >> stalls all over the kernel, and now keeps spewing a dozen every hour.
>> > > > >
>> > > > > Do I have to be using clang to test this? I'm setting up to work on this,
>> > > > > and don't want to waste time using my current tool chain if the problem
>> > > > > is clang specific.
>> > > >
>> > > > Humm, interesting. Initially I was going to say that most likely it's
>> > > > not clang-related. Bug smack instance is actually the only one that
>> > > > uses clang as well (except for KMSAN of course). So maybe it's indeed
>> > > > clang-related rather than smack-related. Let me try to build a kernel
>> > > > with clang.
>> > >
>> > > +clang-built-linux, glider
>> > >
>> > > [clang-built linux is severe broken since early Dec]
>> > >
>> > > Building kernel with clang I can immediately reproduce this locally:
>> > >
>> > > $ syz-manager
>> > > 2020/01/09 09:27:15 loading corpus...
>> > > 2020/01/09 09:27:17 serving http on http://0.0.0.0:50001
>> > > 2020/01/09 09:27:17 serving rpc on tcp://[::]:45851
>> > > 2020/01/09 09:27:17 booting test machines...
>> > > 2020/01/09 09:27:17 wait for the connection from test machine...
>> > > 2020/01/09 09:29:23 machine check:
>> > > 2020/01/09 09:29:23 syscalls                : 2961/3195
>> > > 2020/01/09 09:29:23 code coverage           : enabled
>> > > 2020/01/09 09:29:23 comparison tracing      : enabled
>> > > 2020/01/09 09:29:23 extra coverage          : enabled
>> > > 2020/01/09 09:29:23 setuid sandbox          : enabled
>> > > 2020/01/09 09:29:23 namespace sandbox       : enabled
>> > > 2020/01/09 09:29:23 Android sandbox         : /sys/fs/selinux/policy
>> > > does not exist
>> > > 2020/01/09 09:29:23 fault injection         : enabled
>> > > 2020/01/09 09:29:23 leak checking           : CONFIG_DEBUG_KMEMLEAK is
>> > > not enabled
>> > > 2020/01/09 09:29:23 net packet injection    : enabled
>> > > 2020/01/09 09:29:23 net device setup        : enabled
>> > > 2020/01/09 09:29:23 concurrency sanitizer   : /sys/kernel/debug/kcsan
>> > > does not exist
>> > > 2020/01/09 09:29:23 devlink PCI setup       : PCI device 0000:00:10.0
>> > > is not available
>> > > 2020/01/09 09:29:27 corpus                  : 50226 (0 deleted)
>> > > 2020/01/09 09:29:27 VMs 20, executed 0, cover 0, crashes 0, repro 0
>> > > 2020/01/09 09:29:37 VMs 20, executed 45, cover 0, crashes 0, repro 0
>> > > 2020/01/09 09:29:47 VMs 20, executed 74, cover 0, crashes 0, repro 0
>> > > 2020/01/09 09:29:57 VMs 20, executed 80, cover 0, crashes 0, repro 0
>> > > 2020/01/09 09:30:07 VMs 20, executed 80, cover 0, crashes 0, repro 0
>> > > 2020/01/09 09:30:17 VMs 20, executed 80, cover 0, crashes 0, repro 0
>> > > 2020/01/09 09:30:27 VMs 20, executed 80, cover 0, crashes 0, repro 0
>> > > 2020/01/09 09:30:37 VMs 20, executed 80, cover 0, crashes 0, repro 0
>> > > 2020/01/09 09:30:47 VMs 20, executed 80, cover 0, crashes 0, repro 0
>> > > 2020/01/09 09:30:57 VMs 20, executed 80, cover 0, crashes 0, repro 0
>> > > 2020/01/09 09:31:07 VMs 20, executed 80, cover 0, crashes 0, repro 0
>> > > 2020/01/09 09:31:17 VMs 20, executed 80, cover 0, crashes 0, repro 0
>> > > 2020/01/09 09:31:26 vm-10: crash: INFO: rcu detected stall in do_idle
>> > > 2020/01/09 09:31:27 VMs 13, executed 80, cover 0, crashes 0, repro 0
>> > > 2020/01/09 09:31:28 vm-1: crash: INFO: rcu detected stall in sys_futex
>> > > 2020/01/09 09:31:29 vm-4: crash: INFO: rcu detected stall in sys_futex
>> > > 2020/01/09 09:31:31 vm-0: crash: INFO: rcu detected stall in sys_getsockopt
>> > > 2020/01/09 09:31:33 vm-18: crash: INFO: rcu detected stall in sys_clone3
>> > > 2020/01/09 09:31:35 vm-3: crash: INFO: rcu detected stall in sys_futex
>> > > 2020/01/09 09:31:36 vm-8: crash: INFO: rcu detected stall in do_idle
>> > > 2020/01/09 09:31:37 VMs 7, executed 80, cover 0, crashes 6, repro 0
>> > > 2020/01/09 09:31:38 vm-19: crash: INFO: rcu detected stall in schedule_tail
>> > > 2020/01/09 09:31:40 vm-6: crash: INFO: rcu detected stall in schedule_tail
>> > > 2020/01/09 09:31:42 vm-2: crash: INFO: rcu detected stall in schedule_tail
>> > > 2020/01/09 09:31:44 vm-12: crash: INFO: rcu detected stall in sys_futex
>> > > 2020/01/09 09:31:46 vm-15: crash: INFO: rcu detected stall in sys_nanosleep
>> > > 2020/01/09 09:31:47 VMs 1, executed 80, cover 0, crashes 11, repro 0
>> > > 2020/01/09 09:31:48 vm-16: crash: INFO: rcu detected stall in sys_futex
>> > > 2020/01/09 09:31:50 vm-9: crash: INFO: rcu detected stall in schedule
>> > > 2020/01/09 09:31:52 vm-13: crash: INFO: rcu detected stall in schedule_tail
>> > > 2020/01/09 09:31:54 vm-11: crash: INFO: rcu detected stall in schedule_tail
>> > > 2020/01/09 09:31:56 vm-17: crash: INFO: rcu detected stall in sys_futex
>> > > 2020/01/09 09:31:57 VMs 0, executed 80, cover 0, crashes 16, repro 0
>> > > 2020/01/09 09:31:58 vm-7: crash: INFO: rcu detected stall in sys_futex
>> > > 2020/01/09 09:32:00 vm-5: crash: INFO: rcu detected stall in dput
>> > > 2020/01/09 09:32:02 vm-14: crash: INFO: rcu detected stall in sys_nanosleep
>> > >
>> > >
>> > > Then I switched LSM to selinux and I _still_ can reproduce this. So,
>> > > Casey, you may relax, this is not smack-specific :)
>> > >
>> > > Then I disabled CONFIG_KASAN_VMALLOC and CONFIG_VMAP_STACK and it
>> > > started working normally.
>> > >
>> > > So this is somehow related to both clang and KASAN/VMAP_STACK.
>> > >
>> > > The clang I used is:
>> > > https://storage.googleapis.com/syzkaller/clang-kmsan-362913.tar.gz
>> > > (the one we use on syzbot).
>> >
>> >
>> > Clustering hangs, they all happen within very limited section of the code:
>> >
>> >       1  free_thread_stack+0x124/0x590 kernel/fork.c:284
>> >       5  free_thread_stack+0x12e/0x590 kernel/fork.c:280
>> >      39  free_thread_stack+0x12e/0x590 kernel/fork.c:284
>> >       6  free_thread_stack+0x133/0x590 kernel/fork.c:280
>> >       5  free_thread_stack+0x13d/0x590 kernel/fork.c:280
>> >       2  free_thread_stack+0x141/0x590 kernel/fork.c:280
>> >       6  free_thread_stack+0x14c/0x590 kernel/fork.c:280
>> >       9  free_thread_stack+0x151/0x590 kernel/fork.c:280
>> >       3  free_thread_stack+0x15b/0x590 kernel/fork.c:280
>> >      67  free_thread_stack+0x168/0x590 kernel/fork.c:280
>> >       6  free_thread_stack+0x16d/0x590 kernel/fork.c:284
>> >       2  free_thread_stack+0x177/0x590 kernel/fork.c:284
>> >       1  free_thread_stack+0x182/0x590 kernel/fork.c:284
>> >       1  free_thread_stack+0x186/0x590 kernel/fork.c:284
>> >      16  free_thread_stack+0x18b/0x590 kernel/fork.c:284
>> >       4  free_thread_stack+0x195/0x590 kernel/fork.c:284
>> >
>> > Here is disass of the function:
>> > https://gist.githubusercontent.com/dvyukov/a283d1aaf2ef7874001d56525279ccbd/raw/ac2478bff6472bc473f57f91a75f827cd72bb6bf/gistfile1.txt
>> >
>> > But if I am not mistaken, the function only ever jumps down. So how
>> > can it loop?...
>>
>>
>> This is a miscompilation related to static branches.
>>
>> objdump shows:
>>
>> ffffffff814878f8: 0f 1f 44 00 00        nopl   0x0(%rax,%rax,1)
>>  ./arch/x86/include/asm/jump_label.h:25
>> asm_volatile_goto("1:"
>>
>> However, the actual instruction in memory at the time is:
>>
>>    0xffffffff814878f8 <+408>: jmpq   0xffffffff8148787f <free_thread_stack+287>
>>
>> Which jumps to a wrong location in free_thread_stack and makes it loop.
>>
>> The static branch is this:
>>
>> static inline bool memcg_kmem_enabled(void)
>> {
>>   return static_branch_unlikely(&memcg_kmem_enabled_key);
>> }
>>
>> static inline void memcg_kmem_uncharge(struct page *page, int order)
>> {
>>   if (memcg_kmem_enabled())
>>     __memcg_kmem_uncharge(page, order);
>> }
>>
>> I suspect it may have something to do with loop unrolling. It may jump
>> to the right location, but in the wrong unrolled iteration.
>
>
> Kernel built with clang version 10.0.0
> (https://github.com/llvm/llvm-project.git
> c2443155a0fb245c8f17f2c1c72b6ea391e86e81) works fine.
>
> Alex, please update clang on syzbot machines.

Wow, what a bug. Very happy to be off the hook for causing it, and
feeling a lot better about my inability to reproduce it with a GCC-built
kernel!

Regards,
Daniel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87a76wnrfc.fsf%40dja-thinkpad.axtens.net.
