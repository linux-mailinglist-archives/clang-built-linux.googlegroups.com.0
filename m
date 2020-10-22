Return-Path: <clang-built-linux+bncBD63HSEZTUIBBHMNY76AKGQE2UHHIJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 688BC296412
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 19:51:30 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id b22sf1096223oib.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 10:51:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603389086; cv=pass;
        d=google.com; s=arc-20160816;
        b=YqFZ//SuCQWMXRbsVYonGkLkqsYaS7+8FbornA/1zVSJu8j/iKK8RP6jDz8ytR7Cop
         nuNNdVZ79uBuAjWuQ5yJcyTD/hdfRcaM5dZnrHPhOGh92CBRRX6dPH5tXj7+xSeuSR6l
         rCcnDbDRdlFxg4Vz0tqN6CNZolPZy1Ce437tifZ/f0xsQuverMWdbQ1T8ZZUnNmJO7FD
         vZnYhmcC52Va5C37aMKmcO5opdJguzZ7ef5HrjBBg+D/v/Fyvol2svUSNs1SfAJN3aZ2
         owqS3pQe/SvTNVmoSE4IW37+DMFaXBrOWudLr1VYwJsb6VwLmHN4DzRHrz3Paz9icC0M
         X2xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=4j8aFFq3WK3KAdligMo17Gq4RFCOecTHXa1c4ZiOZ9Y=;
        b=rcewPAeGFbUqYxsaKlhHN+y6aYs4VWcReX9XH4sPACD7OqhavsjEC+J5WJpFlaarH2
         U0aWLYyu29TPFOSOYKVI8P43nw/JiZ0CWCb0pHTpAt3qkgv/id5l4JB5SuTBDw9MPIW+
         0Xea3lzZE2NXrKaBEj4yuwbAcNiiZ2MZbFpQi8wu47EbPFHTt9DoL7fC/BNrrGqKvSer
         hCrTjAXVXcLz1u5dOmae42fjHwAhhUrOc+PF0yVA4+b2GlTi2bcO8Wj4BrofsvXvzYAa
         Fjw1kn7jCOfr/tSa/LKGxnNMeeE3X1UbVqT64iA702UCrcT58Ze3slO09NdqWPQCEcmQ
         k5QQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1JQ57i9S;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4j8aFFq3WK3KAdligMo17Gq4RFCOecTHXa1c4ZiOZ9Y=;
        b=CKcLxl3HZZ7TAa9LSL0rBPag7p+mkiKzQguENypTZlTy8i9J+C+SPY7ufBK5N6VWxB
         bqLP8/6uZY7TDI0QOU1RjZcnGra1J0CGhT7fUiyagznkDSC5SUn/O30LWF6Cn6Y3fRAu
         vjQN4LZ2SM5xUpj6cqSq/PYb/mlClcPxeigKHpdzVutKVVbdUEMD+3oIup1P/VuLPDjg
         yKiOejokGRbbxojEhmLfr9ZPThZwaSpyKostNfOdc/KwfdUB0fceknwlM7DLCaVYJRsg
         8m68TqJgo1LlHRDcm0vIFLmVWJiNSfeFRcdLEaaes/uzSQMOD56Cznt1xMyrmCvF+8V8
         0Wfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4j8aFFq3WK3KAdligMo17Gq4RFCOecTHXa1c4ZiOZ9Y=;
        b=XcSe0cW4kKgewi2n2sF670tQvMqwIpsxWP1kLoKid2mPgURED0zf0dq9V44BeU784e
         4P7HgZusA+sP/7PPW81BDfhXpK3YF1zWysPRpfGVw+Q+LKxqCmhXraJiW+xgo24eU61P
         FC/uVaC6jDslxbBsBzKOkkLDcEVynMlHJz4SlnJfXdt5X8dX6SfCfYUjqPE4twa5ql7l
         qMMK/jO/LJoEUo4begJJ4IRsK36HTrBtcmrbB0IVrJ4Owv21OcrUHhVUkW8HN6qVsVZr
         BtuPHTli717ft1PTdgby6GSFCoa9aIqMHcyli6oRnn4Elduuc+eLGRZy1QyYYi5ls/gA
         tZ9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336FjrsgYo3o5LFK8sgZr4qMukx4OYXWi6HJ9N/7j1VH+rOYw6g
	BRdMO0vlUgspRp4Y0V9KSak=
X-Google-Smtp-Source: ABdhPJzruI+6tVxfobY1MuytWyd3Yq/h14o9gE3GvVBZ1whQVhFg/sNySXgEPxAzQn0IErNTOd6MBw==
X-Received: by 2002:a4a:b04f:: with SMTP id g15mr2817176oon.37.1603389086062;
        Thu, 22 Oct 2020 10:51:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:20cb:: with SMTP id z11ls655366otq.9.gmail; Thu, 22
 Oct 2020 10:51:25 -0700 (PDT)
X-Received: by 2002:a05:6830:2012:: with SMTP id e18mr2911273otp.54.1603389085703;
        Thu, 22 Oct 2020 10:51:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603389085; cv=none;
        d=google.com; s=arc-20160816;
        b=rH9rBiSnKOzTb+ufcDqsebyDhbGEFoYlvtJLPXqkd4VFJh8ru62Mo0kODWEaRuGt9m
         TNnL0PmiAAn6ktpdeDV7nlrx4BPQR7Q2tLnpOjTB+ocFVTJ/hIW1E399aF0ncn4m5mHL
         k6VYTHFUKpJo1lrSjg1JTPMZtAFyi87R94rK/hI2eS1bd0u5zeQGSjc9TqO6vYaZb/o5
         Kilu1fMT6M+/Wnx2op33te/kTHCwjAMYpOVImJPDQSnaPNrm3gGSOOX6ZcrwgFSJIz1y
         2g6NxT+mJijvnD6SLR7IVBeR6DFo/M7mZuNa2fog+9+p7rkMNNoD9n2+Te/28WhTTkyj
         CrSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ktwQBtO3udPneUKv0b7mQGzDdabglNbvtiLqWcYFCvU=;
        b=QNHSeTtVjNWeERTqQmcToYPe4/5e6ahaxsNqV1Sx6aO2L9803MmePXO3k4tKsM73ww
         IeM3PZL293BfU+CCleHjdUCmg/UqyEI1TukTgUT1wIY+zeNWVi7Kq2HCn2vFzcU0X5Xm
         qXgHR6G3YZE7kkqmS1mgoykPf0fhedwg2fLjljd/hpJoDb6WKc2lhubHRLq+L9vJWSHm
         WwPX45pMaL7Kw/yZeyd5PDkl3205pDiHNqNnnBSVVL4E01grToOmuQSINliqr7tgwIv+
         m0VNKw3zMDmO6enjdLFHCBk7GGWOgiYtco8hdAa0QdGVuzm2uolrdy5bqqqsKRPvu3g1
         Tq7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1JQ57i9S;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d20si247033oti.1.2020.10.22.10.51.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2020 10:51:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7A71824640
	for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 17:51:24 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id t15so2285361otk.0
        for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 10:51:24 -0700 (PDT)
X-Received: by 2002:a9d:6c92:: with SMTP id c18mr2570122otr.108.1603389083582;
 Thu, 22 Oct 2020 10:51:23 -0700 (PDT)
MIME-Version: 1.0
References: <202010212028.32E8A5EF9B@keescook> <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com> <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk> <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
 <20201022162334.GQ1551@shell.armlinux.org.uk> <53e78602-6370-aeb1-398b-5c065dd562f8@gmail.com>
 <20201022173843.GR1551@shell.armlinux.org.uk> <CAMj1kXHFVH=_bp1GAae3tfEnyYyVJz7UfZv=+n=F+355ePWS+g@mail.gmail.com>
 <20201022175009.GT1551@shell.armlinux.org.uk>
In-Reply-To: <20201022175009.GT1551@shell.armlinux.org.uk>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 22 Oct 2020 19:51:12 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHCPYU2ak_n4y6KruteoF3vE5EeiWcWpYsfh6WKXU7xnw@mail.gmail.com>
Message-ID: <CAMj1kXHCPYU2ak_n4y6KruteoF3vE5EeiWcWpYsfh6WKXU7xnw@mail.gmail.com>
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
 header.i=@kernel.org header.s=default header.b=1JQ57i9S;       spf=pass
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

On Thu, 22 Oct 2020 at 19:50, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Thu, Oct 22, 2020 at 07:47:57PM +0200, Ard Biesheuvel wrote:
> > On Thu, 22 Oct 2020 at 19:38, Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > >
> > > On Thu, Oct 22, 2020 at 07:34:38PM +0300, Dmitry Osipenko wrote:
> > > > 22.10.2020 19:23, Russell King - ARM Linux admin =D0=BF=D0=B8=D1=88=
=D0=B5=D1=82:
> > > > > On Thu, Oct 22, 2020 at 06:20:40PM +0200, Ard Biesheuvel wrote:
> > > > >> On Thu, 22 Oct 2020 at 18:11, Russell King - ARM Linux admin
> > > > >> <linux@armlinux.org.uk> wrote:
> > > > >>>
> > > > >>> On Thu, Oct 22, 2020 at 06:06:32PM +0200, Ard Biesheuvel wrote:
> > > > >>>> On Thu, 22 Oct 2020 at 17:57, Dmitry Osipenko <digetx@gmail.co=
m> wrote:
> > > > >>>>>
> > > > >>>>> 22.10.2020 10:06, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=D1=
=82:
> > > > >>>>>> On Thu, 22 Oct 2020 at 05:30, Kees Cook <keescook@chromium.o=
rg> wrote:
> > > > >>>>>>>
> > > > >>>>>>> On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osipenko w=
rote:
> > > > >>>>>>>> 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=D1=82=
:
> > > > >>>>>>>>> On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipenko=
 wrote:
> > > > >>>>>>>>>> The vfp_kmode_exception() function now is unreachable us=
ing relative
> > > > >>>>>>>>>> branching in THUMB2 kernel configuration, resulting in a=
 "relocation
> > > > >>>>>>>>>> truncated to fit: R_ARM_THM_JUMP19 against symbol `vfp_k=
mode_exception'"
> > > > >>>>>>>>>> linker error. Let's use long jump in order to fix the is=
sue.
> > > > >>>>>>>>>
> > > > >>>>>>>>> Eek. Is this with gcc or clang?
> > > > >>>>>>>>
> > > > >>>>>>>> GCC 9.3.0
> > > > >>>>>>>>
> > > > >>>>>>>>>> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO=
 input sections")
> > > > >>>>>>>>>
> > > > >>>>>>>>> Are you sure it wasn't 512dd2eebe55 ("arm/build: Add miss=
ing sections") ?
> > > > >>>>>>>>> That commit may have implicitly moved the location of .vf=
p11_veneer,
> > > > >>>>>>>>> though I thought I had chosen the correct position.
> > > > >>>>>>>>
> > > > >>>>>>>> I re-checked that the fixes tag is correct.
> > > > >>>>>>>>
> > > > >>>>>>>>>> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> > > > >>>>>>>>>> ---
> > > > >>>>>>>>>>  arch/arm/vfp/vfphw.S | 3 ++-
> > > > >>>>>>>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
> > > > >>>>>>>>>>
> > > > >>>>>>>>>> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> > > > >>>>>>>>>> index 4fcff9f59947..6e2b29f0c48d 100644
> > > > >>>>>>>>>> --- a/arch/arm/vfp/vfphw.S
> > > > >>>>>>>>>> +++ b/arch/arm/vfp/vfphw.S
> > > > >>>>>>>>>> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
> > > > >>>>>>>>>>    ldr     r3, [sp, #S_PSR]        @ Neither lazy restor=
e nor FP exceptions
> > > > >>>>>>>>>>    and     r3, r3, #MODE_MASK      @ are supported in ke=
rnel mode
> > > > >>>>>>>>>>    teq     r3, #USR_MODE
> > > > >>>>>>>>>> -  bne     vfp_kmode_exception     @ Returns through lr
> > > > >>>>>>>>>> +  ldr     r1, =3Dvfp_kmode_exception
> > > > >>>>>>>>>> +  bxne    r1                      @ Returns through lr
> > > > >>>>>>>>>>
> > > > >>>>>>>>>>    VFPFMRX r1, FPEXC               @ Is the VFP enabled?
> > > > >>>>>>>>>>    DBGSTR1 "fpexc %08x", r1
> > > > >>>>>>>>>
> > > > >>>>>>>>> This seems like a workaround though? I suspect the vfp11_=
veneer needs
> > > > >>>>>>>>> moving?
> > > > >>>>>>>>>
> > > > >>>>>>>>
> > > > >>>>>>>> I don't know where it needs to be moved. Please feel free =
to make a
> > > > >>>>>>>> patch if you have a better idea, I'll be glad to test it.
> > > > >>>>>>>
> > > > >>>>>>> I might have just been distracted by the common "vfp" prefi=
x. It's
> > > > >>>>>>> possible that the text section shuffling just ended up bein=
g very large,
> > > > >>>>>>> so probably this patch is right then!
> > > > >>>>>>>
> > > > >>>>>>
> > > > >>>>>> I already sent a fix for this issue:
> > > > >>>>>>
> > > > >>>>>> https://www.armlinux.org.uk/developer/patches/viewpatch.php?=
id=3D9018/1
> > > > >>>>>>
> > > > >>>>>
> > > > >>>>> The offending commit contains stable tag, so I assume that fi=
xes tag is
> > > > >>>>> mandatory. Yours patch misses the fixes tag.
> > > > >>>>
> > > > >>>> Russell, mind adding that? Or would you like me to update the =
patch in
> > > > >>>> the patch system?
> > > > >>>
> > > > >>> Rather than adding the IT, I'm suggesting that we solve it a di=
fferent
> > > > >>> way - ensuring that the two bits of code are co-located. There'=
s no
> > > > >>> reason for them to be separated, and the assembly code entry po=
int is
> > > > >>> already called indirectly.
> > > > >>>
> > > > >>> The problem is the assembly ends up in the .text section which =
ends up
> > > > >>> at the start of the binary, but depending on the compiler, func=
tions
> > > > >>> in .c files end up in their own sections. It would be good if, =
as
> > > > >>> Dmitry has shown that it is indeed possible, to have them co-lo=
cated.
> > > > >>
> > > > >> Why is that better? I provided a minimal fix which has zero impa=
ct on
> > > > >> ARM builds, and minimal impact on Thumb2 builds, given that it r=
etains
> > > > >> the exact same semantics as before, but using a different opcode=
.
> > > > >
> > > > > I think you just described the reason there. Why should we force
> > > > > everything to use a different opcode when a short jump _should_
> > > > > suffice?
> > > > >
> > > > > Your patch may be a single line, but it has a slightly greater
> > > > > impact than the alternative two line solution.
> > > > >
> > > >
> > > > But the two line change isn't portable to stable kernels as-is, isn=
't it?
> > >
> > > Why not?
> > >
> >
> > In any case, I'd prefer not to dump VFP exception handling code into
> > the .vfp11_veneer section, which is documented as below, and typically
> > empty in our case, given that the only FP code we have in the kernel
> > is NEON code.
>
> This is getting out of hand, and really getting beyond a joke. I
> didn't say put it in the ".vfp11_veneer" section.
>

No, but that is what Dmitry's patch proposes.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXHCPYU2ak_n4y6KruteoF3vE5EeiWcWpYsfh6WKXU7xnw%40mai=
l.gmail.com.
