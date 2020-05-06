Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBWUDZL2QKGQESFE37WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1681C6CC4
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 11:22:34 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id p7sf224941ljg.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 02:22:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588756954; cv=pass;
        d=google.com; s=arc-20160816;
        b=BesKe6IMZXKjnLBTunVxgAoErpX6c4tbXLMzXcusvd7So/WgDDe1ikC1ncWB4gl7Ql
         1CB3sF31L3ubJ16412VkPEzRMrA0LEN38hQWszd4NoGq7Ye+jHBPnHt07aFPpls1T9Bk
         09v3I432p/Hd81TxPLbwwcFUTpk6sGO7yX6L8wPBKn05LST/Emyv13NVJZVN//te6g7u
         02qAD1zmsPwFBcUXE8Do4goVaBK6IsqfQo26jAbCHr/bvGdIdT1Wfca2RWW+kui+dK5H
         WqDRohCJvHAtGJ0VhaGJos6+Nr9NelDCgGFWj124j4wde0KMdeU6jzqqVhabXHd3Y4nC
         ErBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=rlK2H2M+XnhVkQ7YwuvBESh3ROTV37Al4jG1Xfdrluw=;
        b=fEX5Le9ZFl+v49VmX0OHAraEJJBw1kwuypohGv12EKBMvM7ZNJipz8lZPLJ4HKOoM3
         5355bWU0KAJn9KGqJPJnfIpPBKVM2aCUwzi9L5rG2zMFXgZPjfZ9pTbGCMcl0DO2aKfj
         8E26VEGkOf/HIzLyEtiS96Gbi+/oT1wH8BOqpFE+V3HLzmgGHkioE1GWpq8czDQqnm6e
         sDGVCREH9CY+JAV2h4Boi1hrJsskHvzYzjJZrjiuJexvFADC8Dfdcb2aE5eB9zwzK2dd
         TN6mtrHvDXNmfHGU2X8ocKD90UZKhgZ3LNZWJs8DeCI4WsDvT3GxAGv2clxeLX5JEu77
         BrMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eLBC11Zt;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rlK2H2M+XnhVkQ7YwuvBESh3ROTV37Al4jG1Xfdrluw=;
        b=mXpT2WRegY78d63MFS1trB2CdVmuk579ww6Z1+pYrs44z+V9dT7amIkjzZbobt3h0s
         K9EoBU3gD41m0l6nzUwefZ+kHeHMAy+HU7Ph5p9eJRKkUHYL0vhRq/jeW6XNEA0nFE6y
         DsOb0/V5NVCY0L7eSWfX3N5Gizd4RdLO49kTD4XCYkYvFy2OtOEOtRLxJtbJHLYfKA3s
         T12SU5PorfWpwqfRGokk8jgO2tiNZTFQYMB4drc/+DiTKbVpYKU5ZgFbxAQEqhhW9MKy
         HvwLX+debRfKczyDBaDFmOMnloODPrpuL9IAcOCShV9GXJVM5qp3zvzgpCZOZP6PmsEW
         jLzA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rlK2H2M+XnhVkQ7YwuvBESh3ROTV37Al4jG1Xfdrluw=;
        b=I9TxB4r2dWKYUN6Nyju0ZTTvEZAxL3p7AY831WXuhsc8QsHNaSS28UA6749FdD/XPe
         2VLRsRH/AZJqYEwRkfgm1YKsRg5RTu1edpBgVlScwth5nDxo85H48IvSXaHQ+3UoXgaB
         VeB9DGD7t6FRcNH+vSv4XxeuvttKGhoJ71ymK5f4lL89Ml0SqiHJHQrJ7B/xpkl7BIsq
         IQ561zOnzI4m0gpho3LULX31W8lPVVgQCfwF4tzhvxYB8Nta+miaHcbCNb0yE5oKSD3Q
         N5IqTLa8Q06/30Sgswc8b551Hwi3bH3v65WrOthQnxyBjRZzRYkc+inBaog2mE4UXYW4
         9UBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rlK2H2M+XnhVkQ7YwuvBESh3ROTV37Al4jG1Xfdrluw=;
        b=qiabu1Tpld7byfyIldX1RmWd41HfnXl/kHBOGfi8PwOXWCBkuYvuLmmZTYAGdhwyH6
         QTkpETcP4oP0rEs0H36h82oo9aeSNbScT8d6otPVtuQcTb6ENYak7zB7nV+J1OjEBOTR
         ZUCkz5GGlr3fUcUPlTn9zkZ3bxe+qmTK5dONfaziU/887zLGywhHKIB92kbE0/Ktiqsp
         K2wGVcryyL619pLnAwpglh+Jdk/3AMrG5UKh4PFOyqC6uKHasmiJHrfk21dNmM7PePGk
         oG1bDNwuGcoZ/qWNYNMzaQ8+w3BeDWgFrf+nplq9v7ng+DFIgjEAlSLPxMI7DrNuRwhY
         RCng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZioR09YqveLWreYCOV0URRYE0vK9crIcujChQnIloh7UkPPszF
	Vi0jZBWCcCELhwzuyAkfZ/A=
X-Google-Smtp-Source: APiQypIgsivD1nMtOF9VKGKpBCrml4x+6F8sBWqcUlR8GanJMZz15DkZr+jyaHHcnbi/ssspauK0iw==
X-Received: by 2002:ac2:5588:: with SMTP id v8mr4393707lfg.217.1588756954133;
        Wed, 06 May 2020 02:22:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:86cf:: with SMTP id n15ls262840ljj.11.gmail; Wed, 06 May
 2020 02:22:33 -0700 (PDT)
X-Received: by 2002:a05:651c:97:: with SMTP id 23mr4522070ljq.17.1588756953348;
        Wed, 06 May 2020 02:22:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588756953; cv=none;
        d=google.com; s=arc-20160816;
        b=NRqCwlv62qhVDZ5UgEfK8YuUSg+HIbaV19S3uAzwkbUyCWfFqUvOozUP/ycW8EncZz
         NvoXRARdo6ukjDxG/Me/IaL1weOZwq8FCW1dvfjIrcPUch3uz2Pmg/jweMe8A+x4p5ZF
         b75if+vNCfuSNOd57kevXxooy19V2JfgjflwKN7bt9CFT8UHhMw6vE36v62HVegfGAy9
         zuz1LjrTX9dkVN/zSDUFZVpJCbnpBDneuXrm9W1WGoruifTWQvGurVkUjlJ8jhBM/twY
         fVelGpw5vgkcYCHWXZdGcre0yQ/k2Brj34hJt+aHRrAvrPRlQeq+YnKanuRpFnI9SaA6
         +Rng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oa3P1hvJ9JWgjoriWyaE6QqHlQBf9qEx9mp41zilS0I=;
        b=TiUvW6GYbPXHhXPt/0M3gMhDd9eWLiNcaOUn+4v22HnSZmsvSiQqEBRZtzdR524rZW
         8+jxk7/hSg/wTYq8ADVn7Il/oa0t0IhcVNHBzTFpfZgVaA6Rqs4pDYHp1iTGVIiBVTB4
         GUbYJHgB2PXPV9OJqZkvgbuKJ7y+VikMDB4dz0ZVFDkHuL4SLkZW7EFGorDqRPftqUTm
         4Lu9kZ/u1o0VdfzjImb0rzQe7jx2wf2ecEF4TngiPCtj+OIofBsuQXwws4xCxWhvcVaO
         T1z7hsAZaHBJaGKCwcE31WuPna0o4sAYk8GTmOSIb6RWhj7X4QpOhmca7UJQncjTTGGu
         To2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eLBC11Zt;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id u25si92660ljg.1.2020.05.06.02.22.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 02:22:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id j3so1557602ljg.8
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 02:22:33 -0700 (PDT)
X-Received: by 2002:a05:651c:385:: with SMTP id e5mr4345047ljp.208.1588756952993;
 Wed, 06 May 2020 02:22:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200505174423.199985-1-ndesaulniers@google.com> <20200506043028.GA663805@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200506043028.GA663805@ubuntu-s3-xlarge-x86>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 6 May 2020 11:22:34 +0200
Message-ID: <CA+icZUUnrku_CLpaRchV-tNA4VFDhoYg7pnZuAA55cwghz00_A@mail.gmail.com>
Subject: Re: [PATCH] x86: bitops: fix build regression
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, stable@vger.kernel.org, 
	Jesse Brandeburg <jesse.brandeburg@intel.com>, "kernelci . org bot" <bot@kernelci.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Ilie Halip <ilie.halip@gmail.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Daniel Axtens <dja@axtens.net>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eLBC11Zt;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::241
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

On Wed, May 6, 2020 at 6:30 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, May 05, 2020 at 10:44:22AM -0700, Nick Desaulniers wrote:
> > From: Sedat Dilek <sedat.dilek@gmail.com>
> >
> > It turns out that if your config tickles __builtin_constant_p via
> > differences in choices to inline or not, this now produces invalid
> > assembly:
> >
> > $ cat foo.c
> > long a(long b, long c) {
> >   asm("orb\t%1, %0" : "+q"(c): "r"(b));
> >   return c;
> > }
> > $ gcc foo.c
> > foo.c: Assembler messages:
> > foo.c:2: Error: `%rax' not allowed with `orb'
> >
> > The "q" constraint only has meanting on -m32 otherwise is treated as
> > "r".
> >
> > This is easily reproducible via Clang+CONFIG_STAGING=y+CONFIG_VT6656=m,
> > or Clang+allyesconfig.
>
> For what it's worth, I don't see this with allyesconfig.
>
> > Keep the masking operation to appease sparse (`make C=1`), add back the
> > cast in order to properly select the proper 8b register alias.
> >
> >  [Nick: reworded]
> >
> > Cc: stable@vger.kernel.org
>
> The offending commit was added in 5.7-rc1; we shouldn't need to
> Cc stable since this should be picked up as an -rc fix.
>
> > Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/961
> > Link: https://lore.kernel.org/lkml/20200504193524.GA221287@google.com/
> > Fixes: 1651e700664b4 ("x86: Fix bitops.h warning with a moved cast")
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Reported-by: kernelci.org bot <bot@kernelci.org>
> > Suggested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> > Suggested-by: Ilie Halip <ilie.halip@gmail.com>
>
> Not to split hairs but this is Ilie's diff, he should probably be the
> author with Sedat's Reported-by/Tested-by.
>
> https://github.com/ClangBuiltLinux/linux/issues/961#issuecomment-608239458
>
> But eh, it's all a team effort plus that can only happen with Ilie's
> explicit consent for a Signed-off-by.
>

Digital dementia... Looking 3 weeks back I have put all relevant
informations into the patches in [1], mentionning the diff is from
Ilie.
Ilie for what reason did not react on any response for 3 weeks in the
CBL issue-tracker.
I think Nick wants to quickly fix the Kernel-CI-Bot issue seen with Clang.
Personally, I hope this patch will be upstreamed in (one of) the next
RC release.

I agree on CC:stable can be dropped.
Check causing commit-id:

$ git describe --contains 1651e700664b4
v5.7-rc1~122^2

Thanks.

Regards,
- Sedat -

[1] https://github.com/ClangBuiltLinux/linux/issues/961#issuecomment-613207374

> I am currently doing a set of builds with clang-11 with this patch on
> top of 5.7-rc4 to make sure that all of the cases I have found work.
> Once that is done, I'll comment back with a tag.
>
> > Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  arch/x86/include/asm/bitops.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
> > index b392571c1f1d..139122e5b25b 100644
> > --- a/arch/x86/include/asm/bitops.h
> > +++ b/arch/x86/include/asm/bitops.h
> > @@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long *addr)
> >       if (__builtin_constant_p(nr)) {
> >               asm volatile(LOCK_PREFIX "orb %1,%0"
> >                       : CONST_MASK_ADDR(nr, addr)
> > -                     : "iq" (CONST_MASK(nr) & 0xff)
> > +                     : "iq" ((u8)(CONST_MASK(nr) & 0xff))
> >                       : "memory");
> >       } else {
> >               asm volatile(LOCK_PREFIX __ASM_SIZE(bts) " %1,%0"
> > @@ -74,7 +74,7 @@ arch_clear_bit(long nr, volatile unsigned long *addr)
> >       if (__builtin_constant_p(nr)) {
> >               asm volatile(LOCK_PREFIX "andb %1,%0"
> >                       : CONST_MASK_ADDR(nr, addr)
> > -                     : "iq" (CONST_MASK(nr) ^ 0xff));
> > +                     : "iq" ((u8)(CONST_MASK(nr) ^ 0xff)));
> >       } else {
> >               asm volatile(LOCK_PREFIX __ASM_SIZE(btr) " %1,%0"
> >                       : : RLONG_ADDR(addr), "Ir" (nr) : "memory");
> > --
> > 2.26.2.526.g744177e7f7-goog
> >
>
> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUnrku_CLpaRchV-tNA4VFDhoYg7pnZuAA55cwghz00_A%40mail.gmail.com.
