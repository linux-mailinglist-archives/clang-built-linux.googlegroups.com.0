Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTVL6D7AKGQEMQ56DII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7622DDCF6
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 03:37:03 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id h7sf713173qtn.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 18:37:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608259022; cv=pass;
        d=google.com; s=arc-20160816;
        b=qmcwrlDuZXHKiqQ5rckgZdwVRiVxSjkqTnTQ5sOE2GtIH+aSxEq5Y5mR2VZcNrl4rh
         x+vS8mH+eAoJbVq8hOatfIeP3jWelUs4ogINCuap7xQJ4ZEDcyWEyW36lbx1aR7SesCX
         j3dJ8Hw4P8dUh7/0/8ca62dEzO4scNtkJrurni8lE/dcOA4Jwca5bD5G5S7+rh7iUyvB
         2jp/ZyJXwb+iNbbUstobA4hRbEgQI06ADUm0KcVBSG3y2tvWhq7Uhs9kIrxHO0KSGnHo
         +KWD1uJE1XHT+nzrXDrRdH4MvBKyZw0Mcz9FbzvJqUUvqeN/2ywyCPJ0+KzowA4ncbtp
         R3pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=UnHx0frxF1z3WITBHjwnhBIOOo4Ny/yjDvuk5CRaUCg=;
        b=TRKE0676CVTnfzJKqqgW+NegDSFxPjYMP31pPiy2mUDZdC9pxUWjpZ9gMV1+c2g7ii
         h/4S8695cSjkkyuTLXtfx/iCc8tl7jCBv1sO3XciIujDVoTzsoiDDLllw1O3xucIrf+t
         aJrDFK6f5zLWOoM1bb0n/SBHzjBXEpXt1pXPWzj0QKVHIwm6ouVmXS2p94mGkmH2zxum
         6RxAFUMhSgrWymelBxOf5il2Y+fNwNzytj9YQpg8YPUY9A755f9zjYL+VVBAE2bsc8r3
         6TIlTgzbxamOCxAU99N+xszMvCKxNsEFQ9iK6bQ6Yt3gKeMJCnlVL9hgNSPdeTENMOTv
         x2Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mmrDUgHB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UnHx0frxF1z3WITBHjwnhBIOOo4Ny/yjDvuk5CRaUCg=;
        b=NBIne9OMHufiwsanbY0fjdSu/6VytTbvxcjDN5f4bZsDMhfUBsd2Ug+gN2CFFn9mhJ
         ef4aTvbRlF/Toi/1AbrKjGJibcZfAoZ5atbamUwEfA63emDtVItLypKokVk+N5nzgxL9
         9y4u4N78M1SfZHA8nIOvuxJx6lW6lpNS87voCMfTkt9WZ30ZgRGUpObj0Df/ysn4Q2MS
         J8HS2EeLmovoiOL+iO3MAFaX6YH01zUjzPgKbW1BgF+wlcCc+Kc5aQo2wdQqrnwJ+evf
         laqviFweurOXNweB0s7vuHn2SAOXvyNFoNydY66CU1xDKysk0leyY0F9H8cfmAW0G7BZ
         z6vw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UnHx0frxF1z3WITBHjwnhBIOOo4Ny/yjDvuk5CRaUCg=;
        b=HOJ2gfw2oVFCpIuqRML9z5DXpKA6/NNy+qzaaqCbOeg6keWwVlFNnPuWDPKgqxjA5Y
         i4B1Y1jtbGz7WKXZJRCp90j21Ms33DfvS6dR2XRTHbeOsbcM9E6bkjUArUp+RE3LrIsd
         CWubmZfQR6w0Bg4PTFlUiBmocH8sin9GS5h0R5YGsAW8dSozgtq/WpOeakQTL1eP1ikT
         wnmwrGd21JVlQqIekR9fy490kPtN16waT+oTPwoEBYMffteoothX3yVhFle2kkxXttOI
         aZchXQ+Y2dPbmd9rkM8cVzxqLmC5sE+VLogFHMGLq9m6NY02M5NJfUcM4Iu5ney2InbN
         rX4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UnHx0frxF1z3WITBHjwnhBIOOo4Ny/yjDvuk5CRaUCg=;
        b=MMgpVGKEKYyJ2DocbtBWAvMJKuffGJdeqmQR5/GsOJLRhEBJx/Ou9bzBKGiC5efB8x
         2HF8vc+VHRecHmeqQPWgievlARiIGXS33vI0jvggNzQzG8jr0U7+yz7SmO1rtnZEKmYK
         +xgGlTY5ocVFPGx8gOlLYV2tr9hfv4AsvbrnmDj5hLqfoLRf2nZt0J4FQduGyGwFshHZ
         sDikpWckfBClUy2FE3jXGmDjtmRpmXqum/i6j72O7OosX44C9dUFg/2ROqC1OTGyPn3t
         /d6EbulngMY7NkrpsYKuD8MGg/UTry+TXsFv+jebdvbuQn4S8kTC61FlGzttxHh+BLTo
         yz3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302RWAKcdspx9Gc+TxYt3Hej+l6G4EuhegHedQI+477BHI/k3R1
	Wst863xHGfVqfNfhMkgawJs=
X-Google-Smtp-Source: ABdhPJygsEA9yW8I8bSdy1vxxPpSJaTOFfQyr/8KEAKaH4/DJkw8kZ6rWf2Z6ZZffewi0eyha7tY8Q==
X-Received: by 2002:a37:a095:: with SMTP id j143mr2668773qke.25.1608259022249;
        Thu, 17 Dec 2020 18:37:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2350:: with SMTP id i16ls11024322qtc.10.gmail; Thu, 17
 Dec 2020 18:37:01 -0800 (PST)
X-Received: by 2002:a05:622a:a:: with SMTP id x10mr1925054qtw.29.1608259021802;
        Thu, 17 Dec 2020 18:37:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608259021; cv=none;
        d=google.com; s=arc-20160816;
        b=Vv9sLd8eNQRQUPDbtoNdKC2E3euFnzzZa1mDl0zcL8VQivNxGrj4TC2AiE/LtcqSxd
         1l6BK9rsZ90Ou9J340KUQy4kbpzNqtTURaE++r7LdGFofRDY3odsPzxIdCd5FjtKM/dm
         tr7jy5z5b6Bd9TslwkTzrB6WH7T0KVwGAYP73W077fUPhubURCurglu3duQ9TIcgZ8hK
         UDcIG438/PwhXBp+EP6VPpj7Dv7vCKdkiVXZssvR0umy5tE1z1KKFoCgyfRvOsd2DuFC
         qYyPhEmWcqnhy9aVXDjhiSZFgk16OXjMA5MDN12fmOwpzXGVjG6hFc3Y6Hg/8PR4VNuH
         dPRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=eLeNkTbh4DSc6M1hh6DNaHMv8Lj9zN6vPFWfAXZNwaY=;
        b=FvVPI9PG5TH03nezFABduh/uG3fmrZRy5Jgpf2tf6IwEd2HajlbJTFdWdIs8XbjGZ9
         CfPtKxxfLArHHzf9Ktxvph0scdcxCKbEPdqQv5myBi4spm1p6m3D6deynD7NudkkCXn5
         yMJdq8jwXD6C+Q9dRDbjjRl7UbHdcGxYfars02FK31GI6sDFFPAXF9aZOCvASOObk8pt
         O6siHcyklRWwCj8LutJClQQRzQxIdHn9aTsVhxRNNe944pMXSHcL8TBZ17eDmmSfvnGz
         cPigjRYOHKf5G42q6vMcM4M8abZ5OxquPHSSZOIrDNEbiTRi0jeGFGqUfU0yskVJAGpN
         9vow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mmrDUgHB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com. [2607:f8b0:4864:20::82e])
        by gmr-mx.google.com with ESMTPS id t2si581511qkg.0.2020.12.17.18.37.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Dec 2020 18:37:01 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82e as permitted sender) client-ip=2607:f8b0:4864:20::82e;
Received: by mail-qt1-x82e.google.com with SMTP id g24so375768qtq.12
        for <clang-built-linux@googlegroups.com>; Thu, 17 Dec 2020 18:37:01 -0800 (PST)
X-Received: by 2002:ac8:720c:: with SMTP id a12mr1981900qtp.42.1608259021374;
        Thu, 17 Dec 2020 18:37:01 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id b78sm214183qkg.29.2020.12.17.18.37.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Dec 2020 18:37:00 -0800 (PST)
Date: Thu, 17 Dec 2020 19:36:58 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	kernel-team <kernel-team@android.com>,
	Peter Smith <Peter.Smith@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	stable <stable@vger.kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Quentin Perret <qperret@google.com>, Alan Modra <amodra@gmail.com>,
	"kernelci . org bot" <bot@kernelci.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: link with -z norelro for LLD or aarch64-elf
Message-ID: <20201218023658.GA577188@ubuntu-m3-large-x86>
References: <CAKwvOd=LZHzR11kuhT2EjFnUdFwu5hQmxiwqeLB2sKC0hWFY=g@mail.gmail.com>
 <20201218002432.788499-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20201218002432.788499-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mmrDUgHB;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::82e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Dec 17, 2020 at 04:24:32PM -0800, 'Nick Desaulniers' via Clang Buil=
t Linux wrote:
> With GNU binutils 2.35+, linking with BFD produces warnings for vmlinux:
> aarch64-linux-gnu-ld: warning: -z norelro ignored
>=20
> BFD can produce this warning when the target emulation mode does not
> support RELRO program headers, and -z relro or -z norelro is passed.
>=20
> Alan Modra clarifies:
>   The default linker emulation for an aarch64-linux ld.bfd is
>   -maarch64linux, the default for an aarch64-elf linker is
>   -maarch64elf.  They are not equivalent.  If you choose -maarch64elf
>   you get an emulation that doesn't support -z relro.
>=20
> The ARCH=3Darm64 kernel prefers -maarch64elf, but may fall back to
> -maarch64linux based on the toolchain configuration.
>=20
> LLD will always create RELRO program header regardless of target
> emulation.
>=20
> To avoid the above warning when linking with BFD, pass -z norelro only
> when linking with LLD or with -maarch64linux.
>=20
> Cc: Alan Modra <amodra@gmail.com>
> Cc: F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@google.com>
> Fixes: 3b92fa7485eb ("arm64: link with -z norelro regardless of CONFIG_RE=
LOCATABLE")
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Reported-by: Quentin Perret <qperret@google.com>
> Acked-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> Changes V1 -> V2:
> * s/relocation types/program headers/
> * s/newer GNU binutils/GNU binutils 2.35+/
> * Pick up Ard's Ack.
>=20
> Note: maintainers may want to pick up the following tag:
>=20
> Fixes: 3bbd3db86470 ("arm64: relocatable: fix inconsistencies in linker s=
cript and options")
>=20
> or drop the existing fixes tag (this patch is more so in response to
> change to BFD to warn than fix a kernel regression, IMO, but I don't
> care). Either way, it would be good to fix this for the newly minted
> v5.10.y.

Should probably have

Cc: stable@vger.kernel.org

then.

> I'll probably be offline for the next two weeks for the holidays, so no
> promises on quick replies. Happy holidays+new year!
>=20
>=20
>  arch/arm64/Makefile | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>=20
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 6be9b3750250..90309208bb28 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -10,7 +10,7 @@
>  #
>  # Copyright (C) 1995-2001 by Russell King
> =20
> -LDFLAGS_vmlinux	:=3D--no-undefined -X -z norelro
> +LDFLAGS_vmlinux	:=3D--no-undefined -X
> =20
>  ifeq ($(CONFIG_RELOCATABLE), y)
>  # Pass --no-apply-dynamic-relocs to restore pre-binutils-2.27 behaviour
> @@ -115,16 +115,20 @@ KBUILD_CPPFLAGS	+=3D -mbig-endian
>  CHECKFLAGS	+=3D -D__AARCH64EB__
>  # Prefer the baremetal ELF build target, but not all toolchains include
>  # it so fall back to the standard linux version if needed.
> -KBUILD_LDFLAGS	+=3D -EB $(call ld-option, -maarch64elfb, -maarch64linuxb=
)
> +KBUILD_LDFLAGS	+=3D -EB $(call ld-option, -maarch64elfb, -maarch64linuxb=
 -z norelro)
>  UTS_MACHINE	:=3D aarch64_be
>  else
>  KBUILD_CPPFLAGS	+=3D -mlittle-endian
>  CHECKFLAGS	+=3D -D__AARCH64EL__
>  # Same as above, prefer ELF but fall back to linux target if needed.
> -KBUILD_LDFLAGS	+=3D -EL $(call ld-option, -maarch64elf, -maarch64linux)
> +KBUILD_LDFLAGS	+=3D -EL $(call ld-option, -maarch64elf, -maarch64linux -=
z norelro)
>  UTS_MACHINE	:=3D aarch64
>  endif
> =20
> +ifeq ($(CONFIG_LD_IS_LLD), y)
> +KBUILD_LDFLAGS	+=3D -z norelro
> +endif
> +
>  CHECKFLAGS	+=3D -D__aarch64__
> =20
>  ifeq ($(CONFIG_DYNAMIC_FTRACE_WITH_REGS),y)
> --=20
> 2.29.2.684.gfbc64c5ab5-goog
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201218023658.GA577188%40ubuntu-m3-large-x86.
