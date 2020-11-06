Return-Path: <clang-built-linux+bncBCP7VQF36ABBBOVWSP6QKGQEYRI2ZJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0B12A8E9E
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 06:12:28 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id m5sf227026pfk.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 21:12:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604639547; cv=pass;
        d=google.com; s=arc-20160816;
        b=wCr0rP844wWVJP7hlFWl6F4brdazptSuoXnJBjf/yxdv5336hUh1uAyt4W49VxtGeb
         yrJYychNG0kX7NRTnhLHycj5+373Igw+N6dfDQ1UhfQV+q0xS46Ry6d/96/2MborCshO
         z3D0QJ1B3b/12BM7I50wNanecIqvd5ocbI2I0Q3YClogTbgH3udB418Xr+kebG4OXsfh
         NCPbNlZramBCwq75gzuekloGbYxAe2kbKjlQ0O8fxTvsS8Gd13UStC+y4eg++axEW80l
         ys75wACgbPj2diAoP+Wz5rWkERwlezs+cZ+2visHm10aXDbDwNtUyfqU1oRTLIxs5YnF
         kfdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id:to
         :from:cc:in-reply-to:subject:date:dkim-signature;
        bh=qlU9iwHIEQhFnlgN3W6zERycpopxb3IgXpY1vp0yR2M=;
        b=of9PWNANVpIg2sJNYbAUOJyo9WwLZWU40zgFskHoWpWFjXb17yfXHlo9xysA2xq5YY
         cgzxT2M+qxz8N0u9/BUehobkKc70jpIyFo7pjTo7ZMo3YfRgCgkE+vv8ZBLjXJEPptDr
         9fS8D033dFaHK0PPpnK/L0wt98t88xA+frPmA6HOr7GhVvudJzlUGOVLZMlJHJvMsv++
         GR/txh8KMPSORllHfqtM9oLIc1kRUv+Dkz2kpHHyidx8RXJ4lNsgoAoxgRayJ7UcDJtU
         eGbyFT4QEbtrjkSkOeSChDMs+QouE2MhQRPBMYH0tGF+noHCzxp0hgvDCbbRcQLb8jXa
         7NEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dcgfMzLF;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qlU9iwHIEQhFnlgN3W6zERycpopxb3IgXpY1vp0yR2M=;
        b=nuHLSTnERvwcNCzxSpscBIGvE7wTRjszhPmy1pk+muc/3kY2nkYEpfrvP26N67oSW9
         yzO2ul9tqaJluBoCjZBeF+Cn3HFJTkIqmbkCm/pwNq8FFlNEIIlCjqnex8/T+4Sr5Zo7
         JOG5WFO/bpMw6Tk1uiMTa8MKR3l9Os1PdfoX7/voXTXeWtibmYqdSGiynxkHa4qztyZ8
         hEj2cRYqw8ATW5h0T1PGFxgNxWdui7hkNCB0tHuf6FDpMuTz13nrdodCAZPxt3v2TtPO
         JilAthdPoY2R13sODHyAzheiOkxuyvGTYACoB5euZnhL5kn907mrDQh8JRYbqIzfHiZ8
         9zCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qlU9iwHIEQhFnlgN3W6zERycpopxb3IgXpY1vp0yR2M=;
        b=SJ4bCD66XK0eMFuzLc4YODB1nKKPErIrpKgDfamKHVS4uxdURuOmPtbWtJnZHya9AD
         PUg9bWJ53S7cjAjqjszB5cm1Xg7dgtCqDJ/OnwqVmx9i7Pqs7phM6x8rF5khBaFGrEVg
         w/CE1EJpjyLTY3nyYgSmcdueww0JyIgmYxiZWYrvYUSrjK57q5tZLVoStxxuFhHlDU1/
         kv56SK7zqHikJV+IDXhg4xTkKlCxcnQD49hbvgj4eX6KaJjRrtxfh52wHE0deoQYgTJJ
         pPLYhEhND9kC0HsY8J38utQiBb37oyRqrirJgA6qf3nzUsYQaZ4GoDEx6VBPV7Ss8slj
         hFVg==
X-Gm-Message-State: AOAM533Y+2aQXgdIGnjpCiuY4b/q0rbrAn5ZTldTHslpzROh1BNj8YaZ
	MNGr7V3DvZI+11F5FepDoTI=
X-Google-Smtp-Source: ABdhPJxmxcf5y4lr3sxXd/6KAjC5mA3OIPCn72aOEa/dZmbUTLYiVzrW+s8gyR2Lo1hDAZAQ+z8jtg==
X-Received: by 2002:a17:902:24b:b029:d6:cd52:61e3 with SMTP id 69-20020a170902024bb02900d6cd5261e3mr432098plc.2.1604639547021;
        Thu, 05 Nov 2020 21:12:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f68f:: with SMTP id cl15ls98637pjb.0.canary-gmail;
 Thu, 05 Nov 2020 21:12:26 -0800 (PST)
X-Received: by 2002:a17:902:7088:b029:d6:8072:9ce1 with SMTP id z8-20020a1709027088b02900d680729ce1mr417966plk.11.1604639546478;
        Thu, 05 Nov 2020 21:12:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604639546; cv=none;
        d=google.com; s=arc-20160816;
        b=ON+RtsxblHJY3TuClUMuGrsp+ZmZJGvicyPHHYqjA/m0Oz/Zv57ZTbomVThBemj07U
         bedFByZfVtFbPu6pOIgkp7xw2wS4BI7/OG1TMVvwzgn/YR2j0Ns/jTthPp1b2ckbbWLQ
         cVIdrGEraJo0HDK8kikxHKYdY0+jeJJbXFwCuFOzg2HKZpOuqIduw/zrdnVnYPolfMEY
         SqxlGmckxWdFKC1kOcPTc4BwxtELTz9Kb4jeP9Yyr5JrG7A9fBIAUXvr/RA3mKzK4TxR
         h8+fQs0TdN6qjGGvSrhUCqYJVBaUCWtLMnBoLoiYVGD0rUoEBmQsxDSNFF8+3uDi/xdz
         XddA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=QlKPVJvptSHxEo+A5+CSfIRFa+87UtK/Q6phgNwsV8I=;
        b=RJySbVyuT3ttkL4+jpd4cHpOFJSznTgXPQRMXZ4i5PtxKXY3lJNoboF4nTEw+Dc5uB
         UKbC2yRnMTGuKfUjJaEBiWdZQM27dfBGNXJix7SAh9TJd13hoUJ47QTnMkRVxNqVoblv
         PvoeLUHScpOkjnfbn5gBj8TM5tYfRE7dICZ5OOgCX6+LigyO6vtfGk0XQFIWpBIta9G2
         v9l6bOqT4XTm4u/SC4CYw3n6Lka32g9tKUE6MHiZ8JSmuA1yAhBwGx6okOWwaVnakJde
         uV6AnRCV1X4l31enBKijfvzxkwCUMXXHnoA6k/o/JTiwqlRGC5eSmy+So6t6WJHbkmp6
         O9Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dcgfMzLF;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id h17si15576pjv.3.2020.11.05.21.12.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 21:12:26 -0800 (PST)
Received-SPF: pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id 72so230750pfv.7
        for <clang-built-linux@googlegroups.com>; Thu, 05 Nov 2020 21:12:26 -0800 (PST)
X-Received: by 2002:a63:455b:: with SMTP id u27mr288406pgk.25.1604639545874;
        Thu, 05 Nov 2020 21:12:25 -0800 (PST)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id v191sm399421pfc.19.2020.11.05.21.12.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 21:12:25 -0800 (PST)
Date: Thu, 05 Nov 2020 21:12:25 -0800 (PST)
Subject: Re: [PATCH v3] RISC-V: Fix the VDSO symbol generaton for binutils-2.35+
In-Reply-To: <20201106045902.GA2585953@ubuntu-m3-large-x86>
CC: Nick Desaulniers <ndesaulniers@google.com>, linux-riscv@lists.infradead.org,
  kernel-team@android.com, clang-built-linux@googlegroups.com, stable@vger.kernel.org
From: "'Palmer Dabbelt' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: natechancellor@gmail.com
Message-ID: <mhng-e82ecf40-679a-41ed-b2b1-69c64a78f0b2@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: palmerdabbelt@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dcgfMzLF;       spf=pass
 (google.com: domain of palmerdabbelt@google.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
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

On Thu, 05 Nov 2020 20:59:02 PST (-0800), natechancellor@gmail.com wrote:
> On Thu, Nov 05, 2020 at 08:42:22PM -0800, 'Palmer Dabbelt' via Clang Built Linux wrote:
>> On Mon, 26 Oct 2020 12:48:08 PDT (-0700), Nick Desaulniers wrote:
>> > On Fri, Oct 23, 2020 at 10:03 PM 'Palmer Dabbelt' via Clang Built
>> > Linux <clang-built-linux@googlegroups.com> wrote:
>> > >
>> > > We were relying on GNU ld's ability to re-link executable files in order
>> > > to extract our VDSO symbols.  This behavior was deemed a bug as of
>> > > binutils-2.35 (specifically the binutils-gdb commit a87e1817a4 ("Have
>> > > the linker fail if any attempt to link in an executable is made."), but as that
>> > > has been backported to at least Debian's binutils-2.34 in may manifest in other
>> > > places.
>> > >
>> > > The previous version of this was a bit of a mess: we were linking a
>> > > static executable version of the VDSO, containing only a subset of the
>> > > input symbols, which we then linked into the kernel.  This worked, but
>> > > certainly wasn't a supported path through the toolchain.  Instead this
>> > > new version parses the textual output of nm to produce a symbol table.
>> > > Both rely on near-zero addresses being linkable, but as we rely on weak
>> > > undefined symbols being linkable elsewhere I don't view this as a major
>> > > issue.
>> > >
>> > > Fixes: e2c0cdfba7f6 ("RISC-V: User-facing API")
>> > > Cc: clang-built-linux@googlegroups.com
>> > > Cc: stable@vger.kernel.org
>> > > Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
>> >
>> > Any way to improve the error message if/when this fails?
>> > https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/407165683
>>
>> Probably, but I can't get that command to actually run this stuff.  I tried
>> pulling the commands, but I'm getting some weirdness
>>
>> $ rm -f arch/riscv/kernel/vdso/vdso-syms.S
>> $ make ARCH=riscv defconfig
>> $ make -j2 AR=llvm-ar 'CC=clang' 'HOSTCC=clang' HOSTLD=ld KCFLAGS=-Wno-implicit-fallthrough LD=riscv64-linux-gnu-ld LLVM_IAS=1 NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size READELF=llvm-readelf STRIP=llvm-strip ARCH=riscv Image
>
> This command is simpler and reproduces it for me locally on next-20201105.
>
> $ make -skj"$(nproc)" ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- LD=riscv64-linux-gnu-ld LLVM=1 distclean defconfig Image
> clang-12: warning: argument unused during compilation: '-no-pie' [-Wunused-command-line-argument]
> make[4]: *** [arch/riscv/kernel/vdso/Makefile:53: arch/riscv/kernel/vdso/vdso-syms.S] Error 1
> make[4]: *** Deleting file 'arch/riscv/kernel/vdso/vdso-syms.S'
> make[4]: Target '__build' not remade because of errors.
> make[3]: *** [scripts/Makefile.build:500: arch/riscv/kernel/vdso] Error 2
> make[3]: Target '__build' not remade because of errors.
> make[2]: *** [scripts/Makefile.build:500: arch/riscv/kernel] Error 2
> make[2]: Target '__build' not remade because of errors.
> make[1]: *** [Makefile:1797: arch/riscv] Error 2
> make[1]: Target 'Image' not remade because of errors.
> make: *** [Makefile:335: __build_one_by_one] Error 2
> make: Target 'distclean' not remade because of errors.
> make: Target 'defconfig' not remade because of errors.
> make: Target 'Image' not remade because of errors.
>
> <snip>
>
>> diff --git a/arch/riscv/kernel/vdso/.gitignore b/arch/riscv/kernel/vdso/.gitignore
>> index 3a19def868ec..88206dd8b472 100644
>> --- a/arch/riscv/kernel/vdso/.gitignore
>> +++ b/arch/riscv/kernel/vdso/.gitignore
>> @@ -2,3 +2,4 @@
>> vdso.lds
>> *.tmp
>> vdso-syms.S
>> +vdso-syms.nm
>> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
>> index a8ecf102e09b..fe5c969a6bf4 100644
>> --- a/arch/riscv/kernel/vdso/Makefile
>> +++ b/arch/riscv/kernel/vdso/Makefile
>> @@ -49,8 +49,11 @@ SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
>> # We also create a special relocatable object that should mirror the symbol
>> # table and layout of the linked DSO. With ld --just-symbols we can then
>> # refer to these symbols in the kernel code rather than hand-coded addresses.
>> -$(obj)/vdso-syms.S: $(obj)/vdso.so FORCE
>> -	$(call if_changed,so2s)
>> +$(obj)/vdso-syms.nm: $(obj)/vdso.so
>> +	$(call if_changed,nm_d)
>> +
>> +$(obj)/vdso-syms.S: $(obj)/vdso-syms.nm
>> +	$(call if_changed,nm2s)
>>
>> # strip rule for the .so file
>> $(obj)/%.so: OBJCOPYFLAGS := -S
>> @@ -68,9 +71,13 @@ quiet_cmd_vdsold = VDSOLD  $@
>>                            $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
>>                    rm $@.tmp
>>
>> -# Extracts
>> -quiet_cmd_so2s = SO2S    $@
>> -      cmd_so2s = $(NM) -D $< | $(srctree)/$(src)/so2s.sh > $@
>> +# Extracts symbol offsets from the VDSO, converting them into an assembly file
>> +# that contains the same symbols at the same offsets.
>> +quiet_cmd_nm_d = NM -D   $@
>> +      cmd_nm_d = $(NM) -D $< > $@
>> +
>> +quiet_cmd_nm2s = SYMS2S  $@
>> +      cmd_nm2s = cat $< | $(srctree)/$(src)/so2s.sh > $@
>>
>> # install commands for the unstripped file
>> quiet_cmd_vdso_install = INSTALL $@
>>
>> For reference, here's the output of nmo for me:
>>
>> $ cat arch/riscv/kernel/vdso/vdso-syms.nm 0000000000000000 A LINUX_4.15
>> 00000000000009e0 T __vdso_clock_getres@@LINUX_4.15
>> 000000000000080a T __vdso_clock_gettime@@LINUX_4.15
>> 0000000000000a48 T __vdso_flush_icache@@LINUX_4.15
>> 0000000000000a3c T __vdso_getcpu@@LINUX_4.15
>> 0000000000000916 T __vdso_gettimeofday@@LINUX_4.15
>> 0000000000000800 T __vdso_rt_sigreturn@@LINUX_4.15
>
> This diff does not solve the issue for me with the above command.

It wasn't really meant to solve anything, just split the commands up a touch
more so we could see what's going on.

I just installed Debian's toolchain, which is LLVM 9.  IIRC that's pretty
ancient WRT RISC-V, so my guess is that it's just a long way from building
Linux.  Looks like llvm-nm on my system doesn't put the @@LINUX_4.15 after the
symbol names, I think this should do it?

diff --git a/arch/riscv/kernel/vdso/so2s.sh b/arch/riscv/kernel/vdso/so2s.sh
index 3c5b43207658..e64cb6d9440e 100755
--- a/arch/riscv/kernel/vdso/so2s.sh
+++ b/arch/riscv/kernel/vdso/so2s.sh
@@ -2,5 +2,5 @@
 # SPDX-License-Identifier: GPL-2.0+
 # Copyright 2020 Palmer Dabbelt <palmerdabbelt@google.com>
 
-sed 's!\([0-9a-f]*\) T \([a-z0-9_]*\)@@LINUX_4.15!.global \2\n.set \2,0x\1!' \
+sed 's!\([0-9a-f]*\) T \([a-z0-9_]*\)\(@@LINUX_4.15\)*!.global \2\n.set \2,0x\1!' \
 | grep '^\.'

It works for me, at least for this specific problem.

$ llvm-nm-9 -D arch/riscv/kernel/vdso/vdso.so | ./arch/riscv/kernel/vdso/so2s.sh 
.global __vdso_clock_getres
.set __vdso_clock_getres,0x00000000000009e0
.global __vdso_clock_gettime
.set __vdso_clock_gettime,0x000000000000080a
.global __vdso_flush_icache
.set __vdso_flush_icache,0x0000000000000a48
.global __vdso_getcpu
.set __vdso_getcpu,0x0000000000000a3c
.global __vdso_gettimeofday
.set __vdso_gettimeofday,0x0000000000000916
.global __vdso_rt_sigreturn
.set __vdso_rt_sigreturn,0x0000000000000800
$ nm -D arch/riscv/kernel/vdso/vdso.so | ./arch/riscv/kernel/vdso/so2s.sh 
.global __vdso_clock_getres
.set __vdso_clock_getres,0x00000000000009e0
.global __vdso_clock_gettime
.set __vdso_clock_gettime,0x000000000000080a
.global __vdso_flush_icache
.set __vdso_flush_icache,0x0000000000000a48
.global __vdso_getcpu
.set __vdso_getcpu,0x0000000000000a3c
.global __vdso_gettimeofday
.set __vdso_gettimeofday,0x0000000000000916
.global __vdso_rt_sigreturn
.set __vdso_rt_sigreturn,0x0000000000000800

>
> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mhng-e82ecf40-679a-41ed-b2b1-69c64a78f0b2%40palmerdabbelt-glaptop1.
