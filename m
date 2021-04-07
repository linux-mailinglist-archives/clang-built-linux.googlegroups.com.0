Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRWWXCBQMGQEQ63LJAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id A484535773F
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 23:59:35 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id u2sf10041234lff.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 14:59:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617832775; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xhy82MA/JT2OBf85NA7ByhHlg4IpEoJ0y0iAtqeyKuV8a3CpPnUjbuZOziXDitnkFO
         jc2AlZYjcSjXdnMmcYCmF2DMVtNdPJzk70YBSj7mp9X9w1pJOpSzw211iXfrQmP6/wEc
         lXFtJsKB5vKKHZV34qb+NU9BXyrq7j0uJcW4eTZpuLTE6EBEzlo72A63ZA0RVFSC8O7f
         84ft/iDBF8QOV22509cedPZ7w8QqFHKJZ3laHr1ew3f94HeUkZ29f3oOwqJcXzRE0X1i
         c9Fy3RfNGt11u+UHBnen+RvW8D8YS7MgDifhmhnb+RmKc6cQ7Mzr1FSRdiW0D8QOR9+s
         tdOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KuRXz/OrKq6RHqJbF4jRc624i+EIdkDAHh/y2+WZESo=;
        b=NHQVS+3Vo/YPAvCC2fOOba0GlXbj4LncYyoqyaHEE9/4HqhOuEFVnQml8qvpBwwc1s
         JwSntKOQIkmIcyM39JD9iePZT5FP36b9PCEciMisOFPH7tQdVrfxgSTCsDSf8ZH3rG43
         9hxFCaNAyIn26rndYqk7TUJS9gvFjz+J1GeyFUg8pqRzROz1k64G/2oZm+QRTEbNmHMw
         Gqt8cjJtGjwb1mq8M9TyFBN7e2QxkH5wb9cMkEHjnLEPA30rFkfiN+N9iwSrG5ubohIz
         lHpwcdwfo9rer3jXTbReMyZPpQap8opySxCy1ZtKe/Jt9DA4DxTCsdt2cfSpEQJgFiAC
         CQBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=six76Bmc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=KuRXz/OrKq6RHqJbF4jRc624i+EIdkDAHh/y2+WZESo=;
        b=tC+wF7zpbwXijsMlBRTjsCVxVc83izNZWJZCXh2RHlhmhkHQTERqe2MCRo8vUt7OqS
         mp/F70hXEwIFX4i0mbW+v8SzsRSxn8Tw/ul+svV67KOFOtIJbb32q4O4FMwX3MngHT9r
         gJgcQ7MaXraJS/o0NfkeFmWblaaaGov5SPKXXqSUSMjzwlyYnxe/TnmHc8u6wYdQGMVO
         WpTCYSMZVO0khpeGIX+CkVGyqPuoyVAZSO4iu7WRvf1ICBrf5gI2V6hDwCmRqQF40sWg
         v0euWTYeD4Ipnekt2eIwOxDWv1DbkN7osNxVDypPVkQGrw5DMq5+/AdrFuiqhBhDNXBd
         fZmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KuRXz/OrKq6RHqJbF4jRc624i+EIdkDAHh/y2+WZESo=;
        b=N4mswp0YpFhpi5gJWc0j8PkV7VMX6GMwdMO9CWbXkFfuKv2AUTVV2M0b6kfLdIHLhp
         rV3SHur64Q2mdxmxEKocraCossi4FlXmEEFdEUJQYO5WYvvNnkt5vukZWst3EK/crlOM
         pfzrQcgK7+uivf7xXRu70ywBlPJ2pcua/tV3CDRlsru1LyuB1CfSh0QhG9hs+HeRHnEu
         CNxRIbdQoOFT5VK9G5iLui3gKC453ENWGYiOCr8jUsYYlBxyHNxYlqOMNNZtZcApu8pr
         qwTiStufvtzH6817gwhTeWbL8YXZ/pKwyY7RqZspWQm27qH9oazj6FAmNRY4A6iw19L/
         MU5A==
X-Gm-Message-State: AOAM531H5U2mysctdgf4tXQT4gwrzGB8J2zBjS46zDItTjz0Q9hALakS
	52g184dof2IkANHtaWRoRJI=
X-Google-Smtp-Source: ABdhPJwdI9cS7X5oPYJ1m3NPWt01FtU2x8GyhoF2JXEzd1tgofNOVGV/GUsheGaDHf8Jj04cHuyviA==
X-Received: by 2002:ac2:46f5:: with SMTP id q21mr3657290lfo.531.1617832775187;
        Wed, 07 Apr 2021 14:59:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:588:: with SMTP id 130ls164396ljf.9.gmail; Wed, 07 Apr
 2021 14:59:34 -0700 (PDT)
X-Received: by 2002:a2e:9012:: with SMTP id h18mr3610045ljg.139.1617832774107;
        Wed, 07 Apr 2021 14:59:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617832774; cv=none;
        d=google.com; s=arc-20160816;
        b=06ohGJJWDHfKUcXiwuMVqRgD48kQsfY9N9ikC667qV530RmHLyVUq/7OkswBkruWHB
         SyHM4u7al3CiEAjfLt2ig5qAOF1JD7VqzGs0Ou4Lfpc+ap6R2d+MjtK0kWd7BJos+iX4
         flZKqpp+df1/cJBs9t01YTpD8yTNmBn6LQ0Ug9yofN6jm1/K581C20DMuxg+mBf1obLt
         bcOKh3vy0+dJpip87dMbbke7oSwZ2ImFthAwz38lBV/4UgMGazv8gRLObb2CpKUHmCZ2
         hpAIvFxxloOUgBqOelbYQ7MUICkVlEtEEZdmxZ3TE4oF8F4XJvtFsHxzLOLvwjVArTbG
         OfQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=QIJIy/T2uGm87mT7VcpVFujkIhhLqkd42A0B/7TfE8E=;
        b=Wv70MTS/SEWtxjwNF88+i/yJCNiR1bGY3dgqIaMnmmhBHNuw0ZB4yxr/cu3hZiopDq
         weAuPpWCbh6aB1ulfunV1EgnJ95IcVD/Z/GZ126Wyw1Pwtp9BvPD8G/Sj2HCt/SUf4Q6
         p1+Z3S5nmGlcHD57WkJEBqNeCwvki6WTrKOQCxrPvlLwgaupXA9fHqbSUkZDIcoXt4RT
         mPcjpTNutT0Naq/s+nSpS4d9FT9tGYfE0EvDIW65Yr/cHe+vMvnNDFFHGetee7SS5QwR
         0UrP5CLhK10CkzmXIRKQ+ej3IvPA2VT3cGYmYP+PE0jVv/kdAT71G6f2R0d/5d6Rhrnq
         4UfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=six76Bmc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com. [2a00:1450:4864:20::229])
        by gmr-mx.google.com with ESMTPS id d32si1760487lfv.8.2021.04.07.14.59.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 14:59:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) client-ip=2a00:1450:4864:20::229;
Received: by mail-lj1-x229.google.com with SMTP id r20so22550832ljk.4
        for <clang-built-linux@googlegroups.com>; Wed, 07 Apr 2021 14:59:34 -0700 (PDT)
X-Received: by 2002:a2e:b88d:: with SMTP id r13mr3522709ljp.479.1617832773678;
 Wed, 07 Apr 2021 14:59:33 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000adaf6505bf68fbf2@google.com>
In-Reply-To: <000000000000adaf6505bf68fbf2@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 7 Apr 2021 14:59:22 -0700
Message-ID: <CAKwvOdmWoLX-r09vuWDobkMjeTggf7dcdb1AhuPxmeE6z1yo1A@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - April 7, 2021
To: Mark Brown <broonie@kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, Ian Rogers <irogers@google.com>, 
	Anders Roxell <anders.roxell@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=six76Bmc;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229
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

Hi Mark and Anders,
How do we reproduce issues mentioned in this week's meeting in regards
to building perf?

I just tried
$ make LLVM=3D1 -j72 defconfig
$ make LLVM=3D1 -j72 tools/perf

which seemed to build without error.  I do an instance of
-Wunused-function and -Wmissing-prototypes in pmu-events/jevents.c
though.

On Wed, Apr 7, 2021 at 2:55 PM <ndesaulniers@google.com> wrote:
>
> http://go/clang-built-linux-notes
> Meeting: Hangouts Meet
>
> April 7, 2021
>
> KCOV broken for CFI (Nick)
>
> Missing debug info, but __sanitizer_cov_trace_pc should probably also be =
__noinline.
> https://github.com/ClangBuiltLinux/linux/issues/1338
> Working on 2 fixes for LLVM.
>
> GCOV broken in clang-11+ (Nick)
>
> https://lore.kernel.org/lkml/20210407185456.41943-1-ndesaulniers@google.c=
om/
>
> Arm32 IAS patch (Jian)
>
> https://reviews.llvm.org/D98916
>
> Pahole patches
>
> https://lore.kernel.org/dwarves/YG3SYoNWqb8DlP61@kernel.org/
>
> RISC-V
>
> https://github.com/riscv/riscv-elf-psabi-doc/issues/183 R_RISCV_ALIGN
>
> Alignment issue in blk
>
> https://github.com/ClangBuiltLinux/linux/issues/1328
>
> Plumbers
>
> Submitted MC proposal for =E2=80=9CToolchains and Kernel MC=E2=80=9D with=
 Jose Marchesi from Oracle=E2=80=99s GCC team.
>
> Drop clang-10 support?
>
> Clang-12 maybe released next week?
> Can next debian still include clang-10 for kernel builds?
> Can tuxsuite fetch clang-10 from apt.llvm.org for now?
>
> CFI needs help testing
>
> V5: https://lore.kernel.org/lkml/20210401233216.2540591-1-samitolvanen@go=
ogle.com/
>
> Gcc implemented support for asm goto w/ outputs! W00t
>
> https://gcc.gnu.org/git/gitweb.cgi?p=3Dgcc.git;h=3De3b3b59683c1
>
> Compare_exchange
>
> https://godbolt.org/
> https://lore.kernel.org/lkml/YG2fQ1tGDIMhyIHe@hirez.programming.kicks-ass=
.net/
>
> Building perf with clang has some issues
>
>
> ________________________________
>
> Sent by http://go/sendnotes



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmWoLX-r09vuWDobkMjeTggf7dcdb1AhuPxmeE6z1yo1A%40mai=
l.gmail.com.
