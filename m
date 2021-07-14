Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5PTXSDQMGQEFDFDEMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE783C8B9B
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 21:24:38 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id jx12-20020a17090b46ccb029017365ced08esf4308907pjb.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 12:24:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626290677; cv=pass;
        d=google.com; s=arc-20160816;
        b=CBM6a6t3MHDmaOLa5hQC2k+7Wnx/PAdn0C2C9+SkMoAPB7HhgrM5cvj/M3DbU9vbKg
         na1G4yfTN2QFbCwAMbgka4TjhCkCwh6WHhDPfr2Exle71hpPxL2WGP7VRNHSeidlMOIf
         B4dH16Y7D4f7wGZm8yF/aQZcoJVNg7qanXPLOU8gx7XQZVZhhFOXwceXuaxwDE6CF3UK
         Qh17JSB+gtTdEAqsyh+ZrKrD7EnTxhetAI4AAhjFCwS2qUutmAP3bVbCJlw7UeKH7+k4
         rPa4GygmJabn0fiBtmvox+2N/cjbNVh0OCqPy4MtOVho7oHbX+SBW2bKH2MieXdwofcS
         clug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=2xvzBmfSDFjkxz7Yi3iifZficf9CTWwOVAL99+XuUNc=;
        b=Vpsmx37SOE9WGkypwCGeHyWBQ6Ge8afLxLuz3DQ72WyMd0NC6kWY5BLojwusVAvrYj
         FMR4EY3/zoNn8YckumUu+JlX14uSnJVq+qaswd4buh37bLSW4t9sQhxAqSbSmjsxPStR
         5QPdr807opaK9rYHpIo77m6yfCcOwnOO2CQKw87McGBHkiAp+8VCvrqHNi/ycb1MYkbZ
         fUy9vGbZ/2H/q5vBw0nUBaMrGjFOlfCTJ6sISYZ9A7nSG8oCAwx10F8oklcYBkAgkS5F
         5jsrug+p5qg/s34v9xn89WZ4SvNIVkm2JNMeK2hd0CKJsTT8U260NKsVl0ntzMSs8faj
         X3qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XCFORk6E;
       spf=pass (google.com: domain of 38znvyawkadibrsgoizbwsfguccuzs.qca@maestro.bounces.google.com designates 2607:f8b0:4864:20::345 as permitted sender) smtp.mailfrom=38znvYAwKADIbRSgOiZbWSfgUccUZS.Qca@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2xvzBmfSDFjkxz7Yi3iifZficf9CTWwOVAL99+XuUNc=;
        b=k62t+ydz1pauReH8BJ5UhFGQ8EcmzJ+hJL9okuRkI9eF6ngMxg3MFmu3n5MInLfwUf
         ifDHPjCY8u675R7k9ADRY9AGXRdRW+hYW9c3keKj5PnsNxzU1HIuQyxXNu5iewB+vAqz
         MH/KkX7CRLvDCmGRc0shz0pNFE0jIVHUgm/GF5grIoKi64HIqdyxWYzVaYvGqnDixE98
         C7/45/Vj36OMMgXywXiPJKUiVF2dyOdMJ5Km4OUmJ/mev3Ryli1JpZyYru9BedQ9JGaZ
         HvzYdR1xKUAQhOeIQjT7X8wRMJf1spAapuzxuzqJUM/isMeDgYMdsHLNI/O8BphascbO
         4BAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2xvzBmfSDFjkxz7Yi3iifZficf9CTWwOVAL99+XuUNc=;
        b=bxhh75sVPxdZzvpTtS6eH9YZB5pg8pny37uS0UHoj6Vuh1l4B8Nt8oN+fiFA6dnlVy
         sWeW5Ds4hf5aOru6nVzswWZ3l8jvHmAkKWyxvGGLzItdEprTdSjeEUFECp68UzuLF0I4
         zowqZH7YAX41elFcKiiwRCw2m3R8rvyXt7Dj/hhZHcAAsavzhzJp++c1AjMyHUYIhwJG
         Y6wXwmcRl8dQI9CTsclkdQr8u9kqujXfqFkf17dhQhDmbkKvAbKxyNjtxQI2l8IyMSZc
         xDogT2gzLFZDuwmIaUNtUuBQ3g5xrg95VYuo3x7VBplln+vCNNiSMbMEWjUyQ83oSjOE
         sjZA==
X-Gm-Message-State: AOAM531ETUHmnQqvLOSkccE6MbsrdJLkAHyQqCvgyYYRFEDFt0aksemB
	mx/62GXmnMxF3w3Yd1qIYfE=
X-Google-Smtp-Source: ABdhPJzulFiGbzxw//R2SBHdFzNCAOAtZBy/4znrrvKkZkd2dhYjDMxJ3Z32Ir0Bfzr2qS92cuRD1Q==
X-Received: by 2002:a17:90a:d3d2:: with SMTP id d18mr5251959pjw.102.1626290677169;
        Wed, 14 Jul 2021 12:24:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:564d:: with SMTP id g13ls1879870pgm.1.gmail; Wed, 14 Jul
 2021 12:24:36 -0700 (PDT)
X-Received: by 2002:a65:680b:: with SMTP id l11mr11176531pgt.444.1626290676633;
        Wed, 14 Jul 2021 12:24:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626290676; cv=none;
        d=google.com; s=arc-20160816;
        b=re/YWyJAzISwxRnsRh0q8nltAA5RH/ocqYoVlJAQwA0JOxXRDfW2tu0gZbS+zFF8Fx
         ICxSoO/OKRMMJQxX9osAeG1Xb1oqxNNPxTjNaLPuAnvLKS6WTMLBiFgaxSsuAlCL/P4w
         ul/sLy2w5fmDhmn1+RbWJ2Cd7C1p5zIQystV71Kq6tZaWoJT74+WddGYJb53ibFaI/Tl
         UYj1a//IDL0qkC3wo+1dJtNDOa+1t/n0NxhTbtZ2RywM7i/doTuPnGn36XVLmUNfIxJj
         JZfo2pnrZVb6EwaW7mSNW7yU4HW0yJhtq0pAw4bB5mRymCQ2mNP1Fv+qF/AOpDcVZnJ9
         Ryrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=qmmehUsk6DFstK5jSD4ZmT8aOuBIYKQQ3k6kqtEh8Ug=;
        b=K40XD1T7njMh/6jnAl1CUu6LIz5aDFPBC+zRpUGDLTNKM1abEraYBUKbDyFA2/jWSf
         qzwKvxh+p6ka6j8t7TxYw+fGa8mg6tuCwvp0A23lUtgShPuZudl5qB9ddbw8Y+PqWCNr
         z8QpNoX7MAHU/FRBZpj7GTDD/MrzPvTOGdWh1nLAJCRcCbaT/N8phTFDLOsNxXl4gyLj
         OiEiV1kCVq92C4M7eO5tLGVmun3MJWyetUIh9fND4RB+xJCNH4Dg3TzrFTf2irqV6/z0
         D+ta9B9jFSHjSLXxN/mHXfRfQ3ZZ4hr3l+T72qpUxmoOAQMY8kdCumSFQ8NAO480wp+4
         G38Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XCFORk6E;
       spf=pass (google.com: domain of 38znvyawkadibrsgoizbwsfguccuzs.qca@maestro.bounces.google.com designates 2607:f8b0:4864:20::345 as permitted sender) smtp.mailfrom=38znvYAwKADIbRSgOiZbWSfgUccUZS.Qca@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x345.google.com (mail-ot1-x345.google.com. [2607:f8b0:4864:20::345])
        by gmr-mx.google.com with ESMTPS id o20si543767pgv.1.2021.07.14.12.24.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jul 2021 12:24:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of 38znvyawkadibrsgoizbwsfguccuzs.qca@maestro.bounces.google.com designates 2607:f8b0:4864:20::345 as permitted sender) client-ip=2607:f8b0:4864:20::345;
Received: by mail-ot1-x345.google.com with SMTP id c1-20020a9d67c10000b02904bbe06f4bb9so2763471otn.8
        for <clang-built-linux@googlegroups.com>; Wed, 14 Jul 2021 12:24:36 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a05:6830:160c:: with SMTP id g12mr9333877otr.118.1626290675804;
 Wed, 14 Jul 2021 12:24:35 -0700 (PDT)
Message-ID: <0000000000000901ae05c71a4ea4@google.com>
Date: Wed, 14 Jul 2021 19:24:35 +0000
Subject: Clang-Built Linux Meeting Notes - July 14, 2021
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000009019c05c71a4ea1"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XCFORk6E;       spf=pass
 (google.com: domain of 38znvyawkadibrsgoizbwsfguccuzs.qca@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::345 as permitted sender) smtp.mailfrom=38znvYAwKADIbRSgOiZbWSfgUccUZS.Qca@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: ndesaulniers@google.com
Reply-To: ndesaulniers@google.com
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

--00000000000009019c05c71a4ea1
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


July 14, 2021
-------------

Death to CROSS_COMPILE!
https://lore.kernel.org/lkml/20210708232522.3118208-1-ndesaulniers@google.c=
om/
Death to LLVM_IAS=3D1
Mips can now be built with LLVM_IAS=3D1
https://lore.kernel.org/lkml/20210628215029.2722537-1-ndesaulniers@google.c=
om/
Ppc and s390 left
?=3D
RISCV
LOCAL
https://reviews.llvm.org/D105720
https://sourceware.org/binutils/docs/as/Altmacro.html
https://lore.kernel.org/linux-riscv/CAKwvOdm65wmFQE6_wkVFFE6us99xXoqS8E-qOR=
X9XmsD2uJ1dQ@mail.gmail.com/
VDSO
https://lore.kernel.org/lkml/20210707185105.1180526-1-abdulras@google.com/
(Nick) __attribute__((error(=E2=80=9C=E2=80=9D))) __attribute__((warning(=
=E2=80=9C=E2=80=9D)))
ThinLTO inline asm
https://reviews.llvm.org/D104058
Hexagon allyesconfig almost ready
https://lore.kernel.org/lkml/20210708233849.3140194-1-nathan@kernel.org/
Linaro Connect CFP
Rust support? LLVM?
Fallthrough edge case
https://github.com/ClangBuiltLinux/linux/issues/1429
Abigail complex types

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0000000000000901ae05c71a4ea4%40google.com.

--00000000000009019c05c71a4ea1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>July 14, 2021<br /></h1><ul><li>Death to CROSS_C=
OMPILE!</li><ul><li><a href=3D'https://lore.kernel.org/lkml/20210708232522.=
3118208-1-ndesaulniers@google.com/'><span style=3D'text-decoration: underli=
ne'>https://lore.kernel.org/lkml/20210708232522.3118208-1-ndesaulniers@goog=
le.com/</span></a> </li></ul><li>Death to LLVM_IAS=3D1</li><ul><li>Mips can=
 now be built with LLVM_IAS=3D1</li><ul><li><a href=3D'https://lore.kernel.=
org/lkml/20210628215029.2722537-1-ndesaulniers@google.com/'><span style=3D'=
text-decoration: underline'>https://lore.kernel.org/lkml/20210628215029.272=
2537-1-ndesaulniers@google.com/</span></a> </li></ul><li>Ppc and s390 left<=
/li><li>?=3D</li></ul><li>RISCV</li><ul><li>LOCAL</li><ul><li><a href=3D'ht=
tps://reviews.llvm.org/D105720'><span style=3D'text-decoration: underline'>=
https://reviews.llvm.org/D105720</span></a> </li><li><a href=3D'https://sou=
rceware.org/binutils/docs/as/Altmacro.html'><span style=3D'text-decoration:=
 underline'>https://sourceware.org/binutils/docs/as/Altmacro.html</span></a=
> </li><li><a href=3D'https://lore.kernel.org/linux-riscv/CAKwvOdm65wmFQE6_=
wkVFFE6us99xXoqS8E-qORX9XmsD2uJ1dQ@mail.gmail.com/'><span style=3D'text-dec=
oration: underline'>https://lore.kernel.org/linux-riscv/CAKwvOdm65wmFQE6_wk=
VFFE6us99xXoqS8E-qORX9XmsD2uJ1dQ@mail.gmail.com/</span></a></li></ul><li>VD=
SO</li><ul><li><a href=3D'https://lore.kernel.org/lkml/20210707185105.11805=
26-1-abdulras@google.com/'><span style=3D'text-decoration: underline'>https=
://lore.kernel.org/lkml/20210707185105.1180526-1-abdulras@google.com/</span=
></a> </li></ul></ul><li>(Nick) __attribute__((error(=E2=80=9C=E2=80=9D))) =
__attribute__((warning(=E2=80=9C=E2=80=9D)))</li><li>ThinLTO inline asm</li=
><ul><li><a href=3D'https://reviews.llvm.org/D104058'><span style=3D'text-d=
ecoration: underline'>https://reviews.llvm.org/D104058</span></a></li></ul>=
<li>Hexagon allyesconfig almost ready</li><ul><li><a href=3D'https://lore.k=
ernel.org/lkml/20210708233849.3140194-1-nathan@kernel.org/'><span style=3D'=
text-decoration: underline'>https://lore.kernel.org/lkml/20210708233849.314=
0194-1-nathan@kernel.org/</span></a> </li></ul><li>Linaro Connect CFP</li><=
ul><li>Rust support? LLVM?</li></ul><li>Fallthrough edge case</li><ul><li><=
a href=3D'https://github.com/ClangBuiltLinux/linux/issues/1429'><span style=
=3D'text-decoration: underline'>https://github.com/ClangBuiltLinux/linux/is=
sues/1429</span></a> </li></ul><li>Abigail complex types</li></ul><br /><hr=
 /><br />Sent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/0000000000000901ae05c71a4ea4%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/0000000000000901ae05c71a4ea4%40google.com</a>.<br />

--00000000000009019c05c71a4ea1--
