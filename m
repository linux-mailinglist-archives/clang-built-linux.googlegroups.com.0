Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6XZ4PZQKGQEOQB55ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FA518FC7F
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 19:16:27 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id f20sf6121829iof.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 11:16:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584987387; cv=pass;
        d=google.com; s=arc-20160816;
        b=uxflA2fbis4bH8Hmv6EWaxgGBrrofq5vTfLk3glvrHQ+1+XddwqpADyQH3V9qU/nK2
         L6v3WoriPwUk7JiatWfi5xtZhWJpgL67cgb7acE1IpglDoepDCsahvF4D2YF5czG/wnX
         qfe8byXGt2KTX4QYCoFizIjt6HonS4frzFSzvgfijM5C+hLB01lfZbocLxVa19yn7VAY
         4CtQT87AXBsr2prXxBg9R4KPsPpoALFDhal83zKbuMe47pyVvjkPeRf0hVVRszNHQMxT
         gG/DNXrseaAqQhjme7H7MvC5c/LwBTdMjlJLYl1Ek9LiYhElYkpDkE03Gl/EL0Aa1inq
         EvcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=iG+EmKtAF953K6SPHpHqu6AVE73ANmFbcAcStCu1WBY=;
        b=NZ1i48Vvms/HBP33z+f39MscONYHd3VkFvgAy1ZPbgS2jbhJiOFgehmhTui/35BRb1
         bA1QfgoW+axDQ78393GrW9icB8ncPpSKNFafX1ysXoLGsuVUjisPko/J3lKTEegBQjDb
         fWfv6hfI6VQp5o5N7OFWQmERgtaA1mkAW62omDeSDs0NtaywUBT49Xh+/lB5ZM+GF2gu
         m9gKNmraH2IVRuiWjOlKmBr8tjBDkGFfhPVOx78dG6eM1ebFf8jnfCxtTJNSUDeN75mm
         jF+4lMtOYdw3Q6yoNj5wolYAlQ2NZVx86WoiwhAH/AWtNmwtOnJp+L+cD4GU1D5pyi4E
         8Drg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="hukwjY/x";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iG+EmKtAF953K6SPHpHqu6AVE73ANmFbcAcStCu1WBY=;
        b=S+gOv1sAs14YnQlx6C/cEfmDKedD/aWZRPJp9tIdPL/EMI+U66pa0PDkMHac0Yt8Vy
         xag7JqPnIe5sNgBcwXMBzTtl1X0wANFtnypjT3fIW8xy9i4G/O1iYSk9MRxHkfWDIvAN
         yT8M3sbbqnUg4rARhtjfW0h07gmeUk1vp5MEKcdCp7RKug4NEuQwDDGk+K08MTF2qe8k
         6WsPd4VJ/O44q8iqrc2pWI6eZv4Rftc5yaAzWt5wZfXuFLv/TJ10du5K7n9F9Gcn9Wp+
         SXS+ZAVY4WhvhimTTPpZsS7Cpm1WwNT9ondN4E3DvMDyk4KOvLZiYyylulNmbbran718
         VoWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iG+EmKtAF953K6SPHpHqu6AVE73ANmFbcAcStCu1WBY=;
        b=bmztMNqe2drOrXT6NFQqZuc48XK2OA6j6Ii0l2e9+NOaMtvAIUJKXLdBFapUtNQ5oz
         r29XpRcWPN3dhUx3mQT5aNWFL8uvzUw6LIwTn8shF7LbF5DaFsndk1bDmF4wdMCbnx+1
         zeJNfKfenY++0yx627WC8uJqC+09jkn4cnxgWGqfSTzbqLMUjdSUn+u1jcJx9ZI3rV0G
         CPr3kdTXCeQwaL6Ufled+yOXyVI9R09CLCm1Mv00DQgdM61aQn1r/qg1+t447WAFYPqT
         D+VgrQoAO+4dG/iiFXFnMEniYXKW+gEsnFy8kzN9ueEzj2+LbsXNUZ/03vLCVYGwuMpU
         8shA==
X-Gm-Message-State: ANhLgQ0QUQH73+ZrmLdObj3I9WaVh9Lp4HijeHzFaHlskF6uh8xCT+56
	shuNGts2Q3pVqElbWFyzFrE=
X-Google-Smtp-Source: ADFU+vvOa8uM+ErQB5w65bSL3dVvqoNVN0F4zyedBKRjqjPJmwT0EvBgaJpeSEq0SMnFaiYZ2LlTdA==
X-Received: by 2002:a92:39cc:: with SMTP id h73mr21647866ilf.298.1584987386767;
        Mon, 23 Mar 2020 11:16:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ac08:: with SMTP id a8ls1932476jao.9.gmail; Mon, 23 Mar
 2020 11:16:26 -0700 (PDT)
X-Received: by 2002:a02:6d01:: with SMTP id m1mr6182759jac.8.1584987386268;
        Mon, 23 Mar 2020 11:16:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584987386; cv=none;
        d=google.com; s=arc-20160816;
        b=RajefOjPTpsb07Ti183qq56SBFCTw+GXlOVQSNduAqs8M5HYS07orQC3VXk4XmMIUE
         VLCK9svXoHmnXetFG/bcVJJtFjk9qAi/jxjce6wkf/f0V9T3xsF8zFp/YglEbXw7JvOQ
         Z+Bkuusnk8LO5RZt3EdsgyS2jOUNGxnWQcd0/vo2ZGdelWt89yMO+z3v/zp+tCFMb9zi
         PSrFHVXw0PMsWfARvVriIh5E9tUoaGQv4q0ehVzznlFONpvZJecSWumRZY0eJFd7ylCI
         OQqHjXdGUT8v0c0s6Eb8WOeZrvQMCi1cePoHoBaQanvXAVYqDT+hD//TlyeDzHZGD788
         0nng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oF1tkIGle6loJ68IzLpATfP9PzEsBIHwJQBtleldmqY=;
        b=JGib5qN2+UVoJvYIhiyTjq0v3K47cO5W3NDyoEUnpQgZiQVjF3MmdWbZl7qcnk2X5/
         mukJpFK/TXsUnpxnUlSdAFB98TbfnOKfXwbGW6NOc6wQizAqiOepnPiNcOfV+8OUlqKh
         kfTk8ogwCo13DeK/6qsGrV0uJdn229/yzy2mknVftXT8KAul7lMMXeMxZ9IEyk/8DQpS
         2nFtdhtd2SXz4toq3uwo9O7IGPrZRNekdSSqj9E0vHnV3c3POMtmI8UVo8WOXz60fSa1
         QwZ8w0zPSZlQygzRVJQfQKyFevq4dPSoIWLfdXrNIn76XatFw8jWZDwn42qW14FZgOFZ
         G/aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="hukwjY/x";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id s201si1003703ilc.0.2020.03.23.11.16.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 11:16:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id 7so7614746pgr.2
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 11:16:26 -0700 (PDT)
X-Received: by 2002:a63:4453:: with SMTP id t19mr22058669pgk.381.1584987385383;
 Mon, 23 Mar 2020 11:16:25 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000277a0405a16bd5c9@google.com> <CACT4Y+b1WFT87pWQaXD3CWjyjoQaP1jcycHdHF+rtxoR5xW1ww@mail.gmail.com>
 <5058aabe-f32d-b8ef-57ed-f9c0206304c5@redhat.com> <CAG_fn=WYtSoyi63ACaz-ya=Dbi+BFU-_mADDpL6gQvDimQscmw@mail.gmail.com>
 <20200323163925.GP28711@linux.intel.com> <CAKwvOdkE8OAu=Gj4MKWwpctka6==6EtrbF3e1tvF=jS2hBB3Ow@mail.gmail.com>
 <CAKwvOdkXi1MN2Yqqoa6ghw14tQ25WYgyJkSv35-+1KRb=cmhZw@mail.gmail.com>
 <CAG_fn=WE0BmuHSxUoBJWQ9dnZ4X5ZpBqcT9rQaDE_6HAfTYKQA@mail.gmail.com> <CAG_fn=Uf2dDo4K9X==wE=eL8HQMc1an8m8H18tvWd9Mkyhpskg@mail.gmail.com>
In-Reply-To: <CAG_fn=Uf2dDo4K9X==wE=eL8HQMc1an8m8H18tvWd9Mkyhpskg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 11:16:12 -0700
Message-ID: <CAKwvOdntYiM8afOA2nX6dtLp9FWk-1E3Mc+oVRJ_Y8X-9kr81Q@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b="hukwjY/x";       spf=pass
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

On Mon, Mar 23, 2020 at 11:06 AM Alexander Potapenko <glider@google.com> wrote:
>
> On Mon, Mar 23, 2020 at 6:55 PM Alexander Potapenko <glider@google.com> wrote:
> >
> > I've reduced the faulty test case to the following code:
> >
> > =================================
> > a;
> > long b;
> > register unsigned long current_stack_pointer asm("rsp");
> > handle_external_interrupt_irqoff() {
> >   asm("and $0xfffffffffffffff0, %%rsp\n\tpush $%c[ss]\n\tpush "
> >       "%[sp]\n\tpushf\n\tpushq $%c[cs]\n\tcall *%[thunk_target]\n"
> >       : [ sp ] "=&r"(b), "+r" (current_stack_pointer)
> >       : [ thunk_target ] "rm"(a), [ ss ] "i"(3 * 8), [ cs ] "i"(2 * 8) );
> > }
> > =================================
> > (in fact creduce even throws away current_stack_pointer, but we
> > probably want to keep it to prove the point).
> >
> > Clang generates the following code for it:
> >
> > $ clang vmx.i -O2 -c -w -o vmx.o
> > $ objdump -d vmx.o
> > ...
> > 0000000000000000 <handle_external_interrupt_irqoff>:
> >    0: 8b 05 00 00 00 00    mov    0x0(%rip),%eax        # 6
> > <handle_external_interrupt_irqoff+0x6>
> >    6: 89 44 24 fc          mov    %eax,-0x4(%rsp)
> >    a: 48 83 e4 f0          and    $0xfffffffffffffff0,%rsp
> >    e: 6a 18                pushq  $0x18
> >   10: 50                    push   %rax
> >   11: 9c                    pushfq
> >   12: 6a 10                pushq  $0x10
> >   14: ff 54 24 fc          callq  *-0x4(%rsp)
> >   18: 48 89 05 00 00 00 00 mov    %rax,0x0(%rip)        # 1f
> > <handle_external_interrupt_irqoff+0x1f>
> >   1f: c3                    retq
> >
> > The question is whether using current_stack_pointer as an output is
> > actually a valid way to tell the compiler it should not clobber RSP.
> > Intuitively it is, but explicitly adding RSP to the clobber list
> > sounds a bit more bulletproof.
>
> Ok, I am wrong: according to
> https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html it's incorrect to
> list RSP in the clobber list.

You could force `entry` into a register:
diff --git a/arch/x86/kvm/vmx/vmx.c b/arch/x86/kvm/vmx/vmx.c
index 4d22b1b5e822..083a7e980bb5 100644
--- a/arch/x86/kvm/vmx/vmx.c
+++ b/arch/x86/kvm/vmx/vmx.c
@@ -6277,7 +6277,7 @@ static void
handle_external_interrupt_irqoff(struct kvm_vcpu *vcpu)
 #endif
                ASM_CALL_CONSTRAINT
                :
-               THUNK_TARGET(entry),
+               [thunk_target] "a"(entry),
                [ss]"i"(__KERNEL_DS),
                [cs]"i"(__KERNEL_CS)
        );

(https://stackoverflow.com/a/48877683/1027966 had some interesting
feedback to this problem)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdntYiM8afOA2nX6dtLp9FWk-1E3Mc%2BoVRJ_Y8X-9kr81Q%40mail.gmail.com.
