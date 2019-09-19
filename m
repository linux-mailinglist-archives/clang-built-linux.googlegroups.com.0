Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBSUBR7WAKGQEB4NBSAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BADB8078
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 19:54:19 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id f80sf2431423oig.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Sep 2019 10:54:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568915658; cv=pass;
        d=google.com; s=arc-20160816;
        b=lNkTd9dV8PIc5i8bayS2WELNKU9vQAXylw6xzYztYFHmroerwVGDrS+NtE6wH3JrUA
         iyd0oIrVuj4yxPYVJvFtW0mCAZGVNCIXNCtL4qFxIk0MvlSbuW+LGusSyqpoS2YEu/DJ
         1bIkz69ly6FEqmngbaEn1tNMmXOOrxIF70+jzO9rMO6v8lsh5mZrKw45v4EzFnc6Kt0i
         2/fqfGn3V/nuW+kxQOskH83TZLB9/SvI01x/6vlIzGR4sUI1V+wRzIMa4IjG/dUWTERL
         6jDXqw1ODsM9TNrFmbN17/pTGbk81oTcEcv58jOy+hPEmuku41NaeX2TlyD58cbYYDUF
         bFQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=R8FMWuG5i3elAiEDbiTAAKC4B0JB1Tsuae8qldZgdY4=;
        b=O3P5E4St711mS/vPevNQ2t/I0zN1/hbRcfR5yFOZoYUOd6dI5huhGAXtQHQ+o4mUVT
         bDnxaI1UJ6E01Z/q8X/2oMR9YPjQMqWI75r3bj8YsU4Dxu9jWEj/7pmjSP5vIsub0Qv2
         IyW0htAr9nQAVA81r+HYs9+Nt1W34RbAxyIP9cbsJody+GWzyDUPPwLsm6LYRwcW8OFA
         x+aky65NeVDfHBh2F7OW7lXv/UcXm5nD8VG2YDi3h3xalJrDthh04Q4dryq6Wk+DiAqI
         /MuvB/rEIblAVzWVvBo8bAt17LZJhfk86doe7IjVBRHBua5ypkQtXRuV+crHSkSDshPS
         a8mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dDqdCLKv;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R8FMWuG5i3elAiEDbiTAAKC4B0JB1Tsuae8qldZgdY4=;
        b=T8IZ217vYXIwqmHPlpN1dh84Qwq5afKOhvbNaUkUBcWffsvF2eUcCKrp2J3dzIQeZP
         3fBLHToNZJ+8k0vUriqJdw3+tHJ3QZZSnz3JN5XEANgpQ94cqmuSbHhG5sBHbraeinfa
         8BGmqWVCZuaL550B+Ca0MomyOCP3jD4HQ5SWMAJGxn/E/uyFlMVq4XyFPTkT5EaUa1Ao
         OITqk8cd9ll957Sc3w+TUpNM8WrH6t//C8QMUKQ7K7/AccFW7fnXTGOGnh3zj0+A0MCu
         DpVgG3kyiLrjX1aZwG/jfJsvAgiDRyHaA30ntaOTvuQ+2Ld7gCoX4B0OmBAzgiGpR98i
         8Gmg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R8FMWuG5i3elAiEDbiTAAKC4B0JB1Tsuae8qldZgdY4=;
        b=IR57sWSs93GsJJavx38gaVnopCXZMELY6XGzheMci1EA5FCBcUJ4g5u5OECBB2t7pa
         6AwmxzXxq1R2cGjytqxsGa8AWYfOanPQ0grz7zkqEjNuys4i3UV4xks9227zLq9SgDLk
         pBI45+Lr5SZM8PmCN+gwGWEdIJUSKIngLDSq9TD7te4UilWtHNOhrkTgy0GFTDtCzhhr
         K7sxKdP4EVs+U+4fJA6CDGZSdFFtoyAKwez6vgnNOBiMBPvavR2o7qrgmvx2uIKIWFaV
         Xf45J1Z/F1mycYKRE3xg0qGwpk+hp57N8QUvpzpT98qNDkunxV2NYL0z7vo7a0/t7m7J
         SgMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R8FMWuG5i3elAiEDbiTAAKC4B0JB1Tsuae8qldZgdY4=;
        b=HRgLXcuwRSpL3griocPBbwaAA/S8CjR453qzExbkDmTH5wPfA4n7WYODO4Alilw1Sy
         i3L2PphiWG8/KXnxJ2HeppfRXj6DqT6wG71+It7oHHk+I3u1P9p0p6lmvpXjTCoCps2n
         BU+8oIyMRnfDqnsSHA6IpdG7HrDgJ0M0YyYlQytPkcK7tqpM6SDxf1xC/1nefZv72h1T
         sGmuEIyoXTmWrCKPzEiIopsdvxssQRUGchYbh9giamBcmMnWqudFdiJKNQHQHEimVQkp
         OgB3VKfmOQZEpvkEEvlUKwzsmTvZiJdl2eKoVDZ1IC0zPCg6PQfk+09ozFVp5T2r2ayF
         XRjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUuzCRn0Sv+q5aqvqpCaqvLk0bN3o36Q1aV75h0QzcnSyuoJrPQ
	DFBrT0EU7qdvpthR/pkhEok=
X-Google-Smtp-Source: APXvYqyMeuQIGulqMlvC4Ge7QItZbOyAxaEyTzlYAFQwfml8AFj9cQmDvhi4CH517Z8LH8zIcd5Isw==
X-Received: by 2002:a9d:7f0e:: with SMTP id j14mr7919430otq.3.1568915658260;
        Thu, 19 Sep 2019 10:54:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1245:: with SMTP id s5ls1039538otp.4.gmail; Thu, 19
 Sep 2019 10:54:18 -0700 (PDT)
X-Received: by 2002:a05:6830:22f7:: with SMTP id t23mr8109246otc.258.1568915658038;
        Thu, 19 Sep 2019 10:54:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568915658; cv=none;
        d=google.com; s=arc-20160816;
        b=euiTBQzCYHoRj4LbY+aPcga97a8SmF0u7/giEhEsKxEnMkgh3BXDVDxnKc5x5qBLYg
         cgC5Rp3OdOQ8FbqZJfTlAOOB9+LRTXnvVcGxpCIb8Tdk2joQQ6al9/YD5+S+E40m7uDm
         VaTw5ABo13HuCVbmMfCcZKcmjRvf9BoEgbBPfp/NxnnXr8edh0Jk0uJ7ZJBNhwby60wE
         rkywH8bYWI9OfX8H28/pWfueSK597Lkni7XlQV5DWjtP75zmgz5euODYjqda89Su7crl
         DNwfhr7DshiRPF8IufeHYTdSz6EQag3Nyyb/JJe+2jR+68DKI1LmrPuoP+wn2LEUXAHO
         tbMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lhjn8qyJcwUfBjY1N3P+y5aRQQfw1E5mf/LtWXDIb7I=;
        b=PbQUiS3cfhdF3e7Nennea1UV8qQ3spOOrxsT12MxDlEgZZcfGM9iFGIWHUCdn0CAJh
         6GyS/Ac4KJ/hXlI5T71pjnALYLR96aQMFdvptEyyCiuuyCZRO2T+ZIdr99eTZgsN0lnd
         MrLDEBkmYMW4Q20ZiCtgDxNrgYKSQz0rT0DW8P8Fm0V4cMiCR9K8fp/obQtos8T4hlq7
         qvrc6hYnSo8hwtBzmygjqFFALC7Ua9Zj7rA93f3ccYgVQ6VSrRiRpRz7uhlm0X604DW1
         pf1cBsngCayIGRADvYCmRUCEvCZgJxOy9LFoa/4+XpmtMPiOVxUJFehWKN7606vdNTyk
         XlSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dDqdCLKv;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id p20si914703oip.5.2019.09.19.10.54.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Sep 2019 10:54:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id x5so5333978qtr.7
        for <clang-built-linux@googlegroups.com>; Thu, 19 Sep 2019 10:54:18 -0700 (PDT)
X-Received: by 2002:a05:6214:582:: with SMTP id bx2mr8789123qvb.60.1568915657312;
 Thu, 19 Sep 2019 10:54:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
 <20190916105433.11404-10-ivan.khoronzhuk@linaro.org> <CAEf4BzbuPnxAs0A=w60q0jTCy5pb2R-h0uEuT2tmvjsaj4DH4A@mail.gmail.com>
 <20190918103508.GC2908@khorivan> <CAEf4BzYCNrkaMf-LFHYDi78m9jgMDOswh8VYXGcbttJV-3D21w@mail.gmail.com>
 <20190919141848.GA8870@khorivan>
In-Reply-To: <20190919141848.GA8870@khorivan>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 19 Sep 2019 10:54:06 -0700
Message-ID: <CAEf4BzYukBi6DjiN-_ueFp4=n8S3Qfpq1wM2CnPGS-R8LJ7+KQ@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 09/14] samples: bpf: makefile: use own flags
 but not host when cross compile
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	sergei.shtylyov@cogentembedded.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dDqdCLKv;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Thu, Sep 19, 2019 at 7:18 AM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> On Wed, Sep 18, 2019 at 02:29:53PM -0700, Andrii Nakryiko wrote:
> >On Wed, Sep 18, 2019 at 3:35 AM Ivan Khoronzhuk
> ><ivan.khoronzhuk@linaro.org> wrote:
> >>
> >> On Tue, Sep 17, 2019 at 04:42:07PM -0700, Andrii Nakryiko wrote:
> >> >On Mon, Sep 16, 2019 at 3:59 AM Ivan Khoronzhuk
> >> ><ivan.khoronzhuk@linaro.org> wrote:
> >> >>
> >> >> While compile natively, the hosts cflags and ldflags are equal to ones
> >> >> used from HOSTCFLAGS and HOSTLDFLAGS. When cross compiling it should
> >> >> have own, used for target arch. While verification, for arm, arm64 and
> >> >> x86_64 the following flags were used alsways:
> >> >>
> >> >> -Wall
> >> >> -O2
> >> >> -fomit-frame-pointer
> >> >> -Wmissing-prototypes
> >> >> -Wstrict-prototypes
> >> >>
> >> >> So, add them as they were verified and used before adding
> >> >> Makefile.target, but anyway limit it only for cross compile options as
> >> >> for host can be some configurations when another options can be used,
> >> >> So, for host arch samples left all as is, it allows to avoid potential
> >> >> option mistmatches for existent environments.
> >> >>
> >> >> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> >> >> ---
> >> >>  samples/bpf/Makefile | 9 +++++++++
> >> >>  1 file changed, 9 insertions(+)
> >> >>
> >> >> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> >> >> index 1579cc16a1c2..b5c87a8b8b51 100644
> >> >> --- a/samples/bpf/Makefile
> >> >> +++ b/samples/bpf/Makefile
> >> >> @@ -178,8 +178,17 @@ CLANG_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
> >> >>  TPROGS_CFLAGS += $(ARM_ARCH_SELECTOR)
> >> >>  endif
> >> >>
> >> >> +ifdef CROSS_COMPILE
> >> >> +TPROGS_CFLAGS += -Wall
> >> >> +TPROGS_CFLAGS += -O2
> >> >
> >> >Specifying one arg per line seems like overkill, put them in one line?
> >> Will combine.
> >>
> >> >
> >> >> +TPROGS_CFLAGS += -fomit-frame-pointer
> >> >
> >> >Why this one?
> >> I've explained in commit msg. The logic is to have as much as close options
> >> to have smiliar binaries. As those options are used before for hosts and kinda
> >> cross builds - better follow same way.
> >
> >I'm just asking why omit frame pointers and make it harder to do stuff
> >like profiling? What performance benefits are we seeking for in BPF
> >samples?
> >
> >>
> >> >
> >> >> +TPROGS_CFLAGS += -Wmissing-prototypes
> >> >> +TPROGS_CFLAGS += -Wstrict-prototypes
> >> >
> >> >Are these in some way special that we want them in cross-compile mode only?
> >> >
> >> >All of those flags seem useful regardless of cross-compilation or not,
> >> >shouldn't they be common? I'm a bit lost about the intent here...
> >> They are common but split is needed to expose it at least. Also host for
> >> different arches can have some own opts already used that shouldn't be present
> >> for cross, better not mix it for safety.
> >
> >We want -Wmissing-prototypes and -Wstrict-prototypes for cross-compile
> >and non-cross-compile cases, right? So let's specify them as common
> >set of options, instead of relying on KBUILD_HOSTCFLAGS or
> >HOST_EXTRACFLAGS to have them. Otherwise we'll be getting extra
> >warnings for just cross-compile case, which is not good. If you are
> >worrying about having duplicate -W flags, seems like it's handled by
> >GCC already, so shouldn't be a problem.
>
> Ok, lets drop omit-frame-pointer.
>
> But then, lets do more radical step and drop
> KBUILD_HOSTCFLAGS & HOST_EXTRACFLAG in this patch:

Yeah, let's do this, if you confirmed that everything still works (and
I don't see a reason why it shouldn't). Thanks.

>
> -ifdef CROSS_COMPILE
> +TPROGS_CFLAGS += -Wall -O2
> +TPROGS_CFLAGS += -Wmissing-prototypes
> +TPROGS_CFLAGS += -Wstrict-prototypes
> -else
> -TPROGS_LDLIBS := $(KBUILD_HOSTLDLIBS)
> -TPROGS_CFLAGS += $(KBUILD_HOSTCFLAGS) $(HOST_EXTRACFLAGS)
> -endif
>
> At least it allows to use same options always for both, native and cross.
>
> I verified on native x86_64, arm64 and arm and cross for arm and arm64,
> but should work for others, at least it can be tuned explicitly and
> no need to depend on KBUILD and use "cross" fork here.

Yep, I like it.

>
> --
> Regards,
> Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYukBi6DjiN-_ueFp4%3Dn8S3Qfpq1wM2CnPGS-R8LJ7%2BKQ%40mail.gmail.com.
