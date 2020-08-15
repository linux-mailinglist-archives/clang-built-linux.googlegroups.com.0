Return-Path: <clang-built-linux+bncBDSMRTMFUIFRBPFG4H4QKGQE6KC6MNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D4D2451DF
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 23:27:24 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id q15sf2084619ljp.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 14:27:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597526844; cv=pass;
        d=google.com; s=arc-20160816;
        b=H9eDPsFCb/apgkEdme2Be2Sa96vH1fFtlBvM3MGM02V0nSvG54KtouGrwYLk19UFAc
         tJBSJcKxwe3D9/GQ8S4BZ/egvmn0151aivfb6ubKm9uIYezkKC6ymRvc8tYHDmeUw5L4
         ei7r+85RS31MS3zk7YsVsQIQiLlL8MXO2RRvP5ZTsi7MJwOZaS4h8UlVnS8eo1RQP4n/
         HrHgC4n9r+OXDeKGxZocBPuS2ZDN8uNwQxKvTTzIl9+jwOTbRAp+8kkoX8qRL40BdUNb
         HhrafbiE6KVGiKmmVXa77VcX+e7j9+nGzNwQ4wVuS0L6/AdVsHrhbgF876ct3aA9o+rB
         XHQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:in-reply-to:cc:references
         :message-id:date:subject:mime-version:from:content-transfer-encoding
         :sender:dkim-signature:dkim-signature;
        bh=Jo469LjnwgsMuWmGcgpzu7TnIkaCKw+RrR1pWKxNGXU=;
        b=Nq5S0p/TdD5ehiKmn7liDtDA2o/ehu7zq9cOTWd6v5nlPnyhwwEfbuKeW9WcU2itb0
         ZZn3rK3VS2Vv77O/scfVuJuCBRUdhzES9HwwrCGOBnLkQuep1ZMMq15ZQNge7y/GpPzF
         D5N0hGBsLwmcywj6Y+h/FqG8vEf8Oqo2IExKHk4y8EheXOwb+TM4/GcGSTzpEpiyIi8x
         olW0pcbpec+qs4eZLkG1Q4Y78rX08+e2XvD4a/T5ILJeqZFDfAjcNXdEeKbAm4Py53hH
         uFha2HGXEZ5TxMbKJRSDWkV58n3QmdkEYDAvfLolkUiv/plXpM5HNh8M8CYBn3O4X8ev
         Xb6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EIJxBTj3;
       spf=pass (google.com: domain of david.bolvansky@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:content-transfer-encoding:from:mime-version:subject:date
         :message-id:references:cc:in-reply-to:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Jo469LjnwgsMuWmGcgpzu7TnIkaCKw+RrR1pWKxNGXU=;
        b=hUr+5A6OLWW0FCdmH/BWnI301gfmZIQibZkkX69wAsxh92SLjEMxM6rggReLSLtA4A
         W96yrSOxLFTPYYzAXp+kvKsldsShykySMjaVXqtZ8f3wS7MvnlMjvV0YTD1hhPTQOMsb
         Uih0XedJuctXEzsP5ZftPdp5hVR6MdxjcslH/vncsTmqHJL2t/HZpdJ2P0flZ6uIZDtV
         PR9db/bIgUqYXgds2SyBHS2Ho8MNdfGjbiaSoy79m9QRMJRDHm/e2KO5JolnhQC81q4C
         uOlVWRD0BVfYQ1vw5MzfhjH5o/2DzAH4ab0QwnGf+HYLh2LPZnidzA4Dov5sXOZl9yPh
         Wpow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Jo469LjnwgsMuWmGcgpzu7TnIkaCKw+RrR1pWKxNGXU=;
        b=CIn9KR1+l5/MRLQlOel/rD4x/BYWt2/iePUWehKsck4JmGg7YBnh8K3DdIbUowcTot
         uwnEum1dDAP2oQubDilPo+VyZXzVr7X9HeYJFxITB1t8NTWwjV/i6f0KX5sZU7VejWJZ
         ZkKuoguFzIzhhi0BcY+I1V/2vHtBN3E/0ZQaqJR7UpugM6wlxd2IwugTODMqiqR2jFp5
         5ODB0VecnhGSN+dStLY5DGgKG80y4qr6hvQ81X20HEkx3GFab5Ilu+ni4XUxaOm4xZEQ
         /TAUKqVjbUkmSY1UpNQDdyHY/ajh6yYJ1D0bm00SlTXZhBGJsXtmhlZlM5GGNiLybBRt
         oz1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:content-transfer-encoding:from
         :mime-version:subject:date:message-id:references:cc:in-reply-to:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Jo469LjnwgsMuWmGcgpzu7TnIkaCKw+RrR1pWKxNGXU=;
        b=f7a2pPl5Xinxpq4MaoXx/ZeMr/PYHXoD89VxWvYnGYRItCDwIzXRpil7eEavAcFynN
         vmDBVhzCY3ETHmH1WsMadI0DIGbHX8cBj+OgjHj1Et2yRztflNOI7xEl+YvJj2d+Dddb
         mnc7g7L/z9yCPJDkC5Mroe1ciyILhHyxvrZZA2bM/KVgxdqcjse01sBcPDHzdiFmRK6s
         FRjYpXNxCVqM8dEq3iGX6/963ZMA5YVbvJFrB44UqTdYY8K6DxIpVFvqg5nEGars0wdM
         y0biREEkD/XBo5/SqiCKeIdu5DCCdaZ+n4r7QqsT6kqXo93N1zq8cdzk1HUpRo0c52Hf
         l9+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Vzdlgh1tPSWFNxioc7zsIXgnYzS3ySJ2SYKOsdt8vAI36GKtt
	8Xd2isrMxaz4vjVu2pE9WL8=
X-Google-Smtp-Source: ABdhPJy7u1hJFXBktRWL/af0JUwCKbi8B4t1siwW8JsJHF/XyfByLlksoX3BfMnCxLG/TWwJlsam4Q==
X-Received: by 2002:a19:803:: with SMTP id 3mr4113758lfi.15.1597526844437;
        Sat, 15 Aug 2020 14:27:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1182:: with SMTP id w2ls591063ljo.2.gmail; Sat, 15
 Aug 2020 14:27:23 -0700 (PDT)
X-Received: by 2002:a2e:96d9:: with SMTP id d25mr3971810ljj.376.1597526843602;
        Sat, 15 Aug 2020 14:27:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597526843; cv=none;
        d=google.com; s=arc-20160816;
        b=T+r39gXzsgbL278RP87MugnsUsqyIarTY5+ItAQrE13F27zXtFT9Yk2XYIG3BzdtNB
         Lqq522WEmXVcf/W2Hlywkt+Ui8s7DZaIDaB8WBs5CZYv0UrhR5cK5p6xWUbjE4G9BiWH
         abjIIB3IywyyPxZUuqvNZTNTvN3lJaQnprYK0kRjKqVDcgjGqzFXxxPeW+uIu97QZs0j
         PmkTQVBcyJdO1MjtY8uxXP5asWOb7jJpOVn6wIk08xn7qQ0nH+usRM49mOfNYUbmyjA8
         0c1kSmXZJ4hFwrDBYz/N3NpkvjfAcMM3Pm+Xr9cDQ5P1vM8vaEnMhJHASH4wfePYO5zH
         D8vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:dkim-signature;
        bh=u28AimZhxuDc0O06Kto7WiSdTEZqFlRZrrriVNz5/Zg=;
        b=oHkq40ZZdKluahvzew8hRuN9wXSyCPL/ClJNKj0IGLGHYr5FuGY+SiqV2kL5J/7uuT
         RvfLCNd6/rcHKDVLifFAYoLkHHXabWz5clYEqpPYpZDS5rQfAlZW9z9cksECy2AAJTr4
         LPDt0HBvf//1LpvpfUwKA7juK81QyfWbG4j53hy4wcjwGXszPCz8nLKzpfeiUiXpMTLH
         7fl8M0uqHUw31oFEx+uGmVpSVoZB5LaRDwIzjE0wVnVNjaq0B+bjJVhqq+gf8dVfhDiu
         Mw9I72Km38I9CB4i1Eqlzib4iCDkRLxvCZ+jxuo418wqKWx+vfYYl430UAv5zbue404L
         7gIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EIJxBTj3;
       spf=pass (google.com: domain of david.bolvansky@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id u9si634481ljg.8.2020.08.15.14.27.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 14:27:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.bolvansky@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id z18so11281188wrm.12
        for <clang-built-linux@googlegroups.com>; Sat, 15 Aug 2020 14:27:23 -0700 (PDT)
X-Received: by 2002:a5d:6646:: with SMTP id f6mr8238730wrw.155.1597526843033;
        Sat, 15 Aug 2020 14:27:23 -0700 (PDT)
Received: from [100.64.193.196] ([147.229.117.43])
        by smtp.gmail.com with ESMTPSA id m1sm22377267wmc.28.2020.08.15.14.27.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 14:27:21 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
From: =?utf-8?Q?D=C3=A1vid_Bolvansk=C3=BD?= <david.bolvansky@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
Date: Sat, 15 Aug 2020 23:27:21 +0200
Message-Id: <CAF4EA53-B2B2-4E7C-8EB1-E5696F38CFA0@gmail.com>
References: <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Kees Cook <keescook@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Eli Friedman <efriedma@quicinc.com>, "# 3.4.x" <stable@vger.kernel.org>,
 Arvind Sankar <nivedita@alum.mit.edu>,
 Sami Tolvanen <samitolvanen@google.com>,
 Vishal Verma <vishal.l.verma@intel.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Joel Fernandes (Google)" <joel@joelfernandes.org>,
 Daniel Axtens <dja@axtens.net>, Ingo Molnar <mingo@kernel.org>,
 Yury Norov <yury.norov@gmail.com>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>
In-Reply-To: <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
To: Joe Perches <joe@perches.com>
X-Mailer: iPhone Mail (17F75)
X-Original-Sender: david.bolvansky@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EIJxBTj3;       spf=pass
 (google.com: domain of david.bolvansky@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=david.bolvansky@gmail.com;
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

-fno-builtin-stpcpy can be used to disable stpcpy but Nick at llvm bugzilla=
 wrote that these flags are broken with LTO.


> D=C5=88a 15. 8. 2020 o 23:24 u=C5=BE=C3=ADvate=C4=BE Joe Perches <joe@per=
ches.com> nap=C3=ADsal:
>=20
> =EF=BB=BFOn Sat, 2020-08-15 at 13:47 -0700, Nick Desaulniers wrote:
>>> On Sat, Aug 15, 2020 at 9:34 AM Kees Cook <keescook@chromium.org> wrote=
:
>>> On Fri, Aug 14, 2020 at 07:09:44PM -0700, Nick Desaulniers wrote:
>>>> LLVM implemented a recent "libcall optimization" that lowers calls to
>>>> `sprintf(dest, "%s", str)` where the return value is used to
>>>> `stpcpy(dest, str) - dest`. This generally avoids the machinery involv=
ed
>>>> in parsing format strings.  Calling `sprintf` with overlapping argumen=
ts
>>>> was clarified in ISO C99 and POSIX.1-2001 to be undefined behavior.
>>>>=20
>>>> `stpcpy` is just like `strcpy` except it returns the pointer to the ne=
w
>>>> tail of `dest`. This allows you to chain multiple calls to `stpcpy` in
>>>> one statement.
>>>=20
>>> O_O What?
>>>=20
>>> No; this is a _terrible_ API: there is no bounds checking, there are no
>>> buffer sizes. Anything using the example sprintf() pattern is _already_
>>> wrong and must be removed from the kernel. (Yes, I realize that the
>>> kernel is *filled* with this bad assumption that "I'll never write more
>>> than PAGE_SIZE bytes to this buffer", but that's both theoretically
>>> wrong ("640k is enough for anybody") and has been known to be wrong in
>>> practice too (e.g. when suddenly your writing routine is reachable by
>>> splice(2) and you may not have a PAGE_SIZE buffer).
>>>=20
>>> But we cannot _add_ another dangerous string API. We're already in a
>>> terrible mess trying to remove strcpy[1], strlcpy[2], and strncpy[3]. T=
his
>>> needs to be addressed up by removing the unbounded sprintf() uses. (And
>>> to do so without introducing bugs related to using snprintf() when
>>> scnprintf() is expected[4].)
>>=20
>> Well, everything (-next, mainline, stable) is broken right now (with
>> ToT Clang) without providing this symbol.  I'm not going to go clean
>> the entire kernel's use of sprintf to get our CI back to being green.
>=20
> Maybe this should get place in compiler-clang.h so it isn't
> generic and public.
>=20
> Something like:
>=20
> ---
> include/linux/compiler-clang.h | 27 +++++++++++++++++++++++++++
> 1 file changed, 27 insertions(+)
>=20
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clan=
g.h
> index cee0c728d39a..6279f1904e39 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -61,3 +61,30 @@
> #if __has_feature(shadow_call_stack)
> # define __noscs    __attribute__((__no_sanitize__("shadow-call-stack")))
> #endif
> +
> +#ifndef __HAVE_ARCH_STPCPY
> +/**
> + * stpcpy - copy a string from src to dest returning a pointer to the ne=
w end
> + *          of dest, including src's NULL terminator. May overrun dest.
> + * @dest: pointer to buffer being copied into.
> + *        Must be large enough to receive copy.
> + * @src: pointer to the beginning of string being copied from.
> + *       Must not overlap dest.
> + *
> + * This function exists _only_ to support clang's possible conversion of
> + * sprintf calls to stpcpy.
> + *
> + * stpcpy differs from strcpy in two key ways:
> + * 1. inputs must not overlap.
> + * 2. return value is dest's NUL termination character after copy.
> + *    (for strcpy, the return value is a pointer to src)
> + */
> +
> +static inline char *stpcpy(char __restrict *dest, const char __restrict =
*src)
> +{
> +    while ((*dest++ =3D *src++) !=3D '\0') {
> +        ;    /* nothing */
> +    }
> +       return --dest;
> +}
> +#endif
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAF4EA53-B2B2-4E7C-8EB1-E5696F38CFA0%40gmail.com.
