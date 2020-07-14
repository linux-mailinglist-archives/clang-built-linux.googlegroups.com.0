Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBXHOW74AKGQEMK6YF2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id B383121F91E
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 20:20:13 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id f2sf9872408plt.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 11:20:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594750812; cv=pass;
        d=google.com; s=arc-20160816;
        b=D3sA9WpU8D8fR5LFN943aSpUVZ0yKenb/hwmxrFfSYPAXRGvHASerQnoz6qQOkgS3D
         N5CIkj57VP1dofZCOIrkGr3lEKO5ivmW3jDD+qr0xEehXfFB20OpMySybwvyy0BSg4yJ
         wyW9/vkWMgpL5gCgFz7+mlgNHMhbbXRfsY4pkCYZwE2Q/c53aLhvBjdULoq0zkpnHLjA
         3s/o+jMbikPBHQeJyVupXnhTtOnxAZtIo+P0RcDhhyyxsQEcHt0j8X+f9pKSYJtCMP50
         WFUZq5oAQRDQcrbqF79IXgGBvwN9/eMm2PCE1K2fl1DBZvYalVRgn4G1WXgA55SWtxQ4
         8QIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=XTyfK6Dzd4EGLfUR2U1YlL18mITw7l9V2+SJB3TUgV8=;
        b=fP2qQK6OpQGkzLvmjjAE0K8E1A39E/r1DSU0GbvBDEdHEhg6DbDiud9qwLQcvNbXf0
         uYJeZSdWVZAqReIE5Y29IKbYA0ReLyc9NqBpZAI4QMZG3e8HKDdW/7tYY686q7zdOqMY
         L9bW6oi+RuHbiATFO8woK5JR9yDYHGsHjSYwMmwDtJzoHci57oFtH/ms90BKRz0xmNvm
         brgFbBAUM3yTGEon0SzASBPfJiN0o0+fj0yNgs+kRfazYxQMMOST9YfpRQkPATYE7RR6
         WlV9kpRqnY/mUCUnpIvltqGhjyp8Sltp7F7q3Uwpqc0kiqfxaVayPeC/SZZ2vTmdWJqB
         f3iQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YgGQaKPE;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XTyfK6Dzd4EGLfUR2U1YlL18mITw7l9V2+SJB3TUgV8=;
        b=esY3OLeASGur1Nbi3dv3tmblAn4me7fdAyO/rfMy7142/A+ldDeMHHzw5tOrQjHpl+
         6Zam7vYt3A+arRIYyyGilI4n9wf+QK+vgekR5IWGtqDca2VuzrMv/6Jv9s1qskvZQtC+
         M11m7NqwD9Aoi5tEgDxARnYRGfSvsLNxCKuY8vHVfADkdNthRl+ic9x5GOoPBaJuhcUQ
         NlE4w19bwsR2jXQmtORhEyDbpftN0BleIWkX5cjkV6lO83xRnO58DWalCePSAk601239
         1kuPAEQnMC/YmgLOVSrLIXZQpug6BpYBb+6aXVEmJtHD9m5DMseRbfbKkTFklYRRb39J
         SBMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XTyfK6Dzd4EGLfUR2U1YlL18mITw7l9V2+SJB3TUgV8=;
        b=A8TGYKP+al9oRYk0Rc+4YIFRFbzzY/dmn06MiYqGdPM0v9H4/69M9gcaSCr+e/51On
         EQyURfejFJ1w6K76YjHqk5wcJqUvgdxmN2i+W21InPbuTv/WVmve6WqkO6byfNdXp6FW
         LG89TPXbB3tzTIKnffHJ5cjb2+zB5nBFEeqqALkHKN7Nr34bqoyfCNyZjiI2Pd8/picw
         Mk1Yvt4W44AzyS0ktQ81gXnuBFTbQB/6pFeBc3kWAmN+iMHQyz1NQdKfudhLlSCX9dPg
         QKi66m4z89+cJPSn7CUJBshxInl4C0dLxVkfsOLbtjwLMTrvncVBoh0zR1fwGu7K5RHR
         OwvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XTyfK6Dzd4EGLfUR2U1YlL18mITw7l9V2+SJB3TUgV8=;
        b=gnB2BECX3SPE4eL6Q4OE+6v1/qU9DvK7wsisRbnD8qKwRFSS/s04dYoB4oK9a7EMwI
         +8StqnPSO/7QcqyRI8xj4fYnc7LD+8nH0luJrgAFpYpwJ8sml1VnkH2M0juaoeZgmMFh
         Bm78BuBd3+pcEwn++GVF0hoaG+NPkLZP2PzZCgj8rZCjl4M3xOLpR3JXTcw65F8y+vkg
         g1u4wqUAvaVyAaMso/zumI/obp+jBMcdCK2iyIugFvdnlB5qrPxd8lzc6ZMwrqZqeQQC
         Ddu4TBKfgYGXegUU7+cwDFvEaXLOSDXDXHj65AUVuBWhlpz0Tyr81ngfA17zQt39lcFl
         +nsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306of+youMObr1Guv5gAeKiZz9pywqUP7pcIIU1NLnaHKNupMl2
	/E5HLvQJtPaftZoATAFIR3Q=
X-Google-Smtp-Source: ABdhPJweu831vUFzvlLtrrXimUlKQ1/7kIzphCMznZUwKcqUqKxs/ALgh4O4r6owVctNgbTeMO3RXA==
X-Received: by 2002:a17:90a:c003:: with SMTP id p3mr5997112pjt.120.1594750812446;
        Tue, 14 Jul 2020 11:20:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c1cb:: with SMTP id c11ls2928408plc.7.gmail; Tue, 14
 Jul 2020 11:20:11 -0700 (PDT)
X-Received: by 2002:a17:90b:4a4e:: with SMTP id lb14mr6168724pjb.196.1594750811920;
        Tue, 14 Jul 2020 11:20:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594750811; cv=none;
        d=google.com; s=arc-20160816;
        b=FWZhwQDjt5/ZDg3eSmX3a7mFP+l53uOAiBDSSpUUYzwbEc/SAeJxPqxruQjG3ajzI5
         hHOU0Zj6vW6aXSYgchEhxwUO2zkiUpPZHpSsacqfcJ7FqhXEoPtTWUCoG+IqMP8yEW6V
         RsC4LpaTDGTMZDvkJNs20rejCOU3xSJdyb5ZlzoXJi6qJh9OhP/ZKzmiwRwCKB9grmoO
         j5IKcthEfpLXjEpprTX2qYxDd+yE2GOScggB4HqFeBZ5VW5oIm41SuJfi1qUKppu6F0b
         39UxLKSncDl48Pn7NFUd/oLHRlGHlOc+c7Sj6LNX/8pxEUocjkn5i0Y5ctX87VFmrPih
         Qovg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LBM8mZ5TU62dVovLrevNINwnFxRJdGHmD0tUrxeo9bA=;
        b=qQj4PQPHS64/me/Aw9ia66GZHpTTDcVb85Ic2yDbDTSIMurOKhLqDU+N7ZwvVbtK/Z
         KjYx0hMury9tMiYTkGyYsLC3yulkDDX66rYwjNPHcqec0e1BQ71Rq3JbEj8TrARpwBSF
         osZaTGA16QXmOy/X4yOat6VlwqVKpsJIbRQCqGqNPlovM4pzgmU9D3lMAEZX2q6L7weT
         vRkyZifMu254m9DV1UBlDT0eA2fBC/WkangPXrCub2kd5PWh8xddUlf0fM0WB5uc/yZF
         NymnO2PGfzJvD/jsADm6PMXu6w0+dciBZsZBUTyPR6sUOA0GlBXideu40CD+4mP1Sn6z
         wwnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YgGQaKPE;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com. [2607:f8b0:4864:20::141])
        by gmr-mx.google.com with ESMTPS id s7si131155pjq.2.2020.07.14.11.20.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 11:20:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) client-ip=2607:f8b0:4864:20::141;
Received: by mail-il1-x141.google.com with SMTP id s21so15019088ilk.5
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 11:20:11 -0700 (PDT)
X-Received: by 2002:a92:dc09:: with SMTP id t9mr6142976iln.226.1594750811549;
 Tue, 14 Jul 2020 11:20:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200714111103.14591-1-sedat.dilek@gmail.com> <CAKwvOdk3WSMhMxxaWfFeWYkR=xYgwrREckS+X5Yg5QeC48UVrg@mail.gmail.com>
In-Reply-To: <CAKwvOdk3WSMhMxxaWfFeWYkR=xYgwrREckS+X5Yg5QeC48UVrg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 20:19:59 +0200
Message-ID: <CA+icZUUBvSzbG9CXSzdtphotmFhG-5y5aXgDFwjwx7_QeE5hvg@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=YgGQaKPE;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141
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

Yeah, that sounds like good compromise.

Without Jian's fix/patch we did not found the issue.
I wanted to respect this.

I will send out a v3 soonish.

- Sedat -

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUBvSzbG9CXSzdtphotmFhG-5y5aXgDFwjwx7_QeE5hvg%40mail.gmail.com.
