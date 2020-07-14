Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB2VFXD4AKGQEPTHEQOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E0621FE68
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 22:17:47 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id z65sf11230272iof.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 13:17:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594757866; cv=pass;
        d=google.com; s=arc-20160816;
        b=mjpqqy/slAfcLOXFOU8SKezMuJEPyskeF+hWr2zkRElvh70HphcbdaBXE6S6JJW0Kt
         mTZOATSDKYPS249zXSRejT1Xl1kDyIDXVk9Yxajtae5ddO2Bd4sKuIQnv+NwwMMjIh9Z
         FOOCP6UPEbAsVRnYsgFFQvr8tgMlV2JZv4LqVHgTLPXLyvCwpT0sxsqP87MbpfHvr1XL
         hz88Kc2X77SbL1Jy2YkrR2YKR39H7SjT5IZzZD0atI0XEl4sO64bEXIfJjvQnVpCEuJi
         beqW05TKEChsk6/019zP2pvRHK9M703JQIuPqguE6gLpwYylwW8RTudvuSeZQnr3oPix
         XkXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=lS+PKl/1X3JWW8i0fQMfVtCZL9mIjCtp6qdTXl1PRv8=;
        b=QWoTtKFSn2lQFiuVguq/X5Y51yU+DHZ6pwx6my4ffyEw9MUa3hvwz6uFLAjox5VgGK
         4VyU5QQ7pBkUYHUmt973FfgVnnyHscM2cHzNau75CM3xNeDcIlekIqBLXQLvmIv8ZP/6
         9cnVs8ExmSTLYYk5mc36sk85tgzHK7V0G5Z8jGAkeyLeBgsHu3IMvWomXxYBStfpCxtU
         c0DUGoVDR9KPwcOuMAiR4mxo8tYmDni+3EQU68Z98BQU/+Oxder2/DVuIh1O1q/igK8f
         mrAxiAUvdskS8ESfbJGa56eB6LBNww67pjVQA+YTvGmy4aD65ujnfyino+5BLbBwR2aU
         fRPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BAnklL1D;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lS+PKl/1X3JWW8i0fQMfVtCZL9mIjCtp6qdTXl1PRv8=;
        b=d3RDYHQ1W+aFulG6o8xpSSNnPey4AXZf2gfvVGDKFQfqitNdDwqRt10GpZjUvb6h6Y
         pCK/XrXnc8WNtYIKqwrSbeua2uSgzORQ7RXqBCDqxTnJjct3anuZt5zPEHKZxqVciXEF
         OlfWESkwPEJxLteaJL9QM+EqEF5CgIIT4R1yHy09WEpUuvIMoNX2ArsClwpZglfB68oz
         IHHfGrauClwX9s3bgFA1wz9FDpNVqss3J5XB/0PuDOQ4s0NFJ1fZHGZ6k7C/hxx0+u26
         W1c3wVT3R73RmmxENwKhWg1agIuyJrPREIBvr77YjUvWHKJMN6dmbg4vZGt10NXmZ2Jd
         MQTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lS+PKl/1X3JWW8i0fQMfVtCZL9mIjCtp6qdTXl1PRv8=;
        b=hKoJJcXpydHa8zAANvi0UBngRR/juIdXUl3g69dN8NDH2EVuhcTbuY/+V2oW6D4ydK
         QJ6pHGzCcIKokO01BcvnwvwJbmJsGv1UEbCCVyZqDdVZdDnrmzG1trxYMoP9z8IvlBpZ
         Xf/zBvnc7oaFdUnd7TUSUpL59NmFfmPabQdEk3oh+nqyCdXCtGjHq9Kbm6Cv3OAzS7bv
         bO/1aeKBf9oS934e/8sM5uFljaLAe9SheI0yTgvMaVRoS2MUxNEnh4MZ2+r3PP8J/rkx
         WpMZ7bYk5kXgTBYqoRpWdjQdYyBtC7TfUrhlR0HncG93rvK2oJ1s2XkOm0wruaGeo/8c
         anFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lS+PKl/1X3JWW8i0fQMfVtCZL9mIjCtp6qdTXl1PRv8=;
        b=Ie7ZsKLt74DMveMD2+CawgcBOPni81MQsrwXYS9Y1fvXNnYLbVZwyfHeya2ZqQfc5l
         gJnp3Y/Ll1ImyY4/psAy4E/EqEowjpCJIOyZFRr6GxeZOt7Bcdni+wHtUEyrum9t3xWb
         gEnIwbBD3eN1yrDeRBvibaIdWNvAyPj80heCycPb2HWmstDPtYkQN/uM3NpkI7dPeFpB
         33f+NZtk1rM787SWe0finDkJsipPbSqAbDg2ff+l/I3y5Na++iLgFAE2a8hNr+jXFXS0
         09pGFgICwmhMBWA7GuLWMmuEgBvbYzYrZfBPmtecJpGrAeD+HDu7Zbz/chWkmdoxz1Fw
         0iJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305fIWkB9BxgJIuLEnO3kb7r7HyvkBJo3NsOlJ8I6oHf7KB/Ggb
	fIx6Iba0ITfyjfN8SHdfr44=
X-Google-Smtp-Source: ABdhPJw+syQo+xXFadjjPgpvM/h2e4VdkJWesHhEFEHjuprb+URWmWK86evvA7P8W9WOvkOujyfKIw==
X-Received: by 2002:a05:6e02:46:: with SMTP id i6mr6173970ilr.91.1594757866588;
        Tue, 14 Jul 2020 13:17:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5812:: with SMTP id m18ls5490106ilb.2.gmail; Tue, 14 Jul
 2020 13:17:46 -0700 (PDT)
X-Received: by 2002:a92:58d6:: with SMTP id z83mr6389948ilf.186.1594757866187;
        Tue, 14 Jul 2020 13:17:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594757866; cv=none;
        d=google.com; s=arc-20160816;
        b=O6poAvUNedHXsFKtNQnxzW10TqvfktTcaJk4aXZnIQAxfJPDoFx30nCPLJApdwKQBs
         JX8wQnkI1wzBtRgPv1JERVD7rK2yfhpHbnisLrfyMNMANgsfWE/FJnE9FxWJOTlJ1NN0
         n5np+YeNKByQuo5PG9TCQ1soe9YYbTx/7FWp1vYcggspOXkERuU8rPfh7VzVkLe79t67
         QmYYQtqN39x/rBisRE5nSh8AzZCEJsL6I55KY0Ug2qctxkeIoJb9Gf2ygUe+zdCYbpBT
         PKCM3hIi+Es9j/62RegS9DbcEkWxOJteOPoprmWwlyl5fwtEmIqTJXJA90F2G0F9giF9
         cMBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qgHVdnyeVtwp8Gnav38JiZYnYOja0+cMu7TgyaYBSAE=;
        b=L0k4IERgnu8yAyBzIDP9Vm5GQ8C7Z8yAxBMfseQe7KZDCnub0k8C7vvZMvUXLM3T2m
         YqqP3Qf0+jQnP/Bg7hg/0UKS1gMs6nQhhsjxu+hCZOdabzOv9wDL01mRiQLYb8P/dAko
         POltWw1PIssqpQeYM8DOhfdhuLqZHuAtQcy9gMuAiMhj2Ye0C6Aq8Ddi7XFZoK18uc5v
         eVQ1JoZ6355SFVFnigfz+xTgvY6UkEaohiIgn3mbtsIVuj+XqlfvluZAu9mNOns7gMJb
         o/yBaaxepkKx9UotvOoTaxoltaWLava5H6c/uhSXlGW3Vbw6su4cow19AG5fTvvypSGT
         7lGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BAnklL1D;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com. [2607:f8b0:4864:20::141])
        by gmr-mx.google.com with ESMTPS id p1si1292588ioh.3.2020.07.14.13.17.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 13:17:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) client-ip=2607:f8b0:4864:20::141;
Received: by mail-il1-x141.google.com with SMTP id e18so15304611ilr.7
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 13:17:46 -0700 (PDT)
X-Received: by 2002:a92:dc09:: with SMTP id t9mr6623433iln.226.1594757865915;
 Tue, 14 Jul 2020 13:17:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200714023836.2310569-1-nivedita@alum.mit.edu> <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
 <20200714141550.GA329060@rani.riverdale.lan> <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
 <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
 <20200714192956.GA689174@rani.riverdale.lan> <CA+icZUXoZzhUMRsVVexazd=oFK4vKa1KJN5=_KXz+fcYxcA4Rw@mail.gmail.com>
 <20200714200728.GA894572@rani.riverdale.lan> <CA+icZUV9_ox9q+yANQQ-6X41fRb5K7mMn3NSh0_E9R1hO4oC4g@mail.gmail.com>
 <20200714201451.GA902932@rani.riverdale.lan>
In-Reply-To: <20200714201451.GA902932@rani.riverdale.lan>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 22:17:33 +0200
Message-ID: <CA+icZUV45bAExLaUAPkiJEC-kOYw2vMWUrDpy_9XNPeK7WB4qQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
 compressed kernel
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="0000000000001a88c905aa6c808f"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BAnklL1D;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141
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

--0000000000001a88c905aa6c808f
Content-Type: text/plain; charset="UTF-8"

On Tue, Jul 14, 2020 at 10:14 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Jul 14, 2020 at 10:10:14PM +0200, Sedat Dilek wrote:
> > On Tue, Jul 14, 2020 at 10:07 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > On Tue, Jul 14, 2020 at 09:53:19PM +0200, Sedat Dilek wrote:
> > > >
> > > > Hmm, you might be right with moving to LDFLAGS_vmlinux.
> > > >
> > > > Attached are my linux-config and dmesg-output.
> > > >
> > > > - Sedat -
> > >
> > > Which tree are you building against? I notice you have KERNEL_ZSTD
> > > enabled, which hasn't been merged yet.
> > >
> > > Are you using Nick's series [v7]?
> > >
> > > Also from the naming -- are you using LLVM_IAS=1 with some patches to
> > > make it work?
> > >
> > > [v7] https://lore.kernel.org/lkml/20200708185024.2767937-1-nickrterrell@gmail.com/
> >
> > Sorry for not telling you the full story.
> > Yes, I have some additional patches like Nick T. "zstd-v7" which
> > should IMHO not touch this area.
> >
> > - Sedat -
>
> That series does touch boot/compressed, since the point is to add
> support for zstd-compressed kernels. I'll need to test it out, the
> __DISABLE_EXPORTS he's now using must not be working for some reason.

I have seen this in the between zstd-v6 and zstd-v7 - diff attached.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV45bAExLaUAPkiJEC-kOYw2vMWUrDpy_9XNPeK7WB4qQ%40mail.gmail.com.

--0000000000001a88c905aa6c808f
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="zstd-initramfs-terrelln-v6-VS-zstd-initramfs-terrelln-v7.diff"
Content-Disposition: attachment; 
	filename="zstd-initramfs-terrelln-v6-VS-zstd-initramfs-terrelln-v7.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_kcmdnay70>
X-Attachment-Id: f_kcmdnay70

ZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFrZWZpbGUKaW5kZXggZmUwMTY0YTY1NGM3Li5kMTRm
OWI3MDM4YmEgMTAwNjQ0Ci0tLSBhL01ha2VmaWxlCisrKyBiL01ha2VmaWxlCkBAIC00NjQsNiAr
NDY0LDcgQEAgS0xaT1AJCT0gbHpvcAogTFpNQQkJPSBsem1hCiBMWjQJCT0gbHo0YwogWFoJCT0g
eHoKK1pTVEQJCT0genN0ZAogCiBDSEVDS0ZMQUdTICAgICA6PSAtRF9fbGludXhfXyAtRGxpbnV4
IC1EX19TVERDX18gLUR1bml4IC1EX191bml4X18gXAogCQkgIC1XYml0d2lzZSAtV25vLXJldHVy
bi12b2lkIC1Xbm8tdW5rbm93bi1hdHRyaWJ1dGUgJChDRikKQEAgLTUxMiw3ICs1MTMsNyBAQCBD
TEFOR19GTEFHUyA6PQogZXhwb3J0IEFSQ0ggU1JDQVJDSCBDT05GSUdfU0hFTEwgQkFTSCBIT1NU
Q0MgS0JVSUxEX0hPU1RDRkxBR1MgQ1JPU1NfQ09NUElMRSBMRCBDQwogZXhwb3J0IENQUCBBUiBO
TSBTVFJJUCBPQkpDT1BZIE9CSkRVTVAgT0JKU0laRSBSRUFERUxGIFBBSE9MRSBMRVggWUFDQyBB
V0sgSU5TVEFMTEtFUk5FTAogZXhwb3J0IFBFUkwgUFlUSE9OIFBZVEhPTjMgQ0hFQ0sgQ0hFQ0tG
TEFHUyBNQUtFIFVUU19NQUNISU5FIEhPU1RDWFgKLWV4cG9ydCBLR1pJUCBLQlpJUDIgS0xaT1Ag
TFpNQSBMWjQgWFoKK2V4cG9ydCBLR1pJUCBLQlpJUDIgS0xaT1AgTFpNQSBMWjQgWFogWlNURAog
ZXhwb3J0IEtCVUlMRF9IT1NUQ1hYRkxBR1MgS0JVSUxEX0hPU1RMREZMQUdTIEtCVUlMRF9IT1NU
TERMSUJTIExERkxBR1NfTU9EVUxFCiAKIGV4cG9ydCBLQlVJTERfQ1BQRkxBR1MgTk9TVERJTkNf
RkxBR1MgTElOVVhJTkNMVURFIE9CSkNPUFlGTEFHUyBLQlVJTERfTERGTEFHUwpkaWZmIC0tZ2l0
IGEvYXJjaC94ODYvYm9vdC9jb21wcmVzc2VkL01ha2VmaWxlIGIvYXJjaC94ODYvYm9vdC9jb21w
cmVzc2VkL01ha2VmaWxlCmluZGV4IDQ3MWU2MTQwMGEyZS4uMzQ5OGNkOTkwODY5IDEwMDY0NAot
LS0gYS9hcmNoL3g4Ni9ib290L2NvbXByZXNzZWQvTWFrZWZpbGUKKysrIGIvYXJjaC94ODYvYm9v
dC9jb21wcmVzc2VkL01ha2VmaWxlCkBAIC0xNDYsNyArMTQ2LDcgQEAgJChvYmopL3ZtbGludXgu
YmluLmx6bzogJCh2bWxpbnV4LmJpbi5hbGwteSkgRk9SQ0UKICQob2JqKS92bWxpbnV4LmJpbi5s
ejQ6ICQodm1saW51eC5iaW4uYWxsLXkpIEZPUkNFCiAJJChjYWxsIGlmX2NoYW5nZWQsbHo0KQog
JChvYmopL3ZtbGludXguYmluLnpzdDogJCh2bWxpbnV4LmJpbi5hbGwteSkgRk9SQ0UKLQkkKGNh
bGwgaWZfY2hhbmdlZCx6c3RkKQorCSQoY2FsbCBpZl9jaGFuZ2VkLHpzdGQyMikKIAogc3VmZml4
LSQoQ09ORklHX0tFUk5FTF9HWklQKQk6PSBnegogc3VmZml4LSQoQ09ORklHX0tFUk5FTF9CWklQ
MikJOj0gYnoyCmRpZmYgLS1naXQgYS9saWIvZGVjb21wcmVzc191bnpzdGQuYyBiL2xpYi9kZWNv
bXByZXNzX3VuenN0ZC5jCmluZGV4IGYzMTdhZmFiNTAyZi4uMDUzODM0ZjI0YjhjIDEwMDY0NAot
LS0gYS9saWIvZGVjb21wcmVzc191bnpzdGQuYworKysgYi9saWIvZGVjb21wcmVzc191bnpzdGQu
YwpAQCAtNTksMTIgKzU5LDE1IEBACiAgKiB6c3RkJ3Mgb25seSBzb3VyY2UgZGVwZW5kZW55IGlz
IHh4aGFzaCwgd2hpY2ggaGFzIG5vIHNvdXJjZQogICogZGVwZW5kZW5jaWVzLgogICoKLSAqIHpz
dGQgYW5kIHh4aGFzaCBhdm9pZCBkZWNsYXJpbmcgdGhlbXNlbHZlcyBhcyBtb2R1bGVzCi0gKiB3
aGVuIFpTVERfUFJFQk9PVCBhbmQgWFhIX1BSRUJPT1QgYXJlIGRlZmluZWQuCisgKiBXaGVuIFVO
WlNURF9QUkVCT09UIGlzIGRlZmluZWQgd2UgZGVjbGFyZSBfX2RlY29tcHJlc3MoKSwgd2hpY2gg
aXMKKyAqIHVzZWQgZm9yIGtlcm5lbCBkZWNvbXByZXNzaW9uLCBpbnN0ZWFkIG9mIHVuenN0ZCgp
LgorICoKKyAqIF9fRElTQUJMRV9FWFBPUlRTIHN0b3BzIHpzdGQgYW5kIHh4aGFzaCBmcm9tIGRl
Y2xhcmluZyB0aGVtc2VsdmVzCisgKiBhcyBtb2R1bGVzIGJ5IGRpc2FibGluZyB0aGUgRVhQT1JU
X1NZTUJPTCBtYWNyby4KICAqLwogI2lmZGVmIFNUQVRJQwotIyBkZWZpbmUgWlNURF9QUkVCT09U
Ci0jIGRlZmluZSBYWEhfUFJFQk9PVAorIyBkZWZpbmUgVU5aU1REX1BSRUJPT1QKKyMgZGVmaW5l
IF9fRElTQUJMRV9FWFBPUlRTCiAjIGluY2x1ZGUgInh4aGFzaC5jIgogIyBpbmNsdWRlICJ6c3Rk
L2VudHJvcHlfY29tbW9uLmMiCiAjIGluY2x1ZGUgInpzdGQvZnNlX2RlY29tcHJlc3MuYyIKQEAg
LTMxOSw3ICszMjIsNyBAQCBzdGF0aWMgaW50IElOSVQgX191bnpzdGQodW5zaWduZWQgY2hhciAq
aW5fYnVmLCBsb25nIGluX2xlbiwKIAlyZXR1cm4gZXJyOwogfQogCi0jaWZuZGVmIFpTVERfUFJF
Qk9PVAorI2lmbmRlZiBVTlpTVERfUFJFQk9PVAogU1RBVElDIGludCBJTklUIHVuenN0ZCh1bnNp
Z25lZCBjaGFyICpidWYsIGxvbmcgbGVuLAogCQkgICAgICAgbG9uZyAoKmZpbGwpKHZvaWQqLCB1
bnNpZ25lZCBsb25nKSwKIAkJICAgICAgIGxvbmcgKCpmbHVzaCkodm9pZCosIHVuc2lnbmVkIGxv
bmcpLApkaWZmIC0tZ2l0IGEvbGliL3h4aGFzaC5jIGIvbGliL3h4aGFzaC5jCmluZGV4IGI0MzY0
ZTAxMTM5Mi4uYWE2MWUyYTM4MDJmIDEwMDY0NAotLS0gYS9saWIveHhoYXNoLmMKKysrIGIvbGli
L3h4aGFzaC5jCkBAIC04MCwxMSArODAsMTMgQEAgdm9pZCB4eGgzMl9jb3B5X3N0YXRlKHN0cnVj
dCB4eGgzMl9zdGF0ZSAqZHN0LCBjb25zdCBzdHJ1Y3QgeHhoMzJfc3RhdGUgKnNyYykKIHsKIAlt
ZW1jcHkoZHN0LCBzcmMsIHNpemVvZigqZHN0KSk7CiB9CitFWFBPUlRfU1lNQk9MKHh4aDMyX2Nv
cHlfc3RhdGUpOwogCiB2b2lkIHh4aDY0X2NvcHlfc3RhdGUoc3RydWN0IHh4aDY0X3N0YXRlICpk
c3QsIGNvbnN0IHN0cnVjdCB4eGg2NF9zdGF0ZSAqc3JjKQogewogCW1lbWNweShkc3QsIHNyYywg
c2l6ZW9mKCpkc3QpKTsKIH0KK0VYUE9SVF9TWU1CT0woeHhoNjRfY29weV9zdGF0ZSk7CiAKIC8q
LSoqKioqKioqKioqKioqKioqKioqKioqKioqKgogICogU2ltcGxlIEhhc2ggRnVuY3Rpb25zCkBA
IC0xNDksNiArMTUxLDcgQEAgdWludDMyX3QgeHhoMzIoY29uc3Qgdm9pZCAqaW5wdXQsIGNvbnN0
IHNpemVfdCBsZW4sIGNvbnN0IHVpbnQzMl90IHNlZWQpCiAKIAlyZXR1cm4gaDMyOwogfQorRVhQ
T1JUX1NZTUJPTCh4eGgzMik7CiAKIHN0YXRpYyB1aW50NjRfdCB4eGg2NF9yb3VuZCh1aW50NjRf
dCBhY2MsIGNvbnN0IHVpbnQ2NF90IGlucHV0KQogewpAQCAtMjMxLDYgKzIzNCw3IEBAIHVpbnQ2
NF90IHh4aDY0KGNvbnN0IHZvaWQgKmlucHV0LCBjb25zdCBzaXplX3QgbGVuLCBjb25zdCB1aW50
NjRfdCBzZWVkKQogCiAJcmV0dXJuIGg2NDsKIH0KK0VYUE9SVF9TWU1CT0woeHhoNjQpOwogCiAv
Ki0qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgogICog
QWR2YW5jZWQgSGFzaCBGdW5jdGlvbnMKQEAgLTI0Nyw2ICsyNTEsNyBAQCB2b2lkIHh4aDMyX3Jl
c2V0KHN0cnVjdCB4eGgzMl9zdGF0ZSAqc3RhdGVQdHIsIGNvbnN0IHVpbnQzMl90IHNlZWQpCiAJ
c3RhdGUudjQgPSBzZWVkIC0gUFJJTUUzMl8xOwogCW1lbWNweShzdGF0ZVB0ciwgJnN0YXRlLCBz
aXplb2Yoc3RhdGUpKTsKIH0KK0VYUE9SVF9TWU1CT0woeHhoMzJfcmVzZXQpOwogCiB2b2lkIHh4
aDY0X3Jlc2V0KHN0cnVjdCB4eGg2NF9zdGF0ZSAqc3RhdGVQdHIsIGNvbnN0IHVpbnQ2NF90IHNl
ZWQpCiB7CkBAIC0yNjAsNiArMjY1LDcgQEAgdm9pZCB4eGg2NF9yZXNldChzdHJ1Y3QgeHhoNjRf
c3RhdGUgKnN0YXRlUHRyLCBjb25zdCB1aW50NjRfdCBzZWVkKQogCXN0YXRlLnY0ID0gc2VlZCAt
IFBSSU1FNjRfMTsKIAltZW1jcHkoc3RhdGVQdHIsICZzdGF0ZSwgc2l6ZW9mKHN0YXRlKSk7CiB9
CitFWFBPUlRfU1lNQk9MKHh4aDY0X3Jlc2V0KTsKIAogaW50IHh4aDMyX3VwZGF0ZShzdHJ1Y3Qg
eHhoMzJfc3RhdGUgKnN0YXRlLCBjb25zdCB2b2lkICppbnB1dCwgY29uc3Qgc2l6ZV90IGxlbikK
IHsKQEAgLTMyOCw2ICszMzQsNyBAQCBpbnQgeHhoMzJfdXBkYXRlKHN0cnVjdCB4eGgzMl9zdGF0
ZSAqc3RhdGUsIGNvbnN0IHZvaWQgKmlucHV0LCBjb25zdCBzaXplX3QgbGVuKQogCiAJcmV0dXJu
IDA7CiB9CitFWFBPUlRfU1lNQk9MKHh4aDMyX3VwZGF0ZSk7CiAKIHVpbnQzMl90IHh4aDMyX2Rp
Z2VzdChjb25zdCBzdHJ1Y3QgeHhoMzJfc3RhdGUgKnN0YXRlKQogewpAQCAtMzY1LDYgKzM3Miw3
IEBAIHVpbnQzMl90IHh4aDMyX2RpZ2VzdChjb25zdCBzdHJ1Y3QgeHhoMzJfc3RhdGUgKnN0YXRl
KQogCiAJcmV0dXJuIGgzMjsKIH0KK0VYUE9SVF9TWU1CT0woeHhoMzJfZGlnZXN0KTsKIAogaW50
IHh4aDY0X3VwZGF0ZShzdHJ1Y3QgeHhoNjRfc3RhdGUgKnN0YXRlLCBjb25zdCB2b2lkICppbnB1
dCwgY29uc3Qgc2l6ZV90IGxlbikKIHsKQEAgLTQzMSw2ICs0MzksNyBAQCBpbnQgeHhoNjRfdXBk
YXRlKHN0cnVjdCB4eGg2NF9zdGF0ZSAqc3RhdGUsIGNvbnN0IHZvaWQgKmlucHV0LCBjb25zdCBz
aXplX3QgbGVuKQogCiAJcmV0dXJuIDA7CiB9CitFWFBPUlRfU1lNQk9MKHh4aDY0X3VwZGF0ZSk7
CiAKIHVpbnQ2NF90IHh4aDY0X2RpZ2VzdChjb25zdCBzdHJ1Y3QgeHhoNjRfc3RhdGUgKnN0YXRl
KQogewpAQCAtNDg1LDE5ICs0OTQsNyBAQCB1aW50NjRfdCB4eGg2NF9kaWdlc3QoY29uc3Qgc3Ry
dWN0IHh4aDY0X3N0YXRlICpzdGF0ZSkKIAogCXJldHVybiBoNjQ7CiB9Ci0KLSNpZm5kZWYgWFhI
X1BSRUJPT1QKLUVYUE9SVF9TWU1CT0woeHhoMzJfY29weV9zdGF0ZSk7Ci1FWFBPUlRfU1lNQk9M
KHh4aDY0X2NvcHlfc3RhdGUpOwotRVhQT1JUX1NZTUJPTCh4eGgzMik7Ci1FWFBPUlRfU1lNQk9M
KHh4aDY0KTsKLUVYUE9SVF9TWU1CT0woeHhoMzJfcmVzZXQpOwotRVhQT1JUX1NZTUJPTCh4eGg2
NF9yZXNldCk7Ci1FWFBPUlRfU1lNQk9MKHh4aDMyX3VwZGF0ZSk7Ci1FWFBPUlRfU1lNQk9MKHh4
aDMyX2RpZ2VzdCk7Ci1FWFBPUlRfU1lNQk9MKHh4aDY0X3VwZGF0ZSk7CiBFWFBPUlRfU1lNQk9M
KHh4aDY0X2RpZ2VzdCk7CiAKIE1PRFVMRV9MSUNFTlNFKCJEdWFsIEJTRC9HUEwiKTsKIE1PRFVM
RV9ERVNDUklQVElPTigieHhIYXNoIik7Ci0jZW5kaWYKZGlmZiAtLWdpdCBhL2xpYi96c3RkL2Rl
Y29tcHJlc3MuYyBiL2xpYi96c3RkL2RlY29tcHJlc3MuYwppbmRleCA3M2RlZDYzMjc4Y2YuLjI2
OWVlOWE3OTZjMSAxMDA2NDQKLS0tIGEvbGliL3pzdGQvZGVjb21wcmVzcy5jCisrKyBiL2xpYi96
c3RkL2RlY29tcHJlc3MuYwpAQCAtMjQ5MCw3ICsyNDkwLDYgQEAgc2l6ZV90IFpTVERfZGVjb21w
cmVzc1N0cmVhbShaU1REX0RTdHJlYW0gKnpkcywgWlNURF9vdXRCdWZmZXIgKm91dHB1dCwgWlNU
RF9pbkIKIAl9CiB9CiAKLSNpZm5kZWYgWlNURF9QUkVCT09UCiBFWFBPUlRfU1lNQk9MKFpTVERf
REN0eFdvcmtzcGFjZUJvdW5kKTsKIEVYUE9SVF9TWU1CT0woWlNURF9pbml0REN0eCk7CiBFWFBP
UlRfU1lNQk9MKFpTVERfZGVjb21wcmVzc0RDdHgpOwpAQCAtMjUzMCw0ICsyNTI5LDMgQEAgRVhQ
T1JUX1NZTUJPTChaU1REX2luc2VydEJsb2NrKTsKIAogTU9EVUxFX0xJQ0VOU0UoIkR1YWwgQlNE
L0dQTCIpOwogTU9EVUxFX0RFU0NSSVBUSU9OKCJac3RkIERlY29tcHJlc3NvciIpOwotI2VuZGlm
CmRpZmYgLS1naXQgYS9zY3JpcHRzL01ha2VmaWxlLmxpYiBiL3NjcmlwdHMvTWFrZWZpbGUubGli
CmluZGV4IGQ5NjBmODgxNWY4Ny4uNTRmN2I3ZWI1ODBiIDEwMDY0NAotLS0gYS9zY3JpcHRzL01h
a2VmaWxlLmxpYgorKysgYi9zY3JpcHRzL01ha2VmaWxlLmxpYgpAQCAtNDE5LDE0ICs0MTksMjEg
QEAgcXVpZXRfY21kX3h6bWlzYyA9IFhaTUlTQyAgJEAKICMgZm9ybWF0IGhhcyB0aGUgc2l6ZSBp
bmZvcm1hdGlvbiBhdmFpbGFibGUgYXQgdGhlIGJlZ2lubmluZyBvZiB0aGUgZmlsZSB0b28sCiAj
IGJ1dCBpdCdzIGluIGEgbW9yZSBjb21wbGV4IGZvcm1hdCBhbmQgaXQncyBnb29kIHRvIGF2b2lk
IGNoYW5naW5nIHRoZSBwYXJ0CiAjIG9mIHRoZSBib290IGNvZGUgdGhhdCByZWFkcyB0aGUgdW5j
b21wcmVzc2VkIHNpemUuCisjCiAjIE5vdGUgdGhhdCB0aGUgYnl0ZXMgYWRkZWQgYnkgc2l6ZV9h
cHBlbmQgd2lsbCBtYWtlIHRoZSB6c3RkIHRvb2wgdGhpbmsgdGhhdAogIyB0aGUgZmlsZSBpcyBj
b3JydXB0LiBUaGlzIGlzIGV4cGVjdGVkLgorIworIyB6c3RkIHVzZXMgYSBtYXhpbXVtIHdpbmRv
dyBzaXplIG9mIDggTUIuIHpzdGQyMiB1c2VzIGEgbWF4aW11bSB3aW5kb3cgc2l6ZSBvZgorIyAx
MjggTUIuIHpzdGQyMiBpcyB1c2VkIGZvciBrZXJuZWwgY29tcHJlc3Npb24gYmVjYXVzZSBpdCBp
cyBkZWNvbXByZXNzZWQgaW4gYQorIyBzaW5nbGUgcGFzcywgc28genN0ZCBkb2Vzbid0IG5lZWQg
dG8gYWxsb2NhdGUgYSB3aW5kb3cgYnVmZmVyLiBXaGVuIHN0cmVhbWluZworIyBkZWNvbXByZXNz
aW9uIGlzIHVzZWQsIGxpa2UgaW5pdHJhbWZzIGRlY29tcHJlc3Npb24sIHpzdGQyMiBzaG91bGQg
bGlrZWx5IG5vdAorIyBiZSB1c2VkIGJlY2F1c2UgaXQgd291bGQgcmVxdWlyZSB6c3RkIHRvIGFs
bG9jYXRlIGEgMTI4IE1CIGJ1ZmZlci4KIAogcXVpZXRfY21kX3pzdGQgPSBaU1REICAgICRACi1j
bWRfenN0ZCA9IChjYXQgJChmaWx0ZXItb3V0IEZPUkNFLCReKSB8IFwKLQl6c3RkIC0xOSAmJiBc
Ci0gICAgICAgICQoY2FsbCBzaXplX2FwcGVuZCwgJChmaWx0ZXItb3V0IEZPUkNFLCReKSkpID4g
JEAgfHwgXAotCShybSAtZiAkQCA7IGZhbHNlKQorICAgICAgY21kX3pzdGQgPSB7IGNhdCAkKHJl
YWwtcHJlcmVxcykgfCAkKFpTVEQpIC0xOTsgJChzaXplX2FwcGVuZCk7IH0gPiAkQAorCitxdWll
dF9jbWRfenN0ZDIyID0gWlNURDIyICAkQAorICAgICAgY21kX3pzdGQyMiA9IHsgY2F0ICQocmVh
bC1wcmVyZXFzKSB8ICQoWlNURCkgLTIyIC0tdWx0cmE7ICQoc2l6ZV9hcHBlbmQpOyB9ID4gJEAK
IAogIyBBU00gb2Zmc2V0cwogIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
--0000000000001a88c905aa6c808f--
