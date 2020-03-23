Return-Path: <clang-built-linux+bncBCCMH5WKTMGRBOXV4PZQKGQEPGYXU4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id F24D018FC4D
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 19:06:50 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id 144sf1869102lfj.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 11:06:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584986810; cv=pass;
        d=google.com; s=arc-20160816;
        b=d3VloboEz7KTNPGG5C7t2RJRl8Zu1b1ktkbn0uFG87pBxTx87T9oSQSKlZbRpciWi3
         ANlGe9/H4BbHofiP7eyXzFHymOwgrq/m/jKT2MWAB+uS+Tp/t7PQ1OJgEHIRX7s/1MHG
         /4VIF9yXocv3q2fhipOk492u4Ya7SknwZPGObcdJ+jk4+VI5+w+DwLfDLF7rFi97Ih7B
         7Wh9ircWxPxvX34TOPqaPVGQQUGLJWbLyotBuTn1UECiFQjPytstgCkwUU+ZqgfSwS7J
         MbIX7mTUm8AyA37clpciNj/WjdVVCgXgpUxvXYK+8YAp60UNBdIF2kWkhaJQ6fckgbrD
         VPHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=49EVQ5fngd0C4IqbCTlDwM51e2bFKVNYue6D8/SixgY=;
        b=r/KLdMZ9c6EWmDEQmBYJQS3XezatkeKQFl2DgS2IzTbkQHLbrS7xQnFiMUl2eTlcvU
         afkQT+qxaFk0lHpFowAg5ljW3KtykQ1aTMGBsj8+D1yMeFaBDI8DMTcg7i+CmJrl9ffj
         SMnEWzTh4nEEQMJHqtX8FfkSKUR4QFtfiwR4K4XINyvJP17ho9pYWwpJhc7rmmtzYOeb
         8O3hMfpeohc5himlC4zxw2f/IL8IybXwyD8RUy5z+5rGYgDQtYjzb4WcQNh8bonjSUlk
         V5sldDUyA76kTXvHO/foEWr+2DIloLkWzdzT+0/koow0IRKUExZd7I8slLSXHIOd76m1
         bK1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nTKGbJ64;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=49EVQ5fngd0C4IqbCTlDwM51e2bFKVNYue6D8/SixgY=;
        b=jsAXWDVzavnH51NKDU/qBYepyeMS/Lg2YxYMtQAbZgQsJn0qe2pBrZulr6hnIbAtU8
         C675kWGH/9tZ9+z43lnT3aG+UbmOTr50g7wcMpNb/lQ+L9UuVI41eLUJFhG6w6zbwIEd
         fJLbl9xAUD7+nK3yUWcK7f4mDaCPSo/nIgmq0SGQnrrbHf7YKIt63BQtfX8VaJzvr+jh
         2dsz+FU98zLRU/SwCpkPrq0BbB8rrme7v0PJT/nVmleH7klozSWzcQ+qZqy/A9LPrEFB
         5K3lZiXsEqjhor6CgY4dtXoSxOjzl8kqFiYD8DxieJi3u9HPPEsb0SSO1cGxeJw+jGVl
         G9pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=49EVQ5fngd0C4IqbCTlDwM51e2bFKVNYue6D8/SixgY=;
        b=uFUmfHpgxke0FnZlPPcfXos5tRhLtwoOcesILBHyCzFUcsC3VEOD0z3vlXCP6V049h
         d0HoeCskKTERIhmFAIdmHmLCduuhOTxjYK/Ez1g7wuhlpSvVq1xgeSrgnNBNz2RGjyvX
         B5Uu9CxQ9Pan41IZjjrGMgtF6Ud9xW2vf9j2nxbnINHzvPjRPgDo5jDNnJ0wx9nIzPtq
         j1rOtHq7954jfm2YuarOWQNLd09S0b8RRuYvl1rbTn/iJeTDERfzdt2IY0TS8q8vXJJX
         n5EQ2xZoHjSID17sOe8CBgdA53DIk1Z4gLcmXuPSAMouB2z23H+UDZNNShhGF44gep6U
         ElHw==
X-Gm-Message-State: ANhLgQ1jETMzM/Jojne99qRC8zj/4V6GwA/MDGALiyk10m6Di2I/ErNH
	miebpg+Dmq4WRlVVwqRZwQ8=
X-Google-Smtp-Source: ADFU+vuNzzt56jTSiPglUs3eNTUVfdcaXqxgCM0SZIMjjmtL1UhaAoPGgckP2qjv5nk+EpImMg3Cpw==
X-Received: by 2002:a05:6512:3eb:: with SMTP id n11mr10229460lfq.32.1584986810538;
        Mon, 23 Mar 2020 11:06:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8e69:: with SMTP id t9ls199977ljk.4.gmail; Mon, 23 Mar
 2020 11:06:49 -0700 (PDT)
X-Received: by 2002:a2e:9350:: with SMTP id m16mr14645298ljh.94.1584986809854;
        Mon, 23 Mar 2020 11:06:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584986809; cv=none;
        d=google.com; s=arc-20160816;
        b=VdEO30Pt+EaoOSJ6J8BnElAKIDLfSoq3zOa0oegJyyOoJKBPh2wRiMJhWus0vVP1M6
         rvo2v6XeQTipPglznyoTjlE6PKBwbmzwQAYgm8HBNEZW6DHrlHDgKVE190e0CY95kod3
         7FtmXX/hWhDmrJajJm5/PaF1QX2kmaGlyNkY/R3BrnzBo7Ck6/DA9nSH8vXxITsjfYnP
         8u0+aWeSf3C5cKPiNWh2defP6IShlz3I1B5fBaSD6ZLT6l6DTF6O/LamsRw8v+VsMLoi
         +H8O2vBjMKyIRGqmPF60sARFmD6NF0no5LKb9ZCCNIPBwZMcWsgZlrPfAuFBOQxctKKk
         R99A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hPUm/HhpONACSgj8NcmzE9a98krdtrzc27JDL5LBNKQ=;
        b=dsBPXD/ZTUbR/DdeJKwZXLMRogVLvEtGXpDRuUOlXkuVgQ51fHV6QGovKo7kPxNZ+w
         7W8FklLPzlKBY3mSh9/glIjEWDuHH7dQWo0INHFGOYaNkmqscCERyJnknMIoa4cmoBdD
         tO/Gml3ArXNfLbVBOu6YFf+998GYgaJ1c6UDA/zH7VS73gVRe/tJ+oM/98Mk1uSA2hy0
         dLacJMtCUzq7ySCZx7V73NVR0eKnbnulvE62cBKf5j5XyIZgn8vsIlBIWH/X0+S4tNNZ
         fYOQQr5YjDKNCB30xJQE8XlwVsO+e5q5CVwa6r/9SLnMK9TY2dKFJ//DK/xaMxUB7UHI
         3bPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nTKGbJ64;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q17si657755lfe.4.2020.03.23.11.06.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 11:06:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id b2so18257344wrj.10
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 11:06:49 -0700 (PDT)
X-Received: by 2002:a05:6000:100f:: with SMTP id a15mr29739901wrx.382.1584986808806;
 Mon, 23 Mar 2020 11:06:48 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000277a0405a16bd5c9@google.com> <CACT4Y+b1WFT87pWQaXD3CWjyjoQaP1jcycHdHF+rtxoR5xW1ww@mail.gmail.com>
 <5058aabe-f32d-b8ef-57ed-f9c0206304c5@redhat.com> <CAG_fn=WYtSoyi63ACaz-ya=Dbi+BFU-_mADDpL6gQvDimQscmw@mail.gmail.com>
 <20200323163925.GP28711@linux.intel.com> <CAKwvOdkE8OAu=Gj4MKWwpctka6==6EtrbF3e1tvF=jS2hBB3Ow@mail.gmail.com>
 <CAKwvOdkXi1MN2Yqqoa6ghw14tQ25WYgyJkSv35-+1KRb=cmhZw@mail.gmail.com> <CAG_fn=WE0BmuHSxUoBJWQ9dnZ4X5ZpBqcT9rQaDE_6HAfTYKQA@mail.gmail.com>
In-Reply-To: <CAG_fn=WE0BmuHSxUoBJWQ9dnZ4X5ZpBqcT9rQaDE_6HAfTYKQA@mail.gmail.com>
From: "'Alexander Potapenko' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 19:06:37 +0100
Message-ID: <CAG_fn=Uf2dDo4K9X==wE=eL8HQMc1an8m8H18tvWd9Mkyhpskg@mail.gmail.com>
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in handle_external_interrupt_irqoff
To: Nick Desaulniers <ndesaulniers@google.com>
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
X-Original-Sender: glider@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nTKGbJ64;       spf=pass
 (google.com: domain of glider@google.com designates 2a00:1450:4864:20::444 as
 permitted sender) smtp.mailfrom=glider@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Alexander Potapenko <glider@google.com>
Reply-To: Alexander Potapenko <glider@google.com>
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

On Mon, Mar 23, 2020 at 6:55 PM Alexander Potapenko <glider@google.com> wrote:
>
> I've reduced the faulty test case to the following code:
>
> =================================
> a;
> long b;
> register unsigned long current_stack_pointer asm("rsp");
> handle_external_interrupt_irqoff() {
>   asm("and $0xfffffffffffffff0, %%rsp\n\tpush $%c[ss]\n\tpush "
>       "%[sp]\n\tpushf\n\tpushq $%c[cs]\n\tcall *%[thunk_target]\n"
>       : [ sp ] "=&r"(b), "+r" (current_stack_pointer)
>       : [ thunk_target ] "rm"(a), [ ss ] "i"(3 * 8), [ cs ] "i"(2 * 8) );
> }
> =================================
> (in fact creduce even throws away current_stack_pointer, but we
> probably want to keep it to prove the point).
>
> Clang generates the following code for it:
>
> $ clang vmx.i -O2 -c -w -o vmx.o
> $ objdump -d vmx.o
> ...
> 0000000000000000 <handle_external_interrupt_irqoff>:
>    0: 8b 05 00 00 00 00    mov    0x0(%rip),%eax        # 6
> <handle_external_interrupt_irqoff+0x6>
>    6: 89 44 24 fc          mov    %eax,-0x4(%rsp)
>    a: 48 83 e4 f0          and    $0xfffffffffffffff0,%rsp
>    e: 6a 18                pushq  $0x18
>   10: 50                    push   %rax
>   11: 9c                    pushfq
>   12: 6a 10                pushq  $0x10
>   14: ff 54 24 fc          callq  *-0x4(%rsp)
>   18: 48 89 05 00 00 00 00 mov    %rax,0x0(%rip)        # 1f
> <handle_external_interrupt_irqoff+0x1f>
>   1f: c3                    retq
>
> The question is whether using current_stack_pointer as an output is
> actually a valid way to tell the compiler it should not clobber RSP.
> Intuitively it is, but explicitly adding RSP to the clobber list
> sounds a bit more bulletproof.

Ok, I am wrong: according to
https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html it's incorrect to
list RSP in the clobber list.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG_fn%3DUf2dDo4K9X%3D%3DwE%3DeL8HQMc1an8m8H18tvWd9Mkyhpskg%40mail.gmail.com.
