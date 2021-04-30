Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYVJVWCAMGQEQ25ZINQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 486EA36F349
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 02:52:52 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id lk6-20020a17090b33c6b029015542757d77sf710583pjb.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 17:52:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619743971; cv=pass;
        d=google.com; s=arc-20160816;
        b=SEFaKGttDVmfniHRCZVXjLBsvv1Mz2VEKaY99tequMahU9tqoT6gkr27bAFGjjx5ZM
         uN9Kfs61/cfeAktgMmf0oNtnyTGXU+7LVEibQYIBaOUQRV2DJLdk0iOE/5946tOKXNyc
         CmXQdtVFzBl7k4PPBDQE3qY23yZkI1nGtRjUfxrrYJe7kNMHKENJMu4yZaKG2DflC99L
         F1HzpJEf6qRuRT3hyw23s1wVm2Mb6rxKzyrAwlknEIOkG50OZII/wzCf4UczK+urMPOs
         2a8pEm2aECwNtPW4lQNrFDcCkmwmmS4H8kEFoV+f/dzScQoRe+HPutCFondwdmIZwIrC
         VxfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=xlSak09Gu3k0zN+FIaLvamZR8wq/I3iNdot7Nqh+TjM=;
        b=Sk5GjRNxlBCpw6yNwEPHK0g30AOsvlWanufTpilnKnOd7Mw4QNldXcVCCrF6PduOQ+
         jiG0grVXBjmgsJuC95Zd1+EWZ2oQVmVlaE5VoHOrjb76+ORdxx5q/aSOhhgBCVzQLwoj
         O18tBi8sv4Q7bWZL+zHvZ3Xa5KOSoSZRZ53qhnVlXpBQBQsyC0tWEIa2bcTD0k75Urgk
         vrMYwrxhaMkTDgtz0PST9KFqEI9bUF2xl/hy5HXMI8t0EkESl1dmpQSDPr4PXIyO8jnw
         apbyrIQPfxM1+z3PdBeQRvuBKybvMmdeQtQkrviQazQAbtAX3GPu0pXlD0zOuJtQ5q95
         SPwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="oF/1+OWE";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xlSak09Gu3k0zN+FIaLvamZR8wq/I3iNdot7Nqh+TjM=;
        b=GE/Ba9xrRAhqCiqfCoWL172Dz7rHiYybJw5YYGVNwKlH0IRoAnqHQM79SUjR0A0QQ2
         wG7zL2xqNYLSYDbq0VoT0JuVJVap/bQDiEopxP/QPKhHk/7KoIMkM2DRtvtE0h1qvyLn
         euClwOlCn86QWoA6p3Qh5UYRV2lQhwac20UxDuBMygB1+ybsBHIpd3Bg9zwz5cl8C+wP
         EHklR4bHk+iFFAXoAQRFCqVJEmRQtI/cNmbjO+lBm7Jbcj84GvIvLzA6kAa6wnB2tNW7
         c1/PLvTVDsXRZ/daFKEa9q10HZ37qHf2439AlgyLT5jII2nH8tzIM6ltybgiKoxqQwBr
         GnBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xlSak09Gu3k0zN+FIaLvamZR8wq/I3iNdot7Nqh+TjM=;
        b=GWa0y+5S/NUsYs5pxACtdABHkjwt7mFE1njuiys9iUDbLdt1ewj5v5wsGZ9msCG/ni
         rVJM/ZF0eaGIRP0GYIJsEyxeCGZIu0N9i+HTkhiwuwBq+d6728rfGETWeNy698jyt6At
         o2aWB/k073wt4CzwyvdioJBD0Q9sgI2NMIQHd1R1I5d4H6QV3ZC1qvRZBXsEv7wbCnUH
         LK+zT1cGBSUzxQcH9aSlW6Mpuy+NzJGSVQ785iWZCkJ4RGmZc85vu2WdeJUD+/yLULbk
         jR65FljAMf6ddPCW3S+GkDhvgy5oYEOhv0sxmxToplLihWuYsqQNiofrgtd2GZwgg+Tl
         b+IQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/MYvZd3gFtMcin1EpmXKHooYJXpDoh75fntYSMhKV4ufKycFX
	Zf+RWXs/8Upa45UZI+NCyaw=
X-Google-Smtp-Source: ABdhPJymRF++T7uYHfZkHFx+ZfmOwcrgL5p3q7Ddlur/t391mErWWZ2X+j7GkSeiuqOcLWuU6gYOVw==
X-Received: by 2002:a17:902:8e89:b029:e9:a576:886e with SMTP id bg9-20020a1709028e89b02900e9a576886emr2447400plb.65.1619743970953;
        Thu, 29 Apr 2021 17:52:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ba08:: with SMTP id s8ls2205695pjr.1.gmail; Thu, 29
 Apr 2021 17:52:50 -0700 (PDT)
X-Received: by 2002:a17:902:9345:b029:e7:4853:ff5f with SMTP id g5-20020a1709029345b02900e74853ff5fmr2557629plp.74.1619743970415;
        Thu, 29 Apr 2021 17:52:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619743970; cv=none;
        d=google.com; s=arc-20160816;
        b=hltMNO7C5r/Qe10Hho3pJmiP1mPGOpBc41fQDbLb59D3+rhvzMEI1twR1s4sSZV11O
         itsuK/65zvnt0ykG+m6BK+lQx31+JnLPfiJOQV6Uo0VfTh2t/KPrT8eOyY9k9N5UUQY3
         /YzNvUBhqGtbg1qdsGaA8tc2ae6dcTlY3/ZTZMbSj4yjePnZazLjEeoOSTafGsWZa4+u
         R4XsM+9PQqm4oNv3yodokFRBKOR+hTDhCFCVS1rWB9cSx73lA4ESkuTdmbC2s+T6YieW
         QnhQsA1XbrnGbLMqKqBidhqu/L4nr7KtlPR6O3QELwct5IYkp9Fxz/Ccn4ZM3nXZL3G2
         47qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=AjMlBqhk4twYU/tcoOcHnN33HPN5u1hnL0FuSj021Bc=;
        b=NI7BQAECNbvh+c4eRcObP8FIURe3wuECiGz6iAVvdoeg0HhRIsOmBDgE3GJ7WNB0J8
         99cmtjBeA7XLstgZp3B7y5ctsgUvT616V/Fjj2numRHv/PPTwQILVl5PXMDYnXhdbXxm
         GfGeB53MW88LRN8gD9iNOxYIuqPuLFGGB2LsoEVYm4OJ8hgnyFSVjsg/E1BSDWRTHYmC
         pHs+/XDJNA84RJgnthzi15lZn5Wp0LouMwzUFIMu4AdQUaJykYCJVhxMy6CkVprUBNsJ
         ubgH8hqxSwXmHxUkJ8pRo+ZXyR9Q+PoqTlIx45kwh9vYtfmWxSJNiKThejSsSpFnQLU8
         E8eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="oF/1+OWE";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y17si389188plr.4.2021.04.29.17.52.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Apr 2021 17:52:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0165861264;
	Fri, 30 Apr 2021 00:52:48 +0000 (UTC)
Date: Thu, 29 Apr 2021 17:52:45 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Very slow clang kernel config ..
Message-ID: <YItU3YrFi8REwkRA@archlinux-ax161>
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="oF/1+OWE";       spf=pass
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

On Thu, Apr 29, 2021 at 02:53:08PM -0700, Linus Torvalds wrote:
> I haven't looked into why this is so slow with clang, but it really is
> painfully slow:
>=20
>    time make CC=3Dclang allmodconfig
>    real 0m2.667s
>=20
> vs the gcc case:
>=20
>     time make CC=3Dgcc allmodconfig
>     real 0m0.903s
>=20
> Yeah, yeah, three seconds may sound like "not a lot of time, but
> considering that the subsequent full build (which for me is often
> empty) doesn't take all that much longer, that config time clang waste
> is actually quite noticeable.
>=20
> I actually don't do allmodconfig builds with clang, but I do my
> default kernel builds with it:
>=20
>     time make oldconfig
>     real 0m2.748s
>=20
>     time sh -c "make -j128 > ../makes"
>     real 0m3.546s
>=20
> so that "make oldconfig" really is almost as slow as the whole
> "confirm build is done" thing. Its' quite noticeable in my workflow.
>=20
> The gcc config isn't super-fast either, but there's a big 3x
> difference, so the clang case really is doing something extra wrong.
>=20
> I've not actually looked into _why_. Except I do see that "clang" gets
> invoked with small (empty?) test files several times, probably to
> check for command line flags being valid.
>=20
> Sending this to relevant parties in the hope that somebody goes "Yeah,
> that's silly" and fixes it.
>=20
> This is on my F34 machine:
>=20
>      clang version 12.0.0 (Fedora 12.0.0-0.3.rc1.fc34)
>=20
> in case it matters (but I don't see why it should).
>=20
> Many many moons ago the promise for clang was faster build speeds.
> That didn't turn out to be true, but can we please at least try to
> make them not painfully much slower?

Hi Linus,

I benchmarked this with your latest tree
(8ca5297e7e38f2dc8c753d33a5092e7be181fff0) with my distribution versions
of clang 11.1.0 and gcc 10.2.0 and I saw the same results, benchmarking
with hyperfine.

$ hyperfine -L comp_var "","CC=3Dclang " -r 100 -S /bin/sh -w 5 'make {comp=
_var}allmodconfig'
Benchmark #1: make allmodconfig
  Time (mean =C2=B1 =CF=83):      1.490 s =C2=B1  0.012 s    [User: 1.153 s=
, System: 0.374 s]
  Range (min =E2=80=A6 max):    1.462 s =E2=80=A6  1.522 s    100 runs

Benchmark #2: make CC=3Dclang allmodconfig
  Time (mean =C2=B1 =CF=83):      4.001 s =C2=B1  0.020 s    [User: 2.761 s=
, System: 1.274 s]
  Range (min =E2=80=A6 max):    3.939 s =E2=80=A6  4.038 s    100 runs

Summary
  'make allmodconfig' ran
    2.69 =C2=B1 0.03 times faster than 'make CC=3Dclang allmodconfig'

It was also reproducible in a Fedora Docker image, which has newer
versions of those tools than my distro does (GCC 11.1.0 and clang
12.0.0):

$ hyperfine -L comp_var "","CC=3Dclang " -r 100 -S /bin/sh -w 5 'make {comp=
_var}allmodconfig'
Benchmark #1: make allmodconfig
  Time (mean =C2=B1 =CF=83):     989.9 ms =C2=B1   3.5 ms    [User: 747.0 m=
s, System: 271.1 ms]
  Range (min =E2=80=A6 max):   983.0 ms =E2=80=A6 998.2 ms    100 runs

Benchmark #2: make CC=3Dclang allmodconfig
  Time (mean =C2=B1 =CF=83):      3.328 s =C2=B1  0.005 s    [User: 2.408 s=
, System: 0.948 s]
  Range (min =E2=80=A6 max):    3.316 s =E2=80=A6  3.343 s    100 runs

Summary
  'make allmodconfig' ran
    3.36 =C2=B1 0.01 times faster than 'make CC=3Dclang allmodconfig'

Unfortunately, I doubt there is much that can be done on the kernel side
because this is reproducible just invoking the compilers without any
source input.

Clang 11.1.0 and GCC 10.2.0:

$ hyperfine -i -L compiler gcc,clang -r 5000 -S /bin/sh -w 5  'echo | {comp=
iler} -x c -c -o /dev/null -'
Benchmark #1: echo | gcc -x c -c -o /dev/null -
  Time (mean =C2=B1 =CF=83):       9.6 ms =C2=B1   1.0 ms    [User: 6.5 ms,=
 System: 3.4 ms]
  Range (min =E2=80=A6 max):     5.8 ms =E2=80=A6  12.7 ms    5000 runs

Benchmark #2: echo | clang -x c -c -o /dev/null -
  Time (mean =C2=B1 =CF=83):      33.0 ms =C2=B1   0.8 ms    [User: 22.4 ms=
, System: 10.9 ms]
  Range (min =E2=80=A6 max):    30.3 ms =E2=80=A6  36.0 ms    5000 runs

Summary
  'echo | gcc -x c -c -o /dev/null -' ran
    3.45 =C2=B1 0.39 times faster than 'echo | clang -x c -c -o /dev/null -=
'

$ hyperfine -i -L compiler gcc,clang -r 5000 -S /bin/sh -w 5  'echo | {comp=
iler} -Werror -Wflag-that-does-not-exit -x c -c -o /dev/null -'
Benchmark #1: echo | gcc -Werror -Wflag-that-does-not-exit -x c -c -o /dev/=
null -
  Time (mean =C2=B1 =CF=83):      11.9 ms =C2=B1   1.1 ms    [User: 10.5 ms=
, System: 1.8 ms]
  Range (min =E2=80=A6 max):     8.2 ms =E2=80=A6  15.1 ms    5000 runs

  Warning: Ignoring non-zero exit code.

Benchmark #2: echo | clang -Werror -Wflag-that-does-not-exit -x c -c -o /de=
v/null -
  Time (mean =C2=B1 =CF=83):      31.0 ms =C2=B1   0.8 ms    [User: 20.3 ms=
, System: 10.9 ms]
  Range (min =E2=80=A6 max):    27.9 ms =E2=80=A6  33.8 ms    5000 runs

  Warning: Ignoring non-zero exit code.

Summary
  'echo | gcc -Werror -Wflag-that-does-not-exit -x c -c -o /dev/null -' ran
    2.62 =C2=B1 0.26 times faster than 'echo | clang -Werror -Wflag-that-do=
es-not-exit -x c -c -o /dev/null -'

Clang 12.0.0 and GCC 11.1.0:

$ hyperfine -i -L compiler gcc,clang -r 5000 -S /bin/sh -w 5  'echo | {comp=
iler} -x c -c -o /dev/null -'
Benchmark #1: echo | gcc -x c -c -o /dev/null -
  Time (mean =C2=B1 =CF=83):       8.5 ms =C2=B1   0.3 ms    [User: 5.6 ms,=
 System: 3.3 ms]
  Range (min =E2=80=A6 max):     7.6 ms =E2=80=A6   9.8 ms    5000 runs

Benchmark #2: echo | clang -x c -c -o /dev/null -
  Time (mean =C2=B1 =CF=83):      27.4 ms =C2=B1   0.4 ms    [User: 19.6 ms=
, System: 8.1 ms]
  Range (min =E2=80=A6 max):    26.4 ms =E2=80=A6  29.1 ms    5000 runs

Summary
  'echo | gcc -x c -c -o /dev/null -' ran
    3.22 =C2=B1 0.13 times faster than 'echo | clang -x c -c -o /dev/null -=
'

$ hyperfine -i -L compiler gcc,clang -r 5000 -S /bin/sh -w 5  'echo | {comp=
iler} -Werror -Wflag-that-does-not-exit -x c -c -o /dev/null -'
Benchmark #1: echo | gcc -Werror -Wflag-that-does-not-exit -x c -c -o /dev/=
null -
  Time (mean =C2=B1 =CF=83):      12.2 ms =C2=B1   0.3 ms    [User: 11.5 ms=
, System: 1.0 ms]
  Range (min =E2=80=A6 max):    11.7 ms =E2=80=A6  13.9 ms    5000 runs

  Warning: Ignoring non-zero exit code.

Benchmark #2: echo | clang -Werror -Wflag-that-does-not-exit -x c -c -o /de=
v/null -
  Time (mean =C2=B1 =CF=83):      26.3 ms =C2=B1   0.5 ms    [User: 19.1 ms=
, System: 7.5 ms]
  Range (min =E2=80=A6 max):    25.2 ms =E2=80=A6  28.1 ms    5000 runs

  Warning: Ignoring non-zero exit code.

Summary
  'echo | gcc -Werror -Wflag-that-does-not-exit -x c -c -o /dev/null -' ran
    2.16 =C2=B1 0.06 times faster than 'echo | clang -Werror -Wflag-that-do=
es-not-exit -x c -c -o /dev/null -'

Seems that GCC is faster to complete when it does not have to parse
warning flags while clang shows no major variance. Thinking more about,
cc-option gives clang an empty file so it should not have to actually
parse anything so I do not think '-fsyntax-only' will gain us a whole
ton because we should not be dipping into the backend at all.

Tangentially, my version of clang built with Profile Guided Optimization
gets me closed to GCC. I am surprised to see this level of gain.

$ hyperfine -i -L compiler gcc,clang -r 5000 -S /bin/sh -w 5  'echo | {comp=
iler} -x c -c -o /dev/null -'
Benchmark #1: echo | gcc -x c -c -o /dev/null -
  Time (mean =C2=B1 =CF=83):       9.6 ms =C2=B1   1.0 ms    [User: 6.4 ms,=
 System: 3.5 ms]
  Range (min =E2=80=A6 max):     5.6 ms =E2=80=A6  12.9 ms    5000 runs

Benchmark #2: echo | clang -x c -c -o /dev/null -
  Time (mean =C2=B1 =CF=83):       8.7 ms =C2=B1   1.3 ms    [User: 4.3 ms,=
 System: 4.9 ms]
  Range (min =E2=80=A6 max):     4.9 ms =E2=80=A6  12.1 ms    5000 runs

  Warning: Command took less than 5 ms to complete. Results might be inaccu=
rate.

Summary
  'echo | clang -x c -c -o /dev/null -' ran
    1.10 =C2=B1 0.20 times faster than 'echo | gcc -x c -c -o /dev/null -'

$ hyperfine -L comp_var "","CC=3Dclang " -r 100 -S /bin/sh -w 5 'make {comp=
_var}allmodconfig'
Benchmark #1: make allmodconfig
  Time (mean =C2=B1 =CF=83):      1.531 s =C2=B1  0.011 s    [User: 1.180 s=
, System: 0.388 s]
  Range (min =E2=80=A6 max):    1.501 s =E2=80=A6  1.561 s    100 runs

Benchmark #2: make CC=3Dclang allmodconfig
  Time (mean =C2=B1 =CF=83):      1.828 s =C2=B1  0.015 s    [User: 1.209 s=
, System: 0.760 s]
  Range (min =E2=80=A6 max):    1.802 s =E2=80=A6  1.872 s    100 runs

Summary
  'make allmodconfig' ran
    1.19 =C2=B1 0.01 times faster than 'make CC=3Dclang allmodconfig'

I think that we should definitely see what we can do to speed up the front =
end.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YItU3YrFi8REwkRA%40archlinux-ax161.
