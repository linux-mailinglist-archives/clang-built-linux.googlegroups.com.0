Return-Path: <clang-built-linux+bncBC25XUMBOQIMTKPG6UCRUBFELVUBG@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF0A1CE247
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 20:09:14 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id m15sf3818975qka.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 11:09:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589220553; cv=pass;
        d=google.com; s=arc-20160816;
        b=T7wbZ2DaJTZD5T/5GrJHLO5rXVEKPqgjVioX+KpYSW0XMptyuz2/7uOquhltS4jYe+
         LZiqwEHW26+T/enRqwsZuT+es+NTKoF6fco6gA2YS/pyTc8jK18IMDRpCLEsJajGE1bv
         Z34/rlitavLX/Yl6t4EW9lXff+02Fx4tVDAu5xHwHS0MKUUFNPvCs+h38ou2fivxrED1
         kKKp0IGXxVFfmNwikLtEJCzwjbqxj0aJ0Y8QP59YbtFvhjqybAyey6iha9aOqyRAmxSq
         0NATm3HTFbBzJXx3/A+jIggigMcoThwGgytYBk9Fe9SlNHWCez7RCyfk0FUOG5lr3QRn
         zeAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Cantj2HwfJcNxFhQSJj+GpnMg/Xui2oCmWe0LLAJT8Y=;
        b=O1QW3Ta9OyWQe4CAYKFLUVD04KLqwEm5KmyFHG/wUovDUkU2xbHfL8f2Z0mG1n4vJc
         itL30IP84w0b79GPKazAufjJlj4VCZZDegta11tvSyHSouK7e+jROgvxQq4wNO/znK/H
         j7rUmpk3NS4s/Hx4TAYLP9IMO51eyHZBBO2gAOgbjH8ZGnm7FIYs39YReGihSPrbczu/
         0HW+4F03eX9PSNKm7B6LltdTr3hZmOhWjXomjcQ53CCk0hcIy7iV6p98T0NZWol4HyzD
         M5C9yFlA3XRWRwKcnNoiRaAt/ybBWaOklXcSnBNU0AYGJx8VQ9P0WNEukmuGSlb9+qgp
         fV0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Fb1AEy/a";
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cantj2HwfJcNxFhQSJj+GpnMg/Xui2oCmWe0LLAJT8Y=;
        b=J8WIl1BJJrNOPOkZjxhrkqKkg2I9/TFSzs0qArzdM9j52apmkzTmPplalJky6cFxTg
         cih4HreBhh8NkGWaxALk4ktcf+T5pJeBtrY+TpW0SzUjwSStToCNEGklwyY1gjj0mAwx
         Iw695oUzEfZ1jdSOu4wTWHI3o3BTpjmiRg56/hWZNYlK7eGBJeOP14mfhePM+Gn+sKb0
         7i3vL55kV7AwudZyJSd+bVYJvHaF3N5PrGh0XuJol/vrJwJVZYkg3EDP8klFAm0/1Lhi
         JBjLozejNsyUNY27vBFN0i/fn0qPvBKuMdUmQ19iaVR2FHv/KG0wmX31SDC7/Gr590rG
         NGlQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cantj2HwfJcNxFhQSJj+GpnMg/Xui2oCmWe0LLAJT8Y=;
        b=nCnZ7AE//GnCS9ASRpqzHclFwnePsOC/0oxFb9JmU1GZJvnxZywvPMisg4/a7ICnOr
         7hXm8LEPxXWeqVbaSdQnzfskayrHw08C6TS65i6NtxI9pSfqYKFzeO8xVciujTRsUst7
         lXPkx/iSJtGY6L9XI5Zg8wRO1Gt79nBQb2iiteHmNGvGACgdlK210IAKM8C+gLL8xQgd
         S61EMuLrMVBGFTs0glEJqg+0832FxkH+NCqpcMi8a397qYkIIdAsgym6axItSOXf+gW3
         /HfotDqv3CbfYDdV8LPlRO2JK0It1cqnSzID1BCo3frvOrBBAMlDwNq41ex5Dkm2svjY
         uwnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cantj2HwfJcNxFhQSJj+GpnMg/Xui2oCmWe0LLAJT8Y=;
        b=C0s54j6y+S85StHfLG+4ylmV/p/zNALTIav06vGbW8e0wAuZqF/1v960nhfjN7qb8i
         q4MlHoPuJONirvzUKID5ZdOTrv9gl+ObV5aBo5UXLJpo++0udzZ/0g9HXkI6/94CTDbQ
         uiaKa76Z64Wa5bxkQBgW4adJMppypjRaT/HMVqb27v/eAnvNDrZDSy0UIi1SLm1mHuXy
         f9/+PEQrujAu/S+SkU71w1NOwHzeex5dpMcQJJ+nRe5AJtClt0SO/UfRRkLBWGPvIvS/
         fkKsXHCaFg+ceA1Ad1GbF19xFkPC0xOZEoyn9plwDMBuzDiU5hqwWfd51NzItYBcKMxU
         ucrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaqzOBgzlSCgdgnaxOdHLtRvJGxO0gbe6W/00ImNQcuCBS/0crG
	hap748yAuSdyG1orAEeS5YE=
X-Google-Smtp-Source: APiQypKyNDEUCxl6vRPdDiAxNeC5BiQSVHFLjyLUXvO+i0deXmOUssgtdsz1pHAsLL8l7HNTGJqL7A==
X-Received: by 2002:a05:6214:18c9:: with SMTP id cy9mr16441960qvb.35.1589220553320;
        Mon, 11 May 2020 11:09:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5608:: with SMTP id ca8ls1541876qvb.6.gmail; Mon, 11 May
 2020 11:09:13 -0700 (PDT)
X-Received: by 2002:ad4:4626:: with SMTP id x6mr4230181qvv.233.1589220553010;
        Mon, 11 May 2020 11:09:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589220552; cv=none;
        d=google.com; s=arc-20160816;
        b=QCuaAjzfW5S89KiERnjmNb3O7r2KMnmUlTdYXvM5xvw3nq2ec3E4Cu5bv4S0yMecey
         i/mgLMcHogMDyFzk9OyGrQ+oT7mwdT6ZXkDpPAEVouNgUB3PJYzJpWTTxr9iHnbwxaQ7
         MRv83BjUkuudK9pCtwHuP5C+0vwQhOt7Ij4gaMGQ2gQ2GCwIR8udBnJAb7D0nexUaPoP
         UsI1F/tLmjmIscxqUlHvniLAd6tebWNsXe9IwADqlC/VVPJvcMM4N2mt2guWdSjvbKAO
         P+k38cWnm0vX0ex8lRJqoT2BSCzzydPv0+xGjjKBhm/JbxnQsEfz2sWjlMnezgR7U/o4
         5ULg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E2lGnntoMcDte3ggNmclJo3GyMi8lXxS2V6uxJFiNqM=;
        b=sSy2aEgGpMG3iA9kQbaEV6hYFQXyIZ/fAKXH09MXH8PbRVYC/muOHHtTRF2TCGvBQ4
         bSmHHJfQg/jWpQ3uc19+eXVltS53Cpwnk1c5DARN2udo2eU975jryGYL7j1t/AlWnvPK
         o3ubggQCCdu1au9sN0s1UvUx84XkN2AGvNjzkcnY3cct3PkCL/RP1yj60muvzVL2JqmS
         p7MqLCepOtTTZZ2+JcQL5TbB3VA2eZeV15GEp6kU+vIbWo3wLxWWGgNZT9hx6+oiPLbL
         r+hWcRsGmHhsb6IF+uatbF9MnA9gFvJCx7NyqBT9VmaKuO8EGsL1LaiAKwAQTgsGnmfU
         Gnjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Fb1AEy/a";
       spf=pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=brgerst@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id v73si436327qka.5.2020.05.11.11.09.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 11:09:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id f5so3524575iow.10
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 11:09:12 -0700 (PDT)
X-Received: by 2002:a6b:b512:: with SMTP id e18mr16445980iof.168.1589220552319;
 Mon, 11 May 2020 11:09:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200504230309.237398-1-ndesaulniers@google.com> <CAKwvOdmspKUknbzDn9kY2jMgkFw=Ktvst0ZtwambDOfybqJGWw@mail.gmail.com>
In-Reply-To: <CAKwvOdmspKUknbzDn9kY2jMgkFw=Ktvst0ZtwambDOfybqJGWw@mail.gmail.com>
From: Brian Gerst <brgerst@gmail.com>
Date: Mon, 11 May 2020 14:09:01 -0400
Message-ID: <CAMzpN2iDottAY3p=GS0A_7XX7bpmWsmSOEcztMXNEEvcwHirjg@mail.gmail.com>
Subject: Re: [PATCH] x86: support i386 with Clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	David Woodhouse <dwmw2@infradead.org>, Arnd Bergmann <arnd@arndb.de>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Dmitry Golovin <dima@golovin.in>, 
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: brgerst@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Fb1AEy/a";       spf=pass
 (google.com: domain of brgerst@gmail.com designates 2607:f8b0:4864:20::d43 as
 permitted sender) smtp.mailfrom=brgerst@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, May 11, 2020 at 1:26 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Bumping for comment+review.
>
> On Mon, May 4, 2020 at 4:03 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > GCC and Clang are architecturally different, which leads to subtle
> > issues for code that's invalid but clearly dead. This can happen with
> > code that emulates polymorphism with the preprocessor and sizeof.
> >
> > GCC will perform semantic analysis after early inlining and dead code
> > elimination, so it will not warn on invalid code that's dead. Clang
> > strictly performs optimizations after semantic analysis, so it will warn
> > for dead code.
> >
> > Neither Clang nor GCC like this very much with -m32:
> >
> > long long ret;
> > asm ("movb $5, %0" : "=q" (ret));
> >
> > However, GCC can tolerate this variant:
> >
> > long long ret;
> > switch (sizeof(ret)) {
> > case 1:
> >         asm ("movb $5, %0" : "=q" (ret));
> >         break;
> > case 8:;
> > }
> >
> > Clang, on the other hand, won't accept that because it validates the
> > inline asm for the '1' case *before* the optimisation phase where it
> > realises that it wouldn't have to emit it anyway.
> >
> > If LLVM (Clang's "back end") fails such as during instruction selection
> > or register allocation, it cannot provide accurate diagnostics
> > (warnings/errors) that contain line information, as the AST has been
> > discarded from memory at that point.
> >
> > While there have been early discussions about having C/C++ specific
> > language optimizations in Clang via the use of MLIR, which would enable
> > such earlier optimizations, such work is not scoped and likely a
> > multi-year endeavor.
> >
> > We also don't want to swap the use of "=q" with "=r". For 64b, it
> > doesn't matter. For 32b, it's possible that a 32b register without a 8b
> > lower alias (i.e. ESI, EDI, EBP) is selected which the assembler will
> > then reject.
> >
> > With this, Clang can finally build an i386 defconfig.
> >
> > Reported-by: Arnd Bergmann <arnd@arndb.de>
> > Reported-by: David Woodhouse <dwmw2@infradead.org>
> > Reported-by: Dmitry Golovin <dima@golovin.in>
> > Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
> > Link: https://bugs.llvm.org/show_bug.cgi?id=33587
> > Link: https://github.com/ClangBuiltLinux/linux/issues/3
> > Link: https://github.com/ClangBuiltLinux/linux/issues/194
> > Link: https://github.com/ClangBuiltLinux/linux/issues/781
> > Link: https://lore.kernel.org/lkml/20180209161833.4605-1-dwmw2@infradead.org/
> > Link: https://lore.kernel.org/lkml/CAK8P3a1EBaWdbAEzirFDSgHVJMtWjuNt2HGG8z+vpXeNHwETFQ@mail.gmail.com/
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > Note: this is a resend of:
> > https://lore.kernel.org/lkml/20180209161833.4605-1-dwmw2@infradead.org/
> > rebased on today's Linux next, and with the additional change to
> > uaccess.h.
> >
> > I'm happy to resend with authorship and reported by tags changed to
> > suggested by's or whatever, just let me know.
> >
> > Part of the commit message is stolen from David, and part from Linus.
> > Shall I resend with David's authorship and
> > [Nick: reworded]
> > ???
> >
> > I don't really care, I just don't really want to carry this out of tree
> > for our CI, which is green for i386 otherwise.
> >
> >
> >  arch/x86/include/asm/percpu.h  | 12 ++++++++----
> >  arch/x86/include/asm/uaccess.h |  4 +++-
> >  2 files changed, 11 insertions(+), 5 deletions(-)
> >
> > diff --git a/arch/x86/include/asm/percpu.h b/arch/x86/include/asm/percpu.h
> > index 2278797c769d..826d086f71c9 100644
> > --- a/arch/x86/include/asm/percpu.h
> > +++ b/arch/x86/include/asm/percpu.h
> > @@ -99,7 +99,7 @@ do {                                                  \
> >         case 1:                                         \
> >                 asm qual (op "b %1,"__percpu_arg(0)     \
> >                     : "+m" (var)                        \
> > -                   : "qi" ((pto_T__)(val)));           \
> > +                   : "qi" ((unsigned char)(unsigned long)(val))); \
> >                 break;                                  \
> >         case 2:                                         \
> >                 asm qual (op "w %1,"__percpu_arg(0)     \
> > @@ -144,7 +144,7 @@ do {                                                                        \
> >                 else                                                    \
> >                         asm qual ("addb %1, "__percpu_arg(0)            \
> >                             : "+m" (var)                                \
> > -                           : "qi" ((pao_T__)(val)));                   \
> > +                           : "qi" ((unsigned char)(unsigned long)(val))); \
> >                 break;                                                  \
> >         case 2:                                                         \
> >                 if (pao_ID__ == 1)                                      \
> > @@ -182,12 +182,14 @@ do {                                                                      \
> >
> >  #define percpu_from_op(qual, op, var)                  \
> >  ({                                                     \
> > +       unsigned char pfo_u8__;                         \
> >         typeof(var) pfo_ret__;                          \
> >         switch (sizeof(var)) {                          \
> >         case 1:                                         \
> >                 asm qual (op "b "__percpu_arg(1)",%0"   \
> > -                   : "=q" (pfo_ret__)                  \
> > +                   : "=q" (pfo_u8__)                   \
> >                     : "m" (var));                       \
> > +               pfo_ret__ = (typeof(var))(unsigned long)pfo_u8__;       \
> >                 break;                                  \
> >         case 2:                                         \
> >                 asm qual (op "w "__percpu_arg(1)",%0"   \
> > @@ -211,12 +213,14 @@ do {                                                                      \
> >
> >  #define percpu_stable_op(op, var)                      \
> >  ({                                                     \
> > +       unsigned char pfo_u8__;                         \
> >         typeof(var) pfo_ret__;                          \
> >         switch (sizeof(var)) {                          \
> >         case 1:                                         \
> >                 asm(op "b "__percpu_arg(P1)",%0"        \
> > -                   : "=q" (pfo_ret__)                  \
> > +                   : "=q" (pfo_u8__)                   \
> >                     : "p" (&(var)));                    \
> > +               pfo_ret__ = (typeof(var))(unsigned long)pfo_u8__;       \
> >                 break;                                  \
> >         case 2:                                         \
> >                 asm(op "w "__percpu_arg(P1)",%0"        \
> > diff --git a/arch/x86/include/asm/uaccess.h b/arch/x86/include/asm/uaccess.h
> > index d8f283b9a569..cf8483cd80e1 100644
> > --- a/arch/x86/include/asm/uaccess.h
> > +++ b/arch/x86/include/asm/uaccess.h
> > @@ -314,11 +314,13 @@ do {                                                                      \
> >
> >  #define __get_user_size(x, ptr, size, retval)                          \
> >  do {                                                                   \
> > +       unsigned char x_u8__;                                           \
> >         retval = 0;                                                     \
> >         __chk_user_ptr(ptr);                                            \
> >         switch (size) {                                                 \
> >         case 1:                                                         \
> > -               __get_user_asm(x, ptr, retval, "b", "=q");              \
> > +               __get_user_asm(x_u8__, ptr, retval, "b", "=q");         \
> > +               (x) = x_u8__;                                           \
> >                 break;                                                  \
> >         case 2:                                                         \
> >                 __get_user_asm(x, ptr, retval, "w", "=r");              \
> > --
> > 2.26.2.526.g744177e7f7-goog
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers

This looks like the same issue that we just discussed for bitops.h.
Add the "b" operand size modifier to force it to use the 8-bit
register names (and probably also needs the "w" modifier in the 16-bit
case).

--
Brian Gerst

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMzpN2iDottAY3p%3DGS0A_7XX7bpmWsmSOEcztMXNEEvcwHirjg%40mail.gmail.com.
