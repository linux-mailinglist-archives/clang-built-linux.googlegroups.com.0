Return-Path: <clang-built-linux+bncBCQJP74GSUDRBYV42LWAKGQEEUUYB5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7ECC8912
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 14:56:04 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id l7sf9730584otf.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 05:56:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570020963; cv=pass;
        d=google.com; s=arc-20160816;
        b=ciOLgeu4xRceADrn63lACzCmCBiFo6Zr/gINSseCw+fvfnAWRHTrlgNuLKlX0Kh/Fm
         bvERz4MMv486PYyvr53Bjb8ivby3zq+4UHbnrCfWJnAVmUfJi/QNqOKKvmQzpjetH/7Y
         THZ4nx8QiZzcn5prPo/7vuM4UxD2PzedEF2Agpeuojwo4M62ge9PCoUvcAF+r5Bnsv++
         oEDMWOpWB8+OmQphxWk3Qim4oZWWJO3O60qH9bZq0oJ7JTvz1edU+ENA3p1FdvUT85R+
         qq7TMaaKDGIQCl6ckZuw/aBVWubGmpSlYjkdB4B0tOyvQwPt1nApm6AcDJX1i2KoTeth
         mwjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=tkAdUW5yFmBCCw7qnMl8eKGEkWvN4PK6ARezdXMsKgA=;
        b=fcJj8znPpBVJVOngQiapmPsm8OxDp6Ib5HbrZzAXtQpUuHHMA3X+7rffQQPEFgPvWg
         wBnA5/xviaXqzfO29MRDVjJ3v+Ljjzpif5WOpU883tiDCacEU4bcJO+EZhIkCmSJWiKF
         w8TiqQ3H4kC4xymkNIFAY8pIC5/H+yPBehtWY8Sa2gwmsQW2PX5oIH0FoM/E+OeXnX08
         zu5AMYr+tumfdwAiUAfdNjm5Ws9FOilLy4ZbIZQ7h7isrMrYhPDDbeO6P/bec4EeFkmj
         7P4aIA+/0cJlZTcBtmnNuFAuIwvijpkwU9YIgkoTXX+9tpk/pff4xOPLtb1rcXcrwbw1
         f0CA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tkAdUW5yFmBCCw7qnMl8eKGEkWvN4PK6ARezdXMsKgA=;
        b=avGJe6X3fYYyN4JTRsQV5enmjyjRyuYmNiPhwTDy3kzT2LO6FGsG14xKVh32LKdJzH
         90BH0tc+bVMD2t3PBD92bks4J9EiWmUFvAI+CxM30ZjDEugzwy60vSBquk+Q/3lSyPjY
         tbFi71DWdF1G074brkPS1Ck/E2/Kisu8ItUNB4a2P0r859ZkKtPovjS+bDHDSdV1tBy3
         4vqoI5ZsnbkEpHmITJopHtHiDVTXDPaf3JsUGr64mugMJ6QZlqD9xDsGQ1POPWvFzmDW
         Q0e9d9eQqmZbnxFicc/sJ1+Q5QMF9saVhMt+O8Qh0pSUIcVqaFLoJfcA9+NXTpJ5izIu
         Mg/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tkAdUW5yFmBCCw7qnMl8eKGEkWvN4PK6ARezdXMsKgA=;
        b=R1lf7fbR4+Fcu1SBu76hxF19YSIC0M3xpg6RGwyqjPnr7jjqgUUTV59oVtj6K+A6vx
         4/IsvjnAtJkE0P0QpvNKVwX9ksks76rnGjzFFyv3BUicnyHY5hCMKuxr1yS6xr2TF2Vz
         /5mmWxGyvTKsxMdMD6Ssi85CDfv69Xdta26IsC0clHgduqvMh0Tif9vxzq2G9tmTSlh9
         0KrOXAJOCgS0JjzGbYmW8Kd1aMXhOXM4O6YkDE7Ww3SUw+Tv8vtWvLswNX7/tqJzlO2M
         KWPRcPAgD1QIXih/5JkEcNKyGQmwxdMS8pLyAt2H13Q/PmKG8jwQo8c9VBv95gQnLN1R
         +NxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV75giTSywoiBTODW9hgfaE/m2rltbAdMalW68Ls9ESP6lE1r6P
	A3xDniLgEmJGRBoZ4hgA+cA=
X-Google-Smtp-Source: APXvYqzteV/n5IBw294HQulGH1gHU12z6r6ZokcqkoH307w6ipDaRgtVHYVfMnSFxdr9fX3lOEwHRQ==
X-Received: by 2002:a9d:6a59:: with SMTP id h25mr2592598otn.324.1570020962970;
        Wed, 02 Oct 2019 05:56:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5886:: with SMTP id m128ls437026oib.14.gmail; Wed, 02
 Oct 2019 05:56:02 -0700 (PDT)
X-Received: by 2002:aca:5d0a:: with SMTP id r10mr2823495oib.58.1570020962511;
        Wed, 02 Oct 2019 05:56:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570020962; cv=none;
        d=google.com; s=arc-20160816;
        b=ugMgHutlk+YgnQLkxNc1a8L4jOAUVPDhd68ldN8RJv9XlVQrkyHZro4BYoi3Yxh00l
         MnLWVj0puAo+dsp/CN3Z4LjjEopa1YH8iY7j3BuM9bLxTowLhqZW5BYoRLWb9v9xWstn
         cL0n2HP0iNsbjOFt57NuzThJHN3jOssEAHF7oF05uap4ONL6cc9xe0Z36uZHFTAYyYCv
         nVmxcjEAXB0ZleUqyM8r3h4o0PC/bywA6VNGhqFNVARFQqJNLaJGS5prP1pKj/y+Rygj
         /Q+p+KX+lGMc3Kiw/CodSvUI7VMWmquTPPx7GeaD9+JKT4SdevHvyVGw8xenxXyfeF5n
         liZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=jdK03n3+2me9Sk19EdnaoVUhfmldNzf5bSdl3P4k3vY=;
        b=DAkjc2xp3SwX9egVlERPDVe+K0ixoXp06mkuD3ZRe/YNJtRL31TJONDLdPgO1GCb9f
         w1hcldSl8BMVhKqqFc7x1sAKiLQB+kMdaZA9mLhX7qofsrCPUXvHIc10yUC9SeD5G8tw
         zlqwqXW8rYsYP18RdnDdH8AM9SNexQ8tjrr1hV6eVmkXlsTJVqt/rpZf/VALJyFmvoqt
         pRPVWf74RId//vf9uyKTQC2jTfPnYo1Yq9wnfuLRa0rdzAaLRhXEOd3i6F4e/m8DjCNe
         4UfvBpP2nfvlnp8L5B2MgV6ir6+WBIILQQNHN3PA7NptUfsFKI4wpK3w+Z6HSgiVLCBh
         uWkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com. [209.85.167.193])
        by gmr-mx.google.com with ESMTPS id c67si926293oig.1.2019.10.02.05.56.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 05:56:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) client-ip=209.85.167.193;
Received: by mail-oi1-f193.google.com with SMTP id i16so17519944oie.4
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 05:56:02 -0700 (PDT)
X-Received: by 2002:aca:3908:: with SMTP id g8mr2794516oia.54.1570020961944;
 Wed, 02 Oct 2019 05:56:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190930112636.vx2qxo4hdysvxibl@willie-the-truck>
 <CAK7LNASQZ82KSOrQW7+Wq1vFDCg2__maBEAPMLqUDqZMLuj1rA@mail.gmail.com>
 <20190930121803.n34i63scet2ec7ll@willie-the-truck> <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
 <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck> <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck> <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk> <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk> <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
In-Reply-To: <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 2 Oct 2019 14:55:50 +0200
Message-ID: <CAMuHMdWPhE1nNkmL1nj3vpQhB7fP3uDs2i_ZVi0Gf9qij4W2CA@mail.gmail.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King - ARM Linux admin <linux@armlinux.org.uk>, Will Deacon <will@kernel.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Stefan Wahren <wahrenst@gmx.net>, Kees Cook <keescook@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Nick,

On Wed, Oct 2, 2019 at 6:33 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
> On Tue, Oct 1, 2019 at 11:14 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> > On Tue, Oct 01, 2019 at 11:00:11AM -0700, Nick Desaulniers wrote:
> > > On Tue, Oct 1, 2019 at 10:55 AM Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> > > > On Tue, Oct 01, 2019 at 10:44:43AM -0700, Nick Desaulniers wrote:
> > > > > I apologize; I don't mean to be difficult.  I would just like to avoid
> > > > > surprises when code written with the assumption that it will be
> > > > > inlined is not.  It sounds like we found one issue in arm32 and one in
> > > > > arm64 related to outlining.  If we fix those two cases, I think we're
> > > > > close to proceeding with Masahiro's cleanup, which I view as a good
> > > > > thing for the health of the Linux kernel codebase.
> > > >
> > > > Except, using the C preprocessor for this turns the arm32 code into
> > > > yuck:
> > > >
> > > > 1. We'd need to turn get_domain() and set_domain() into multi-line
> > > >    preprocessor macro definitions, using the GCC ({ }) extension
> > > >    so that get_domain() can return a value.
> > > >
> > > > 2. uaccess_save_and_enable() and uaccess_restore() also need to
> > > >    become preprocessor macro definitions too.
> > > >
> > > > So, we end up with multiple levels of nested preprocessor macros.
> > > > When something goes wrong, the compiler warning/error message is
> > > > going to be utterly _horrid_.
> > >
> > > That's why I preferred V1 of Masahiro's patch, that fixed the inline
> > > asm not to make use of caller saved registers before calling a
> > > function that might not be inlined.
> >
> > ... which I objected to based on the fact that this uaccess stuff is
> > supposed to add protection against the kernel being fooled into
> > accessing userspace when it shouldn't.  The whole intention there is
> > that [sg]et_domain(), and uaccess_*() are _always_ inlined as close
> > as possible to the call site of the accessor touching userspace.
>
> Then use the C preprocessor to force the inlining.  I'm sorry it's not
> as pretty as static inline functions.

Which makes us lose the baby^H^H^H^Htype checking performed
on function parameters, requiring to add more ugly checks.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdWPhE1nNkmL1nj3vpQhB7fP3uDs2i_ZVi0Gf9qij4W2CA%40mail.gmail.com.
