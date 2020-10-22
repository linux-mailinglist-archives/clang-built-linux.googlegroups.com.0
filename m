Return-Path: <clang-built-linux+bncBD63HSEZTUIBBI4RY76AKGQE6LBWBJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C70296455
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 20:00:05 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id 204sf1098340oid.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 11:00:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603389604; cv=pass;
        d=google.com; s=arc-20160816;
        b=JaaF2zIUYe2nnP4846CzplkiB3rYlssHmW+hEYb2okYBD1eS2aC2FtkJvgk6M9Pt3s
         U590fmatv5kcwrPwnR60+GVRWgE8jf9MquWkOvDYMCL8l0NQmQZIczAQWHLfsFxdcpTE
         nx2jzKb2b2yUD7OU2knsuX4wkqHBTZkAV+7z7S3gWBODFHQymqabBDTFOY+7qmoXeauJ
         Z5JMW5vIGnvidRbAvGP8adr0ayF0DqHGwIXOZoOuTolwvVz4uRYZT4GWQ2uuNp9FH8Rx
         PsSHmZS+v9Ij0qEvQmmJ9qjcrGBwpdxPXvyulFCe4e4PA4IFt3bxI/F+7UG4zAKIx1jM
         Sc+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=reMya2eLu2+e17JvfWpij51JvMCjzvk0F+l79NUJudc=;
        b=dAytRweJg779j2Ar2wm9rvpz0Au+pEH2MbtS/lv+r3LYPfOb805t0wzKxvWUQf7zbR
         lnzLa2yTfJNrjVPsiabXdWjoDQMRBH5xqQI2mFFrCv8zIX7jxYwX0pMhVSbb18jMj1G/
         cu10l/GfpUtHvOORSOjFB/3l5VC+8QKbrPokqzu+r5YM2TEb8HbpyLZb1OCvnFc8QXoQ
         aXBgchn483bBtVSYPvKqIrvM8yaJ4jNZZaE9EAEI565Kc5/lKQgmQOfmhmqNs2EDD0g1
         jxYwbbGQ1/nSVHOrAf1GfsfcLBuU8Fa4sNR0ZFUkfmPSVqtzBV9n/U/diITagOfBmGtJ
         6llA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pXAsfTDy;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=reMya2eLu2+e17JvfWpij51JvMCjzvk0F+l79NUJudc=;
        b=W48Qkk/33xeHqy7/8voeYEDPyUExmJWsbP2W4HCADLp3S/vAQj0UpCp8htNnagbXyQ
         3pF3ZhGgFngTCl4pjNChBOyvCGZGqTz6j88mzAIMxuy+GPCUCNuVzOd/hLzl3vvMvlox
         xtv1I70P32k9E871X82OJICrpCtoTcgcBmFnMNyQYQgorerufNZCiN5lQaqZIfD2Ayli
         XLchsn52KK5YX729e1yZ1r1TWaWfyHNVxJNO5sEmBeryA3KXO5k7aHGdCWVnsrUTxXoW
         P2JubVLeGmaUMU1DMn+WKjhnSP+OSCfwzsNkR8S3lPL50xYi5X9/q6Kn9BKSE5UoqhYe
         aCcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=reMya2eLu2+e17JvfWpij51JvMCjzvk0F+l79NUJudc=;
        b=sm0RDO6nQkZGR525NAZRWoenRKP8GFSe15L/3A/R0gCZmEpVgJembZHmh6E+hvMfuf
         8uhAGE/gGH+RbnRN19qcHuKhtxGczSVqJsmUImqQQmcP5tELu1vptPwfiT2dBnl/8Zp1
         BXbSNV5KN/Vr66ubxQzIe8fe23VF82qh8owMvuROMNl+Nck8vYKrSOgsxYj60dattxxp
         tA3xWCURHcjDQUCIWSG9hxSJcs+5BwICxpB9A8vtFFkOVBChDrBN6WW8FG5bY7yRKs6E
         M7QNJZfPFdcZkyIs/sNyH31HeQP72xN+KPROh8edRmGZyN+tX7BbXomLLvMXrEZRmKMK
         17TQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530piEsSePLZSHvWmXSnVgEZ1sqXM5MFeq3QxC36FfcE6v0enAba
	oxmaFl79AsBK4FKXUTvqkrw=
X-Google-Smtp-Source: ABdhPJzg3Ij/i+mFcO6R7Q61vMIcxwsOQ8C5LZOU0NH2bDHQar09WA+EUrhtn1kZi9la7ETOMTtM7A==
X-Received: by 2002:a05:6808:56:: with SMTP id v22mr2235839oic.61.1603389603959;
        Thu, 22 Oct 2020 11:00:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:494b:: with SMTP id w72ls599678oia.9.gmail; Thu, 22 Oct
 2020 11:00:03 -0700 (PDT)
X-Received: by 2002:aca:cd8b:: with SMTP id d133mr2542890oig.136.1603389603626;
        Thu, 22 Oct 2020 11:00:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603389603; cv=none;
        d=google.com; s=arc-20160816;
        b=K8ja3zCz+uwWQzfVuKydjNqgpa6u2oRusOOcDo9WR9C1QcM1q6gNhYnwJznW94OHyK
         UL1jwrIk0pyFFUrA4OlnWhqXGD3gfX0TbOwjgQ0ik7Zxg8dT5JsubTMvsBbeSaS9uW6I
         i3leCjCOj/4V6pzjXgyVt1P8cm8CUiwT48EhwbMq5rCFINqX64c1mtL56bg5T+alCJf5
         evU2p6Bj/ZeYBK1eb7LCvJfUypNtqviCkSBERBtSzwmqS3ddf3c7UO633QnijYES57pC
         o4eZBdNQoSQLRIK7rCZPM0edjQTQ+zHB5g18143INs8cIZ1Avzn0Ff5JtyAeu5yCqrVE
         Qlrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zwcHi+HBjCcSV7Ta3GM2PZemKNs/8z7Mu6wtmTjEGVQ=;
        b=0pEy3gVKXaGugyKyGoDmQ7pxjb6ih4VxrEAno7KAqK13lgOT7Uq3C7AFpWTPEk4S+E
         iRgwuVLmGN3U3ewtBIu9moOcKC7sc69KAi9GYf83ZRXRG6QBnYXiniBTaVvRehBV/ZPh
         KX3tBYb/IYwlnW64ia6Fdj7nxCfOc+SzyobDPptTaI5FMl8UsJwOWpkHDdl27TGOlBJK
         Iqu4m+TAdl/igR+pV3+D+dJkQdBqOfdpqpnk1zY/T+6WMjAV2hU0Pf552Q/PNCDNJf61
         fN5T/27ar1JeHgQMCI2g4syR679h0D8s90fNNfnb0ikaz54pKRyfaGtkztLTqGnmutN9
         4FeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pXAsfTDy;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w26si160037oih.1.2020.10.22.11.00.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2020 11:00:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7E16521534
	for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 18:00:02 +0000 (UTC)
Received: by mail-oi1-f174.google.com with SMTP id u17so2681863oie.3
        for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 11:00:02 -0700 (PDT)
X-Received: by 2002:aca:4085:: with SMTP id n127mr2432214oia.33.1603389601566;
 Thu, 22 Oct 2020 11:00:01 -0700 (PDT)
MIME-Version: 1.0
References: <202010211637.7CFD8435@keescook> <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
 <202010212028.32E8A5EF9B@keescook> <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com> <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk> <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
 <20201022162334.GQ1551@shell.armlinux.org.uk> <CAMj1kXF+2kJrUaDyA-Xw4rz2bsuEipX3P4JyPrY1bim76LQvoA@mail.gmail.com>
 <20201022174826.GS1551@shell.armlinux.org.uk>
In-Reply-To: <20201022174826.GS1551@shell.armlinux.org.uk>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 22 Oct 2020 19:59:50 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHpPbwS8zjsr8S65EMj9XOwPxWiQ5WN_ok8ZAFZg9kSAg@mail.gmail.com>
Message-ID: <CAMj1kXHpPbwS8zjsr8S65EMj9XOwPxWiQ5WN_ok8ZAFZg9kSAg@mail.gmail.com>
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Dmitry Osipenko <digetx@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ingo Molnar <mingo@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=pXAsfTDy;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 22 Oct 2020 at 19:48, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Thu, Oct 22, 2020 at 06:33:17PM +0200, Ard Biesheuvel wrote:
> > On Thu, 22 Oct 2020 at 18:23, Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > >
> > > On Thu, Oct 22, 2020 at 06:20:40PM +0200, Ard Biesheuvel wrote:
> > > > On Thu, 22 Oct 2020 at 18:11, Russell King - ARM Linux admin
> > > > <linux@armlinux.org.uk> wrote:
> > > > >
> > > > > On Thu, Oct 22, 2020 at 06:06:32PM +0200, Ard Biesheuvel wrote:
> > > > > > On Thu, 22 Oct 2020 at 17:57, Dmitry Osipenko <digetx@gmail.com=
> wrote:
> > > > > > >
> > > > > > > 22.10.2020 10:06, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=D1=
=82:
> > > > > > > > On Thu, 22 Oct 2020 at 05:30, Kees Cook <keescook@chromium.=
org> wrote:
> > > > > > > >>
> > > > > > > >> On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osipenko =
wrote:
> > > > > > > >>> 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=D1=
=82:
> > > > > > > >>>> On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipenk=
o wrote:
> > > > > > > >>>>> The vfp_kmode_exception() function now is unreachable u=
sing relative
> > > > > > > >>>>> branching in THUMB2 kernel configuration, resulting in =
a "relocation
> > > > > > > >>>>> truncated to fit: R_ARM_THM_JUMP19 against symbol `vfp_=
kmode_exception'"
> > > > > > > >>>>> linker error. Let's use long jump in order to fix the i=
ssue.
> > > > > > > >>>>
> > > > > > > >>>> Eek. Is this with gcc or clang?
> > > > > > > >>>
> > > > > > > >>> GCC 9.3.0
> > > > > > > >>>
> > > > > > > >>>>> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFD=
O input sections")
> > > > > > > >>>>
> > > > > > > >>>> Are you sure it wasn't 512dd2eebe55 ("arm/build: Add mis=
sing sections") ?
> > > > > > > >>>> That commit may have implicitly moved the location of .v=
fp11_veneer,
> > > > > > > >>>> though I thought I had chosen the correct position.
> > > > > > > >>>
> > > > > > > >>> I re-checked that the fixes tag is correct.
> > > > > > > >>>
> > > > > > > >>>>> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> > > > > > > >>>>> ---
> > > > > > > >>>>>  arch/arm/vfp/vfphw.S | 3 ++-
> > > > > > > >>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
> > > > > > > >>>>>
> > > > > > > >>>>> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.=
S
> > > > > > > >>>>> index 4fcff9f59947..6e2b29f0c48d 100644
> > > > > > > >>>>> --- a/arch/arm/vfp/vfphw.S
> > > > > > > >>>>> +++ b/arch/arm/vfp/vfphw.S
> > > > > > > >>>>> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
> > > > > > > >>>>>    ldr     r3, [sp, #S_PSR]        @ Neither lazy resto=
re nor FP exceptions
> > > > > > > >>>>>    and     r3, r3, #MODE_MASK      @ are supported in k=
ernel mode
> > > > > > > >>>>>    teq     r3, #USR_MODE
> > > > > > > >>>>> -  bne     vfp_kmode_exception     @ Returns through lr
> > > > > > > >>>>> +  ldr     r1, =3Dvfp_kmode_exception
> > > > > > > >>>>> +  bxne    r1                      @ Returns through lr
> > > > > > > >>>>>
> > > > > > > >>>>>    VFPFMRX r1, FPEXC               @ Is the VFP enabled=
?
> > > > > > > >>>>>    DBGSTR1 "fpexc %08x", r1
> > > > > > > >>>>
> > > > > > > >>>> This seems like a workaround though? I suspect the vfp11=
_veneer needs
> > > > > > > >>>> moving?
> > > > > > > >>>>
> > > > > > > >>>
> > > > > > > >>> I don't know where it needs to be moved. Please feel free=
 to make a
> > > > > > > >>> patch if you have a better idea, I'll be glad to test it.
> > > > > > > >>
> > > > > > > >> I might have just been distracted by the common "vfp" pref=
ix. It's
> > > > > > > >> possible that the text section shuffling just ended up bei=
ng very large,
> > > > > > > >> so probably this patch is right then!
> > > > > > > >>
> > > > > > > >
> > > > > > > > I already sent a fix for this issue:
> > > > > > > >
> > > > > > > > https://www.armlinux.org.uk/developer/patches/viewpatch.php=
?id=3D9018/1
> > > > > > > >
> > > > > > >
> > > > > > > The offending commit contains stable tag, so I assume that fi=
xes tag is
> > > > > > > mandatory. Yours patch misses the fixes tag.
> > > > > >
> > > > > > Russell, mind adding that? Or would you like me to update the p=
atch in
> > > > > > the patch system?
> > > > >
> > > > > Rather than adding the IT, I'm suggesting that we solve it a diff=
erent
> > > > > way - ensuring that the two bits of code are co-located. There's =
no
> > > > > reason for them to be separated, and the assembly code entry poin=
t is
> > > > > already called indirectly.
> > > > >
> > > > > The problem is the assembly ends up in the .text section which en=
ds up
> > > > > at the start of the binary, but depending on the compiler, functi=
ons
> > > > > in .c files end up in their own sections. It would be good if, as
> > > > > Dmitry has shown that it is indeed possible, to have them co-loca=
ted.
> > > >
> > > > Why is that better? I provided a minimal fix which has zero impact =
on
> > > > ARM builds, and minimal impact on Thumb2 builds, given that it reta=
ins
> > > > the exact same semantics as before, but using a different opcode.
> > >
> > > I think you just described the reason there. Why should we force
> > > everything to use a different opcode when a short jump _should_
> > > suffice?
> > >
> >
> > Why should a short jump suffice? The call is to vfp_kmode_exception(),
> > which we only call in exceptional cases. Why would we want to keep
> > that in close proximity?
>
> You're thinking about it in terms of what happens when the branch is
> taken, rather than also considering that this code path is also
> traversed for _every_ single time that we enter the support code
> not just for kernel mode.
>

True. If 2 bytes of additional opcode are the concern here, we can
change the current sequence

   6:   f093 0f10       teq     r3, #16
   a:   f47f affe       bne.w   0 <vfp_kmode_exception>

to

   6:   2b10            cmp     r3, #16
   8:   bf18            it      ne
   a:   f7ff bffe       bne.w   0 <vfp_kmode_exception>

which takes up the exact same space.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXHpPbwS8zjsr8S65EMj9XOwPxWiQ5WN_ok8ZAFZg9kSAg%40mai=
l.gmail.com.
