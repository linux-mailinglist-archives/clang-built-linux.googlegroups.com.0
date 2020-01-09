Return-Path: <clang-built-linux+bncBCMIZB7QWENRBV4F3TYAKGQERHOWLDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F45913572D
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jan 2020 11:39:21 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id o12sf3255334pll.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jan 2020 02:39:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578566359; cv=pass;
        d=google.com; s=arc-20160816;
        b=u8lYUMp+9rFdHL2dlltzvkcKGpZES6SKzNuT3FB8JaTL9RS+0h6GfFaIUQR4F4Ox8H
         MPnEezBByhurgjCv3jeHJpmBAQF+Rk2sCF8l0yWEbBh+NGI+9A3GY3LVLWlg8w2Ryw7b
         kLofd+j3Drmo6vF9hova/3lrVhYWZ8/dG87Yw86PNYemZkS2Pnj/LdWoymN/iv6CR3RA
         jALZpreR/gGDHAniOsLSnkMePjsqxUzIaax4OcKofKIofnKeZA2GcGcNHhBcXk6NQf8f
         e5r8mWdwTbxGXJ9tkZNGHru/ovuoxzZImJAEDGo5eMtyVwFRafqEnJuigelmPmJ+EALa
         uhZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Kn5qT9bszTE64NK+19F2nQFOS13EHAlrjfNPPUqwlVI=;
        b=fp34raNd+9GHRgjOtpJLmXknEnBZzAiIQ0ELQOVGeIJtX/ghreDeVduKaIuqFTRFLW
         5y20+5nsTXxEIBr4X5V5McjBoHzRIkeUF/swMH7kZ7CKDBdybIx7KSdunPPliUkr897C
         mxI+wJ3F/Xe7rV69y3xowJe2G4aCeYP22//lg4SBma5k1Epx4tv3RTI0HOSlx6VfPpkp
         0Z0uD9OSi8QP59XyBInXsZ06zi8BCnlwcJjj2jeAxXbFRiDZMj60bhMjClwNT0WF966r
         4sp/jnAj2kr8TTfez1zY8JKJUHLpe+JwOuDzq7T7s4nhrqqqC80QVNJJasT8k/QpKtmh
         U6dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q1QWcwrC;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kn5qT9bszTE64NK+19F2nQFOS13EHAlrjfNPPUqwlVI=;
        b=OahQd+3TfixicCsYm/A8BsD0AWJGvf7Z588NghOz3YGp3nFeYWEfssOUpqEHLBlGcT
         tUmkpf0GgOGI+EoNdzo3X9VIvVc6Ym/gWnmCioIUYMUM404NO+mEou2LbKRJmXPHBhBX
         jVKla9etjwWddENsdpjj4B0vD7JmZQB5nVWya6i3wbRHIA6LjMNRtTCubmvITFfnbpP7
         WpP9N9/Pqg7K0BWQAT9FFLPeoeVbmn4d755/eYe2wkL+Y19AFglT2Y47BFKEXG1aQzTg
         SrSnRmBrVaL6JjMDxRgdv3vEtJeSzvbzhFiwsCBgw2KEpXu87NnRI1stV0FZSAd1kdMG
         Q5fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kn5qT9bszTE64NK+19F2nQFOS13EHAlrjfNPPUqwlVI=;
        b=kBlxVrSs3eO47qhXgZMDrUB1RJMBHTw/to4HTG4CqzhbijvXDZ2jR2dgbWPBMjJkVK
         oApU0hWG/GnDerkNEWCd2md1Ole/nOv9rebLR1dI8b03B3MwmSdoujWECIdeju5SdsL3
         iTa3qHtshnf3HiHlt6Y29B4t8w/JaoHjivC/bMItiaYYgtMAPJbuexhwkwHgIhK5oAg+
         CZ2KqrbQG4BbR62Nhv2P1UXLHXLU+aBzhe0u/6TmQIwz4q/9epTodcX7HEC9FPPmDMF+
         upYyzRgCOibD4zNtppkxs3qhg7TTVNP4ZZbpC70KxLWtMgbrNM9ZdAAxlp9XGv4NItrm
         G1CA==
X-Gm-Message-State: APjAAAXEHl4htkf3MUJFPG+C7hAcAu7vFqpezjIjh3y7Gtgddg7mojzz
	vnSJ4bwhPloNeTt2RpnqQG8=
X-Google-Smtp-Source: APXvYqyArhIOxBf4MwU4UVZT3kFeaEsY86N183q4LfUpCK6Ozj19uLPqq2Pm6E+DVtYRz6jbRJZN2A==
X-Received: by 2002:aa7:94b0:: with SMTP id a16mr10436317pfl.35.1578566359700;
        Thu, 09 Jan 2020 02:39:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7d49:: with SMTP id m9ls441478pgn.3.gmail; Thu, 09 Jan
 2020 02:39:19 -0800 (PST)
X-Received: by 2002:a62:7c58:: with SMTP id x85mr10518011pfc.76.1578566359209;
        Thu, 09 Jan 2020 02:39:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578566359; cv=none;
        d=google.com; s=arc-20160816;
        b=CZJrY4OcozWFQreuqXYtkL8W6iadWO3wQvFgITwm5yyL5W3xH8A9wHwCItWWZ4+Yuf
         YsGv9ZffUwxD/ABcijEzn+bkvHi+2QiSwH/7TzZt3zGltMnfh1sd5NF5WD/iCdHz380j
         aI8gkj3RcwAn/yVJ3bg6dXxurMDyivRL5Vw99Ux8dz3AUwyGIXaIW1gNuFmmsQAf/ahc
         ceceo2uxi+c04T16XU/XwU5dLKYNgO9UjhDn3WaPqLCNCPa75Q0b4B1svAswsn8UxMV+
         9QF4qZYA5jic3QMexs/OOszEfVv8JfVZeTOj95u9Stj9IGvwVFsJaHCUsZrkBOgckOKa
         j/ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9xn1JyxwI+0XYf3lA9v7eIZLbewUvsaljCIr7fZGL9k=;
        b=wp3bbD55t1WMQYfP/VCLpalbNrsshEyGVwZYx4IdiIvRtnNDrIz0tXh+hF/0cPE0xn
         62L4RjyAV+VvdPruFJythP7eBtoS9FHT9txpf2PNk02I+XCtqpp3L3bEEv/Yi6dSUqIb
         IPaZEG/4ZIEUmcJumvCxlUOhaNg+jveC/Tn6OqqiJDtpmRclAk6VuJWsrwAhjzVUJUHr
         m86hIHZeKnaeE0xzAtj5j3TC7N2NI986ZMj7WExl2nWXvfq8QJX7BFTspmq6VG7xZVbF
         bOyie0hbUtdvIijpSNV89MtasnQHkbXaw2N6A0754YyY36qeID1PJiTUoSVQWoGf/rwh
         KS8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=q1QWcwrC;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id 65si252757pfx.5.2020.01.09.02.39.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2020 02:39:19 -0800 (PST)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id x129so5461883qke.8
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jan 2020 02:39:19 -0800 (PST)
X-Received: by 2002:a37:e312:: with SMTP id y18mr8998740qki.250.1578566357984;
 Thu, 09 Jan 2020 02:39:17 -0800 (PST)
MIME-Version: 1.0
References: <00000000000036decf0598c8762e@google.com> <CACT4Y+YVMUxeLcFMray9n0+cXbVibj5X347LZr8YgvjN5nC8pw@mail.gmail.com>
 <CACT4Y+asdED7tYv462Ui2OhQVKXVUnC+=fumXR3qM1A4d6AvOQ@mail.gmail.com>
 <f7758e0a-a157-56a2-287e-3d4452d72e00@schaufler-ca.com> <87a787ekd0.fsf@dja-thinkpad.axtens.net>
 <87h81zax74.fsf@dja-thinkpad.axtens.net> <CACT4Y+b+Vx1FeCmhMAYq-g3ObHdMPOsWxouyXXUr7S5OjNiVGQ@mail.gmail.com>
 <0b60c93e-a967-ecac-07e7-67aea1a0208e@I-love.SAKURA.ne.jp>
 <6d009462-74d9-96e9-ab3f-396842a58011@schaufler-ca.com> <CACT4Y+bURugCpLm5TG37-7voFEeEoXo_Gb=3sy75_RELZotXHw@mail.gmail.com>
 <CACT4Y+avizeUd=nY2w1B_LbEC1cP5prBfpnANYaxhgS_fcL6ag@mail.gmail.com>
 <CACT4Y+Z3GCncV3G1=36NmDRX_XOZsdoRJ3UshZoornbSRSN28w@mail.gmail.com> <CACT4Y+ZyVi=ow+VXA9PaWEVE8qKj8_AKzeFsNdsmiSR9iL3FOw@mail.gmail.com>
In-Reply-To: <CACT4Y+ZyVi=ow+VXA9PaWEVE8qKj8_AKzeFsNdsmiSR9iL3FOw@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 9 Jan 2020 11:39:06 +0100
Message-ID: <CACT4Y+axj5M4p=mZkFb1MyBw0MK1c6nWb-fKQcYSnYB8n1Cb8Q@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=q1QWcwrC;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::742
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

On Thu, Jan 9, 2020 at 11:05 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> > > > > On 1/8/2020 2:25 AM, Tetsuo Handa wrote:
> > > > > > On 2020/01/08 15:20, Dmitry Vyukov wrote:
> > > > > >> I temporarily re-enabled smack instance and it produced another 50
> > > > > >> stalls all over the kernel, and now keeps spewing a dozen every hour.
> > > > >
> > > > > Do I have to be using clang to test this? I'm setting up to work on this,
> > > > > and don't want to waste time using my current tool chain if the problem
> > > > > is clang specific.
> > > >
> > > > Humm, interesting. Initially I was going to say that most likely it's
> > > > not clang-related. Bug smack instance is actually the only one that
> > > > uses clang as well (except for KMSAN of course). So maybe it's indeed
> > > > clang-related rather than smack-related. Let me try to build a kernel
> > > > with clang.
> > >
> > > +clang-built-linux, glider
> > >
> > > [clang-built linux is severe broken since early Dec]
> > >
> > > Building kernel with clang I can immediately reproduce this locally:
> > >
> > > $ syz-manager
> > > 2020/01/09 09:27:15 loading corpus...
> > > 2020/01/09 09:27:17 serving http on http://0.0.0.0:50001
> > > 2020/01/09 09:27:17 serving rpc on tcp://[::]:45851
> > > 2020/01/09 09:27:17 booting test machines...
> > > 2020/01/09 09:27:17 wait for the connection from test machine...
> > > 2020/01/09 09:29:23 machine check:
> > > 2020/01/09 09:29:23 syscalls                : 2961/3195
> > > 2020/01/09 09:29:23 code coverage           : enabled
> > > 2020/01/09 09:29:23 comparison tracing      : enabled
> > > 2020/01/09 09:29:23 extra coverage          : enabled
> > > 2020/01/09 09:29:23 setuid sandbox          : enabled
> > > 2020/01/09 09:29:23 namespace sandbox       : enabled
> > > 2020/01/09 09:29:23 Android sandbox         : /sys/fs/selinux/policy
> > > does not exist
> > > 2020/01/09 09:29:23 fault injection         : enabled
> > > 2020/01/09 09:29:23 leak checking           : CONFIG_DEBUG_KMEMLEAK is
> > > not enabled
> > > 2020/01/09 09:29:23 net packet injection    : enabled
> > > 2020/01/09 09:29:23 net device setup        : enabled
> > > 2020/01/09 09:29:23 concurrency sanitizer   : /sys/kernel/debug/kcsan
> > > does not exist
> > > 2020/01/09 09:29:23 devlink PCI setup       : PCI device 0000:00:10.0
> > > is not available
> > > 2020/01/09 09:29:27 corpus                  : 50226 (0 deleted)
> > > 2020/01/09 09:29:27 VMs 20, executed 0, cover 0, crashes 0, repro 0
> > > 2020/01/09 09:29:37 VMs 20, executed 45, cover 0, crashes 0, repro 0
> > > 2020/01/09 09:29:47 VMs 20, executed 74, cover 0, crashes 0, repro 0
> > > 2020/01/09 09:29:57 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > 2020/01/09 09:30:07 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > 2020/01/09 09:30:17 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > 2020/01/09 09:30:27 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > 2020/01/09 09:30:37 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > 2020/01/09 09:30:47 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > 2020/01/09 09:30:57 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > 2020/01/09 09:31:07 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > 2020/01/09 09:31:17 VMs 20, executed 80, cover 0, crashes 0, repro 0
> > > 2020/01/09 09:31:26 vm-10: crash: INFO: rcu detected stall in do_idle
> > > 2020/01/09 09:31:27 VMs 13, executed 80, cover 0, crashes 0, repro 0
> > > 2020/01/09 09:31:28 vm-1: crash: INFO: rcu detected stall in sys_futex
> > > 2020/01/09 09:31:29 vm-4: crash: INFO: rcu detected stall in sys_futex
> > > 2020/01/09 09:31:31 vm-0: crash: INFO: rcu detected stall in sys_getsockopt
> > > 2020/01/09 09:31:33 vm-18: crash: INFO: rcu detected stall in sys_clone3
> > > 2020/01/09 09:31:35 vm-3: crash: INFO: rcu detected stall in sys_futex
> > > 2020/01/09 09:31:36 vm-8: crash: INFO: rcu detected stall in do_idle
> > > 2020/01/09 09:31:37 VMs 7, executed 80, cover 0, crashes 6, repro 0
> > > 2020/01/09 09:31:38 vm-19: crash: INFO: rcu detected stall in schedule_tail
> > > 2020/01/09 09:31:40 vm-6: crash: INFO: rcu detected stall in schedule_tail
> > > 2020/01/09 09:31:42 vm-2: crash: INFO: rcu detected stall in schedule_tail
> > > 2020/01/09 09:31:44 vm-12: crash: INFO: rcu detected stall in sys_futex
> > > 2020/01/09 09:31:46 vm-15: crash: INFO: rcu detected stall in sys_nanosleep
> > > 2020/01/09 09:31:47 VMs 1, executed 80, cover 0, crashes 11, repro 0
> > > 2020/01/09 09:31:48 vm-16: crash: INFO: rcu detected stall in sys_futex
> > > 2020/01/09 09:31:50 vm-9: crash: INFO: rcu detected stall in schedule
> > > 2020/01/09 09:31:52 vm-13: crash: INFO: rcu detected stall in schedule_tail
> > > 2020/01/09 09:31:54 vm-11: crash: INFO: rcu detected stall in schedule_tail
> > > 2020/01/09 09:31:56 vm-17: crash: INFO: rcu detected stall in sys_futex
> > > 2020/01/09 09:31:57 VMs 0, executed 80, cover 0, crashes 16, repro 0
> > > 2020/01/09 09:31:58 vm-7: crash: INFO: rcu detected stall in sys_futex
> > > 2020/01/09 09:32:00 vm-5: crash: INFO: rcu detected stall in dput
> > > 2020/01/09 09:32:02 vm-14: crash: INFO: rcu detected stall in sys_nanosleep
> > >
> > >
> > > Then I switched LSM to selinux and I _still_ can reproduce this. So,
> > > Casey, you may relax, this is not smack-specific :)
> > >
> > > Then I disabled CONFIG_KASAN_VMALLOC and CONFIG_VMAP_STACK and it
> > > started working normally.
> > >
> > > So this is somehow related to both clang and KASAN/VMAP_STACK.
> > >
> > > The clang I used is:
> > > https://storage.googleapis.com/syzkaller/clang-kmsan-362913.tar.gz
> > > (the one we use on syzbot).
> >
> >
> > Clustering hangs, they all happen within very limited section of the code:
> >
> >       1  free_thread_stack+0x124/0x590 kernel/fork.c:284
> >       5  free_thread_stack+0x12e/0x590 kernel/fork.c:280
> >      39  free_thread_stack+0x12e/0x590 kernel/fork.c:284
> >       6  free_thread_stack+0x133/0x590 kernel/fork.c:280
> >       5  free_thread_stack+0x13d/0x590 kernel/fork.c:280
> >       2  free_thread_stack+0x141/0x590 kernel/fork.c:280
> >       6  free_thread_stack+0x14c/0x590 kernel/fork.c:280
> >       9  free_thread_stack+0x151/0x590 kernel/fork.c:280
> >       3  free_thread_stack+0x15b/0x590 kernel/fork.c:280
> >      67  free_thread_stack+0x168/0x590 kernel/fork.c:280
> >       6  free_thread_stack+0x16d/0x590 kernel/fork.c:284
> >       2  free_thread_stack+0x177/0x590 kernel/fork.c:284
> >       1  free_thread_stack+0x182/0x590 kernel/fork.c:284
> >       1  free_thread_stack+0x186/0x590 kernel/fork.c:284
> >      16  free_thread_stack+0x18b/0x590 kernel/fork.c:284
> >       4  free_thread_stack+0x195/0x590 kernel/fork.c:284
> >
> > Here is disass of the function:
> > https://gist.githubusercontent.com/dvyukov/a283d1aaf2ef7874001d56525279ccbd/raw/ac2478bff6472bc473f57f91a75f827cd72bb6bf/gistfile1.txt
> >
> > But if I am not mistaken, the function only ever jumps down. So how
> > can it loop?...
>
>
> This is a miscompilation related to static branches.
>
> objdump shows:
>
> ffffffff814878f8: 0f 1f 44 00 00        nopl   0x0(%rax,%rax,1)
>  ./arch/x86/include/asm/jump_label.h:25
> asm_volatile_goto("1:"
>
> However, the actual instruction in memory at the time is:
>
>    0xffffffff814878f8 <+408>: jmpq   0xffffffff8148787f <free_thread_stack+287>
>
> Which jumps to a wrong location in free_thread_stack and makes it loop.
>
> The static branch is this:
>
> static inline bool memcg_kmem_enabled(void)
> {
>   return static_branch_unlikely(&memcg_kmem_enabled_key);
> }
>
> static inline void memcg_kmem_uncharge(struct page *page, int order)
> {
>   if (memcg_kmem_enabled())
>     __memcg_kmem_uncharge(page, order);
> }
>
> I suspect it may have something to do with loop unrolling. It may jump
> to the right location, but in the wrong unrolled iteration.


Kernel built with clang version 10.0.0
(https://github.com/llvm/llvm-project.git
c2443155a0fb245c8f17f2c1c72b6ea391e86e81) works fine.

Alex, please update clang on syzbot machines.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2Baxj5M4p%3DmZkFb1MyBw0MK1c6nWb-fKQcYSnYB8n1Cb8Q%40mail.gmail.com.
