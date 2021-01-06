Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBDUU2X7QKGQEMZBZTAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1682EB973
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 06:26:39 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id q13sf1081739pll.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 21:26:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609910798; cv=pass;
        d=google.com; s=arc-20160816;
        b=zFWM5F5XZIMUnodx5WXQw8BoUJc1COPdy/v6XTEXYTUz8ESErAi2YO+iZp73Cp0Cka
         0jTGVmDG6TFsyl2G01VrzKlXts14xBhqyFlscLoOHh6p68EGwIw2vD92H6CXwtCw4bb6
         kqtCXbMrGhydZZwYvAyDXv8FWXCqlem3d6f3QNyhT5ejHDN8HlVrkyQtI1lPngaKcVB7
         gCbc7TA9DGlJxsRsFZLzxdlolv8bR93t2Ng6uCJlSVcdgkkDHZQjyAQJskROzhuBeUL0
         iPkbo9EpDCG3d2V0GkbUG5F/mmVZkamMzA4KGYbatqJ0aeQO3P6uwvRPe1IATip+hcHw
         kuRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=r2/8aBpi88UrkNySXD8hqIcTT4N5RdzWjDW5WBwz39k=;
        b=WpCkQOMdlM0oOtkYI3PK16bk41bmVFP4p6MzMshWblqePUUd2M14OOlBrX7UyqWbRX
         ihBwss3PEAjulMmqFHVfoSKQdScabG33yhfWhfvh4mTMv/4kROwvvF7k/Kf8khJ9mFFx
         9LUnJ/rQ/VGnXDOX3c8MK/USSePKUkMz9cpzAkHMT2spvk1Yqip9O6nVuUnVrV/XR3vg
         xpEUKkya/YiiH27FxF/XMabJyfnpFAQgDfvXs3iAK5cgbKJFuYuU/5c0rU6O5ymTXIqd
         V6tJwBFnU89Mwx6y/QUTvyRTxgs0as7BExXzQNP/rKZQccOaY8fjFM24HzS8j+GjYYIR
         /sng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UCqx7khl;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r2/8aBpi88UrkNySXD8hqIcTT4N5RdzWjDW5WBwz39k=;
        b=Sf3YagWhS1kxWeAC5PDqAPjF2cmPdhWbADtcevI4/H/mK8cBs6rJdKkUAfxz72I4Sp
         agPYqEb2PprRzEel8rKw4cG5OqQTAboiJOlIcRtgV1ZcpkJJBm6CRExbN1vw49wEtYoF
         4Rv2Gykb4y/69L4lIIMFhhkCYkDBV0DKcgFNd+JxaeyMM/69sM/mbnVIKGrhCh1FiTkj
         BCGLt4TDj2CJ0vBqEESzAK73QuMUK7jVHsEv/evIr10gL6vLSHfhBtMmVvpnPonvj90+
         ay2mSE34hmyQR2BeZq5M/eP59rOOKpfjs2+t/V9kmUO5CDJAZSQrzKR52Dkp9ck0m+Z6
         Zlow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r2/8aBpi88UrkNySXD8hqIcTT4N5RdzWjDW5WBwz39k=;
        b=nBm+8qTGPbXGRnS/b6faqGP6wDLhfQ4ynVnWLvsPnX9nE1jAoZTebX+OmXLDPqv8j+
         sn3ncby0VkDLksRsS5hmpZz2o2WAl8dftWf1xZEJm0uyEKbkBnrEquFy00gqAXPUhigA
         IfC3DXdQwY34DivqpsW9KCjmkvObM2TZpPXl3DBcsuZ1CTEoy0G3IylP098pEelwUPC0
         gw5U0Crz8nBfzAa3P8yVdD08vCsa3Ys/o+nqsb2XADwW1gqVTjGvVlqiQxbFWYycTVa+
         FLTCusUqcARGMy634BChIxcyACLTvsp9booyJ2PtdDSBuPlAxfLLyxbLHh4jy+i8mVxT
         w4hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r2/8aBpi88UrkNySXD8hqIcTT4N5RdzWjDW5WBwz39k=;
        b=b6Sg4XFYgbdcDkljBTMGxlr4vYr5q94P8n/WsIiLERGzmwWSA0u6vcuGC92uBhPa0m
         0lsqv9pgEhXH6wS82KpoLWGOdEsNHcmOO5kqisk4jA9Qgg1dWRUC0IRf5PTBPaH0mAYf
         2bjml/9Xyf8kFZ5oTUeByQPmtmuN1fqg22dzfRGPfHXQq1nkBsPc8QOoRu86pcBqOFVY
         eoCzMRXI+79i97zIAIcnPO5dQQxQMu08/LVYYm7qXuIFkIi4+9J0xAegdk7aDPi9MQfT
         +gq437zxp11nXrWhfG2KaOJex+WRIbMFqCRKjivh9cYtFc3izK5k80gUujCcU8XuYWmi
         t7dA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RNUDUfLiYOeyJJF+ts+bkQIFjx3U2JiEtfrMJBVXiS77RDaXh
	fbvez+7HIkzi89QoHkc5eA8=
X-Google-Smtp-Source: ABdhPJwKcUJZiO0PS26mUibtvitOB2mCF40+xYXLWbvj/Rpwb4AJlTCtwDD040kCvYGbRtqbHO+vZg==
X-Received: by 2002:a63:f249:: with SMTP id d9mr2641509pgk.109.1609910798294;
        Tue, 05 Jan 2021 21:26:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6d0e:: with SMTP id i14ls750688pgc.8.gmail; Tue, 05 Jan
 2021 21:26:37 -0800 (PST)
X-Received: by 2002:aa7:8499:0:b029:19e:6c5:b103 with SMTP id u25-20020aa784990000b029019e06c5b103mr2472125pfn.13.1609910797610;
        Tue, 05 Jan 2021 21:26:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609910797; cv=none;
        d=google.com; s=arc-20160816;
        b=MT8m+sOUdwH4XzP9lVTsa9rg54VYFhS51gCmR3XjY4RAk4mBfcSOHejrntWv5jiPCc
         ZWI7u0YUieEbV0XyltBabFCMVgUZOJ14Q1Ym+ISP3XIpbGaBTwhfU7GAyfV0zLdOm8tv
         /A39lGwA3mXT6OPnf6ZkQ/sengkYjvkVRQufn33ytUpIvzuM4SCYaGjtdsMdTdsfIO4W
         8lCmfOnSd+yWPpyUCPEyG+qewW8OAr6tNC1YFyMFfRqFOg1JslnClf4kwMw4osruhXnU
         +09Rxgevlhojrd6H007yWkwMWu71aTmI63LxCczVknUDRDeEubyI/PTqTKAN+sGExSTJ
         efKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UknX9QmHip+tndRmYcnv02sGjXL/6i8uFjVy4S3Vt/Q=;
        b=o11sR7pl2kCSZfWclApcsGpKY10QkPuQ7O9t+4pvqKE/YGGcyWHMsBfH3hqa8V46i1
         vaC9E2kf9I460AImxjisoLCjleUFu7GitSfYgr5t8fF6u2fDxxgpq/V77gzYnCltiwbT
         iiNi526ZkIZXzMLJsixh/j1QRX0C1HCZ7/zi1Rt3nHPrXvV24rqV6fzsbk9GEO6K7H1Y
         UsBKb20DkoS6b89uT4usLrLyGvJD53IkH7C6qfuqBdZMob91EMFh5ADycR/h8HG66xL2
         jfczEFm7vnTfIw9JIyPaUbP2FDgBnyMWF1GXBerBSIFEWqB9tuAc4eaZWCaZT/I9H1/Z
         WRkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UCqx7khl;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com. [2607:f8b0:4864:20::b30])
        by gmr-mx.google.com with ESMTPS id z18si100008plo.5.2021.01.05.21.26.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 21:26:37 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b30 as permitted sender) client-ip=2607:f8b0:4864:20::b30;
Received: by mail-yb1-xb30.google.com with SMTP id y4so1797397ybn.3
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 21:26:37 -0800 (PST)
X-Received: by 2002:a25:aea8:: with SMTP id b40mr4044517ybj.347.1609910796865;
 Tue, 05 Jan 2021 21:26:36 -0800 (PST)
MIME-Version: 1.0
References: <cover.1609855479.git.sean@mess.org> <a9334d4ecb66d58d326c19b78e18b44a180967d1.1609855479.git.sean@mess.org>
In-Reply-To: <a9334d4ecb66d58d326c19b78e18b44a180967d1.1609855479.git.sean@mess.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 5 Jan 2021 21:26:26 -0800
Message-ID: <CAEf4BzY2nDzT4FjfARiPJdu=G-0uwhxrUHpNrdAEB9NRxu4RqQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] bpf: add tests for ints larger than 128 bits
To: Sean Young <sean@mess.org>
Cc: Yonghong Song <yhs@fb.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Quentin Monnet <quentin@isovalent.com>, =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>, 
	linux-doc@vger.kernel.org, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UCqx7khl;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Tue, Jan 5, 2021 at 6:45 AM Sean Young <sean@mess.org> wrote:
>
> clang supports arbitrary length ints using the _ExtInt extension. This
> can be useful to hold very large values, e.g. 256 bit or 512 bit types.
>
> Larger types (e.g. 1024 bits) are possible but I am unaware of a use
> case for these.
>
> This requires the _ExtInt extension enabled in clang, which is under
> review.
>
> Link: https://clang.llvm.org/docs/LanguageExtensions.html#extended-integer-types
> Link: https://reviews.llvm.org/D93103
>
> Signed-off-by: Sean Young <sean@mess.org>
> ---
>  tools/testing/selftests/bpf/Makefile          |   3 +-
>  tools/testing/selftests/bpf/prog_tests/btf.c  |   3 +-
>  .../selftests/bpf/progs/test_btf_extint.c     |  50 ++
>  tools/testing/selftests/bpf/test_extint.py    | 535 ++++++++++++++++++
>  4 files changed, 589 insertions(+), 2 deletions(-)
>  create mode 100644 tools/testing/selftests/bpf/progs/test_btf_extint.c
>  create mode 100755 tools/testing/selftests/bpf/test_extint.py
>
> diff --git a/tools/testing/selftests/bpf/Makefile b/tools/testing/selftests/bpf/Makefile
> index 8c33e999319a..436ad1aed3d9 100644
> --- a/tools/testing/selftests/bpf/Makefile
> +++ b/tools/testing/selftests/bpf/Makefile
> @@ -70,7 +70,8 @@ TEST_PROGS := test_kmod.sh \
>         test_bpftool_build.sh \
>         test_bpftool.sh \
>         test_bpftool_metadata.sh \
> -       test_xsk.sh
> +       test_xsk.sh \
> +       test_extint.py
>
>  TEST_PROGS_EXTENDED := with_addr.sh \
>         with_tunnels.sh \
> diff --git a/tools/testing/selftests/bpf/prog_tests/btf.c b/tools/testing/selftests/bpf/prog_tests/btf.c
> index 8ae97e2a4b9d..96a93502cf27 100644
> --- a/tools/testing/selftests/bpf/prog_tests/btf.c
> +++ b/tools/testing/selftests/bpf/prog_tests/btf.c
> @@ -4073,6 +4073,7 @@ struct btf_file_test {
>  static struct btf_file_test file_tests[] = {
>         { .file = "test_btf_haskv.o", },
>         { .file = "test_btf_newkv.o", },
> +       { .file = "test_btf_extint.o", },
>         { .file = "test_btf_nokv.o", .btf_kv_notfound = true, },
>  };
>
> @@ -4414,7 +4415,7 @@ static struct btf_raw_test pprint_test_template[] = {
>          * will have both int and enum types.
>          */
>         .raw_types = {
> -               /* unsighed char */                     /* [1] */
> +               /* unsigned char */                     /* [1] */

unintentional whitespaces change?

>                 BTF_TYPE_INT_ENC(NAME_TBD, 0, 0, 8, 1),
>                 /* unsigned short */                    /* [2] */
>                 BTF_TYPE_INT_ENC(NAME_TBD, 0, 0, 16, 2),
> diff --git a/tools/testing/selftests/bpf/progs/test_btf_extint.c b/tools/testing/selftests/bpf/progs/test_btf_extint.c
> new file mode 100644
> index 000000000000..b0fa9f130dda
> --- /dev/null
> +++ b/tools/testing/selftests/bpf/progs/test_btf_extint.c
> @@ -0,0 +1,50 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include <linux/bpf.h>
> +#include <bpf/bpf_helpers.h>
> +#include "bpf_legacy.h"
> +
> +struct extint {
> +       _ExtInt(256) v256;
> +       _ExtInt(512) v512;
> +};
> +
> +struct bpf_map_def SEC("maps") btf_map = {
> +       .type = BPF_MAP_TYPE_ARRAY,
> +       .key_size = sizeof(int),
> +       .value_size = sizeof(struct extint),
> +       .max_entries = 1,
> +};
> +
> +BPF_ANNOTATE_KV_PAIR(btf_map, int, struct extint);

this is deprecated, don't add new tests using it. Please use BTF-based
map definition instead (see any other selftests).

> +
> +__attribute__((noinline))
> +int test_long_fname_2(void)
> +{
> +       struct extint *bi;
> +       int key = 0;
> +
> +       bi = bpf_map_lookup_elem(&btf_map, &key);
> +       if (!bi)
> +               return 0;
> +
> +       bi->v256 <<= 64;
> +       bi->v256 += (_ExtInt(256))0xcafedead;
> +       bi->v512 <<= 128;
> +       bi->v512 += (_ExtInt(512))0xff00ff00ff00ffull;
> +
> +       return 0;
> +}
> +
> +__attribute__((noinline))
> +int test_long_fname_1(void)
> +{
> +       return test_long_fname_2();
> +}
> +
> +SEC("dummy_tracepoint")
> +int _dummy_tracepoint(void *arg)
> +{
> +       return test_long_fname_1();
> +}

why the chain of test_long_fname functions? Please minimize the test
to only test the essential logic - _ExtInt handling.

> +
> +char _license[] SEC("license") = "GPL";
> diff --git a/tools/testing/selftests/bpf/test_extint.py b/tools/testing/selftests/bpf/test_extint.py
> new file mode 100755
> index 000000000000..86af815a0cf6
> --- /dev/null
> +++ b/tools/testing/selftests/bpf/test_extint.py

this looks like a total overkill (with a lot of unrelated code) for a
pretty simple test you need to perform. you can run bpftool and get
its output from test_progs with popen().

> @@ -0,0 +1,535 @@
> +#!/usr/bin/python3

[...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzY2nDzT4FjfARiPJdu%3DG-0uwhxrUHpNrdAEB9NRxu4RqQ%40mail.gmail.com.
