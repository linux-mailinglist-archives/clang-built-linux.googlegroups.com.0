Return-Path: <clang-built-linux+bncBCXLBLOA7IGBBMPWYPVAKGQEIU2DWBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 370B2896EB
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 07:37:54 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id 9sf20183138ljp.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 22:37:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565588273; cv=pass;
        d=google.com; s=arc-20160816;
        b=qvyeJPvAG1wpOCBBesmkh7FvbtEPPtxyOTF6O/1LquGZ6H6VG9glMVUXhROmEl9FXY
         /Q3CrecVYS3VhMm11I7fgrt54L4+bGDYfvfdwYA+VEKOcM8EdflDuIkLXWXyqHyRfGes
         fzTBI/kTvHLTI8Ti2oszB7ViQNLRvXORNdORZoq3dPEAK+c0ZuDAyKA46zhVUDRe/M5+
         YLXIMAJksNGJ3lBvnkIL1FQ8PTlL0Q8A1y9LhSf4bV07wio6xYTo1tw2IHDkG6BVJRKI
         NuNBcjtO69l+hJ3HUslxoDmmEWAjKEDz76IwS0qpdGERR5exdnXNvRs5Rpjver+QWPzj
         ebbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=p76wdmhyBIvhWf8IirGq0XQw8qkhfrPOpk/FSF41ZG4=;
        b=eAlsby7fCZDcqJMiP2/pf5El2yGyuTZqZbO5ueuWd2M918aqhYFspb7J//CxRfiCxt
         0GvJY0MFGaXDigBJrGT0mrxzBMVyv7iZAO6/9HDhDWWUy31h3jHaqnhF0lNqur6rDfHe
         mDnh0yOwfaPSMHK9iZfsNKb413rka2CUZfF4c84d3J+22FdahWqPALUHTovmlb333CaG
         /h0R/NMZr0MqvUWCUUzpYtiiTGvy5nuqj2SMwTwZ6P7Job+B6UqfK6g5yU9vA9cr5TDu
         GlptyDs84b7QSG0nndhxmazp9mSvLCjZmYHV9ykoYn3QuD2BqasOo/Uw2R4xGVuSDlIx
         Nl1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@c-s.fr header.s=mail header.b="X5Zrx/RX";
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p76wdmhyBIvhWf8IirGq0XQw8qkhfrPOpk/FSF41ZG4=;
        b=UuuMlOIgQDR+hQepI28rVwIaspJHZNFA29nB9JvWuOxkeKXcW86/QbHM1Hsm7zreNQ
         mM8RqQI1NIvOkJCV3wqmx5KzOCX1/c2WV+s/j0ZmymZbRaQ4yBc9GVyP5zB3j8+JeaES
         HDenl+N7ni8Yf5y10I3WxfW4B+fDZvxjiuJtNovVSGAmXHyAmsoBwH53XSi3eL+j/XT6
         7GIe2yc/alOuOt0Nt4B9+NerOD3r/2FkaLNoDkGDadve8L9zQFHKkEc++87PocKxxhMx
         rUwSAwVAMa5JASCes92kF+1caM0FslDo1nXqvT1rXhiBl+tqQT6m+On1E0LA9xOkj+N+
         OhuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p76wdmhyBIvhWf8IirGq0XQw8qkhfrPOpk/FSF41ZG4=;
        b=eAIEgqI/GaoYIA6/SpH3rc/0U6Seym7TKQSHy0Enmhh4KzFLNKrA3WPZPy5cq6/uCs
         53YiiBc1KXHkhRsi9xx8w/hAsV5DSSQkeW8y+CZit7U9RTRCXhRQw1sD7FJVJUnH4im/
         ZKNjCtp6m3qZ0OVhcJCaC9yab7fkoUNK7fcVzgQlEs8o+YsJKeJMbAr2L2DlXZ9VBmNo
         yk3z61XEu7wsMlCAeHA/umEMtEO7j1IN3eubRZ2FHPTi0xs0eE3RUd3icJoob568LH3W
         UhVyxi1+96SBbGiX5NwsKc38crFh/fewDXZqZcKyxU7C+XrWLY3WwR2TWymqeFdSEQSS
         PEPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXMQdctgCQPZR7oymme3/Z3HvGyQCNmTt6hzTJafF2BxbyZkSb4
	Lk83yjYgwYy0ySdxX/7Bum8=
X-Google-Smtp-Source: APXvYqw+yiOMqNC4U9i6KYwPekNn9rHpGVrsDUd8XqufKf72I6UC684EgTlb6hy1DriBPOZuq22ssg==
X-Received: by 2002:a2e:854d:: with SMTP id u13mr18529771ljj.236.1565588273851;
        Sun, 11 Aug 2019 22:37:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8614:: with SMTP id a20ls1021390lji.4.gmail; Sun, 11 Aug
 2019 22:37:53 -0700 (PDT)
X-Received: by 2002:a2e:a311:: with SMTP id l17mr11922127lje.214.1565588273345;
        Sun, 11 Aug 2019 22:37:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565588273; cv=none;
        d=google.com; s=arc-20160816;
        b=s4/5qmdq0TCg2w0nl2YbmOjcCZudrB+DjY1x/0sXZFEso1nBZw0Zx+sw+4AyyWaQzT
         rCp4vbcprM5xqq9dMJIfWXwLl2yVWYgHOfGP0ysSYro4VykLfdF7b/nKb3WPVYTvIMNb
         RKGouV/dzOnUglwZL32XpiDavwYKQ2/IyP6t6BTMaIlDGXO+pczeGbHoXvLWCj4Q010Z
         312log0wY5S6DJYDpqTmNPB9z8IBAiiAECSyYLOOSdTf6DyJH3p/viBRdc3sPHhmJqWb
         SFwagAEsz0yVzcN8MZ7br5nw90FeFPFV8QQ6qt0Ef/RgS3WZnh2mABCytMIVtBCm6jvZ
         53CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=zPe15F+ILVBJRhKhdywc5kLzTzCdvp6RH6BIPfn1N74=;
        b=m83xClwoPHdWVmpsYjFqx4wspzcwJHHzZahBYU70htLKoNczLitiJRSwbY+hHtIguq
         YHs+YVzI8T7DYOTVjPn4LJlRuaJy1lqEWGMayoJe0jMhkN11om93n7Trt7oI4zXtLkHY
         MgwBwro3GMReOoeWvQaFQ5KfIrXXCynr8/iDqvFg040eXE6RZ+KpxpqaLwuRJqQmUGdb
         AWmSf+1AVNBC6OUXT1FCrOFeOgxAU6tjMi+5CZKaKJtDfqqGJke+inXwn+BEKu/ZVg25
         GV1jjH3e5pfvI1yEXGrzVAieCPSm8BGBuqUodPHh+69XtpnZTjsnbSN0l+LvgbWqjAx8
         JNBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@c-s.fr header.s=mail header.b="X5Zrx/RX";
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id h19si300126ljj.3.2019.08.11.22.37.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 22:37:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 466Pkg1rcXzB09b6;
	Mon, 12 Aug 2019 07:37:47 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id 0YC7Mo5kUr_h; Mon, 12 Aug 2019 07:37:47 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 466Pkg0mpxzB09Zx;
	Mon, 12 Aug 2019 07:37:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 032B38B791;
	Mon, 12 Aug 2019 07:37:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id 3WTBnr-EQg93; Mon, 12 Aug 2019 07:37:51 +0200 (CEST)
Received: from [172.25.230.101] (po15451.idsi0.si.c-s.fr [172.25.230.101])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id CCB228B752;
	Mon, 12 Aug 2019 07:37:51 +0200 (CEST)
Subject: Re: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
To: Nathan Chancellor <natechancellor@gmail.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20190812023214.107817-1-natechancellor@gmail.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <5da5478f-9320-43bd-0f5e-430db2ee9195@c-s.fr>
Date: Mon, 12 Aug 2019 07:37:51 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190812023214.107817-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@c-s.fr
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@c-s.fr header.s=mail header.b="X5Zrx/RX";       spf=pass
 (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as
 permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
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



Le 12/08/2019 =C3=A0 04:32, Nathan Chancellor a =C3=A9crit=C2=A0:
> Commit aea447141c7e ("powerpc: Disable -Wbuiltin-requires-header when
> setjmp is used") disabled -Wbuiltin-requires-header because of a warning
> about the setjmp and longjmp declarations.
>=20
> r367387 in clang added another diagnostic around this, complaining that
> there is no jmp_buf declaration.
>=20
[...]

>=20
> Cc: stable@vger.kernel.org # 4.19+
> Link: https://github.com/ClangBuiltLinux/linux/issues/625
> Link: https://github.com/llvm/llvm-project/commit/3be25e79477db2d31ac4649=
3d97eca8c20592b07
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>=20
[...]

>=20
>   arch/powerpc/kernel/Makefile | 5 +++--
>   arch/powerpc/xmon/Makefile   | 5 +++--

What about scripts/recordmcount.c and scripts/sortextable.c which=20
contains calls to setjmp() and longjmp() ?

And arch/um/ ?

Christophe

>   2 files changed, 6 insertions(+), 4 deletions(-)
>=20
> diff --git a/arch/powerpc/kernel/Makefile b/arch/powerpc/kernel/Makefile
> index ea0c69236789..44e340ed4722 100644
> --- a/arch/powerpc/kernel/Makefile
> +++ b/arch/powerpc/kernel/Makefile
> @@ -5,8 +5,9 @@
>  =20
>   CFLAGS_ptrace.o		+=3D -DUTS_MACHINE=3D'"$(UTS_MACHINE)"'
>  =20
> -# Disable clang warning for using setjmp without setjmp.h header
> -CFLAGS_crash.o		+=3D $(call cc-disable-warning, builtin-requires-header)
> +# Avoid clang warnings about longjmp and setjmp built-ins (inclusion of =
setjmp.h and declaration of jmp_buf type)
> +CFLAGS_crash.o		+=3D $(call cc-disable-warning, builtin-requires-header)=
 \
> +			   $(call cc-disable-warning, incomplete-setjmp-declaration)
>  =20
>   ifdef CONFIG_PPC64
>   CFLAGS_prom_init.o	+=3D $(NO_MINIMAL_TOC)
> diff --git a/arch/powerpc/xmon/Makefile b/arch/powerpc/xmon/Makefile
> index f142570ad860..53f341391210 100644
> --- a/arch/powerpc/xmon/Makefile
> +++ b/arch/powerpc/xmon/Makefile
> @@ -1,8 +1,9 @@
>   # SPDX-License-Identifier: GPL-2.0
>   # Makefile for xmon
>  =20
> -# Disable clang warning for using setjmp without setjmp.h header
> -subdir-ccflags-y :=3D $(call cc-disable-warning, builtin-requires-header=
)
> +# Avoid clang warnings about longjmp and setjmp built-ins (inclusion of =
setjmp.h and declaration of jmp_buf type)
> +subdir-ccflags-y :=3D $(call cc-disable-warning, builtin-requires-header=
) \
> +		    $(call cc-disable-warning, incomplete-setjmp-declaration)
>  =20
>   GCOV_PROFILE :=3D n
>   KCOV_INSTRUMENT :=3D n
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5da5478f-9320-43bd-0f5e-430db2ee9195%40c-s.fr.
