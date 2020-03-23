Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKUJ4TZQKGQEVT6QFAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 902A818FD0C
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 19:49:15 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id l137sf10116191oih.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 11:49:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584989354; cv=pass;
        d=google.com; s=arc-20160816;
        b=y8JE+5qFYvdB2kp3KFqlhTJe2BUAlBdq2wy9ICS1nCqraHB9VFFJrQFlF2JhVMa1sd
         uDW1xXvbyzmS89jII3Mu7mW0Gmlv0tyOdEVfwWp67MtjuirxcXN+QySW4opqCifLvL/O
         1ApDN8NdFh1vWGo9xzL474sbrgVHLryGjHSQs0vpOVtvRPMXiH+HcF9pwMek2PP6Iwom
         eSitjVvDoMx2LNAGnzMFxvkoCD/ChSLyhIQ8DW2/50S72hGsNCmTxkedJ2CQlRndtWS1
         n+0ONP65n24/Uf+iTGoQArQHTazqyQWOrGA7HauwEKuA//q1wo0hOrVtYbJazhhuSC4t
         tH3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=G67o5pvoj1Z8/XQpKL2hi04WNGtqQLI4TGuLZEZhN5U=;
        b=XcABiM8UN0KUchfJabpL7K9+PtSb0mxjO1Hnz1kH+M5coEzewj6iX6hX3rje3DDOi3
         UL7nObmbd4UjE7Oa+kmCfYkcfT3UaZXdv1cGnDQJVfz+F5Fgwxg/Y9jZdPa2DvmECO2r
         +/DSRQp9cNiBPrqwBlDsp5lKQ8mZcYjDmnvR9yVcKKaGnrICwROGgvSliTuYCZ0zmnpQ
         eN/onnuzgTNhziLxGlGQOB1JimGL5JD5hwgXlW4zB7M1FNQa9Eg92TFEdRz2RgCDweJt
         R4ZlEYbcw0vZkbyzyPJYFLmMguQeQpW8ZY7yYlt6CJJg6C5DZbd8evVLnU+FkRaNJruT
         U3qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jVm9GcLi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G67o5pvoj1Z8/XQpKL2hi04WNGtqQLI4TGuLZEZhN5U=;
        b=ImWmsoYYrhYX/5NMBxH1jC1L/8Crq69hc80IUvMKF8k6oNQXLg4+j4RY76HL4wiaDl
         VQyp1xuWCZVBW1Y6cHWXRVF9gPrRmWCzKjOi3cLSaV/KFelOiAW34WI0yJr2ofOGeFMR
         4LhEAbON4uhQjSlZ87p1pZMwWLD85kwJDjMnG5B3/0owQBnH1XLTQQC8NDqw09lyFtFy
         /UHG/wtOsVeUP90nzWlgknIyaajfxMf4WR1mOuShFO7pnsjN6cqlcndJS5Zj7rYyRFB5
         98xCoGDdtQ/zUArmAVoFsBH1eSqD8h4OMwMIoKwjbZ4dNKorgHQN40pwN3suDrafJM4b
         4UGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G67o5pvoj1Z8/XQpKL2hi04WNGtqQLI4TGuLZEZhN5U=;
        b=jhBwOrWbQWeVXbJVKA/1hqUZJdBCRyO6N0d8EPNEHQx4FynoaoFQmeGI19BJa4Uaek
         IbgHD/e6QM/yelpho2CNCvrPVTREHQXiOAq5s2+KFekteNsvpatEeEOBffutTwrDfBmU
         gI/YywBnNLZXWqbr0kiR/cu0GLBZIuIsakzODsJF/ohYISFVbUS2E8QtPHgQw14Q6Al4
         1gBdkoWYRVe3bTssZZti49knydHGbD9+8d6vl1yFARAlJ9IW9KMU/c6ttL8X36o38/KG
         rDnuKYaEDwy1WDOyQdMhCgOpQ9gyo2T56UlWGeRLpLdPrB1ytz0oL/y4Q9fUM45aJ+zM
         /EAg==
X-Gm-Message-State: ANhLgQ1/M8u9Yza4y3t3wbCKdIueA4tBml82zf7ub0zRxcI1godRrihP
	VtjJge9VBLg1Q+2/9DVs6lM=
X-Google-Smtp-Source: ADFU+vvTQdO2JTOC7GfatTGTMe6xi0I+QlYz3aB27wxTemBA2nKiIWa613wccfkf3pxhDrOotcVafQ==
X-Received: by 2002:a9d:6b02:: with SMTP id g2mr3568594otp.340.1584989354363;
        Mon, 23 Mar 2020 11:49:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:51c6:: with SMTP id d6ls6669344oth.4.gmail; Mon, 23 Mar
 2020 11:49:14 -0700 (PDT)
X-Received: by 2002:a9d:7859:: with SMTP id c25mr19601112otm.323.1584989354006;
        Mon, 23 Mar 2020 11:49:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584989354; cv=none;
        d=google.com; s=arc-20160816;
        b=pzSdhcuVG8pcokRK160bA/T79HWFTsry7RnfYuYUin/Z2iHUalzlbrjNZnai33y6o/
         8Y/51U5JTdRA0NnMOurs2D30HVd2DsvbXXgOe47//nL0XTPLLmfJnf6VUATUv17SRLRq
         9E5bmkko8X6Atsa/ZyL/WH0oBWA6uOUXLZi6rNQ+7UhfStactQTKA/S7PRxlXTtmaWe8
         9FAuNktHBHSywoBw4zlr1RZI9sNklNvr0NSVFN5L3f7BVoLE8Mr4dfH3QGuMUKeEjWGl
         W5gA1iDOEngxud7aOkwqcqqFxHaLtbPISZLQjSLNS0yuDDi7CU4ho+w6tFvGUAuBD3hL
         KX6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3Be0byEQEuSk3IXBoJdwRjwzTAyPFQzNjWKeAUvfe7g=;
        b=A2fi6AUKbE1tb9GUCWBczEwGHKFCfZh6XpNqaU+2G2OmLeuGmP/uxqcBWG5o3+GQ7+
         HqCjBlw+HfatEgMWx0RxfrDMvUNGDKYD05jP0xuWDjB+UWVUldSKl+WUG7/TQuwFKD9w
         Uhx6jLqB+l46Y8UlJYSeh8BUN+1Q+raPAlYloMJGJB2jtyix/dzR80Z7/44VU7e/DI7i
         LVMs4wSSXQUIo9zRFWCzfU8ZAU0+ACZRoMllqaLNBQB2ayoF36+0+kJELp1UjGvt/Kua
         daGbNrK3LBWXRN1Hg6oVis0g8FjPgLBRJpTLy2kxG02Ez/v4xNYg1c0gglLgZD2ADMtN
         qkeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jVm9GcLi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id n5si525344otf.3.2020.03.23.11.49.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 11:49:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id b72so7924757pfb.11
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 11:49:13 -0700 (PDT)
X-Received: by 2002:a63:a34d:: with SMTP id v13mr2286104pgn.10.1584989352808;
 Mon, 23 Mar 2020 11:49:12 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000277a0405a16bd5c9@google.com> <CACT4Y+b1WFT87pWQaXD3CWjyjoQaP1jcycHdHF+rtxoR5xW1ww@mail.gmail.com>
 <5058aabe-f32d-b8ef-57ed-f9c0206304c5@redhat.com> <CAG_fn=WYtSoyi63ACaz-ya=Dbi+BFU-_mADDpL6gQvDimQscmw@mail.gmail.com>
 <20200323163925.GP28711@linux.intel.com> <CAKwvOdkE8OAu=Gj4MKWwpctka6==6EtrbF3e1tvF=jS2hBB3Ow@mail.gmail.com>
 <CAKwvOdkXi1MN2Yqqoa6ghw14tQ25WYgyJkSv35-+1KRb=cmhZw@mail.gmail.com>
 <CAG_fn=WE0BmuHSxUoBJWQ9dnZ4X5ZpBqcT9rQaDE_6HAfTYKQA@mail.gmail.com>
 <CAG_fn=Uf2dDo4K9X==wE=eL8HQMc1an8m8H18tvWd9Mkyhpskg@mail.gmail.com> <CAKwvOdntYiM8afOA2nX6dtLp9FWk-1E3Mc+oVRJ_Y8X-9kr81Q@mail.gmail.com>
In-Reply-To: <CAKwvOdntYiM8afOA2nX6dtLp9FWk-1E3Mc+oVRJ_Y8X-9kr81Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 11:49:01 -0700
Message-ID: <CAKwvOdn10Ts_AU6i+7toj7NkMwK-+0yr5wTrN0XEDudBWS0sPQ@mail.gmail.com>
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in handle_external_interrupt_irqoff
To: Alexander Potapenko <glider@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>, Paolo Bonzini <pbonzini@redhat.com>, 
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
 header.i=@google.com header.s=20161025 header.b=jVm9GcLi;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Mon, Mar 23, 2020 at 11:16 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Mar 23, 2020 at 11:06 AM Alexander Potapenko <glider@google.com> wrote:
> >
> > On Mon, Mar 23, 2020 at 6:55 PM Alexander Potapenko <glider@google.com> wrote:
> > >
> > > I've reduced the faulty test case to the following code:
> > >
> > > =================================
> > > a;
> > > long b;
> > > register unsigned long current_stack_pointer asm("rsp");
> > > handle_external_interrupt_irqoff() {
> > >   asm("and $0xfffffffffffffff0, %%rsp\n\tpush $%c[ss]\n\tpush "
> > >       "%[sp]\n\tpushf\n\tpushq $%c[cs]\n\tcall *%[thunk_target]\n"
> > >       : [ sp ] "=&r"(b), "+r" (current_stack_pointer)
> > >       : [ thunk_target ] "rm"(a), [ ss ] "i"(3 * 8), [ cs ] "i"(2 * 8) );
> > > }
> > > =================================
> > > (in fact creduce even throws away current_stack_pointer, but we
> > > probably want to keep it to prove the point).
> > >
> > > Clang generates the following code for it:
> > >
> > > $ clang vmx.i -O2 -c -w -o vmx.o
> > > $ objdump -d vmx.o
> > > ...
> > > 0000000000000000 <handle_external_interrupt_irqoff>:
> > >    0: 8b 05 00 00 00 00    mov    0x0(%rip),%eax        # 6
> > > <handle_external_interrupt_irqoff+0x6>
> > >    6: 89 44 24 fc          mov    %eax,-0x4(%rsp)
> > >    a: 48 83 e4 f0          and    $0xfffffffffffffff0,%rsp
> > >    e: 6a 18                pushq  $0x18
> > >   10: 50                    push   %rax
> > >   11: 9c                    pushfq
> > >   12: 6a 10                pushq  $0x10
> > >   14: ff 54 24 fc          callq  *-0x4(%rsp)
> > >   18: 48 89 05 00 00 00 00 mov    %rax,0x0(%rip)        # 1f
> > > <handle_external_interrupt_irqoff+0x1f>
> > >   1f: c3                    retq
> > >
> > > The question is whether using current_stack_pointer as an output is
> > > actually a valid way to tell the compiler it should not clobber RSP.
> > > Intuitively it is, but explicitly adding RSP to the clobber list
> > > sounds a bit more bulletproof.
> >
> > Ok, I am wrong: according to
> > https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html it's incorrect to
> > list RSP in the clobber list.
>
> You could force `entry` into a register:
> diff --git a/arch/x86/kvm/vmx/vmx.c b/arch/x86/kvm/vmx/vmx.c
> index 4d22b1b5e822..083a7e980bb5 100644
> --- a/arch/x86/kvm/vmx/vmx.c
> +++ b/arch/x86/kvm/vmx/vmx.c
> @@ -6277,7 +6277,7 @@ static void
> handle_external_interrupt_irqoff(struct kvm_vcpu *vcpu)
>  #endif
>                 ASM_CALL_CONSTRAINT
>                 :
> -               THUNK_TARGET(entry),
> +               [thunk_target] "a"(entry),
>                 [ss]"i"(__KERNEL_DS),
>                 [cs]"i"(__KERNEL_CS)
>         );
>
> (https://stackoverflow.com/a/48877683/1027966 had some interesting
> feedback to this problem)

Sean said:
> It looks like clang doesn't honor
> ASM_CALL_CONSTRAINT, which effectively tells the compiler that %rsp is
> getting clobbered, e.g. the "mov %r14,0x8(%rsp)" is loading @entry for
> "callq *0x8(%rsp)", which breaks because of asm's pushes.

I'm not sure about this, I think ASM_CALL_CONSTRAINT may be a red
herring, based on the commit message that added it (commit
f5caf621ee357 ("x86/asm: Fix inline asm call constraints for Clang")).

Further, it seems the "m" in "rm" in THUNK_TARGET for
CONFIG_RETPOLINE=n is problematic.

THUNK_TARGET defines [thunk_target] as "rm" when CONFIG_RETPOLINE is
not set, which isn't constrained enough for this specific case; if
`entry` winds up at the bottom of the stack where rsp points to, then
`%rsp` is good enough to satisfy the constraints for using `entry` as
an input.  For inline assembly that modifies the the stack pointer
before using this input, the underspecification of constraints is
dangerous, and results in an indirect call to a previously pushed
flags register.

So maybe we can find why
commit 76b043848fd2 ("x86/retpoline: Add initial retpoline support")
added THUNK_TARGET with and without "m" constraint, and either:
- remove "m" from THUNK_TARGET. (Maybe this doesn't compile somewhere)
or
- use my above recommendation locally avoiding THUNK_TARGET.  We can
use "r" rather than "a" (what Clang would have picked) or "b (what GCC
would have picked) to give the compilers maximal flexibility.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn10Ts_AU6i%2B7toj7NkMwK-%2B0yr5wTrN0XEDudBWS0sPQ%40mail.gmail.com.
