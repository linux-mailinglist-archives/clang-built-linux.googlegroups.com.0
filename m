Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBL464H4QKGQE7U6CMRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id B452E2451D6
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 23:10:08 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id h36sf4113135pgl.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 14:10:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597525807; cv=pass;
        d=google.com; s=arc-20160816;
        b=U4Yqcspc/0LaEHKJdCNj4MxDId5RfLfDQ9xQCn8cyVQj39KfYmWBb1V4LAMgt5vMm2
         vjouJmwOUahol4Su2tKXDm/laPNHHXoxcs7rWRsrA65jRfZ4FMVR/8Cm2pfbtbd8CDUb
         p0Jifj3fSDtiKwcdnoftQn6VtV6bvPdXLjGyjnIxrIHqTQ6KSXEIXZV3xeofBjv21l7C
         /n56l7xUJhe9W0EY8xi42+NTq1S6OXdSDcoemFZ424f1qpGNQKbC6vJCgVWGwxz1ZUop
         lmESAYzET+KFGjfimwRnjmzVDTWDpmCUyGWpATODOnBI/RF9gH4tfGAhTbmeUAgZ9LsC
         /aaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=jr0i1O7bro+DQtak0Mk+GganWgm2vAjgv3bPzcDC8L0=;
        b=TA6Gv85gfsJV1cEm0dJtK5M1F6htX9KPrNmSMdCZGA0twWsX+5K4ajDxRcnwHlOl/E
         ErEq4b4uD5iHd/tNMnDsk1/v2dEvvkD5S2SCgyC4bOs9eLZw+Twf8otxywduDd4aQHCO
         DyDFMdT4FIM25oqhVfaX5jBzmao7AoXbHMUxSWuRnQBm+QyfGBD6ZlFa6TrYX0RMc10Q
         icwHYkjGAnkQtJckBHE3WLHq9cLOGVcShVFk4wX4PJGR8576VTR69zkpI5HGSdoWQPf4
         WfSrTbx3tBo6w/CIlTj+v1lNbuHEXoH3LrDTJ4lhrH27bhJlB2lkYLCpxi6fUCTTAjGv
         mnyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fy89CnAc;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jr0i1O7bro+DQtak0Mk+GganWgm2vAjgv3bPzcDC8L0=;
        b=Dk+MPv4VPrpC+xzydiyS6Xu8g3YZ9263+ajMHgwa88aLClfxZczGPpwfknWuCgtYhc
         gRdPSWVHpKeDNPitxVeWeG/DHRcYGHiqW9J2d1y85UI0KBUeA9aiGgF/cPzixbgNTvxt
         SfiXSmv+5jk3kamyn7CEJhEm7WgwPkWC30Zzcv1uh7G310yRT2DEc4Rb6/LFb/2wrG7C
         d20qPzPF0OUz+/9fVaqMJ3Evo5Rlvb2W5rPrZAZ1BoV/AB35R/F13gDF8u+aQ/fyxGB+
         LjeUrsOp/IsPAZQLSTMEDK54ou5LRt2mM5eyIPq4E1rT7xWQcd58ENXUH0QyT76NVc/l
         WUTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jr0i1O7bro+DQtak0Mk+GganWgm2vAjgv3bPzcDC8L0=;
        b=kIKiGV/KaptsdkaTNggRI0PKCdkYy9gsw48LqaC9kF/LwT2A2GArumQqqAKIKT7xJc
         BNEIHrKQaHz8zun+xhKOh516RJ53LAS/SDqrt1xTY/Moytye+1Bpb9DWJgo5UX7IS0U7
         Ym0Mg9e+hVYzc61T0HP9UdRwWPdilQyG/0lpQd+PmWmbfIdUWL8FX5K3qtbkqWYPCyy2
         mktIGPX8ZoBFuodJasJ/wnIyfTU3yYuy0eafDhzQSWtSvQY2JQqb2QC0Ka4eWTarVI2N
         XcPPdJLtG/GI7h4xJyi4YKjL28ZvdfxB5gQ0N06vg8bmEvpWd1GbVAQVAQMoEPavkMnL
         ZG/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jr0i1O7bro+DQtak0Mk+GganWgm2vAjgv3bPzcDC8L0=;
        b=MqRowzo6t43yri8UcXsdfYboHrOfNTMozARB76Xz7/8ibKGxY3QU+i8C7JF865QI8G
         WrmNHxXLPgn9k310BEwdMGsQJFM58wlt+rF+wKIR7/dUiZgMo0OoEGwC2d5Qu5vZCIAo
         7QuxGDPUOa6ffUE0cVvYE6MEF6rCQuJDx+F0UgSvzDQjieWy+2UN3VgCFcAIQRNWX3Bz
         /+3jTdMsCT/VvHZaxIdmP0K0KazNBZPpc7WHyp+X7YpDPUszVtuo7/aO9VLpxZEkk/pS
         l8HT17W5HATbx8RSomutj9tFaBJ14cCkEKDA6BT0ehoyM4dn6tRo2jXnbhkWATJWbpVD
         +iYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NC7mjb+3ZRr6q0HHAHFRm8MzPOEuMSCro4UJXrbtfxHf8ZyFE
	t3fqmL5YWSjJV7uVts6ML5c=
X-Google-Smtp-Source: ABdhPJwFjgz+8ttfLM3D32GvoXKAi+XP/y0aCyvA4qaEe+KRa9dXQ5sNt7K9M5RB5rlSkZ6+es3I7A==
X-Received: by 2002:aa7:8f07:: with SMTP id x7mr6211731pfr.2.1597525807366;
        Sat, 15 Aug 2020 14:10:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:142:: with SMTP id 60ls5046046plb.9.gmail; Sat, 15
 Aug 2020 14:10:06 -0700 (PDT)
X-Received: by 2002:a17:90a:eb18:: with SMTP id j24mr7106567pjz.76.1597525806876;
        Sat, 15 Aug 2020 14:10:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597525806; cv=none;
        d=google.com; s=arc-20160816;
        b=v3at+agN9mPeq5Iw9mbnfMFBN/0obqhZxO5NUYXZiX5rCBbp3WPl1iYzIEPVJaBgiX
         XO92JabpVsQwkrUlsMaqNiB9AKthzA6GOqgH6QzxtKbSdReiWzz5Brot6Se7SA+iwjTg
         +qzlu5BXKb/L36WOBzVg7R06FfsYhAGztPx1hazoy5Px01tas0lVz5bOwTQ5qYEHS8r3
         y30gWz1M8gBgdvsGazecUa4Br86s8ui+GiSdE17FZHIjjzxfuXPeAJCagZevLhyMXEdT
         +aDRgW2mDrMFkhmEvoGLTGQG+fV2J7kxUeWjBIvPj5k9YBf/hplxlCmYlPRCag0RYrki
         dGmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YiKLZJugL5RJYSeoiMgi97mxBoh+Q6jTGSD7PLvnSOw=;
        b=NPNE4WszyRQKKmFVLZ/6hsfhGf97NnSDpTtOv21r/Dj0zCjopUuE+Ic97wTEdYIbaT
         aNUSRaTGrBvshljxAjEZJ6EXp8SErvn4kLmsoPxFZlCv1Pj7RFIzSpQQPfu2S2OwzTGC
         iR5iLwI/yxw1OXlEw51w95G8cqex6JttzhBx4eExLA46ptD8jnh0KPxQRgSsFU5JSj1V
         GCveGbXXNrM/WnkZVSy0bRMlQoPWV6fdT2dzkBKjZidr1gYa3fScfMXzzXYIWMF7QH9S
         5AmhtVpeQ66O5w79702H+ff1ZVqDvWaXO7kVSsR6gcmr6ZR1joRMsdVe5gRqFvN6lKsl
         /Ukg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fy89CnAc;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id s2si790727pgh.4.2020.08.15.14.10.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 14:10:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id l204so11413131oib.3
        for <clang-built-linux@googlegroups.com>; Sat, 15 Aug 2020 14:10:06 -0700 (PDT)
X-Received: by 2002:a05:6808:311:: with SMTP id i17mr5555813oie.72.1597525806479;
 Sat, 15 Aug 2020 14:10:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200812004158.GA1447296@rani.riverdale.lan> <20200812004308.1448603-1-nivedita@alum.mit.edu>
 <CA+icZUVdTT1Vz8ACckj-SQyKi+HxJyttM52s6HUtCDLFCKbFgQ@mail.gmail.com> <CAKwvOdmHxsLzou=6WN698LOGq9ahWUmztAHfUYYAUcgpH1FGRA@mail.gmail.com>
In-Reply-To: <CAKwvOdmHxsLzou=6WN698LOGq9ahWUmztAHfUYYAUcgpH1FGRA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 15 Aug 2020 23:09:54 +0200
Message-ID: <CA+icZUXhPakmkVOEHOq7FON+3ETRNN8DHEiRws-BJaAUad4hOg@mail.gmail.com>
Subject: Re: [PATCH v2] x86/boot/compressed: Disable relocation relaxation
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Fangrui Song <maskray@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, e5ten.arch@gmail.com, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>, 
	LKML <linux-kernel@vger.kernel.org>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fy89CnAc;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::243
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

On Sat, Aug 15, 2020 at 10:57 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Hi Ingo,
> I saw you picked up Arvind's other series into x86/boot.  Would you
> mind please including this, as well?  Our CI is quite red for x86...
>
> EOM
>

+1

- Sedat -

> On Sat, Aug 15, 2020 at 8:49 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Wed, Aug 12, 2020 at 2:43 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > The x86-64 psABI [0] specifies special relocation types
> > > (R_X86_64_[REX_]GOTPCRELX) for indirection through the Global Offset
> > > Table, semantically equivalent to R_X86_64_GOTPCREL, which the linker
> > > can take advantage of for optimization (relaxation) at link time. This
> > > is supported by LLD and binutils versions 2.26 onwards.
> > >
> > > The compressed kernel is position-independent code, however, when using
> > > LLD or binutils versions before 2.27, it must be linked without the -pie
> > > option. In this case, the linker may optimize certain instructions into
> > > a non-position-independent form, by converting foo@GOTPCREL(%rip) to $foo.
> > >
> > > This potential issue has been present with LLD and binutils-2.26 for a
> > > long time, but it has never manifested itself before now:
> > > - LLD and binutils-2.26 only relax
> > >         movq    foo@GOTPCREL(%rip), %reg
> > >   to
> > >         leaq    foo(%rip), %reg
> > >   which is still position-independent, rather than
> > >         mov     $foo, %reg
> > >   which is permitted by the psABI when -pie is not enabled.
> > > - gcc happens to only generate GOTPCREL relocations on mov instructions.
> > > - clang does generate GOTPCREL relocations on non-mov instructions, but
> > >   when building the compressed kernel, it uses its integrated assembler
> > >   (due to the redefinition of KBUILD_CFLAGS dropping -no-integrated-as),
> > >   which has so far defaulted to not generating the GOTPCRELX
> > >   relocations.
> > >
> > > Nick Desaulniers reports [1,2]:
> > >   A recent change [3] to a default value of configuration variable
> > >   (ENABLE_X86_RELAX_RELOCATIONS OFF -> ON) in LLVM now causes Clang's
> > >   integrated assembler to emit R_X86_64_GOTPCRELX/R_X86_64_REX_GOTPCRELX
> > >   relocations. LLD will relax instructions with these relocations based
> > >   on whether the image is being linked as position independent or not.
> > >   When not, then LLD will relax these instructions to use absolute
> > >   addressing mode (R_RELAX_GOT_PC_NOPIC). This causes kernels built with
> > >   Clang and linked with LLD to fail to boot.
> > >
> > > Patch series [4] is a solution to allow the compressed kernel to be
> > > linked with -pie unconditionally, but even if merged is unlikely to be
> > > backported. As a simple solution that can be applied to stable as well,
> > > prevent the assembler from generating the relaxed relocation types using
> > > the -mrelax-relocations=no option. For ease of backporting, do this
> > > unconditionally.
> > >
> > > [0] https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/linker-optimization.tex#L65
> > > [1] https://lore.kernel.org/lkml/20200807194100.3570838-1-ndesaulniers@google.com/
> > > [2] https://github.com/ClangBuiltLinux/linux/issues/1121
> > > [3] https://reviews.llvm.org/rGc41a18cf61790fc898dcda1055c3efbf442c14c0
> > > [4] https://lore.kernel.org/lkml/20200731202738.2577854-1-nivedita@alum.mit.edu/
> > >
> > > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > > Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> > > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > > Cc: stable@vger.kernel.org
> > > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> >
> > Thanks for the patch.
> >
> > Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> >
> > - Sedat -
> >
> > [1] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674409705
> >
> > > ---
> > >  arch/x86/boot/compressed/Makefile | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> > > diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> > > index 3962f592633d..ff7894f39e0e 100644
> > > --- a/arch/x86/boot/compressed/Makefile
> > > +++ b/arch/x86/boot/compressed/Makefile
> > > @@ -43,6 +43,8 @@ KBUILD_CFLAGS += -Wno-pointer-sign
> > >  KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
> > >  KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
> > >  KBUILD_CFLAGS += -D__DISABLE_EXPORTS
> > > +# Disable relocation relaxation in case the link is not PIE.
> > > +KBUILD_CFLAGS += $(call as-option,-Wa$(comma)-mrelax-relocations=no)
> > >
> > >  KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
> > >  GCOV_PROFILE := n
> > > --
> > > 2.26.2
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200812004308.1448603-1-nivedita%40alum.mit.edu.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXhPakmkVOEHOq7FON%2B3ETRNN8DHEiRws-BJaAUad4hOg%40mail.gmail.com.
