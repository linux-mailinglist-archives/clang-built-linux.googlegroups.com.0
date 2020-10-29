Return-Path: <clang-built-linux+bncBD63HSEZTUIBBU5D5L6AKGQE2K264FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B8829E7EC
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 10:56:37 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id g20sf1600935plj.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 02:56:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603965395; cv=pass;
        d=google.com; s=arc-20160816;
        b=fnFO4PdfcahOtD/QlDvMktxknx2Q6u9Ori7xXDWY6EuUJ1Qe+C2w+IIhmRyMmP0jGs
         /Cq4dYpvOaiY/4Ps4fdWRtvrB0m0J7D9bpPk3iE68/zbrxn3wTKQV/ux6nXQ85NF698p
         SX39un0UHYzk3kscz8T8y0v0+bY6+1HUwYPGDErWJXEoc1uHWXvIZDaoNB2S9V5MQzz/
         bdV/2+FN/Xteq4eIhi6p0sdEvB38h2qPd1hRkuW/IrTaY08BePMoTdWHBobC+WvEeTDI
         JmHfVw0T98OEyQU/KON8vqkCtkpClhh/b1EoqlVK56B5p8gP1ZY1egd0faQoU9AXbNCP
         RfJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=G3Gqv9sr75iwYInfLtJoWTgySNFbIzaigbea53b4ACk=;
        b=PVz+HF9+lBYrmRf5a/fQnMURUq2xNbCoibmouICOCAop/4ukcT34O4uP31EBdvPPsC
         ZtH0iOVfzdYiWHjOuSF6tT7X7e1MecWTOnjHUGbqRNE6lhXEptgI1sNkcN5Y8/ryBM0I
         yqmGn4KSeF+AkVBeYTvsQZn9phHJZ/UExHssMFIPpDaDfMc1p3G8e5ucIBPRJ0PKc1KK
         FKGfm14zolsLh/DTqnSYcN+DjCARCrBZQxK5aqKCftszQBjKPe4g/3geRbTybGCia1Lu
         Ha+YxjADxxoiJtC+JKdOtpk5z/kS4sV5sHllSUoCr3rBVkfr422ZTPamlqt9CPNNUrod
         vf7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OtLUM0aP;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G3Gqv9sr75iwYInfLtJoWTgySNFbIzaigbea53b4ACk=;
        b=LNV6/uc1lOGQvo03KqlI4UjS7VQu2ISmZNS90NRepixiLfagSA0d/aBzaAliK2/Rwm
         M42xc5+p4qBxmZPOpmJ0+RQFQA5SMaXaVmm69eL0szhpG5TnJpAlLesvJHLObDdgyC+z
         o92nfi9bPPlKEywDVF4zZeV0W5AJ8a16jhXYY1Z4dMZWFalAfYirTi0o5ZxIbWi6qNHq
         VLOygCQ04lge1ArkZ7IlXUPi6UYvN4NEYvDvcV/mCFDF5vvODl2MlsdmsW/kExWNeAZ3
         dfKZ7V2KJU3wVqIsfmMq5pfUXed4nejTJMuAsVzo2olJGYe9+xs4IQzLe3pb3RwXcIZv
         50Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=G3Gqv9sr75iwYInfLtJoWTgySNFbIzaigbea53b4ACk=;
        b=JVqPnN7vGyVLr/hClr9nONKn34LlKnMJN7ZLJefRUMpIy7nnoVwhp32shEQPge5aZs
         7NOdzkFb/fCdZTkOpuSsBJmgSTLs4r6KQU2PUkraMpmrOAoXpb4Dr+g3KDX0szfDhaJX
         +IgSpWTaz8H1fs2MWBcS6ylVKOZof+N2tIoL5z9Lom6jLdXHcZK9JqoEDvjbqL09cWGI
         3YCmr+JNZoKl3Y1dI7GwqhVBOlxuZzuSiXVKz40j2wkw/szFuNRTO3LJ1yeb825gG2nl
         ksv+r3rm9pVeF9jCGmu1QW1APKHuh8p8v2YF/GWz8IWxJkhU9bOd2VUwuo3CQKHf+Y0y
         6q+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Dr/aZEDltnJRYHYCYm+ij0IkHxLaoXSAVaulV47TFRaP+xl5x
	HI6sJ9dHSAQJqkisjhh85E0=
X-Google-Smtp-Source: ABdhPJwuvTX/uUzBL8I3rtbRduXw7ElDCMW1n7EFSyzcyWkGfcshJRPks6S+JfZV9J5dLvt1Q1VKYA==
X-Received: by 2002:a17:90a:840e:: with SMTP id j14mr2455476pjn.65.1603965395684;
        Thu, 29 Oct 2020 02:56:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ee4b:: with SMTP id 11ls1060728plo.8.gmail; Thu, 29
 Oct 2020 02:56:35 -0700 (PDT)
X-Received: by 2002:a17:90a:5a83:: with SMTP id n3mr3502965pji.199.1603965395036;
        Thu, 29 Oct 2020 02:56:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603965395; cv=none;
        d=google.com; s=arc-20160816;
        b=bJR8gHkzcS49rs4d9RjsvACq6WDATBPx5MYnBU1b17GlpJFX0b1AH2jTtQfBbc8IIm
         2FCUYgmtHxJHwSDoesu4+DSOn3hCaKfod5r6gi+vYI/QbC+4+00t+SH6N6OemmVTr1q1
         uBXcrK3oq7Ew25PdjjD+FNX/gkeQYr/h1T9a2/J2mKBFT1VtqWJJcEHmJDp5a0B3yRYA
         R0BJVZQ46XCRqlwYxCaxmUI0dnVF8qVbRCuZGewnjhdnRs8JIO2ab2/1qd14LUb8YRYX
         upQYpgV5VLRQsWry76Tavfrn0MKzv0E+sLFyfrztssAgB76qJ3BVA7Ob/FODP4tDQO3e
         cuaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ETpOrXOUloCqHtEbbIIK+EvcM6FP0ZPdIWRhGp8cuJo=;
        b=BEtZ1SBBRxU6tNX8f8rTpb/hZeJ38xsursxhl3heEZqODqevIq+Bu8uz8rMXXY9S7q
         BxkNWEFcXVZXPVXJfFV0BZLMDxlxDanXSuO9pYt2OJ1DPgB90ijE4pnU0Oz9FCrUzPh0
         TO6EBeefNAP0ZgD8eGg7V1mC9FtGGsqqz32GiEiT9fgsMUXctWSFd1RYJoo4hYmOFZha
         HQKQ5TKXY80Ijch6u+Ti8B50/DO0jplAWKXuOp9O4nbwIrSnQe2AmClhu2dt0AppvsRD
         PZQ4Y4Vezxrdk4Qj0xVNmdKVGAz/gCLGQn8sZ8EdHe3tb0FRZSXoIYsoO7sXEnlmEW6/
         ywUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OtLUM0aP;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h17si134562pjv.3.2020.10.29.02.56.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2020 02:56:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5529B2076E
	for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 09:56:34 +0000 (UTC)
Received: by mail-ot1-f41.google.com with SMTP id 32so1759040otm.3
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 02:56:34 -0700 (PDT)
X-Received: by 2002:a9d:2daa:: with SMTP id g39mr2734821otb.77.1603965393472;
 Thu, 29 Oct 2020 02:56:33 -0700 (PDT)
MIME-Version: 1.0
References: <202010211637.7CFD8435@keescook> <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
 <202010212028.32E8A5EF9B@keescook> <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com> <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk> <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
 <20201022162334.GQ1551@shell.armlinux.org.uk> <CAMj1kXF+2kJrUaDyA-Xw4rz2bsuEipX3P4JyPrY1bim76LQvoA@mail.gmail.com>
 <20201022174826.GS1551@shell.armlinux.org.uk> <CAMj1kXHpPbwS8zjsr8S65EMj9XOwPxWiQ5WN_ok8ZAFZg9kSAg@mail.gmail.com>
 <CAMj1kXGok50R+2FZ=LqRAx5N3otC3AvC26=+NUqNC6kSvY2-Lg@mail.gmail.com>
In-Reply-To: <CAMj1kXGok50R+2FZ=LqRAx5N3otC3AvC26=+NUqNC6kSvY2-Lg@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 29 Oct 2020 10:56:22 +0100
X-Gmail-Original-Message-ID: <CAMj1kXF6EdrJWASQQp57L=3gni6R_pLvZfCaFxCoH=rMRzK_6A@mail.gmail.com>
Message-ID: <CAMj1kXF6EdrJWASQQp57L=3gni6R_pLvZfCaFxCoH=rMRzK_6A@mail.gmail.com>
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
 header.i=@kernel.org header.s=default header.b=OtLUM0aP;       spf=pass
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

On Mon, 26 Oct 2020 at 09:58, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Thu, 22 Oct 2020 at 19:59, Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Thu, 22 Oct 2020 at 19:48, Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > >
> > > On Thu, Oct 22, 2020 at 06:33:17PM +0200, Ard Biesheuvel wrote:
> > > > On Thu, 22 Oct 2020 at 18:23, Russell King - ARM Linux admin
> > > > <linux@armlinux.org.uk> wrote:
> > > > >
> > > > > On Thu, Oct 22, 2020 at 06:20:40PM +0200, Ard Biesheuvel wrote:
> > > > > > On Thu, 22 Oct 2020 at 18:11, Russell King - ARM Linux admin
> > > > > > <linux@armlinux.org.uk> wrote:
> > > > > > >
> > > > > > > On Thu, Oct 22, 2020 at 06:06:32PM +0200, Ard Biesheuvel wrot=
e:
> > > > > > > > On Thu, 22 Oct 2020 at 17:57, Dmitry Osipenko <digetx@gmail=
.com> wrote:
> > > > > > > > >
> > > > > > > > > 22.10.2020 10:06, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=
=D1=82:
> > > > > > > > > > On Thu, 22 Oct 2020 at 05:30, Kees Cook <keescook@chrom=
ium.org> wrote:
> > > > > > > > > >>
> > > > > > > > > >> On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osipe=
nko wrote:
> > > > > > > > > >>> 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=
=D1=82:
> > > > > > > > > >>>> On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osi=
penko wrote:
> > > > > > > > > >>>>> The vfp_kmode_exception() function now is unreachab=
le using relative
> > > > > > > > > >>>>> branching in THUMB2 kernel configuration, resulting=
 in a "relocation
> > > > > > > > > >>>>> truncated to fit: R_ARM_THM_JUMP19 against symbol `=
vfp_kmode_exception'"
> > > > > > > > > >>>>> linker error. Let's use long jump in order to fix t=
he issue.
> > > > > > > > > >>>>
> > > > > > > > > >>>> Eek. Is this with gcc or clang?
> > > > > > > > > >>>
> > > > > > > > > >>> GCC 9.3.0
> > > > > > > > > >>>
> > > > > > > > > >>>>> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and Au=
toFDO input sections")
> > > > > > > > > >>>>
> > > > > > > > > >>>> Are you sure it wasn't 512dd2eebe55 ("arm/build: Add=
 missing sections") ?
> > > > > > > > > >>>> That commit may have implicitly moved the location o=
f .vfp11_veneer,
> > > > > > > > > >>>> though I thought I had chosen the correct position.
> > > > > > > > > >>>
> > > > > > > > > >>> I re-checked that the fixes tag is correct.
> > > > > > > > > >>>
> > > > > > > > > >>>>> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> > > > > > > > > >>>>> ---
> > > > > > > > > >>>>>  arch/arm/vfp/vfphw.S | 3 ++-
> > > > > > > > > >>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
> > > > > > > > > >>>>>
> > > > > > > > > >>>>> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vf=
phw.S
> > > > > > > > > >>>>> index 4fcff9f59947..6e2b29f0c48d 100644
> > > > > > > > > >>>>> --- a/arch/arm/vfp/vfphw.S
> > > > > > > > > >>>>> +++ b/arch/arm/vfp/vfphw.S
> > > > > > > > > >>>>> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
> > > > > > > > > >>>>>    ldr     r3, [sp, #S_PSR]        @ Neither lazy r=
estore nor FP exceptions
> > > > > > > > > >>>>>    and     r3, r3, #MODE_MASK      @ are supported =
in kernel mode
> > > > > > > > > >>>>>    teq     r3, #USR_MODE
> > > > > > > > > >>>>> -  bne     vfp_kmode_exception     @ Returns throug=
h lr
> > > > > > > > > >>>>> +  ldr     r1, =3Dvfp_kmode_exception
> > > > > > > > > >>>>> +  bxne    r1                      @ Returns throug=
h lr
> > > > > > > > > >>>>>
> > > > > > > > > >>>>>    VFPFMRX r1, FPEXC               @ Is the VFP ena=
bled?
> > > > > > > > > >>>>>    DBGSTR1 "fpexc %08x", r1
> > > > > > > > > >>>>
> > > > > > > > > >>>> This seems like a workaround though? I suspect the v=
fp11_veneer needs
> > > > > > > > > >>>> moving?
> > > > > > > > > >>>>
> > > > > > > > > >>>
> > > > > > > > > >>> I don't know where it needs to be moved. Please feel =
free to make a
> > > > > > > > > >>> patch if you have a better idea, I'll be glad to test=
 it.
> > > > > > > > > >>
> > > > > > > > > >> I might have just been distracted by the common "vfp" =
prefix. It's
> > > > > > > > > >> possible that the text section shuffling just ended up=
 being very large,
> > > > > > > > > >> so probably this patch is right then!
> > > > > > > > > >>
> > > > > > > > > >
> > > > > > > > > > I already sent a fix for this issue:
> > > > > > > > > >
> > > > > > > > > > https://www.armlinux.org.uk/developer/patches/viewpatch=
.php?id=3D9018/1
> > > > > > > > > >
> > > > > > > > >
> > > > > > > > > The offending commit contains stable tag, so I assume tha=
t fixes tag is
> > > > > > > > > mandatory. Yours patch misses the fixes tag.
> > > > > > > >
> > > > > > > > Russell, mind adding that? Or would you like me to update t=
he patch in
> > > > > > > > the patch system?
> > > > > > >
> > > > > > > Rather than adding the IT, I'm suggesting that we solve it a =
different
> > > > > > > way - ensuring that the two bits of code are co-located. Ther=
e's no
> > > > > > > reason for them to be separated, and the assembly code entry =
point is
> > > > > > > already called indirectly.
> > > > > > >
> > > > > > > The problem is the assembly ends up in the .text section whic=
h ends up
> > > > > > > at the start of the binary, but depending on the compiler, fu=
nctions
> > > > > > > in .c files end up in their own sections. It would be good if=
, as
> > > > > > > Dmitry has shown that it is indeed possible, to have them co-=
located.
> > > > > >
> > > > > > Why is that better? I provided a minimal fix which has zero imp=
act on
> > > > > > ARM builds, and minimal impact on Thumb2 builds, given that it =
retains
> > > > > > the exact same semantics as before, but using a different opcod=
e.
> > > > >
> > > > > I think you just described the reason there. Why should we force
> > > > > everything to use a different opcode when a short jump _should_
> > > > > suffice?
> > > > >
> > > >
> > > > Why should a short jump suffice? The call is to vfp_kmode_exception=
(),
> > > > which we only call in exceptional cases. Why would we want to keep
> > > > that in close proximity?
> > >
> > > You're thinking about it in terms of what happens when the branch is
> > > taken, rather than also considering that this code path is also
> > > traversed for _every_ single time that we enter the support code
> > > not just for kernel mode.
> > >
> >
> > True. If 2 bytes of additional opcode are the concern here, we can
> > change the current sequence
> >
> >    6:   f093 0f10       teq     r3, #16
> >    a:   f47f affe       bne.w   0 <vfp_kmode_exception>
> >
> > to
> >
> >    6:   2b10            cmp     r3, #16
> >    8:   bf18            it      ne
> >    a:   f7ff bffe       bne.w   0 <vfp_kmode_exception>
> >
> > which takes up the exact same space.
>
> BTW this code path looks slightly broken for Thumb-2 in any case: if a
> FP exception is taken in kernel mode on a Thumb2 kernel, we enter the
> emulation sequence via call_fpe, which will use the wrong set of
> value/mask pairs to match the opcode. The minimal fix is to move the
> call_fpe label to the right place, but I think it might be better to
> move the check for a FP exception in kernel mode to the handling of
> __und_svc.

Do we have a resolution here? This is causing breakage in kernelci

https://kernelci.org/build/id/5f9a834c5ed3c05dd538101b/

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXF6EdrJWASQQp57L%3D3gni6R_pLvZfCaFxCoH%3DrMRzK_6A%4=
0mail.gmail.com.
