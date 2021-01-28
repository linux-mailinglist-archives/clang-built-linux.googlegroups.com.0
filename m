Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBQ5HZCAAMGQEIO6FIWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C2A306A5E
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 02:30:44 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id p19sf2182383plr.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 17:30:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611797443; cv=pass;
        d=google.com; s=arc-20160816;
        b=yr9fd7rCOfy+JeSIWjJVGvebG2zIzsdpuq4KRn+Rdejzv6c6dvXWbrP7fMAYifGaxV
         mBagESPut3WCUYvT0pJqFyBdRV2DlvJMf/7veR2U731q4LZsMlKPHvepb//kIL6f7fxJ
         ed9OJKgR8nm9H/EfX7g6+DSQ1+4g6nnoqO3bnYl9HIBN+GlPzOTc9b9mik2bUbfPuV9P
         BBa3xTBxIQrEbaMVJo1OpXNV/u6jomLsvxSdNq1L85H4AnjY8aWoWNUDfzXFb8y3Ey75
         yJcZLH1l9/4CkO+LlLP4neqGpsNzGpp4GKh0UmQXF6vuMjM7ww4DQ2uD4bqkJwO82v6L
         3vXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=3trHUVh1+KxN8g5qHh4FKlU2Ncm+li9XnoKHxfTcBag=;
        b=LvrsEblKmw+Ax5oK67yYylkgn5V77G63vDOybvBHhq21GhNajJ8jrpeuiuTjlDTM8r
         RO8nVw4GCD9/lqs4koWDx/grI/DmrHLl/dwIzb1a1MFhVMSmQAz1shtN6NGf6CQvrhOg
         Uwvci9/pdaKonH3cQa71s2PM7ljq0+/TmvvAspYYX4UY+Y+ia+goFDRYjD1nFtLZlhXz
         SxGEbn8QJrZrzttNRLtHDTPQ9kir/7bH+l4Xlz0+pPkDGJVA+z3CuVEqEuThqlH3mYzk
         MLIz2WlY0e68OFFeBkWYUlRFFzh9uwm9dULiAQH4p2YxwwqPDDMhxi/2tojUtE3f5eqE
         9/2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VEpiSbCf;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3trHUVh1+KxN8g5qHh4FKlU2Ncm+li9XnoKHxfTcBag=;
        b=Et7cC2cyohAKDispJQq0ETcNd6p18/wA0zlUnLpFH104YWWYn/ieUBpslfx5exIVsW
         GY6c7siXimbs9bGD11RjMNt+9gBtm2Me53rO3MS/qd0MMKFf1PLUQsWTY1tBpO8j+YpB
         B3NdyS/XjSvN+NfO7jFG7u1ASof2Kx6Z2eF0IimTgyHBME8w17DiEiRdcYmm66d3sP8N
         ljSBHnD4ti5F3BEuQmPN9Z4pRglEYmOaf285CdkrNMijQVm+lHrlhlZYOpxaf3BeelmR
         Od63HeI50B14tfsKDikzoynPgwCFFSbUJ7pUnDyiyRGLjbkh+KMEV66qB4/mIB9hjeky
         CRQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3trHUVh1+KxN8g5qHh4FKlU2Ncm+li9XnoKHxfTcBag=;
        b=rD6cO2TiEdCyMf6k9mz58SlTgi97eosOnLWMvxHsDRbBCWRMdhiUkHLSe72YIX2ASq
         Bk9S4l3Q1Ewu7PrZKFX3v9mgqmXaZbJFWk/KKjD0wwp68jI1GuNZ/+6hHtPkmL7ipjTL
         1Qj6Y/B//IZXriDZNM4Brz17xd+SnunEpblYOXPWAbGPXXYX3iaHTLjEUY2oHbmAbCGw
         ik4DE4PeFapk3pvKHgrzkSTdp+SXiITjtSJI2ATSNP4HdyRUUjb2CZGl/0sSIs+nE22f
         W8NX5CUZVRXPBXEFoRqdike6OBuSmxBs7oCSjSKHiZdhrkMxRej1sgadE1otY1yUH6Fv
         1FVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3trHUVh1+KxN8g5qHh4FKlU2Ncm+li9XnoKHxfTcBag=;
        b=Hrk4aG/u38zuQLCBclL5nuiIFKFahqSQNG/4pfzdStSVU6K91UJRf909EBvBvNjW0I
         xueL+pEsWkHW+w2YFUZnBtHghp9zCIwccY0hsB+zlHUTNVW08NcDv902tk7PLZww9Sid
         u6eLtbdM5VukfmEPXdEUSHDLy1uCs0b8dVZA3FgF8fWtEOIw46ZGRfhcTOGN6wVPsfeE
         VhOHENoYfeORYH3OBy7mbsEDQBrYrJ7Ln3fiLAE5igEAn9dUOqSBRe/MoPZGdudGYJT3
         XZuSpGhvTa3B8TTNhCynYW+O5mtYKFmiasim1Ua8agwZ4urnnfSmpRjEm1Uu5qId6vEM
         CoJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zo9vkQh6p0te4JzuxDttwjt6J4AK4+l/enVw4/2nly5cMp24J
	0SFCZW8aNV6pl9e9ETQh+/g=
X-Google-Smtp-Source: ABdhPJwgjjJHLsw81SN/nP9Hyt0paiNLEo/q23cS2UEUQmWakcb4AC7AOx09ArpBNbRKM0MTLfAuRQ==
X-Received: by 2002:a17:90a:8d84:: with SMTP id d4mr8593074pjo.56.1611797443374;
        Wed, 27 Jan 2021 17:30:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a609:: with SMTP id u9ls1841242plq.7.gmail; Wed, 27
 Jan 2021 17:30:42 -0800 (PST)
X-Received: by 2002:a17:90a:9414:: with SMTP id r20mr8878735pjo.158.1611797442296;
        Wed, 27 Jan 2021 17:30:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611797442; cv=none;
        d=google.com; s=arc-20160816;
        b=iVI4zCbRAkiJiSNiByvZibaHet3nyWLZsJJOJqkkg6brY9g2ZBeHnWO3HsQeGtATIM
         pL5QhM3GMECKsY9oDehX7iFfRTs2ovUQ5UyhSsm0AL3JEvFXlay9l2UFR4J/ez8BjwW1
         uekb4OPyUdoMG6xo+lJvq/zsg5dB1unMpXBbXyAXF4sRodU+lmFaagf47GAjJB1citoc
         Q7+3zXMblMSQPrwvrpQQa5L6oKPtMb5DMgjfYVgyu+UFMTN32QsDQZH/0aCLLVpVKxJO
         Tx6Zyqr0vDfTvXWk1snyiHQe1ytP/1W8OaP8fmtsmntT0ebUy488qIMPF1Me6Yu18/Xf
         /qdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fPG3ZtOj2gQfse8nMNhqlz0mkZ3a1oBf9GMrWLJa6Uw=;
        b=eSY7ucuz9g6cFPwzygDaFcTQuRWwsR6r1LgW7HWEwLdCrPnX3v/iFSokhkd0yVt+3W
         dwFDy+egADQTDi5mBqep31bXCqSkjBrGs1rwgyV2x2D9jljhoJFOZllm7hUW05IqRkP1
         EVgmwNsXxN5SWJgJIMPIoBKBV5HopeZXVuR+K1/ZlbhyLBoTaeoKQs3gnrLfyvHC0XiT
         e56xdyAPMqWxsEByw3Zthwkxj0jdsq6Wm/wH/h32v3aBesCeXHEqUPamx/A+4aYZdoFK
         aNIR2vexA6Z0X+UdBcR8+aTmOsC9f2/P8QFicQPBhS4a3ZjbPdxh+RmjbYdD51OOthxs
         SNNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VEpiSbCf;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com. [2607:f8b0:4864:20::133])
        by gmr-mx.google.com with ESMTPS id t25si142332pfg.2.2021.01.27.17.30.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 17:30:42 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) client-ip=2607:f8b0:4864:20::133;
Received: by mail-il1-x133.google.com with SMTP id y17so3760336ili.12
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 17:30:42 -0800 (PST)
X-Received: by 2002:a92:c80b:: with SMTP id v11mr10864577iln.215.1611797441911;
 Wed, 27 Jan 2021 17:30:41 -0800 (PST)
MIME-Version: 1.0
References: <20210122003235.77246-1-sedat.dilek@gmail.com> <CAEf4Bzb+fXZy1+337zRFA9v8x+Mt7E3YOZRhG8xnXeRN4_oCRA@mail.gmail.com>
In-Reply-To: <CAEf4Bzb+fXZy1+337zRFA9v8x+Mt7E3YOZRhG8xnXeRN4_oCRA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 28 Jan 2021 02:30:29 +0100
Message-ID: <CA+icZUWVGHqM00qd7-+Hrb9=rkL6AvEQ7Aj8zBK=VPpEi+LTmg@mail.gmail.com>
Subject: Re: [PATCH RFC v2] tools: Factor Clang, LLC and LLVM utils definitions
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
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
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VEpiSbCf;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 28, 2021 at 2:27 AM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Thu, Jan 21, 2021 at 4:32 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > When dealing with BPF/BTF/pahole and DWARF v5 I wanted to build bpftool.
> >
> > While looking into the source code I found duplicate assignments
> > in misc tools for the LLVM eco system, e.g. clang and llvm-objcopy.
> >
> > Move the Clang, LLC and/or LLVM utils definitions to
> > tools/scripts/Makefile.include file and add missing
> > includes where needed.
> > Honestly, I was inspired by commit c8a950d0d3b9
> > ("tools: Factor HOSTCC, HOSTLD, HOSTAR definitions").
> >
> > I tested with bpftool and perf on Debian/testing AMD64 and
> > LLVM/Clang v11.1.0-rc1.
> >
> > Build instructions:
> >
> > [ make and make-options ]
> > MAKE="make V=1"
> > MAKE_OPTS="HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang LD=ld.lld LLVM=1 LLVM_IAS=1"
> > MAKE_OPTS="$MAKE_OPTS PAHOLE=/opt/pahole/bin/pahole"
> >
> > [ clean-up ]
> > $MAKE $MAKE_OPTS -C tools/ clean
> >
> > [ bpftool ]
> > $MAKE $MAKE_OPTS -C tools/bpf/bpftool/
> >
> > [ perf ]
> > PYTHON=python3 $MAKE $MAKE_OPTS -C tools/perf/
> >
> > I was careful with respecting the user's wish to override custom compiler,
> > linker, GNU/binutils and/or LLVM utils settings.
> >
> > Some personal notes:
> > 1. I have NOT tested with cross-toolchain for other archs (cross compiler/linker etc.).
> > 2. This patch is on top of Linux v5.11-rc4.
> >
> > I hope to get some feedback from especially Linux-bpf folks.
> >
> > Acked-by: Jiri Olsa <jolsa@redhat.com> # tools/build and tools/perf
> > Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
> > ---
>
> Hi Sedat,
>
> If no one objects, we'll take this through bpf-next tree. Can you
> please re-send this as a non-RFC patch against the bpf-next tree? Feel
> free to add my ack. Thanks.
>

I am OK with that and will add your ACK.
Is [1] bpf-next Git?

- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git/

> > Changelog RFC v1->v2:
> > - Add Jiri's ACK
> > - Adapt to fit Linux v5.11-rc4
> >
>
> [...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWVGHqM00qd7-%2BHrb9%3DrkL6AvEQ7Aj8zBK%3DVPpEi%2BLTmg%40mail.gmail.com.
