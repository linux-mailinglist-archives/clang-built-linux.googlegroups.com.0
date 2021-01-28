Return-Path: <clang-built-linux+bncBCTYRDEG7MGBB6NFZCAAMGQE5D7SF2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 596B0306A54
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 02:27:22 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id a33sf1076942uae.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 17:27:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611797241; cv=pass;
        d=google.com; s=arc-20160816;
        b=CnRsKjFhEx0rRuOgFM41ak0wzG7uE2wEg2dnSvMxPHOrZPES5fbY0VN9JUyMgQ4eH5
         pgGTSYDuBxK1WFHkUTcjgs2n/V9Sn/ercI6hq/qp8P2x/45j634G8sHNuvo0IlW1lz2T
         COlR8joxcRTW9QACt2LyujWyVDveAeZcLGTYyxH/Cl/5RbWrH5wnXIjP1+JsO4J3kZnz
         tz+BSAI/9H7u63REGImbCkGsIpDKW2GenPYMNjgULUt/lRyfC2C8Pt9fDGq+FChsWASD
         HInAaJPSq7N0ESELgdx9bkCAEs9hrydFkWCiWNTSyGiaGU84Gjd3QVavLNPwId6wICDg
         md8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=xJrw59pqEvSxU/AywUeeAVbhRPae7oP1moLuPZBV584=;
        b=Zgts/f3zYXQa7wgwG+1x5sdDXwR/yf1/fCTdUmdTfMBMGvPtm45GA6uQD5k+IbXAAp
         Ne3tjZgypWWpMPGuetG0ApenUHn2apDJl+r+x228CeftemF8t4/WW9t5xF01NG82QEr0
         tARV0qBik9M9QP1QNi2QJhA5UnoLz57aFnrL2+hwl2hOKmwnaUZELEBwA6ip0OAnNxhv
         irbEqURD2JmG9ALVjUbLpCQNYWtmmaaVbM86cCDgOsC5tHNgAnNlOpFkkKJTVcWayD9v
         zZBwmHR4aTweeJW964bGRnto1yA78e1mNK0d5dRqJAjjVtYA1kokZBqrcQeUgRJ2Ro2H
         c1tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PkD0nc+w;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xJrw59pqEvSxU/AywUeeAVbhRPae7oP1moLuPZBV584=;
        b=VCVq0KXs3VnQqOZT1LgOugUH9cbaZB5ICpZZ8PJpw463wdfV97rs0nus6xjXwkuQaq
         eivnqpZXmfxcIX4M0v8Bch0h0tFnjH0eAhzSRHIu+rxQwWNtE7eYytA6aihsq/WOPh4n
         UU+WpAhhUAb04JVJiIcfiTNrCciqDUTXoGo/NYqYjtQqRDkQafn8Wq4GKr+4xWc+6NY4
         hFtRS4Z3d/cfu6rtClbpqVa2D4zGQEjrY27Ely7HKFJvPhNlVCnU72eWpNzlLDICZ25Y
         ILSekPHgJ3fqflGQyeHZE/VKMcSV31MRvXoenRjLd1wY+cNR42UGT88gzPiSXqObVHl9
         VCUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xJrw59pqEvSxU/AywUeeAVbhRPae7oP1moLuPZBV584=;
        b=KLLI31rCYRQtXHk3R8tMWIuPojNNpDlWWlOKO1i9Q/eycFJ0+JKoXTzf+j1JDxKL//
         85vO8Zh6R29Er8nuu1b7jDcsMDORH8+RewxRnDiiQq/k3R/bHpw14d7mBx4UdwWP985y
         eaGvA+DwrsQQrBuLEZ1wm1Vhrjr4HFpLHkM4V/L6ddtqSlYsyyeh13RCXsNMEfi4buW8
         8L7C4R/q04inlpSc1GPrk9L+VZgy1VsG9hb6k3jokwq3FPLMZDE5kcpCBm098OD3ripu
         7ngkAwW1OcZVnynpbFPZPDOMK6B0Lz9ccySFgxrXGGAWkjZ6RYLD0AnoJd5z6fokE0/w
         0QXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xJrw59pqEvSxU/AywUeeAVbhRPae7oP1moLuPZBV584=;
        b=O7C1Op6MHUK8ceRnw4M2rcRlLoyREKwaV1o+L524WmwgZqFivRBEkslYaAtolC8KWC
         XZfnWsLpv3tFvIaEjzr1TDSFJIN7SNNfxItQeI+NgbTr78WnFS/qvak0iR9ISHGz7inI
         L2x8dzgbVmlmqjuDdQ7bOOFc9xM/s0gTzrYVPs/X3a1sgXAINS52Ty81waewJ17sK+y4
         uCPvsxmTvLdGT+TGdwmQ2avcB5kY+7hQYnE7BJ5GVKq/UAEDxy5s4HiuhQtYZEjGC4Oz
         oGrKOuXIlA3wzSt/ZciQO7g2UhfKFuSXPqmXzUP/e3hKFa+/yKgArf9X9Xbg/hA4/GYD
         cxfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532O8sTQF9kWSPSbaWmFa2mL9YMSeWaQCRVpo52xyCKKKjLx3kY1
	DBdEJIp0nW7Qh16Z8UK6kp4=
X-Google-Smtp-Source: ABdhPJxEQmpeNB9WK5bgsBjQolndUJbu5uO8skwGetRo9DxhLRXZtIbzWPNfuTOsBfHVbWw481Ix0w==
X-Received: by 2002:a05:6122:31a:: with SMTP id c26mr10420365vko.0.1611797241446;
        Wed, 27 Jan 2021 17:27:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:268b:: with SMTP id m133ls216924vkm.6.gmail; Wed, 27 Jan
 2021 17:27:21 -0800 (PST)
X-Received: by 2002:ac5:c318:: with SMTP id j24mr10230210vkk.21.1611797241005;
        Wed, 27 Jan 2021 17:27:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611797241; cv=none;
        d=google.com; s=arc-20160816;
        b=Ocm5+Q87Jj/71iMNZ17eSFy4dnwX/O2pipyy/ljUBICOMwyzwkOaqdYJ8aiUhHBbvC
         BvrbQxyS68V/9cjvKNgBcF6aItB7yxCx0cMDBWFLtiofHJrIVpoBYZxM9d7y3AZZiwxw
         cbM9+DzhcwFrkAYZmGpIPveDFBSO6Zi4bKXIEuQVJME+HHpKn8FOig4hmMIw0gciNR9A
         o+dPmctxq1cI2nuv9Amt94vnrJfCED/SMO6P5ZJIg3DGyl2SYgeC0Q854XPYIzupPsc0
         a/7gyI+AQFdecSgPxmQplj5qTDwAwCVm063i5pznvWnRe91I6rIP2bO4ypOejc+V9JAj
         Pfag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5oabX9d0jpF1qIOlWbNO/kMyuSTCKbx/P4GY6FSPWA4=;
        b=o2WHjB/vhchN7nEmGOruN9haBOAB4w1DE96SJCEfTN3ZiR65pZBCtgd8xelhNLFKBv
         i4rl3GqKmdq5D+/hFwYjBnstZeWtbt8n5a/FZ+YxR4gQtItYkWmzfBwvkobEJZi5daA6
         nFBbdgLtDYj/wRUdcPLOTlFKEHk5jLIen8CnrNeRQuvYqbeNsFn7XgI5/wwkQYgmpYpV
         WqoMeU3n22DJ0LKK0yzdAk3ukM4zRh6U/36tlr5osaCsJAPone4g+fYZA3G3VVo4YCVp
         Q1dKpuXn6CrtLu7SPBazo9UblfA9hZsELSFMKobCMfM9oZIEZk6ZuJtJpamZfub/8tEe
         du1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PkD0nc+w;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com. [2607:f8b0:4864:20::b36])
        by gmr-mx.google.com with ESMTPS id s196si180089vkb.2.2021.01.27.17.27.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 17:27:20 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) client-ip=2607:f8b0:4864:20::b36;
Received: by mail-yb1-xb36.google.com with SMTP id i141so3952835yba.0
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 17:27:20 -0800 (PST)
X-Received: by 2002:a25:1287:: with SMTP id 129mr19516582ybs.27.1611797240604;
 Wed, 27 Jan 2021 17:27:20 -0800 (PST)
MIME-Version: 1.0
References: <20210122003235.77246-1-sedat.dilek@gmail.com>
In-Reply-To: <20210122003235.77246-1-sedat.dilek@gmail.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Wed, 27 Jan 2021 17:27:09 -0800
Message-ID: <CAEf4Bzb+fXZy1+337zRFA9v8x+Mt7E3YOZRhG8xnXeRN4_oCRA@mail.gmail.com>
Subject: Re: [PATCH RFC v2] tools: Factor Clang, LLC and LLVM utils definitions
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Quentin Monnet <quentin@isovalent.com>, Jean-Philippe Brucker <jean-philippe@linaro.org>, 
	Tobias Klauser <tklauser@distanz.ch>, Ilya Leoshkevich <iii@linux.ibm.com>, Andrey Ignatov <rdna@fb.com>, 
	Stephane Eranian <eranian@google.com>, "Frank Ch. Eigler" <fche@redhat.com>, Thomas Hebb <tommyhebb@gmail.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Briana Oursler <briana.oursler@gmail.com>, 
	"David S. Miller" <davem@davemloft.net>, Davide Caratti <dcaratti@redhat.com>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PkD0nc+w;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Thu, Jan 21, 2021 at 4:32 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
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
> 2. This patch is on top of Linux v5.11-rc4.
>
> I hope to get some feedback from especially Linux-bpf folks.
>
> Acked-by: Jiri Olsa <jolsa@redhat.com> # tools/build and tools/perf
> Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> ---

Hi Sedat,

If no one objects, we'll take this through bpf-next tree. Can you
please re-send this as a non-RFC patch against the bpf-next tree? Feel
free to add my ack. Thanks.

> Changelog RFC v1->v2:
> - Add Jiri's ACK
> - Adapt to fit Linux v5.11-rc4
>

[...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bzb%2BfXZy1%2B337zRFA9v8x%2BMt7E3YOZRhG8xnXeRN4_oCRA%40mail.gmail.com.
