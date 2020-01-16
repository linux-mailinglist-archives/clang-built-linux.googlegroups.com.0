Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBQOOQPYQKGQE7AYPOQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F29113FC4D
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 23:44:18 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id a190sf23622882ywe.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:44:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579214657; cv=pass;
        d=google.com; s=arc-20160816;
        b=pDUZ5cVMEZNXt6Mt5i1ZeFA9qbrwN2ZXfpvxJcQDcLUg5xviUS3X+BzC+zElXrh02I
         8MS4Qew6D4uuzXKGf4Iz++cyX9kBZQ+/r5iIMIgAT2bDZkwiA+j6jUWoZhGY/U7IOZEd
         t80ucMJtbWE7Zt/41s4iXlZL4W7rNEDCWIyN7Ghi5irmhpPKbOtkVsH8ysZgW5ntQLFC
         f3+XGcgHNGk7yju1s3It/3yJ7TE2fkxctaeT2+9iK5jLUsIOOJqwlk8hsI+s1DORPCsR
         23tkJQwqXrAFdvJPYV4FqDLADUuPLib6O1EEvelm4Uo2ZxFnCpHO/qbkqF3Hb0ElAR5R
         KdwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=u919+KfX88N7cw9dc+vDDoCRfhQ12lUGuqwS4s3yyyU=;
        b=gpzhNESZFv7gMYMxGrT8ST9g+cGAxVIHax1OFP6Gc1ukkh8vEdoHFz3y9d0ATYyAxe
         TMCXEgMABYozoCjePilSrtG/6dSRinHDDnrMMoC39gXvQLoJISpCagKW6tT+mkbBLqqJ
         zSuTzhnjwAUywJzJHb1Lja0R0XPlOZJ9fAG5TBFxuVWqU7Z2uElPo0aLZeXiVfFaci01
         1zObBKsMNUiwvFMWiJNtWW7EkbeHvJp2aqapBdsi5lQN7zqMXivuDtouffglR82DHQsi
         s0G6STLxeImW3pXnuMoBzSEkiwVwwnR7m2X+4fgmfy94cSCfjR7MAUPUOqGhH4abb+LS
         WmxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f68nTpVi;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u919+KfX88N7cw9dc+vDDoCRfhQ12lUGuqwS4s3yyyU=;
        b=Q9qRMQ/07qmb9Dp1teAgaYaa7Lc0Nel3j3KjBIr0JCWMBUVgQ6yywBNjWiweHsWd+d
         yF2QCjyjnpY04BXNkf+ovPvTY1Y1ntO+kAmRmmvjErxX1195AXxljSwqrjy9zuvdSa4C
         lIBtlQQuAg2I7eJspTH5Zw9BySgns2js3OlYHdbdtIKTI3r78L9TNov0r+ZyTd5A6mTe
         Z6xeb5Z/A8u6rEww4FjObMkEY77WgXJcEToBd3TgNI6cagSuvE0bJKHmIyLZ8E4EJfv+
         tnl4vnzakpzcDVfoavkNSWdboKIkN0yKAV6ZnOI4saHTD6rNpgbWlL98OfejZf2PBtgF
         LB4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u919+KfX88N7cw9dc+vDDoCRfhQ12lUGuqwS4s3yyyU=;
        b=KkeXebZmzs5UwwvKqMkJ0rttZoPElmCh0NnBhlWsmS/ixanpOkarQCPydVOMpNEWtq
         CV6oWrZ6L2pIZCnufITKaO8j+MtQTE8ckqi75sU2oOgT9FOEa04WGMtvV9Q8ZVPyA/We
         6/2iEHxVxPZFZ/J/Bxh7fE1kqrSh3U7wEe3SZjdFEAVdNxsQoEUsJHwBOEVGXNtUgNex
         cyZDVWLYJ6EkM8fhWyxzSJj17YLro4STmEYAoGPaiYIRmsrZt+/nlSn/G8YOikmBnfLs
         SXf4FXQE5z6IfTnXzi0lVEelKcRz96x3JGshaG6nvq2rZh9laq8vai9edNb2kIeRiHJH
         mpVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=u919+KfX88N7cw9dc+vDDoCRfhQ12lUGuqwS4s3yyyU=;
        b=s7+k39+7cr11GsryH8TtRpZH40kCCWT7fl7bvklVk71Eggv9l+WIeNXvXsprZG8xRU
         kPb/EfHNMo51ncFGZ+ko8QepKOmkicvyibGoWqsZWulklFT6rWfYMhRqTyLkFQwwS7lv
         +Z3FsMjuzxBT/epu4jzDezQiLT5qlBBCM7uu5G9ZI2AiXb+pJP0npJwdjqFUr3HUd9PA
         0OIAoEZ2AsYQXtORCWQQho8rNxOXaonK3nW+dCbgI1En+2O8QEyRa7tOX0D3JCO3PDOg
         8fps4R5V7eY/nS4XYg8pXEi9B/jOg/jzYlGiDJ9ZE6KP/xw+TkL1rJxtDGskXY2FpFes
         jh1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXcjnyqz3TTv0Xw81TNSqO3aS2UasfT9V+SflYMZnLrmu6clXsB
	r5JSU4sFGSioyTGVBHJV/nI=
X-Google-Smtp-Source: APXvYqy/PJ6J+1uTmhqa7MSmwvdclxuUqMk+z9KGhXaECtPlKL9MF+Zwf8f+RYva+rkC9G53yjJvJA==
X-Received: by 2002:a81:3785:: with SMTP id e127mr27749327ywa.188.1579214657609;
        Thu, 16 Jan 2020 14:44:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b319:: with SMTP id l25ls3796709ybj.4.gmail; Thu, 16 Jan
 2020 14:44:17 -0800 (PST)
X-Received: by 2002:a25:d886:: with SMTP id p128mr28150122ybg.457.1579214657305;
        Thu, 16 Jan 2020 14:44:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579214657; cv=none;
        d=google.com; s=arc-20160816;
        b=CgfaACtnJQOV6YI34FRXC86VWZXFMDn8JDTADWq91BWCwLrFEV9VaZVffnkxWNKLmY
         I8aHDK6HIqvN+7sTkmX9UJJT3pMnSXj5XP+ylcfzrOdMvDnw/hVnx8qkElAQEeNVwnRz
         /IkXOwrbA1RhWsbyIp/t2VOhvMRQwkR577g1ompZThWChLn3O3o96GYkQEHpFBhDRJkS
         iGyzas6VTP4/4qP82MZ20Zm0QXTKpftdO/dDmNEBvL3QUPHPYmy/rKaNa7e/w43FfI01
         IcHLr5asAO+3/v+yz8B3nqLe/Z8kCwh3BaSV8pezOWDumNHC9FmqUtrvIw0Z8Gmgl2KC
         1wsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Z40vm1f2Y9AUyQeVuDM7FK496qjba6pNnZApm+zKg8s=;
        b=ohQabvtBRotLfveX/4IBjmCKxrwoa49ZjYsS6p22Jn1iTtAzMzdCzMjLyCpFghoizY
         PSmJL79HyPRuWWzDr4ZqDl8s8NyV2fSfSZEBN0/zmQDP1bhLbYZWW42u8ybT4LLuodft
         weAzmT8/zwzATfyh4nyRjA3LAgBe4jYl9HWRtsuJwyWHs1H+9oVbyO65PYQibzwdM+d2
         Pl4Jx31pRt2OhH7sx6OMUxyifjP5h4B93iNAEpPACrDF+dZAq2OZIdtmxgSHz6D7ZCJc
         gNajkQMdlyWezBcT8/wGU56+XNOpyajI5TzhFuTfF0QXpuO4B+9X6XUQ2ov/lLrX2fqU
         oVng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f68nTpVi;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id n67si1302997ywd.3.2020.01.16.14.44.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 14:44:17 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id w47so20314634qtk.4
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 14:44:17 -0800 (PST)
X-Received: by 2002:ac8:4050:: with SMTP id j16mr4681494qtl.171.1579214656952;
 Thu, 16 Jan 2020 14:44:16 -0800 (PST)
MIME-Version: 1.0
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk> <157918094293.1357254.438435835284838644.stgit@toke.dk>
In-Reply-To: <157918094293.1357254.438435835284838644.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 16 Jan 2020 14:44:05 -0800
Message-ID: <CAEf4BzYm0aqfXW+dTak_4HiZ46AdQGdUf8ZXXJoacRc-eHTP7Q@mail.gmail.com>
Subject: Re: [PATCH bpf-next v3 10/11] tools/runqslower: Remove tools/lib/bpf
 from include path
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, 
	Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Jesper Dangaard Brouer <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, linux-rdma@vger.kernel.org, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=f68nTpVi;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Thu, Jan 16, 2020 at 5:23 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com> wrote:
>
> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>
> Since we are now consistently using the bpf/ prefix on #include directive=
s,
> we don't need to include tools/lib/bpf in the include path. Remove it to
> make sure we don't inadvertently introduce new includes without the prefi=
x.
>
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> ---

Acked-by: Andrii Nakryiko <andriin@fb.com>

>  tools/bpf/runqslower/Makefile |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefil=
e
> index c0512b830805..d474608159f5 100644
> --- a/tools/bpf/runqslower/Makefile
> +++ b/tools/bpf/runqslower/Makefile
> @@ -5,7 +5,7 @@ LLC :=3D llc
>  LLVM_STRIP :=3D llvm-strip
>  DEFAULT_BPFTOOL :=3D $(OUTPUT)/sbin/bpftool
>  BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
> -LIBBPF_INCLUDE :=3D -I$(abspath ../../lib) -I$(abspath ../../lib/bpf)
> +LIBBPF_INCLUDE :=3D -I$(abspath ../../lib)
>  LIBBPF_SRC :=3D $(abspath ../../lib/bpf)
>  CFLAGS :=3D -g -Wall
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzYm0aqfXW%2BdTak_4HiZ46AdQGdUf8ZXXJoacRc-eHTP7Q%40m=
ail.gmail.com.
