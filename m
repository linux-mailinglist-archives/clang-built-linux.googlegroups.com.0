Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBGOEQPYQKGQEQ7QISMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id C095B13FC15
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 23:22:18 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id a20sf8851121vkm.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 14:22:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579213337; cv=pass;
        d=google.com; s=arc-20160816;
        b=i6yDRBxn9uRypt6XVWPLXfBiHE+evlYG8wCRC84b+SaPffKi24XNQPZzTTIz77P1oB
         SfJT2QuyC9fZ+I441I2a9cQIBrRcBiy+Ug0TsXtTmYrhjD0KnWeTXVvDL9irxDMKSEqq
         Y41d0comrDbpXiJChW7fXb0B5qXyMgF1iIiUupoQqg7T/ku0xLdMIk3GqiOZWrjC3ke9
         MO/41dzJY6SrvtuDOvBCgJpgX9RajnRRL8xC1zgvM9bVYvX823GgZt/MEqecVvJAOOIt
         a81+2jSAC7RmYIiMYjlhUgP//2gsGTJCe22LZwcLbBhblqwRuRF+/2kpVohArBUc8PSU
         CC5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=J7CKtifbBqSECH/qdqT0Af8PhDjTljSKuNEEawgbHYs=;
        b=F4+pUwdBwEs3MwVmQOeoEQHAGh1iPO1x+XTLY+ZqItYE7wocf/XY0cd3va0/nHI+Fg
         fyAaqH7Q8Sgec737hXnQ37Mr60zk/DXTBo6HHqJgx0AaxsRsdVtUHIvGS/B1wTu+hxq+
         lmVi2Yo43y7Y2nMeVexnPRQeFTLvLv8ZEcgcXSFcwOXfxfCS4w9W2WFdTrnsf8E9l4HQ
         pP1fpkfT6yTwqNNzjleW0kxKSzaSl2thP8LXevCV1GhbX+h6xavul8QuRkcDFyOmDyZL
         YKv6kAFIEPKs7M9qHdxCl3ZtezRKKBLjWeJQg/LsiC0+u7DgNUsIWQQ+w3h4US7WKT00
         wdFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MUppkF8f;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J7CKtifbBqSECH/qdqT0Af8PhDjTljSKuNEEawgbHYs=;
        b=ixYoDDgAsWz5cTQKPAzGlXTCmj14klstOofptCEBYCr+h3hqV91L2Ww2PHKv0KCbEK
         8R51LKMI8xQ3f7e8Yo1jaO3gBpcj3z+MCrh+bvGbSkC8Ppfqu4LADERnrKsxnoKy8Eag
         bkPFYN4XVvrrKVDO1gulaDbsxChpZcoOP/l6bsxBIQF77VBug4ctQb8mZjTXtrdbhD6U
         Fw7yYbfppvvakJLSfpDHr8D6EYNqoOK9P/wXnOUVVc6L8e+IJweAHSJE0HQDcreDbbDc
         IoHd5pnkeDVQNVrT3TTqOQxaxDG1cH7tig19lgNGoZWIuhtf1vxpmfZTRGOWPHPUkGk4
         9N0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J7CKtifbBqSECH/qdqT0Af8PhDjTljSKuNEEawgbHYs=;
        b=l855CDW2hO0swDsO7h3MH6sc+QawhNsboSurH7m8ZP1EzQkzA0Sb3b0dcBrImMDwXH
         Ut45tczrdUw4ZfZudhQVUY98EXDikxZGUSCQNXuDD23SZ9WAbhij8698JHkYJppcvvsF
         XZDh1klxbdi73N0M+S50jciKDL/2NF4TqEnCI7ULutkAmupOIweQ4O2hVdPS5rXe/Jp9
         7X7c56YCPX9QHx4wxvak9LVPMOe5NmmwKMbMfIVN5xbicFKHl4b3LsbMmeGfh6w1fSqO
         JkJZS/LJy7oC3It1ahnCexhXOQV8XsLIk1UryEmW7EjGfoM5cMmqKKsjRBGdvzJEgmo4
         SlrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J7CKtifbBqSECH/qdqT0Af8PhDjTljSKuNEEawgbHYs=;
        b=GR4ZTpHZbFGkf0ADTP/ECv4E+HVFS/dCg5hmwO+a5hy80mitSwpJGc3VIFa7Bj1OjA
         na8W0de/EF1kwpvJ2UXZwjY/QlDqLBT1+kLlgvdmQ5EwM/yUE38zo/TEQDyMUMgQDTfn
         X72QE5e6fUEdMMo3cqGfwM+42FA68pPAWX7pAFX2QhhIJTKK8ZaDxoktXj+BZ6NQ8A31
         YudspkSWH8PGfFvlAP1VY+zL+lcyevNX7xXRftv+n70hoTJ1e2U+9MzqyqJPyW8I+A00
         EBPd4qc6IyaH3R8IUKs6T9391zpDQN+8vci3F1HXzbnGysFCFuzbkrwGCj9LPnPchf/v
         o43A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWkS9WdGGA0lGJDp0iGcTwz36UpORARk1vtC1lh9S57LEBZYwUt
	O2EhIm5NVKoQWG0R/CzoT+A=
X-Google-Smtp-Source: APXvYqx89OETL5K0sfPbPWqknOh/lyH6avzvaqoA6493/8wA6H6tu/6jeexVNJ/VqoJ++Ml2R70ohQ==
X-Received: by 2002:a67:800f:: with SMTP id b15mr3123096vsd.123.1579213337681;
        Thu, 16 Jan 2020 14:22:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:664b:: with SMTP id b11ls1364088uaq.3.gmail; Thu, 16 Jan
 2020 14:22:17 -0800 (PST)
X-Received: by 2002:ab0:2ea6:: with SMTP id y6mr19104086uay.25.1579213337347;
        Thu, 16 Jan 2020 14:22:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579213337; cv=none;
        d=google.com; s=arc-20160816;
        b=FCY3v4MiytXMZ66wS/Sa+rptfcQDCYrI8CnyK3D5GDDc8abn6UYmO2zL2YpJYfxbuD
         ElZae1+ug/stJNPjLzOuB9Jgwpw6EFzZ1jiTOIWUdonc6yH4KPqXf0CCRb3ohfGbpYH/
         KU5gPQ2JTwVSheeBCS+2Kyqy5r+RdCivJK8go39+j0R+3/SQS5oQc0nsvHXgIbR0MUTC
         poJDuyCNb/ROems0jAycR9QlbJ/j7seYnCjFLY3OLE8NVQKUVi9WcO26yHxJIsWIqLe3
         lmMH+XJlv2g9s1hjpIbnLtKQRtBOOMLEv6lf3zfSI451W8p+zGzIXVXF2Ca++8U2jPoP
         ShGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qu8zsYEQSOGvlAbndsI8B4OVOYDln+jaEykMs8+9aA0=;
        b=C7KAV7xULCldGZTnguWFBQpuMLzXpq0jJRBERpSJfhWobB1vpp5M5dfg4c1/GUK8Gr
         GfEcx0MhXhrBpRNSFMDnGeAbnCr7EHYC2SQYWKxiyGrrQvmChzG0fh/tLWj/7+1Jc9Lv
         TsdHNIExkKEPxyQBsGye1APD2Kyx7cRV0uKmpTjEvA3nwm2G3mQqROVmQHZ20yWvnoVf
         sh9w9Kjw64g7fgMdk8u+YVRKn0lZS3oDVTsXuEglkJ2gK1vB8uSETd7VLUQFQQ5+sdNZ
         1Rs3z5alxIEQB78+6FnxuTnCf+5Fbllqe2bi1D/t8Mh63p5qLQVGB53fiQfp0w8csXBc
         rShQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MUppkF8f;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id x127si897590vkc.0.2020.01.16.14.22.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 14:22:17 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id z76so20839746qka.2
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 14:22:17 -0800 (PST)
X-Received: by 2002:a37:e408:: with SMTP id y8mr35164194qkf.39.1579213337033;
 Thu, 16 Jan 2020 14:22:17 -0800 (PST)
MIME-Version: 1.0
References: <157918093154.1357254.7616059374996162336.stgit@toke.dk> <157918093952.1357254.13512235914811343382.stgit@toke.dk>
In-Reply-To: <157918093952.1357254.13512235914811343382.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 16 Jan 2020 14:22:05 -0800
Message-ID: <CAEf4BzZZLt4_ZdFgN7eJhHnAdpkZJROUNCozeMbZ-qTUr_7-mA@mail.gmail.com>
Subject: Re: [PATCH bpf-next v3 07/11] perf: Use consistent include paths for libbpf
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
 header.i=@gmail.com header.s=20161025 header.b=MUppkF8f;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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
> Fix perf to include libbpf header files with the bpf/ prefix, to
> be consistent with external users of the library.
>
> Signed-off-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>
> ---

LGTM.

Acked-by: Andrii Nakryiko <andriin@fb.com>

>  tools/perf/examples/bpf/5sec.c             |    2 +-
>  tools/perf/examples/bpf/empty.c            |    2 +-
>  tools/perf/examples/bpf/sys_enter_openat.c |    2 +-
>  tools/perf/include/bpf/pid_filter.h        |    2 +-
>  tools/perf/include/bpf/stdio.h             |    2 +-
>  tools/perf/include/bpf/unistd.h            |    2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)
>

[...]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzZZLt4_ZdFgN7eJhHnAdpkZJROUNCozeMbZ-qTUr_7-mA%40mai=
l.gmail.com.
