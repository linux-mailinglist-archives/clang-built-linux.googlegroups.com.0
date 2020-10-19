Return-Path: <clang-built-linux+bncBCS7XUWOUULBB5PTW76AKGQELEZGHMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id E8852292F98
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 22:41:26 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id y12sf140781uan.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 13:41:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603140086; cv=pass;
        d=google.com; s=arc-20160816;
        b=pTjtN8rX2IRgAfLE7Z5tlEbsLB4Q50SeDVS/xIcBHHKCCK5/53JlOHZJN8GqIWZWeX
         b/LbjE6LFiHoeVawpJLjHT5CA2+0beFOKzHn+Ddx62NFghgoE5tqfCQDXr9ZmAcb6KDs
         jw4pIPtlY71scyet48pXk6nAJ0MHVhnAeUkrDqAvenDGwudslqxIwPx6h0+s5ort0AOS
         Yn5wDQgyUWVwNp9Ve0+o0TEhfGpFyE8ZKwbG5AnS9oblBAJrPHw3BnMUzD8vt8LIfTKT
         zsQ61EY+GlrVCIh/fKmaTAeH3PJOwYG1kq0C0ihwNV3JUqBHITdY1n57UZSZ0IakyoDs
         EDtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=CD5aBpt9FPMNqO6iZxs97CH/jSiYckvUl09vIOaMmBM=;
        b=pRfqeAdvwYdG5mUGTOEPPRnZworcbMzlmExXgRjSPryr4F8PRCYA/ft/Y3mc14VXua
         WqfVdaFblG07K5NXPniDkI9aG7w4seBRRRE5C7N7dsH6P9XFa2SvNqS9ZTA5XFU4DRb3
         fOv35TuaioX+kBiVA+QFbdZ4+1Xm0yd1lt1rYmrJBsq4Oau3EiHR/dz/0l9+DoltCtse
         Ex0c58c6ZjGBMtJJw9EA93E/iHGyPhqWTWUt45+cDLQ8fbBUN7Fy0KOPZlLiKKAuBdj3
         89VJZew0E+XJ4oQsHG6B77qSPJ/5Yq8hDBjZmlXM/431jrvq6itoBdoN6LDBQTBfFMGR
         i5Vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uNbz+HXM;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=CD5aBpt9FPMNqO6iZxs97CH/jSiYckvUl09vIOaMmBM=;
        b=iE5iYybiX49iz2scaQM/C+X4E3v4dZ3J/oWrbiiYs/3OAxtTKP8l2GYCaf1JCop8Gv
         8mlAEkSipst0U7SgxRk/pA9SJKbHLLe6gyouwbG5ydB/4wkoVCdKquBMpbqxJS6eMPXI
         kvJY2D7bjwI+r2L2CFLRaWq7kKH6NLnyu5bxwUQDuPaQVv9iOGy4wMIwXq1SMw2a/yQU
         vPPvM7p5Jt5Ey+lr3bI06evUAFSXJ8cW6W1Q90C6OQnJnm7d4KsMkK656bVwKBgmSnRj
         WIA8DjtqhnQWDXgDS1DTg7vX0CAIRbw2qJVbJ7T/+/TgOZUswxaTKDdlaY5kM4PHZCFk
         x8pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CD5aBpt9FPMNqO6iZxs97CH/jSiYckvUl09vIOaMmBM=;
        b=KeiFwy10ch1DPL21QkyjiLYDT2DmKyRK2sPu67ucIGaFfJTzKvOXs0xaB53TMX8xYN
         O39e389oftBKbf0JLQ7z4KM3xO/IB9WqFzPhSwJU8Isk0CfTaIo+dT+fEq4tX9tGVwUV
         YBWnaR0D8HyHuEUtNlRoclNACeGo9w5LETQv8/Jp0yM+T68omy+3CnKrYx+b4/necfwA
         S+nXNt3Cpgci/Q/WhRNT23D+z31/l+OOV+cHvx5HQE9ICxToO535vSF3SakPJ+IWgckB
         PWHKsE7QuhBKZrODZCjigOxJQrO2ZpkZPYGW99vrRPzzUkGFiM+5ZzF0kucQ2SqQ6CB8
         vDBw==
X-Gm-Message-State: AOAM530jW3P+s0oHAxKYKe2kIhQPuu2cwIdozWbZ4smb+5KBUfJKxnKv
	aIqXG0Usak6sFO/9x77iCNc=
X-Google-Smtp-Source: ABdhPJzKkYXxLdKF0TF70E66pX+tcR0s4TFSvgiToywxFMc/4vPhUr1wuhtlvxj2Caik0UahP59l1Q==
X-Received: by 2002:ab0:6034:: with SMTP id n20mr715010ual.90.1603140085823;
        Mon, 19 Oct 2020 13:41:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:15c7:: with SMTP id 190ls139330vsv.1.gmail; Mon, 19 Oct
 2020 13:41:25 -0700 (PDT)
X-Received: by 2002:a05:6102:2406:: with SMTP id j6mr1712341vsi.49.1603140085337;
        Mon, 19 Oct 2020 13:41:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603140085; cv=none;
        d=google.com; s=arc-20160816;
        b=xr+8VB5GeSxavoWGHalZS5RwPmIHRCNpgHfnKaoAt8/jg1pECzTRqFRHZ7Ovz+xL9C
         4R2b0OhR+keNStqMabFlod3yXkVowwyw/BBWK0KYRUh8MMtEIBWJNvyVnqw7K1fMB/Bt
         vTBlbSuo5Ltvshcb0qiJwa4Fj3s8XdVYnzcBB896xffD3PB+ZJlFWbdNT4+W+1JK1ppB
         n6YJwD1tavvdCbB3qBBkpWAt46iURxi7iqS/kCdADOWw6F78+z/r2RAp0DHNLjUHSWev
         HNxZvt68F702U6XAV0iHL3H7RCNZZz2X92kHiBWF8594N4oRacnR25L6b1Npy7z2eEGD
         a1uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JV8BCOR/JvIEgfAvAo8m2P/XD4M4pARgj8lS/n0TjIk=;
        b=e1ixCsSiU+L024JWpGy63bxOTHyiV9G/Oz98vVZjuy1QT+rWcE8igAXDpGH9h4H2Jj
         hB1Yuis8ShgtvrTUIUF6dstniDl69LGxH5JMZ++kL1ql8h++Zbmz6wmuYgNjwxopM9gP
         CrE9nlwttnUorklzhmR0aWVbaELdp91hkGsOOQKaHVZAH51U7yCLbPIX0QWBTApK1QAv
         i2+R2mMmRzBLKb+/CUFSYHRuQS5/UMPFic0739nXgi607C6eYBwwfmUVg1VQdj8ZscXU
         CqzCBVVkvxK1y7MEOK9GEoQEZvgoGfvHJRfpsRdWbavF4jNfVTaZj+fu1hIGWp9AAiPT
         VncQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uNbz+HXM;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id v18si33509uat.1.2020.10.19.13.41.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 13:41:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id gm14so421812pjb.2
        for <clang-built-linux@googlegroups.com>; Mon, 19 Oct 2020 13:41:25 -0700 (PDT)
X-Received: by 2002:a17:90a:ff92:: with SMTP id hf18mr1202895pjb.171.1603140084574;
        Mon, 19 Oct 2020 13:41:24 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id o4sm319396pjp.37.2020.10.19.13.41.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 13:41:23 -0700 (PDT)
Date: Mon, 19 Oct 2020 13:41:21 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Palmer Dabbelt <palmerdabbelt@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-riscv@lists.infradead.org,
	kernel-team <kernel-team@android.com>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] RISC-V: Fix the VDSO symbol generaton for binutils-2.34+
Message-ID: <20201019204121.jaw7mqn4bkn2h6mx@google.com>
References: <20201017002500.503011-1-palmerdabbelt@google.com>
 <CAKwvOdnsRHA1WMb7OWi-jV662xLrBBBZ=zBbB1gvfpBqVFeSfQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdnsRHA1WMb7OWi-jV662xLrBBBZ=zBbB1gvfpBqVFeSfQ@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uNbz+HXM;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044
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

On 2020-10-19, 'Nick Desaulniers' via Clang Built Linux wrote:
>On Fri, Oct 16, 2020 at 5:44 PM 'Palmer Dabbelt' via Clang Built Linux
><clang-built-linux@googlegroups.com> wrote:
>>
>> We were relying on GNU ld's ability to re-link executable files in order
>> to extract our VDSO symbols.  This behavior was deemed a bug as of
>> binutils-2.34 (specifically the binutils-gdb commit a87e1817a4 ("Have
>> the linker fail if any attempt to link in an executable is made."),
>> which IIUC landed in 2.34), which recently installed itself on my build
>> setup.

I filed the issue https://sourceware.org/bugzilla/show_bug.cgi?id=26047
The commit is in 2.35 but not in the released 2.34 branch.

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
>> Cc: stable@vger.kernel.org
>> Cc: clang-built-linux@googlegroups.com
>> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
>
>Ah, I do see a build failure to link the vdso with:
>$ riscv64-linux-gnu-ld --version
>GNU ld (GNU Binutils for Debian) 2.34.90.20200706
>
>riscv64-linux-gnu-ld: cannot use executable file
>'arch/riscv/kernel/vdso/vdso-dummy.o' as input to a link
>
>This patch fixes that for me, but there's a problem related to related
>to `nm` below.
>
>After this, there's two other things we might want to fix up related
>to the build of the vdso:
>1. it looks like $(CC) is being used to link the vdso, rather than
>$(LD).  While it's generally fine to use the compiler as the driver
>for building a linked object file, it does not respect the set $(LD).
>`-fuse-ld=` needs to be passed to invoke the linker the user
>specified.  See also:
>https://lore.kernel.org/linux-kbuild/20201013033947.2257501-1-natechancellor@gmail.com/T/#u
>(this has popped up in a few places when trying to do hermetic builds
>with LLD).
>2. I observe the warning when building with clang: `argument unused
>during compilation: '-no-pie' [-Wunused-command-line-argument]`. IIRC,
>the top level Makefile sets `-Qunused-arguments` for builds with
>clang.  `cmd_vdsold` may need that, but it's curious why it's unused
>and makes me wonder why/if `-no-pie` is necessary?  That also might be
>fixed by fixing 1.
>
>> ---
>>  arch/riscv/kernel/vdso/.gitignore |  1 +
>>  arch/riscv/kernel/vdso/Makefile   | 19 +++++++++----------
>>  arch/riscv/kernel/vdso/so2s.sh    |  7 +++++++
>>  3 files changed, 17 insertions(+), 10 deletions(-)
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
>> index 478e7338ddc1..2e02958f6224 100644
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
>> @@ -68,11 +63,15 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
>>  # Make sure only to export the intended __vdso_xxx symbol offsets.
>>  quiet_cmd_vdsold = VDSOLD  $@
>>        cmd_vdsold = $(CC) $(KBUILD_CFLAGS) $(call cc-option, -no-pie) -nostdlib -nostartfiles $(SYSCFLAGS_$(@F)) \
>> -                           -Wl,-T,$(filter-out FORCE,$^) -o $@.tmp && \
>> +                           -Wl,-T,$(filter-out FORCE,$^) -o $@.tmp -Wl,-Map,$@.map && \

Is -Wl,-Map,$@.map needed?

>>                     $(CROSS_COMPILE)objcopy \
>>                             $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
>>                     rm $@.tmp
>>
>> +# Extracts
>> +quiet_cmd_so2s = SO2S    $@
>> +      cmd_so2s = $(CROSS_COMPILE)nm -D $< | $(src)/so2s.sh > $@
>
>This should use `$(NM)` rather than `$(CROSS_COMPILE)nm` which
>hardcodes the use of GNU nm from GNU binutils.
>
>> +
>>  # install commands for the unstripped file
>>  quiet_cmd_vdso_install = INSTALL $@
>>        cmd_vdso_install = cp $(obj)/$@.dbg $(MODLIB)/vdso/$@
>> diff --git a/arch/riscv/kernel/vdso/so2s.sh b/arch/riscv/kernel/vdso/so2s.sh
>> new file mode 100755
>> index 000000000000..7862866b5ebb
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
>
>-- 
>Thanks,
>~Nick Desaulniers
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnsRHA1WMb7OWi-jV662xLrBBBZ%3DzBbB1gvfpBqVFeSfQ%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201019204121.jaw7mqn4bkn2h6mx%40google.com.
