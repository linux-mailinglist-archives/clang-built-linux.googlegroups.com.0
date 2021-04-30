Return-Path: <clang-built-linux+bncBDYJPJO25UGBBL6TVWCAMGQEZLBGT7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 1799B36F402
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 04:21:37 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id 79-20020a6219520000b029025d00befcc3sf21009868pfz.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 19:21:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619749296; cv=pass;
        d=google.com; s=arc-20160816;
        b=psLxO0HEVpDI+EsgXWF78vO64Kwigq+azCUzoDwN4gqdyEIGmwh4H+e8DL/RsbLJ4n
         XOOZdYyIrrFcQZFqLUhqexo6DJY0QuRl6uZoqSnwfs2kOXeeJihRf/DKpswVBfgz6rjU
         QY1dKIfR/ap8W8A6SDuhGx8Xa4f4j1W1vAnrkng7aq/sW20PuxN6Vq2nUIO+LPcXTGFW
         BYNqupOVRriLuhydF2+nJVQS4YM6KOQF0r/XepcGrvOskuEzG7/eItZ/bQloInA8p1/P
         KikUQ64IGPBK3nuc8XPIu0V2tlBJFS9q/Oo8alpnv0ShXl4mRjLAkQG6XyTeI444O6Fi
         yRGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YbLjjaokvgRZcysUzulbeJVC1pzfZeSt7jUaEevF3jo=;
        b=wFILQMWf+oihUV7Wqr5bW/mBx9RZMYADKnDN0CiRuhlHlhd0uSSgOhsMzW2iHKy/x4
         PoMZ3MrWwqGuflt+rzKzgkAwNf0VxeabW3lmYwo6pv7Obf6Stx3I4gNw0hojPKuVB2t2
         AKHlzqxU0ZfxqoSiDHl93bO1ty6QkLk2BEl/YofjeoyLUwZ1ty1chAzDG1tKJnm2JRcR
         fMz0vuBcGtQYZ//EwO6GUOgvG6UjH+cuW1dS0aI+/GDHtaebHBsAKoqTS/VcAwgcU2rW
         B3NwwwhxQnEU0+CwSgewIms9XEtV57OKgKU+9Y1YBaDpkDFvWHs/9BJ1d9g8X7Ty5Al7
         gJyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AlMm0d+j;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=YbLjjaokvgRZcysUzulbeJVC1pzfZeSt7jUaEevF3jo=;
        b=rO6EJfjB60u8XY8tVKCRlDGUjsyvwxeSUFBlsCjhu0xBj+jXrlRwWnOVjhqWLcdTsu
         XCAggmxD9JtNbDrCbT9X1EfAOB+5uHb7WCtEXNuzehaAk34iqtapE13W8SJpz+yOtZDI
         EYXirB+BMURm8PoPUkZ0lyCXOciGUfGFqTdFHz2Y1dy1SXXMKadoKtoh6b/fXYg7t0Lz
         /eEvtc/PBtTXMFAgua8l13pFXqv5olC2z2wHB4Vyt39Fqt/6SX+PqrL3GpIqvX1Or9SS
         lVw6UFr/vEF8fvbihvGUX2JbvFz3OaMdyZaHYIqYCHspWp6+gdcTj182WRxAguE1VSQ7
         Yg+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YbLjjaokvgRZcysUzulbeJVC1pzfZeSt7jUaEevF3jo=;
        b=aj4VFICwWNKx6NY1evj67RUEs1Wj6XkuZ7VyGKy06jQ1YSvKgCGFXDBdvvKHZqkRJ7
         4QUCis7abdDVjB8yuqLNVxRUWb5FTkrB3V09OrB0ggxv1vbXPv9CO/00//hlp48LPSNK
         J38zzT2RqbLkqrG0aZb5WAslOdWdUjdv+P95OJ6jyX+xhYyoigoOfcfkfzCxiUA+BQop
         z+hRRVFzRP0BOlvYdWzHhnFzdbCpUNUJDj4x+MiC5OpQuo62NRBWu63O0hklvtMe2aXk
         zv0R6ybajbJpz+3IOWLf6YRqcEaKzqQ7Hp4tp9kxw+KYDlzeYBJ072Y1miMnyzAcXNvH
         rmUw==
X-Gm-Message-State: AOAM533FtgH6nxuML3OU5oq496tvWRst5ny00Tv7Jy7aRZHuODAVVeGg
	qNMFV0y/25fe+BdUxwPBm/k=
X-Google-Smtp-Source: ABdhPJyRBEMXQFVzZXhjPsgJ16klrDtHJKgaHUfFLO6poQM1WalbeXS7jZ/L9mCj9eNnmeFo3sjyAw==
X-Received: by 2002:a17:90a:a2e:: with SMTP id o43mr12251245pjo.163.1619749295733;
        Thu, 29 Apr 2021 19:21:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e84a:: with SMTP id t10ls699765plg.9.gmail; Thu, 29
 Apr 2021 19:21:35 -0700 (PDT)
X-Received: by 2002:a17:902:e54a:b029:ed:70ba:108c with SMTP id n10-20020a170902e54ab02900ed70ba108cmr2875249plf.52.1619749295138;
        Thu, 29 Apr 2021 19:21:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619749295; cv=none;
        d=google.com; s=arc-20160816;
        b=tZ1Ty37XEhP6/S53WxojcG3kvaI/T5Q1Bi1i7VaJ5Utrcxg7qZrpQWaHesaVAUKvJG
         IYJBfzJSqLBp8o9BDGpxjK0+f8/tx7pbMqVxXZRwRnY1dXqxekz9DHuRWA34xztmfnG7
         8kxyDpCtwcMRxqVJFewxWTxiu68HcbdVkpA2wBLLWLYHfEi2UwCMQ4uYBzTYk5jPNtEh
         VVCARqwLEv0xlg5ZQTntoDAi7VYf7DhffF5mcdzifLq0LDLeVUysPVeZLCg2S5xye7i5
         wBKJaIZ5KA+sUUGPjBFvNe1K+aKg1ud9XRp/pVQ8La0xSf0Uc2Oe/WftvVmPh70fh2Bz
         63LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bVKg1WaYpAs6mE5ZwE2rN9oW/W7WdqsnTYi7koiVdNE=;
        b=sIYJNgJEc+YUOdQAJKBNsCI8/lxv4KfTKHuZP5CCVE4SEdyNg/OwHr/UsxXlu7zs0Z
         34LHJR9F7uDC4x/cFVLGwi0TWllaBqJxeX5msm7LpDBcDe5/NarT1l4mlunl3i7cxUrQ
         IIdGtinxtVUKYnPiLrVdJUveI5otvz0a/tejKFZUiFzGrjtwn9pQ5IcF01BHX/+Ka4C6
         TqI+B9aeqoYR2Gzqj/7WZMjmVQYNneEGnThMUXYb17hNYu3JL4tr1avZnVhr75UV47nS
         pkFgsXwggKE9NMpAah+Gmww3ru6JBJnF1wsJhDiJZll7wEvaSXyZqRFHQYX2YgUbArGw
         WE5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AlMm0d+j;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com. [2607:f8b0:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id j184si303069pfb.1.2021.04.29.19.21.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 19:21:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::22f as permitted sender) client-ip=2607:f8b0:4864:20::22f;
Received: by mail-oi1-x22f.google.com with SMTP id i26so13237315oii.3
        for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 19:21:35 -0700 (PDT)
X-Received: by 2002:aca:2219:: with SMTP id b25mr8826343oic.14.1619749293971;
 Thu, 29 Apr 2021 19:21:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <YItU3YrFi8REwkRA@archlinux-ax161>
In-Reply-To: <YItU3YrFi8REwkRA@archlinux-ax161>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Apr 2021 19:21:21 -0700
Message-ID: <CAKwvOdk6cWE515-y_4Uek2caFQvThKs23kM5CVrS9eMdRuB-eQ@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: Nathan Chancellor <nathan@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AlMm0d+j;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::22f
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Apr 29, 2021 at 5:52 PM Nathan Chancellor <nathan@kernel.org> wrote=
:
>
> On Thu, Apr 29, 2021 at 02:53:08PM -0700, Linus Torvalds wrote:
> > I haven't looked into why this is so slow with clang, but it really is
> > painfully slow:
> >
> >    time make CC=3Dclang allmodconfig
> >    real 0m2.667s
> >
> > vs the gcc case:
> >
> >     time make CC=3Dgcc allmodconfig
> >     real 0m0.903s
> >
> > Yeah, yeah, three seconds may sound like "not a lot of time, but
> > considering that the subsequent full build (which for me is often
> > empty) doesn't take all that much longer, that config time clang waste
> > is actually quite noticeable.
> >
> > I actually don't do allmodconfig builds with clang, but I do my
> > default kernel builds with it:
> >
> >     time make oldconfig
> >     real 0m2.748s
> >
> >     time sh -c "make -j128 > ../makes"
> >     real 0m3.546s
> >
> > so that "make oldconfig" really is almost as slow as the whole
> > "confirm build is done" thing. Its' quite noticeable in my workflow.
> >
> > The gcc config isn't super-fast either, but there's a big 3x
> > difference, so the clang case really is doing something extra wrong.
> >
> > I've not actually looked into _why_. Except I do see that "clang" gets
> > invoked with small (empty?) test files several times, probably to
> > check for command line flags being valid.
> >
> > Sending this to relevant parties in the hope that somebody goes "Yeah,
> > that's silly" and fixes it.
> >
> > This is on my F34 machine:
> >
> >      clang version 12.0.0 (Fedora 12.0.0-0.3.rc1.fc34)
> >
> > in case it matters (but I don't see why it should).
> >
> > Many many moons ago the promise for clang was faster build speeds.
> > That didn't turn out to be true, but can we please at least try to
> > make them not painfully much slower?
>
> Hi Linus,
>
> I benchmarked this with your latest tree
> (8ca5297e7e38f2dc8c753d33a5092e7be181fff0) with my distribution versions
> of clang 11.1.0 and gcc 10.2.0 and I saw the same results, benchmarking
> with hyperfine.
>
> $ hyperfine -L comp_var "","CC=3Dclang " -r 100 -S /bin/sh -w 5 'make {co=
mp_var}allmodconfig'
> Benchmark #1: make allmodconfig
>   Time (mean =C2=B1 =CF=83):      1.490 s =C2=B1  0.012 s    [User: 1.153=
 s, System: 0.374 s]
>   Range (min =E2=80=A6 max):    1.462 s =E2=80=A6  1.522 s    100 runs
>
> Benchmark #2: make CC=3Dclang allmodconfig
>   Time (mean =C2=B1 =CF=83):      4.001 s =C2=B1  0.020 s    [User: 2.761=
 s, System: 1.274 s]
>   Range (min =E2=80=A6 max):    3.939 s =E2=80=A6  4.038 s    100 runs
>
> Summary
>   'make allmodconfig' ran
>     2.69 =C2=B1 0.03 times faster than 'make CC=3Dclang allmodconfig'

$ hyperfine -L comp_var "","CC=3Dclang " -r 100 -S /bin/sh -w 5 'make
{comp_var}allmodconfig'
Benchmark #1: make allmodconfig
  Time (mean =C2=B1 =CF=83):      2.095 s =C2=B1  0.025 s    [User: 1.285 s=
, System: 0.880 s]
  Range (min =E2=80=A6 max):    2.014 s =E2=80=A6  2.168 s    100 runs

Benchmark #2: make CC=3Dclang allmodconfig
  Time (mean =C2=B1 =CF=83):      2.930 s =C2=B1  0.034 s    [User: 1.522 s=
, System: 1.477 s]
  Range (min =E2=80=A6 max):    2.849 s =E2=80=A6  3.005 s    100 runs

Summary
  'make allmodconfig' ran
    1.40 =C2=B1 0.02 times faster than 'make CC=3Dclang allmodconfig'

Swapping the order, I get pretty similar results to my initial run:

hyperfine -L comp_var "CC=3Dclang ","" -r 100 -S /bin/sh -w 5 'make
{comp_var}allmodconfig'
Benchmark #1: make CC=3Dclang allmodconfig
  Time (mean =C2=B1 =CF=83):      2.915 s =C2=B1  0.031 s    [User: 1.501 s=
, System: 1.482 s]
  Range (min =E2=80=A6 max):    2.825 s =E2=80=A6  3.004 s    100 runs

Benchmark #2: make allmodconfig
  Time (mean =C2=B1 =CF=83):      2.093 s =C2=B1  0.022 s    [User: 1.284 s=
, System: 0.879 s]
  Range (min =E2=80=A6 max):    2.037 s =E2=80=A6  2.136 s    100 runs

Summary
  'make allmodconfig' ran
    1.39 =C2=B1 0.02 times faster than 'make CC=3Dclang allmodconfig'

So, yes, slower, but not quite as drastic as others have observed.

>
> It was also reproducible in a Fedora Docker image, which has newer
> versions of those tools than my distro does (GCC 11.1.0 and clang
> 12.0.0):
>
> $ hyperfine -L comp_var "","CC=3Dclang " -r 100 -S /bin/sh -w 5 'make {co=
mp_var}allmodconfig'
> Benchmark #1: make allmodconfig
>   Time (mean =C2=B1 =CF=83):     989.9 ms =C2=B1   3.5 ms    [User: 747.0=
 ms, System: 271.1 ms]
>   Range (min =E2=80=A6 max):   983.0 ms =E2=80=A6 998.2 ms    100 runs
>
> Benchmark #2: make CC=3Dclang allmodconfig
>   Time (mean =C2=B1 =CF=83):      3.328 s =C2=B1  0.005 s    [User: 2.408=
 s, System: 0.948 s]
>   Range (min =E2=80=A6 max):    3.316 s =E2=80=A6  3.343 s    100 runs
>
> Summary
>   'make allmodconfig' ran
>     3.36 =C2=B1 0.01 times faster than 'make CC=3Dclang allmodconfig'
>
> Unfortunately, I doubt there is much that can be done on the kernel side
> because this is reproducible just invoking the compilers without any
> source input.
>
> Clang 11.1.0 and GCC 10.2.0:
>
> $ hyperfine -i -L compiler gcc,clang -r 5000 -S /bin/sh -w 5  'echo | {co=
mpiler} -x c -c -o /dev/null -'
> Benchmark #1: echo | gcc -x c -c -o /dev/null -
>   Time (mean =C2=B1 =CF=83):       9.6 ms =C2=B1   1.0 ms    [User: 6.5 m=
s, System: 3.4 ms]
>   Range (min =E2=80=A6 max):     5.8 ms =E2=80=A6  12.7 ms    5000 runs
>
> Benchmark #2: echo | clang -x c -c -o /dev/null -
>   Time (mean =C2=B1 =CF=83):      33.0 ms =C2=B1   0.8 ms    [User: 22.4 =
ms, System: 10.9 ms]
>   Range (min =E2=80=A6 max):    30.3 ms =E2=80=A6  36.0 ms    5000 runs
>
> Summary
>   'echo | gcc -x c -c -o /dev/null -' ran
>     3.45 =C2=B1 0.39 times faster than 'echo | clang -x c -c -o /dev/null=
 -'

hyperfine -i -L compiler gcc,clang -r 5000 -S /bin/sh -w 5  'echo |
{compiler} -x c -c -o /dev/null -'
Benchmark #1:  echo | gcc -x c -c -o /dev/null -
  Time (mean =C2=B1 =CF=83):      21.4 ms =C2=B1   2.4 ms    [User: 11.6 ms=
, System: 10.8 ms]
  Range (min =E2=80=A6 max):    12.8 ms =E2=80=A6  27.3 ms    5000 runs

Benchmark #2:  echo | clang -x c -c -o /dev/null -
  Time (mean =C2=B1 =CF=83):      16.4 ms =C2=B1   2.3 ms    [User: 8.6 ms,=
 System: 8.8 ms]
  Range (min =E2=80=A6 max):    10.4 ms =E2=80=A6  25.4 ms    5000 runs

Summary
  ' echo | clang -x c -c -o /dev/null -' ran
    1.31 =C2=B1 0.24 times faster than ' echo | gcc -x c -c -o /dev/null -'

>
> $ hyperfine -i -L compiler gcc,clang -r 5000 -S /bin/sh -w 5  'echo | {co=
mpiler} -Werror -Wflag-that-does-not-exit -x c -c -o /dev/null -'
> Benchmark #1: echo | gcc -Werror -Wflag-that-does-not-exit -x c -c -o /de=
v/null -
>   Time (mean =C2=B1 =CF=83):      11.9 ms =C2=B1   1.1 ms    [User: 10.5 =
ms, System: 1.8 ms]
>   Range (min =E2=80=A6 max):     8.2 ms =E2=80=A6  15.1 ms    5000 runs
>
>   Warning: Ignoring non-zero exit code.
>
> Benchmark #2: echo | clang -Werror -Wflag-that-does-not-exit -x c -c -o /=
dev/null -
>   Time (mean =C2=B1 =CF=83):      31.0 ms =C2=B1   0.8 ms    [User: 20.3 =
ms, System: 10.9 ms]
>   Range (min =E2=80=A6 max):    27.9 ms =E2=80=A6  33.8 ms    5000 runs
>
>   Warning: Ignoring non-zero exit code.
>
> Summary
>   'echo | gcc -Werror -Wflag-that-does-not-exit -x c -c -o /dev/null -' r=
an
>     2.62 =C2=B1 0.26 times faster than 'echo | clang -Werror -Wflag-that-=
does-not-exit -x c -c -o /dev/null -'

hyperfine -i -L compiler gcc,clang -r 5000 -S /bin/sh -w 5  'echo |
{compiler} -Werror -Wflag-that-does-not-exit -x c -c -o /dev/null -'
Benchmark #1:  echo | gcc -Werror -Wflag-that-does-not-exit -x c -c -o
/dev/null -
  Time (mean =C2=B1 =CF=83):      18.5 ms =C2=B1   2.4 ms    [User: 17.0 ms=
, System: 2.7 ms]
  Range (min =E2=80=A6 max):    12.2 ms =E2=80=A6  24.6 ms    5000 runs

  Warning: Ignoring non-zero exit code.

Benchmark #2:  echo | clang -Werror -Wflag-that-does-not-exit -x c -c
-o /dev/null -
  Time (mean =C2=B1 =CF=83):      15.4 ms =C2=B1   2.3 ms    [User: 8.4 ms,=
 System: 8.1 ms]
  Range (min =E2=80=A6 max):     9.5 ms =E2=80=A6  22.6 ms    5000 runs

  Warning: Ignoring non-zero exit code.

Summary
  ' echo | clang -Werror -Wflag-that-does-not-exit -x c -c -o /dev/null -' =
ran
    1.20 =C2=B1 0.23 times faster than ' echo | gcc -Werror
-Wflag-that-does-not-exit -x c -c -o /dev/null -'

>
> Clang 12.0.0 and GCC 11.1.0:
>
> $ hyperfine -i -L compiler gcc,clang -r 5000 -S /bin/sh -w 5  'echo | {co=
mpiler} -x c -c -o /dev/null -'
> Benchmark #1: echo | gcc -x c -c -o /dev/null -
>   Time (mean =C2=B1 =CF=83):       8.5 ms =C2=B1   0.3 ms    [User: 5.6 m=
s, System: 3.3 ms]
>   Range (min =E2=80=A6 max):     7.6 ms =E2=80=A6   9.8 ms    5000 runs
>
> Benchmark #2: echo | clang -x c -c -o /dev/null -
>   Time (mean =C2=B1 =CF=83):      27.4 ms =C2=B1   0.4 ms    [User: 19.6 =
ms, System: 8.1 ms]
>   Range (min =E2=80=A6 max):    26.4 ms =E2=80=A6  29.1 ms    5000 runs
>
> Summary
>   'echo | gcc -x c -c -o /dev/null -' ran
>     3.22 =C2=B1 0.13 times faster than 'echo | clang -x c -c -o /dev/null=
 -'
>
> $ hyperfine -i -L compiler gcc,clang -r 5000 -S /bin/sh -w 5  'echo | {co=
mpiler} -Werror -Wflag-that-does-not-exit -x c -c -o /dev/null -'
> Benchmark #1: echo | gcc -Werror -Wflag-that-does-not-exit -x c -c -o /de=
v/null -
>   Time (mean =C2=B1 =CF=83):      12.2 ms =C2=B1   0.3 ms    [User: 11.5 =
ms, System: 1.0 ms]
>   Range (min =E2=80=A6 max):    11.7 ms =E2=80=A6  13.9 ms    5000 runs
>
>   Warning: Ignoring non-zero exit code.
>
> Benchmark #2: echo | clang -Werror -Wflag-that-does-not-exit -x c -c -o /=
dev/null -
>   Time (mean =C2=B1 =CF=83):      26.3 ms =C2=B1   0.5 ms    [User: 19.1 =
ms, System: 7.5 ms]
>   Range (min =E2=80=A6 max):    25.2 ms =E2=80=A6  28.1 ms    5000 runs
>
>   Warning: Ignoring non-zero exit code.
>
> Summary
>   'echo | gcc -Werror -Wflag-that-does-not-exit -x c -c -o /dev/null -' r=
an
>     2.16 =C2=B1 0.06 times faster than 'echo | clang -Werror -Wflag-that-=
does-not-exit -x c -c -o /dev/null -'
>
> Seems that GCC is faster to complete when it does not have to parse
> warning flags while clang shows no major variance. Thinking more about,
> cc-option gives clang an empty file so it should not have to actually
> parse anything so I do not think '-fsyntax-only' will gain us a whole
> ton because we should not be dipping into the backend at all.
>
> Tangentially, my version of clang built with Profile Guided Optimization
> gets me closed to GCC. I am surprised to see this level of gain.
>
> $ hyperfine -i -L compiler gcc,clang -r 5000 -S /bin/sh -w 5  'echo | {co=
mpiler} -x c -c -o /dev/null -'
> Benchmark #1: echo | gcc -x c -c -o /dev/null -
>   Time (mean =C2=B1 =CF=83):       9.6 ms =C2=B1   1.0 ms    [User: 6.4 m=
s, System: 3.5 ms]
>   Range (min =E2=80=A6 max):     5.6 ms =E2=80=A6  12.9 ms    5000 runs

hyperfine -i -L compiler gcc,clang -r 5000 -S /bin/sh -w 5  'echo |
{compiler} -x c -c -o /dev/null -'
Benchmark #1:  echo | gcc -x c -c -o /dev/null -
  Time (mean =C2=B1 =CF=83):      21.3 ms =C2=B1   2.4 ms    [User: 11.7 ms=
, System: 10.6 ms]
  Range (min =E2=80=A6 max):    12.2 ms =E2=80=A6  27.4 ms    5000 runs

Benchmark #2:  echo | clang -x c -c -o /dev/null -
  Time (mean =C2=B1 =CF=83):      16.3 ms =C2=B1   2.3 ms    [User: 8.5 ms,=
 System: 8.8 ms]
  Range (min =E2=80=A6 max):    10.1 ms =E2=80=A6  25.2 ms    5000 runs

Summary
  ' echo | clang -x c -c -o /dev/null -' ran
    1.31 =C2=B1 0.24 times faster than ' echo | gcc -x c -c -o /dev/null -'

So now clang is faster?  Am I holding it wrong?

>
> Benchmark #2: echo | clang -x c -c -o /dev/null -
>   Time (mean =C2=B1 =CF=83):       8.7 ms =C2=B1   1.3 ms    [User: 4.3 m=
s, System: 4.9 ms]
>   Range (min =E2=80=A6 max):     4.9 ms =E2=80=A6  12.1 ms    5000 runs
>
>   Warning: Command took less than 5 ms to complete. Results might be inac=
curate.
>
> Summary
>   'echo | clang -x c -c -o /dev/null -' ran
>     1.10 =C2=B1 0.20 times faster than 'echo | gcc -x c -c -o /dev/null -=
'
>
> $ hyperfine -L comp_var "","CC=3Dclang " -r 100 -S /bin/sh -w 5 'make {co=
mp_var}allmodconfig'
> Benchmark #1: make allmodconfig
>   Time (mean =C2=B1 =CF=83):      1.531 s =C2=B1  0.011 s    [User: 1.180=
 s, System: 0.388 s]
>   Range (min =E2=80=A6 max):    1.501 s =E2=80=A6  1.561 s    100 runs
>
> Benchmark #2: make CC=3Dclang allmodconfig
>   Time (mean =C2=B1 =CF=83):      1.828 s =C2=B1  0.015 s    [User: 1.209=
 s, System: 0.760 s]
>   Range (min =E2=80=A6 max):    1.802 s =E2=80=A6  1.872 s    100 runs
>
> Summary
>   'make allmodconfig' ran
>     1.19 =C2=B1 0.01 times faster than 'make CC=3Dclang allmodconfig'
>
> I think that we should definitely see what we can do to speed up the fron=
t end.

Numbers between machines probably aren't directly comparable, but I
would be curious if which toolchain was used to build clang makes a
difference; whether debug builds are significantly slower, and whether
distro toolchains vs local builds from the same branch (but all from
the same machine) are noticeably different.


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdk6cWE515-y_4Uek2caFQvThKs23kM5CVrS9eMdRuB-eQ%40mai=
l.gmail.com.
