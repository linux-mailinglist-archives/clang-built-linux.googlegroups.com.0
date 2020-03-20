Return-Path: <clang-built-linux+bncBCMIZB7QWENRBRGZ2HZQKGQEM7IVT6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFCF18C801
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 08:12:06 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id h197sf1531788vka.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 00:12:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584688325; cv=pass;
        d=google.com; s=arc-20160816;
        b=X9lfxZfYWLq4xz+Bi0zfw0HMJkUHo8J2mg/5n3Gf7a0P2/J18bhRo8g7STyf/kRsLI
         5YUImTLDgBBVSjM/bn2ckj9x+l4Glkcj9oVcZYIXGEh1+drBsuKG3ludasDOcz1mWhSW
         bc93uSsH5EckV6HBQBQSEI5IvDxjqSN1IwwDdoZsWM8R7NGSGaX/0Z+vWh0cP0W3b24Y
         caNLmf6VNH1X+BwMI70dbOfi6ZmeXpLygz2lJn9Fof5l44XpKzDZPRfeH3DxRI6eY6Ti
         q9vdI5BSreKVyA6FkAzS4ap8L0Kn62OEOnBIMmpVdGhjbHwUL0CKDx3mRQ/zT+ghran7
         RfrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ug0hwg+HpUt/tKsfisan7dtoHhpg60oJPsfRkLxoiZw=;
        b=sKY+ytk0XlmUDqyu1xUqWyHg/7Tl85EzC6mlsDry1bw2N1nY07B2SzUeksanfyWZ3a
         2JJC2+N9Y19ZEAntoVjdr91X/sK/h7l6I+jT1yMoswHv2w4a4RIv1U01/fEMugxfwRN+
         +YLLxBNQeAfpwRQwy/xYCzIBAwAEFCnbuTssVX0TqWWUXkbwtyBSHsCVoDH8VVSfE7MD
         oJigJ4YPp6FNrp7Xo6AEEZfdAtR9/kl8lHkpsXhzfqccFNIkN/39m4XMAuMtz5m2PP+V
         EClGiYhTc3kYqY/uyl6nr1/p/3+cP0oQYGq8n4CoPfjdXxuy/jxyZ/R1kgZE64EqcmcP
         NFNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=irdnyX7j;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ug0hwg+HpUt/tKsfisan7dtoHhpg60oJPsfRkLxoiZw=;
        b=BieQ0Q/ZUA6Ro8R82NK3oeyyMwSmyLL1baJMgq6VQF/Zuk3E5wmL37vE0mC551Omv9
         TBKnJq4sNURt9X2xMjarWwNHkp+usJt/IxqX5q6dCpPsoIlCzbj91EZi54Ix024LXz53
         iZboYpWI4gRVbs04AptO3a/asq1aEi6xxEnOLYJDwXcQxlyhAVbtevlG6D/gCa4mwehX
         8mubaf2EE3+9XqRqFoKoPwFi8EIP+HAn4AviXgkMZ0KTy3th5bUsBqBX928WJ1YO4QZb
         f0Xrho5mAOrF5QqaZxouJh6WcHMxKOov4JX6sGCm9qxm0L9VRCqWha4yMegwZtm/fjMW
         HyJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ug0hwg+HpUt/tKsfisan7dtoHhpg60oJPsfRkLxoiZw=;
        b=eYQDzdMhGB5yQjksqvfKcI/vDd3eOvrq3eVLTILefugRbgB0VWKu/JEaIrE0vjWDIF
         k63XAzUAr5rJyBcpgyY+NVXLyxRXEorswby5PIMo/NlOBe9WW5mMBLf7cGwwGmyXc25a
         uGnmxIs+nF96Ru02rmePNZtc5j/9OjL2fO6tAZVXDU86UxBvP0rZfyI78zEUEoQk8pvy
         rEQNw+Stok1WIeUaTwZOMULnXLpnw7CZwluBkkOXEpugk2lD/Sc88xoAuFmPT5wfO6+s
         NltQkSWChpHwOql23tkP0Fh+mgiXaXe6wZrV1GrhiCUi2pacfDG4y2frVj5pvtqLf0cC
         afXw==
X-Gm-Message-State: ANhLgQ3Ce0OSHA+2SqDJoDJtQ+eoXB4RImVF+fDuwkQZlNUfxEGMF/MU
	7s3vR2EVH1Q0oTyjiJH+kLw=
X-Google-Smtp-Source: ADFU+vtirre7Dpu5WsKKyuvcjX94YOfBEPKeKhPrW7mRbVFRtjCq0RcUF0gbqRCqLd6g7OO61uR26A==
X-Received: by 2002:a67:f4d1:: with SMTP id s17mr5244248vsn.83.1584688324848;
        Fri, 20 Mar 2020 00:12:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:388a:: with SMTP id t10ls405854uaf.0.gmail; Fri, 20 Mar
 2020 00:12:04 -0700 (PDT)
X-Received: by 2002:ab0:1381:: with SMTP id m1mr4465118uae.34.1584688324411;
        Fri, 20 Mar 2020 00:12:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584688324; cv=none;
        d=google.com; s=arc-20160816;
        b=qhLoe7zgCd+doEyryJn7nfI5HLVQh02gKof4dz+SDI/Bws+T1Giyhsh2hK0RzVYydT
         m3m8M4zvb2bsRspywV93h9YrpfxhkiLlLNtOmhp9HDb6nlVBA9tnuqNWZEPDQS7E6UnW
         Ezl5BG0wwBLDl8ngVvEo0cT45y6LrTxxjEPGDJSXCZznGID1NgD9oNocggkbURfoYdOS
         Jvyr7Iyas8NJ+ONvjVkCKxMzc9s4DyKnvOl5SZr8TcWQDYwjCj5OCvChF/aUD4kPiL+v
         vAYBIJWCaHPmBKHYwgZVubtGD5uoMPgMMRG+wrVHqdb6QgvQIHiZmkonAtJVg7Oa1sWv
         cb2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RW2HIz951VQyqkj+aVoDQhNRj+mhIp9eIDH/9Wwem28=;
        b=IL0Fi9S+iztDavTLGzRV+oInBGtxkngVuNzTC/ebgafZRlA+3HOE2Par311VGXmfpc
         TL5JPFb9tQpTFnwfc1Tmog45aLZeMZwnbqLoBMAwP+Z8m8HtFKJIf7jzt1pj8X+wEhYv
         OAYlMcUP5iDMSKBKbzedHc/JmCLkzf74lzeDgh2d8kCbhkuFOSyCABIgBOznMu1nD5Vs
         OzAjie0w4nN8xPlb1GXubD/GIKvRNjoLVXl2rWkuLnmA3xLOlVHrpLe/0xghZy3rCwg3
         OFzpFk39s3ZzIkJTQMpqyv6/7xylh6IRijyF82piy1flWpBENc+7807V/251dwzotZ7T
         8TMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=irdnyX7j;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id s124si373525vka.1.2020.03.20.00.12.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 00:12:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id o10so127568qki.10
        for <clang-built-linux@googlegroups.com>; Fri, 20 Mar 2020 00:12:04 -0700 (PDT)
X-Received: by 2002:a37:6115:: with SMTP id v21mr6390336qkb.43.1584688307483;
 Fri, 20 Mar 2020 00:11:47 -0700 (PDT)
MIME-Version: 1.0
References: <CACT4Y+ax3BuO7kNofmTWoTKtZ1O0-6KbnKMrWxPviJom+2wngQ@mail.gmail.com>
 <CAKwvOd=kSrNTdYiXWDLgqPoaZas5FddbM9XQHc=P=se3e7X04Q@mail.gmail.com>
 <CACT4Y+bEB94Nf8qNozXh9rj19Yn0URYJ6DPa3rGFTZ_jFC1yBw@mail.gmail.com>
 <CACT4Y+ZJZ10PEcXmjvDtFEjS=itpMuHnaU-VasDNSLsY0cnWqQ@mail.gmail.com> <CAKwvOd=kxsxtV7EqNpcS-fowaVwvymqshdh3K2SQPwgv+a-6mw@mail.gmail.com>
In-Reply-To: <CAKwvOd=kxsxtV7EqNpcS-fowaVwvymqshdh3K2SQPwgv+a-6mw@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Mar 2020 08:11:36 +0100
Message-ID: <CACT4Y+Y7u5mu230bK=n2NGw1BZfRYVWPGVgSZKViR3WVyEX7HA@mail.gmail.com>
Subject: Re: some clang miscompilation again?
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Alexander Potapenko <glider@google.com>, Tom Roeder <tmroeder@google.com>, 
	Oliver Upton <oupton@google.com>
Content-Type: text/plain; charset="UTF-8"
X-ccpol: medium
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=irdnyX7j;       spf=pass
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

On Thu, Mar 19, 2020 at 7:57 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
> > > On Wed, Mar 18, 2020 at 8:45 PM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > Thanks for the reports.
> > > >
> > > > On Wed, Mar 18, 2020 at 4:26 AM 'Dmitry Vyukov' via Clang Built Linux
> > > > <clang-built-linux@googlegroups.com> wrote:
> > > > >
> > > > > Hi,
> > > > >
> > > > > We started seeing massive crashes on one of syzbot instances. You can
> > > > > see 2 examples below. The rest are piled here:
> > > > > https://syzkaller.appspot.com/bug?id=d5bc3e0c66d200d72216ab343a67c4327e4a3452
> > > > > (search for "ci-upstream-kasan-gce-smack-root").
> > > > >
> > > > > This happens only on the smack instance. It's the only instance that uses clang.
> > > >
> > > > Can you please enable more bots to test with Clang?
> > > >
> > > > > The previous weird crash spike we observed on that instance was caused
> > > > > by clang miscompilation:
> > > > > https://groups.google.com/d/msg/clang-built-linux/LUIT7csFWas/wEd-p6FKDQAJ
> > > > >
> > > > > Maybe this rings any bells for somebody?
> > > > >
> > > > > The clang we use is:
> > > > > clang version 10.0.0 (https://github.com/llvm/llvm-project/
> > > > > c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
> > > > >
> > > > >
> > > > > [  202.652969][ T9969] BUG: kernel NULL pointer dereference, address:
> > > > > 0000000000000086
> > > >
> > > > So all of the reports I looked at had this trace, not the second one
> > > > (I didn't read all 30+ logs), can you give me the timestamp of the
> > > > report of the second case?
> > >
> > > If it's not on the dashboard (and it's probably already not on the
> > > dashboard today), unfortunately I did not save any additional info.
> > > But it was among yesterday's batch and shared all the same properties.
> > > Yes, I noticed 1 was different from the rest. Either we will see it
> > > again among new reports... or not.
> > > But I think we can ignore it for now. We can base debugging on the
> > > more frequent manifestation. Or maybe that single one is a different
> > > bug entirely, or maybe was a combination of the bugs + a previous
> > > memory corruption.
> > >
> > > > > [  202.660811][ T9969] #PF: supervisor instruction fetch in kernel mode
> > > > > [  202.667314][ T9969] #PF: error_code(0x0010) - not-present page
> > > > > [  202.673292][ T9969] PGD 42d21067 P4D 42d21067 PUD a442d067 PMD 0
> > > > > [  202.679547][ T9969] Oops: 0010 [#1] PREEMPT SMP KASAN
> > > > > [  202.684751][ T9969] CPU: 1 PID: 9969 Comm: syz-executor.0 Not
> > > > > tainted 5.6.0-rc6-syzkaller #0
> > > > > [  202.685601][ T9967] ubi0: scanning is finished
> > > > > [  202.693464][ T9969] Hardware name: Google Google Compute
> > > > > Engine/Google Compute Engine, BIOS Google 01/01/2011
> > > > > [  202.693481][ T9969] RIP: 0010:0x86
> > > > > [  202.693499][ T9969] Code: Bad RIP value.
> > > > > [  202.693508][ T9969] RSP: 0018:ffffc90001b9f998 EFLAGS: 00010086
> > > > > [  202.693515][ T9969] RAX: ffffc90001b9f9c8 RBX: fffffe0000000000
> > > > > RCX: 0000000000040000
> > > > > [  202.693520][ T9969] RDX: ffffc90002121000 RSI: 00000000000042cc
> > > > > RDI: 00000000000042cd
> > > > > [  202.693525][ T9969] RBP: 0000000000000ec0 R08: ffffffff839870a3
> > > > > R09: ffffffff811c7eca
> > > > > [  202.693530][ T9969] R10: ffff88804b338000 R11: 0000000000000002
> > > > > R12: dffffc0000000000
> > > > > [  202.693535][ T9969] R13: fffffe0000000ec8 R14: ffffffff880016f0
> > > > > R15: fffffe0000000ecb
> > > > > [  202.693547][ T9969] FS:  00007f70cf831700(0000)
> > > > > GS:ffff8880ae900000(0000) knlGS:0000000000000000
> > > > > [  202.693552][ T9969] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > > > [  202.693558][ T9969] CR2: 000000000000005c CR3: 0000000098245000
> > > > > CR4: 00000000001426e0
> > > > > [  202.693564][ T9969] Call Trace:
> > > > > [  202.693582][ T9969]  ? handle_external_interrupt_irqoff+0x154/0x280
> > > >
> > > > So handle_external_interrupt_irqoff() defined in
> > > > arch/x86/kvm/vmx/vmx.c has some tricky inline assembly, then is
> > > > annotated with STACK_FRAME_NON_STANDARD to tell objtool (the Linux
> > > > kernel's custom object file validator) to ignore validating the stack
> > > > frame (see comments in include/linux/frame.h).  Let's see if we can
> > > > find historical context that explains why
> > > > handle_external_interrupt_irqoff is marked STACK_FRAME_NON_STANDARD.
> > > >
> > > > It looks like handle_external_interrupt_irqoff was renamed from
> > > > vmx_handle_external_intr in
> > > > commit 95b5a48c4f2b ("KVM: VMX: Handle NMIs, #MCs and async #PFs in
> > > > common irqs-disabled fn")
> > > >
> > > > STACK_FRAME_NON_STANDARD was added to vmx_handle_external_intr in
> > > > commit c207aee48037 ("objtool, x86: Add several functions and files to
> > > > the objtool whitelist")
> > > >
> > > > Hmm...so looks like no info on why vmx_handle_external_intr was
> > > > annotated STACK_FRAME_NON_STANDARD other than that it caused problems
> > > > for objtool otherwise.  Maybe time to revisit "why does
> > > > handle_external_interrupt_irqoff have a non-standard call frame?"
> > > >
> > > > Looks like vmx_handle_external_intr was added in:
> > > > commit a547c6db4d2f ("KVM: VMX: Enable acknowledge interupt on vmexit")
> > > > Maybe "Intel SDM volum 3, chapter 33.2" has more info?
> > > >
> > > > handle_external_interrupt_irqoff is qualified as `static inline`, but
> > > > is not inlined into its lone call site, vmx_handle_exit_irqoff.  None
> > > > of the other called functions from there are marked
> > > > STACK_FRAME_NON_STANDARD, which is curious.
> > > > handle_external_interrupt_irqoff pushes 4 64b values then calls
> > > > through a function pointer, `entry`.  I assume the thunk also has to
> > > > pop 4 extra 64b values off the stack, otherwise
> > > > handle_external_interrupt_irqoff's ret will return somewhere
> > > > non-sensical, like 0x86?
> > > >
> > > > When I compile your config with GCC, I see:
> > > > arch/x86/kvm/vmx/vmx.o: warning: objtool:
> > > > vmx_handle_exit_irqoff()+0x1ef: unreachable instruction
> > > > which is curious, but maybe a red herring.
> > > >
> > > > Comparing the disassembly between GCC and Clang of
> > > > handle_external_interrupt_irqoff, the inline asm looks similar.  One
> > > > thing I don't understand is that the disassembly of
> > > > handle_external_interrupt_irqoff from GCC has no `ret` instruction...
> > > >
> > > > Are there any more steps to reliably reproduce?
> > >
> > > Well, run syzkaller locally on the kernel using the provided
> > > revision/config, compiler, image, etc. On a beefy machine with lots of
> > > VMs it should fire every minute or so.
> > > (that's part of what I mentioned as "using syzbot as unit testing
> > > system in expensive")
> > >
> > > > Do we suspect this is
> > > > a recent regression in clang-10?
> > >
> > > No.
> > > Alex updated clang to this revision after we debugged the previous
> > > miscopmilation, then the kernel got back to normal and we did not
> > > touch clang.
> > > So it must be a recent kernel change.
> > > Additionally the kernel produces a broken crash report with all frames
> > > marked as " ? " questionable, so syzbot classifies it as "corrupted"
> > > and throws into the single bucket with lots of other corrupted
> > > reports. So we don't know when exactly this started...
> >
> > Looking at some stats data we have for the instance, it seems to start on Mar 6.
> > The initial 0's in stats on Jan 9-10 is the previous breakage, and
> > around Mar 6 there is a new anomaly.
> >
> > Date Corpus Cover Crashes Executions
> > 20200109 0 0 0 0
> > 20200110 0 0 0 0
> > 20200113 50834 629433 536 1395118
> > 20200114 56783 674044 209 9193960
> > 20200115 59186 692183 256 8383961
> > 20200116 51016 645884 327 6250395
> > 20200117 53360 667066 238 5698928
> > 20200118 54800 669470 196 5747800
> > 20200119 55572 668463 170 6163455
> > 20200120 58659 689599 194 5444768
> > 20200121 55657 681862 253 4831752
> > 20200122 64273 725220 276 5448551
> > 20200123 59398 692608 258 4414910
> > 20200124 54089 658262 292 5612887
> > 20200125 52125 649080 191 5440661
> > 20200126 56637 687494 367 5095477
> > 20200127 59136 702062 415 5938377
> > 20200128 58459 712660 353 4826737
> > 20200129 60462 723094 349 4870841
> > 20200130 65067 752818 291 6486425
> > 20200131 65306 755543 338 5809624
> > 20200201 56744 672614 375 4468147
> > 20200202 60243 694134 260 5628242
> > 20200203 49805 624049 256 5931740
> > 20200204 52756 648054 230 5932072
> > 20200205 40670 583719 322 5155979
> > 20200206 45670 608468 347 4274670
> > 20200207 48136 614452 323 4850050
> > 20200208 50242 641225 295 5218742
> > 20200209 45003 598594 272 5104881
> > 20200210 49152 630923 379 7100143
> > 20200211 53779 656252 298 5508205
> > 20200212 56101 674183 340 5237191
> > 20200213 60761 702222 263 6239786
> > 20200214 58013 687933 284 5494024
> > 20200215 58225 680698 271 7383022
> > 20200216 58295 704614 290 4919207
> > 20200217 60289 716586 268 4525219
> > 20200218 45604 617967 263 5609495
> > 20200219 48260 637681 274 5284118
> > 20200220 54224 678450 311 4902636
> > 20200221 61954 723951 287 4990487
> > 20200222 59326 730434 302 5298617
> > 20200223 65439 760776 250 4904851
> > 20200224 63267 742702 291 4800550
> > 20200225 69914 778741 237 4722249
> > 20200226 75572 805909 271 4415733
> > 20200227 79522 826667 357 3622346
> > 20200228 82503 842398 424 3348351
> > 20200229 84755 854530 529 2868372
> > 20200301 84587 855053 320 4835048
> > 20200302 82358 840318 273 4105833
> > 20200303 85566 856249 315 3326516
> > 20200304 87927 869043 432 2763706
> > 20200305 89829 878743 507 2536747
> > 20200306 90973 885239 812 2059721
> > 20200307 71253 767589 2221 1088846
>
> So it looks like you honed in on 20200306, because on 20200307 the
> number of Crashes goes up to 2221 from 812 the previous day?

Yes, I think it's the 20200306 that's bad and happened midday. So 812
is half normal rate + half increased rate.

> Does that also correspond with the first day that you received a
> report with this signature or just coincidence?

Since these crashes don't proper stacks and were classified as
corrupted and were thrown in the single trash bucket, that info is
lost now. We don't have capacity to save millions of crashes and
usually that's just impossible to process meaningfully.

> There's no smoking guns looking at:
> $ git log --pretty=fuller arch/x86/kvm/
> for that timeframe.
>
> If the version of clang was constant throughout this time period, then
> we should pinpoint the kernel commit via bisection what commit
> introduced this regression.  Only then can we determine if we're
> dealing with a "miscompile" vs code reliant on one particular
> implementation of undefined behavior (as is typically the case, IME).
>
> > 20200308 70813 766510 1181 1699390
> > 20200309 65817 772257 1101 2821306
> > 20200310 62675 759004 856 2140766
> > 20200311 62829 750791 1089 2156522
> > 20200312 61200 743232 1105 2105367
> > 20200313 63360 750544 1227 2135191
> > 20200314 63476 750896 885 4589837
> > 20200315 55476 676559 1070 2264668
> > 20200316 57210 690419 860 2763512
> > 20200317 62560 723584 854 2570067
> > 20200318 61662 714534 1032 2160078
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BY7u5mu230bK%3Dn2NGw1BZfRYVWPGVgSZKViR3WVyEX7HA%40mail.gmail.com.
