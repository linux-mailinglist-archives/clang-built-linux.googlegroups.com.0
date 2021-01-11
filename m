Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVX26L7QKGQENVHF7PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBF82F2172
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 22:04:23 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id r13sf70696uao.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 13:04:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610399062; cv=pass;
        d=google.com; s=arc-20160816;
        b=E1lO2RqfdP8qL4JrUWskQFOaG9Yf4cmd9aWiyrA4qV56ZFFrvY3djNXdLZCGiVwdpd
         aDPjUv8QEvTDHmZlEgDEXyQWKdqllwVufyK+ybgy/lL3Ipr0T5Snj2A7ApVBcAgkxTFl
         t1CclpAF+y1xU7Y6XWAjuY++kqxqCd1kBHBbbuTU1inxHGaZNA9eVisM7cFQ+Jiaigvk
         EpUholO6IMr7jWLqQNfdSGS4CmV4f0eEkWm+QEe7v8kOCysxI/2kHo1TCY2kqiWus5XP
         H4cZDjpRafh9ThAUJqgveWwHbHeEDtrHXnMKLDe5PDlEfbB9DBqzBGPipxm79RXyQka4
         bnbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=T1g48d5VVURQEfqswkWvXzX0Uf9XUVrAH8whTjUEl5s=;
        b=egq6xiH3Qit8Gs6D0geXQ4lHwrht+ZBDkkg6XdI4Q8cwmYaQe4bBRTtC6DdVXh5sPW
         +cv/9cyopekhIRWQCcv8FJBeggLtu1Zmqin1FptbxiVdmB9g9/9erekzUvWA8LoAY4+C
         pfOrqQqjrrBeicyhJOkZtMpinC1ZfYeQ98HgaeUKlxUQtvDJsog9BqMLaQVTqc33dzQ5
         kPptyLgRebAjzyBFWgms27faIQy2UIP0Akz3MgzdABTjg+84yQJdEkRhVO+4Ko4rkRMM
         dkzmkk3watnjHdOoZOgVhwAzTBnhcRoGbRgZ0OctA47YKBZLtRyCnjyQftrMkW5ovSOd
         hR3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OXMlL0nF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T1g48d5VVURQEfqswkWvXzX0Uf9XUVrAH8whTjUEl5s=;
        b=KCAd2aYtBk7vE9VV9tR3Z60T9RHsdWgEjUVuH8ryyDtbnTzXiiU/kq3HAhd1aRV7Mc
         mSY3cCuRKt6JBX94HzdRYukEYY8cYdHKQFsHXPtv8UZoyMpherKSJaluPOL88PQISQ2A
         9RiEeb0187eD/cy3Y74xnTfW/miD4ndu8g5Wai7CqfmP3DwM+epMDvHtyWTR4f0ejERy
         zNXS5WqNjqjPLMg7Zt5oFoJKpBjkfALS1coyOcbUVHGBNvt2pPgCK3+SFfzzaiZKZJt1
         SFkEoMHQRDJzCJX9pYBTvjvwvdBHEnagEE6ZrznV6EYqzichdI7mpb1CQSX8DDwUiYDn
         t4Fg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T1g48d5VVURQEfqswkWvXzX0Uf9XUVrAH8whTjUEl5s=;
        b=n5GiRT93wLZu/yBuvG45h9E0ibBNkWy+z/7Gy760uG5i/7cmAceZBSGdN8CZktI1DT
         EffKTcUQh8lPNYSyQ/lh1aeTbYnoJjN83jtQ2hCobhj7A26rkH9O20tWPYphMmJAMzwS
         p7Dxa0Z/Lzp/4Rt5CmVc8eq2iItpREZNZMQadS861yv/3JdjboklyRP2Th0tZ6OBOG2E
         sIRt8exIDxx8OBoeahjhZtVYLVNHCZRtTyPo4Cyvz9/oOIMaeVpq6yTv4PdWJ3txNHPs
         VTPmmDzZRsy9SXmRVyfLgi03+jGl6Am+z9mUqtTW70m3OMScwR1eXBrZwdhLvwlms+DI
         CO0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T1g48d5VVURQEfqswkWvXzX0Uf9XUVrAH8whTjUEl5s=;
        b=OeX3Ska2V6Oa2qlkWecg8+KMIYXAbFu6WF2X2JJsGWNpEsTnh6a9Hy+2a+OFMTlqv8
         OmnAR9lviXCoUEkuOAhwSyrrBFkpHsdGhWv93huTm0aylU5D9x8BRF4LDIMPEbkAx1yA
         cud0DcfYc6WwZDNMnwd8VURvvdSlIkYHWks+YEyYCtYOz/cA+Cbwj2iguDc25I6OkV17
         5rk43N9x2CXL3Y/WYyh/w3czP3DDIs2aMLzuZCZhVdWGQy6+bQ7MGn4seK0quEHW9Fdr
         K2VUtPTv971KoGY3hctnwj5U3rWBGK2FcnXUoSIWHRYMY3gBeuF1bLzRLUEM6J7m0Yoa
         5d3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532fL/mRskEtYpXY/IZay4UJmztoNCfzr09ON/xgpG8J4LBUqG3e
	iBY+WJumCebG+psntmzk3N8=
X-Google-Smtp-Source: ABdhPJw20nqR3isFRkah/oFtuUhuWOTCExdPQ+48vprDAZVfDGJkIOb8ZywgXhRImmtrh4mSmnUjgw==
X-Received: by 2002:ab0:113:: with SMTP id 19mr1272104uak.71.1610399062263;
        Mon, 11 Jan 2021 13:04:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:208c:: with SMTP id r12ls59274uak.8.gmail; Mon, 11 Jan
 2021 13:04:21 -0800 (PST)
X-Received: by 2002:ab0:146d:: with SMTP id c42mr1347798uae.56.1610399061876;
        Mon, 11 Jan 2021 13:04:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610399061; cv=none;
        d=google.com; s=arc-20160816;
        b=mSeC+/p37PdhtMtoGDbrFFJ6TU7whli8uQmpIIa5c//BYNcNHC0hzM3wUVw/f8YROx
         t6rcCLlv4/4ijOOdTJgKyTxLqr91YTv4qT4+dy7agruUW8rrsUzwXzm2TUMy9uzATvCf
         hp/+mDcFdCO84h2CBXs+cjf0X2LHNO/7tmINOPyt69KUfZAL+pq+pcoFgL8E2Y5LUOVD
         lyP6ZJPL5NZps/Epse7CvTIBJAtzsz1zrpQ44l6SUbGv/XKr1wpv8JOzkh0/JAAVY4To
         q9R71zT8nLF7wcyBartjyh44oYCKYfE854eTiywaCK4HbT7TdpdlfHqOtmvnqhAyVGp+
         OlXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=N/JvOTzwKH7g4yOdOBaQJ0iIJUcwItzyG+gczSopw4M=;
        b=f70fDXpY2OlN26qfXJ+cLm5v2eRmBbrSCVs/LBw1UxWfyLZtOpKZ5apfGlkYmME/qx
         WVdVpd7eHrwUfU3bw5wJdF4m677/ok9SbUuwbsjJZIGakJqqwmaU4YU8M0SRNkM2nmxc
         m+X54DlK+APRO0bkzQ0Yh84ZvGxvjGni9/cqH1zdhQQ/1ZR3FpbNoEj7ZM+Qb1RkjLSX
         8O8KdlvmeDEQQjnyTfnZEsE6D1g1sPsoXmv/PrjXTDz/uN4xLCYOty6AYY8oGu1WSoet
         vrmtBSQwlUeLRufa4ZdM5w1qLoy1y7jWpCvS9zG2gFiQcttmIe1AxOsYUxKWanMbvb8M
         dkag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OXMlL0nF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com. [2607:f8b0:4864:20::d36])
        by gmr-mx.google.com with ESMTPS id v23si72721uap.1.2021.01.11.13.04.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 13:04:21 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) client-ip=2607:f8b0:4864:20::d36;
Received: by mail-io1-xd36.google.com with SMTP id o6so1115650iob.10
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 13:04:21 -0800 (PST)
X-Received: by 2002:a6b:b5d2:: with SMTP id e201mr858966iof.111.1610399061403;
        Mon, 11 Jan 2021 13:04:21 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id r9sm547004ill.72.2021.01.11.13.04.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 13:04:20 -0800 (PST)
Date: Mon, 11 Jan 2021 14:04:18 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Bill Wendling <morbo@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <20210111210418.GA3660906@ubuntu-m3-large-x86>
References: <20210111081821.3041587-1-morbo@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210111081821.3041587-1-morbo@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OXMlL0nF;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Jan 11, 2021 at 12:18:21AM -0800, Bill Wendling wrote:
> From: Sami Tolvanen <samitolvanen@google.com>
> 
> Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> profile, the kernel is instrumented with PGO counters, a representative
> workload is run, and the raw profile data is collected from
> /sys/kernel/debug/pgo/profraw.
> 
> The raw profile data must be processed by clang's "llvm-profdata" tool before
> it can be used during recompilation:
> 
>   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
>   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> 
> Multiple raw profiles may be merged during this step.
> 
> The data can be used either by the compiler if LTO isn't enabled:
> 
>     ... -fprofile-use=vmlinux.profdata ...
> 
> or by LLD if LTO is enabled:
> 
>     ... -lto-cs-profile-file=vmlinux.profdata ...
> 
> This initial submission is restricted to x86, as that's the platform we know
> works. This restriction can be lifted once other platforms have been verified
> to work with PGO.
> 
> Note that this method of profiling the kernel is clang-native and isn't
> compatible with clang's gcov support in kernel/gcov.
> 
> [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Co-developed-by: Bill Wendling <morbo@google.com>
> Signed-off-by: Bill Wendling <morbo@google.com>

I took this for a spin against x86_64_defconfig and ran into two issues:

1. https://github.com/ClangBuiltLinux/linux/issues/1252

   There is also one in drivers/gpu/drm/i915/i915_query.c. For the time
   being, I added PGO_PROFILE_... := n for those two files.

2. After doing that, I run into an undefined function error with ld.lld.

How I tested:

$ make -skj"$(nproc)" LLVM=1 defconfig

$ scripts/config -e PGO_CLANG

$ make -skj"$(nproc)" LLVM=1 olddefconfig vmlinux all
ld.lld: error: undefined symbol: __llvm_profile_instrument_memop
>>> referenced by head64.c
>>>               arch/x86/kernel/head64.o:(__early_make_pgtable)
>>> referenced by head64.c
>>>               arch/x86/kernel/head64.o:(x86_64_start_kernel)
>>> referenced by head64.c
>>>               arch/x86/kernel/head64.o:(copy_bootdata)
>>> referenced 2259 more times

Local diff:

diff --git a/drivers/char/Makefile b/drivers/char/Makefile
index ffce287ef415..4b2f238770b5 100644
--- a/drivers/char/Makefile
+++ b/drivers/char/Makefile
@@ -4,6 +4,7 @@
 #
 
 obj-y				+= mem.o random.o
+PGO_PROFILE_random.o		:= n
 obj-$(CONFIG_TTY_PRINTK)	+= ttyprintk.o
 obj-y				+= misc.o
 obj-$(CONFIG_ATARI_DSP56K)	+= dsp56k.o
diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index e5574e506a5c..d83cacc79b1a 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -168,6 +168,7 @@ i915-y += \
 	  i915_vma.o \
 	  intel_region_lmem.o \
 	  intel_wopcm.o
+PGO_PROFILE_i915_query.o := n
 
 # general-purpose microcontroller (GuC) support
 i915-y += gt/uc/intel_uc.o \

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111210418.GA3660906%40ubuntu-m3-large-x86.
