Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHEOYHZAKGQE2O5OOMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DB91688FE
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 22:09:50 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id m61sf1702790pjb.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 13:09:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582319388; cv=pass;
        d=google.com; s=arc-20160816;
        b=hNpMxIMNNpDnS0QnsBUwgEu5MgAvfCMo3Xkg4jCbpOza7qyxBFTsJV4df2NW5tZ3WW
         mns5iA+TrWRhlICXcica7u6mUDuROR7D6JuWkNOmYdBp/KqG9VIrglymOil2LDdWdsHL
         srLW8pMWg8tKTnGhu5b8dFKNe+5lwG5dRs0ZIwIuI67m5CSSsjw0TbpkCDkTkCyMPjXe
         kAwdZWYUxpHB++5HR2+s/ocnkIgHj5BXNDjX+HYTLGa6uM+Lr1DHjwy8bmidAF0PYw80
         g4rVR3jkuF2fPIeuTVi3BpNamsB8/X8zHussAjn5d0gOAqeTlxGPBu9YhIF6u61IzGuW
         hhHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QzEQLYLPqktBotBpHOgXD68V9ESXjlhlhYG8Qva9EoI=;
        b=FlexZ1mJwLy2jO7QliHXrEsGzgZPL0+SeXQU/WWxRh4j2oOwxYAv+cYzfFhBjUoyGS
         27N8vGi07ZVg8+JC4FB0XtxPwmM8VM8TXcZoBk+VFFSnLusS4BXiRTv2wI4A35vQ7Rc1
         pd7JoMnzGFMvCkqLJwQZEt9/86mPHqKyV/OghiomER8skl+1K8ArLBBAS+C+lA/74U74
         CDGQ/0+HsvAbpFzA3HoEYstP9g9OmZTJ1oRBn7izFC87fNMRAHf0EAjfVMHTDIP3RcNW
         Wzkb9k5D+uyalixSkSdumGQXG8BW3u5dJ9BLh3h2MA8CfsQ6cBpGTVy5nYCUQHUlBguf
         hYdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Skd5KPmL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QzEQLYLPqktBotBpHOgXD68V9ESXjlhlhYG8Qva9EoI=;
        b=de3COn9LDFPc008y+mB8iUC5SI/6CgYOqRXrF+wXZpcJ7/VVmHK2rgpCzMORCTxdZn
         rqUybGzG5pY8KCNUrbkhzA6hL9TMACW4e1zzz1XXI3TNHdTwCWJnK6psxL5+tTvGpnMb
         R+IQpwnxQ1/HK85l+PY2vM9eOTZX37AAlTDxIIdp/vzOUtVFhhTNEP1y3mM/ibn2rPtJ
         zPA7qu2vB3eapEEir3k+r7GfVD80hYSmb8bozLMvbf+XzEvK/SLlDEck8V429yhoS9cu
         LvUHT0q7ytM8VmXRSPjaEqttOLzMJY1sjwTb6z2NeFkuzD1yoNdm8ZOy5Fjv1PhHXizJ
         iRuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QzEQLYLPqktBotBpHOgXD68V9ESXjlhlhYG8Qva9EoI=;
        b=bfxvXj0kbbvqVEb8M7XyRonHe4uF0GLrgKai7JOf8WismYY8f9/7kZSjLzNko9Ka0s
         FlVYRNnO1VAcDwLBrN6LCUoitnhV26DlTdRagQjSFrC5avmhF+ZZL4yPKIJmlvWveJX+
         Q9E1qsp8tfE/HPOmV2Wcyhw5dr6hnE7Li2GpkYnFUCduIi3ZJGyb7PuvuPCfzUPRrjpf
         pklkPS3Vng+AKP3CI8d0AjFn+BYde/k6mxUcY2wCs1cV/KreU7wG7ybV1n1Uf64yN8fS
         vH9jRq66sFtj0J19sNPqBNCA6r+w+Saq8XZX9xUynFW5hagdNj09ADp6nEYfAA4ErBNu
         ToQg==
X-Gm-Message-State: APjAAAWVJtGBXLOdYK4RoSVVv8UUxkR98I+qSLR0rS58XiL5PKVB/g2c
	uMHXk2Nm1iveJyAlkKjXOuU=
X-Google-Smtp-Source: APXvYqwhu2OWBVzTjRoy+ZqFA65d5tvncFyYRxH26tJhPEq1rGnDLbOUV/dWYXTTBmZRrZPHCXdNkg==
X-Received: by 2002:a63:447:: with SMTP id 68mr38803689pge.97.1582319388099;
        Fri, 21 Feb 2020 13:09:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7281:: with SMTP id d1ls1195813pll.1.gmail; Fri, 21
 Feb 2020 13:09:47 -0800 (PST)
X-Received: by 2002:a17:90a:394d:: with SMTP id n13mr5276040pjf.1.1582319387692;
        Fri, 21 Feb 2020 13:09:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582319387; cv=none;
        d=google.com; s=arc-20160816;
        b=S03iVa9y1btQOI3sQZOovRHhnQQxCc5qdz+Xv2c6W6mXYgjOzXax6FCrrjwowW/sjr
         GMynp2jaRwgJ1HI5dMNIpircf0A8vp+3vws9eqcm9k5qaqwkTayvnBsExV2RlaxAs6CP
         7fJbkTlvoC4KXQK/V9/A2cD9UeuQxyFn1tw/qcVfRUgjYAibzQWAslAKjFD3rL6//Ckg
         jQL9CpwEwU0uM9TtZwVBdQi0q8rgkYr1BFdEK1S7SdLjjSWyWLFK6ykhgJlxmw7xA/Xn
         oJhMtSNvGE8Q92ZQaR+cqd6iCaRXlfJU8IUUsoKXwfAHmVQaHQKSpSM9PCGMWeQfjBE5
         H0/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zUPeoJQT4bo8QV8qvKihcroSkp75IgeOGG1W4e7sFl0=;
        b=A0JnEiwvMdckSqyIIAQeaz354fIZhJXVaMxNKc8zyzQ7npFGfdThQfCUUwqRMNFKw/
         VsuoaKN443zlKevz+ei7bRnbNZKeGZWomF2y64v8tXvv9YtvZ2AuF2RnrkBLlwhI0VYD
         Y7dVPCZpLrP16PFK/P3bVWD++dufPk1jVLMZdGQbwHkM7LUzX8BDfVFRj37ve6EmK+i7
         jY6lSRxFKejrm+pUeeOf27vMEYuqoYigHhWorKw4X1jyqmnSOgZyptlypu8HxYCKvhpL
         3IIyiON9EZTDFFXjsiiMKpA6mhjvlO1hMM09MH5LO6kVFTTr0UvOsqEel/Qs9HjULxco
         Heuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Skd5KPmL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id i16si139288pju.1.2020.02.21.13.09.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2020 13:09:47 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id j4so1615661pgi.1
        for <clang-built-linux@googlegroups.com>; Fri, 21 Feb 2020 13:09:47 -0800 (PST)
X-Received: by 2002:a65:6412:: with SMTP id a18mr14625753pgv.10.1582319387058;
 Fri, 21 Feb 2020 13:09:47 -0800 (PST)
MIME-Version: 1.0
References: <ab67c7c5a1f96af6d22240e57fc27ba766d4193d.1580943526.git.stefan@agner.ch>
 <20200205235440.GW25745@shell.armlinux.org.uk>
In-Reply-To: <20200205235440.GW25745@shell.armlinux.org.uk>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 21 Feb 2020 13:09:36 -0800
Message-ID: <CAKwvOdkxg8vG4FZAFJehMouUHNqXaKT+J2AWtK7mn2EXJKOE5g@mail.gmail.com>
Subject: Re: [PATCH] ARM: kexec: drop invalid assembly argument
To: Stefan Agner <stefan@agner.ch>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Russell King - ARM Linux admin <linux@armlinux.org.uk>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Skd5KPmL;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Wed, Feb 5, 2020 at 3:54 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Feb 05, 2020 at 11:59:26PM +0100, Stefan Agner wrote:
> > The tst menomic has only a single #<const> argument in Thumb mode. There
> > is an ARM variant which allows to write #<const> as #<byte>, #<rot>
> > which probably is where the current syntax comes from.
> >
> > It seems that binutils does not care about the additional parameter.
> > Clang however complains in Thumb2 mode:
> > arch/arm/kernel/relocate_kernel.S:28:12: error: too many operands for
> > instruction
> >  tst r3,#1,0
> >            ^
> >
> > Drop the unnecessary parameter. This fixes building this file in Thumb2
> > mode with the Clang integrated assembler.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/770
> > Signed-off-by: Stefan Agner <stefan@agner.ch>
>
> Please drop it in the patch system, thanks.

Hi Stefan, did you add this to the patch tracking system? Looks like a
bunch got accepted, but I didn't see it in:
https://www.armlinux.org.uk/developer/patches/section.php?section=20&page=132

>
> > ---
> >  arch/arm/kernel/relocate_kernel.S | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/arm/kernel/relocate_kernel.S b/arch/arm/kernel/relocate_kernel.S
> > index 7eaa2ae7aff5..72a08786e16e 100644
> > --- a/arch/arm/kernel/relocate_kernel.S
> > +++ b/arch/arm/kernel/relocate_kernel.S
> > @@ -25,26 +25,26 @@ ENTRY(relocate_new_kernel)
> >       ldr     r3, [r0],#4
> >
> >       /* Is it a destination page. Put destination address to r4 */
> > -     tst     r3,#1,0
> > +     tst     r3,#1
> >       beq     1f
> >       bic     r4,r3,#1
> >       b       0b
> >  1:
> >       /* Is it an indirection page */
> > -     tst     r3,#2,0
> > +     tst     r3,#2
> >       beq     1f
> >       bic     r0,r3,#2
> >       b       0b
> >  1:
> >
> >       /* are we done ? */
> > -     tst     r3,#4,0
> > +     tst     r3,#4
> >       beq     1f
> >       b       2f
> >
> >  1:
> >       /* is it source ? */
> > -     tst     r3,#8,0
> > +     tst     r3,#8
> >       beq     0b
> >       bic r3,r3,#8
> >       mov r6,#1024
> > --
> > 2.25.0
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200205235440.GW25745%40shell.armlinux.org.uk.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkxg8vG4FZAFJehMouUHNqXaKT%2BJ2AWtK7mn2EXJKOE5g%40mail.gmail.com.
