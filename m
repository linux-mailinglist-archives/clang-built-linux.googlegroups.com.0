Return-Path: <clang-built-linux+bncBCTYRDEG7MGBB5VHTDYQKGQEPRDFLZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBC514331D
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 21:56:23 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id o82sf837381ybc.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 12:56:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579553783; cv=pass;
        d=google.com; s=arc-20160816;
        b=HYVujr7fOSH5uERrmJkjaKds0Z39fYL0Z9mg5HYARinkQGJLMEXbDAOBxUvWJ3G3uH
         5dU77FPfQKGJ7sPfV6lmXnQv4OzI1tQ/hO6NRilUZ/SZ/92Ea+OxPuXf+zwYF+1J5Y+I
         VRTgitkWZUdKI5lYTXEyLkg1EpclNO201e4jnUPX1MB8lbZtu6/Q5AQMT/1tww6XKldQ
         qlgD3kT3gQPSGFNQf+KS+Np70M82OOjUOcMCmDRmUD5AD736N2RTwzEMoQGSHM/zwKYF
         YLE3MR1HljPHD9smItbqNIQN7899PhKmlUjoFX0BPxYm7vCBg6y/Q13+zkAtIsnZixHo
         BOkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=wp9zv8ej144DTGMQZCHJEXa3dNFiDDNcIrGe0L4d40Y=;
        b=ehoJzy3vzcG5ozd7QjaHKASrWbZSzDNFu0CHssc8Agdy9afDjaWYrgZXudWrnbEwGO
         PaK5hxcHgpdQEpcLtRFRB0kZbC9Z8TqqvT3mr8pFYtXRCbxLl0LFQ65xPaXI+pQX5ZOF
         y3I6qgLglUOsQxYw5DasX/HlejYfdKEh3efghKtP/kLKb9CuQYoM03NBt7vPWDPm0bds
         OYvcEMDQ8kfE7LHl68cr18Ay27bUr7chyyKorrPh+6T61YilmTJMiLUeghQbc3pKz/78
         TTl3+HWmJFslHUUlDMGOyF0CiHDGMfHorWT5IKS5Tvpkqfmw9xWUMpQ8cyF/N5TsHWMC
         FkLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qtbvV9o0;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wp9zv8ej144DTGMQZCHJEXa3dNFiDDNcIrGe0L4d40Y=;
        b=jwDinVEgNtAhNPuEXfklMOYEVxjMR3jod2YxfLVO/zejrwStZgjDTcMwrE3DMygWU4
         gkoCAJENSow/JLROCk88j8Tougv7qM6U8Z7iN7fnlGszIjA5y/yy0aiPgUuwDCc7yyIC
         idm4woWv6j2d+9uFoUNDqEEp2wCnWEghTCg1keievQ2xmuISGrBzMrsvboN3T0uSVYSW
         /kCB4SOpi7qJPzjR9CF6NPV+AzrljxbVqfH1QxeK5LKQ5Pybh1/6tJmfDgPHWjrVUPS7
         PXHBXh8qEXQk81G/A6fbGs0zXT0mWYSrV0oJuGpSqQiaYy1oHWuHOovgn79ynXvz8LWo
         oK6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wp9zv8ej144DTGMQZCHJEXa3dNFiDDNcIrGe0L4d40Y=;
        b=kfPitTHsMEVQOjmvmDujdmkTWd+K8/5nHJe3oseOXzbFyAxjo8nlmRuqyVGGZkt53e
         2OfQtquxmG9JHNgx54VssxOzNhFcDHpa2LyU0GpX1PTCdY4TfGcMlf4V7fYRksipciN2
         fXGR7juuPLvnGlgGEVlknwpvrTmkgXZCauCvQbqdPPqXRvvwKpzHpTGFBwAOumK8c4Bk
         Tl2HP0mQUDNglVV16GXj+ImXjaj4ObEGVemI4KpLnTplXu7H69EuogR9gk7+loqiLCx4
         R/dasNjRq6J5MdziXJsvNDyxURsAqsVX6Ui+FE0RGuQ9qfsYsIyHE1kpQKkVTEC0Kvvl
         3+Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wp9zv8ej144DTGMQZCHJEXa3dNFiDDNcIrGe0L4d40Y=;
        b=smREC+wYyKkdMSPaxwP7Y4WAxemMocm5R9EJBdOmb0SxEit9NsyiUw/FhBKW1ocgHy
         YzvWAPs9X2PT5UiA3Prjbed5CA1dYiJaDCotXLGscPvLqjbQ02KaQZU6dk8Dqenmp1Xt
         4Cvg2k0BLe0/Jpi0cUC0I8x0FWMYr9V+wsvIAL1v5doXRjxYQ9yIhJA/XhhGZihAZa/7
         EVtoPRLcVYXhAB9JV44BGTuppKnNlqhe57JHD/f/ri1bEODtNb3qaJNGFeziYJ2tDBVA
         mbGSrGVX7VsezSqPWxK1swfZvvYT3cyCRM3B6VJHrmz3MkhLuUfgJNdIemxjDuckzT6V
         H4jg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUqzS+p2kmAatBch8BNLrojmoaxjHvVDIuYG4CU0UObhNvNsf1+
	pZmuQkCHkKcxKiWNNkfTZXk=
X-Google-Smtp-Source: APXvYqyat92XNaEyc2atsa8MiHhGWLrxinz/rrZAXUl9TY8lfGKSQLgUml6qf5SkNxZiWy3W5teXbg==
X-Received: by 2002:a25:7cc1:: with SMTP id x184mr1274231ybc.69.1579553782772;
        Mon, 20 Jan 2020 12:56:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:dc43:: with SMTP id f64ls5524466ywe.2.gmail; Mon, 20 Jan
 2020 12:56:22 -0800 (PST)
X-Received: by 2002:a0d:e614:: with SMTP id p20mr794253ywe.5.1579553782347;
        Mon, 20 Jan 2020 12:56:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579553782; cv=none;
        d=google.com; s=arc-20160816;
        b=SBHZaHQ5bkH+wF/G0GOJd0xIrtIQ4flCA9NpkgGeIxMOIFfpkrhHkzGMj91/YskXmF
         O1PAbMnbgW6BpBnI4/jdq8ssta/Xzc4upbiAiGvp51KcnRfwU+IeIbKMGBPlKhlfScq5
         ESgHe3+CGiWBgXA8ob6hYGAbWV3ZyxqUl3eyqGAgZahGbL1F88UEPgjGOU7O28SiDO0V
         0+fGK0rJFNSovxan4eQTqeulkPbPWnAZZk7F21gfCTDWImnnxQUZ+1BGae6O+gJOd4GO
         z5mV9oyWcqplk+Uu19+kzgCgg9mc6POcYjKeanro0zRO2tY4ZDN8rmkk16rjFS2rCA43
         9Wsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=DmDOf0n1Uh/peGzEOmgfSb9HmQAqydm6Nl5bcqVlrmM=;
        b=ytHNVNHVYaGlGrL4qTajsLoxjRJFsblmr+InOrRFk86teGz+43NyXS3iu3jHuRChlP
         bjKn/Tf5NsaXsoG+BekkJ7/MDJ3ehZvsrgpWh6KB0zitwb5UandVcn91E+ZRv7qLHv81
         /+z7fi3WSu0G05rgs5nauBsyqPdkXCTOJ2QLCsx8rzLNZdsGBToK/4cbdTngFKyWWurz
         62RhbV8eIjPVYGBJdikKjOqJ8USl0yZZSgjrhU9Mc/uVkXir0KzCPneMLnWYC09ZO2ns
         m01Xfd3RTrXfpWxm/7PDX3hEKP9YqCWO3cEZ7lpl/4j5prQIriKFtteMyb5rp4cLD2Jv
         ZHog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qtbvV9o0;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id s131si1113328ybc.0.2020.01.20.12.56.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jan 2020 12:56:22 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id w47so903697qtk.4
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 12:56:22 -0800 (PST)
X-Received: by 2002:ac8:4050:: with SMTP id j16mr1212310qtl.171.1579553781967;
 Mon, 20 Jan 2020 12:56:21 -0800 (PST)
MIME-Version: 1.0
References: <157952560001.1683545.16757917515390545122.stgit@toke.dk> <157952560237.1683545.17771785178857224877.stgit@toke.dk>
In-Reply-To: <157952560237.1683545.17771785178857224877.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 20 Jan 2020 12:56:10 -0800
Message-ID: <CAEf4BzZWahGh5ToWViFHRHQLpii-Xxc_f=xnbpuuLwXbvcDwqQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next v5 02/11] tools/bpf/runqslower: Fix override
 option for VMLINUX_BTF
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
 header.i=@gmail.com header.s=20161025 header.b=qtbvV9o0;       spf=pass
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

On Mon, Jan 20, 2020 at 5:08 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com> wrote:
>
> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>
> The runqslower tool refuses to build without a file to read vmlinux BTF
> from. The build fails with an error message to override the location by
> setting the VMLINUX_BTF variable if autodetection fails. However, the
> Makefile doesn't actually work with that override - the error message is
> still emitted.
>
> Fix this by including the value of VMLINUX_BTF in the expansion, and only
> emitting the error message if the *result* is empty. Also permit running
> 'make clean' even though no VMLINUX_BTF is set.
>
> Fixes: 9c01546d26d2 ("tools/bpf: Add runqslower tool to tools/bpf")
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> ---

Thanks!

Acked-by: Andrii Nakryiko <andriin@fb.com>

[...]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzZWahGh5ToWViFHRHQLpii-Xxc_f%3DxnbpuuLwXbvcDwqQ%40m=
ail.gmail.com.
