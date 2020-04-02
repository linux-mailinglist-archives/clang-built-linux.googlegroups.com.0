Return-Path: <clang-built-linux+bncBAABB4HJS32AKGQES7E4WOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DC619BEE2
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 11:48:33 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id x89sf2651343otb.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 02:48:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585820912; cv=pass;
        d=google.com; s=arc-20160816;
        b=zkKeyhCRRuqvMkbuehpKTGeTdKEUCRJZmH+IN4eZNRaNZ9W3R+vXjuE0IzPccTO/jH
         EbsJ3Fnod/wmMRAqVb1VpHM7g9kgoEBMeeeMz+WaagrtvDf3a3AJ+0BCR1aSZSpmLlXz
         xPQhaHo27tZacS4FgAtJF6MQ83a0aKICCvlpXHFExy28G2+hVQHMVZhmdzoeKxPgN0bZ
         aALyvWYkEgr4m+6JcHKo4Qu6R0gcS7kYjbpwCptDZiTCyjr/miUZIh2UJK8iR1W+pkQz
         FuwBt/Zs/3FNUgv7Bpy96MwFconFbgX6DADAwwrdaaSHwyRHCr08czALTm8AE8Yl2Jtb
         rtPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=1VQCobahZj/ULm2dEKmw2pMte+JSZGZbDhhhAt9Xn8I=;
        b=dyFsNeEylOLmXuPyLrLKc62fLmcji0dj5IMhyhphJ6f8950X83kOP4QFdKdOPZJ0VZ
         R3H0PeWoR8mNRxpLtEBfhCNOtmiWHuMeQX6qD0H9AjGGZjhMcnrLmfDdnzMxh98QxdpL
         lKYwGk6Rpjjr4bxfi0F/sEAqcxDhXV6WWOprSmDOsmH6yZuvi2fsjquEA0/o3DO5qAJl
         5IQlXmR6V+GOsU9CVrDkzNwD6dCSqE5Qi/Qgx60N4ptLahaorLvGDctHwKedwkbRVKGy
         4dLiZ7EHmYSv2/PuL+2DlvPpf5ZFhMlZ2ioa6NXg2Z6a/zoKWG7Ha19w2s5gTm9yEFGF
         q+Lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=U48gLdrd;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1VQCobahZj/ULm2dEKmw2pMte+JSZGZbDhhhAt9Xn8I=;
        b=tUOvUwZgmFSfSjI76JoSgePgst6sP26QHD7xQeZe2Z8fSoEiYhT9N+HfOOk9VqflZK
         32yrW9G8M2ElRL0lpwDRX/vcdwMNmXBJCkorVwm8SDjXC0a0X+wYlHGYt1YQbtKYuZU1
         CyF7sI72f56WThzSmo96/NVvO9LeR1QBcJC/GIn8BN7Z4OW7oP358dpBdBrl6/L1ZccQ
         zojDn6QCg9Ney1DQnfmsbjyII93+PQBQ4+l5gg9FOJ10rg2oR9NzTycXTLJ1br7Xlv6D
         AeJ8xM13SnYcnpZ/HINabx1mEwyl3rFMvdHbwLq7z73SP9hdzXjFkCw8/FNGtWySxawh
         E35A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1VQCobahZj/ULm2dEKmw2pMte+JSZGZbDhhhAt9Xn8I=;
        b=MuKa1KVPg+86ZD/OItX2L9WUuTH3CXsEQNhiSoWzVmZbCav22msnOZhdINXfU8TXFR
         R27Ai5czB0bGLjAWupwsnfJqQuAsQosdH+TorETgrjq9WVhZ66tBLKfaA2iEzupmsoZD
         EgYNnlOji82m5/vb0ePji6UGA8bla/cZ2SF1U71LDYtxYWn38vAdJbWy7H/BdsLY4mS/
         3ykbhK9y5lq801C6LXEA6sOGEsX1h9iNp2EVIaiOkHj8ZHqoXxnqaEWMU8Mlh08agMyD
         vaVoy8GqzVp5Erq4EBJc82YMjl5qmsihL+otSkZnS+rGUrv1pVRc/zMvOdwrCoxQk7GK
         Ebyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY6YmNP1njw9e6tsjH+0mObtNlwkK488NWExa/O+BkZ8uVvYfEO
	CVwDNKOtEeFHnXGh9mQpFWE=
X-Google-Smtp-Source: APiQypLrivs0W/PCP5CDEkYk2jaPKCZZGbadhonDMqDHlkQcoLUzxO+ybOpuuFo3nY9tefey/K1Vsw==
X-Received: by 2002:a9d:6184:: with SMTP id g4mr1642141otk.38.1585820912295;
        Thu, 02 Apr 2020 02:48:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:817:: with SMTP id 23ls1257527oty.8.gmail; Thu, 02 Apr
 2020 02:48:31 -0700 (PDT)
X-Received: by 2002:a05:6830:4038:: with SMTP id i24mr1788110ots.0.1585820911910;
        Thu, 02 Apr 2020 02:48:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585820911; cv=none;
        d=google.com; s=arc-20160816;
        b=s6Lz6jW6IgzR/+u3+6IRvyDYeGB06EEBDeB+8rAyaZfr1/idDs1LWJHn6NxFBaY81E
         o0CUXukHASokMRLp9LEipTc50Sblsi6il2Ml3Mbn7qARdox5m01z7m+7pjgHilK11lQ+
         1rNf6o/Kly5iKA00s3e2OzZeSp5WAdC/f9vnllxaO6vWU2UZlwXD3rhGMN9JBBSII0m9
         3C1xrutL3He/OEeri220rWSpN3cRbZrpXbYvCDGrmIqI4M8ILkL4zfCL21LTCGl55ZIz
         9s52JQKXnPs34ZkRvc6fFfe6D4R/jrcRuqeg/lBoXjhfR08rLU3EKP0IyUTHLdeowbas
         kSKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WqSVwMu/XgRmRgXoFN8xwpYtGLGlhY1IItc2egVytZU=;
        b=vOZsi3drJAWEYHN2fME8m0UPXMiGcgrsoqVSCcawvIIWmVAgItqH/4sbOLmWEc4LWn
         htNMmyOcugez6jU4YilBSW9dm7nk29WNEzLlEnOa+p0TWgI9TlSC814UFpGrSsas9k4J
         my4p1DkGZ9EF50x9fA0tdrCWmQ3wSdrr0yaBVIKeQKhNdHn5CQdsrjMDex+PCq4dLt6j
         ZCM6BnvEARmjLCccjU443VZSrZRlQ56fZ1ThY+CVo3/Wff302AUMggbnhH7T8rLP6sGn
         5CwLEJl5OSkThBDy0S3nqDXgTBJlnf/vXSm3/P7u/Hsn4/EkqajL6ApkodHhW8/SCtuA
         sU0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=U48gLdrd;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a63si286872oib.4.2020.04.02.02.48.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 02:48:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E9E2E2080C
	for <clang-built-linux@googlegroups.com>; Thu,  2 Apr 2020 09:48:30 +0000 (UTC)
Received: by mail-il1-f179.google.com with SMTP id n13so2979866ilm.5
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 02:48:30 -0700 (PDT)
X-Received: by 2002:a05:6e02:551:: with SMTP id i17mr2167800ils.218.1585820910280;
 Thu, 02 Apr 2020 02:48:30 -0700 (PDT)
MIME-Version: 1.0
References: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
 <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>
In-Reply-To: <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 2 Apr 2020 11:48:19 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com>
Message-ID: <CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: OMAP2+: drop unnecessary adrl
To: Nick Desaulniers <ndesaulniers@google.com>, Peter.Smith@arm.com
Cc: Stefan Agner <stefan@agner.ch>, Tony Lindgren <tony@atomide.com>, 
	Russell King <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-omap@vger.kernel.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=U48gLdrd;       spf=pass
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

On Wed, 1 Apr 2020 at 20:02, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Sun, Mar 29, 2020 at 1:33 PM Stefan Agner <stefan@agner.ch> wrote:
> >
> > The adrl instruction has been introduced with commit dd31394779aa ("ARM:
> > omap3: Thumb-2 compatibility for sleep34xx.S"), back when this assembly
> > file was considerably longer. Today adr seems to have enough reach, even
> > when inserting about 60 instructions between the use site and the label.
> > Replace adrl with conventional adr instruction.
> >
> > This allows to build this file using Clang's integrated assembler (which
> > does not support the adrl pseudo instruction).
>
> Context: https://github.com/ClangBuiltLinux/linux/issues/430#issuecomment-476124724
> If Peter says it's difficult to implement, I trust him.
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>

I take it this implies that the LLVM linker does not support the
R_ARM_ALU_PC_Gn relocations? Since otherwise, adrl could simply be
expanded to a pair of adds with the appropriate relocations, letting
the linker fix up the immediates (and the ADD vs SUB bits)


> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/430
> > Signed-off-by: Stefan Agner <stefan@agner.ch>
> > ---
> >  arch/arm/mach-omap2/sleep34xx.S | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/mach-omap2/sleep34xx.S b/arch/arm/mach-omap2/sleep34xx.S
> > index ac1324c6453b..c4e97d35c310 100644
> > --- a/arch/arm/mach-omap2/sleep34xx.S
> > +++ b/arch/arm/mach-omap2/sleep34xx.S
> > @@ -72,7 +72,7 @@ ENTRY(enable_omap3630_toggle_l2_on_restore)
> >         stmfd   sp!, {lr}       @ save registers on stack
> >         /* Setup so that we will disable and enable l2 */
> >         mov     r1, #0x1
> > -       adrl    r3, l2dis_3630_offset   @ may be too distant for plain adr
> > +       adr     r3, l2dis_3630_offset
> >         ldr     r2, [r3]                @ value for offset
> >         str     r1, [r2, r3]            @ write to l2dis_3630
> >         ldmfd   sp!, {pc}       @ restore regs and return
> > --
> > 2.25.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan%40agner.ch.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGYiMobkue642iDRdOjEHQK%3DKXpp%3DUrrgik9UU-eWWibQ%40mail.gmail.com.
