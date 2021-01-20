Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBVXAUKAAMGQEQFYU3LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C27C2FDCA5
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 23:36:08 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id t5sf212914qti.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 14:36:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611182166; cv=pass;
        d=google.com; s=arc-20160816;
        b=hVX4JdVVLYSZRK3gCXwHuie1kMJ9TLmda0JXhETFXqoIWU6mPUB2QViEEf6f9rmK1L
         TxC2li60zdVeI/uQfyi/eER0l+GYg+AKXtTJwPiF32gYr8oOZGeyBkyoVO370w5o7wLe
         X6/jJdXG7qT2OIyd72xfOyh1itPVLAc6L/hVKJ0IF3/5Lty7895fGDlttNBXe2o13qsD
         L9wwR2jlufDqdaS9EcWejCfulBfWzZ3behCYQMOt02YndyX+MoUuXGmDLMomeMISw+5T
         reBXdnqVQK3PpXKAQmtDd9vZ9duT8WE0saiagc12yJmrTYBWzeCqDsFtOdVrpDRLXxD4
         C+lQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=QtpJovEr2uSR23AhQK1ycdw3ycyGMnrjGdo9Edt5daU=;
        b=BtB9peVcFJWtNSJlo1PSWGwSTKMCVozsai6clTLiVbBNQcYYTSO5YnpF5yFm0UEqEF
         jTIJmINioVZwBwzcdHQ3mcIJzQNu1IraVLklr59Nhm0HtE21SXaQMrmED7K56kzk5teu
         Wz2iLdLL5+31EoYyDOV+cReMnKkj1zLRLZe+072qszYpm8nwQUwy1SVuZYEZM5WkLobz
         ueWDCIHxZe4y0hXrc6WU1AQSTM6idwFur6SOLWkhXI7fr57GfhFmi5iQlHQpCOQdPNVI
         pbPofjqjJ1M7LUw4tf1C7RoO3WCVkIfTXC2SkDL88F7quBOdQ3JqZRGjOyYdDcHe1iKZ
         lLtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PhcWL8vb;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QtpJovEr2uSR23AhQK1ycdw3ycyGMnrjGdo9Edt5daU=;
        b=llEpEAOaCragoMJUtRsSl2KJeqY5/YTQTkCjuqP0BYiOy2ujVO/a9O5mpuDIrzwrST
         iDrCWj4j58Gv9WRNEEAgeAStEGdbhd3G3tWbt52Tmz60Q+nyD7jDOVG0sBKheN0801CQ
         Cy2NV0DHKdlWkOXNKZyu2iaRjFICBpMWFtbgWuQj6T1UXoZSzVpqJrZAy66/tkqu/+uv
         lRf9/JbKMLPZlVJfljS7nTV/29eKVlFyethjVgs5xMtYqICqIf5NkCqw5kk+4e/GGQ/+
         cjLsDzZkqIdCgSlP4GsgDvh4jBLqzjv1Yc7kiw+UUmvNCSkiBwtAxSShJG5n5nf0HfYG
         nO9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QtpJovEr2uSR23AhQK1ycdw3ycyGMnrjGdo9Edt5daU=;
        b=g83SZZTQOmupHGGPwNgQA91T8gKjI2XcMfX0NzeAT7D8AHwLiSNoMkNYfxG/eCJ8K1
         EIYQP8YoDcf39d0/s3z8hxt+g5gAhcxvgWBAA7l+uXuqAR8S95vuDbO1PGcwhoJApDob
         u/x/EzGPqh9hUl7+bbPIBy0awiIknm42LiyjV5E71vyDSsbeY+S07BDzFgRjfF0ghOqk
         GTu6YzpUaDWYOE4tfphRrnkMjPkUfsmMkcDK5ygDamdBa3qar+/OsKeXrxnQR3Q8FwfY
         VXk+ujVTurBQmqamQEfYW17i3yDAW5bon73kE9bx8TxxRxCd41F4vjILKFwTmwP90EuC
         JnzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300wxeeWL1/LcHLHsyrnxEbzPdlt4RmnlHC9cMHYz8dUEI7O2Az
	BuHuXycGPtYOJepJ2k8p+AQ=
X-Google-Smtp-Source: ABdhPJyBPolWZN/N6pTGAJVCKIvOf3z2aDkSI5Fns5CPBmjLPdVe25pFNTaXUPKSZnei6NIhqdqg+g==
X-Received: by 2002:a05:622a:20c:: with SMTP id b12mr11104342qtx.208.1611182166783;
        Wed, 20 Jan 2021 14:36:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1c91:: with SMTP id f17ls92627qtl.9.gmail; Wed, 20 Jan
 2021 14:36:06 -0800 (PST)
X-Received: by 2002:ac8:66c3:: with SMTP id m3mr10762471qtp.48.1611182166398;
        Wed, 20 Jan 2021 14:36:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611182166; cv=none;
        d=google.com; s=arc-20160816;
        b=p4N9obWcy7lgYjy0UcrLxWf34pXLhkYXOP6c/PThWfaqdL22UpDivvnPoR/KAE8/i4
         kwl2mVft+nvtmqkmMVAlDTSsIlLJR2Jt+7IzSgt1nbht5p8O1H4EDLpZ7w0obdEvO5L6
         N0fxeKaqPDib/R2qNYLCehMDAgB8czkBlP+AVYfZLzR0Kagxz2KhbCMhebwdpt+Wyz9T
         TAvygiJSbHQbUrLVEReaJqaI/lkustvRZXSHFAk0qgf3jAK1MlB78ETqv6e28Axrfh4Q
         hrTXoc/g8uvfR2w3OZn9LCo+EIQMOPeC30uXAafKtvKCtGj/47l2gzDw9rUM/OV+sgna
         Y1Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LP0iiQuizg9LomNFlz79SVokUpxYY8lm5HUjpUc5rfc=;
        b=AED5UG6pTy4fzcrX1Jj9mbsk109n52K+46sHVhXb2m9WkP+AuY7AfCVhrflJQG0B6v
         nA9WmwC4fHMMc0mHsJ3gtfr+epD6xku7VPga2ptKwpo5C00/epDEFegWgLoO/nCI+P3U
         tv7OpbMhq1nkJxdWqs71CxMK5b9fyPBdaHeGsQhG2k0SUOzyEHPq9n8XkxtJ3SADQ0Vq
         MyG8OUG69yENqqJfBlCisScWCOwS8znVFEKOw069a9mGDB4O+TT3oOUe2RUTWQxqipfq
         d0gV+U2d8Jy6fxfxRfbCssk0sK5ln1Rjol5r7KCJ0RM9dZlX3bhh1F4gU1sommuUEblE
         aBYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PhcWL8vb;
       spf=pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id h123si254895qkf.6.2021.01.20.14.36.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 14:36:06 -0800 (PST)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-111-Ox147a_8MbCpG6Q2Jqcg1w-1; Wed, 20 Jan 2021 17:36:04 -0500
X-MC-Unique: Ox147a_8MbCpG6Q2Jqcg1w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A9C51AFAA1;
	Wed, 20 Jan 2021 22:35:58 +0000 (UTC)
Received: from krava (unknown [10.40.194.35])
	by smtp.corp.redhat.com (Postfix) with SMTP id 351176A8E6;
	Wed, 20 Jan 2021 22:35:47 +0000 (UTC)
Date: Wed, 20 Jan 2021 23:35:46 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Quentin Monnet <quentin@isovalent.com>,
	Jean-Philippe Brucker <jean-philippe@linaro.org>,
	Tobias Klauser <tklauser@distanz.ch>,
	Ilya Leoshkevich <iii@linux.ibm.com>,
	Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>,
	Yulia Kartseva <hex@fb.com>, Andrey Ignatov <rdna@fb.com>,
	Thomas Hebb <tommyhebb@gmail.com>,
	Stephane Eranian <eranian@google.com>,
	"Frank Ch. Eigler" <fche@redhat.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Davide Caratti <dcaratti@redhat.com>,
	Briana Oursler <briana.oursler@gmail.com>, netdev@vger.kernel.org,
	bpf@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-kselftest@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH RFC] tools: Factor Clang, LLC and LLVM utils definitions
Message-ID: <20210120223546.GF1798087@krava>
References: <20210116095413.72820-1-sedat.dilek@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210116095413.72820-1-sedat.dilek@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=PhcWL8vb;
       spf=pass (google.com: domain of jolsa@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
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

On Sat, Jan 16, 2021 at 10:54:04AM +0100, Sedat Dilek wrote:
> When dealing with BPF/BTF/pahole and DWARF v5 I wanted to build bpftool.
> 
> While looking into the source code I found duplicate assignments
> in misc tools for the LLVM eco system, e.g. clang and llvm-objcopy.
> 
> Move the Clang, LLC and/or LLVM utils definitions to
> tools/scripts/Makefile.include file and add missing
> includes where needed.
> Honestly, I was inspired by commit c8a950d0d3b9
> ("tools: Factor HOSTCC, HOSTLD, HOSTAR definitions").
> 
> I tested with bpftool and perf on Debian/testing AMD64 and
> LLVM/Clang v11.1.0-rc1.
> 
> Build instructions:
> 
> [ make and make-options ]
> MAKE="make V=1"
> MAKE_OPTS="HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang LD=ld.lld LLVM=1 LLVM_IAS=1"
> MAKE_OPTS="$MAKE_OPTS PAHOLE=/opt/pahole/bin/pahole"
> 
> [ clean-up ]
> $MAKE $MAKE_OPTS -C tools/ clean
> 
> [ bpftool ]
> $MAKE $MAKE_OPTS -C tools/bpf/bpftool/
> 
> [ perf ]
> PYTHON=python3 $MAKE $MAKE_OPTS -C tools/perf/
> 
> I was careful with respecting the user's wish to override custom compiler,
> linker, GNU/binutils and/or LLVM utils settings.
> 
> Some personal notes:
> 1. I have NOT tested with cross-toolchain for other archs (cross compiler/linker etc.).
> 2. This patch is on top of Linux v5.11-rc3.
> 
> I hope to get some feedback from especially Linux-bpf folks.
> 
> Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> ---
>  tools/bpf/bpftool/Makefile                  | 2 --
>  tools/bpf/runqslower/Makefile               | 3 ---
>  tools/build/feature/Makefile                | 4 ++--
>  tools/perf/Makefile.perf                    | 1 -

for tools/build and tools/perf

Acked-by: Jiri Olsa <jolsa@redhat.com>

jirka

>  tools/scripts/Makefile.include              | 7 +++++++
>  tools/testing/selftests/bpf/Makefile        | 3 +--
>  tools/testing/selftests/tc-testing/Makefile | 3 +--
>  7 files changed, 11 insertions(+), 12 deletions(-)
> 
> diff --git a/tools/bpf/bpftool/Makefile b/tools/bpf/bpftool/Makefile
> index f897cb5fb12d..71c14efa6e91 100644
> --- a/tools/bpf/bpftool/Makefile
> +++ b/tools/bpf/bpftool/Makefile

SNIP

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210120223546.GF1798087%40krava.
