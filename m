Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBHXF7TYAKGQEJXJ3EMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FF413C820
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 16:41:19 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id i123sf7279256vkg.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 07:41:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579102878; cv=pass;
        d=google.com; s=arc-20160816;
        b=llYrD6uR+jQG7hKyfX4/EZ72xHMVmn3L1+7V9ov6ZURBTr8mhBdHj4ycdklZKlqD78
         nUohI1EOqhDM1A63IsAIEJvEtVl8T+4FSK7ZC4t4RJNAM90+nyKhfuSacvsVnhcvQSE3
         Oe8WTKUuHoy/hQwnQLe4i31FNtGRu2+ANvtf1cp7eqQZpadRsjOWM+oERBQsxpKT1DdZ
         rfAqcUlMNQHcxTFsl1+U2aImqvBABEA02Qgare4ozaGYbUvU3GdP8Q+LKV7652WYp6CH
         jyjjwNk/8eu2OEL5fh2ehVideIM3LxC94EAllDhS6Lp4rIAFfPs22RcMq01aRTquiat1
         cQVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=+z3ih8le8VNBVd+WSSzeMjavFiDd/UnCFa/q5zmb/Uo=;
        b=DBFcYqAtRKHNEaMZivRQgTU9seiJt3lc+x7NTqPHf65fP9KZHqOz0l3bbzj37+Ldyp
         n52d7g77EDedejlKFGJGMyTehZ1TYvTEh0Cuu6hRB01EjcL3p13L+yOkGKKY1YDVVczW
         CwnvVwWCru9iHO3CsutS97G/GnqRdQRajZvSXSHYEKqfgf+la4qRtZ8f4LUPD/uEX3Ci
         tz4KvVjyFMX4G7V0r8gFHsBZfE4W7GCqfSfvKYvNnBWWXS/NJqcjtctyuw7u3fKMD25c
         d6NyOYRMy87dmaXr6PrtoWRhxbHh6PM79PaXPkoUCn4OjZhNBE+0voZ2xnl1ZMeYi0c8
         HnHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=S0D3TRjN;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+z3ih8le8VNBVd+WSSzeMjavFiDd/UnCFa/q5zmb/Uo=;
        b=kNdysEaIdP5uldrw58k5QDDI6qb74xDinOE6FrFjLkeZKjPJF85t4rPas20iut+Guq
         UcNasBLfw34euscpKDvPD7r107nJzgD6QC26y1o+X/x+f8MnW+d895iqGIIFiYNoNrt+
         +u8SPE22wUgEVAQVHa4GGslI1p1/vCMQU2gXDstp1SqSNMZS5D/vlKRRaayGJmqJDrsO
         We0Rk7OzAEg90plGv2Dafbvc3gSHGh4an6/AnBAa1L3akYYQef+SN/8ePFP6/EvUg/a3
         X/EU+Sdwe0OYIg8bM7/5iOneTAZyhkYwmPIaSe7SrrnGSETX3P0RncEzTettFrRz7Xe0
         ZuZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+z3ih8le8VNBVd+WSSzeMjavFiDd/UnCFa/q5zmb/Uo=;
        b=Ni3vkP3EKKd7bFi4xoQp58wluw/Yy8am9/q4J2PQKDuuMkOup6XTpkp6claak19uvT
         i32nz4QUox2TcmL8BFy1c4CgWL4igUgJ5JfOLw7WXDqicU1RtRjPp1w2B0RvkELxulk7
         L+dgO/BZFeRgvw/XWEYGkueJz3mrxbsZ8d6oP7DNSuWM9aHg2rm1NfXi47Y0uNkj/HLg
         plZVCjUk4lPYMkUnbHPWN0iqBzO4lbuRZrLDs8Qmu1PXN6+hEnTw6zGIwlTMLZSUxfrL
         SlmiWfB7YosjSd7cinMeHKFdCLEPo/eI/t3EAij/XkdtSlkLyW5NmSM8w2OJJ0rKJWhq
         CnAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXwOoHtFA9YfLqtV5pifan7JnvbuG3xJQcu6k1hy4UPYLfPBm6f
	8Zlu2WwgI/kSnGOz5TZD3OQ=
X-Google-Smtp-Source: APXvYqyBezIbH9kD0ng5mu46rnySg3nEYdssmOPc09ISUI9RAi8tgnlBPj0EhGor4ekUcGO7iYi+Fg==
X-Received: by 2002:a1f:ca03:: with SMTP id a3mr17931285vkg.10.1579102878524;
        Wed, 15 Jan 2020 07:41:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c92b:: with SMTP id u11ls806558vkl.2.gmail; Wed, 15 Jan
 2020 07:41:18 -0800 (PST)
X-Received: by 2002:ac5:c1d4:: with SMTP id g20mr17625668vkk.83.1579102878131;
        Wed, 15 Jan 2020 07:41:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579102878; cv=none;
        d=google.com; s=arc-20160816;
        b=jUcGKQMx/wfBdApumy6vmQKCubk0cOQH6lj3ZITwDb2uYbOKOMnZ8JLLXdGyhwSO8s
         y3oZ4rsm0IgZIbaysLTjT+n9Fng5QBPl558PxWcbhgGjxmuP4PSuTBC/zl3BSbHC7cjL
         0eNx+mBAo93gWSEkuklLu6/h/Lntvpl1x+nb4+8KsY6+uqQTSlK2D/NxqYhzlR4AiYnF
         ufmu2MQVCMV6k2HsAh+fRemJn337nJrKbo9lekNSNfoW9eLD4U4Nv1UHmt4y8g2chcVK
         fUs8/T26yVRgN9UUgs7vXJQi38j0ZS4YxGNqx/s7H6eh2/a//WVjrw6LRnSv8srxnb+D
         DS6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=NIkXUmwxOnwOlGVFWkvQ0V4dIJMQBUoA41WJOe5Z5BQ=;
        b=UY5JOENDHuXhpS2NAscIFcrv/lbgKdaZixgdubm7EqgOuWkm060k5DbtdjKHzo4nD6
         C/nSVGOxHD42d5TKbknoWA26vex+HvQCA0v7LMmimRtP3ts9U9DHnuedfPTqvvfclWjZ
         n4EzOpd6gkWsGpllO7FYtD69ANmyIMQTTIqNWRtGWRI4OTFF3qBV34r/y0c1rSIeP8BO
         Uyt15YsKYLSoojlDGI77jJOKWF5tKHs4ZOJ9bd6XyC324Bp2An32vteoZwNlnDDfihm4
         g1/cD7BEXQGhgE9Z68+XFbCFkOy4ZDOP7WE6CatZsJTkc8eSc13pZVWkIjvaOogaeWIc
         2xOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=S0D3TRjN;
       spf=pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id w4si779530vse.2.2020.01.15.07.41.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 07:41:17 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-227-A9HC8G3TOKGI60K6s1O6Qw-1; Wed, 15 Jan 2020 10:41:15 -0500
Received: by mail-lf1-f71.google.com with SMTP id n24so3310427lfe.6
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 07:41:15 -0800 (PST)
X-Received: by 2002:a19:5e0a:: with SMTP id s10mr5018179lfb.165.1579102874419;
        Wed, 15 Jan 2020 07:41:14 -0800 (PST)
X-Received: by 2002:a19:5e0a:: with SMTP id s10mr5018171lfb.165.1579102874260;
        Wed, 15 Jan 2020 07:41:14 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id s22sm9557271ljm.41.2020.01.15.07.41.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 07:41:13 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id DB6C51804D6; Wed, 15 Jan 2020 16:41:12 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com, brouer@redhat.com
Subject: Re: [PATCH bpf-next v2 07/10] samples/bpf: Use consistent include paths for libbpf
In-Reply-To: <20200115161825.351ebf23@carbon>
References: <157909756858.1192265.6657542187065456112.stgit@toke.dk> <157909757639.1192265.16930011370158657444.stgit@toke.dk> <20200115161825.351ebf23@carbon>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 15 Jan 2020 16:41:12 +0100
Message-ID: <87y2u8u3qf.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: A9HC8G3TOKGI60K6s1O6Qw-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=S0D3TRjN;
       spf=pass (google.com: domain of toke@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Jesper Dangaard Brouer <brouer@redhat.com> writes:

> On Wed, 15 Jan 2020 15:12:56 +0100
> Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com> wrote:
>
>> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>>=20
>> Fix all files in samples/bpf to include libbpf header files with the bpf=
/
>> prefix, to be consistent with external users of the library. Also ensure
>> that all includes of exported libbpf header files (those that are export=
ed
>> on 'make install' of the library) use bracketed includes instead of quot=
ed.
>>=20
>> To make sure no new files are introduced that doesn't include the bpf/
>> prefix in its include, remove tools/lib/bpf from the include path entire=
ly,
>> and use tools/lib instead.
>>=20
>> Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are taken =
from selftests dir")
>> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>
> I like this change. Maybe the reason so many samples/bpf/ files
> still included "libbpf.h" was that once-upon-a-time we had a "eBPF mini
> library" in the file samples/bpf/libbpf.h that were included.

Yes, I think something similar is the case with bpf_helpers.h - that
used to be outside libbpf, and I guess no one bothered to do a cleanup
such as this one when it was moved...

-Toke

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87y2u8u3qf.fsf%40toke.dk.
