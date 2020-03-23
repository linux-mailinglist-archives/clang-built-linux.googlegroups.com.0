Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCGV4PZQKGQEOF47JCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DB218FA98
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 17:57:46 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id y84sf7784013pfb.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 09:57:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584982665; cv=pass;
        d=google.com; s=arc-20160816;
        b=rm7TrayK/UvNJMHtrdEX2lto/7pIF30xLG1UPI1UOZJNb5imWwbzvfB08ewedWble2
         MAjvJoKuXk1bCcz+fQC0PCV/oXRjA1GZJ9Ors45yY38Fk0tyIe5aMr7CBcdCuKo2LmLS
         LYbn9c/XP4o3euCkdq/jrI78KNKwNVhnmlBm8g9ESg1L//QptT1bD5fygEugqoXOXB+o
         Q/gN+rGws7pfCQjxCE5SBw+/EbKg0A3ZA9MEr0+bg0uV7S0UBtK/gkDrfqLtKp7J/FCx
         +GPONxaMVig9ASG4OeUSY5e7ZFFcVWZ7ygYOaJn8hKhuMoC7WJZD08qanJmt5A+29SgT
         Gnrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=r82AwC/YFF5jNLhIz81VH4MijmEXYwpTwch5FhOFYQk=;
        b=uYCjMMUvrJFDKLKgeH+60+KzxYEqQXEWsd41XdvENr6HQ8KCF0SYav0ToVGUFENd11
         vKdo0poBg25SF0E6YhDiuwR1TwDkrP2v35NcarH0RlIcoOdrSvqQTezfp0Q8397+mRwU
         jgt2ye5JZy6SKV/sgiWa17WPhN3+YxGBHsV3kEbtlViklECfLkybEkbnjQ0O+K4kI8wx
         Q1A5V+PeZxONAUSQnA5R/4wijfWRsj8+M45L7Y0ZrNe9m/cC6ZC9wTsQ2o7pN2++qEzb
         QsI6LZbsv1OtMbxPV2a/hOkFH21x56ebBYZNh0b4X+gxRdkSduBqagApt+s9q3va5WTi
         TMCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B39b0zc2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r82AwC/YFF5jNLhIz81VH4MijmEXYwpTwch5FhOFYQk=;
        b=ssrK8meZ5Pz/WMO0aC9ksSbuiD8xzF86VNMWl2yvOfQdoIW6g9HxF/X6ydvo8tqug0
         FMsY98dGGhz4BXypYVqsMByUDFTfcC3Q+ziHtQkIxCPmBChmffZmRXsYEG3gw9UNl/kU
         ADICeEcLGtGNHv7MvdPtpamrRiH//h0AzaGVydkYQWRlCrh/9DNj4HSJdYIeV2g0ikJI
         LbZwf/nuv3wWhfSssxdbsUeoCGSTLIN4G7G3MDajSTAfaJPPlaghoLIoOQZ89WMb6WQl
         I1MSF/QwCYZvziGG7EGPPQjdNDNDDJW1IIyst/KTjNsx5luakYdSnYUCQyFT5oNCajRs
         BDBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r82AwC/YFF5jNLhIz81VH4MijmEXYwpTwch5FhOFYQk=;
        b=shfOam+bK4Z/PBFIav82clEV/w8oAt1Z8gM5eHfOS7iTPGzWzR3KaoF0tm4unTUmhH
         H1SPrpWpnb8m2/8c+S0uni3D9zhVVCQ3qqNN5BHGGbmYsKPRIggMM5+5QNRVyEqmrzIu
         H1qwaO3Vz6Bz/lzvS0gtdEcrX0xvWGXCN087tcc7l+khmqZb6N8oZdID2YZ+9R/OyX1X
         dKBKGpfHU7Ro94fQMoa3c6+G5JmfbKP0+tTz9S1dAll0HVtjdOAexI7KJBjJCgyVyl/2
         8tr7FSGcclcKdIQiGG6epQN82UfOByy9SyKMKJi3tYgY7aPzJpN33Rb8qo9gU5zS7IGt
         39dQ==
X-Gm-Message-State: ANhLgQ1HI53cqa7k4/lTy/kS57tbWh/Ctnw+sPVvdxnYsF9kqkUW+T7t
	c6Yptxd6DAiM5Tdjczc8fsQ=
X-Google-Smtp-Source: ADFU+vvPNAnkNa8GLyBtyHPiqmVJNR7gLRZs0QuN8Axk/SNjiBCqKKM8+1oTPQRKNNxxNfzjlRvjdA==
X-Received: by 2002:a17:90a:26ef:: with SMTP id m102mr235861pje.173.1584982665020;
        Mon, 23 Mar 2020 09:57:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:58a:: with SMTP id 132ls7734186pgf.5.gmail; Mon, 23 Mar
 2020 09:57:44 -0700 (PDT)
X-Received: by 2002:a62:fc12:: with SMTP id e18mr26112761pfh.45.1584982664525;
        Mon, 23 Mar 2020 09:57:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584982664; cv=none;
        d=google.com; s=arc-20160816;
        b=Oy/0pOpAn+cCTEEgT6is0rdXlKh4+tQYCmqU+2NFyNI+9HbqbgNkHv6pKkllZglVK2
         tY/vuir6lOFH8RFm2qBDdGY+belVcj7DybKhb5o9HezYstUuDKdnCibG3Jx0pcfpbbS5
         9bn9P4ZvLaKz6FE98NXzEuXzKPq4nR3JyWF0jQC3fm9kdRWQ1S4e0RND5aF2BCmpUXCZ
         ZjSy7aloB4GztA2bQ+P6jspfyoKXZQZSNkKWO1NvmayMb6gXvBVmYSf8sn5HWCi5RRxe
         oON+pwGRSnmW+L9NodVRepAsFbKRY463bSvwlLt8TqcCK8+z3cJOS+lDJvzMsZvaY52N
         9XLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tkNJ2UmLjV4ApEsFFknqUQDdSIA2E0Fh+l4Y3g/LsCM=;
        b=EtRkxjW7xkxb+YXYpoiuDNzqRcuVg2zBfslWKlzIIR8XhX4bmIgVzk7iGghn4Xy4jm
         Lnocu9OUPJoV0+FJfVDxpT31pUdCDJK5YWosNA49Yy+DXNUogYPH8xXBK4QoYpOejnp/
         ZeEf9LczYJYjc4xmsPjjbukMY6QZOFXOxQ/ccDwUlmOPJCyrgPl8Z+g5F9t6vfauV2mI
         DAvlkeixQojzGQRcRg99LwGPmrw9k6vkWZzTWV4x154cygAQ15n0lC+eU0GjLadXKpqB
         oCTxXrK9KqDtKdIub6R8O3O6awywiphlZLooaQeFmYSJCIup5rZuD+jTLQ+Z8bhQgYTv
         WnLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B39b0zc2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id 74si778239pfy.0.2020.03.23.09.57.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 09:57:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id b1so7482696pgm.8
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 09:57:44 -0700 (PDT)
X-Received: by 2002:aa7:8b54:: with SMTP id i20mr24735682pfd.39.1584982663685;
 Mon, 23 Mar 2020 09:57:43 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000277a0405a16bd5c9@google.com> <CACT4Y+b1WFT87pWQaXD3CWjyjoQaP1jcycHdHF+rtxoR5xW1ww@mail.gmail.com>
 <5058aabe-f32d-b8ef-57ed-f9c0206304c5@redhat.com> <CAG_fn=WYtSoyi63ACaz-ya=Dbi+BFU-_mADDpL6gQvDimQscmw@mail.gmail.com>
 <20200323163925.GP28711@linux.intel.com>
In-Reply-To: <20200323163925.GP28711@linux.intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 09:57:32 -0700
Message-ID: <CAKwvOdkE8OAu=Gj4MKWwpctka6==6EtrbF3e1tvF=jS2hBB3Ow@mail.gmail.com>
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in handle_external_interrupt_irqoff
To: Sean Christopherson <sean.j.christopherson@intel.com>
Cc: Alexander Potapenko <glider@google.com>, Paolo Bonzini <pbonzini@redhat.com>, 
	Dmitry Vyukov <dvyukov@google.com>, 
	syzbot <syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>, 
	KVM list <kvm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Ingo Molnar <mingo@redhat.com>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Vitaly Kuznetsov <vkuznets@redhat.com>, 
	Wanpeng Li <wanpengli@tencent.com>, "the arch/x86 maintainers" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=B39b0zc2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Mon, Mar 23, 2020 at 9:39 AM Sean Christopherson
<sean.j.christopherson@intel.com> wrote:
>
> On Mon, Mar 23, 2020 at 05:31:15PM +0100, Alexander Potapenko wrote:
> > On Mon, Mar 23, 2020 at 9:18 AM Paolo Bonzini <pbonzini@redhat.com> wrote:
> > >
> > > On 22/03/20 07:59, Dmitry Vyukov wrote:
> > > >
> > > > The commit range is presumably
> > > > fb279f4e238617417b132a550f24c1e86d922558..63849c8f410717eb2e6662f3953ff674727303e7
> > > > But I don't see anything that says "it's me". The only commit that
> > > > does non-trivial changes to x86/vmx seems to be "KVM: VMX: check
> > > > descriptor table exits on instruction emulation":
> > >
> > > That seems unlikely, it's a completely different file and it would only
> > > affect the outside (non-nested) environment rather than your own kernel.
> > >
> > > The only instance of "0x86" in the registers is in the flags:
> > >
> > > > RSP: 0018:ffffc90001ac7998 EFLAGS: 00010086
> > > > RAX: ffffc90001ac79c8 RBX: fffffe0000000000 RCX: 0000000000040000
> > > > RDX: ffffc9000e20f000 RSI: 000000000000b452 RDI: 000000000000b453
> > > > RBP: 0000000000000ec0 R08: ffffffff83987523 R09: ffffffff811c7eca
> > > > R10: ffff8880a4e94200 R11: 0000000000000002 R12: dffffc0000000000
> > > > R13: fffffe0000000ec8 R14: ffffffff880016f0 R15: fffffe0000000ecb
> > > > FS:  00007fb50e370700(0000) GS:ffff8880ae800000(0000) knlGS:0000000000000000
> > > > CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > > CR2: 000000000000005c CR3: 0000000092fc7000 CR4: 00000000001426f0
> > > > DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > > > DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> > >
> > > That would suggest a miscompilation of the inline assembly, which does
> > > push the flags:
> > >
> > > #ifdef CONFIG_X86_64
> > >                 "mov %%" _ASM_SP ", %[sp]\n\t"
> > >                 "and $0xfffffffffffffff0, %%" _ASM_SP "\n\t"
> > >                 "push $%c[ss]\n\t"
> > >                 "push %[sp]\n\t"
> > > #endif
> > >                 "pushf\n\t"
> > >                 __ASM_SIZE(push) " $%c[cs]\n\t"
> > >                 CALL_NOSPEC
> > >
> > >
> > > It would not explain why it suddenly started to break, unless the clang
> > > version also changed, but it would be easy to ascertain and fix (in
> > > either KVM or clang).  Dmitry, can you send me the vmx.o and
> > > kvm-intel.ko files?
> >
> > On a quick glance, Clang does not miscompile this part.
>
> Clang definitely miscompiles the asm, the indirect call operates on the
> EFLAGS value, not on @entry as expected.  It looks like clang doesn't honor
> ASM_CALL_CONSTRAINT, which effectively tells the compiler that %rsp is
> getting clobbered, e.g. the "mov %r14,0x8(%rsp)" is loading @entry for
> "callq *0x8(%rsp)", which breaks because of asm's pushes.
>
> clang:
>
>         kvm_before_interrupt(vcpu);
>
>         asm volatile(
> ffffffff811b798e:       4c 89 74 24 08          mov    %r14,0x8(%rsp)
> ffffffff811b7993:       48 89 e0                mov    %rsp,%rax
> ffffffff811b7996:       48 83 e4 f0             and    $0xfffffffffffffff0,%rsp
> ffffffff811b799a:       6a 18                   pushq  $0x18
> ffffffff811b799c:       50                      push   %rax
> ffffffff811b799d:       9c                      pushfq
> ffffffff811b799e:       6a 10                   pushq  $0x10
> ffffffff811b79a0:       ff 54 24 08             callq  *0x8(%rsp) <--------- calls the EFLAGS value
> kvm_after_interrupt():
>
>
> gcc:
>         kvm_before_interrupt(vcpu);
>
>         asm volatile(
> ffffffff8118e17c:       48 89 e0                mov    %rsp,%rax
> ffffffff8118e17f:       48 83 e4 f0             and    $0xfffffffffffffff0,%rsp
> ffffffff8118e183:       6a 18                   pushq  $0x18
> ffffffff8118e185:       50                      push   %rax
> ffffffff8118e186:       9c                      pushfq
> ffffffff8118e187:       6a 10                   pushq  $0x10
> ffffffff8118e189:       ff d3                   callq  *%rbx <-------- calls @entry
> kvm_after_interrupt():

Thanks for this analysis, it looks like this is dependent on some
particular configuration; here's clang+defconfig+CONFIG_KVM_INTEL=y:

   0x000000000000528f <+127>:   pushq  $0x18
   0x0000000000005291 <+129>:   push   %rcx
   0x0000000000005292 <+130>:   pushfq
   0x0000000000005293 <+131>:   pushq  $0x10
   0x0000000000005295 <+133>:   callq  *%rax

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkE8OAu%3DGj4MKWwpctka6%3D%3D6EtrbF3e1tvF%3DjS2hBB3Ow%40mail.gmail.com.
