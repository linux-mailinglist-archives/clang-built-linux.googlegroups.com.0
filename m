Return-Path: <clang-built-linux+bncBCS7XUWOUULBBDPIUL2QKGQEB34IQEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 472B61BD038
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 00:54:07 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id x2sf286659pll.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 15:54:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588114446; cv=pass;
        d=google.com; s=arc-20160816;
        b=ptIH/MiNzK+njCGewJuckZUzHNoMli63DlfEdjim4hk/GhZvZBxVfgVYa5qR3VN67Z
         tA75Ab+vLQ02pZ4+7QO0TOdpNUXpHf1AEV6XETSIvMvaGB8AjVQS5NAbWA7HRrpci2wk
         2CtoyIqoB9ZtKaQARcPFrD+S3YzxySquGxYvdAJnKPoU4MxufwzEuvmrU57elbU3c5RV
         z3/M2HP4tDxqmfPQskUIMcRntDAaNGu5KTgHCCuIuyhPugfsBfTyMNCLsJqvWq1xfuuK
         lDGzwKTCGJRei60Qk9H1VCEoiQepJ5eTey9XXp4MVoHmQ80BnhHdwPbpW0f1HGFV+PjG
         MA+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=6y1gIjRDB7NOKf71mSvvLy7yjy6VchhgBufewZQ4T9M=;
        b=kOMxvdryjf3zWho0xQzomAWv71Az9MD4WcTUzoUcMhJzjjuH3ZLl/KA5ZI6D0zo4CH
         nZFe36O2xtuTmXVAeACwredVO7VrcCVepcsy6xwX94GznGFPukmgpNBeOM7oTH+6SnEq
         Wy0Yb57aefLnyZqvH7YFklRWWjD5re0aJW4ul85hrP4OEg/C2hWYeVLLRHbm0qdXZ58O
         7Qvuh+m7aAOienwK88B56dFmLYP9conKNsOEgQN8qA1+wEbvwogRjT/e5JmeCCBWCo3T
         nFJMsYpqOxx4gJdbfvMGzFKnMTudZCaSmUBuIUHyvB+Xf8JRAsFwfRnUWeakVj92OPBH
         /ktw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lZDn8hOp;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=6y1gIjRDB7NOKf71mSvvLy7yjy6VchhgBufewZQ4T9M=;
        b=dKcVbqAwWkWGGG184eG+9NubZS2WJt2cS9mU7MEiscjlVgidYihfzO9menOAfCl/AI
         vpw7RdQQmUcnrWXgYaeSxevvn1PjKQAlL339fQDLcgdqyt+UcuUoUcr7dLm//Fmo5ZbR
         uFHHTcaES0hxm7uKSCQ4ZDp0T6nZerb3moXzTjdj917SVbHbzsRAt4Ws24/YNoT3u/yd
         A7Ln775JX9eEhfTuUni4TiE2KCiEzNxYIX83tDb7Iz3MoKeqcQddWjciI/cp4s1VJ7zD
         tVMsMbMt3JE/pXnGv3W9cD57HtQvPBy8e+pHwwyq7c8zqaKWKtd/UOB+VJEHtKpjb96o
         JAIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6y1gIjRDB7NOKf71mSvvLy7yjy6VchhgBufewZQ4T9M=;
        b=PKaUC/01X1aV/zdCLU/kPnYmUSP07m2GoK2sHMBlV7uhDbH/5SSbNUJP2FmLyEV4A1
         ZNK13nYBSqRUWhRjA6dQAi9+GP/2+A8Nyu/P+Nnojy8YqA6LmWBWSvPO450aza+0nuWB
         cjZlgSueSN5TkDHmdcH0Nd0HQeFakUNo1ZIrpzuD7EkD6QXJ6wzC4ZFEBty2TjKwexes
         j1dl9MHs7Cl+f0/M0Qo88ermJ8LUMuAzfRqCXN6XUR8FdHpUoqNE58qEcGnnrg0gugsF
         SzlIJ4VV9LtWzNYVIYY97GUqzkPchTTIcZKhLPGCXcuJtNw1XShPSfo+SZvvhHsPjzxv
         t08Q==
X-Gm-Message-State: AGi0PuY9nT50vrLl0rKHo/bhE3CnimQfZFXA6uvrX3QqAzPvEFo1lung
	JCmMuSgyi0N7SRTDjzs1gT0=
X-Google-Smtp-Source: APiQypILhv87HzYLB9ax6y/07UIAXAC40PUD5cOhPRItCsoWI9pp7klonx1M6LSjBJffIAMCCWKKZw==
X-Received: by 2002:a17:90a:ba88:: with SMTP id t8mr7983865pjr.182.1588114445863;
        Tue, 28 Apr 2020 15:54:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c713:: with SMTP id o19ls6530571pjt.1.gmail; Tue, 28
 Apr 2020 15:54:05 -0700 (PDT)
X-Received: by 2002:a17:902:8a91:: with SMTP id p17mr30985990plo.248.1588114445466;
        Tue, 28 Apr 2020 15:54:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588114445; cv=none;
        d=google.com; s=arc-20160816;
        b=mvOe6uCthjrkXZZbtKIwiZNp9dCN8dIQsDcUZSVDtn5essy67p4Bd7i2ZBZu8QcQwq
         A9N6gAi3YFYwjCWMwcyBIOg37ZVUy/q2uFry8PaqhmkHS9d79b2ry7sbErmUMvfDG68K
         9/5zoMPnx/i44HQt4oPYRHba58Ef5EX4vq1YZgydO+ImcmUIdhtZLbXrxt3xT04mzwNE
         VCErm92x0fbhanMfaB30HakZIT9UdDDxWND63HC/+kXHTKHoNBjhX3syFM5A9IlO11pL
         qtQBvNbyMNGEjRwmJ0SzO63QLf8egtsJxpGqapKqp1zLnEjR0OjhiUSmvm/V24MNdL5q
         iuhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xdhVxVxjCVp6Qqe+xTFCZZzPWjQcwdRMhEMU3zXTXbM=;
        b=t9/1IoLWRsUMGFyZNd1dyNAuSKflQcPmv2AGfpbEB6wWMP6JIv71nnd2wUS9NlarnN
         l6xMyHnnrkg0IAxyV0anDEVzBjC8PXHsKxNm46naWJ2u6bTTThjyUkiMeQs7mtw2OvNc
         S/vnn4+Dwuq53lNEfPtR34KZ94FAsLhh07YN5FANiziDl37wPfn2lYFwgVNklzDQnOaE
         JyHMs7KoceeCTkDT7keMmHnjm7jvcguRf5fLN7bq5nPl33OMAvX+nUzHhHM93fB/+QgI
         umu49ANNIKejaVDN9q0528p1bVYrVWlZi3CQ1QaRofLg9ooLD8UUPGJZAbcgik/n0N/l
         KLeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lZDn8hOp;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x3si240311pjt.1.2020.04.28.15.54.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 15:54:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id x77so122756pfc.0
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 15:54:05 -0700 (PDT)
X-Received: by 2002:a63:a35e:: with SMTP id v30mr5973904pgn.134.1588114444821;
        Tue, 28 Apr 2020 15:54:04 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id p2sm13799090pgh.25.2020.04.28.15.54.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2020 15:54:04 -0700 (PDT)
Date: Tue, 28 Apr 2020 15:54:01 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v4 4/5] MIPS: VDSO: Use $(LD) instead of $(CC) to link
 VDSO
Message-ID: <20200428225401.7yrld7u2xr67t4xf@google.com>
References: <20200423171807.29713-1-natechancellor@gmail.com>
 <20200428221419.2530697-1-natechancellor@gmail.com>
 <20200428221419.2530697-5-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200428221419.2530697-5-natechancellor@gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lZDn8hOp;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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


On 2020-04-28, Nathan Chancellor wrote:
>Currently, the VDSO is being linked through $(CC). This does not match
>how the rest of the kernel links objects, which is through the $(LD)
>variable.
>
>When clang is built in a default configuration, it first attempts to use
>the target triple's default linker then the system's default linker,
>unless told otherwise through -fuse-ld=... We do not use -fuse-ld=
>because it can be brittle and we have support for invoking $(LD)
>directly. See commit fe00e50b2db8c ("ARM: 8858/1: vdso: use $(LD)
>instead of $(CC) to link VDSO") and commit 691efbedc60d2 ("arm64: vdso:
>use $(LD) instead of $(CC) to link VDSO") for examples of doing this in
>the VDSO.
>
>Do the same thing here. Replace the custom linking logic with $(cmd_ld)
>and ldflags-y so that $(LD) is respected. We need to explicitly add two
>flags to the linker that were implicitly passed by the compiler:
>-G 0 (which comes from ccflags-vdso) and --eh-frame-hdr.
>
>Before this patch (generated by adding '-v' to VDSO_LDFLAGS):
>
><gcc_prefix>/libexec/gcc/mips64-linux/9.3.0/collect2 \
>-plugin <gcc_prefix>/libexec/gcc/mips64-linux/9.3.0/liblto_plugin.so \
>-plugin-opt=<gcc_prefix>/libexec/gcc/mips64-linux/9.3.0/lto-wrapper \
>-plugin-opt=-fresolution=/tmp/ccGEi5Ka.res \
>--eh-frame-hdr \
>-G 0 \
>-EB \
>-mips64r2 \
>-shared \
>-melf64btsmip \
>-o arch/mips/vdso/vdso.so.dbg.raw \
>-L<gcc_prefix>/lib/gcc/mips64-linux/9.3.0/64 \
>-L<gcc_prefix>/lib/gcc/mips64-linux/9.3.0 \
>-L<gcc_prefix>/lib/gcc/mips64-linux/9.3.0/../../../../mips64-linux/lib \
>-Bsymbolic \
>--no-undefined \
>-soname=linux-vdso.so.1 \
>-EB \
>--hash-style=sysv \
>--build-id \
>-T arch/mips/vdso/vdso.lds \
>arch/mips/vdso/elf.o \
>arch/mips/vdso/vgettimeofday.o \
>arch/mips/vdso/sigreturn.o
>
>After this patch:
>
><gcc_prefix>/bin/mips64-linux-ld \
>-m elf64btsmip \
>-Bsymbolic \
>--no-undefined \
>-soname=linux-vdso.so.1 \
>-EB \
>-nostdlib \
>-shared \
>-G 0 \
>--eh-frame-hdr \
>--hash-style=sysv \
>--build-id \
>-T  arch/mips/vdso/vdso.lds \
>arch/mips/vdso/elf.o \
>arch/mips/vdso/vgettimeofday.o
>arch/mips/vdso/sigreturn.o \
>-o arch/mips/vdso/vdso.so.dbg.raw
>
>Note that we leave behind -mips64r2. Turns out that ld ignores it (see
>get_emulation in ld/ldmain.c). This is true of current trunk and 2.23,
>which is the minimum supported version for the kernel:
>
>https://sourceware.org/git/?p=binutils-gdb.git;a=blob;f=ld/ldmain.c;hb=aa4209e7b679afd74a3860ce25659e71cc4847d5#l593
>https://sourceware.org/git/?p=binutils-gdb.git;a=blob;f=ld/ldmain.c;hb=a55e30b51bc6227d8d41f707654d0a5620978dcf#l641
>
>Before this patch, LD=ld.lld did nothing:
>
>$ llvm-readelf -p.comment arch/mips/vdso/vdso.so.dbg | sed 's/(.*//'
>String dump of section '.comment':
>[     0] ClangBuiltLinux clang version 11.0.0
>
>After this patch, it does:
>
>$ llvm-readelf -p.comment arch/mips/vdso/vdso.so.dbg | sed 's/(.*//'
>String dump of section '.comment':
>[     0] Linker: LLD 11.0.0
>[    62] ClangBuiltLinux clang version 11.0.0
>
>Link: https://github.com/ClangBuiltLinux/linux/issues/785
>Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>---
>
>v3 -> v4:
>
>* Improve commit message to show that ld command is effectively the
>  same as the one generated by GCC.
>
>* Add '-G 0' and '--eh-frame-hdr' because they were added by GCC.

My understanding is that we start to use more -fasynchronous-unwind-tables to eliminate .eh_frame in object files.
Without .eh_frame, LD --eh-frame-hdr is really not useful.


Sigh...  -G 0. This is an option ignored by LLD. GCC devs probably should
have used the long option --gpsize rather than take the short option -G.
Even better, -z gpsize= or similar if this option is specific to ELF.

>v2 -> v3:
>
>* New patch.
>
> arch/mips/vdso/Makefile | 13 ++++---------
> 1 file changed, 4 insertions(+), 9 deletions(-)
>
>diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
>index 92b53d1df42c3..2e64c7600eead 100644
>--- a/arch/mips/vdso/Makefile
>+++ b/arch/mips/vdso/Makefile
>@@ -60,10 +60,9 @@ ifdef CONFIG_MIPS_DISABLE_VDSO
> endif
>
> # VDSO linker flags.
>-VDSO_LDFLAGS := \
>-	-Wl,-Bsymbolic -Wl,--no-undefined -Wl,-soname=linux-vdso.so.1 \
>-	$(addprefix -Wl$(comma),$(filter -E%,$(KBUILD_CFLAGS))) \
>-	-nostdlib -shared -Wl,--hash-style=sysv -Wl,--build-id
>+ldflags-y := -Bsymbolic --no-undefined -soname=linux-vdso.so.1 \
>+	$(filter -E%,$(KBUILD_CFLAGS)) -nostdlib -shared \
>+	-G 0 --eh-frame-hdr --hash-style=sysv --build-id -T
>
> CFLAGS_REMOVE_vdso.o = -pg
>
>@@ -82,11 +81,7 @@ quiet_cmd_vdso_mips_check = VDSOCHK $@
> #
>
> quiet_cmd_vdsold_and_vdso_check = LD      $@
>-      cmd_vdsold_and_vdso_check = $(cmd_vdsold); $(cmd_vdso_check); $(cmd_vdso_mips_check)
>-
>-quiet_cmd_vdsold = VDSO    $@
>-      cmd_vdsold = $(CC) $(c_flags) $(VDSO_LDFLAGS) \
>-                   -Wl,-T $(filter %.lds,$^) $(filter %.o,$^) -o $@
>+      cmd_vdsold_and_vdso_check = $(cmd_ld); $(cmd_vdso_check); $(cmd_vdso_mips_check)
>
> quiet_cmd_vdsoas_o_S = AS      $@
>       cmd_vdsoas_o_S = $(CC) $(a_flags) -c -o $@ $<
>-- 
>2.26.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200428225401.7yrld7u2xr67t4xf%40google.com.
