Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYGAV75QKGQER52RDWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF532764C9
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 01:55:13 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id w3sf1232489iou.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 16:55:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600905312; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dpz/x9CJ/bk8mb+7dnuOXwajzIDR0dsuiqIOwBNvbG90HMm0yEpzpqQoSuT5PjBiTZ
         EMD0yYR753d0l556ZzUZYAFQwbG14uaMHnTR06sf9wKqq3lzL4GW7UhlUX+Zxp4pYm/l
         Am7DLU4SGMN6Sy058y180rKyDKkeWTtXF6l/+ZFvsEdNQ60R401H4lqiWzTB1a8mVZYg
         iUHVCF7WC3Z6vzWOFI8qGo4SIPvXrrKHfodQ0TZE2iakVb0oQGkPH0wH+tJHnx7OxJD+
         CV1cU3MHChgtGQ8NGbTumZWJbEXvsvu+LFsWHbdWftn2qiOo0zNsgBKAMNz8KjUV/x3r
         j3WQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZDl3Pji+XHZ8kf4XCLgNzo3XyL6EnnNd3rXCt9Mkq6s=;
        b=jTnxfIB4GLD1jicJkp/MrWGtflnY/uTFPdbv8tQW52nnlKukjtvkaeuEN3rW+zyPPV
         avhXaVg2rucL1LqZHHGMg8THpZWOEs4I5es6H1dtzX8u2Y2gwTnfQC1MTch3bEYT+XDN
         64lfuXPujfSltBuEDQQ3lfb96RV142LCaPRFzv06oqJ+L1KGO5Hj3OlPZyqvpI1V+cwp
         XzRj6hHmIDo9MLcWTULctAl2xZpnFxtpYO5H0QTwSXW3c6dvr4qBvrQoSQ9Z26dk1F40
         F1IrbmqNowwYn25RLJdokMfGT9OJbx1FyeoAK8kIjUlY7BGY/CkeVXpyWKBdufIgrIRK
         CqEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J4lwwmAb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZDl3Pji+XHZ8kf4XCLgNzo3XyL6EnnNd3rXCt9Mkq6s=;
        b=DzuqaAo4I6VVW2KcueDTfO7dTe60yoyOkUDLEOVe4nd7f9Q2oxH98ZKKcDRNWYjLpI
         qOb3qHZ1FJhwM9JKkvhmEa8MsvKeNDjExjdR2FFvWxJJ2B6i6xImm+jYC+fj463JQie3
         WHb4p0xRZPM5DRei2xZ7dpheKUKY7jtHlbedLKdgQK7li/40+yN0vPP8nlzJzMnwgIA3
         X1arAIjAx9+j/qayxQeXCHMmnj0AvBCD31QujDNLRBRF6v+jcmqhgGkNMTp2hE49V/43
         ygOJbWYZf/kxiiurrHqR+W35a/K3JzhzUC5hBGJnbUs6fFbaPdD4B1qUeUz4DYswedIS
         3P/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZDl3Pji+XHZ8kf4XCLgNzo3XyL6EnnNd3rXCt9Mkq6s=;
        b=UEFEc3qYXly4sSg2PptVf7bJK6FrfcyNPIq7yZxGB5pp/vEmTfcMcNr5xBImC1E3C3
         bqrEIrh+7OJTfhgkJKtIS4i/Vf6pMt4Z5yzJBhrOQis7JmC/ZCtrZiseeP+6jd4W/Xnz
         s/K454LJiR2Vxj1JOSj33lszrDC547QYbemEhXa3SMVX13KBCB/etOVRcsq8QxlD9cCS
         ZpXuY926sYvmzVzLqAtsT/Q9sQrshoc/swnJVt/P+iQYorq5U2cdE16K9tk3/1Ym0Rha
         fxM+20AO31YIX2GdhmetrX1qfhrEOOOPRXBInlZBPnCHUSQzgVUlWTGZzU4THLdUDZnl
         KfRQ==
X-Gm-Message-State: AOAM531sRW+CEVgyhMQA0oQh7fs5Ho539bq6QQoaQt8/IMFdZ7vMXKY4
	3Hd6VTeppdKER+p4wD4UtRo=
X-Google-Smtp-Source: ABdhPJxJcs2AsTdZaubiHPwkMpe1FA4cDMxKxg6Ug4ZPjkpaTiaoXpTosU4GxGx6LE34g/lIJpecVg==
X-Received: by 2002:a5d:8b46:: with SMTP id c6mr1423642iot.69.1600905312579;
        Wed, 23 Sep 2020 16:55:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:a901:: with SMTP id c1ls209282iod.1.gmail; Wed, 23 Sep
 2020 16:55:12 -0700 (PDT)
X-Received: by 2002:a5e:8510:: with SMTP id i16mr1545970ioj.194.1600905312129;
        Wed, 23 Sep 2020 16:55:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600905312; cv=none;
        d=google.com; s=arc-20160816;
        b=t9MBPZtBSTDyaxRx3oKracT5Bxd/oEtYB2WH8cpU+UYIfkukauz++XhkGgZFRQHADJ
         5IwkJVHUr3T7W7CqbxKZ8wBo/XSIujOdjwBojYDV1m3JrDd3KWMkCvRDD66vi7jEnEYu
         IjXrlPBecVMSdwfH9YV46Xq7fNqjLgUX6j7juRjY7SH4VqRXerEGCFvSObu2iWOhTOQ0
         PwqK/t5S3hHHRCplaiBERuNW1ojDTPbsrx/CFmlxMVwOK+6dFITExGkAs5ar38bLatYk
         Ddkh61pvvCMwsBQmV1xkrWQJ/r8ADDqzxVQ6Zarr+PzfBSeQfXeuUmMV43Q/vazhqR0c
         IhCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4bm0saIXpXLlCN/wnzF6CGxKVmlqo22J3VlEQBsnfd0=;
        b=iQFpVUfCxHZK0JWRJ6FbR0Z/0Q5xSTM1LqGpvqIDQfudlIxu9Sl+Snf+6iZrLDMIOI
         akyPbPeZNeMf336ekR0hnzFGPVUL9MQagrw0OShULlExEsrpkt1JzRUsRMFuTuMzvuqm
         UvtTxhN6kfgfpnUn6E08Xuf2DK8kV9mWUTh+/0r3Gh5MRL1FmgnhftWSCQoPHjeUQ3Pe
         4d1Lkj1XilWVXwKZNVc3LEk8+BOza7dTnyEEpaE0NTST3klZ3BzEHsqJ+ljU3FUTrZSE
         Gk8A/JTGzLbOO0WKe2IPC7kQlvqyuA1M6vyT/xHOYDcyx+lIn63BHR7pzgmqSz4OHSBK
         Jw5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J4lwwmAb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id m2si126568ill.5.2020.09.23.16.55.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 16:55:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id k13so704444pfg.1
        for <clang-built-linux@googlegroups.com>; Wed, 23 Sep 2020 16:55:12 -0700 (PDT)
X-Received: by 2002:aa7:99c2:0:b029:142:440b:fa28 with SMTP id
 v2-20020aa799c20000b0290142440bfa28mr2168653pfi.30.1600905311123; Wed, 23 Sep
 2020 16:55:11 -0700 (PDT)
MIME-Version: 1.0
References: <202009180302.cc60Lfbg%lkp@intel.com> <79256845-c7d4-94df-adee-9cd833fbca03@csgroup.eu>
 <20200922163519.GL28786@gate.crashing.org> <CAKwvOdmhW_T-J98tQRoMCAgY6uPnW=bujtpDw5KauMnHDE4n=A@mail.gmail.com>
 <20200922215325.GM28786@gate.crashing.org> <CAFP8O3LaxHqpeUu-iifJMC=YkYmNXSUyxCbRnSdsMRD-pKwMGQ@mail.gmail.com>
 <20200922232956.GO28786@gate.crashing.org> <CAFP8O3+XC59aJGG4RcSAW_pysftpobXQ=sbjqgeNDoF=TBP7sw@mail.gmail.com>
 <CAKwvOdkBH7=hjNQiXUGx8D2oyyrVZdDSo0QwS3MO+nU=FCaaQQ@mail.gmail.com>
In-Reply-To: <CAKwvOdkBH7=hjNQiXUGx8D2oyyrVZdDSo0QwS3MO+nU=FCaaQQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 23 Sep 2020 16:54:59 -0700
Message-ID: <CAKwvOdn4LPTTr9KQcRH=zOy-8nswaT0=JGjAy=xiy3XhfjnvfA@mail.gmail.com>
Subject: Re: [linux-next:master 7032/8629] arch/powerpc/kernel/vdso32/gettimeofday.S:40:
 Error: syntax error; found `@', expected `,'
To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, 
	Christophe Leroy <christophe.leroy@csgroup.eu>, kernel test robot <lkp@intel.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Ulrich Weigand <Ulrich.Weigand@de.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=J4lwwmAb;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Sep 23, 2020 at 1:43 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> I just fetched the config and can reproduce via:
> $ ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- make CC=clang -j71
> arch/powerpc/kernel/vdso32/gettimeofday.o
>
> Adding `V=1` to the above, I see:
>
> clang -Wp,-MMD,arch/powerpc/kernel/vdso32/.gettimeofday.o.d  -nostdinc
> -isystem /android0/llvm-project/llvm/build/lib/clang/12.0.0/include
> -I./arch/powerpc/include -I./arch/powerpc/include/generated
> -I./include -I./arch/powerpc/include/uapi
> -I./arch/powerpc/include/generated/uapi -I./include/uapi
> -I./include/generated/uapi -include ./include/linux/kconfig.h
> -D__KERNEL__ -I ./arch/powerpc -DHAVE_AS_ATHIGH=1 -Qunused-arguments
> -D__ASSEMBLY__ -fno-PIE --target=powerpc64le-linux-gnu
> --prefix=/usr/bin/powerpc64le-linux-gnu- --gcc-toolchain=/usr
> -no-integrated-as -Werror=unknown-warning-option -m64 -Wl,-a64
> -Wa,-maltivec -Wa,-mpower4 -Wa,-many -mlittle-endian -Wa,-gdwarf-2
> -D__VDSO32__ -s     -m32 -c -o
> arch/powerpc/kernel/vdso32/gettimeofday.o
> arch/powerpc/kernel/vdso32/gettimeofday.S
>
> (so I was wrong about -no-integrated-as)
>
> I wonder if we need to be setting --target=powerpc-linux-gnu instead?
> Maybe the -m32 isn't being forwarded to the assembler?  Or is there an
> assembler directive we can use to tell the assembler that this should
> be assembled in 32b mode? (looks like no:
> https://sourceware.org/binutils/docs/as/PowerPC_002dPseudo.html#PowerPC_002dPseudo)
>
> ```
> foo:
>   bl bar@local
>
> bar:
> ```
> assembles with powerpc-linux-gnu-as but fails with the error message
> we observe for powerpc64le-linux-gnu-as. (I'm pretty sure we had
> similar issues with the compat vdso on arm64).
>
> ah, `-a32` will put the assembler in 32b mode.  I'm guessing gcc maybe
> adds this implicitly for `-m32`?
>
> ```
> diff --git a/arch/powerpc/kernel/vdso32/Makefile
> b/arch/powerpc/kernel/vdso32/Makefile
> index 73eada6bc8cd..c29d948f45e3 100644
> --- a/arch/powerpc/kernel/vdso32/Makefile
> +++ b/arch/powerpc/kernel/vdso32/Makefile
> @@ -26,7 +26,7 @@ UBSAN_SANITIZE := n
>
>  ccflags-y := -shared -fno-common -fno-builtin -nostdlib \
>         -Wl,-soname=linux-vdso32.so.1 -Wl,--hash-style=both
> -asflags-y := -D__VDSO32__ -s
> +asflags-y := -D__VDSO32__ -s -Wa,-a32
>
>  obj-y += vdso32_wrapper.o
>  targets += vdso32.lds
> ```
> gets us a little further, but then I observe additional failures:
> ```
>   VDSO32A arch/powerpc/kernel/vdso32/gettimeofday.o
> arch/powerpc/kernel/vdso32/gettimeofday.S: Assembler messages:
> arch/powerpc/kernel/vdso32/gettimeofday.S:39: Error: operand out of
> range (0x00000000000f4240 is not between 0xffffffffffff8000 and
> 0x000000000000ffff)
> arch/powerpc/kernel/vdso32/gettimeofday.S:39: Error: syntax error;
> found `@', expected `,'
> arch/powerpc/kernel/vdso32/gettimeofday.S:39: Error: junk at end of
> line: `@high'
> arch/powerpc/kernel/vdso32/gettimeofday.S:83: Error: operand out of
> range (0x000000003b9aca00 is not between 0xffffffffffff8000 and
> 0x000000000000ffff)
> arch/powerpc/kernel/vdso32/gettimeofday.S:83: Error: syntax error;
> found `@', expected `,'
> arch/powerpc/kernel/vdso32/gettimeofday.S:83: Error: junk at end of
> line: `@high'
> arch/powerpc/kernel/vdso32/gettimeofday.S:203: Error: operand out of
> range (0x00000000003d0900 is not between 0xffffffffffff8000 and
> 0x000000000000ffff)
> arch/powerpc/kernel/vdso32/gettimeofday.S:203: Error: syntax error;
> found `@', expected `,'
> arch/powerpc/kernel/vdso32/gettimeofday.S:203: Error: junk at end of
> line: `@high'
> clang-12: error: assembler command failed with exit code 1 (use -v to
> see invocation)
> make[3]: *** [arch/powerpc/kernel/vdso32/Makefile:49:
> arch/powerpc/kernel/vdso32/gettimeofday.o] Error 1
> ```
> That's preprocessed in, but looks like support for @high is missing
> from clang as well.

Hmmm...so the @high is coming from arch/powerpc/include/asm/ppc_asm.h:320

314 #if defined(__powerpc64__) && defined(HAVE_AS_ATHIGH)
315 #define __AS_ATHIGH high
316 #else
317 #define __AS_ATHIGH h
318 #endif
319
320 .macro __LOAD_REG_IMMEDIATE_32 r, x
321   .if (\x) >= 0x8000 || (\x) < -0x8000
322     lis \r, (\x)@__AS_ATHIGH

So we're #defining __powerpc64__ because of the
--target=powerpc64le-linux-gnu, but then trying to assemble this in
32b mode since it's a compat vdso?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn4LPTTr9KQcRH%3DzOy-8nswaT0%3DJGjAy%3Dxiy3XhfjnvfA%40mail.gmail.com.
