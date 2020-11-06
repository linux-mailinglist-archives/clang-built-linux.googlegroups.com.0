Return-Path: <clang-built-linux+bncBCP7VQF36ABBBMFISP6QKGQEFCKLAZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id CD44D2A8E75
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 05:42:25 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id 190sf132588pfz.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 20:42:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604637744; cv=pass;
        d=google.com; s=arc-20160816;
        b=BlWukSxd5hv5C+1+sclxb5TPx5+5uWIIhr+z6qUOaaRZkXOJnS5Q8fcRZhrbb3PQK8
         pj1eIINT5v9LqFyHL96e5YaCqc58/3eB72iUnM/irwzygcCFUyu8C1ILN9Xmw96dO5zP
         aC8uV1z/10B3lks2ldKEfnG4YgO8zcWjLSkgkT1p4NXb69utJtSL5HcnVn203t7rM3i8
         2E/qB0ZE2h5lcSIKd1q8b///rDSVwgmx4E0D79l/NLQXVE3B4kyXM94jZmBBE5MUrork
         kT3NIKNnfTMoAMKwDCd8tn6skRj64utl7NEa0eR5qJCg5hYe/X73N+3ROdiPn9ldRvrj
         9DFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id:to
         :from:cc:in-reply-to:subject:date:dkim-signature;
        bh=cAWPQXGtFrOVUwms2FzlJI/b1mvMKhJddtF7Vhrrk+c=;
        b=b/l2uNPUc/yOfRmAgxsyMwSYCZPKEE8XCpf/3GIkncGUpiSRtSgEYj6NnMlnnaFRUT
         vl1LTPHkNUqCvbWgteAQSbx15l18Ql3/p5RSozXln3CAtVWP7yZT+lCyJpaQ7Zf247IM
         /qk/kEgvZ7czc5oeMF5VF24n0mrzTeYNfkaLPECdlwubujFEauTTlnojHcAHQjjqHIPx
         q+VxtKPXcmz0O8wNjkewg39R2B8x/8PQeplDp/LWO8OcvzfmZjFvCeyCerD9HUCtP4sQ
         t4mOEu97rsp3zsVF6zfNYxQV3za+leOFGuMcarGd1KtDDjEwclXDfSs1HGL70k7LYpH9
         X3NQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="VuEQErz/";
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cAWPQXGtFrOVUwms2FzlJI/b1mvMKhJddtF7Vhrrk+c=;
        b=NyoDRP+mURjn1aXJ5RNmYQ+9+UAVHOFzCdeCxW6WuSZ++KYW5fpHhd3ClW9v8kBweh
         k+FnikaARHZnb+0NdJx0RLhniyrUaTXinhSCipQBLiAfwAswuTY3lZgNrsO+I70kBKe2
         2qexpLX0QS7atMT8uYU5p9DbjOmzVFR5+KWVixrIvJabHoDQb1Ic4Wj5PO93ShJ98IPy
         cHXSG6mH7D0itsqwTnzJXvdJDxJXxnZxPw0PYH7PcoOuR5Ea3UathddQ63k+w8tAa2y7
         UFQmG9vUeZMLxR5iUwTkfXho1ub8qkUh6tvkIzRG9HUODYXQDWEWQZT9Fr2a0mSSmJaB
         3fHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cAWPQXGtFrOVUwms2FzlJI/b1mvMKhJddtF7Vhrrk+c=;
        b=H4/jEauDgU4+Mmamwgi8cIrJrXwGCJXiZ4HcSDL/+kG+PlnGK5PoTWvBv93rePUQwr
         3w4iPueLLobwdeZjdHjjsqZbWBtLUk0IN3s5tV98M3IUs/BQ9gCMW3B09RpYElOvyi9G
         rN/DfA6QvE28WD30xDi2C91tzw5lnK/fo2Xr7go/htlG8iPoT0GUl1dt0f3cHcyNcSMz
         IMWH2eETMjGA/hRaTJ68F/ZJOaw9dEbVVcnIJLz71+mh+VKNPWg4IPC0z2/Habi5TCSN
         zzU7j5fWmzW5kTx9hJSHkJfTO9wgIdNlrKdiwJ2q2MGaRj0+eZAp1mdpyG8sUPuxqgJi
         AHiA==
X-Gm-Message-State: AOAM533uNhgW9Cw5+U3JM2CfsW48ZiVkzQnxxoXMss9V99uDFUdxgY4z
	zXA7CgERngUwjvSvloZYZ5U=
X-Google-Smtp-Source: ABdhPJwLlrZSY8IgSISPP9xj9wWStDtuMwt9hwB923S77kELEsvDdPz+hcNlYFNQmQQexNrgrLt3AQ==
X-Received: by 2002:a65:5286:: with SMTP id y6mr175416pgp.117.1604637744127;
        Thu, 05 Nov 2020 20:42:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b56:: with SMTP id a22ls45949pgl.6.gmail; Thu, 05 Nov
 2020 20:42:23 -0800 (PST)
X-Received: by 2002:a62:dd95:0:b029:18b:bfb:9f97 with SMTP id w143-20020a62dd950000b029018b0bfb9f97mr370606pff.0.1604637743514;
        Thu, 05 Nov 2020 20:42:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604637743; cv=none;
        d=google.com; s=arc-20160816;
        b=r6863sWlNEovSfo1S3tuRT4jfqVTzXP/GXDuioQc4wfBDk2jJF773h7quok9IILSVY
         rtsPz8vNyrZI3i0yG0agmS7hitKWb9dr2si4ZtwTk4d8vORgMDIn5FvqkgYUSibvOOuJ
         iCGyNuYtfsBwXm15cwneIb8N60QPm9e2/JWgqdwHBHIZ5gSNXBfzUO0j8O4BSbms3aNZ
         jrF4IfaweEadtDdop16twz3+/1squX8YBVB+ds0ky6Dc8FqUU91K1BljuGYrAs9VTsDI
         eWj5TgLsVDnBQyBVKHRqXfK6JhU8lwkHJLZ6C+p3/cAfZLCwQoMMhvB0NUCpP22UtT3X
         CGKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=Ax5zV7FSmcjIfWKm54rtVh6fphlFUgHu2iCY8lxaavQ=;
        b=bI3LxL0mf7c3UwNvfo7yURphRleQMRnBdjJehq9zEmMz6Y6maSMglYoJdwAL8H5Wth
         aMbPr8EEpH0QjDGMIsHdbFUfTu7ZTzI8WeJI+8FsAln/5lxTbboMQsccyDMQVs/fJmrl
         Kmgc5Q9xg61nCnIE8VyBuPIP0D6ELXlPVtx5RJAvfTMnib5PqYNGowzXrok7Z3xDr/zf
         7IFK5LGNrbLGW2Xwoh/kYk/twanhqK8SnChku9/24GTqe1OnCCdiBAN905K73ZZUdK+d
         ipTo1gcX3IsUzRYzWXeaH/WmvJZiZUCMn1C8qzGSTtpb9omyaHO655N+NHS+YALRjuf+
         DV8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="VuEQErz/";
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id iq1si10175pjb.2.2020.11.05.20.42.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 20:42:23 -0800 (PST)
Received-SPF: pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id w65so190402pfd.3
        for <clang-built-linux@googlegroups.com>; Thu, 05 Nov 2020 20:42:23 -0800 (PST)
X-Received: by 2002:a62:7d89:0:b029:18b:86d4:7cbe with SMTP id y131-20020a627d890000b029018b86d47cbemr313143pfc.77.1604637742926;
        Thu, 05 Nov 2020 20:42:22 -0800 (PST)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id n125sm239935pfn.127.2020.11.05.20.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 20:42:22 -0800 (PST)
Date: Thu, 05 Nov 2020 20:42:22 -0800 (PST)
Subject: Re: [PATCH v3] RISC-V: Fix the VDSO symbol generaton for binutils-2.35+
In-Reply-To: <CAKwvOdn5ib_WHpTg8YpHtqeOMLs+QDxVkzb8fuyDUL_N9BA_xw@mail.gmail.com>
CC: linux-riscv@lists.infradead.org, kernel-team@android.com,
  clang-built-linux@googlegroups.com, stable@vger.kernel.org
From: "'Palmer Dabbelt' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Message-ID: <mhng-dba8756e-d51b-4ce0-8987-51fcf9674c24@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: palmerdabbelt@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="VuEQErz/";       spf=pass
 (google.com: domain of palmerdabbelt@google.com designates
 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Palmer Dabbelt <palmerdabbelt@google.com>
Reply-To: Palmer Dabbelt <palmerdabbelt@google.com>
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

On Mon, 26 Oct 2020 12:48:08 PDT (-0700), Nick Desaulniers wrote:
> On Fri, Oct 23, 2020 at 10:03 PM 'Palmer Dabbelt' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
>>
>> We were relying on GNU ld's ability to re-link executable files in order
>> to extract our VDSO symbols.  This behavior was deemed a bug as of
>> binutils-2.35 (specifically the binutils-gdb commit a87e1817a4 ("Have
>> the linker fail if any attempt to link in an executable is made."), but as that
>> has been backported to at least Debian's binutils-2.34 in may manifest in other
>> places.
>>
>> The previous version of this was a bit of a mess: we were linking a
>> static executable version of the VDSO, containing only a subset of the
>> input symbols, which we then linked into the kernel.  This worked, but
>> certainly wasn't a supported path through the toolchain.  Instead this
>> new version parses the textual output of nm to produce a symbol table.
>> Both rely on near-zero addresses being linkable, but as we rely on weak
>> undefined symbols being linkable elsewhere I don't view this as a major
>> issue.
>>
>> Fixes: e2c0cdfba7f6 ("RISC-V: User-facing API")
>> Cc: clang-built-linux@googlegroups.com
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
>
> Any way to improve the error message if/when this fails?
> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/407165683

Probably, but I can't get that command to actually run this stuff.  I tried
pulling the commands, but I'm getting some weirdness

$ rm -f arch/riscv/kernel/vdso/vdso-syms.S
$ make ARCH=riscv defconfig
$ make -j2 AR=llvm-ar 'CC=clang' 'HOSTCC=clang' HOSTLD=ld KCFLAGS=-Wno-implicit-fallthrough LD=riscv64-linux-gnu-ld LLVM_IAS=1 NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size READELF=llvm-readelf STRIP=llvm-strip ARCH=riscv Image
  SYNC    include/config/auto.conf.cmd
  HOSTCC  scripts/basic/fixdep
  HOSTCC  scripts/kconfig/conf.o
  HOSTCC  scripts/kconfig/confdata.o
  HOSTCC  scripts/kconfig/expr.o
  HOSTCC  scripts/kconfig/lexer.lex.o
  HOSTCC  scripts/kconfig/parser.tab.o
  HOSTCC  scripts/kconfig/preprocess.o
  HOSTCC  scripts/kconfig/symbol.o
  HOSTCC  scripts/kconfig/util.o
  HOSTLD  scripts/kconfig/conf
*
* Restart config...
*
*
* Memory initialization
*
Initialize kernel stack variables at function entry
> 1. no automatic initialization (weakest) (INIT_STACK_NONE)
  2. 0xAA-init everything on the stack (strongest) (INIT_STACK_ALL_PATTERN) (NEW)
  3. zero-init everything on the stack (strongest and safest) (INIT_STACK_ALL_ZERO) (NEW)
choice[1-3?]: 
Enable heap memory zeroing on allocation by default (INIT_ON_ALLOC_DEFAULT_ON) [N/y/?] n
Enable heap memory zeroing on free by default (INIT_ON_FREE_DEFAULT_ON) [N/y/?] n
  HOSTCC  scripts/dtc/dtc.o
  HOSTCC  scripts/dtc/flattree.o
  HOSTCC  scripts/dtc/fstree.o
  HOSTCC  scripts/dtc/data.o
  HOSTCC  scripts/dtc/livetree.o
  HOSTCC  scripts/dtc/treesource.o
  HOSTCC  scripts/dtc/srcpos.o
  HOSTCC  scripts/dtc/checks.o
  HOSTCC  scripts/dtc/util.o
  HOSTCC  scripts/dtc/dtc-lexer.lex.o
  HOSTCC  scripts/dtc/dtc-parser.tab.o
  HOSTLD  scripts/dtc/dtc
  HOSTCC  scripts/kallsyms
  CC      scripts/mod/empty.o
  HOSTCC  scripts/mod/mk_elfconfig
error: invalid value 'medany' in '-mcode-model medany'
make[1]: *** [scripts/Makefile.build:283: scripts/mod/empty.o] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1199: prepare0] Error 2

I have no idea where the space in '-mcode-model medany' comes from.

Does this fail in general for LLVM, or is the issue just the error message?
I've put this on fixes assuming it's just the error message, but LMK if it's
actually not working in which case I won't send it out as I don't want to break
stuff that was working.

Either way I'd be happy to fix it if I can reproduce it.  I always just guess
at regexes until they work for me, so I bet there's something subtly different
in LLVM.  This splits out the calls, which might be enough to sort it out (I've
fixed the comment on fixes):

diff --git a/arch/riscv/kernel/vdso/.gitignore b/arch/riscv/kernel/vdso/.gitignore
index 3a19def868ec..88206dd8b472 100644
--- a/arch/riscv/kernel/vdso/.gitignore
+++ b/arch/riscv/kernel/vdso/.gitignore
@@ -2,3 +2,4 @@
 vdso.lds
 *.tmp
 vdso-syms.S
+vdso-syms.nm
diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
index a8ecf102e09b..fe5c969a6bf4 100644
--- a/arch/riscv/kernel/vdso/Makefile
+++ b/arch/riscv/kernel/vdso/Makefile
@@ -49,8 +49,11 @@ SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
 # We also create a special relocatable object that should mirror the symbol
 # table and layout of the linked DSO. With ld --just-symbols we can then
 # refer to these symbols in the kernel code rather than hand-coded addresses.
-$(obj)/vdso-syms.S: $(obj)/vdso.so FORCE
-	$(call if_changed,so2s)
+$(obj)/vdso-syms.nm: $(obj)/vdso.so
+	$(call if_changed,nm_d)
+
+$(obj)/vdso-syms.S: $(obj)/vdso-syms.nm
+	$(call if_changed,nm2s)
 
 # strip rule for the .so file
 $(obj)/%.so: OBJCOPYFLAGS := -S
@@ -68,9 +71,13 @@ quiet_cmd_vdsold = VDSOLD  $@
                            $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
                    rm $@.tmp
 
-# Extracts
-quiet_cmd_so2s = SO2S    $@
-      cmd_so2s = $(NM) -D $< | $(srctree)/$(src)/so2s.sh > $@
+# Extracts symbol offsets from the VDSO, converting them into an assembly file
+# that contains the same symbols at the same offsets.
+quiet_cmd_nm_d = NM -D   $@
+      cmd_nm_d = $(NM) -D $< > $@
+
+quiet_cmd_nm2s = SYMS2S  $@
+      cmd_nm2s = cat $< | $(srctree)/$(src)/so2s.sh > $@
 
 # install commands for the unstripped file
 quiet_cmd_vdso_install = INSTALL $@

For reference, here's the output of nmo for me:

$ cat arch/riscv/kernel/vdso/vdso-syms.nm 
0000000000000000 A LINUX_4.15
00000000000009e0 T __vdso_clock_getres@@LINUX_4.15
000000000000080a T __vdso_clock_gettime@@LINUX_4.15
0000000000000a48 T __vdso_flush_icache@@LINUX_4.15
0000000000000a3c T __vdso_getcpu@@LINUX_4.15
0000000000000916 T __vdso_gettimeofday@@LINUX_4.15
0000000000000800 T __vdso_rt_sigreturn@@LINUX_4.15

>> ---
>>
>> Changes since v2 <20201019235630.762886-1-palmerdabbelt@google.com>:
>>
>> * Uses $(srctree)/$(src) to allow for out-of-tree builds.
>>
>> Changes since v1 <20201017002500.503011-1-palmerdabbelt@google.com>:
>>
>> * Uses $(NM) instead of $(CROSS_COMPILE)nm.  We use the $(CROSS_COMPILE) form
>>   elsewhere in this file, but we'll fix that later.
>> * Removed the unnecesary .map file creation.
>>
>> ---
>>  arch/riscv/kernel/vdso/.gitignore |  1 +
>>  arch/riscv/kernel/vdso/Makefile   | 17 ++++++++---------
>>  arch/riscv/kernel/vdso/so2s.sh    |  6 ++++++
>>  3 files changed, 15 insertions(+), 9 deletions(-)
>>  create mode 100755 arch/riscv/kernel/vdso/so2s.sh
>>
>> diff --git a/arch/riscv/kernel/vdso/.gitignore b/arch/riscv/kernel/vdso/.gitignore
>> index 11ebee9e4c1d..3a19def868ec 100644
>> --- a/arch/riscv/kernel/vdso/.gitignore
>> +++ b/arch/riscv/kernel/vdso/.gitignore
>> @@ -1,3 +1,4 @@
>>  # SPDX-License-Identifier: GPL-2.0-only
>>  vdso.lds
>>  *.tmp
>> +vdso-syms.S
>> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
>> index 478e7338ddc1..a8ecf102e09b 100644
>> --- a/arch/riscv/kernel/vdso/Makefile
>> +++ b/arch/riscv/kernel/vdso/Makefile
>> @@ -43,19 +43,14 @@ $(obj)/vdso.o: $(obj)/vdso.so
>>  SYSCFLAGS_vdso.so.dbg = $(c_flags)
>>  $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
>>         $(call if_changed,vdsold)
>> +SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
>> +       -Wl,--build-id -Wl,--hash-style=both
>>
>>  # We also create a special relocatable object that should mirror the symbol
>>  # table and layout of the linked DSO. With ld --just-symbols we can then
>>  # refer to these symbols in the kernel code rather than hand-coded addresses.
>> -
>> -SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
>> -       -Wl,--build-id -Wl,--hash-style=both
>> -$(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
>> -       $(call if_changed,vdsold)
>> -
>> -LDFLAGS_vdso-syms.o := -r --just-symbols
>> -$(obj)/vdso-syms.o: $(obj)/vdso-dummy.o FORCE
>> -       $(call if_changed,ld)
>> +$(obj)/vdso-syms.S: $(obj)/vdso.so FORCE
>> +       $(call if_changed,so2s)
>>
>>  # strip rule for the .so file
>>  $(obj)/%.so: OBJCOPYFLAGS := -S
>> @@ -73,6 +68,10 @@ quiet_cmd_vdsold = VDSOLD  $@
>>                             $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
>>                     rm $@.tmp
>>
>> +# Extracts
>> +quiet_cmd_so2s = SO2S    $@
>> +      cmd_so2s = $(NM) -D $< | $(srctree)/$(src)/so2s.sh > $@
>> +
>>  # install commands for the unstripped file
>>  quiet_cmd_vdso_install = INSTALL $@
>>        cmd_vdso_install = cp $(obj)/$@.dbg $(MODLIB)/vdso/$@
>> diff --git a/arch/riscv/kernel/vdso/so2s.sh b/arch/riscv/kernel/vdso/so2s.sh
>> new file mode 100755
>> index 000000000000..3c5b43207658
>> --- /dev/null
>> +++ b/arch/riscv/kernel/vdso/so2s.sh
>> @@ -0,0 +1,6 @@
>> +#!/bin/sh
>> +# SPDX-License-Identifier: GPL-2.0+
>> +# Copyright 2020 Palmer Dabbelt <palmerdabbelt@google.com>
>> +
>> +sed 's!\([0-9a-f]*\) T \([a-z0-9_]*\)@@LINUX_4.15!.global \2\n.set \2,0x\1!' \
>> +| grep '^\.'
>> --
>> 2.29.0.rc1.297.gfa9743e501-goog
>>
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201024045046.3018271-1-palmerdabbelt%40google.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mhng-dba8756e-d51b-4ce0-8987-51fcf9674c24%40palmerdabbelt-glaptop1.
