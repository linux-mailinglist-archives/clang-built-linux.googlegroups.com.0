Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYPD4PZQKGQEJUKXAXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE1F18FB77
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 18:29:07 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id v10sf10403474otp.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 10:29:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584984545; cv=pass;
        d=google.com; s=arc-20160816;
        b=OC6jY4v0VrclmFhm55KTKv3bzGHBaSQpJXd2TX4ZVAhbPO3lQyi2bon420c8qXOS50
         CpE4QXA5I4Tm+nQyV03nct2IrJzRl4/5P8IlT9lkO1W5sVEHXgW2t7KkMCO+u5ii546+
         4DXVmCZHWH8fCR5zzlPO6/QMOQCcZxBdnaia2ZkdpyqrUanW4uv+d5juNi2sfNjBzdgC
         O99o6t+6tl0GCX/vjzqCDZ2qv2UOSqoZ0eUybERNHMwijTxxmThW6yzx0rpCOxKbcEbq
         um5rfwF5Oo66g2nr1WekvhHWOisa1L8bo9ekVxlBQRUA0UaZmHNnimH9ofQlnwN9WbHz
         lPxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GjCk3UZsN5Bgz2bJuUTXdNMKKqu2jwQr0BAWvg8FvqQ=;
        b=WrzOisjNWVxZxi638YhappEDQZiMXhuKRrNwQtV1V76tnw7sYoqXjdpwhERjOumsuN
         iiSREqhbU3to5IJC8Z+luFuy/Po5aGSTkEuO7181LD3OoqPpK8egHA+7NTe3ZPJZr3kt
         stifwTcWM7ZgzTbCDdOkehb5PLnGOTXZLA2Se11ZgLUD3dIJRRzz+pgFyXVtAQ7FCkwF
         wSBWRaDwii+GsoDJtfco3d313oKzjVNOdMeDeZSAtddjFMSr7BbUSyZc+Ofvy6eV6dWy
         eOPAx/oy5yPTNmSlNlxNvJQEZRfBCcD/uejx43YPi3/jyfv6Ydaz7gtMLPvBeIvLAcFd
         Praw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nST53KuQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GjCk3UZsN5Bgz2bJuUTXdNMKKqu2jwQr0BAWvg8FvqQ=;
        b=pMhK6VglLTyRx6T53ma0FjOEOUnco3NdFGT3nbSw2MDeSKq3cU9GO7N19mdxizYLur
         ngxh172bzU8UA0iHiUyAdPy0OYc81kNHKPbF9WXz5UF+PnImd4NkE46IjoFEM4UV0CbQ
         PpH+gg2GiML3n+Eoms/Qma1KmFj+z2F/7lRMoOvyAmGYF/8iuwonNSucbhKKRqsO8mFy
         0BBZscEspuFPqy0VJr84X8s7ij2F2aLy54zhBijjgGtmxxG7usX/6tmZxR+aiaH+ZuY8
         ow4p0/Lod2T04o2rBbjmWWMhvhvqbsupxor7forwNiyCOb2cJAhohaOY5d3ZahPzUQN8
         WEBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GjCk3UZsN5Bgz2bJuUTXdNMKKqu2jwQr0BAWvg8FvqQ=;
        b=JXbcJq1WM2gjvQn7BTaZi7yWyl/4ZSFP5Q8xDHxOiB07nQF8eiBsGoGtIuQu4PJPXQ
         Ajg0YaKV206mIPK3CFyYZsnFG9XqYqjCKzjug7ZykQq6K2fhAHhGIF6nmG/yT4tqI45V
         lAUAmjNqjrOE5FNkmNrQJURmmUtY+3SytNnhRxmO5aKRSzRDTK8W1rAQL6osEBLWfahu
         0XkORIPC41z4ZFRZUvItwk6m/EcXqjzzKdcNQjScloTTD7ttuK2PYXniJhS8zpp5QRdp
         8OPJcCdhUJdmsESUzaCBDJywnmaqJ6hI95adSaHRfkQqruqchMZAfHiJOcgKEhlv4Diw
         4qjQ==
X-Gm-Message-State: ANhLgQ2kicwizSsf9rGKVxfHIb4LpYt76Hx1beP67OBz5DRB4++JAN3O
	KAfDwMcwqeHPE3jNbe0fmeY=
X-Google-Smtp-Source: ADFU+vv8AYNCrCVrJ1NxAgJUgtQuNee9b7tuPCxaPSw54lprVorsrL+62PEuENiTiRnWjMU8RhC2zw==
X-Received: by 2002:aca:646:: with SMTP id 67mr345925oig.4.1584984545644;
        Mon, 23 Mar 2020 10:29:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ec0a:: with SMTP id k10ls739525oih.8.gmail; Mon, 23 Mar
 2020 10:29:05 -0700 (PDT)
X-Received: by 2002:aca:ebc5:: with SMTP id j188mr319537oih.65.1584984545298;
        Mon, 23 Mar 2020 10:29:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584984545; cv=none;
        d=google.com; s=arc-20160816;
        b=QeHvN01zDLAbWLmz2nba6GYvdyhK0x6xLW2Gzs2PAPaFO9R6tvzkx4PAgqr2nRbTOq
         Yr75Q32f5au++Tf8Wd+qfQT/SkOuKOTVblHAzb38NxZUzW6gNbd9oIWiEztvCG322zGK
         V7h+SDcZHK79FkqJ65w/CCanTo3UpGYX/IR/03eD1DsO9f3SMUdcpctFSEeEEmfShDrA
         E37u8Ou1+nIacboCMpetMVNwog+T/AGBt6s+zdWbtmzhy8o2yer69yBWByItEOE6H0KW
         ICV68lPO3X9Wi/OSppcZiONwLefc2PAMso9RGRnfM2dauCx/4vs6QUXW5nPkHfL1R9Gu
         Jf3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=W+gJxpxvFbfNBEOfkvfTA+dUu8PDaWOK6s/6neYRg5U=;
        b=xaiTdLnh94n+hQbj4c6NF3dN6rCVYL7Uy+pUmsPKHpcnfY7g24nQCMF9b7e2w7WLFO
         NGw3p9rL6HqyLcim6pc53I45ixbFfgdaufD+LUN6hnMU8eImqTQlPczAtb24bTjRJ25E
         ABInH35M4EpFqc8xSUDLkPhsQ9LO8iaywOlP7FsXhPzS/mCENeq8XuPRRo4Z0pRXfuO2
         1GyMfyYskrU11LFeXAQN9j54wfPPsbYnJgXjC+F60p5MLXKnOC1u0mJum9GfNbJZkiGG
         ObnJvxW8vwXoYRA2R8I2XpQjuCbn4D4wsJQX1KPP34UitLaINS9jDkFHm0Anej45+aOO
         vvow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nST53KuQ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id d16si149459otp.0.2020.03.23.10.29.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 10:29:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id t16so6189993plr.8
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 10:29:05 -0700 (PDT)
X-Received: by 2002:a17:902:22e:: with SMTP id 43mr21721280plc.119.1584984544159;
 Mon, 23 Mar 2020 10:29:04 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000277a0405a16bd5c9@google.com> <CACT4Y+b1WFT87pWQaXD3CWjyjoQaP1jcycHdHF+rtxoR5xW1ww@mail.gmail.com>
 <5058aabe-f32d-b8ef-57ed-f9c0206304c5@redhat.com> <CAG_fn=WYtSoyi63ACaz-ya=Dbi+BFU-_mADDpL6gQvDimQscmw@mail.gmail.com>
 <20200323163925.GP28711@linux.intel.com> <CAKwvOdkE8OAu=Gj4MKWwpctka6==6EtrbF3e1tvF=jS2hBB3Ow@mail.gmail.com>
In-Reply-To: <CAKwvOdkE8OAu=Gj4MKWwpctka6==6EtrbF3e1tvF=jS2hBB3Ow@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 10:28:52 -0700
Message-ID: <CAKwvOdkXi1MN2Yqqoa6ghw14tQ25WYgyJkSv35-+1KRb=cmhZw@mail.gmail.com>
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in handle_external_interrupt_irqoff
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Alexander Potapenko <glider@google.com>, Paolo Bonzini <pbonzini@redhat.com>, 
	syzbot <syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>, 
	KVM list <kvm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Ingo Molnar <mingo@redhat.com>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Vitaly Kuznetsov <vkuznets@redhat.com>, 
	Wanpeng Li <wanpengli@tencent.com>, "the arch/x86 maintainers" <x86@kernel.org>, 
	Sean Christopherson <sean.j.christopherson@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nST53KuQ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Mon, Mar 23, 2020 at 9:57 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Mar 23, 2020 at 9:39 AM Sean Christopherson
> <sean.j.christopherson@intel.com> wrote:
> >
> > On Mon, Mar 23, 2020 at 05:31:15PM +0100, Alexander Potapenko wrote:
> > > On Mon, Mar 23, 2020 at 9:18 AM Paolo Bonzini <pbonzini@redhat.com> wrote:
> > > >
> > > > On 22/03/20 07:59, Dmitry Vyukov wrote:
> > > > >
> > > > > The commit range is presumably
> > > > > fb279f4e238617417b132a550f24c1e86d922558..63849c8f410717eb2e6662f3953ff674727303e7
> > > > > But I don't see anything that says "it's me". The only commit that
> > > > > does non-trivial changes to x86/vmx seems to be "KVM: VMX: check
> > > > > descriptor table exits on instruction emulation":
> > > >
> > > > That seems unlikely, it's a completely different file and it would only
> > > > affect the outside (non-nested) environment rather than your own kernel.
> > > >
> > > > The only instance of "0x86" in the registers is in the flags:
> > > >
> > > > > RSP: 0018:ffffc90001ac7998 EFLAGS: 00010086
> > > > > RAX: ffffc90001ac79c8 RBX: fffffe0000000000 RCX: 0000000000040000
> > > > > RDX: ffffc9000e20f000 RSI: 000000000000b452 RDI: 000000000000b453
> > > > > RBP: 0000000000000ec0 R08: ffffffff83987523 R09: ffffffff811c7eca
> > > > > R10: ffff8880a4e94200 R11: 0000000000000002 R12: dffffc0000000000
> > > > > R13: fffffe0000000ec8 R14: ffffffff880016f0 R15: fffffe0000000ecb
> > > > > FS:  00007fb50e370700(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
> > > > > CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > > > CR2: 000000000000005c CR3: 0000000092fc7000 CR4: 00000000001426f0
> > > > > DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > > > > DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> > > >
> > > > That would suggest a miscompilation of the inline assembly, which does
> > > > push the flags:
> > > >
> > > > #ifdef CONFIG_X86_64
> > > >                 "mov %%" _ASM_SP ", %[sp]\n\t"
> > > >                 "and $0xfffffffffffffff0, %%" _ASM_SP "\n\t"
> > > >                 "push $%c[ss]\n\t"
> > > >                 "push %[sp]\n\t"
> > > > #endif
> > > >                 "pushf\n\t"
> > > >                 __ASM_SIZE(push) " $%c[cs]\n\t"
> > > >                 CALL_NOSPEC
> > > >
> > > >
> > > > It would not explain why it suddenly started to break, unless the clang
> > > > version also changed, but it would be easy to ascertain and fix (in
> > > > either KVM or clang).  Dmitry, can you send me the vmx.o and
> > > > kvm-intel.ko files?
> > >
> > > On a quick glance, Clang does not miscompile this part.
> >
> > Clang definitely miscompiles the asm, the indirect call operates on the
> > EFLAGS value, not on @entry as expected.  It looks like clang doesn't honor
> > ASM_CALL_CONSTRAINT, which effectively tells the compiler that %rsp is

I noticed that in the syzcaller config I have, that CONFIG_RETPOLINE
is not set.  I'm more reliably able to reproduce this with
clang+defconfig+CONFIG_KVM=y+CONFIG_KVM_INTEL=y+CONFIG_RETPOLINE=n,
ie. by manually disabling retpoline.

> > getting clobbered, e.g. the "mov %r14,0x8(%rsp)" is loading @entry for
> > "callq *0x8(%rsp)", which breaks because of asm's pushes.
> >
> > clang:
> >
> >         kvm_before_interrupt(vcpu);
> >
> >         asm volatile(
> > ffffffff811b798e:       4c 89 74 24 08          mov    %r14,0x8(%rsp)
> > ffffffff811b7993:       48 89 e0                mov    %rsp,%rax
> > ffffffff811b7996:       48 83 e4 f0             and    $0xfffffffffffffff0,%rsp
> > ffffffff811b799a:       6a 18                   pushq  $0x18
> > ffffffff811b799c:       50                      push   %rax
> > ffffffff811b799d:       9c                      pushfq
> > ffffffff811b799e:       6a 10                   pushq  $0x10
> > ffffffff811b79a0:       ff 54 24 08             callq  *0x8(%rsp) <--------- calls the EFLAGS value
> > kvm_after_interrupt():
> >
> >
> > gcc:
> >         kvm_before_interrupt(vcpu);
> >
> >         asm volatile(
> > ffffffff8118e17c:       48 89 e0                mov    %rsp,%rax
> > ffffffff8118e17f:       48 83 e4 f0             and    $0xfffffffffffffff0,%rsp
> > ffffffff8118e183:       6a 18                   pushq  $0x18
> > ffffffff8118e185:       50                      push   %rax
> > ffffffff8118e186:       9c                      pushfq
> > ffffffff8118e187:       6a 10                   pushq  $0x10
> > ffffffff8118e189:       ff d3                   callq  *%rbx <-------- calls @entry
> > kvm_after_interrupt():
>
> Thanks for this analysis, it looks like this is dependent on some
> particular configuration; here's clang+defconfig+CONFIG_KVM_INTEL=y:
>
>    0x000000000000528f <+127>:   pushq  $0x18
>    0x0000000000005291 <+129>:   push   %rcx
>    0x0000000000005292 <+130>:   pushfq
>    0x0000000000005293 <+131>:   pushq  $0x10
>    0x0000000000005295 <+133>:   callq  *%rax
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkXi1MN2Yqqoa6ghw14tQ25WYgyJkSv35-%2B1KRb%3DcmhZw%40mail.gmail.com.
