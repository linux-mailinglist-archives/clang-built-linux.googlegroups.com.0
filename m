Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLUWZSCAMGQEB4EREWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DD73749FC
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 23:16:31 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id n63-20020acaef420000b02901027a455040sf1489689oih.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 14:16:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620249390; cv=pass;
        d=google.com; s=arc-20160816;
        b=GU5ye2wdc58bjg6cnu3aSTG62BVBz53qHJfWo7J4cXMErSu9EyWOCD1S03TNfwwEko
         i6JYxQiy3DNgNcMFtCQaAd/TnPQH50mChQ9HcIjF9WDnPT6FinO5CiWva8U6+35oVMdt
         LjzgSuMMWdEbKAV5zzhy+ODlb0EjXUz4bkImmu3vr8Qv2dH7Q4RpS9fhoHaAPfedt24G
         VLIbjzLPB2oOfBw3mdxCl3Z2Sk8iU2ba2jOKUuyALaD0Ik7+9vaSNAchA0l7AkvcaGF8
         bg9cTtSRylukTDK9GNHl9jojuQVEvy4+n1LFEYT8u5WHrZgScshFeweZnI6a+WoZegcs
         irFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=45BvzkvfHxRo6PZkhPu6eIEEl9g2S0RcywNviCqNtQU=;
        b=GHn91Cce0V5U6fb2c8iFSHRD6XTyHCMTLxgcqr+xjbluMz/QSCjeRPILXAVskiCDqp
         KRn8h4jGJm5etiQRBkBP5nDdrGTH9RKhT69uoGRcCm8kyUBb79ddNvZholkPMAYHLaBh
         6uj0FLKk2qurRBLgxFBHZ4tMpgM0g8GKdo19OAfIoMtOOQbns00/LhTMebPUBP00oXp0
         iC100W6ZucdTF26PMvEb62GxQOmP9zL0rkahu9FEU+FdYV6D8Qt4kQTbXEJlb5I+OIlh
         n5QYi9iLnCTTP+29xrOl6uSe1JcAgtKvbO0+p3IsYu1bGrQcMOZJTguW96dWR2ED3EGJ
         7FUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WiwFoYNM;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=45BvzkvfHxRo6PZkhPu6eIEEl9g2S0RcywNviCqNtQU=;
        b=ZhJdIczhuyEIfmRLO8YgQKPZKbnNDW1wnrXAy1qIpGKk8/cjDhrOVWQKpsO13SuL5h
         GmPBfMnqQUSNfYYRqnkj5A2WTyuaqvxuB1kMloorgZBWpfvfh5HezPZnd6nQKWBAR93s
         KQaejpMG8JI0IV7Yz0K3cUU9A3MxgxR7Yb+qY1icwJOYiyOoklg1udHhwuR/CKFK9Zqi
         h2Lp6iEtVPl7//8XcdcBmbNvDG4GjH+eyC9hW6m+0psSu/sYZz0eRhm4LnNDYTH/gFWC
         9Na5wHW68lS94A5FCm2xqn9YSNa3qzy3o+veMirxLAZN02zWr7yPyuHUYAdU68KFtlKw
         sHZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=45BvzkvfHxRo6PZkhPu6eIEEl9g2S0RcywNviCqNtQU=;
        b=UC9rtcuICBlndUTi867zevXMYVCTa7cl/YN1iNkpGHKs4EdNnMOFpUUQTtv6eFYoLo
         Jy2n7rZGqYyjAL/H2To0JTxbpv9keiLFawXmJIzrQuDqXo2QQ1wNvzrojJjhSSlM/sjt
         sOgoXMOfbHGSbZHRIEwKZiGJXEinquGoyG4tonUjZhbl3QtvGVKjXGFiRXzD5/1FGQ3A
         r/ifpG4fisPuO95Vh3qn492IyIJA+Xlkj4rAhYZ70SxN1Gvrcc+QE6ti0fFCfkqfmw1U
         LMDBDWC/ehErLsCxTvdr5AX6v61DnUrsIEinNSazg/ebRVn+jmlzM2IsI7hBlBBFwpGf
         sgSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RvuhTSIc7RhWodrOugJjEIjWTWpBguTzngY0IE7B6h+eFbvSk
	euE8TmMLx1H2tJyVkeMeDj8=
X-Google-Smtp-Source: ABdhPJyoFggcd+nAjYo6EnqFizKgDyFN/6QLm3Hpk7iAn4LhiqFLP+YmLn42DrwLp2Qd0H/XKKeSdw==
X-Received: by 2002:a4a:1104:: with SMTP id 4mr498148ooc.57.1620249390379;
        Wed, 05 May 2021 14:16:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:200d:: with SMTP id e13ls105541otp.4.gmail; Wed, 05
 May 2021 14:16:30 -0700 (PDT)
X-Received: by 2002:a05:6830:1094:: with SMTP id y20mr558887oto.135.1620249390058;
        Wed, 05 May 2021 14:16:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620249390; cv=none;
        d=google.com; s=arc-20160816;
        b=vtmcpqJcBGM7ZRAgUmywZRDNted4ZDsUuxtj1AMrDAqyuL3s5+0gU7CIPtCQybKYg0
         njCKnOUoQuhlj3hAbDzMiDzVb7fIuiXAbBiZqWDKNkBg+xC/aCAS8ViuNsnKyd0xwb+K
         p1vL0LM2i519wMsPBozJjdEKv/F7/DaJlpahi67dS17zBliSfwy2WkBuLEY/DMWpY76F
         FlsTZdbKAbIkmyHtlwjzrfFeFnbt8b1uRPwpDvMPguzbyRye5I+BY1uDoDvrF9VZvOLS
         uw68gaMcR6SIfW8jUEPi+qORo49xqg0hA/5HVeCYUwsFPc/NyLZWv/s3aBh3Ib5xoYxF
         OOrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=jxYBKJNCBwj5wmbdEiwB4q2cXDRg8gXlZHmweKzvGFI=;
        b=w9caap6uyTkj9ypAm7unQvPhm3mOHHSK2yWgdo/zvsWkru5fFTzkvyY1wKw0dEjeGn
         3WGdY80PRYPg2iQbeeZbtITS4UU59GDM82UHgjLIVbbUeiUTtls+HcDQtsDssMzVNRP/
         N0EduQkd5+63O+ScikFidrsB9BktMTx7gnI2HGMIbj3Sv0j24q9rCsAH5Ep/N9CvKgZB
         8PmepPIKguhEev3H5Waj36sFKK1ciV+rwLIpdw08hjtXjvEfhRuvyC9b5Sro0yNZ/23n
         Q3vfEMqQ86Iyie9fDfi1U9Ny8bBtGOxdsl9om0CVwYqTu4b9mMcIbLHfbCB4tbn3qljT
         FWGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WiwFoYNM;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w8si33139oic.1.2021.05.05.14.16.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 14:16:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D195A613EB;
	Wed,  5 May 2021 21:16:26 +0000 (UTC)
Date: Wed, 5 May 2021 14:16:23 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jian Cai <jiancai@google.com>
Cc: stable@vger.kernel.org, gregkh@linuxfoundation.org, sashal@kernel.org,
	ndesaulniers@google.com, manojgupta@google.com, llozano@google.com,
	clang-built-linux@googlegroups.com,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] arm64: vdso: remove commas between macro name and
 arguments
Message-ID: <YJMLJ4mUscjMz517@archlinux-ax161>
References: <20210416203522.2397801-1-jiancai@google.com>
 <20210416232341.2421342-1-jiancai@google.com>
 <YJMJAiwMPqlWmr8Y@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <YJMJAiwMPqlWmr8Y@archlinux-ax161>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=WiwFoYNM;       spf=pass
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

Fixing Will's email (make sure to run get_maintainer.pl against the
latest kernel tree so that .mailmap can do its thing).

Original thread: https://lore.kernel.org/r/20210416232341.2421342-1-jiancai=
@google.com/

On Wed, May 05, 2021 at 02:07:14PM -0700, Nathan Chancellor wrote:
> Hi Jian,
>=20
> On Fri, Apr 16, 2021 at 04:23:41PM -0700, Jian Cai wrote:
> > LLVM's integrated assembler does not support using commas separating
> > the name and arguments in .macro. However, only spaces are used in the
> > manual page. This replaces commas between macro names and the subsequen=
t
> > arguments with space in calls to clock_gettime_return to make it
> > compatible with IAS.
> >=20
> > Link:
> > https://sourceware.org/binutils/docs/as/Macro.html#Macro
> > https://github.com/ClangBuiltLinux/linux/issues/1349
> >=20
> > Signed-off-by: Jian Cai <jiancai@google.com>
>=20
> The actual patch itself looks fine to me but there should be some more
> explanation in the commit message that this patch is for 4.19 only and
> why it is not applicable upstream. Additionally, I would recommend using
> the '--subject-prefix=3D' flag to 'git format-patch' to clarify that as
> well, something like '--subject-prefix=3D"PATCH 4.19 ONLY"'?
>=20
> My explanation would be something like (take bits and pieces as you feel
> necessary):
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> [PATCH 4.19 ONLY] arm64: vdso: remove commas between macro name and
> arguments
>=20
> LLVM's integrated assembler does not support using a comma to separate
> a macro name and its arguments when there is only one argument with a
> default value:
>=20
> arch/arm64/kernel/vdso/gettimeofday.S:230:24: error: too many positional
> arguments
>  clock_gettime_return, shift=3D1
>                        ^
> arch/arm64/kernel/vdso/gettimeofday.S:253:24: error: too many positional
> arguments
>  clock_gettime_return, shift=3D1
>                        ^
> arch/arm64/kernel/vdso/gettimeofday.S:274:24: error: too many positional
> arguments
>  clock_gettime_return, shift=3D1
>                        ^
>=20
> This error is not in mainline because commit 28b1a824a4f4 ("arm64: vdso:
> Substitute gettimeofday() with C implementation") rewrote this assembler
> file in C as part of a 25 patch series that is unsuitable for stable.
> Just remove the comma in the clock_gettime_return invocations in 4.19 so
> that GNU as and LLVM's integrated assembler work the same.
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> I worded the first sentence the way that I did because correct me if I
> am wrong but it seems that the integrated assembler has no issues with
> the use of commas separating the arguments in a .macro definition as
> that is done everywhere in arch/arm64, just not when there is a single
> parameter with a default value because essentially what it is evaluating
> it to is "clock_gettime_return ,shift=3D1", which according to the GAS
> manual [1] means that "shift" is actually being set to 0 then there is an
> other parameter, when it expects only one.
>=20
> [1]: After the definition is complete, you can call the macro either as
> =E2=80=98reserve_str a,b=E2=80=99 (with =E2=80=98\p1=E2=80=99 evaluating =
to a and =E2=80=98\p2=E2=80=99 evaluating to
> b), or as =E2=80=98reserve_str ,b=E2=80=99 (with =E2=80=98\p1=E2=80=99 ev=
aluating as the default, in
> this case =E2=80=980=E2=80=99, and =E2=80=98\p2=E2=80=99 evaluating to b)=
.
>=20
> Lastly, Will or Catalin should ack this as an explicitly out of mainline
> patch so that Greg or Sasha can take it. I would put them on the "To:"
> line in addition to Greg and Sasha.
>=20
> Hopefully this is helpful!
>=20
> Cheers,
> Nathan
>=20
> > ---
> >=20
> > Changes v1 -> v2:
> >   Keep the comma in the macro definition to be consistent with other
> >   definitions.
> >=20
> > Changes v2 -> v3:
> >   Edit tags.
> >=20
> >  arch/arm64/kernel/vdso/gettimeofday.S | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >=20
> > diff --git a/arch/arm64/kernel/vdso/gettimeofday.S b/arch/arm64/kernel/=
vdso/gettimeofday.S
> > index 856fee6d3512..b6faf8b5d1fe 100644
> > --- a/arch/arm64/kernel/vdso/gettimeofday.S
> > +++ b/arch/arm64/kernel/vdso/gettimeofday.S
> > @@ -227,7 +227,7 @@ realtime:
> >  	seqcnt_check fail=3Drealtime
> >  	get_ts_realtime res_sec=3Dx10, res_nsec=3Dx11, \
> >  		clock_nsec=3Dx15, xtime_sec=3Dx13, xtime_nsec=3Dx14, nsec_to_sec=3Dx=
9
> > -	clock_gettime_return, shift=3D1
> > +	clock_gettime_return shift=3D1
> > =20
> >  	ALIGN
> >  monotonic:
> > @@ -250,7 +250,7 @@ monotonic:
> >  		clock_nsec=3Dx15, xtime_sec=3Dx13, xtime_nsec=3Dx14, nsec_to_sec=3Dx=
9
> > =20
> >  	add_ts sec=3Dx10, nsec=3Dx11, ts_sec=3Dx3, ts_nsec=3Dx4, nsec_to_sec=
=3Dx9
> > -	clock_gettime_return, shift=3D1
> > +	clock_gettime_return shift=3D1
> > =20
> >  	ALIGN
> >  monotonic_raw:
> > @@ -271,7 +271,7 @@ monotonic_raw:
> >  		clock_nsec=3Dx15, nsec_to_sec=3Dx9
> > =20
> >  	add_ts sec=3Dx10, nsec=3Dx11, ts_sec=3Dx13, ts_nsec=3Dx14, nsec_to_se=
c=3Dx9
> > -	clock_gettime_return, shift=3D1
> > +	clock_gettime_return shift=3D1
> > =20
> >  	ALIGN
> >  realtime_coarse:
> > --=20
> > 2.31.1.368.gbe11c130af-goog
> >=20
>=20
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YJMLJ4mUscjMz517%40archlinux-ax161.
