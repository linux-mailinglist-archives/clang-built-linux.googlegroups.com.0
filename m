Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBWVYQPYQKGQE63XRXSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D7F13FBC6
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 22:57:49 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id e7sf13688219iog.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 13:57:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579211868; cv=pass;
        d=google.com; s=arc-20160816;
        b=X2nB3HzTabb68wQP6QkpR/u/gc+l3nqYvstMond/rhy71R+giR8cB0fxyjTlhwvKzd
         v2OI48P6skpPKaa9Pj2OzGiSdPZ0W9NxXrr41BK+EbzRCPnWSWDVELOhSW1Y62cwGfDb
         qoPvPRKTN/zfR15lOtpF668el4be2pW7yaxwU7hhC414YCXkJPFQwY4Y1JnbVv0rGj6+
         PeitV+KClO753KhwThJ+Pouhf3B/T1dZFCeNCx0180gsW9z2i2jzR5/RofNf1/+6ESwB
         AjYwjLMN65Gl02qutwZ/iyBTnjWUZGSPKEUuMzBP+hcNat+MQL83OhKklI+9JxxQWsd7
         bJQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=zxH+QTI1gdDXjyEkC6wB+hhi6KH4gv9KyCWuAFrDwC0=;
        b=LRo0ae/BaTeZWoksq2kEnLt539fHKfbTCtExN8Cwd2uADkjW9uYO7Z1jFuwPqPmqXh
         9Wf6Jox9xKXRsSq+Iew0K0jxIncK7rpOLZoZtZIBNfEzAl+rFm5KevJBJnN3zvmRwAG7
         7j4n1pkMdEri7e7KkIM3XioTRNsEkwxXPfmn8ww8oxUv1CDEi7aCi4l1rX8FXBsrLZfr
         hcwF5mFdPOKXdh2uA4I6GbEUXSbUsAi4QnqR7ojNxTftuAGTyKSBj3X6CM/SOkduiG7j
         Upd+97GcU7QVWv9gi/Hq1K6Ysownm90h7xnkcvRAOlLmVaW5eS1ccxHoZTPsldLcNt7t
         Sotw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rpyy3YyC;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zxH+QTI1gdDXjyEkC6wB+hhi6KH4gv9KyCWuAFrDwC0=;
        b=QkjGRxYRtbUIHRRd+HSzHOPHtJmHKzPa3X2o6VwVzLMarYnrrGK7HnaQAPEjbLKFsf
         Yv0oJJoxaLBfY1SMWGHIuC05RfT+t+hAlJ2ko0fi37UjycGotPheOYHqRAhSRDFZHnas
         PUId1/bHfV+LrLArgPC5FP93t7YaQlWI6aBCuz/OtZcLO8XJM60an8jX7asYSD/xdBnV
         fpq5rqjv3EJllGmnlbvHdwtTAQiRj7uJ0axXmfZWp3PS7v45PWnWosTlJJmBdpYgwhfZ
         YBykQxtxsv+i5X3ir7Gkmpe0C8ViEsJi07LXXPhSMNF1VV4/rOnl2mWXGHZsPl+otHVu
         YVbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zxH+QTI1gdDXjyEkC6wB+hhi6KH4gv9KyCWuAFrDwC0=;
        b=vAn1hTXYYUcsvyvm+qNGwTb8P/NSpWBlZp6REbjxblV8DCFrJVoyaGWUJ4a+hcLQ7W
         mzebp+SIMunhTo2gTT+k9kSlWt2BZmuI68V+Dfkl29KHt9m45V8nN/w36/oy1V7fftyz
         Aa9v15ukpKgRkIAbGEnTVquP+zHGvYYYe5M0TOjIoDO9OOFHurtdNH2SHFFrIii3dxZ+
         eMnL4su6FJ8tlAhKSypPFeVqlRqtWBIZYOqsF0Yk0lID9rjJfVMIm+ve7+k3EmF4jkAQ
         IQ/4rucIWwvKBwXVAIPhZ9uoETA5kT4t8zdrVPTYJ4k9U4dFCZIKgiFlKnfVdQee95Gr
         W0oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zxH+QTI1gdDXjyEkC6wB+hhi6KH4gv9KyCWuAFrDwC0=;
        b=g3r4W4YglCeQbygaNw+nNiy1uVxMwyDPqAQtlHFFmekyfMX4MDFlYkYec4B/zcQjUj
         UUylLKb0b5WZU56u0inORIji6S3PCEQESgMsMQU8DTyO+nmI05R/zJJrTPBmQr7zHzr7
         vqdlqcZpZQzXG8kOWOfj6sejZpttz0pst//IZ+f7IDuYKIXfHRlWn8/Dfy0l7Rlgy9zO
         Tpa7F8foX9mIMqCEp+cum3gmpJSIvCvOZpLFf3thMx7X7F99TEN3cwpPDsYapaaCPeKd
         gnXq7S0YwrV5JpZ85iyl/kSbb8tT+pEG6brtlmvegl/8xC7r5lXH1W2+OCbYCn+txPkB
         OUGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUJR5n3b53LqB+yA3jpa+SSn83omClJlL4FF/YsRZaH+/+idIdV
	EhXhKsLRFS2EMF9BEDBWd/Q=
X-Google-Smtp-Source: APXvYqzkQg0qJ0UquqH0bYMXhenostqayEVTkoCvl2YDO5IxFObqWIfb/kbAAXecBU0GiNJQHmEUaA==
X-Received: by 2002:a02:c6d5:: with SMTP id r21mr30262920jan.129.1579211866951;
        Thu, 16 Jan 2020 13:57:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5c56:: with SMTP id q83ls4201026ilb.0.gmail; Thu, 16 Jan
 2020 13:57:46 -0800 (PST)
X-Received: by 2002:a92:1d11:: with SMTP id d17mr416105ild.86.1579211866546;
        Thu, 16 Jan 2020 13:57:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579211866; cv=none;
        d=google.com; s=arc-20160816;
        b=UHJ6f2pFxOtAiJ7cbP5atCYJc8YpuJYQ33lh+biVBPQN15P39xI6yRPRTSGjhSJfnM
         2birkz/p6LpL8FsIheUvr9IrXXs0VwEZrrzCB4X+hOR34pt2QhWQkcyiE2Q35uHVLAFo
         SzN1Em75dK0YYYoYvbIjS5hRigGt+YDOZiBWfshD9loJGY9irYvQdsMHNqx16ycVXMeV
         DckBK0RcCtzS2v2+rIrYqDu/d7gDfeE87kw6z+wSVgnBnYsjyXv1gkyoIyu0TO8Srlcx
         ewY4azbGBjUJXwtGWc6/nCyaXa4zHvc25Nqvu0M1XrhY8AT+U8CxdJYxKzFYssaijIZ1
         oS1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=BKup+mN+yNw5E+RKZ+Bk6trS4fw29oa/jBU1SsMkNjo=;
        b=eVggJVWKZn4Pyh/0Dqmv3PGS0V3aWochry8nbfkHsR9NEZD0Zdp0TNVU+2eRE9xB0U
         HU8BrP2wL+e4uK+QAF44p2dRX7tOE/G5C3DUUMfuR2J8AUOhJbh/4CQU0xC9xedaFSx0
         7q7h0Ag/dhw2uxWLAEKyC34AMVuEmSxmW2SBu9yLtXxyaN9LJoKMptCwZ6s2dOwNnbsg
         j6ujAKsOIj8XahXESRX6wIGNkUj8WVKE2ndeD51XfrS/Ll2NJVD4Y5mIT38f7gjG3T84
         oGA+Y5uFJmK4/jYunpLjLw+areDkvRiB0BqTHu4MwQjqHlc72U6sQXhuokATmEYkuQvp
         e13g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rpyy3YyC;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id k9si1101976ili.4.2020.01.16.13.57.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 13:57:46 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id w8so5812844qts.11
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 13:57:46 -0800 (PST)
X-Received: by 2002:ac8:4050:: with SMTP id j16mr4515795qtl.171.1579211866008;
 Thu, 16 Jan 2020 13:57:46 -0800 (PST)
MIME-Version: 1.0
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk> <157918093723.1357254.4296174077488807255.stgit@toke.dk>
In-Reply-To: <157918093723.1357254.4296174077488807255.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 16 Jan 2020 13:57:34 -0800
Message-ID: <CAEf4BzbA6TZHvQ-7YoHbf1wNn3OcpTEgUMh6uzwJnGOX0yDSDg@mail.gmail.com>
Subject: Re: [PATCH bpf-next v3 05/11] selftests: Use consistent include paths
 for libbpf
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
 header.i=@gmail.com header.s=20161025 header.b=rpyy3YyC;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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
> Fix all selftests to include libbpf header files with the bpf/ prefix, to
> be consistent with external users of the library. Also ensure that all
> includes of exported libbpf header files (those that are exported on 'mak=
e
> install' of the library) use bracketed includes instead of quoted.
>
> To not break the build, keep the old include path until everything has be=
en
> changed to the new one; a subsequent patch will remove that.
>
> Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are taken f=
rom selftests dir")
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> ---

Acked-by: Andrii Nakryiko <andriin@fb.com>

[...]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzbA6TZHvQ-7YoHbf1wNn3OcpTEgUMh6uzwJnGOX0yDSDg%40mai=
l.gmail.com.
