Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUUP7LYQKGQEPLVLN2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDD51563BC
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Feb 2020 11:05:07 +0100 (CET)
Received: by mail-yw1-xc39.google.com with SMTP id c68sf1839242ywa.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 Feb 2020 02:05:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581156306; cv=pass;
        d=google.com; s=arc-20160816;
        b=oxo++QyBZuKCIuhCHFGeVyosDSpJj9YVaS+5r6Yh9/pAr5JJvVQb9v+GEqaZ+EM5lY
         /jwm5aHVUlP1i5iKkeWH/ApyfEU/yReOm9vC8pBzeWCjPgP9UbdUh4olXYNxYwQsbET2
         kH7oB3dTRkKRHZX7/Pk7nTKYR4fcfDHDlfGKKdNVzZzXFjMN800qUM0wlBWlXfhVjcv8
         g2AB2l71uPF4Jjt4MZ4OW3G4870wPGnRrcec79HbJCpQeh99uXSlZxtJadjX7sB8muw5
         epeKfpp4MYa+95XDeY4ACEkheL51uad+DE4BolMIReARMi+P8KlAF8XhoyyQowOGCkFS
         zbtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WQjNcC39fyS6d6QZAHvy7sbu/Fy4QvvXQ+4p9fQ6ozk=;
        b=B4yCIWn9JSImYHBD0oIsnoCn0awvMcKkX/a4jK8cR6Mu9DgtuucD7HW8G89xmtRTK1
         m+dcZYthOS4cebmn5uS8nseLj2OQ/ArfsCImumOAFIUKC05MzUHO4pzxbcLRyBiiI6Qh
         OKtiFIiS107FX9Yte5qKhYYXiHu76cwTDdyXIriFGeOIxFzoqp3t6z0AulaEY6Iwf0sG
         NjIzRZ8Glz7SlF3KgpSP0ZnEtDMddt3R+FJPhoqHdPU6hgu8+WQ0uDs+ECAO2lNYZ086
         R44PdAXcVwSEkYPIIX3R5ny7BilFICW/ykYblQaiFFcgozV7hL6DEn0Be0/rMSWoqN9x
         xbpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PZ4fq6KO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WQjNcC39fyS6d6QZAHvy7sbu/Fy4QvvXQ+4p9fQ6ozk=;
        b=gwkfKN/po/Dn3EJtOezA2ZnEI+YlKkZGHSoV20fBAo30Vy+4YOvhJ6DRsnJqYKOQLK
         PSHJIICjdCMcCCRHzwQTacruhheQBjv9rZ6e3SUeAYDqUXeAEzHkZYvCTNNYGCqMRhaO
         iYi78Z4HB/azNERPXjLcdlDofburf5T3ZJTgpgkizgAnw2bovQ825G9HhT7O8LnfHkm4
         /CCLKsSllwa12xQ9JWSgZSPZtTod+r3sFldnSJDsHIqAORc1amkrVWjmfagWRsUQP3sY
         wUuP2BFkuEmavaHwcpdUUEjfKC5Azzz28mMAdp1qEA+HD3Xm7prksdgWfvTQlNh4D0xA
         6N9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WQjNcC39fyS6d6QZAHvy7sbu/Fy4QvvXQ+4p9fQ6ozk=;
        b=UkanGPtjwhAprCc2nNiENRccphi6UuMBwDm3qcl8JwxgSJA6bEfPfJUwkZhPJwZMiT
         xI9BZe9W/6LmnAB3Z29jlo/qIduejHzjWv672jHZBx4vk95KgSqKInLhGqRa1bG/PNg0
         fWLF/0IUQmWrwdbRskDsAEQTpS1eHnuH+U0gXw5BLC+iH2voS8co8Sd0taB5t4uDXA7L
         431vspSZ8YQixB7Dpxo43hhUzWMEs4mEfPGQH1m+Lo8wsgRAQNqKPGvGT94K/WfOMGKV
         aYQ+rnj46ur4/AqrAsy+3oMjqg308VdBuHMobE44LhmqY54yvmMW/RYgogCicD/p1k6c
         4SMQ==
X-Gm-Message-State: APjAAAV/8Bojbwk2Ecw0H6U+oNvc16nUiao+PQyRVVdbIMvSvRHxMUd6
	otB4XxoZ24DS8c/7Y4qpGZo=
X-Google-Smtp-Source: APXvYqzMdXWwrdbl/YV8kcUGtXt6vFM7aGbu125A9jK9oBjkBvSBo74S3ABRyQbPLpGdLE3zEZTqgg==
X-Received: by 2002:a81:a7c9:: with SMTP id e192mr3053469ywh.421.1581156306638;
        Sat, 08 Feb 2020 02:05:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ca8c:: with SMTP id a134ls468549ybg.0.gmail; Sat, 08 Feb
 2020 02:05:06 -0800 (PST)
X-Received: by 2002:a25:e6d3:: with SMTP id d202mr2810100ybh.418.1581156306249;
        Sat, 08 Feb 2020 02:05:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581156306; cv=none;
        d=google.com; s=arc-20160816;
        b=dx/4Rz97pC1k3dyYfV3+NptgHKV3uBioCUnB97O1jILkcstuEzSo5H4Hq/vf2o04sp
         Q4Q6d1qbCaBDt8si0y6Qtx1KS5nbE+Ur0B8+MM8rkFt2WyXOcdZkpeV8Wc5OEHt2tNsT
         SMLkgq6wdYWqeP6B9OF+EatQTYLU9f4ZG2soj2qKkEx5zkm4TuaAPEHNfX4H7QSx7IbL
         OyMgtJrnKgIlzJlj2++z/pPVTJqFtzgLws+YildNImQc588WQs/rSxoOwsImuSqpNjzS
         W/NoevKMbIqAR5EHES/r62CNEI89FXADLEDYitjLjwdvLx8Zu6Rra6pobfGBmi5v7rCw
         Ffwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=H0xgMzVvnquxmSoa8b2un9FhUW2CIcx5JEQW64zzoig=;
        b=UQ67dFuuyTfSl9GaEFxL91wh6uehu4233WGVjTdXZuE04IqEC9z0479QKmOgzYuoY9
         1rfjXPC+bEMeGUL7oo0UaGLR/IBrkZu930tL3pehhdHXI58dBA2FBsliYj2cxyCVAOBy
         W79W6jVHCJMBcxgSINWJ7L6ugcmr/o8aa3bshqr2Cn+u6O+FO53siPmS/IpzrFspwvUz
         ONHyeEYJlijB8PFC8mz8GgDk5bxbQJQL1A2G98lpuqebtlqlWhIp4vqtxW6bTs0KCYEB
         B/plee9I8yk47RQrstexNIdT1hhh69pPjYh9nnRHcFCNJ4uwUEgcBdqeITRGTd8WkeY6
         B5GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PZ4fq6KO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id v64si93297ywa.4.2020.02.08.02.05.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Feb 2020 02:05:06 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id 12so2009348pjb.5
        for <clang-built-linux@googlegroups.com>; Sat, 08 Feb 2020 02:05:06 -0800 (PST)
X-Received: by 2002:a17:90a:7784:: with SMTP id v4mr9439882pjk.134.1581156305061;
 Sat, 08 Feb 2020 02:05:05 -0800 (PST)
MIME-Version: 1.0
References: <202002071754.F5F073F1D@keescook> <CAKv+Gu8Wt-QX1+9E+QCk30CAttkXP2P5ZKQACqeMDFGeQ9FCKA@mail.gmail.com>
 <202002080054.CBBE423@keescook>
In-Reply-To: <202002080054.CBBE423@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 8 Feb 2020 10:04:53 +0000
Message-ID: <CAKwvOdmchUkLLQMjagJ1cxa3CwFaAgH8gZcMVNny9Fb0iDVi8A@mail.gmail.com>
Subject: Re: [PATCH] ARM: rename missed uaccess .fixup section
To: Kees Cook <keescook@chromium.org>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Nicolas Pitre <nico@fluxnic.net>, 
	Manoj Gupta <manojgupta@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Russell King - ARM Linux <linux@armlinux.org.uk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PZ4fq6KO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Sat, Feb 8, 2020 at 9:55 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Sat, Feb 08, 2020 at 07:54:39AM +0000, Ard Biesheuvel wrote:
> > On Sat, 8 Feb 2020 at 02:02, Kees Cook <keescook@chromium.org> wrote:
> > >
> > > When the uaccess .fixup section was renamed to .text.fixup, one case was
> > > missed. Under ld.bfd, the orphaned section was moved close to .text
> > > (since they share the "ax" bits), so things would work normally on
> > > uaccess faults. Under ld.lld, the orphaned section was placed outside
> > > the .text section, making it unreachable. Rename the missed section.
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/282
> > > Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1020633#c44
> > > Link: https://lore.kernel.org/r/nycvar.YSQ.7.76.1912032147340.17114@knanqh.ubzr
> > > Fixes: c4a84ae39b4a5 ("ARM: 8322/1: keep .text and .fixup regions closer together")
> > > Cc: stable@vger.kernel.org
> > > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Reported-by: Manoj Gupta <manojgupta@google.com>
> > > Debugged-by: Nick Desaulniers <ndesaulniers@google.com>
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> >
> > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
>
> Thanks!
>
> > As Nick points out, the *(.fixup) line still appears in the
> > decompressor's linker script, but this is harmless, given that we
> > don't ever emit anything into that section. But while we're at it, we
> > might just remove it as well.
>
> Agreed. I'll send a separate patch for that.

Sure, in that case
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> -Kees
>
> >
> >
> > > ---
> > > I completely missed this the first several times I looked at this
> > > problem. Thank you Nicolas for pushing back on the earlier patch!
> > > Manoj or Nathan, can you test this?
> > > ---
> > >  arch/arm/lib/copy_from_user.S | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm/lib/copy_from_user.S b/arch/arm/lib/copy_from_user.S
> > > index 95b2e1ce559c..f8016e3db65d 100644
> > > --- a/arch/arm/lib/copy_from_user.S
> > > +++ b/arch/arm/lib/copy_from_user.S
> > > @@ -118,7 +118,7 @@ ENTRY(arm_copy_from_user)
> > >
> > >  ENDPROC(arm_copy_from_user)
> > >
> > > -       .pushsection .fixup,"ax"
> > > +       .pushsection .text.fixup,"ax"
> > >         .align 0
> > >         copy_abort_preamble
> > >         ldmfd   sp!, {r1, r2, r3}
> > > --
> > > 2.20.1
> > >
> > >
> > > --
> > > Kees Cook
>
> --
> Kees Cook



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmchUkLLQMjagJ1cxa3CwFaAgH8gZcMVNny9Fb0iDVi8A%40mail.gmail.com.
