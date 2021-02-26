Return-Path: <clang-built-linux+bncBAABBY634KAQMGQEXQNC7KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 09669325EB3
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 09:14:29 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id 97sf4471101otm.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 00:14:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614327268; cv=pass;
        d=google.com; s=arc-20160816;
        b=aLF/++kUazs6/QXBU7hchRg9mxNR5iVKW/i2yYIwcQnC/vmDcXGdWug96ymbk5gjso
         bbEUyus+2os42geKNPBX6Jxhj6uKKGqpmFyPlmPPNzceLgTIW4pu67b814datf+vHxS0
         h6y1ny777R5B/gpsOwkcNEItCwic+RZxvZ5ezwfi6wtCrQRnBDt3timfIYyPNYtMvWpw
         9PhOMtWVnu+HJrMudUCI1bpuuIOZzil160yBRA8H9rytDhR9bbcfhVkBF4UKUCxKeYMY
         tbFCyLnFW9tlH2hhX8MnQm7hnn0amIVQV7UoEDtLhweRtLlGsJmxOdoAL0ytSUXnkNo2
         LKRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=yezDh/7/GopphiorP3GLQjiYSOUJpOMOLNtB+dwSBp8=;
        b=JjIAAUUWrhey/q39MnK1HQaB6iIhkxafBknFDGUozM8wfE0kDYqSL3LRve+STZh67D
         itAV3wKEQolIOc93dM/0guRHUlcYTjl4L1jPDtT7VOKgPwlmuGTYalnXC8bQcIRxwArU
         3NGJqcgN9A1WJGZXeqOOxyRlRvi0IpaMMOIRGxufhItmTEjxt5l/nGMeMqMukR1STwM0
         se/UCmyWt94drnqqaLETyy1ysIYWSmN3MBKmgHG7j6ULbg2K/5hxFCR9wRZOK90TOswz
         /AvBYgXItYptPsZmC1No2wViz6MQooA6hyECUV5TsraO+9vjKcJ6uKZQh13CS/gath7i
         g1Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=n9feerzo;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yezDh/7/GopphiorP3GLQjiYSOUJpOMOLNtB+dwSBp8=;
        b=d2ykEwBbm27Y5cRd8iBH+GT5YWsxqHOSUytLJaQ2hEGsiGxkS+LHXG6CDptoMq3S2m
         fqRhB768JTNVvwo6Jp+D8JywtpqzvWpo7+h8Vd72BwDircaMR4bjOsxvrmzP7ONuvQCj
         YOorvKY/YF69L1ZOe1AYgBVAxsM/ETzgr268Zw/cO7iYJTMS5DNyoN+FHhtpasuUPl+l
         7ReVLdNhCSPKh4zksGT9CCndF+Hia+rL6LVMmMxqB1b+87EeNDacFW/N7xz3zLwC0A5Z
         8KLYucZYqOGqzqhu8AlXtakZTOFJJN+fLnC26H94ktCM3cWaw9p8Utobph3stP3xo6Ng
         iO2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yezDh/7/GopphiorP3GLQjiYSOUJpOMOLNtB+dwSBp8=;
        b=CfOVirUA+SeAbizgxqqi4KrjkJ5+DXAlMWepx2dqEA0SEI7+lipezSNEy7d7b0NXsY
         DY9KPnZDluUfCs1Xdhrl8dIZ28Aoji3OoKgMWHNMDuLdFOQjaG8PsuQ4tnBa6LSs1rt8
         Ut4RwoAlROKd2xDeM8/OP0JHFBEDRlMbiEWA0krYmitaW87JHGhVYcCB4My0jOB/8gpi
         VeCPClxlo8Jn61ptRkk+gQc1MXDb4ekmuWEgH+B6+7RFSakJ98wM2daDuvQOh8BHGyLw
         KVFzzIc5f4nNf/20+0wBbr3++FDuCM8qsZSatrvoGiEc4VTzFfHsn7lSKQeUkAqbRUtG
         1Z3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OYjCFT4eQm8qym1+8pclvWmdg/NreHsspPI6g0/LmPLdArtmY
	wFLnb7EMDa6ChB+8SF9yEuM=
X-Google-Smtp-Source: ABdhPJy5m4+/1FBuVFwUau8L8VU7aE35p3by/12sGBcqNXEfu4xd+eMatchF8Zy7KrRXXNeHbKZ7vQ==
X-Received: by 2002:aca:fccb:: with SMTP id a194mr1204025oii.5.1614327267851;
        Fri, 26 Feb 2021 00:14:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1553:: with SMTP id l19ls2353200otp.4.gmail; Fri,
 26 Feb 2021 00:14:27 -0800 (PST)
X-Received: by 2002:a9d:640b:: with SMTP id h11mr1396774otl.224.1614327267562;
        Fri, 26 Feb 2021 00:14:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614327267; cv=none;
        d=google.com; s=arc-20160816;
        b=xBUkkheFzt1HIU3OlmG1e2YPyeFsI3Dx6st0z8GHxX8LdtKowQYQbgpL2xHcLipq9r
         mK5BMTJHEXWwdDJOPhA9AdB8RqECdcTv5d7Z1xEvVEwuDHbcJaJoRDLSq+qG5Su949xI
         0sRzchk2UgANBQ7s8tZiD6UdMVC2KtAos2Fj+eTDSY0xw4pL5l5UD22QbnbQycp6RHqj
         Ph8j4+Sq/m4EpWcHHG8iPWUlPIs4CrU8j+UYr6FDIW/RGiwr2KTaaxrt3JUDUZA6h0b3
         VFTfFcO1++9aXcHkigGRxDu1BkRAJpFZrYC6AWXTbYvc8JoLEHwxKl1X+vBiYiampj3E
         IYmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=suaTE+AFYgUitO8P+MnBS5ESEf+VYBcjC8y5M45Dj/g=;
        b=LKENRu/P/fFC8eFhSu5JLXtYBZly2VbUa9sy43nC2/5AeFm+EKBSBPzNoH84nK2zbL
         EvqajwRcgaWShPU6T0UQPbCFH+dAEAibXQXL0K85oFbWhkgEM9i+GhaL8L24quKmznqV
         ZdR/4gsjsR+rwPr31gpHkx5kr0VdoGs+bwqkAxCGYK01Jqbfs1koszcQrGma7OQcZ5dg
         PdKmnEhWqGSsg5enppjvYEnFXqAe1SAS+AUxjVuZtqxkdqnEu1cNgDu0jkHUzMssPbDC
         D0sPFiGtFHJHGjTYtl/bw68SAgF85epxL16G8LDu8VmUNyjw3450byq44/zUcP/cGxDX
         XBLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=n9feerzo;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o21si609644otk.4.2021.02.26.00.14.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2021 00:14:27 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7442C64EE7
	for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 08:14:26 +0000 (UTC)
Received: by mail-oi1-f178.google.com with SMTP id l64so8942588oig.9
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 00:14:26 -0800 (PST)
X-Received: by 2002:aca:4a47:: with SMTP id x68mr1202138oia.67.1614327265563;
 Fri, 26 Feb 2021 00:14:25 -0800 (PST)
MIME-Version: 1.0
References: <20210225112122.2198845-1-arnd@kernel.org> <CA+icZUUDnKBxkfgOVYDdpA29GnLUTT22mqRNyxQeYmay044ejg@mail.gmail.com>
In-Reply-To: <CA+icZUUDnKBxkfgOVYDdpA29GnLUTT22mqRNyxQeYmay044ejg@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 26 Feb 2021 09:14:09 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1QmS6g3cHTR93wWPkKs8vaP6RJEb8nZbTMLX+xphLJRw@mail.gmail.com>
Message-ID: <CAK8P3a1QmS6g3cHTR93wWPkKs8vaP6RJEb8nZbTMLX+xphLJRw@mail.gmail.com>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Mark Brown <broonie@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Kristina Martsenko <kristina.martsenko@arm.com>, Ionela Voinescu <ionela.voinescu@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Andrew Scull <ascull@google.com>, 
	David Brazdil <dbrazdil@google.com>, Marc Zyngier <maz@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=n9feerzo;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Fri, Feb 26, 2021 at 1:36 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Feb 25, 2021 at 12:21 PM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > When looking at kernel size optimizations, I found that arm64
> > does not currently support HAVE_LD_DEAD_CODE_DATA_ELIMINATION,
> > which enables the --gc-sections flag to the linker.
> >
> > I see that for a defconfig build with llvm, there are some
> > notable improvements from enabling this, in particular when
> > combined with the recently added CONFIG_LTO_CLANG_THIN
> > and CONFIG_TRIM_UNUSED_KSYMS:
> >
> >    text    data     bss     dec     hex filename
> > 16570322 10998617 506468 28075407 1ac658f defconfig/vmlinux
> > 16318793 10569913 506468 27395174 1a20466 trim_defconfig/vmlinux
> > 16281234 10984848 504291 27770373 1a7be05 gc_defconfig/vmlinux
> > 16029705 10556880 504355 27090940 19d5ffc gc+trim_defconfig/vmlinux
> > 17040142 11102945 504196 28647283 1b51f73 thinlto_defconfig/vmlinux
> > 16788613 10663201 504196 27956010 1aa932a thinlto+trim_defconfig/vmlinux
> > 16347062 11043384 502499 27892945 1a99cd1 gc+thinlto_defconfig/vmlinux
> > 15759453 10532792 502395 26794640 198da90 gc+thinlto+trim_defconfig/vmlinux
> >
>
> Thanks for the numbers.
> Does CONFIG_TRIM_UNUSED_KSYMS=y have an impact to the build-time (and
> disc-usage - negative way means longer/bigger)?
> Do you have any build-time for the above numbers?

They are in the mailing list archive I linked to:

==== defconfig ====
     332.001786355 seconds time elapsed
    8599.464163000 seconds user
     676.919635000 seconds sys
==== trim_defconfig ====
     448.378576012 seconds time elapsed
   10735.489271000 seconds user
     964.006504000 seconds sys
==== gc_defconfig ====
     324.347492236 seconds time elapsed
    8465.785800000 seconds user
     614.899797000 seconds sys
==== gc+trim_defconfig ====
     429.188875620 seconds time elapsed
   10203.759658000 seconds user
     871.307973000 seconds sys
==== thinlto_defconfig ====
     389.793540200 seconds time elapsed
    9491.665320000 seconds user
     664.858109000 seconds sys
==== thinlto+trim_defconfig ====
     580.431820561 seconds time elapsed
   11429.515538000 seconds user
    1056.985745000 seconds sys
==== gc+thinlto_defconfig ====
     389.484364525 seconds time elapsed
    9473.831980000 seconds user
     675.057675000 seconds sys
==== gc+thinlto+trim_defconfig ====
     580.824912807 seconds time elapsed
   11433.650337000 seconds user
    1049.845569000 seconds sys

So HAVE_LD_DEAD_CODE_DATA_ELIMINATION is a small improvement
on build time (since it can spend less time linking), while
CONFIG_TRIM_UNUSED_KSYMS slows it down quite a bit. Combining
CONFIG_TRIM_UNUSED_KSYMS with CONFIG_THINLTO is really
slow because here most of the time is spent in the final link (especially
when you have many CPU cores to do the earlier bits quickly), but then
it does the link twice.

> BTW, is CONFIG_LD_DEAD_CODE_DATA_ELIMINATION=y setable for x86 (64bit)?
> ( Did not look or check for it. )

No, in mainline, HAVE_LD_DEAD_CODE_DATA_ELIMINATION is currently
only selected on MIPS and PowerPC. I only sent experimental patches to
enable it on arm64 and m68k, but have not tried booting them. If you
select the symbol on x86, you should see similar results.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1QmS6g3cHTR93wWPkKs8vaP6RJEb8nZbTMLX%2BxphLJRw%40mail.gmail.com.
