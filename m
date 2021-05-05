Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCMSZSCAMGQEU7UCLIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1175C3749E5
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 23:07:23 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id i8-20020a0569020688b02904ef3bd00ce7sf3707678ybt.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 14:07:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620248842; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ei25CuMKdfHFN59TDgt1q9FTscp1TuHu/OORNuEOipjJSJVz4kmnGEdVWH0Fj4bFqR
         KfoBySCwLOZ8guvW/wW8/+GIdpb0YsdqOher09cva7dCt2Mr6OIDsu/R8Jxp2zGAcsV8
         widXMleIm434MdIWwe4F6Nt/Zr4lb2GkW4e16eu/YzB1I9VfX8TT5+GSJqTDi5gpWHvf
         ekQJpjgwUs4e7GAAGG9DNc8uNU/4x90xdIVnsI9Smq/o1egdq3PhZNqqDv9/6sv5Cbmu
         3DIuhDYR4sN6hUM4odkgiK4WipRCdKuO0a52TXA3lNvfOxZRISnAAMmPc3urorabuxMT
         ql5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=NxdWfE67koCUrPLL0rlZXwNbiIlNXBzIluAADqhV4Ko=;
        b=tEvbLO/qRAttLDkAxDYOutFBV0mXRhF2Yseb5BeKWCXh8tTUrnM+QSoF28XhBVo3k0
         qDMDrNyzr/npnzUdIiYZCYXOyNqlxE1jwucWolPT4tctifj1gofYKj4mfBO/rSV9El/D
         gNAIjKiWRqQNWV6RIIuFP7ocm8SFG3Z+XTxIiOVtuiKktKVQE0+ugqtQUzEcl2xeqKOY
         kV6Av4z2OckDvW+jSrFrKTHtVC/HdHs4ouxw0Hu+IvsN5a6Gs6bTzT5HuwcJGl63HRxx
         SPmRhK/JPFRoE9dwgZZ4nRMD3mMhdsOv0ZgFbQw6ljjPjVubJFciSneYfivwwLTZYEzX
         IL0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RqUGfG4+;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NxdWfE67koCUrPLL0rlZXwNbiIlNXBzIluAADqhV4Ko=;
        b=X6eqFwWD9Wcnb4ZfckzUHlVE+1EeoTvcKuItIrbXs2S30BDxf8f3iXazj31W8BmvTu
         4ybgENCihGfMyY2QD2HZnZLR7Z8KbMTDqVJhEPnjKBn7ZcJktyhXPP5Z9yB/fFb52LyF
         P6bOVhoGDJGltULFgtCc+9YFMhqrpxteEG56AoQVp7+rg7rEeXjnSdU1krN/GZraLxYB
         tZxOygJ0q0CPWx7ZxX2/frkdfoK9q9Q8OX/DvKULTpQPW+a92B6A0e9TmICDKxdQGNvf
         aoY4J58Mv2Vues09x9EkTle7TObbcYS/b0zyYHWqltSugIGKNk1xQ3M/GHT01GF/ncY/
         WmBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NxdWfE67koCUrPLL0rlZXwNbiIlNXBzIluAADqhV4Ko=;
        b=jF9jCgjLQV/tgi3ZEPURh1qE1gErABTFeu9LF/qEEoEueESMu8Ejde9oXtLWEb7zvc
         9CDJYO6XGSnb7X6hJdlVVXw/vnbUves0E8plToq0CKH/dD4AlG63bv8UPZTpabk54hOv
         f75rd8FvlMrv3zNTI9KScsCHp0x2l/78JR0yF1idKYvLS3cZDKQ9HzTxz/ueAxlfQyTG
         hbYnup53MBd2W4CfPYw1M/TUn8oAF5fKmFhDrvr0+SvV2vYp/47x3TwNt3/bdLrT+xJy
         38sA3XJMUeKeNrnaIEaiBtnDKakX118yOri8qqq3Detp9AF3LmqLQRcjz5e/lFkAuE+R
         /6Yw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tRDc5udn6URr12xLmAV7Z9XcYvHVBO/O8ombxbuiemfHQcK9h
	Bb/MA3ZbX3oKXbOZEIzlYD0=
X-Google-Smtp-Source: ABdhPJwEWyngBXoxw533VRHdb2TFxDmwkBNfNmqLMckhac7xkHqpdDRhRAz9tToYtOVrsLIxV+8t4A==
X-Received: by 2002:a25:5585:: with SMTP id j127mr926664ybb.349.1620248842121;
        Wed, 05 May 2021 14:07:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2787:: with SMTP id n129ls322324ybn.6.gmail; Wed, 05 May
 2021 14:07:20 -0700 (PDT)
X-Received: by 2002:a05:6902:102c:: with SMTP id x12mr1017962ybt.21.1620248840769;
        Wed, 05 May 2021 14:07:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620248840; cv=none;
        d=google.com; s=arc-20160816;
        b=Xw4PrCBP2y4gINAxqv9nebO8KgGlMM1IHHdG3cPJfFnDd1JsYaIr7tv8BY/cGBAwJI
         n6XLzQK5rzsG4s2b8mnSOxDHEOOLrPpmNI+2fsjDwbZC2+1s9M2S1MiWXFrBJXMuK39W
         BKg0uTVsYd1znkm3AnPo6VAcsck8vFbRQhJnMJJsioTJlbLW05qgEV0QE3C7XH+L+Cz8
         0xBMp1vvQgYCsmO/WgZbS0W06vK+iZVmWtO+DLspJqjGUJkmth7/0H8re15MHy6Hana3
         K7sdPRcSGckQVCyB0y7Rl9ntbK7dq1qIdK6K+G5Bqz/1SMY0v8w+yxVuWOfWKzWAaYbn
         kLGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=bl2T2I4euCheO6kuPRufjI1BLux88KgyyYFnH6PcY50=;
        b=JP1IJ/gpWo+fJJtuVIcATmYGujkLFyZhzrlADMIdnIpvKEpXpXZaeaCoMbFMxI+/8W
         6CInBXjaGitagclfxYm48qgxumET8ue7ll8DAgGdZopD3aOVYtIiH8+MqXjjx1cVagrO
         EwJSZZA2hIHgfSrVHOXqEBaph15XN77peXxCFI2l+ge0K/Bo73/RiR+TD6irzjfn1LF4
         eIzMBoSy7fe8s3T3NzQU+S8Q3Am87Jlc8BJ4LxmZ+eBML09ipy4zLzaHizA8akTDT1zc
         +z6Tgua6UWt6oTUoUcCr+m4a8ykSirWf9uIAzdOm3pX6Sxo+lsypDdwNWTKU023Yr3Hn
         vx+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RqUGfG4+;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g4si40789ybo.3.2021.05.05.14.07.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 14:07:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9AF906103E;
	Wed,  5 May 2021 21:07:17 +0000 (UTC)
Date: Wed, 5 May 2021 14:07:14 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jian Cai <jiancai@google.com>
Cc: stable@vger.kernel.org, gregkh@linuxfoundation.org, sashal@kernel.org,
	ndesaulniers@google.com, manojgupta@google.com, llozano@google.com,
	clang-built-linux@googlegroups.com,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] arm64: vdso: remove commas between macro name and
 arguments
Message-ID: <YJMJAiwMPqlWmr8Y@archlinux-ax161>
References: <20210416203522.2397801-1-jiancai@google.com>
 <20210416232341.2421342-1-jiancai@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210416232341.2421342-1-jiancai@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=RqUGfG4+;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Jian,

On Fri, Apr 16, 2021 at 04:23:41PM -0700, Jian Cai wrote:
> LLVM's integrated assembler does not support using commas separating
> the name and arguments in .macro. However, only spaces are used in the
> manual page. This replaces commas between macro names and the subsequent
> arguments with space in calls to clock_gettime_return to make it
> compatible with IAS.
>=20
> Link:
> https://sourceware.org/binutils/docs/as/Macro.html#Macro
> https://github.com/ClangBuiltLinux/linux/issues/1349
>=20
> Signed-off-by: Jian Cai <jiancai@google.com>

The actual patch itself looks fine to me but there should be some more
explanation in the commit message that this patch is for 4.19 only and
why it is not applicable upstream. Additionally, I would recommend using
the '--subject-prefix=3D' flag to 'git format-patch' to clarify that as
well, something like '--subject-prefix=3D"PATCH 4.19 ONLY"'?

My explanation would be something like (take bits and pieces as you feel
necessary):

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[PATCH 4.19 ONLY] arm64: vdso: remove commas between macro name and
arguments

LLVM's integrated assembler does not support using a comma to separate
a macro name and its arguments when there is only one argument with a
default value:

arch/arm64/kernel/vdso/gettimeofday.S:230:24: error: too many positional
arguments
 clock_gettime_return, shift=3D1
                       ^
arch/arm64/kernel/vdso/gettimeofday.S:253:24: error: too many positional
arguments
 clock_gettime_return, shift=3D1
                       ^
arch/arm64/kernel/vdso/gettimeofday.S:274:24: error: too many positional
arguments
 clock_gettime_return, shift=3D1
                       ^

This error is not in mainline because commit 28b1a824a4f4 ("arm64: vdso:
Substitute gettimeofday() with C implementation") rewrote this assembler
file in C as part of a 25 patch series that is unsuitable for stable.
Just remove the comma in the clock_gettime_return invocations in 4.19 so
that GNU as and LLVM's integrated assembler work the same.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

I worded the first sentence the way that I did because correct me if I
am wrong but it seems that the integrated assembler has no issues with
the use of commas separating the arguments in a .macro definition as
that is done everywhere in arch/arm64, just not when there is a single
parameter with a default value because essentially what it is evaluating
it to is "clock_gettime_return ,shift=3D1", which according to the GAS
manual [1] means that "shift" is actually being set to 0 then there is an
other parameter, when it expects only one.

[1]: After the definition is complete, you can call the macro either as
=E2=80=98reserve_str a,b=E2=80=99 (with =E2=80=98\p1=E2=80=99 evaluating to=
 a and =E2=80=98\p2=E2=80=99 evaluating to
b), or as =E2=80=98reserve_str ,b=E2=80=99 (with =E2=80=98\p1=E2=80=99 eval=
uating as the default, in
this case =E2=80=980=E2=80=99, and =E2=80=98\p2=E2=80=99 evaluating to b).

Lastly, Will or Catalin should ack this as an explicitly out of mainline
patch so that Greg or Sasha can take it. I would put them on the "To:"
line in addition to Greg and Sasha.

Hopefully this is helpful!

Cheers,
Nathan

> ---
>=20
> Changes v1 -> v2:
>   Keep the comma in the macro definition to be consistent with other
>   definitions.
>=20
> Changes v2 -> v3:
>   Edit tags.
>=20
>  arch/arm64/kernel/vdso/gettimeofday.S | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/arch/arm64/kernel/vdso/gettimeofday.S b/arch/arm64/kernel/vd=
so/gettimeofday.S
> index 856fee6d3512..b6faf8b5d1fe 100644
> --- a/arch/arm64/kernel/vdso/gettimeofday.S
> +++ b/arch/arm64/kernel/vdso/gettimeofday.S
> @@ -227,7 +227,7 @@ realtime:
>  	seqcnt_check fail=3Drealtime
>  	get_ts_realtime res_sec=3Dx10, res_nsec=3Dx11, \
>  		clock_nsec=3Dx15, xtime_sec=3Dx13, xtime_nsec=3Dx14, nsec_to_sec=3Dx9
> -	clock_gettime_return, shift=3D1
> +	clock_gettime_return shift=3D1
> =20
>  	ALIGN
>  monotonic:
> @@ -250,7 +250,7 @@ monotonic:
>  		clock_nsec=3Dx15, xtime_sec=3Dx13, xtime_nsec=3Dx14, nsec_to_sec=3Dx9
> =20
>  	add_ts sec=3Dx10, nsec=3Dx11, ts_sec=3Dx3, ts_nsec=3Dx4, nsec_to_sec=3D=
x9
> -	clock_gettime_return, shift=3D1
> +	clock_gettime_return shift=3D1
> =20
>  	ALIGN
>  monotonic_raw:
> @@ -271,7 +271,7 @@ monotonic_raw:
>  		clock_nsec=3Dx15, nsec_to_sec=3Dx9
> =20
>  	add_ts sec=3Dx10, nsec=3Dx11, ts_sec=3Dx13, ts_nsec=3Dx14, nsec_to_sec=
=3Dx9
> -	clock_gettime_return, shift=3D1
> +	clock_gettime_return shift=3D1
> =20
>  	ALIGN
>  realtime_coarse:
> --=20
> 2.31.1.368.gbe11c130af-goog
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YJMJAiwMPqlWmr8Y%40archlinux-ax161.
