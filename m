Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBWGEQPYQKGQEE4EP2MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FF813FC21
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 23:23:21 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id 201sf1727028ybd.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:23:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579213400; cv=pass;
        d=google.com; s=arc-20160816;
        b=sKSzTE0pZ3z7vjh0heJ+P2herujorUw4LFVN5BnJcGlPwQNjlkulqX6895Zw2jXG/s
         GGjRoLMaMQaTFcerxdZuYbq5HkWyYT2pOqORURO4yOake+SPr/QUx0ftBWRozB5BHG2K
         6w8o2iJeBYlgA7d/xK52ePAatBr/rtNEiPWelwq9y2i8YrqXYw6GLNEH7zGECiCRKy8L
         nUxf30sOp1u8CJCITTP5yb1ZJsWA5f/8RM6Mjq0/EHGKfX7lVsD2qP7vZsEdTdkCyPd1
         gnfPYEQsHxEwBLMHOJXOPNJiQaQJUtziHAIWTurUb9mFqhnX1Jf9nqp89G4uz+tLeuxE
         s1fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=tzjXGvlQ2W5Ix3VKBR8b1/4ddHr7g1z6F0KJNMDttrc=;
        b=Eo1fj3C/AYZ2UYOlXcWGYgfGSQkeKEc4LGlspRXyqUh9VC0LDoVRQt+1ZvccRs67h6
         YC6MsqveFu7tkLT7wAEMfxjc9fhpw6L+2pf1a3RmTCbPzdKpjRhurDr0hub8t1mg5d7E
         Ai8chnRgwSVntjCHFrGR5UW2/fSx37G4AGO1TYb83skb//YDYGYvtpgaQI6LCNAAJSmx
         sJ2ESH1ARcnbiDkIsh3QwHV3HHzBM2ucbiOjYVZ93GDXsLx2GUX6cI6xQP+WiUh3E5Ra
         EZY/9Pji2ti0A27EpV1vB/4Ki7RIhWghAIjhbAyR0Yu3ctkPwB7QoITamGlwPsueFIpi
         Mokg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z+2bgoAI;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tzjXGvlQ2W5Ix3VKBR8b1/4ddHr7g1z6F0KJNMDttrc=;
        b=ZZJNmZP1GvhKOI5fc0gV+9mIu5ZeqRpoN0pMsUuyK2WOeheqeHfajkxK/S0NY1ZoSQ
         SjREAHbELrYp+V3v/l5MHWomlqMMxpR1+fHnjLFOZMk/Jm8M+akNvcWm87I/jts/I9bG
         j7bwG9C93DklxVkJ1tfHAbz5Gmbhx3obdAQ71mjwrWy28xtNbAv8P3KvZdxg95If9/oY
         z2VyGYCI3xfRrAJz+cbLIIJqIQ9G5flFx+5YeUF7cbZYdUyOnj/2N/8UyxUk/bfTEYdK
         YcXhPsk1KBFT0T9ibJqbbzfVwvDwm6kf29LxnOycSlRcxotzbS3wVec0xPgR/gvSD8Lp
         +UFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tzjXGvlQ2W5Ix3VKBR8b1/4ddHr7g1z6F0KJNMDttrc=;
        b=fR+twU+Yd72bACWm8RL1q3ALsadJ2xTfQvkNMJByWGVB+K6q4Q8d87RekAWweL+fcd
         aLbZu0nGq+euUcAEsCukQ+A41O7X1iVzcxi41rkztWav0QqyclYIGM+ea1tlAa92N5uk
         WxSSFIXEifepzvljlHs7Bkq3lVML+SFnBqtvY5xYtfzeEPGJz+Qd/cXSpKkz5GVl6eHB
         VYkB742UmAaT6Fzg88jbUfcQcS6D3+eiPlV/SEdbzHQYTTkr68x4/gTVHxdd9sIu8hT5
         OglKvAC/ZEo/ycgDpBE3SoXQ3GXdT/A0AZeYUVneQ5zgRKs2pq1KaJO4SF+C1E0HtRop
         oScw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tzjXGvlQ2W5Ix3VKBR8b1/4ddHr7g1z6F0KJNMDttrc=;
        b=IdDPcfbv4NX4eobjIBSkNxQR9XiBFG5Fr2aDXtZIcOlSKkk1V10H85rTeB9t57KVBB
         nHvyO4QAP0MuKEkYEgM97YL+5dIc/9qDDH6Ix37rqNyxS69/MCHSryxzN3OST0+IOBh4
         cmnFvUmGiMUqbo98qJzayLQhk6zI8VHkRq9tI/v2Pt9wAjpGm4o6f1IskjQ7gWFKN49Q
         3A2+ira6b9vkFpwiwjIP3RnC+HV+Df7ifI+1LVjTR4h4wV38UGSxPW+Ajz2s23IRwa1z
         D8goNVt6/zxDcfQd7cP48BZlN5JdQTNh7R5iAwIvbm5xlRs7ENoXH1l+3DeRRlc53uTi
         +zJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXK+rsK2gi2HwdIgtmo0yhO7bczO7GA7zGx/7UK6lQ07YZQBGYi
	Zzdt0zrDNRGYHv4tghXJsNo=
X-Google-Smtp-Source: APXvYqwftds94i8BcWEb5Ei1aR7btwqmwLi2x5+QSB6ix5xmmG78ncrbEolyxJLwRL196/VeLQPVPA==
X-Received: by 2002:a25:d210:: with SMTP id j16mr27090550ybg.296.1579213400175;
        Thu, 16 Jan 2020 14:23:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:194b:: with SMTP id 72ls3796702ywz.6.gmail; Thu, 16 Jan
 2020 14:23:19 -0800 (PST)
X-Received: by 2002:a81:1d81:: with SMTP id d123mr29208582ywd.195.1579213399844;
        Thu, 16 Jan 2020 14:23:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579213399; cv=none;
        d=google.com; s=arc-20160816;
        b=RA0S2hIjjbc2+jYCt4wGkdDOpnZMmh3yTtoMysCBj8hT+Sas4/AZrCloU/jJF7k4Ux
         8E+5E3w+DkBtW4YJQOwVVfbY+wOgxQSQAmxzj4bQ+ijf4z9iAXsgv0CzsdjMqXXBjzfH
         69HgR+I49W0kcO09UvBBdkJoAAd1oJMvLToj01y9umCGIDbuCp/EMkklQw37xOxwzNcw
         Jr7wJA2+w9La+hxn/Zdw9BXdgeyOPsN8WN/lco+lviU560COHwatipNNDGa5bTsY0BtF
         ZoQwbc5u7MXC+MfZKb+ob+S3jdwZ4NKfJagNgqQy/J4tKd4uSv1HXCXGtRnVfJDjQCsE
         +Paw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=oCyvl4b908HZ5JJcSmjdgvOBWBhwJ2mkB7jFnC6f1FY=;
        b=EplL5llMKE/6Cy3VVZoSDsDI3x6ioffImcupqmP1j9KUXaEa22SJqiArIM0Bdv/F/H
         ACzSHNtfc8sCaSJstNAqRrPDw+/w8cJ4yn5dSWMR/RiZp1xrygLAMEylBtt44S6ugiuc
         NNjplXZ+/JUxgBMKJD7SrpwdoH3BtXEGgn7AZ7RWuaKBfGebyIn3bzRK8uu6/GP6oHHd
         6LSvdpPdh0GxMfiUtPTl9qf24TH69NXPEmaud3tkZx6pDx9zBSU2MjgtICdiJVk45cL4
         SRUULR2tIQ6FQaEMC/gZdbMfMkcHxtZQsqXZs8AodWFCN9WK6bI77mgtc2dfBjfXnxtq
         LC0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z+2bgoAI;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id y3si1116313ybg.3.2020.01.16.14.23.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 14:23:19 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id x1so9874394qvr.8
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 14:23:19 -0800 (PST)
X-Received: by 2002:ad4:4e34:: with SMTP id dm20mr5012047qvb.163.1579213399484;
 Thu, 16 Jan 2020 14:23:19 -0800 (PST)
MIME-Version: 1.0
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk> <157918094065.1357254.8062315384165377618.stgit@toke.dk>
In-Reply-To: <157918094065.1357254.8062315384165377618.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 16 Jan 2020 14:23:08 -0800
Message-ID: <CAEf4BzbX282u_DFRUqkzdZ91RhpFRg-dXzsGcTrzdsqc+Tb2HQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next v3 08/11] samples/bpf: Use consistent include
 paths for libbpf
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
 header.i=@gmail.com header.s=20161025 header.b=Z+2bgoAI;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Thu, Jan 16, 2020 at 5:28 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com> wrote:
>
> From: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
>
> Fix all files in samples/bpf to include libbpf header files with the bpf/
> prefix, to be consistent with external users of the library. Also ensure
> that all includes of exported libbpf header files (those that are exporte=
d
> on 'make install' of the library) use bracketed includes instead of quote=
d.
>
> To make sure no new files are introduced that doesn't include the bpf/
> prefix in its include, remove tools/lib/bpf from the include path entirel=
y,
> and use tools/lib instead.
>
> Fixes: 6910d7d3867a ("selftests/bpf: Ensure bpf_helper_defs.h are taken f=
rom selftests dir")
> Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>
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
clang-built-linux/CAEf4BzbX282u_DFRUqkzdZ91RhpFRg-dXzsGcTrzdsqc%2BTb2HQ%40m=
ail.gmail.com.
