Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBVGPTDYQKGQEJ4WGWRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6331433D2
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 23:21:09 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id p206sf513026iod.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 14:21:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579558868; cv=pass;
        d=google.com; s=arc-20160816;
        b=FetSiD+0MQkoSYYQnO6oGxUOTKlOxKqjPGorSEBkB2PsuncRwPOOYXMzCjLgXkQJlZ
         OEn0sZQ4LF5HevtibYVjB4mSylJuTGyNThmJhi77njfFQwct3AlpSYNJRkvyJVMHow+T
         hMFTZhkonV0cmJbnDPkthAH+GTl/P6Ungy6JGeiqYG5IhfqkJSMWQi6jnKgdWB1/0+Ee
         +NTjp2iwpBvE8mJzxn7S2L8znFvxfuQYKLO7AVOWYEBO+tQSfSseo5ftkcVQWWs97BGF
         kHvkRvg2+fkchQMuYrBHQSEsrHhz8lH6qztZYmAQrhosiTpiffKatRsEM6rvqVK7NByG
         KLlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=e8cu/NyqLPlbHiPGPqn7xLFfmtO0y5tSg9KHZjjuhbA=;
        b=PfVLhdFaH+55dK6+xnUrMU2yf//hP87J37bU4b/W4bpxDCJjZmpBPrCBGFsE+yZX3n
         N+kc7p/jLtDKDebRsLkX4cyJIJz3VTxiq6EUIr4cNu8yVu844e3M+Xkc36GjCm3Hi7Zo
         c8Nz8XH8oK7lAngRPgy75/tkrkQSQ7GSbrDqm0k0UUvR3rFVVW+jWFCpgPSXV+TaNVCB
         FF0HBoT8KPUt2SBZlkZhbWScw2+pc5PoD0LOhgSFqeoFmd7MMdBCl89DM/QXWySgdBBH
         T3L23dTBEZW9SUwnhE9d2CeFnjKX1+U3nUiLKlsQFe/km88usHlQTDPzYnSNuRe0GfPS
         1xRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fhdl7qM8;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e8cu/NyqLPlbHiPGPqn7xLFfmtO0y5tSg9KHZjjuhbA=;
        b=oug5Q2lob5qodRMlUaj/+lSAOQHFJLUIkiuoltgXkDVOIauLtLre8+XQEd+eM7VnL+
         fTMH0ZzpnMqZTkSXODaDYFQ8/S7DC/Hwjw+pwkbkPs7bRFLIquPsbTsWMD3l+BsYoHYU
         4JehHkvQWmFzbiud5cT75/AbAhN6ZJUz/3i9FDqfG/OXXW9D8z9DDR/tNFcGBKBUmNfC
         KnBjHvHGd4Wkd825xZtXlmkDULM0zcsqQh3AdU1Iqdsobl4oSV5eZGEszQEcDYVrihCt
         CSFO3iCHFwTi53KWS5SzNKS51wL2QcMFRdogWRKrXq712JUe1/KtGpUQzqkMcX/mKsr4
         VXtw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e8cu/NyqLPlbHiPGPqn7xLFfmtO0y5tSg9KHZjjuhbA=;
        b=daYSXHokeTTvyJ+t+qFozCGBovU9TK3hzrV9YPgkV+7ifufQ7KGKY2Q9n1Yp32SJxj
         FgmebcI67NjVkllLIWGNTsMCsOG6DdUPgGyI9MV/ySXKKPewXz4/TL4PsVixltxTYEca
         gBbY/J/9nxhQX0y12H5zEuBof+xhVhwzHgye9OVN3x/G+FW4gZwIEpb4scWdSso85n8g
         mQaLp+y4/HWwK5e7rIx7ify3UZJoUCQomSFT0pBakCw3DfSs6T+F8HYeLegutNqczFbh
         wBFOakUawvUtvvrVY8oP3MVgqxOgJTEvbrMN/GjPuR+WYQ5IUnSYxRpKX/epwiSzgNdc
         0J8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e8cu/NyqLPlbHiPGPqn7xLFfmtO0y5tSg9KHZjjuhbA=;
        b=Myc+DLCdQZ3UyXDF+VMETAu5uMOfHHheo/LJSbO+d9ouYShHIkGDaiSMbRnHlGHoIg
         mVW3y1JHgj+B6hSkbRf+LtxCjIiUNu+DrtaQSW5NwdOfPvOBZkS5r5HfOL8hnWBYk1IT
         WPYlWomIf8uaDnP+WHb7XHHeZOZJy42fFIaoLU6m/IT1JfgOuf3E1KrSRx0e9U+cxvlQ
         xdv0/3hyKUftR8xl/oPvhQv0bpv/CBMLwwW0vBYRdtuhXk/7Qa04TwU+BmGHn24IOKeo
         dUt16WS644WNsJqCgyfi7oxwqGVtUU7EZ+eWK2F3AEXBbkelpiu9twpIkMFRyAVRYJr+
         +GGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVBPrLSEroQqI1bX5aAssUlTVyhiZ5k+M4VB31MSQnegqcKeMTF
	Voj3fNBdA+PkdC77ZKyNVi4=
X-Google-Smtp-Source: APXvYqzZMhdJaSx5M3oiBa64XA2q+IKNd95NR2Tu2uHT5zBcrdG+MG7ai3YlGqkZih1Xo18W/AAyig==
X-Received: by 2002:a92:4992:: with SMTP id k18mr1096719ilg.10.1579558868345;
        Mon, 20 Jan 2020 14:21:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:90f:: with SMTP id t15ls5287094ioi.15.gmail; Mon, 20 Jan
 2020 14:21:08 -0800 (PST)
X-Received: by 2002:a6b:92d4:: with SMTP id u203mr859117iod.288.1579558867968;
        Mon, 20 Jan 2020 14:21:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579558867; cv=none;
        d=google.com; s=arc-20160816;
        b=lJpbIo+hhOBZEFMAEJUEs0dRwIA03300tuluryglVkp2NibimIQLBSEKM7cDwtg/5r
         UlowMnihxDyCVJ6/OjVmvtVZGU7wxE2ZonMFj1WwZse9x+ZBxcWw34PmwsYTqAGnPgcU
         kdCvXzwMNeGxKSyVV3S/t6cLe10lK6BCegVcqHQ3JnC+/HgzhbYsVDnqQ9WUcse6pOjm
         qOZnTFHOthtmQjQtY/7EJVVgRGJzj/FmhYxtqx/Wx1uJMf1Sw75g0J0aoTJFd3c3a1W8
         FUr3JXqYYh9zfaOH8JK56allW9pr1NKJ7iKITt0Nz+/VnmS8fh53PqdVJzSbyU7biJBt
         vxXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wvKfZKzY5I12j5SecEs/3JRExvNNhiJqlDDq3iBdhXo=;
        b=lgL6OeSmHMI1R3zg7wWu5WlCCehs43KOW3x7bKiH1HnNarb040SgfeOcchHmX/E3s7
         yMFLL0E4HVIAd+5QOYkF2gHLFYIhTHmElaEic+67wcL0GzgjK43lncAYGn6ExI7+31zN
         j7wCLGcEKFr8mG9P2FVmOakR4zczJmFUvnQI6jZVbHgXm9r4MmYMnhREg90bkLLj0CvG
         /5uMrauNwANjH5iepABJPCffzfZHNmsAlvjUy56CHsjAPBpCswk0Yidj3/loUPbZczf/
         SULSXq7hxD8PnWDP+2Vl2wp6oIm+muDRz/Raz4ZriYoFPd0oYOJGuByQr8ld5nvceyuP
         nxDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fhdl7qM8;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id h4si1780794ilf.3.2020.01.20.14.21.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jan 2020 14:21:07 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id c16so806976qko.6
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 14:21:07 -0800 (PST)
X-Received: by 2002:a05:620a:5ae:: with SMTP id q14mr1755114qkq.437.1579558867281;
 Mon, 20 Jan 2020 14:21:07 -0800 (PST)
MIME-Version: 1.0
References: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
In-Reply-To: <157952560001.1683545.16757917515390545122.stgit@toke.dk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 20 Jan 2020 14:20:55 -0800
Message-ID: <CAEf4BzYNp81_bOFSEZR=AcruC2ms76fCWQGit+=2QZrFAXpGqg@mail.gmail.com>
Subject: Re: [PATCH bpf-next v5 00/11] tools: Use consistent libbpf include
 paths everywhere
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
 header.i=@gmail.com header.s=20161025 header.b=Fhdl7qM8;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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
> We are currently being somewhat inconsistent with the libbpf include path=
s,
> which makes it difficult to move files from the kernel into an external
> libbpf-using project without adjusting include paths.
>
> Having the bpf/ subdir of $INCLUDEDIR in the include path has never been =
a
> requirement for building against libbpf before, and indeed the libbpf pkg=
-config
> file doesn't include it. So let's make all libbpf includes across the ker=
nel
> tree use the bpf/ prefix in their includes. Since bpftool skeleton genera=
tion
> emits code with a libbpf include, this also ensures that those can be use=
d in
> existing external projects using the regular pkg-config include path.
>
> This turns out to be a somewhat invasive change in the number of files to=
uched;
> however, the actual changes to files are fairly trivial (most of them are=
 simply
> made with 'sed'). The series is split to make the change for one tool sub=
dir at
> a time, while trying not to break the build along the way. It is structur=
ed like
> this:
>
> - Patch 1-3: Trivial fixes to Makefiles for issues I discovered while cha=
nging
>   the include paths.
>
> - Patch 4-8: Change the include directives to use the bpf/ prefix, and up=
dates
>   Makefiles to make sure tools/lib/ is part of the include path, but with=
out
>   removing tools/lib/bpf
>
> - Patch 9-11: Remove tools/lib/bpf from include paths to make sure we don=
't
>   inadvertently re-introduce includes without the bpf/ prefix.
>
> Changelog:
>
> v5:
>   - Combine the libbpf build rules in selftests Makefile (using Andrii's
>     suggestion for a make rule).
>   - Re-use self-tests libbpf build for runqslower (new patch 10)
>   - Formatting fixes
>
> v4:
>   - Move runqslower error on missing BTF into make rule
>   - Make sure we don't always force a rebuild selftests
>   - Rebase on latest bpf-next (dropping patch 11)
>
> v3:
>   - Don't add the kernel build dir to the runqslower Makefile, pass it in=
 from
>     selftests instead.
>   - Use libbpf's 'make install_headers' in selftests instead of trying to
>     generate bpf_helper_defs.h in-place (to also work on read-only filesy=
stems).
>   - Use a scratch builddir for both libbpf and bpftool when building in s=
elftests.
>   - Revert bpf_helpers.h to quoted include instead of angled include with=
 a bpf/
>     prefix.
>   - Fix a few style nits from Andrii
>
> v2:
>   - Do a full cleanup of libbpf includes instead of just changing the
>     bpf_helper_defs.h include.
>
> ---
>

Looks good, it's a clear improvement on what we had before, thanks!

It doesn't re-build bpftool when bpftool sources changes, but I think
it was like that even before, so no need to block on that. Would be
nice to have a follow up fixing that, though. $(wildcard
$(BPFTOOL_DIR)/*.[ch] $(BPFTOOL_DIR)/Makefile) should do it, same as
for libbpf.

So, for the series:

Acked-by: Andrii Nakryiko <andriin@fb.com>
Tested-by: Andrii Nakryiko <andriin@fb.com>

> Toke H=C3=B8iland-J=C3=B8rgensen (11):
>       samples/bpf: Don't try to remove user's homedir on clean
>       tools/bpf/runqslower: Fix override option for VMLINUX_BTF
>       selftests: Pass VMLINUX_BTF to runqslower Makefile
>       tools/runqslower: Use consistent include paths for libbpf
>       selftests: Use consistent include paths for libbpf
>       bpftool: Use consistent include paths for libbpf
>       perf: Use consistent include paths for libbpf
>       samples/bpf: Use consistent include paths for libbpf
>       tools/runqslower: Remove tools/lib/bpf from include path
>       runsqslower: Support user-specified libbpf include and object paths
>       selftests: Refactor build to remove tools/lib/bpf from include path
>
>

[...]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAEf4BzYNp81_bOFSEZR%3DAcruC2ms76fCWQGit%2B%3D2QZrFAXpGqg=
%40mail.gmail.com.
