Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB542W34AKGQEHXGIGWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A99B21EE4B
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 12:48:24 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id x14sf9081840pln.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 03:48:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594723703; cv=pass;
        d=google.com; s=arc-20160816;
        b=u17BVIaes/N+Pg80Oeb/rYjK9f3LpBC6cMy9qMYHISSfOZ0JuzaUM0Mh98Ki1WV/gO
         rbExLl7TlwIS370d25cG6ozAkDQceu/08ojA3rPIUB6BeCrNBdJ1tCbssxokn3V0WNBn
         xbkAFnqUo2X9IrnL7ayaQnSfYwJNdGVl2bLBFWb8oteAwwFgXem+G4NILCDsYJTFBV+s
         9JgxlnAcIQMsWKRKyR7p5hbQCTaawsAXNJw147hTu5Xmb+PPHYi+T3xVAvDMFanoBj/n
         a2SM8tx6cm6Ktr2GZnrJXHKuSdqvEWosKyvpCsav8RrYlj5cqyZgBuNotLnSzQT71id+
         XWrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=yX+ukD613BA8ApwS06q1sieYi9p2wTRZbuUFU6S+oEI=;
        b=Xm00QJSNRvnl9e0pwKH++R06dxz2cpKSUC23Me2YN9q3gN5UXyLdcWWQ9oePe6P6O3
         nAyeDUrWzoq4krLVHbttnB8FnivRdGaKLbAzHtAtanpeoedLEmWwpHA5FFC/1zveEDkS
         tzsMP5i1bXWML46TUrG4iBuDDkZ6QmiqYZGlNhtK5MJMy8xJSbiFU9POfoUQNSz5oGUZ
         Y2pchZJfxJdZsb9Ri0uxq0Dy01uOEnALSt0cRAt9l/MbxJarsoMk74jF4y0GuU9m8hVV
         Olc/JAMDDgC3Hft5phX6SRGiKkijwQypRfuk6iwGtLW5yS7QwJiWrWi18EF3YbQMgDHz
         midA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LhvDXOLX;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yX+ukD613BA8ApwS06q1sieYi9p2wTRZbuUFU6S+oEI=;
        b=KS5C4XhvAKpKBEtYogNBv9E1fsnoAZMzei2HUyeZSbmtnp1yXpJGHcP4qVg3Eyq7/P
         V8TSJMuGtA/tdoAG4ddM9tu8a3/rodDNYBmxFfJP6tzfM6gEj+Lc+H3fWD+ddpb57ysR
         13fXERu5I4AohalWRPsp92eIawFNtpLEkgRXZrMX4plGLFhgnGOFoHvf4Z+TCeQqKdTT
         9tI30q/pM9ymPadhEwxw/3dwnhRKpiJJ65iAU0vzGTlJBS7hd0UPgVscxl6c+a5Y6Trf
         IBsc21baPvceMWrxWgYav5En3FavjVN09It6PtvroZ8WV5z7g+zLCmkwvgyeVaW5kuGt
         ZmTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yX+ukD613BA8ApwS06q1sieYi9p2wTRZbuUFU6S+oEI=;
        b=H/3O9HsAj6SZ/4xPHk8vqi027AuEurb8M6ILS4J68b/Uqm9+8RbeCa/qsQVujk2+Fm
         Fn3le3kAs1iHcJ9ZbnAlei9nbusBPNBNqttfB70pFrpFhyafXMlv+traQ3hgrh/gHrIM
         dbkHh39QugQq8g1sLDXQANpka2er0CcQpuKRJYDVFneoL3ejgQtp0tZJ6xWZ3iqyFazf
         aajCwJo11Sa+RiItHW+upG+2/XfS4fVPHV/WeNCLVp/dYLoS+8Wp5BYvhgKT4qUvd9Gm
         HKhT7FYQNshQSQPq7NZF9HRw7uuvF/rALiUh2GyZvxGD+Oa3WZ90FiGhbEAaF86/vjpo
         jjzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yX+ukD613BA8ApwS06q1sieYi9p2wTRZbuUFU6S+oEI=;
        b=BizmBQVR/Gk/9sX37jzueOfNn25VWSIW5V4sGeGlwdJ21AZ90N3wX/AemIi1Ga6Oe+
         X+gTT/L7Iuv03B9LuvyGzpcj5go2fS6EGgpI3GeFkm1skAlQue65wOMJmEHlsvow2Icd
         NhXa8K8bBIeMhD40CiVwwuAKeQypSLZ/8539Fx1QvS14A9WMn2uEWmXm3V5rqEYZQ/DT
         4ZojXheFqCfBO03ureglvqGMQFieFBlKciKpi+aHnfZas+j0rM5E/YBS4cHiDgb+VCED
         qVQPCzU79dn0zt0/yddws09CIsZKrQLZSHmgFAd3bObnd/v/CnXfPSjkriUZBteoxcV2
         XNUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TCd8QrkOyqbm43Qj77Gzt1g5Q2fvvuc3+sxe1d1YAUCGT4WBV
	Kew+jHmaCVx7a2dVXyU4Td0=
X-Google-Smtp-Source: ABdhPJywQh1EcYqktcd684LCZCvplQ/n3jqkkije9u4kXMoMepUnPXghfRl9Zd/JLnoIXR6BcNu/uA==
X-Received: by 2002:a17:90a:d30e:: with SMTP id p14mr4136279pju.173.1594723703092;
        Tue, 14 Jul 2020 03:48:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7e97:: with SMTP id z145ls6453052pfc.4.gmail; Tue, 14
 Jul 2020 03:48:22 -0700 (PDT)
X-Received: by 2002:a63:ce15:: with SMTP id y21mr2977648pgf.163.1594723702634;
        Tue, 14 Jul 2020 03:48:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594723702; cv=none;
        d=google.com; s=arc-20160816;
        b=u3fOjgzZX/3J3bKUq+RsQY7dWEL00JWt2wM71jmjSl9b46K89NPnNVVTMaSXJjQxtc
         oeFG9C2TGGSSTvqx684C83E9xD8tuSj+nverCvM3QvA3imlWkPzirXAtQa9kZLBUjBiH
         HoxhfQiAxzxEIBYgRorlDCVU0ZXzXn9RebbNpeEjj3NvhTh/rEPweMrXXtA4ikVToAdt
         /g5SWkY4QgdHZjKdNM+7xt4b0hcUK8wbrH1NO4D1oXJ4aTso5eX9SkHvXr5dCpnQ5wvN
         2LF59aiV/yvLiqYfHtFnuBU9iBMPdeyC50vcZVADP36B7Wrj2NmUFkbnXlNkTmeLr+Cs
         plEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=j480OKWckVZikzkVrQF0UpbXQk/7Ivom1NgwihHXWGM=;
        b=AAn1rrWxUBWGDOmfsLr2FepgMKrLfMvl0ekT6IWX3oHO4Mw4RoD5/Ai2+eO53G1PAv
         OhXWHCNVnqol6OLmT/kvcIVfZHw0L3mAU5Y14Y2RBTzsAxqCozMypyYhU7OjNZDdsnn1
         AoxwZhP+PleqNm3NxCNG+bjGy59gP1ASpvuMGoR24QEdadTe1BdbWzAK+YobOSPhv4hV
         A1C8xSYyfvgxTqNaIBz42yNvl30cb0wu33ZxGlSqW/sJwvfCBj1Kr0eNhROGj74mDEtv
         0FM3krQcNiS+tmoYXE0u7ZFT/5j7gbbWIq5FMHuukU7WgEvb5BRPRyxyoyZ48y5QRHRj
         Ce4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LhvDXOLX;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id s21si873530pfh.2.2020.07.14.03.48.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 03:48:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id o3so13773784ilo.12
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 03:48:22 -0700 (PDT)
X-Received: by 2002:a92:dc09:: with SMTP id t9mr4281512iln.226.1594723702039;
 Tue, 14 Jul 2020 03:48:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200713012428.1039487-1-caij2003@gmail.com> <20200713224020.1297154-1-caij2003@gmail.com>
 <CA+icZUUXZmDLOXbcj6vZi6+ZTC41VbH77CViHFRmQfxiMBqYtw@mail.gmail.com>
In-Reply-To: <CA+icZUUXZmDLOXbcj6vZi6+ZTC41VbH77CViHFRmQfxiMBqYtw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 12:48:10 +0200
Message-ID: <CA+icZUVEr5Fi7XGfTJOw2U9ABHnWiirPqphnFapSDz9tzfjXGw@mail.gmail.com>
Subject: Re: [PATCH] x86/entry: add compatibility with IAS
To: Jian Cai <caij2003@gmail.com>
Cc: jiancai@google.com, Nick Desaulniers <ndesaulniers@google.com>, manojgupta@google.com, 
	Brian Gerst <brgerst@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Alexandre Chartre <alexandre.chartre@oracle.com>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LhvDXOLX;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143
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

On Tue, Jul 14, 2020 at 11:34 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Tue, Jul 14, 2020 at 12:40 AM Jian Cai <caij2003@gmail.com> wrote:
> >
> > Clang's integrated assembler does not allow symbols with non-absolute
> > values to be reassigned. This patch allows the affected code to be
> > compatible with IAS.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1043
> > Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Suggested-by: Brian Gerst <brgerst@gmail.com>
> > Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> > Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Signed-off-by: Jian Cai <caij2003@gmail.com>
>
> Hi Jian,
>
> thanks for the update!
>
> I am glad to see that some Linux/x86 assembler "monsters" jumped on the train.
>
> So, your patch with reviewer's comment got several iterations?
> Not sure if you are aware of the process of submitting patches (see [1])?
>
> It is common to add a ChangeLog below commit-message-body and diffstat
> means add below "--".
> Something like:
> --
> Changes v1 -> v2:
> - I did some cool stuff to improve this
>
> While at it... Please add your version-of-patch to the subject-line:
> You can do this via "git format-patch --signoff --subject-prefix="PATCH v2".
> There might be other cool git tricks I do not know.
>
> Hope I was no "Uberlehrer".
>
> - Sedat -
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst
>
> > ---
> >  arch/x86/include/asm/idtentry.h | 14 ++++++--------
> >  1 file changed, 6 insertions(+), 8 deletions(-)
> >
> > diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
> > index f3d70830bf2a..5efaaed34eda 100644
> > --- a/arch/x86/include/asm/idtentry.h
> > +++ b/arch/x86/include/asm/idtentry.h
> > @@ -469,16 +469,15 @@ __visible noinstr void func(struct pt_regs *regs,                 \
> >         .align 8
> >  SYM_CODE_START(irq_entries_start)
> >      vector=FIRST_EXTERNAL_VECTOR
> > -    pos = .
> >      .rept (FIRST_SYSTEM_VECTOR - FIRST_EXTERNAL_VECTOR)
> >         UNWIND_HINT_IRET_REGS
> > +0 :
> >         .byte   0x6a, vector
> >         jmp     asm_common_interrupt
> >         nop
> >         /* Ensure that the above is 8 bytes max */
> > -       . = pos + 8
> > -    pos=pos+8
> > -    vector=vector+1
> > +       . = 0b + 8
> > +       vector = vector+1
> >      .endr
> >  SYM_CODE_END(irq_entries_start)
> >
> > @@ -486,16 +485,15 @@ SYM_CODE_END(irq_entries_start)
> >         .align 8
> >  SYM_CODE_START(spurious_entries_start)
> >      vector=FIRST_SYSTEM_VECTOR
> > -    pos = .
> >      .rept (NR_VECTORS - FIRST_SYSTEM_VECTOR)
> >         UNWIND_HINT_IRET_REGS
> > +0 :
> >         .byte   0x6a, vector
> >         jmp     asm_spurious_interrupt
> >         nop
> >         /* Ensure that the above is 8 bytes max */
> > -       . = pos + 8
> > -    pos=pos+8
> > -    vector=vector+1
> > +       . = 0b + 8
> > +       vector = vector+1
> >      .endr
> >  SYM_CODE_END(spurious_entries_start)
> >  #endif
> > --
> > 2.27.0.383.g050319c2ae-goog
> >

Stolen the patch from [1].

Tested-by: Sedat Dilek <sedat.dilek@gmail.com> #
Compile-/Assemble-tested against Linux v5.8-rc5 with LLVM/Clang
v11.0.0-git

- Sedat -

[1] https://lore.kernel.org/patchwork/patch/1272115/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVEr5Fi7XGfTJOw2U9ABHnWiirPqphnFapSDz9tzfjXGw%40mail.gmail.com.
