Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBV6VUL2QKGQEVYVTU3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A771BCF9C
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 00:14:48 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id r141sf378998pgr.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 15:14:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588112087; cv=pass;
        d=google.com; s=arc-20160816;
        b=QOu1Iaana+ZsL7a1RnSzEWMjTvSkqkfYN2id/KJtfn0xaXv1L97v2UpPI9dq5bgxTE
         5KsI+NEgkzbJf3zPk831N+tF/u0dDOTxcCCUYm95+wDOqHcgUxGOtxrNueWURdyhKN+p
         5SZIcPzv8UoMMglHIoX9SsjHFyV5paMJRuXhGTszRbGaTJXmCHXjnDuI+AjaZiGJ5/zs
         1EVnx+8ZTqcjFXZvdSL7nOLHd0MVKeNTumNITUf4FvriJdiOUnEnbGQwvNaX4PqKdN++
         7b9t9SXrWqx1Lfu43+QoSTl8wWINTi2Spo/ojviGLg8ed3LutHB+AYN0575D4aZ/+LXc
         OS3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=nwJN7Eg5gP1xRnyByslqayN+klhPpvK503jZ7CK1kjQ=;
        b=1HpjEa4uqnn5legq1lvjzwzlDuJTRa75VhkqJwP8e3uzy8rFk96vucZnk+p7+1ZAch
         vL33k+3as0MwiWMwL81G14crhfgPWrh5rz+GDFm7HYwqQJJoRChpv13xTSJq5xAJeQAb
         0+GX0yVPO3+s+IgbXNtitXcndDZ20N4tRXVm4OfyFgnlunu7nV4SZFg0mlFjdMovAKWE
         80OL+NLqT/kIDaFayWvUqV928qMq9UriwRh1NrQ2UhGhuyCvMNah5714jgp+QrYtNx4I
         mneE5EdEsDeTLSWWGnCudZW4Z+b+gRkiact16XowQkrKgXgzM87+1uKgdGh86u8c6zG4
         5TRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="b/C9LOZ0";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nwJN7Eg5gP1xRnyByslqayN+klhPpvK503jZ7CK1kjQ=;
        b=MEJJUNe7QH1KASqOLb0DqGotv1oFqSz0hhJp7I2b7r5wabkyp4R4lX8uRLJNNCytlC
         S49ZClReOSMklVou1zrd/vY9fo+dT/6cHKV3BPKKjl4DKd9DIzjk4Npa67nQaI3X5r3f
         08+CsO7HN3oTGNiEG9AEB019iMLS2aTcR7NpZTcKAsowu3WCOR8/9nKEklPBByj8t0R7
         KHcNjBkS/kImCoql/ID21xWnCMsh3anF63I/AZjR4/Wl4LzunbrlF7uGJGS9ZOj/USwO
         JxeoC1x0Y/oisro3kDyo6zWdsRrlGx+dp+OWCph/otm49I61vOZB2CdXpTtqR1Sru0DV
         95SQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nwJN7Eg5gP1xRnyByslqayN+klhPpvK503jZ7CK1kjQ=;
        b=GrCN8iirDcI08B+V+qNCqk95drp/xH3Y0Azq6GTd/3zDFk58tsIWWPveK5sCcISXgX
         S6NeMf/6Ga0jY91lViUE37VhsfLqmHNsMBRsW7nUtOMyPhZBu86Wf0m8uUVnzlYVBcMk
         6vYqH/JdEHldWSxceEcP8NdyVbJiY9+Pkukqo6QUY6sKWBUuMAyfkBpHQBvaO+voV88j
         jyfF6Bx6s6dditXmRCTZrWh9lf2McXOW5svfqQ3jDel3qCqbPBLpxVM3+MRpKL5zYa0v
         ZyGXcVue+MWlwzVaRbeEIvuJo/uU54No4MdPjJRtPx5NOOJVncSApd7+ANIzLHSFjb/Q
         /jMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nwJN7Eg5gP1xRnyByslqayN+klhPpvK503jZ7CK1kjQ=;
        b=gPL9a/8IyArFounhfiAHjfctbrr98PwXlfs9142dcfyLwirfgDpMDmfXDCmvc4FLDY
         e9aRkWUXNactqCH25ktN8B6VIcld1F6GNeBezYLRLmObCcs5GUZdy7fqyTCgp6gikYZR
         +2qus3hcBzrhbSQkXyIGaCoQZ9M/G0X92CPGFZtVuwZ7+XEYsqTKfSB9kiKF+6ECpn0U
         3As2dp+GzNQciBab1jIgXW/1vkww1IbjVpy4n3UgpUycGfICiNnDzpk9eg3j0IUe8DPD
         Z++VVk5LijY4EYSfjbASj0ZbCAhqOy6QN66TAPOrex+mFKxTy6ejCI4yQRF+flqxTsJW
         t1Bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pubu6/TKBwD7yrIrEavbC3r7xTYcwFKupfo+H5D8c4u4qWEHBcV6
	Jsh6NHcDmbI6pzYMxX9FeRc=
X-Google-Smtp-Source: APiQypLw30bZJQFt113JvI4z9m1i1TynnpEThBdTKbZAj0hzcRXvtnaKMoAoftmEqaXhfuapGQUbGw==
X-Received: by 2002:a63:585a:: with SMTP id i26mr14606147pgm.39.1588112087428;
        Tue, 28 Apr 2020 15:14:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ac91:: with SMTP id h17ls9563305plr.3.gmail; Tue, 28
 Apr 2020 15:14:47 -0700 (PDT)
X-Received: by 2002:a17:902:b945:: with SMTP id h5mr30914508pls.224.1588112087023;
        Tue, 28 Apr 2020 15:14:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588112087; cv=none;
        d=google.com; s=arc-20160816;
        b=q85OOLrupnJyB9hd5fK418ZJdBKNZdZdcd/KU53n+fcFVIsvYurPaT8uXJofN7AzGy
         U5hFD9s/rkDFhGxZwPmYsHLs8T7rWy4qpIewYTIRYCtTyKzEUvGnyjE43nq4jFJAoz9D
         g6dyIy6Z4d+McK0k3EHp5fnmqEVwwmTWw94WkAczmv4S2evPxxAl2YvZ4lNVU6xO5BmH
         y6MRfxgR+i9iypS94gsy+H9BIbtkrtzV+smR8f+Noyoz+WoYlFO/KpisKWmdepEfGqMO
         FCHT1baM+ABDFHuRlAnvrvJCGPa9DUAQDgPdyXwjepAo/LSwGkGHEiFldTwWsNstiFF2
         N8qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5MojLeIiS5IJ/f4OVpVWsw3ucrS28qn0/t/fHk4cEKI=;
        b=FPMxoRz0/6rQsRhTMdrhTJ+6BeyHfEjM1DR8E/yii6HvGH2dsLCgZPd5DAIYSGoK16
         oSGCtvcEJn6knl1F9d7Twasj8CZbmr594hMJbLzMlLi/0Smy/N9G27a5eO8h8Xg7FBUc
         33+jZlkoULjYKLmnNB2C9L372b+OB9v9/G//eldT7TErT5sBfPsftdN2GkToxsNiNhVb
         a9LLRf5mpY3+JjZ6H88mjMWCZ5w9S8DQjWACa8MGUk7TGcj0db5+obRncFtgeSvQIIeo
         yKLjF+IkfQSkcCLhBCDuXywFuIOQLab2a28RIVvGhIlJhgfRX7e67FQUSFyMSwHNe7vn
         9bKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="b/C9LOZ0";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id mm20si308764pjb.3.2020.04.28.15.14.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 15:14:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id m13so35588249otf.6
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 15:14:46 -0700 (PDT)
X-Received: by 2002:a9d:d06:: with SMTP id 6mr25675586oti.188.1588112086606;
        Tue, 28 Apr 2020 15:14:46 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 186sm5267476ooi.30.2020.04.28.15.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2020 15:14:45 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v4 4/5] MIPS: VDSO: Use $(LD) instead of $(CC) to link VDSO
Date: Tue, 28 Apr 2020 15:14:18 -0700
Message-Id: <20200428221419.2530697-5-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200428221419.2530697-1-natechancellor@gmail.com>
References: <20200423171807.29713-1-natechancellor@gmail.com>
 <20200428221419.2530697-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="b/C9LOZ0";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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
the target triple's default linker then the system's default linker,
unless told otherwise through -fuse-ld=... We do not use -fuse-ld=
because it can be brittle and we have support for invoking $(LD)
directly. See commit fe00e50b2db8c ("ARM: 8858/1: vdso: use $(LD)
instead of $(CC) to link VDSO") and commit 691efbedc60d2 ("arm64: vdso:
use $(LD) instead of $(CC) to link VDSO") for examples of doing this in
the VDSO.

Do the same thing here. Replace the custom linking logic with $(cmd_ld)
and ldflags-y so that $(LD) is respected. We need to explicitly add two
flags to the linker that were implicitly passed by the compiler:
-G 0 (which comes from ccflags-vdso) and --eh-frame-hdr.

Before this patch (generated by adding '-v' to VDSO_LDFLAGS):

<gcc_prefix>/libexec/gcc/mips64-linux/9.3.0/collect2 \
-plugin <gcc_prefix>/libexec/gcc/mips64-linux/9.3.0/liblto_plugin.so \
-plugin-opt=<gcc_prefix>/libexec/gcc/mips64-linux/9.3.0/lto-wrapper \
-plugin-opt=-fresolution=/tmp/ccGEi5Ka.res \
--eh-frame-hdr \
-G 0 \
-EB \
-mips64r2 \
-shared \
-melf64btsmip \
-o arch/mips/vdso/vdso.so.dbg.raw \
-L<gcc_prefix>/lib/gcc/mips64-linux/9.3.0/64 \
-L<gcc_prefix>/lib/gcc/mips64-linux/9.3.0 \
-L<gcc_prefix>/lib/gcc/mips64-linux/9.3.0/../../../../mips64-linux/lib \
-Bsymbolic \
--no-undefined \
-soname=linux-vdso.so.1 \
-EB \
--hash-style=sysv \
--build-id \
-T arch/mips/vdso/vdso.lds \
arch/mips/vdso/elf.o \
arch/mips/vdso/vgettimeofday.o \
arch/mips/vdso/sigreturn.o

After this patch:

<gcc_prefix>/bin/mips64-linux-ld \
-m elf64btsmip \
-Bsymbolic \
--no-undefined \
-soname=linux-vdso.so.1 \
-EB \
-nostdlib \
-shared \
-G 0 \
--eh-frame-hdr \
--hash-style=sysv \
--build-id \
-T  arch/mips/vdso/vdso.lds \
arch/mips/vdso/elf.o \
arch/mips/vdso/vgettimeofday.o
arch/mips/vdso/sigreturn.o \
-o arch/mips/vdso/vdso.so.dbg.raw

Note that we leave behind -mips64r2. Turns out that ld ignores it (see
get_emulation in ld/ldmain.c). This is true of current trunk and 2.23,
which is the minimum supported version for the kernel:

https://sourceware.org/git/?p=binutils-gdb.git;a=blob;f=ld/ldmain.c;hb=aa4209e7b679afd74a3860ce25659e71cc4847d5#l593
https://sourceware.org/git/?p=binutils-gdb.git;a=blob;f=ld/ldmain.c;hb=a55e30b51bc6227d8d41f707654d0a5620978dcf#l641

Before this patch, LD=ld.lld did nothing:

$ llvm-readelf -p.comment arch/mips/vdso/vdso.so.dbg | sed 's/(.*//'
String dump of section '.comment':
[     0] ClangBuiltLinux clang version 11.0.0

After this patch, it does:

$ llvm-readelf -p.comment arch/mips/vdso/vdso.so.dbg | sed 's/(.*//'
String dump of section '.comment':
[     0] Linker: LLD 11.0.0
[    62] ClangBuiltLinux clang version 11.0.0

Link: https://github.com/ClangBuiltLinux/linux/issues/785
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v3 -> v4:

* Improve commit message to show that ld command is effectively the
  same as the one generated by GCC.

* Add '-G 0' and '--eh-frame-hdr' because they were added by GCC.

v2 -> v3:

* New patch.

 arch/mips/vdso/Makefile | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
index 92b53d1df42c3..2e64c7600eead 100644
--- a/arch/mips/vdso/Makefile
+++ b/arch/mips/vdso/Makefile
@@ -60,10 +60,9 @@ ifdef CONFIG_MIPS_DISABLE_VDSO
 endif
 
 # VDSO linker flags.
-VDSO_LDFLAGS := \
-	-Wl,-Bsymbolic -Wl,--no-undefined -Wl,-soname=linux-vdso.so.1 \
-	$(addprefix -Wl$(comma),$(filter -E%,$(KBUILD_CFLAGS))) \
-	-nostdlib -shared -Wl,--hash-style=sysv -Wl,--build-id
+ldflags-y := -Bsymbolic --no-undefined -soname=linux-vdso.so.1 \
+	$(filter -E%,$(KBUILD_CFLAGS)) -nostdlib -shared \
+	-G 0 --eh-frame-hdr --hash-style=sysv --build-id -T
 
 CFLAGS_REMOVE_vdso.o = -pg
 
@@ -82,11 +81,7 @@ quiet_cmd_vdso_mips_check = VDSOCHK $@
 #
 
 quiet_cmd_vdsold_and_vdso_check = LD      $@
-      cmd_vdsold_and_vdso_check = $(cmd_vdsold); $(cmd_vdso_check); $(cmd_vdso_mips_check)
-
-quiet_cmd_vdsold = VDSO    $@
-      cmd_vdsold = $(CC) $(c_flags) $(VDSO_LDFLAGS) \
-                   -Wl,-T $(filter %.lds,$^) $(filter %.o,$^) -o $@
+      cmd_vdsold_and_vdso_check = $(cmd_ld); $(cmd_vdso_check); $(cmd_vdso_mips_check)
 
 quiet_cmd_vdsoas_o_S = AS      $@
       cmd_vdsoas_o_S = $(CC) $(a_flags) -c -o $@ $<
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200428221419.2530697-5-natechancellor%40gmail.com.
