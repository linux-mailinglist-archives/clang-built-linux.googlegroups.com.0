Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBKWOQPYQKGQEXGMXYCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA1513FC4C
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 23:43:55 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id v2sf13167091pgv.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:43:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579214634; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bo3SIG3YAgelueqGZ/aToRMDSloYzBYYbOcxTUVRF5YwW5I1k7cmEjS6LxawhFKmSC
         LHQS6wyuwsfKFT3zbWVfnTFRvqqjUmcSk/hTxr9v+rHIzWFY/TgtOzmltd7WWqfHFMbL
         JxfYIZomcu2gdndGbe32AhfF7UIMBJccUxyTzBnSXG3rqCLXkLjdI1vmxtuugjzpoxD8
         By/xtBYy91aFr9XE81qScYOkkM2+ghM9mmTJ8vrSJpC2jc5Ic1WjuRPsUca7cGTjR70L
         vhh1pJR0Zk3wFtri42ZB5rtwAIrUWkDnT7erJ7615Meolf9Ht+Tv8Pwhxmaf3dmjRAml
         g0YA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=+6RxjZbrbrqIYyBLtwLTUx4gsQYWdA/EhB0B4wJU0Yo=;
        b=USLdcSaTruqAIy20mF6lkGMNGzOzwl/a12W11VMCaqcrEotTZNQG50t+sz0mFPTjWA
         6N6iA5Sq/fGKl5RibDSmrVJEmMzBBDazr/1qZcMVj0Fk9m/wp8w8c2tXXMkXMo8Ca72V
         W8A7Uf/4CFsoQPSk8wV7DqxZUBoGr1U4x6OT/azcfdznqirgPK5G50ZEZhpR28O1++qu
         wcSd86B6bGTpg5hXDeKOk0nMHSu78fWt12ayHbM/r6uMBxab4VXTU1lf3Lq3KXll+C+8
         CUlRO5b8exlnaZKG01uthcAHdymgwhffrvw9fausubF+k3pNiMsX1cVoZcU4SFvQ1Vx1
         KNgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n2OjqhSJ;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+6RxjZbrbrqIYyBLtwLTUx4gsQYWdA/EhB0B4wJU0Yo=;
        b=g++v6JZG7ypu7mGKusYQxOgwJOfsXzSgz6g/v30sZIzGUiQb7CqNOqDtw/GnAP59Bg
         cyvp9b+gWiIKZFM9jYu0qfwWtznYTDLCRvF/HuPoT2Xtixr9ivLUeGf/VgVOOcl/i+3q
         aV/ydZ1WpGOIrMIhBEkYN7NhaAuJ1ludFndAouAy3suI5mWVPEgQvrDIXOUEeeRCKRbu
         BsPF7xaMy4boAtioNfKMk/9/ab5XyGmpnYtY3lork4IK48YcvWFV7n6NeDdLJFezM8ug
         wy1R3/8hStcd+xL/2nDBgYdFRt4/fmZy9erZ5Acy5mXF2BiJL+1SJ7GZK2/qwc1UaBFH
         GUvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+6RxjZbrbrqIYyBLtwLTUx4gsQYWdA/EhB0B4wJU0Yo=;
        b=f1GewDP4LVAfPdJWKy4w8gKjFP1n8S8n5UYMMl94Elm1am/ys51jZbJ6tmW2pWRi3Q
         RepnwzGzGlDvxio92Auy6sTG+EnuqpWJ5fp4/US2qUSUGHTtsURW2yGd40Lt/HdbvETx
         ZEZt37rkpw0qgTHNKW0Cl3D2fJf+R1iAg6qW7M5TUmZ1yZOqat/JakT1HR26v5tGkClx
         Dce7ExnnlgjD3/7SCPI+qSecEChtQhxTApNxVSb9t9SY0QUpfgsgQwC8yHK8SdWe5E57
         bvLW02yRpz8YM4G5ZsMlNsGMI3ullzWRY1AUlfqkGMH1dPeuIidWYA3pdBxelPakupyK
         FKqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+6RxjZbrbrqIYyBLtwLTUx4gsQYWdA/EhB0B4wJU0Yo=;
        b=bHrlnglNNRpozNR02xNJK6HHb6MHitmMnyRou46GfeFpdQsiKH/rus1pG4X3ITtOqU
         olBtdXy7Epshxr5vmwrAZma8x9tHL/2Of9ntHtOU0oA5EsiI9KIeK0ASVX/zjgOR0YHU
         7IX1l6xYBp1SlU24zauECx8ISHiloJ1VemCoxKuQIH9b1sLW2hQsaaS8K8hibYjY8F+Q
         /iLB+RbnpF6pZA0vYxbhUj4sbkpzIvCqPeGttJfk9Sb+CfSOXigsZtM5sue3iOy0J08V
         ZQsrfpXh6YnrneTgykrctQCEV7eoer8NpiBUsmZuY8qNo3l2LcrV90m+1H5xbnpOV2H8
         gbJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUxkGqw9TovGzQ5+rGaUV/Glr4Vv+hFW4XHnPopMoMsq0Nw2AaA
	UPc3PjtiH34EYzg0fMIwqXQ=
X-Google-Smtp-Source: APXvYqySCgl5ON65R4U7d99VMdJykyDVARsHyinA7++D7H7F9eUbqjCFCy/ngI7aO9smTQMGRFutAA==
X-Received: by 2002:a17:90a:330c:: with SMTP id m12mr1939647pjb.18.1579214634426;
        Thu, 16 Jan 2020 14:43:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:cc:: with SMTP id e12ls7117324pfj.6.gmail; Thu, 16
 Jan 2020 14:43:54 -0800 (PST)
X-Received: by 2002:aa7:8749:: with SMTP id g9mr15805091pfo.40.1579214634082;
        Thu, 16 Jan 2020 14:43:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579214634; cv=none;
        d=google.com; s=arc-20160816;
        b=sA3zyeAXnQWVwPDTWwP98/uxkEyYBs2JaMQYLSzU2rQud+aazdrQLiDrVJqLvAzpy2
         YDM7QB+qm0p2As77MBOWOSqifWSsNipp9M+a6FSyXihUmpk7e4GWC4S8mklnb/g9Wj09
         cB1Dct2hOl1Xt+mwBKPNZzf9i2UTRRWBdr5vSUgymCl5nkPUPW+uK5+3yybdV4IkGU05
         +zuDYqVdGgCLNVmHU7AlbV7R5qGc3EDuCTcUc/PE1hE3H/N8K6uVWo/GoQavRbK2Ty9M
         DWF0cFVa7RlwY/HfbtH28VoJH7Wp/ZZRGcqT0wQhAxXpri40UAreR4/MaJopmdlIHq6I
         JajQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6V4rDJ8GQ9BDhz/SQaLpqohATNzavITKDId73kmv48o=;
        b=d3WnYjIdKLWR+grYDACxC5IXDV0AkNzjwGIIF5MYBocLnFYHVKSqPyD2JaAUoKe+dG
         MZWHMH3CQhuuvSgylTdd9pZ4/H0STQlqOoXL1qfJRCJ/toGuOWur+QLJoxolj+zYBWPA
         83qhu3t9KXo5lqj1lDSd/CjT+Viwx40CuTg6s2QHata7MesKS06RTXXCY3AkTgZi3sV5
         Gpz/2zvo10I7w316yo5KcyDSG4fYlVB+JLvEfSWXx7v7DkbkMEYIEmI4ed0YtewQOM82
         l+nEJAYNSTYDIl0qENmhojhzFULlSFCffvyurRAgLp+loaM6RHy3xHS6UkDPH4mj7fcD
         mDTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n2OjqhSJ;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id h2si621564pju.2.2020.01.16.14.43.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 14:43:54 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id e25so8989398qtr.13
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 14:43:54 -0800 (PST)
X-Received: by 2002:ac8:140c:: with SMTP id k12mr4780186qtj.117.1579214633217;
 Thu, 16 Jan 2020 14:43:53 -0800 (PST)
MIME-Version: 1.0
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk> <157918094400.1357254.5646603555325507261.stgit@toke.dk>
In-Reply-To: <157918094400.1357254.5646603555325507261.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 16 Jan 2020 14:43:42 -0800
Message-ID: <CAEf4BzbckO_J=kYQD0MnxD+k-APYvxth_ARuEenyAx73+LhtKw@mail.gmail.com>
Subject: Re: [PATCH bpf-next v3 11/11] libbpf: Fix include of bpf_helpers.h
 when libbpf is installed on system
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
 header.i=@gmail.com header.s=20161025 header.b=n2OjqhSJ;       spf=pass
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

On Thu, Jan 16, 2020 at 5:23 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com> wrote:
>
> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>
> The change to use angled includes for bpf_helper_defs.h breaks compilatio=
n
> against libbpf when it is installed in the include path, since the file i=
s
> installed in the bpf/ subdirectory of $INCLUDE_PATH. Since we've now fixe=
d
> the selftest Makefile to not require this anymore, revert back to
> double-quoted include so bpf_helpers.h works regardless of include path.
>
> Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are taken f=
rom selftests dir")
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> ---

Acked-by: Andrii Nakryiko <andriin@fb.com>

>  tools/lib/bpf/bpf_helpers.h |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tools/lib/bpf/bpf_helpers.h b/tools/lib/bpf/bpf_helpers.h
> index 050bb7bf5be6..f69cc208778a 100644
> --- a/tools/lib/bpf/bpf_helpers.h
> +++ b/tools/lib/bpf/bpf_helpers.h
> @@ -2,7 +2,7 @@
>  #ifndef __BPF_HELPERS__
>  #define __BPF_HELPERS__
>
> -#include <bpf_helper_defs.h>
> +#include "bpf_helper_defs.h"
>
>  #define __uint(name, val) int (*name)[val]
>  #define __type(name, val) typeof(val) *name
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzbckO_J%3DkYQD0MnxD%2Bk-APYvxth_ARuEenyAx73%2BLhtKw=
%40mail.gmail.com.
