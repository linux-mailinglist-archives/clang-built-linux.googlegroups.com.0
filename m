Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQGP3L3AKGQESVTA3OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 343B71EC2AC
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 21:25:54 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id c5sf7514491iok.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 12:25:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591125953; cv=pass;
        d=google.com; s=arc-20160816;
        b=hHdkcKNISqIMZQMnP5j8yhda06CAU4rB8FRklWJR8+EM8M1XBJpcmwj1u1ou84wmd4
         PjRw7jsbCkrDFgulnAleicENP2paPsX1HVrf6GafE81zp16WCeiAeztyVDLorA1HspXy
         nVCwH1u5SNY2NboioQIFR7PGF6npvjK+0oGGTaUhmvgB+PrwvBbINO8U5+/gpRYgrbZZ
         ZPN/zFvbrpfdsfyHMEjx3TE+sp5PzwLh0TTntd37WjJQXe8zwhnk/kOyNI9ILdECMvmT
         Q4w5bu9hTrHFtU5A6TWOyUZ17xOTd131Yi9LYMhW2NVJ51cwHQGayltGLbYOg9ltPAg5
         qeGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=WSEmBvrCYUBZd/tCqA6TKXhVS5GH9TypJXqj0zLUCmE=;
        b=tBaPRKxyiOG0eK1Ls0bd0+c5CaNjvB6S8kYamwy7BO0P/EjB7l21P1cK5f6WZhw8dq
         9ltJ2KZUR/Mn2JTG5bfPrH4+w+uWo/vvYeKVb7e9rG5cdwOfX+AHriUfmWLNxDI0KXhB
         6u6DBuZ7I0Cyhb2j/4KGwbXm7zHhU5RJ7otYRMDpK7cwiSl2YHMMLSOMj3i3w7cB8gse
         7ahtXU36bO9Dy8d+08J7McGwAeIHDoRCbrY1gpiK1oqzPJ1v4mjPD3oDNcxnIsZ3J7bH
         zWt03hAnfrzXfBMriZyh4tU6kwNGVrBCpeAYAvKVmqyW9JE8Cr/mX9MH/kPhBFgWTHph
         8NnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q1QcQqHU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WSEmBvrCYUBZd/tCqA6TKXhVS5GH9TypJXqj0zLUCmE=;
        b=QOdBPHvr3ghIKbPishv3rsA0RABwTiSZzXqrG0GqKt/IMKlTZC8RKagAYnOiZJ7wM7
         wxmdmnw7VQhor1/3Fk5V5BN8AC0drlSPL7qLlzwcw/ZTOKMwtve1ymBMedjhU6vsWS/z
         gqh9sucd5Pqy41vqFe4CMfi57GvDLxmp48phAXavivr6WYZkPCimU/ZoKbUHfQy5mMfn
         wATKVn1z7cqEDAi+WVxT1ZL3zAU9BX2XOClR5wOx21iJQefriU+4xq5eMd8WTuet2KZk
         swxK3eARQw69LuL7FV5hB4U4pAvs2cCnn9BpNFlElL8zxWl5bWl1VrZP/iEdjXVxgmWG
         //lw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WSEmBvrCYUBZd/tCqA6TKXhVS5GH9TypJXqj0zLUCmE=;
        b=UBIqYqYVoqhjzPEKtioaLLbJQEXqhWON2pZuSvpssqFuJ98QqBzPNXgYg6vFXnBbi7
         XI/1wFcwLv9otu2rjLtmkDvvDlgVt13yAKg46mkhUzxtiAmYqtohJYcue4g/z7HqefF/
         Izm/HZEkE7uiIc630nq/9kLfYtP/4ehG/P8Fh5T+/aWJ5bKL94hn8cgodygTFCOnYosM
         f7xOqDbAmNx2zjB5NLb47ragbj1l5XxvaQbs+1Ut540KgXJaUYKnUfYRb5fvnPs19yBv
         e0g8rkvPeMESBp+VkMsxoBQWUdppsOhtYU1+w6gz/Prr3s9j9TUw7CLDs4qBpyzWCfOW
         INtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WSEmBvrCYUBZd/tCqA6TKXhVS5GH9TypJXqj0zLUCmE=;
        b=Rast5Fy84Ydtz4yauXrVXvqvdwfOCO2cpAOLkC42flB2BEAIpk5lUyOdAaP6OoIX93
         05llgfB/YmRiQW0jtiZKA3uXZKuxiAUcmog62BCnXO+UG+pbdqmuZv29is+6BWg5hpLL
         AKmufSKTGfaUtok3iIehtq2wyDe5xUILbd+eK/3/2OuQyxeurmCsZVo6UUPZpMOBi4Of
         1Y89hflMXXG1q6ufBYtS1DGV0CzA6qYcqht3YgkqtifTutoiDLzfUFXqtr+kKdA/+p26
         rg8s7nalRzygheSA2Jb8B2H3hTUlTta1evOBB/3s10qw6YyRe06mpdHedKn/W9E8T5fd
         N1aA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533evrPeQF3SanxeQQiwPBJSdqW5W+DABE8NURuvV6uIAouZ0xKq
	D2FTq3g+0VjfzPFfnIjvuFI=
X-Google-Smtp-Source: ABdhPJzuejLdTyIyIGyuPftM09ri6nFnTpKl/FLWZK7TEnM8BVLoy/SXS05AhCVi+6NaKbBmd9eHLA==
X-Received: by 2002:a92:d38b:: with SMTP id o11mr806210ilo.47.1591125952892;
        Tue, 02 Jun 2020 12:25:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:820b:: with SMTP id l11ls3040202iom.1.gmail; Tue, 02 Jun
 2020 12:25:52 -0700 (PDT)
X-Received: by 2002:a5e:9b10:: with SMTP id j16mr745509iok.49.1591125952518;
        Tue, 02 Jun 2020 12:25:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591125952; cv=none;
        d=google.com; s=arc-20160816;
        b=ygyHPw9sWXtOcjaFkRKqYd3fMznEHAvj206fnoQNo6fXGOQQzDteJxOEi3mJqAA595
         lVKpsN//KEpF/dtQL//JprQqbYj1vYb3qZ5CZqVrUaJissl7pnSqAXJ7wnMkHVGT8Gkz
         AxmbBrRdm/uzoCoKvhshSgSpzUd+50XfJbY2uUTe2uzsassxQ7ZWpYGIpgCGctcjPaXh
         V+dD6T5YJ4Im29V9U4dMFFkKQ41JuGhWUMCD6lvMKAgmSN7w98hHhKPcYjxsTnLVQJsj
         G9tsvNIlnAm8DypLI0cWCsI+WND6CsI3TJNsyVav/uXRuSK0rZdsQcrd2gt0+F13ktbh
         hT0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OZNHGkENnW7p5QnYC1ZvXQjRimlmYQpqW7KCIXsjMOo=;
        b=e7zZMm+mhp7xQIjzchCLWL8XITsmk1+QlBeVQng3PGtkH2GSK+tMQ/s9BDhEoRdA3w
         Chlvcss3VtEZsJOlK+DYiXBtH1OTtex8YmRlGcX4U4Xe2XB8ShpuLiKlUx5FYpdBz9LJ
         j4GLHyqnIPUXLrcXMG7t0TpTdZwFyadKjyhpyc4fOsY0ZJ6E0oSGDdFwa9vp/7+UUQVY
         qW+x++/IQBGpLE8JZLvgdOETFelttjk/UywRSW5xndldCg0523hvRqTa5S/JTVgGvdXa
         pVZrPiT6Qt+N3Mn/mv9bNuC8DkfQepNIygIt1W56vlLexlap6SkMEStUs37uwjsb4/aJ
         DHJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q1QcQqHU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id g12si49429iow.3.2020.06.02.12.25.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 12:25:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id a4so5595395pfo.4
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 12:25:52 -0700 (PDT)
X-Received: by 2002:a17:90a:32d1:: with SMTP id l75mr770318pjb.85.1591125952020;
        Tue, 02 Jun 2020 12:25:52 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain ([107.152.99.41])
        by smtp.gmail.com with ESMTPSA id t2sm2813795pgh.89.2020.06.02.12.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2020 12:25:51 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Heiko Carstens <heiko.carstens@de.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-s390@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v2] s390: vdso: Use $(LD) instead of $(CC) to link vDSO
Date: Tue,  2 Jun 2020 12:25:24 -0700
Message-Id: <20200602192523.32758-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc2
In-Reply-To: <CAKwvOdmCrM0eUZHR12OBgyRhNPFDzZKjrpZ0DW8Cg=wqTfzDFw@mail.gmail.com>
References: <CAKwvOdmCrM0eUZHR12OBgyRhNPFDzZKjrpZ0DW8Cg=wqTfzDFw@mail.gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Q1QcQqHU;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

Currently, the VDSO is being linked through $(CC). This does not match
how the rest of the kernel links objects, which is through the $(LD)
variable.

When clang is built in a default configuration, it first attempts to use
the target triple's default linker, which is just ld. However, the user
can override this through the CLANG_DEFAULT_LINKER cmake define so that
clang uses another linker by default, such as LLVM's own linker, ld.lld.
This can be useful to get more optimized links across various different
projects.

However, this is problematic for the s390 vDSO because ld.lld does not
have any s390 emulatiom support:

https://github.com/llvm/llvm-project/blob/llvmorg-10.0.1-rc1/lld/ELF/Driver.cpp#L132-L150

Thus, if a user is using a toolchain with ld.lld as the default, they
will see an error, even if they have specified ld.bfd through the LD
make variable:

$ make -j"$(nproc)" -s ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- LLVM=1 \
                       LD=s390x-linux-gnu-ld \
                       defconfig arch/s390/kernel/vdso64/
ld.lld: error: unknown emulation: elf64_s390
clang-11: error: linker command failed with exit code 1 (use -v to see invocation)

Normally, '-fuse-ld=bfd' could be used to get around this; however, this
can be fragile, depending on paths and variable naming. The cleaner
solution for the kernel is to take advantage of the fact that $(LD) can
be invoked directly, which bypasses the heuristics of $(CC) and respects
the user's choice. Similar changes have been done for ARM, ARM64, and
MIPS.

Link: https://github.com/ClangBuiltLinux/linux/issues/1041
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Add -fPIC per GCC's documentation, as pointed out by Nick.

 arch/s390/kernel/vdso64/Makefile | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/s390/kernel/vdso64/Makefile b/arch/s390/kernel/vdso64/Makefile
index bec19e7e6e1c..67c14732c304 100644
--- a/arch/s390/kernel/vdso64/Makefile
+++ b/arch/s390/kernel/vdso64/Makefile
@@ -18,8 +18,8 @@ KBUILD_AFLAGS_64 += -m64 -s
 
 KBUILD_CFLAGS_64 := $(filter-out -m64,$(KBUILD_CFLAGS))
 KBUILD_CFLAGS_64 += -m64 -fPIC -shared -fno-common -fno-builtin
-KBUILD_CFLAGS_64 += -nostdlib -Wl,-soname=linux-vdso64.so.1 \
-		    -Wl,--hash-style=both
+ldflags-y := -fPIC -shared -nostdlib -soname=linux-vdso64.so.1 \
+	     --hash-style=both -T
 
 $(targets:%=$(obj)/%.dbg): KBUILD_CFLAGS = $(KBUILD_CFLAGS_64)
 $(targets:%=$(obj)/%.dbg): KBUILD_AFLAGS = $(KBUILD_AFLAGS_64)
@@ -37,8 +37,8 @@ KASAN_SANITIZE := n
 $(obj)/vdso64_wrapper.o : $(obj)/vdso64.so
 
 # link rule for the .so file, .lds has to be first
-$(obj)/vdso64.so.dbg: $(src)/vdso64.lds $(obj-vdso64) FORCE
-	$(call if_changed,vdso64ld)
+$(obj)/vdso64.so.dbg: $(obj)/vdso64.lds $(obj-vdso64) FORCE
+	$(call if_changed,ld)
 
 # strip rule for the .so file
 $(obj)/%.so: OBJCOPYFLAGS := -S
@@ -50,8 +50,6 @@ $(obj-vdso64): %.o: %.S FORCE
 	$(call if_changed_dep,vdso64as)
 
 # actual build commands
-quiet_cmd_vdso64ld = VDSO64L $@
-      cmd_vdso64ld = $(CC) $(c_flags) -Wl,-T $(filter %.lds %.o,$^) -o $@
 quiet_cmd_vdso64as = VDSO64A $@
       cmd_vdso64as = $(CC) $(a_flags) -c -o $@ $<
 

base-commit: e1750a3d9abbea2ece29cac8dc5a6f5bc19c1492
-- 
2.27.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200602192523.32758-1-natechancellor%40gmail.com.
