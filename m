Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKVNU6CAMGQEZWGVWWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 102E236E116
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 23:42:04 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id 11-20020a17090a194bb0290155426bcf44sf9166868pjh.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 14:42:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619646122; cv=pass;
        d=google.com; s=arc-20160816;
        b=fJlMZq78iKm+76/d525QctBFswKCD0WmNZ0ThvRFgdp0Xed/mN9ncom5rKxHzL4CpA
         bbgfjMhCK0kpTOioedqFSd7oFiO54gLLZK29Q94kwN0Mzc4S2Gh4Tsx01Qv+lBOUbvRm
         dSKEDm2XTpBEur2vQBLAqT68z3EH/CYfRJIFNO2Ycvx1Ylbd5FUGor1VMmtzwZqhpnw3
         7tYGUdU7eh8OqmeNXCaC2r0LFNUOY77ldNSPXV+cFWXLpaf39leAuV8wLw1MqnwH7vs5
         KTuwCJjIlFr9nYUkji9/+A+MgrWljBw7XTbmG4uO9E0Cq3EEeHhTU84oCAZRUYi5YSvf
         6WMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=2iUM+z4nJAXEGryQvMwa181hObtoM7qQEUhyMcEi8gE=;
        b=0a95kGDQyRHU7KFqrlH+gLHUjpu1EnoCNJ6axP37SQU5mFx06yRRHiXKu5mQK5phnV
         ZEdINDdKyBcQ6hELQ22bPiME7EnN296Iite7gYIwAZXEs1LW9iB4Ks5QLCnVPFQy62rz
         3IgZQ9/+xJr55B2rIHcZUb1PZck7I/T2w5NaYmYKVObG28GOzjBcAueq8Te4TIyb9Zs7
         nWSysm0KJ9hXZ3XWvmo/AehLq9SsJfsi/2H1Ljy071AxzabgADTjaQVwNieAHIltATjk
         /KRHkaVVg5JsK5ZdR+OV+8Pil200qB2tNryhPbMOuZQ8AYKeebSv9/rHEqUlMxa/OvZq
         JQvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=IzOjGkJG;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2iUM+z4nJAXEGryQvMwa181hObtoM7qQEUhyMcEi8gE=;
        b=U07nGgjbqaof2utOq/Eq7AJcoT3maBHSlCJ9Fn10xqgr8N3U2m6EL0tzbCNBnTh1AT
         jHDTLVrnt5+UH0RRtDMtE85H81EkO3XKHkYvlT0alzoQZMl4MiP/Wwvcbzb/SDj8W1L0
         qkK5hxcVsUxjnrrAgidDuQpsZo4ifH8XbTww8EzVcLMyI3ruljLpkX5CQJFifYPDIV7q
         h8HPDlNf0tK8ByMg+iwwTKsk0dF4Zfx1F6FM8AtIT2pPmue1jdv5a7kB9TNxGj56pXEn
         IzhXcZrEmlheVk5uqWWuuI0hXw7MPogeLq5om8cva0VovG/BP/I7morbFhE0R3Obxo7p
         +yBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2iUM+z4nJAXEGryQvMwa181hObtoM7qQEUhyMcEi8gE=;
        b=JeqZ4GXRH+RLxkZ0Bqf5hCk94hM9Q+5zse5RiPk4TlFSPe4PXcJgzHaq0bd2A8Vt2T
         sdpK13KiJi5b7ujvbhPfjPHjo8k2cL4ByjAUAe7i0MYInvLqfd2H9477Zyq9CaxJRpcg
         rqg+/Y1dkSJc4adguG/UXARgwneaH3Wv9kvBKHlYaeHmcJMAgWvkfAiyKdKyIYdWRek3
         ybNg0k+1IBh4e9vxdH00Bspxq+NEwEQwAN2Nddf5wf4XMxdesFavVJ8hA65jVTv26T9C
         Fh9vOCWsU4hsE74C9lxenah1gQ+/D5hek2rn7HdzGJ+SQ02jEpGrcajoLfRixgnVz8Cb
         Xnrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PCo2fTotl5Xw5DYf6eiul97zUfs3QRCpJcV+HivklGN5sbw+M
	/cwT6L+Lq6p2mmJCunXV/rI=
X-Google-Smtp-Source: ABdhPJw3yJ6zSLS/JwOB9gDQmknHHDeOQFnHf0xoMCRaUoUkumcZpipokwv0Z/Xb/hXjctEOIemgiA==
X-Received: by 2002:a05:6a00:cd1:b029:27a:6bf0:849 with SMTP id b17-20020a056a000cd1b029027a6bf00849mr10216854pfv.75.1619646122250;
        Wed, 28 Apr 2021 14:42:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7102:: with SMTP id h2ls4135997pjk.0.canary-gmail;
 Wed, 28 Apr 2021 14:42:01 -0700 (PDT)
X-Received: by 2002:a17:90a:6f45:: with SMTP id d63mr6052917pjk.39.1619646121727;
        Wed, 28 Apr 2021 14:42:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619646121; cv=none;
        d=google.com; s=arc-20160816;
        b=u7pOw6TyhIylKOT4032WSfZpepKPj+4he3ioHnNcQkLLDIDyN9WekFI3xcwf/KQs7B
         Bc5yLR1Y/SY7WAr9Rx7q59OS5JI7t/FQg6SQf9Rx29B2lrXphDR/MpeEyI79h99ndkJr
         Dnc7DHho80YwmTjPPUAru71YDBdUjgYHCVgHo/GB5n/hB14nDpDtOdTH5TU8bNraN406
         FKiDFh+dtdoWbNQTcJCVg7wT+h0VsZZX2rVTMOf4poIttCDPeAmr+n1k+KtvlRzmLmZF
         f+e9h3Kk3SaIhMT4yC0fVGMfIXwrorl54bCMXA73LghoEw5/2wsoy0p0Iiq6EfdtJ9Ky
         0fRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Kl3867E791Zt9fQdZzl1eu3O16iSVmnYRA9iRisGP2g=;
        b=VcPEDNTZ6Zu6BfQB+Y4ZSZhTJL6ZFXHh/4/luBXG3ZFWKEYqymRDeIyKDFz6iLkAgJ
         7hWogMs4cGMobJDIUP3yMHlujz0/w3Bmsk1ZSv0O9zwdR2JVmkpjtOTa/XwDLJt8VZ2L
         VqRoEi8nKaHNyS9NevWPdut+ZwYyeFuvObTpdBc3w27FgokjH5xF/g7Adat8QnqwaxCy
         f5Dgmy7z6cs3lXGVeGZFemzs3pGOM1IR0BrymPKjDBQMKXKNaKW4VQZzF1T1qqZjgDCa
         74xc4qh1FcxKJDzOBQWx7+Ig6nfCyIUEZBpVtTzDsTd/4lcnYwYy4Z/Zsi4A9LU/ORKi
         j+cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=IzOjGkJG;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v2si131591pgt.4.2021.04.28.14.42.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 14:42:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 867026109E;
	Wed, 28 Apr 2021 21:41:59 +0000 (UTC)
Date: Wed, 28 Apr 2021 14:41:56 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, Paul Mackerras <paulus@samba.org>
Subject: Re: [PATCH] powerpc: Avoid clang uninitialized warning in
 __get_user_size_allowed
Message-ID: <YInWpCO/bFzcmawv@archlinux-ax161>
References: <20210426203518.981550-1-nathan@kernel.org>
 <32a0f305-031b-e4da-345d-0f03b2b42189@csgroup.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <32a0f305-031b-e4da-345d-0f03b2b42189@csgroup.eu>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=IzOjGkJG;       spf=pass
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

On Tue, Apr 27, 2021 at 07:05:12AM +0200, Christophe Leroy wrote:
>=20
>=20
> Le 26/04/2021 =C3=A0 22:35, Nathan Chancellor a =C3=A9crit=C2=A0:
> > Commit 9975f852ce1b ("powerpc/uaccess: Remove calls to __get_user_bad()
> > and __put_user_bad()") switch to BUILD_BUG() in the default case, which
> > leaves x uninitialized. This will not be an issue because the build wil=
l
> > be broken in that case but clang does static analysis before it realize=
s
> > the default case will be done so it warns about x being uninitialized
> > (trimmed for brevity):
> >=20
> >   In file included from mm/mprotect.c:13:
> >   In file included from ./include/linux/hugetlb.h:28:
> >   In file included from ./include/linux/mempolicy.h:16:
> >   ./include/linux/pagemap.h:772:16: warning: variable '__gu_val' is use=
d
> >   uninitialized whenever switch default is taken [-Wsometimes-uninitial=
ized]
> >                   if (unlikely(__get_user(c, uaddr) !=3D 0))
> >                                ^~~~~~~~~~~~~~~~~~~~
> >   ./arch/powerpc/include/asm/uaccess.h:266:2: note: expanded from macro=
 '__get_user'
> >           __get_user_size_allowed(__gu_val, __gu_addr, __gu_size, __gu_=
err);      \
> >           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~
> >   ./arch/powerpc/include/asm/uaccess.h:235:2: note: expanded from macro
> >   '__get_user_size_allowed'
> >          default: BUILD_BUG();                                   \
> >          ^~~~~~~
> >=20
> > Commit 5cd29b1fd3e8 ("powerpc/uaccess: Use asm goto for get_user when
> > compiler supports it") added an initialization for x because of the sam=
e
> > reason. Do the same thing here so there is no warning across all
> > versions of clang.
>=20
> Ah yes, I tested with Clang 11 which has CONFIG_CC_HAS_ASM_GOTO_OUTPUT,
> that's the reason why I hit that warning only in the
> CONFIG_CC_HAS_ASM_GOTO_OUTPUT branch.
>=20
> But regardless, is that normal that Clang warns that on a never taken bra=
nch ? That's puzzling.

It seems to be related to the fact that the value of sizeof is assigned
to a variable. At this point in the pipeline, clang does not realize
that the default branch is never taken because __gu_size has not
actually been evaluated. If you stuck a numeric constant in there, it
would not fire.

A simple example: https://godbolt.org/z/jbrqEbh1j

It is possible that could be improved in clang but I am not sure.

> >=20
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1359
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>=20
> Acked-by: Christophe Leroy <christophe.leroy@csgroup.eu>

Thanks for taking a look!

Cheers,
Nathan

> > ---
> >   arch/powerpc/include/asm/uaccess.h | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/arch/powerpc/include/asm/uaccess.h b/arch/powerpc/include/=
asm/uaccess.h
> > index a4e791bcd3fe..a09e4240c5b1 100644
> > --- a/arch/powerpc/include/asm/uaccess.h
> > +++ b/arch/powerpc/include/asm/uaccess.h
> > @@ -232,7 +232,7 @@ do {								\
> >   	case 2: __get_user_asm(x, (u16 __user *)ptr, retval, "lhz"); break;	=
\
> >   	case 4: __get_user_asm(x, (u32 __user *)ptr, retval, "lwz"); break;	=
\
> >   	case 8: __get_user_asm2(x, (u64 __user *)ptr, retval);  break;	\
> > -	default: BUILD_BUG();					\
> > +	default: x =3D 0; BUILD_BUG();				\
> >   	}							\
> >   } while (0)
> >=20
> > base-commit: ee6b25fa7c037e42cc5f3b5c024b2a779edab6dd
> >=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YInWpCO/bFzcmawv%40archlinux-ax161.
