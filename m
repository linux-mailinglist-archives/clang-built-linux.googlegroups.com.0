Return-Path: <clang-built-linux+bncBD63HSEZTUIBBSNKYH2AKGQED64DNUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DC71A4587
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 13:15:23 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id q8sf1353009pgv.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 04:15:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586517321; cv=pass;
        d=google.com; s=arc-20160816;
        b=pQczyV3QwD5DKXRd1JwTda9LFFh1eIhGUTwbHkrDXxp1I25uszvOkPoNXbJougukdq
         X8WIQwmOTFqk/4BphHIpsKOco08cifqR07yI3TvLloVPKVh1K0T7la0xgb4erLiVGo0A
         EjP0I40P/fflaO47o0izRTyQQXalAwLQrQ5AJrempKGn1RM+zREy82H76ovE6C3R5PU8
         +/xzOK4ENiA3oPbWUcKcDpNq/P2ZgxtrEYRTYxamanFbG9ELmR7NayW3jaW7MfXZYwcq
         ow8j+idO2EoPky7aifP6sAkdigZnMcb6mA/NR0Bw3M5+WEsrFMnAAODkzak3ntdv4Bw+
         F6ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=nk0BUk6H+Nw8Z1RF/DY3gUmwQXAM/53XvuhMsez7b+o=;
        b=fFyorAhXTeMqGn8lQD9kfkuWaUEwMoErqvN3wcp71LV6xB6s4lGwNdb8lPbAWwowNb
         AMrop/e6Mg2gU/JrZYRvSd8mtsvTuhcxKoZN9pMn3uaWiw6fdCC4meptBcw286a2i+aN
         xZMaeNJDVTDUZqNNuxAgCFfIOv+WebBVyJ/1GG/UxyEyOCDpmnD+CfsGnj8fsqHx2f23
         Cmy7gV8DS4FVrTKgMljizPG0oaaB6XaCGH6c4z9fpmF1jHU1o2iMIGkvdzRHrvggiE9t
         NsLcZplaCZ7pDQX096g2bqkguKh5RJybd0DDJQ3g7iUHOp+DPOA5ylwIeYB1bKW44axr
         t6+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=A3ZpHJd0;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nk0BUk6H+Nw8Z1RF/DY3gUmwQXAM/53XvuhMsez7b+o=;
        b=QK1UXgY1m8WO/X+gs1c9S0PAccQKCqLuCtnYWmvISQb77OkvoOQu1TyMVFbAv6Dr2N
         mbxJ9SECWSO2Blk0Wf2Ydv5V2e4rP+NVCCFyHGe7VGJI6mJsaOB/bPd/CQTQo/snnBSE
         wJgSKmckrzffjIurkvugfIIQ+b5YdIV2XkN0SNxivfRqLRiDlimMizhkbD78t81hwz3P
         OKY3/WloqriICYr7b3eh06WkEsPKsTKx7dVoOcfL2QV74zQJsXEfz5/1fiUWef9eMJpd
         2QxEcA/lLVMN0MCG3t5o9W8imfgjsuNg3IH4c322ujKYur2Th2DkgKlW/HxOijQm6IlR
         ygsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nk0BUk6H+Nw8Z1RF/DY3gUmwQXAM/53XvuhMsez7b+o=;
        b=jsDaRFUd1/J01fLBHr39sK/V2/MJ6tKUvFFmxYhmwLsEaKfWr0H1AV9AGNit27qxcw
         BBLx0N6UUcAkZp9fLIYO/YqHgLw4smFr0kFlzXwtk/AqwwqnHOTYgrpC31ZL++FiJWm9
         QvE7NbJRjW0RDkUhTX5nSbc3rux9i3vFcr3bVcq7qDX/TB8vXekW1d/EFiQBSk+QzsvH
         r14o4VFiqE5OVhOepIWq+lGlnAY9VCcJ3SVGbXILVdlmHkLEMUcHMq6EuaLdghrhpTfl
         uN39mbl4GWYnaNYYV4d1brYr/OzaJn1bBMcol3KeDY7WTKrZ5F2FnuJFFUpjV5gGX7Rg
         QePQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYZvtnefVMy+BXUoUR2SMBGFNeZZfnuBWUmsrBiWX8DtTHKkzBs
	SvLi/i2W60jFWe7asYdSzw8=
X-Google-Smtp-Source: APiQypJUk6rcg6L6b+tAYcNra1Zkdm2oJmShq8q0neVqJnfjqo6TSTd1EtMqHb0tM5/FKWj8zgBW9g==
X-Received: by 2002:a17:902:59d9:: with SMTP id d25mr4142275plj.177.1586517321517;
        Fri, 10 Apr 2020 04:15:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6455:: with SMTP id s21ls8107985pgv.9.gmail; Fri, 10 Apr
 2020 04:15:20 -0700 (PDT)
X-Received: by 2002:a63:2e44:: with SMTP id u65mr4148183pgu.142.1586517320909;
        Fri, 10 Apr 2020 04:15:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586517320; cv=none;
        d=google.com; s=arc-20160816;
        b=SUPGJW0PXQbNqho+eSqB9aH1N/FeQKXh2iFyJfuhR1B5HXH5GpuC6tGdcHMaQFPypF
         Zr0YFZbpsv1ijpOxYoZj0ePIFvxViTh2eC+S4OAW/OL/v6ySjkQ+6tDN/MLSKquZ5f7Q
         D6lKC+XVPz5Ept9YQM5ZQLTZbOTrBREAUGN0CFQbTc9Y1WvkQhlFfjEf6r5FR/n5kuwb
         oIdv9jVIpTjDnSV3zBJae2EohuZ5qcYkkSNngfhD/T7T1wmOjlm7D6S/G9M1WNchIAT6
         ACjtAORJXd4EEuECVD/J020xDMi4MzfFDuO09TKGJmLa130HP6eYEuftUIupau4ERKXR
         riow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iKo/mDdaPYxcPPcLZBizq+p5u1ritpzBmsNSheDWaGE=;
        b=qu4UcZUKyN8hDnihIPZlL/1pJWnjwUSkht5e05HWsjvy4ypGaUykHCTpbFlOP9dsBH
         TSBPo2BTp9HEi/5VXiv4K9oaEqUKC9KW+ou6e/uePwrJBAqQfMJHi9gG4gWGYqzsyKr0
         WY7MkaWbHb66wmQeqlX7hrXfvuvA/Po30YVqU8G9zsv2WE2Jhb4SwqUtuxAMoqf2hD4j
         TWmtt8Hip4lbyotMjxpsn3ZhAfeaAO0ZrSo2CgMqJLwK0+uMlUV4bF+0tmOBwj5ei7/0
         rpG6K/swcLdPKN6hedtLe4LTHFavUmgI3ECKRtFvVhrNSCUC0SIFELnQrHzNjlYyUUGa
         Qt5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=A3ZpHJd0;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f8si493939pjw.3.2020.04.10.04.15.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Apr 2020 04:15:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8A46D20753
	for <clang-built-linux@googlegroups.com>; Fri, 10 Apr 2020 11:15:20 +0000 (UTC)
Received: by mail-il1-f180.google.com with SMTP id t10so1548181iln.2
        for <clang-built-linux@googlegroups.com>; Fri, 10 Apr 2020 04:15:20 -0700 (PDT)
X-Received: by 2002:a92:c788:: with SMTP id c8mr4514670ilk.279.1586517319930;
 Fri, 10 Apr 2020 04:15:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
In-Reply-To: <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 10 Apr 2020 13:15:08 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
Message-ID: <CAMj1kXGXNxXGiC4dmNXHkZ6n=J0Fhim3oSwNx4Bz5m9fEphJvQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Arnd Bergmann <arnd@arndb.de>
Cc: Jian Cai <caij2003@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Peter Smith <Peter.Smith@arm.com>, Stefan Agner <stefan@agner.ch>, 
	David Howells <dhowells@redhat.com>, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, 
	Manoj Gupta <manojgupta@google.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>, 
	Sami Tolvanen <samitolvanen@google.com>, "Eric W. Biederman" <ebiederm@xmission.com>, 
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>, jiancai@google.com, 
	Doug Anderson <armlinux@m.disordat.com>, Dan Williams <dan.j.williams@intel.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Patrick Bellasi <patrick.bellasi@arm.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=A3ZpHJd0;       spf=pass
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

On Fri, 10 Apr 2020 at 11:56, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, Apr 10, 2020 at 1:28 AM Jian Cai <caij2003@gmail.com> wrote:
> >
> > iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
> > Skip this file if LLVM integrated assemmbler or LLD is used to build ARM
> > kernel.
> >
> > Signed-off-by: Jian Cai <caij2003@gmail.com>
>
> It clearly makes sense to limit the Kconfig option to compilers that
> can actually build it.
> A few questions though:
>
> - Given that Armada XP with its PJ4B was still marketed until fairly
> recently[1],
>   wouldn't it make sense to still add support for it? Is it a lot of work?
>

The part of that file that the assembler chokes on hasn't been touched
by anyone since Nico added it 15+ years ago. It can only be built in
ARM mode, and it disassembles to the sequence below (the ld/st fe/fp
mnemonics are not document in recent versions of the ARM ARM, and
aren't understood by Clang either)

Instead of playing all these tricks with Kconfig, couldn't we simply
insert the bare opcodes and be done with it?



00000054 <concan_dump>:
  54: fd812120 stc2 1, cr2, [r1, #128] ; 0x80
  58: fd813121 stc2 1, cr3, [r1, #132] ; 0x84
  5c: fd818122 stc2 1, cr8, [r1, #136] ; 0x88
  60: fd819123 stc2 1, cr9, [r1, #140] ; 0x8c
  64: fd81a124 stc2 1, cr10, [r1, #144] ; 0x90
  68: fd81b125 stc2 1, cr11, [r1, #148] ; 0x94
  6c: e3120002 tst r2, #2
  70: 0a00000f beq b4 <concan_dump+0x60>
  74: edc10100 stfe f0, [r1]
  78: edc11102 stfe f1, [r1, #8]
  7c: edc12104 stfe f2, [r1, #16]
  80: edc13106 stfe f3, [r1, #24]
  84: edc14108 stfe f4, [r1, #32]
  88: edc1510a stfe f5, [r1, #40] ; 0x28
  8c: edc1610c stfe f6, [r1, #48] ; 0x30
  90: edc1710e stfe f7, [r1, #56] ; 0x38
  94: edc18110 stfp f0, [r1, #64] ; 0x40
  98: edc19112 stfp f1, [r1, #72] ; 0x48
  9c: edc1a114 stfp f2, [r1, #80] ; 0x50
  a0: edc1b116 stfp f3, [r1, #88] ; 0x58
  a4: edc1c118 stfp f4, [r1, #96] ; 0x60
  a8: edc1d11a stfp f5, [r1, #104] ; 0x68
  ac: edc1e11c stfp f6, [r1, #112] ; 0x70
  b0: edc1f11e stfp f7, [r1, #120] ; 0x78
  b4: e3300000 teq r0, #0
  b8: 012fff1e bxeq lr

000000bc <concan_load>:
  bc: edd00100 ldfe f0, [r0]
  c0: edd01102 ldfe f1, [r0, #8]
  c4: edd02104 ldfe f2, [r0, #16]
  c8: edd03106 ldfe f3, [r0, #24]
  cc: edd04108 ldfe f4, [r0, #32]
  d0: edd0510a ldfe f5, [r0, #40] ; 0x28
  d4: edd0610c ldfe f6, [r0, #48] ; 0x30
  d8: edd0710e ldfe f7, [r0, #56] ; 0x38
  dc: edd08110 ldfp f0, [r0, #64] ; 0x40
  e0: edd09112 ldfp f1, [r0, #72] ; 0x48
  e4: edd0a114 ldfp f2, [r0, #80] ; 0x50
  e8: edd0b116 ldfp f3, [r0, #88] ; 0x58
  ec: edd0c118 ldfp f4, [r0, #96] ; 0x60
  f0: edd0d11a ldfp f5, [r0, #104] ; 0x68
  f4: edd0e11c ldfp f6, [r0, #112] ; 0x70
  f8: edd0f11e ldfp f7, [r0, #120] ; 0x78
  fc: fd902120 ldc2 1, cr2, [r0, #128] ; 0x80
 100: fd903121 ldc2 1, cr3, [r0, #132] ; 0x84
 104: fd908122 ldc2 1, cr8, [r0, #136] ; 0x88
 108: fd909123 ldc2 1, cr9, [r0, #140] ; 0x8c
 10c: fd90a124 ldc2 1, cr10, [r0, #144] ; 0x90
 110: fd90b125 ldc2 1, cr11, [r0, #148] ; 0x94
 114: e3310000 teq r1, #0
 118: e3a02000 mov r2, #0
 11c: 012fff1e bxeq lr
 120: ee012110 flts f1, r2
 124: e12fff1e bx lr

> - Why does the linker have to understand it, rather than just the assembler?
>
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index 66a04f6f4775..39de8fc64a73 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -804,7 +804,7 @@ source "arch/arm/mm/Kconfig"
> >
> >  config IWMMXT
> >         bool "Enable iWMMXt support"
> > -       depends on CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B
> > +       depends on !AS_IS_CLANG && !LD_IS_LLD && (CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B)
>
> I would suggest splitting it into two lines for readability:
>
>        depends on  CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B
>        depends on !AS_IS_CLANG && !LD_IS_LLD
>
>     Arnd
>
> [1] http://web.archive.org/web/20191015165247/https://www.marvell.com/embedded-processors/armada/index.jsp
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGXNxXGiC4dmNXHkZ6n%3DJ0Fhim3oSwNx4Bz5m9fEphJvQ%40mail.gmail.com.
