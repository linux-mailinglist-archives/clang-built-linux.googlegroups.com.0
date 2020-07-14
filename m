Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBVUYXD4AKGQEAHN4DXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AF421FDBE
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 21:49:44 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id n32sf13090442pgb.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 12:49:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594756182; cv=pass;
        d=google.com; s=arc-20160816;
        b=TSAW0OErY+Pb+St8OYru5VaIWChi4Ro+MBlKHiagkG+OsGimF75NbHhj/PTBxtb8o0
         K+44eM0VzLy8zqHXHBPvwQqFeagonTp6/lCs3bNVzPFQsaTERO+9BBook2iRwJ1JcYFA
         vV1omVeiMaSTzbSgUu1qu34V4BDPXygJITtX3jyYtTjCWzSuTG3KjECDXlJe7+fzp6jR
         lRgxcoi2HbAEpAh68ZFuTzDb0pU9dAdXhqQng24O5VHNDWmF+fH1l3rnk7M9P9w4ccIE
         I35a/PPnKu09dCwKEPz4uXRXkJXjO49Hn18C3+7vUYq+KsEmbDw0aadQ9yZbIdAN2izM
         RdpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=wGvmgsFIxHWrmKaXpXhd7n9Sucd8s7qndKLop89J7jo=;
        b=nC2aBZHwHeGbu4lVr/+SplbJQNJIv7L35IEPFw20MYtzdPx1RDRYwjZTuP8qaw1D/h
         XkimA63g871/pocouZJtrOU1tH0ETzo1nJf/6U6mEAA01dO9yA7ga+F71Fb5U4AfolM0
         vHv9qWz2zGvphALcATPw4fDvP216NA+iX57a3OSXjIq9Q0PQxuQy4+fr77Iuu4OgwEjj
         3kM1iSt1vfe6L5tiDYPqZXhDUeK2wvYpkNbNE7D6j6/8xV1tpjyNUpKiRk9y3oxszUxw
         dOiXhTd32mc3FTG+XJ1XK9q04EJFjT+Cg9fL2AmpZAYQfWrUbt3IlaLta7UdSz3zv2Aa
         femA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jGYsdjTD;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wGvmgsFIxHWrmKaXpXhd7n9Sucd8s7qndKLop89J7jo=;
        b=E+sUneXHNVcRPB8m79TPVb9nR3bG/Qib3JCbRL2cpW7pt8OWsffzcYQKPbWgYvF06b
         sm9X/2807y6vGslBI13YLUsVv92U0DvfkkeNarvYHN3s32RWoIH4d3LM1CQswNDRJqvZ
         4Xgh+h4njn/C+V+I5qAfv+YWaMSDPtMi+8uLBd/xcHbL9/A0UL3pk2qqCqJD1sMRnBHv
         0D+p15lOtIgVeV5sw0UvG758WVOMtjiPT74CV0J9X4fFTJtv0uZ70b8onjFxDDYL8atf
         +kyXV6qJMkFd0mDDXoUbtu/CrW3VVVqghn3yKfFRB732lWxn3FMXXFOwZLKl+ZQIxNMH
         RaSg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wGvmgsFIxHWrmKaXpXhd7n9Sucd8s7qndKLop89J7jo=;
        b=W7DF6nt8+JqihQRgvEOa53VFfIXafuoTH8qPCbWJSOnuj+6gSlqXcIVbBoNQxGsjm2
         quBqWtRdYAqzleGVaB6Vf0GwLczniXFCsXto++dSrskoIF1/uUC2VocG7GcGW69k6HR3
         mM0pn5CYpiQJZ8MZDU3Hoy/MY3/QCBjic4DZuxwNLL2UGXv8x2zTVCynWSE/fR1Xuz+x
         /R3ARE1sxBiJzScXiaoKB2Ma0reZotpzzeNdb8qOrBgFWdKBy1EC2f/t68p7s3oWRGc6
         +gFV1vi+z1n1s5r5M/L2boOrMV1vIceQsdxxhNowbZ6qPD79asiwayryTpbXtPJkfsc9
         zcxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wGvmgsFIxHWrmKaXpXhd7n9Sucd8s7qndKLop89J7jo=;
        b=UyHKDTHdTyPAGHA//b6kVEul2luGAZGDQLI04a/O4uNr0NYYxLhCcWstuXUvRcwooH
         j30WIn3PULFsseSRbw79GsM04Xsinf2qXvUniYyEwH550kb5iCBL3jrgM/QbTqxO2D32
         x7Jv1dng3De+5Pmri8N26JEmNX5sOs2576ZfD+dOYteAZX00N4cb1jgT8W41abwxLQZ6
         vYXikGW00JZVjYUnYbDI9SkBRYBkce1Y91xBfVYEciQj/dWVqd5w4Nx4o0eIX2Ywq+dY
         RizEGDv6u+q4X64CBx+WVRNfUBNallfTUue8jjqTEQAGGM5T8Do9X9xs9vYipkNaek7l
         AGQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FpiAg/zEVjsKd0BDeIBi/aUZCWHMCBdm0GX84SN4w2dO5IUPW
	Z+PVbiL4epoPoew3/L5mWaY=
X-Google-Smtp-Source: ABdhPJzX++AKUfj4dyNkE9sWYfuwFfIEkZQENG3IvX1cJHlT1QSiVfydxeuwFRUQZ1JwHD3RGJoUYQ==
X-Received: by 2002:a63:a119:: with SMTP id b25mr4550231pgf.10.1594756182580;
        Tue, 14 Jul 2020 12:49:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:525b:: with SMTP id s27ls1521pgl.11.gmail; Tue, 14 Jul
 2020 12:49:42 -0700 (PDT)
X-Received: by 2002:a63:a843:: with SMTP id i3mr4755785pgp.190.1594756182036;
        Tue, 14 Jul 2020 12:49:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594756182; cv=none;
        d=google.com; s=arc-20160816;
        b=LyrU/9khBloT1R95/6QoRYLfyqPupCAooZpx8tUS/tqqUzhjPeCyIlu9yqcyWX/wQB
         tiJiU11EZzvEe54krwUwMW9GVg8n0Ce3+mA6s+rjmUIK2qkuNIZpN/YprTU+E4YychfU
         IXYHzKmI1Pcx84PcygfGX/a8simbc9TJxR0rUN7iu84Ue3/D9/fY5JB/8ZzWMwMHmgOw
         x9Lb9/Cq7OYb5uPRTaXtXjw52jjtJs3zDck/U/dcKQ+kLQfc33H8iCokJR84avvRARKX
         R73a9R7OWyEg9syh9OMLcZ21FTkyEHIPf60J6hjFSHY7+2m3/Ex5DyLvvCXuDzDdwEsn
         hzNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pQDHVzvnIzTFry+DorbRFOJopbrDukvS7CMb8fH8H04=;
        b=tJQIBnH5WMCkpD1PeeQ64TeSDjZYc9WDrZG2SCdkU/wXkhmdwHr0cvIk9Qajolk9yC
         5s5XGm65T5Y/ueD3N8HRv0gnZu3xCRHw/uvTm84yDFaequeIMwemqKColNw3cXnRp53/
         uAdXQXabqFZdBcMCgXnimb3Mh1roRl6gBC/tr6VZJHlbpAUd2peT5FAAtOKu+8W25pqu
         enCOBcMd52je9Vrq5k54xR9ti+9mX2hojXt7uJmz32Mx4NTor0Ka/iQi+9kRd7oCn4jT
         232VvTikH+/a8wwWin5kBnakT9ZSZU56oTN3sQeVX+R2IvvPrful52UP01MWOWeZohvM
         +zyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jGYsdjTD;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id ob1si126912pjb.1.2020.07.14.12.49.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 12:49:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id d18so18634003ion.0
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 12:49:42 -0700 (PDT)
X-Received: by 2002:a02:c785:: with SMTP id n5mr7750863jao.75.1594756181609;
 Tue, 14 Jul 2020 12:49:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200714111103.14591-1-sedat.dilek@gmail.com> <CAKwvOdk3WSMhMxxaWfFeWYkR=xYgwrREckS+X5Yg5QeC48UVrg@mail.gmail.com>
In-Reply-To: <CAKwvOdk3WSMhMxxaWfFeWYkR=xYgwrREckS+X5Yg5QeC48UVrg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 21:49:30 +0200
Message-ID: <CA+icZUVSc3pKQvvNYFw-c-iUTgbkhbXYotkZeEgkhTnL6dg7sA@mail.gmail.com>
Subject: Re: [PATCH v2] x86/entry: Fix vectors to IDTENTRY_SYSVEC for CONFIG_HYPERV
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Alexandre Chartre <alexandre.chartre@oracle.com>, 
	Wei Liu <wei.liu@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <caij2003@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jGYsdjTD;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jul 14, 2020 at 7:46 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Jul 14, 2020 at 4:11 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > When using Clang's Integrated Assembler (LLVM_IAS=1) we fell over
> > ClangBuiltLinux (CBL) issue #1043 where Jian Cai provided a patch.
> >
> > With Jian's patch applied another issue raised up when CONFIG_HYPERV=m.
> >
> > It turned out that the conversion of vectors to IDTENTRY_SYSVEC in
> > case of CONFIG_HYPERV was incomplete and fails with a build error:
> >
> > <instantiation>:9:6: error: expected absolute expression
> >  .if HYPERVISOR_REENLIGHTENMENT_VECTOR == 3
> >      ^
> > <instantiation>:1:1: note: while in macro instantiation
> > idtentry HYPERVISOR_REENLIGHTENMENT_VECTOR asm_sysvec_hyperv_reenlightenment sysvec_hyperv_reenlightenment has_error_code=0
> > ^
> > ./arch/x86/include/asm/idtentry.h:627:1: note: while in macro instantiation
> > idtentry_sysvec HYPERVISOR_REENLIGHTENMENT_VECTOR sysvec_hyperv_reenlightenment;
> > ^
> > <instantiation>:9:6: error: expected absolute expression
> >  .if HYPERVISOR_STIMER0_VECTOR == 3
> >      ^
> > <instantiation>:1:1: note: while in macro instantiation
> > idtentry HYPERVISOR_STIMER0_VECTOR asm_sysvec_hyperv_stimer0 sysvec_hyperv_stimer0 has_error_code=0
> > ^
> > ./arch/x86/include/asm/idtentry.h:628:1: note: while in macro instantiation
> > idtentry_sysvec HYPERVISOR_STIMER0_VECTOR sysvec_hyperv_stimer0;
> >
> > I and Nathan double-checked the hyperv(isor) vectors:
> >
> > $ rg --no-heading "HYPERVISOR_REENLIGHTENMENT_VECTOR|HYPERVISOR_STIMER0_VECTOR"
> > $ rg --no-heading "HYPERV_REENLIGHTENMENT_VECTOR|HYPERV_STIMER0_VECTOR"
> >
> > Fix these typos in arch/x86/include/asm/idtentry.h:
> >
> > HYPERVISOR_REENLIGHTENMENT_VECTOR -> HYPERV_REENLIGHTENMENT_VECTOR
> > HYPERVISOR_STIMER0_VECTOR         -> HYPERV_STIMER0_VECTOR
> >
> > For more details see CBL issue #1088.
> >
> > With both fixes applied I was able to build/assemble with a snapshot
> > version of LLVM/Clang from Debian/experimental.
> >
> > NOTE: My patch is independent from Jian's patch and should be applied separately.
>
> Hi Sedat,
> Thanks for the patch!  Nice job finding the fix.
>
> I would like to see a v3 with the commit message trimmed a bit.  In
> particular, you mention that Jian's patch is unrelated.  In that case,
> please don't mention it in the commit message, drop the link to issue
> #1043, and drop the lore link.  I think if the commit was just simply:
>
> ```
> x86/entry: Fix vectors to IDTENTRY_SYSVEC for CONFIG_HYPERV
>
> When assembling with Clang via `make LLVM_IAS=1`, we observe the
> following error:
> <instantiation>:9:6: error: expected absolute expression
> <rest of the diagnostic>
>
> This is caused by typos in arch/x86/include/asm/idtentry.h:
>
> HYPERVISOR_REENLIGHTENMENT_VECTOR -> HYPERV_REENLIGHTENMENT_VECTOR
> HYPERVISOR_STIMER0_VECTOR         -> HYPERV_STIMER0_VECTOR
> ```
> Then the tags you have below minus the unrelated ones.
>
> >
> > Cc: Jian Cai <caij2003@gmail.com>
> > Cc: clang-built-linux@googlegroups.com
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > Reviewed-by: Wei Liu <wei.liu@kernel.org>
> > Fixes: a16be368dd3f ("x86/entry: Convert various hypervisor vectors to IDTENTRY_SYSVEC")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1043
> > Link: https://lore.kernel.org/patchwork/patch/1272115/
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1088
> > Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> > ---
>
> Otherwise you can put some additional info here "below the fold."  It
> doesn't hurt to say "I also need Jian's patch to completely build with
> LLVM_IAS=1" but I don't think that should be in the message that gets
> committed per se.  Sorry to be a pedant about this.  With those
> changes, I'd be happy to sign off on the patch.
>

Patch v3 submitted (see [1]).
Feel free to add your S-o-b.

- Sedat -

[1] https://lore.kernel.org/patchwork/patch/1273010/

> > Changes v1->v2:
> > - Add Wei Liu's Reviewed-by
> > - Add note to clarify my patch is independent from Jian's patch
> > - Add link to latest version of Jian's patch
> >
> >  arch/x86/include/asm/idtentry.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
> > index eeac6dc2adaa..d79541bfc36f 100644
> > --- a/arch/x86/include/asm/idtentry.h
> > +++ b/arch/x86/include/asm/idtentry.h
> > @@ -626,8 +626,8 @@ DECLARE_IDTENTRY_SYSVEC(POSTED_INTR_NESTED_VECTOR,  sysvec_kvm_posted_intr_nested
> >
> >  #if IS_ENABLED(CONFIG_HYPERV)
> >  DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_CALLBACK_VECTOR,    sysvec_hyperv_callback);
> > -DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_REENLIGHTENMENT_VECTOR,     sysvec_hyperv_reenlightenment);
> > -DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_STIMER0_VECTOR,     sysvec_hyperv_stimer0);
> > +DECLARE_IDTENTRY_SYSVEC(HYPERV_REENLIGHTENMENT_VECTOR, sysvec_hyperv_reenlightenment);
> > +DECLARE_IDTENTRY_SYSVEC(HYPERV_STIMER0_VECTOR, sysvec_hyperv_stimer0);
> >  #endif
> >
> >  #if IS_ENABLED(CONFIG_ACRN_GUEST)
> > --
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVSc3pKQvvNYFw-c-iUTgbkhbXYotkZeEgkhTnL6dg7sA%40mail.gmail.com.
