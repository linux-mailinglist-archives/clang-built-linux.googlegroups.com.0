Return-Path: <clang-built-linux+bncBCRKNY4WZECBBDWQZWBQMGQESA2WCBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A8B35B6FC
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Apr 2021 23:20:15 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id ek16sf6511964qvb.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Apr 2021 14:20:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618176015; cv=pass;
        d=google.com; s=arc-20160816;
        b=o5Em3ZTRYum+6AJWmi8L+p7QjE1hq1T0fHDKb1Tl+JUfL7xV9qL9aciv51wwwbGQX9
         HTA/uu8YsIUPmOygyo3xIOJbCmUQ3Na/GSFyc9yWeyPVFvDlmKAG7+WVB+UQbGN4Pj3X
         K05k4GRmYic6rSkQIYIYRsiO53iyh6K9Y9OmwsmwGaQjjSduwKCCYMWfBSIlafWmaloK
         7IRSZoBhxDKdd/UUF6zWZ51hMSOVbfoJHH1jvsYXTyLruxBNp7h19Wv8hgHu+yx7vDE3
         N7xH/UdjDhLD02Qb1nBs5ZPTtiUdSoyfJVG+pIqDMCdzvGCx+o/M9YQGoXQCRoAi3Ug1
         Ynjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:sender:dkim-signature;
        bh=tIYAcdpgLh5nBKxjkcx2sF7SteDk8yhQs+8OZgyF+OU=;
        b=CIZpzta6C6zcn4boy9uIcQNp3Wv3n92sab2fIjuqeWFoqy9GlSq2PlBtaD2/CKKG8a
         NNHhv+PhYGdLdPQFVh6L3jIfUVO2dQ2HKjHhE5pLrlr/iHjw3S+ZofsVH41EKB+BKzMX
         CKil1LBBGKbCCdQXdnwADsYIXYowd++yF0hN5coK5vFKWLSZ3lfWruN/FjlLn3WhCDB8
         Z8pN/N/xLgFiruqT625JsXonCavDMKe+Vek/+s+xTTpQZp74dpAYfCTtBymYdyNJDKs6
         JfWa8g+nn7yb2V1tUs6WHcul3ubpOeUarEfrgPNcqZIdcbhaHmwi6J1vqv4danNUUoW9
         o+sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=rmvtpQ0B;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=palmer@dabbelt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tIYAcdpgLh5nBKxjkcx2sF7SteDk8yhQs+8OZgyF+OU=;
        b=XdJx7QP1EeLxhwa/wRegne5pSdmYVVKly1hS9Guf1Rm4T9w6JZH6MwSvwcFxm2c/NC
         lQNp9uOU5/s0Rr+E+jfw8PWe8o9xcQ/hIpV5dqLZUUVXfmLqlJorXJAbPWHFqYXMgc6E
         scaGZu4bgzi4qmzPKAlxen6NcldJybmswU/18/wEvW3cRxyzjAGSPu5ZoOeYZiuBEj+h
         +wn3Ar9WZZ7ZGQvwXwbsVh5DPFqpSHL8ls17X0IdViaiUe1HFqbHwpWDKn4HAJ8e1COy
         AvtJv+lLBSgWTLZCyB1eN2xY0j50PSbQiCWImXo+KxNWBjNtOh70+KHvNHmbtWP/4gpU
         AaEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:subject:in-reply-to:cc:from:to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tIYAcdpgLh5nBKxjkcx2sF7SteDk8yhQs+8OZgyF+OU=;
        b=DEiLajA7h68gfI0ekTkmhgya2g8fDt8++E+PxdfVo1IR26xkBjRhHTkLCm6KXFj6rM
         5ckiU21IEGQ443ab83tY38M+DwfEGeShT4vRbaqbgzaq9VbR2fQDxG6cLFrNGcwXAhhf
         8vyKnmrXxcMlysFf/Z5CHjRwzVhxC9Ibm8MRqLku7w6xr+0U9Ut5q/hOJnIlXWJTXel4
         LZkEO88slNIiLYapFDy0ijKL0Y+XelFpDAVhYQtN8YTy9423d1Yo4Pq9EjZS2hELF8BO
         PH4RDc3Vhw2fSwjqsoGKzzkS9hDRffNZq2ReMXXsSiq01c2vx0yua+YxtVRzInqMW0xy
         W9HQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530eM4gGh7YNVOVdac1Htshq7/lR0/16icShs9kZ11mIi5lIYxAX
	BSay7wW5dfM34bO85cdCsoU=
X-Google-Smtp-Source: ABdhPJxz3jjqmmvhlEqjPxf4s5VyhIll1qpvM18HRV3vTGHtEoDhnhbo85qjjaw5NusLr2ECkA2WPg==
X-Received: by 2002:a0c:fc12:: with SMTP id z18mr1038493qvo.38.1618176015051;
        Sun, 11 Apr 2021 14:20:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7147:: with SMTP id m68ls1333745qkc.7.gmail; Sun, 11 Apr
 2021 14:20:14 -0700 (PDT)
X-Received: by 2002:a05:620a:13c3:: with SMTP id g3mr11937373qkl.377.1618176014674;
        Sun, 11 Apr 2021 14:20:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618176014; cv=none;
        d=google.com; s=arc-20160816;
        b=aTFD6oE4jcZGHS4Bgqno/C9zIaj33F/7YYcVjlbINnNfsZ0+6F/GO/67HoktPOh/Xw
         wXfCufFZmvSGcyxgJ4Kn01UchJEkeeLCRdfbCsn7RfsOa4IPDM83csXMDXlzbxat33aA
         WvX1DbHMy0ZRrEMLMffNoV5lJqLpUZs7ZSzKIxEzMMht1NQeHfQ1hICBpudLALb9dQMO
         WiWqoqPhKqyeiYRHEqbNPdzJp1e3bKuy7vPD5M29sIvfzh6R98RRo6VdJIfwdPK+K1fj
         69Sqwz1f9UFs5MnvD11i6fQ7LPi2WNsqyipBaJ3Xe9Anhn31iiGaSShQ94/dQOKMcug9
         KGdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=7HORmDFkFV0uVOag+MJUkAhWb7+U98LNc9qMttc1Fk0=;
        b=tjVCZp2KeLFoYQvoIITgOJBI2Ps8CxvXdzoSauUrgYI66Ym7tAX92vaqg4dL43+kas
         x7kALxPkP7QTrtbvTCLPu6/HPFt/pUd5I8l14KyBRAYjNluzp8HZWYCSxBRJadRF5Ume
         k+bbK3nFxmaG3Y+L2ByXN+LSvDeV9guADfhMWZp1exb/i8t7rVJSqeoDO12ux5t+G+OZ
         Ktmmf++fkRdAFoEoOMYtKJW6laRVObDA8oE1FQQ6xnuqjNQRWohebLc5+nj6JCAQzKeu
         DWpYmHwyzgWJR4D4RR+RYYvwrgFnb5yLeF//Uw2CYBTWBdDWu33YiA5cHB2T6gK89P00
         WiDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=rmvtpQ0B;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=palmer@dabbelt.com
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id g22si476711qtx.4.2021.04.11.14.20.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 14:20:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Received: by mail-pf1-x42a.google.com with SMTP id w8so4400838pfn.9
        for <clang-built-linux@googlegroups.com>; Sun, 11 Apr 2021 14:20:14 -0700 (PDT)
X-Received: by 2002:a65:640d:: with SMTP id a13mr23133579pgv.272.1618176013615;
        Sun, 11 Apr 2021 14:20:13 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id a20sm6661204pfn.23.2021.04.11.14.20.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 14:20:13 -0700 (PDT)
Date: Sun, 11 Apr 2021 14:20:13 -0700 (PDT)
Subject: Re: [PATCH] riscv: Use $(LD) instead of $(CC) to link vDSO
In-Reply-To: <20210325215156.1986901-1-nathan@kernel.org>
CC: Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
  linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
  nathan@kernel.org
From: Palmer Dabbelt <palmer@dabbelt.com>
To: nathan@kernel.org
Message-ID: <mhng-8efacd63-c6b5-469b-9c64-2b8092f0d3e3@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: palmer@dabbelt.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623
 header.b=rmvtpQ0B;       spf=pass (google.com: domain of palmer@dabbelt.com
 designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=palmer@dabbelt.com
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

On Thu, 25 Mar 2021 14:51:56 PDT (-0700), nathan@kernel.org wrote:
> Currently, the VDSO is being linked through $(CC). This does not match
> how the rest of the kernel links objects, which is through the $(LD)
> variable.
>
> When linking with clang, there are a couple of warnings about flags that
> will not be used during the link:
>
> clang-12: warning: argument unused during compilation: '-no-pie' [-Wunused-command-line-argument]
> clang-12: warning: argument unused during compilation: '-pg' [-Wunused-command-line-argument]
>
> '-no-pie' was added in commit 85602bea297f ("RISC-V: build vdso-dummy.o
> with -no-pie") to override '-pie' getting added to the ld command from
> distribution versions of GCC that enable PIE by default. It is
> technically no longer needed after commit c2c81bb2f691 ("RISC-V: Fix the
> VDSO symbol generaton for binutils-2.35+"), which removed vdso-dummy.o
> in favor of generating vdso-syms.S from vdso.so with $(NM) but this also
> resolves the issue in case it ever comes back due to having full control
> over the $(LD) command. '-pg' is for function tracing, it is not used
> during linking as clang states.
>
> These flags could be removed/filtered to fix the warnings but it is
> easier to just match the rest of the kernel and use $(LD) directly for
> linking. See commits
>
>   fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC) to link VDSO")
>   691efbedc60d ("arm64: vdso: use $(LD) instead of $(CC) to link VDSO")
>   2ff906994b6c ("MIPS: VDSO: Use $(LD) instead of $(CC) to link VDSO")
>   2b2a25845d53 ("s390/vdso: Use $(LD) instead of $(CC) to link vDSO")
>
> for more information.
>
> The flags are converted to linker flags and '--eh-frame-hdr' is added to
> match what is added by GCC implicitly, which can be seen by adding '-v'
> to GCC's invocation.
>
> Additionally, since this area is being modified, use the $(OBJCOPY)
> variable instead of an open coded $(CROSS_COMPILE)objcopy so that the
> user's choice of objcopy binary is respected.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/803
> Link: https://github.com/ClangBuiltLinux/linux/issues/970
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  arch/riscv/kernel/vdso/Makefile | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
>
> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
> index 71a315e73cbe..ca2b40dfd24b 100644
> --- a/arch/riscv/kernel/vdso/Makefile
> +++ b/arch/riscv/kernel/vdso/Makefile
> @@ -41,11 +41,10 @@ KASAN_SANITIZE := n
>  $(obj)/vdso.o: $(obj)/vdso.so
>
>  # link rule for the .so file, .lds has to be first
> -SYSCFLAGS_vdso.so.dbg = $(c_flags)
>  $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
>  	$(call if_changed,vdsold)
> -SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
> -	-Wl,--build-id=sha1 -Wl,--hash-style=both
> +LDFLAGS_vdso.so.dbg = -shared -s -soname=linux-vdso.so.1 \
> +	--build-id=sha1 --hash-style=both --eh-frame-hdr
>
>  # We also create a special relocatable object that should mirror the symbol
>  # table and layout of the linked DSO. With ld --just-symbols we can then
> @@ -60,13 +59,10 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
>
>  # actual build commands
>  # The DSO images are built using a special linker script
> -# Add -lgcc so rv32 gets static muldi3 and lshrdi3 definitions.
>  # Make sure only to export the intended __vdso_xxx symbol offsets.
>  quiet_cmd_vdsold = VDSOLD  $@
> -      cmd_vdsold = $(CC) $(KBUILD_CFLAGS) $(call cc-option, -no-pie) -nostdlib -nostartfiles $(SYSCFLAGS_$(@F)) \
> -                           -Wl,-T,$(filter-out FORCE,$^) -o $@.tmp && \
> -                   $(CROSS_COMPILE)objcopy \
> -                           $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
> +      cmd_vdsold = $(LD) $(ld_flags) -T $(filter-out FORCE,$^) -o $@.tmp && \
> +                   $(OBJCOPY) $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
>                     rm $@.tmp
>
>  # Extracts symbol offsets from the VDSO, converting them into an assembly file

Thanks, this is on for-next.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mhng-8efacd63-c6b5-469b-9c64-2b8092f0d3e3%40palmerdabbelt-glaptop.
