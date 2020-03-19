Return-Path: <clang-built-linux+bncBCMIZB7QWENRBAOJZTZQKGQE4BX2MQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B5818AD9C
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 08:51:30 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id w124sf1619097qkd.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 00:51:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584604289; cv=pass;
        d=google.com; s=arc-20160816;
        b=ca27JSlm1tbUQTG5YPF8oZuPaLz0mKOrq0wWBgKZXal80Vtyq0btIoig0CIuEw9Dpj
         OVAzk/Vkb4QquAA8lKaQmz8VmoY+lIH30FAS4hKfdN9yZ8USfWSiuchsZB40XvAK5/HV
         YoiPf2J8w2RYDuZno1FY3XnelcyZbfonmh/tmsEztBxX9LHpE3AC277PZ490v9nUS7L1
         QwzAhcf3KDNq0IvHdIrcbK3NQ6S3JWpMLjID99EvOlkmW2e2sw3kvHWwx3eRGqqUdXHT
         sGmMIxXCMzpT0lVMMEB5bAUhZDjsCPiboYzg4j2Gd0ziF+yE0VitD8qxsYZ3njpIjo98
         mQRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4Pus4lPhVgOVlH7801XpZfK/Zfu+PMlNIj/7YOcVcpE=;
        b=0xFBwQqsFvqkVhNjqp6G6ob/Whcp1Kzp278X/g3IUzYlPA2e9b7ZEDsWf4rFoR1GOI
         26H9n6fCZRP5ggQdgFNXeUqDD58+WC8KUaPFrK4F5IUNJE5Qbq0zzcw5KDS3AriCIqZ9
         /DxC/7fj71b8y/O1iBOTH+tbWaxt1ckhaqyoNphjCNBdR//g9A98ynxc0/5ShsVS+Hwe
         oLIOEgyJBIosMGHYluhT/tsHuMadNzk4jN6LJyH/pzLCA8zBxfosI3SM1zZE8mnnpzvv
         biIYtiVlj607L4+Cm+jWd68BNnogD6OxEym4NpW1irg/K+pzOkurZx848ADBC9jmo/QP
         Vjdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=twMllGDY;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Pus4lPhVgOVlH7801XpZfK/Zfu+PMlNIj/7YOcVcpE=;
        b=CkiyzcuXVQi20tqh4lkLNjtPO9+D4rBbGieeyEBoCiqy31iMoQMKQ+94jksJg4M3z0
         GM42aNt2BTMXtBznmuCs1+GQby5pu3h/FRbXmVFVe7VQhK6+HxKFDn/+1mfIcRk542D0
         FNn9XdyzJu3dgq4kQDudU2iIYYCKEM0jIrevXnJGjk50RKG9VDfQ4PSLNbVIpNnaF86l
         jjwsnAjlYHFFvfdi/rj76qJ7iT0N5WykCgBlw8n+zpksOIsptdvF7RfplISr0ac99WNO
         /znACiwPCHFHxvtm/67DozitS7MaFpIrTSYp0TWS1DgO9xaLtUWEJA13rO7uojg9eNay
         iHdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Pus4lPhVgOVlH7801XpZfK/Zfu+PMlNIj/7YOcVcpE=;
        b=I+eSJFnkYOzcBuz98XtQVHfNpyjorkJ71hziAyP8iD6Pb6w+tUGvfnDtmrhCRIMaLl
         etSMLzjhyrw5/R4cIY3RodpT7dUeCZ7yjtP//4T+Z3BdqLq4cswjeob6jJ/SmcTURF74
         2ZCY6saPZOy5wRAfvedb2ZOmbaL0GCfZ97lr4CmvAd9GSWwM6BmEbitgtoDgEkdL5SYl
         Xusgu3Eyso3dYQbw/8GLqZK5TWt8CXOBk0Jd2qm5TD5QLCRzfEe5aYJ7JLa0o3IzD+UR
         nPuXVQq37Zb7lS9kfiwOhQjY8UavVCdeUEkmwJw09L67HqqoA7BnC7/YnjSmEwUSAIB0
         WloQ==
X-Gm-Message-State: ANhLgQ0PRvAzuU1/eD7axVx0eTDBjj8wWh/b4bk6d5RxuJmN5m3Sg/Zm
	CkWQuBH4MEtxyG8foZlzBr8=
X-Google-Smtp-Source: ADFU+vtiij3ZMwigwGZJ4WTEHIGEFDFR65YjdCpAIvJBfcnsLfS98GJ0Qh1s1TWTClTluu9fDPl6sQ==
X-Received: by 2002:a25:1d03:: with SMTP id d3mr2536208ybd.283.1584604289308;
        Thu, 19 Mar 2020 00:51:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:84d2:: with SMTP id x18ls492708ybm.7.gmail; Thu, 19 Mar
 2020 00:51:29 -0700 (PDT)
X-Received: by 2002:a25:c206:: with SMTP id s6mr2700392ybf.101.1584604288915;
        Thu, 19 Mar 2020 00:51:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584604288; cv=none;
        d=google.com; s=arc-20160816;
        b=1D/K9WHkO+rRsvWi1FF213BpRW+yzcg1bNpbWK/1UUqKELj0yTiKXlcMwUTWXv1mQc
         M+tUjqq/lQE9enAjgu3PmuoDYGldi0lWy8228ebiJBawD+XbdCBI8BISiUCkt9TVf40F
         bIYID2bSMElZmA8LX8kApqNBHc0HyPITJT7TMro1PGR7IcF/0WcFkIz3D8WmWjICu5wT
         mGw7Gg5RhV5Hvd/LkWZLqqV1VnB/GmuB+2Vv9i6ZpTyKPdlLijOy3uBP+nsyMAmX/mU7
         madFQwKO7ERpUfJ36QTS2IOuCYCQxblBCCOp5SAES4H2DFckYff8qHKNvX9vQYOjgO+I
         xZiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ByLlAR1klwK/2vcagp9izHZ8Kv6qJAs4pS64/OmaFR8=;
        b=dkz9boUwGm1Pv6TC/0CI47JuRb+zFE8dTtOGY+O7mQ101gDEcB+iXEJmV90QSn60Qz
         U/hep1C4MngaA+n50f0XL9GRbyVU6+oqE/B0K5QrbcOqDg0AewnOH0DGp1jeP5sr7Xrh
         AKYPZCai0UOpPv4FUZEg0tw9Em1Ug4TOyoomrUIcAo3hdUfR1EFgeNAXyDHouxR0r98h
         1gEg/4l25S6YbKHI/v8+ZpGmcvMh8ETipC9XmjO+Hnp7N2tz67GocUqXqpylE3XXT95l
         pJZnVMzgrh36DogrydYEe3ey18xyYr1XyKpwfxkZtC3U41Vvhyzy/G2cLsfig1GHwn6w
         2CCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=twMllGDY;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id l141si25794ybl.3.2020.03.19.00.51.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 00:51:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id d11so1814248qko.3
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 00:51:28 -0700 (PDT)
X-Received: by 2002:a37:664d:: with SMTP id a74mr1645521qkc.256.1584604288035;
 Thu, 19 Mar 2020 00:51:28 -0700 (PDT)
MIME-Version: 1.0
References: <CACT4Y+ax3BuO7kNofmTWoTKtZ1O0-6KbnKMrWxPviJom+2wngQ@mail.gmail.com>
 <CAKwvOd=kSrNTdYiXWDLgqPoaZas5FddbM9XQHc=P=se3e7X04Q@mail.gmail.com> <CACT4Y+bEB94Nf8qNozXh9rj19Yn0URYJ6DPa3rGFTZ_jFC1yBw@mail.gmail.com>
In-Reply-To: <CACT4Y+bEB94Nf8qNozXh9rj19Yn0URYJ6DPa3rGFTZ_jFC1yBw@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 19 Mar 2020 08:51:16 +0100
Message-ID: <CACT4Y+ZJZ10PEcXmjvDtFEjS=itpMuHnaU-VasDNSLsY0cnWqQ@mail.gmail.com>
Subject: Re: some clang miscompilation again?
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Alexander Potapenko <glider@google.com>, Tom Roeder <tmroeder@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=twMllGDY;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743
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

On Thu, Mar 19, 2020 at 8:41 AM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Wed, Mar 18, 2020 at 8:45 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Thanks for the reports.
> >
> > On Wed, Mar 18, 2020 at 4:26 AM 'Dmitry Vyukov' via Clang Built Linux
> > <clang-built-linux@googlegroups.com> wrote:
> > >
> > > Hi,
> > >
> > > We started seeing massive crashes on one of syzbot instances. You can
> > > see 2 examples below. The rest are piled here:
> > > https://syzkaller.appspot.com/bug?id=d5bc3e0c66d200d72216ab343a67c4327e4a3452
> > > (search for "ci-upstream-kasan-gce-smack-root").
> > >
> > > This happens only on the smack instance. It's the only instance that uses clang.
> >
> > Can you please enable more bots to test with Clang?
> >
> > > The previous weird crash spike we observed on that instance was caused
> > > by clang miscompilation:
> > > https://groups.google.com/d/msg/clang-built-linux/LUIT7csFWas/wEd-p6FKDQAJ
> > >
> > > Maybe this rings any bells for somebody?
> > >
> > > The clang we use is:
> > > clang version 10.0.0 (https://github.com/llvm/llvm-project/
> > > c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
> > >
> > >
> > > [  202.652969][ T9969] BUG: kernel NULL pointer dereference, address:
> > > 0000000000000086
> >
> > So all of the reports I looked at had this trace, not the second one
> > (I didn't read all 30+ logs), can you give me the timestamp of the
> > report of the second case?
>
> If it's not on the dashboard (and it's probably already not on the
> dashboard today), unfortunately I did not save any additional info.
> But it was among yesterday's batch and shared all the same properties.
> Yes, I noticed 1 was different from the rest. Either we will see it
> again among new reports... or not.
> But I think we can ignore it for now. We can base debugging on the
> more frequent manifestation. Or maybe that single one is a different
> bug entirely, or maybe was a combination of the bugs + a previous
> memory corruption.
>
> > > [  202.660811][ T9969] #PF: supervisor instruction fetch in kernel mode
> > > [  202.667314][ T9969] #PF: error_code(0x0010) - not-present page
> > > [  202.673292][ T9969] PGD 42d21067 P4D 42d21067 PUD a442d067 PMD 0
> > > [  202.679547][ T9969] Oops: 0010 [#1] PREEMPT SMP KASAN
> > > [  202.684751][ T9969] CPU: 1 PID: 9969 Comm: syz-executor.0 Not
> > > tainted 5.6.0-rc6-syzkaller #0
> > > [  202.685601][ T9967] ubi0: scanning is finished
> > > [  202.693464][ T9969] Hardware name: Google Google Compute
> > > Engine/Google Compute Engine, BIOS Google 01/01/2011
> > > [  202.693481][ T9969] RIP: 0010:0x86
> > > [  202.693499][ T9969] Code: Bad RIP value.
> > > [  202.693508][ T9969] RSP: 0018:ffffc90001b9f998 EFLAGS: 00010086
> > > [  202.693515][ T9969] RAX: ffffc90001b9f9c8 RBX: fffffe0000000000
> > > RCX: 0000000000040000
> > > [  202.693520][ T9969] RDX: ffffc90002121000 RSI: 00000000000042cc
> > > RDI: 00000000000042cd
> > > [  202.693525][ T9969] RBP: 0000000000000ec0 R08: ffffffff839870a3
> > > R09: ffffffff811c7eca
> > > [  202.693530][ T9969] R10: ffff88804b338000 R11: 0000000000000002
> > > R12: dffffc0000000000
> > > [  202.693535][ T9969] R13: fffffe0000000ec8 R14: ffffffff880016f0
> > > R15: fffffe0000000ecb
> > > [  202.693547][ T9969] FS:  00007f70cf831700(0000)
> > > GS:ffff8880ae900000(0000) knlGS:0000000000000000
> > > [  202.693552][ T9969] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > [  202.693558][ T9969] CR2: 000000000000005c CR3: 0000000098245000
> > > CR4: 00000000001426e0
> > > [  202.693564][ T9969] Call Trace:
> > > [  202.693582][ T9969]  ? handle_external_interrupt_irqoff+0x154/0x280
> >
> > So handle_external_interrupt_irqoff() defined in
> > arch/x86/kvm/vmx/vmx.c has some tricky inline assembly, then is
> > annotated with STACK_FRAME_NON_STANDARD to tell objtool (the Linux
> > kernel's custom object file validator) to ignore validating the stack
> > frame (see comments in include/linux/frame.h).  Let's see if we can
> > find historical context that explains why
> > handle_external_interrupt_irqoff is marked STACK_FRAME_NON_STANDARD.
> >
> > It looks like handle_external_interrupt_irqoff was renamed from
> > vmx_handle_external_intr in
> > commit 95b5a48c4f2b ("KVM: VMX: Handle NMIs, #MCs and async #PFs in
> > common irqs-disabled fn")
> >
> > STACK_FRAME_NON_STANDARD was added to vmx_handle_external_intr in
> > commit c207aee48037 ("objtool, x86: Add several functions and files to
> > the objtool whitelist")
> >
> > Hmm...so looks like no info on why vmx_handle_external_intr was
> > annotated STACK_FRAME_NON_STANDARD other than that it caused problems
> > for objtool otherwise.  Maybe time to revisit "why does
> > handle_external_interrupt_irqoff have a non-standard call frame?"
> >
> > Looks like vmx_handle_external_intr was added in:
> > commit a547c6db4d2f ("KVM: VMX: Enable acknowledge interupt on vmexit")
> > Maybe "Intel SDM volum 3, chapter 33.2" has more info?
> >
> > handle_external_interrupt_irqoff is qualified as `static inline`, but
> > is not inlined into its lone call site, vmx_handle_exit_irqoff.  None
> > of the other called functions from there are marked
> > STACK_FRAME_NON_STANDARD, which is curious.
> > handle_external_interrupt_irqoff pushes 4 64b values then calls
> > through a function pointer, `entry`.  I assume the thunk also has to
> > pop 4 extra 64b values off the stack, otherwise
> > handle_external_interrupt_irqoff's ret will return somewhere
> > non-sensical, like 0x86?
> >
> > When I compile your config with GCC, I see:
> > arch/x86/kvm/vmx/vmx.o: warning: objtool:
> > vmx_handle_exit_irqoff()+0x1ef: unreachable instruction
> > which is curious, but maybe a red herring.
> >
> > Comparing the disassembly between GCC and Clang of
> > handle_external_interrupt_irqoff, the inline asm looks similar.  One
> > thing I don't understand is that the disassembly of
> > handle_external_interrupt_irqoff from GCC has no `ret` instruction...
> >
> > Are there any more steps to reliably reproduce?
>
> Well, run syzkaller locally on the kernel using the provided
> revision/config, compiler, image, etc. On a beefy machine with lots of
> VMs it should fire every minute or so.
> (that's part of what I mentioned as "using syzbot as unit testing
> system in expensive")
>
> > Do we suspect this is
> > a recent regression in clang-10?
>
> No.
> Alex updated clang to this revision after we debugged the previous
> miscopmilation, then the kernel got back to normal and we did not
> touch clang.
> So it must be a recent kernel change.
> Additionally the kernel produces a broken crash report with all frames
> marked as " ? " questionable, so syzbot classifies it as "corrupted"
> and throws into the single bucket with lots of other corrupted
> reports. So we don't know when exactly this started...

Looking at some stats data we have for the instance, it seems to start on Mar 6.
The initial 0's in stats on Jan 9-10 is the previous breakage, and
around Mar 6 there is a new anomaly.

Date Corpus Cover Crashes Executions
20200109 0 0 0 0
20200110 0 0 0 0
20200113 50834 629433 536 1395118
20200114 56783 674044 209 9193960
20200115 59186 692183 256 8383961
20200116 51016 645884 327 6250395
20200117 53360 667066 238 5698928
20200118 54800 669470 196 5747800
20200119 55572 668463 170 6163455
20200120 58659 689599 194 5444768
20200121 55657 681862 253 4831752
20200122 64273 725220 276 5448551
20200123 59398 692608 258 4414910
20200124 54089 658262 292 5612887
20200125 52125 649080 191 5440661
20200126 56637 687494 367 5095477
20200127 59136 702062 415 5938377
20200128 58459 712660 353 4826737
20200129 60462 723094 349 4870841
20200130 65067 752818 291 6486425
20200131 65306 755543 338 5809624
20200201 56744 672614 375 4468147
20200202 60243 694134 260 5628242
20200203 49805 624049 256 5931740
20200204 52756 648054 230 5932072
20200205 40670 583719 322 5155979
20200206 45670 608468 347 4274670
20200207 48136 614452 323 4850050
20200208 50242 641225 295 5218742
20200209 45003 598594 272 5104881
20200210 49152 630923 379 7100143
20200211 53779 656252 298 5508205
20200212 56101 674183 340 5237191
20200213 60761 702222 263 6239786
20200214 58013 687933 284 5494024
20200215 58225 680698 271 7383022
20200216 58295 704614 290 4919207
20200217 60289 716586 268 4525219
20200218 45604 617967 263 5609495
20200219 48260 637681 274 5284118
20200220 54224 678450 311 4902636
20200221 61954 723951 287 4990487
20200222 59326 730434 302 5298617
20200223 65439 760776 250 4904851
20200224 63267 742702 291 4800550
20200225 69914 778741 237 4722249
20200226 75572 805909 271 4415733
20200227 79522 826667 357 3622346
20200228 82503 842398 424 3348351
20200229 84755 854530 529 2868372
20200301 84587 855053 320 4835048
20200302 82358 840318 273 4105833
20200303 85566 856249 315 3326516
20200304 87927 869043 432 2763706
20200305 89829 878743 507 2536747
20200306 90973 885239 812 2059721
20200307 71253 767589 2221 1088846
20200308 70813 766510 1181 1699390
20200309 65817 772257 1101 2821306
20200310 62675 759004 856 2140766
20200311 62829 750791 1089 2156522
20200312 61200 743232 1105 2105367
20200313 63360 750544 1227 2135191
20200314 63476 750896 885 4589837
20200315 55476 676559 1070 2264668
20200316 57210 690419 860 2763512
20200317 62560 723584 854 2570067
20200318 61662 714534 1032 2160078

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BZJZ10PEcXmjvDtFEjS%3DitpMuHnaU-VasDNSLsY0cnWqQ%40mail.gmail.com.
