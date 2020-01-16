Return-Path: <clang-built-linux+bncBCTYRDEG7MGBB7VXQPYQKGQETHJ5NLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id ED03013FBBF
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 22:56:15 +0100 (CET)
Received: by mail-yw1-xc39.google.com with SMTP id c68sf23565912ywa.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 13:56:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579211775; cv=pass;
        d=google.com; s=arc-20160816;
        b=oWoDYK54tA6AVuOltQ664Zpebb5NdX4ln2xlMufhPrIBASBqO4Nuo5q+75Hh70Krm4
         cw+bgkt3AG+CtOjQbpNl54u4qlvGCCKpzYhsqhegAxf45OvFG663vJV1NsKqXgR/6y7k
         6yFmug2kz79gqj90ClgKX5BnkfVjbZGM5cSCTGAxrqV4dxFvdc8H698VCC8w7TMiuJjF
         IeuVqAQuJGz6rLj3cUgs8dazoOQzvdQo9GDijuMONmxlZt4jFciw5QTftVrFzAas0+A+
         T1DYSwwQqJySZd5BynweQfetzg8X3Em+t7aPF0IZQZx3JAs7arXWLkjkr96GG38SMx7s
         QgZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=S/VAUntFGjhgKx4DBO27T39r4NzIf9FGMkwxwkfrw2g=;
        b=oNsOEHV0MYePNKkwflzTAkD2eQl+4GjD7kbNOKVAxFC9UjqLdTifT5AJu2FIpowNRP
         8N6rfShIfePXhWKeJQ+pnM5z9r+s7ZEZYGySopSLbTmzFJG2QRommuU7CJaj+swqNavW
         S1sI4tjCAT4vLLux83XrNy1wDHkUrVNiCJqHghH6FrnL0m2w5pLtlLI7XPa2C4ZvprIW
         +MsCdqOzcFfiDKyzoJssdEOUgu2S3NpC5hMP5jQjTKfw8//6O8ajmUofvqYR2w7E7Yrf
         zr/2TkCP6rjWgDPbutkP8ggM7Jih91OR+mSGxVVI41LN/Ub0TCUCvyu18jLYWfVdZyZ1
         GUjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cJQqdoXQ;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S/VAUntFGjhgKx4DBO27T39r4NzIf9FGMkwxwkfrw2g=;
        b=XjOrEYqLAXXIyKgOiU8jxuulxSj3eR2fl7dCiRk+4PaMM/51Yxv1wpVcqvQyqrAZmi
         TE9jnEwpr0YWJ6/9QtSAQRi6X86IPm/BwGD32pkBtGfgHeMKNbKH9EQUqGD+kOc+7fBw
         rbzXbaMz1UOcetOyjY0y6FAzGRk21vdJXfvJ6+4HD6DFp25jwVCyUeswkqOJP1Q0rv0H
         GJTCOCo+NtxUiG4LVY7wt1+Qf9CJF3zO+3MbcSiDwFC1F2xTrQUdI3CFdzSpl0BWLp+W
         JJiRP7yS91R/0ZDRswuxOjBdbuP0Vgo7XT5pbLlqFMNAJY5s0/noZEWL5pUJI7cUylkb
         hSeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S/VAUntFGjhgKx4DBO27T39r4NzIf9FGMkwxwkfrw2g=;
        b=C2y6JVdkDYST6w2qXmk+kI4Xs6VGms5mX50ux6u6H4Z6/OyCYdvlK3A0DIwAtmOD/p
         scjbc8B0hLuNIWA/WofUekF4DjHfmduibCcI2aOOtUPaLbI+pEuNwoMYXSl72vq35MNE
         9dMm0ALPwqMCwC+5QMMaqn0T0ntvKofmLWiLH9erlfFRsn/qKMsSVZvZL8l00J5TvU6E
         L52xq1hx7j+J3dEz8mPn4/5dv6vgencSi7HJf7RdupEBoHN610ET1mVJEwPQQGjd7CHK
         N5wteMQdnCSj00ECvNwxhEeoGdu71mF+Qyz9hYCbVWUTTE9qKUNIZL1tYItm6GNtPKQ/
         OvVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S/VAUntFGjhgKx4DBO27T39r4NzIf9FGMkwxwkfrw2g=;
        b=ZZrBc6GaRRNO1QhqFpVbnvnsZ+3TATMmIPSkNYuCzzckGT6CB0yGKvTB7mdueRj7rS
         ceaiaBsC8CVAxnRbMYb9muHkjCzREMGqQutCaHTNTBXwmOSbNX89FS7LYzSOPzjU0a+Z
         wSVAmoYJIHOnEHKG02M1gMk366rQYE+KROqh9knMaatdHUP1Eg/dXsgbrKrGmgqH+Y+u
         1ttYbLjM9CMqJkH7QD41R7ptYLsVfIEVMWXz/FSvL0JHK6pMKRUMbDdWf3WcgcVtfCjM
         8HzTRs3eT1sfjWpjrw4fjpkqxBLDzdY48Fj11h3oBjmPhPCcVyS/R3gdlj68uXnqTIEQ
         HwqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUkIXOfK0/ImYGUlgSPAQqrD6oyiSvJs0K0ZDRlw1CRiqGvOg6S
	6+L4pH9w6HmCknydtkT4+08=
X-Google-Smtp-Source: APXvYqxXgu7dPvWwlEnGX0kcUlyJa7NhL4yUoGNCEjBx31rTQ7yyNZu618faFomaiuT3tsRgqsqLVQ==
X-Received: by 2002:a25:8508:: with SMTP id w8mr26959760ybk.451.1579211774975;
        Thu, 16 Jan 2020 13:56:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:cfc1:: with SMTP id r184ls3801057ywd.9.gmail; Thu, 16
 Jan 2020 13:56:14 -0800 (PST)
X-Received: by 2002:a0d:d247:: with SMTP id u68mr28578164ywd.1.1579211774523;
        Thu, 16 Jan 2020 13:56:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579211774; cv=none;
        d=google.com; s=arc-20160816;
        b=ZZLpt6tYEMbQUGLRespg/NgjKR2+1bzvZX61Z4dr2SxclkuKvjdpIG8a7sQshvSt4F
         lNGIARaAXkQhOkwcbrAp/fVTwh5HOnR2YCr57cXCdlVMgKPUrZ+MT2iAxivkGNvXLH8n
         W3myP4nu2ps+Vpc/N8CzEFXBj7EP1E8okFMkZY4caDo7rJshRj26d9aV0yUuMqwZTiFD
         NKyC3n1bUkbg1hG3ABYPgwo0jU1TAbmH9G19gqZrwX0Iylke2IvKS0tHhDIdPnCCp+mZ
         wYF7pbgRFW9vnBfbSKNwxcvYeqr/jY+++clqXzfAHwL7eQ/76j7eyicUG5VHDOMZ+0E+
         teqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=uYKEJj/GMP8sSDQFNnAjGhqY9XFCpZEuY6M+a4dSQeU=;
        b=NXEstolUET4PicyOK4vQJcLZX8nLUFrZAvogZfEnJnoRAylBk58I63vcDiJ+XRQxAf
         AtZALnEgWctrVni6zY+RP9pjM9hLqO99TBFRcXmPaKm0oLVraFweISlOF3O9ijHZ6rMu
         quxCQQuYKahjZIdXmE+Ebdz5T8NnUOO0hgEqCdAwARFfvmQ91MZ7rb+zHkJSKetse3j3
         kxu7QycfFPYxKBBSzsnRIJA+Ust6H4i3YBAb1hbIqNLwKDlZkyIptyo97xI7JlzKJpd8
         3LdCOJ96UipYwzR6uqbLRrH5K3T6OhvgnUZPNbq9D3qC4gSOlewQpSCZvDVIYLj3zYUd
         dT0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cJQqdoXQ;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id j7si1092138ywc.2.2020.01.16.13.56.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 13:56:14 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id dp13so9827543qvb.7
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 13:56:14 -0800 (PST)
X-Received: by 2002:ad4:54d3:: with SMTP id j19mr4651801qvx.247.1579211774124;
 Thu, 16 Jan 2020 13:56:14 -0800 (PST)
MIME-Version: 1.0
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk> <157918093613.1357254.10230277763921623892.stgit@toke.dk>
In-Reply-To: <157918093613.1357254.10230277763921623892.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 16 Jan 2020 13:56:03 -0800
Message-ID: <CAEf4BzbJZ7JUyr8p3YKX-Rrth_B7OMbih50xxyt_YNBd--107w@mail.gmail.com>
Subject: Re: [PATCH bpf-next v3 04/11] tools/runqslower: Use consistent
 include paths for libbpf
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
 header.i=@gmail.com header.s=20161025 header.b=cJQqdoXQ;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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
> Fix the runqslower tool to include libbpf header files with the bpf/
> prefix, to be consistent with external users of the library. Also ensure
> that all includes of exported libbpf header files (those that are exporte=
d
> on 'make install' of the library) use bracketed includes instead of quote=
d.
>
> To not break the build, keep the old include path until everything has be=
en
> changed to the new one; a subsequent patch will remove that.
>
> Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are taken f=
rom selftests dir")
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> ---
>  tools/bpf/runqslower/Makefile         |    5 +++--
>  tools/bpf/runqslower/runqslower.bpf.c |    2 +-
>  tools/bpf/runqslower/runqslower.c     |    4 ++--
>  3 files changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/tools/bpf/runqslower/Makefile b/tools/bpf/runqslower/Makefil=
e
> index 89fb7cd30f1a..c0512b830805 100644
> --- a/tools/bpf/runqslower/Makefile
> +++ b/tools/bpf/runqslower/Makefile
> @@ -5,6 +5,7 @@ LLC :=3D llc
>  LLVM_STRIP :=3D llvm-strip
>  DEFAULT_BPFTOOL :=3D $(OUTPUT)/sbin/bpftool
>  BPFTOOL ?=3D $(DEFAULT_BPFTOOL)
> +LIBBPF_INCLUDE :=3D -I$(abspath ../../lib) -I$(abspath ../../lib/bpf)

I'd probably put all the -I's into single INCLUDES var and include
that one instead of mixing -I$(OUTPUT) and $(LIBBPF_INCLUDE), but this
works too.

Acked-by: Andrii Nakryiko <andriin@fb.com>

>  LIBBPF_SRC :=3D $(abspath ../../lib/bpf)
>  CFLAGS :=3D -g -Wall
>

[...]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzbJZ7JUyr8p3YKX-Rrth_B7OMbih50xxyt_YNBd--107w%40mai=
l.gmail.com.
