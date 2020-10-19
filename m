Return-Path: <clang-built-linux+bncBCP7VQF36ABBBIWPXD6AKGQERKRBQTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id D1556293229
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 01:56:19 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id r83sf26454oia.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 16:56:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603151778; cv=pass;
        d=google.com; s=arc-20160816;
        b=UuEhzCNHIGrpQ9Syjs0mAQg2E4JA1uB8v4Lis+ZC+YBO7cZFlQIs752awcMNwA0QC4
         qwi4hs1D2ZnXVZRJryVOBOg/uIRjS6DTfyJ6l/+5K1jgx+SEMyU5hr14cduEsDmz/6M9
         jMSSRklzSM6thkhJ0sG6fidoPPOvpgClwo1vFSRJHOF/1olrNy931AuZ9iPtC1QnXEsd
         h6SMruZo0LroZqL+DenSku7qT8RsRauRBnSvg4EZwBanA/9nBudGJny+S6Lb4lXb85im
         HZTZDchGmsW2d5785h0+9UOoitwjfGmwvYYKvQgErFbFR8eNcySPqejHlB6T/uUdsFAM
         bumA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id:to
         :from:cc:in-reply-to:subject:date:dkim-signature;
        bh=uvOhxfw5nxQyG5oLUduxqlWir3BtB7B+zfX+5VPlY2I=;
        b=zZO3EWoKDTc+RHiAL6V/BXmKp66V88aDUGhd5+4M80RDY/kWRVOujRiA3EMGo+H14f
         9dEkUnWRDNfMaa9HVQcnJHrdaXTkkuslrh7MM1p1x5xt/sBdKZMcqH2xqfcldWU5/Fna
         jB9P54kp7bQzuVyaY6Jdl3FtG1DapscJHbA5YzMYV12g1K0/T+wJKWdEK41fp/zRKIEt
         5/lEtcRfI+TIZeC4arn9ebYnGPclru0fQ9l+TT31qC4yYfS857b190oZbI57Ppd1jzA4
         Nf4DEhSySGqVADk/L0Tqa/VeLOYPDhGr1NG8ds2jaD3d1QV+2yJ1UAeMUaEwjC+sazSC
         zHtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e5RtB9Bd;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uvOhxfw5nxQyG5oLUduxqlWir3BtB7B+zfX+5VPlY2I=;
        b=FzGSU+KPsvnL+PCyf8hD+iEiOQo2VdbCgUa8RBI69NTy+Mljfzl9vmkF7lR5shInyR
         22TCf251qthj9EOdnWPszAAymEcvBTKN872uN1PTkb4c2Xv6BTkSayEt2nq9yfqoDko/
         MO9HHkUZoUaNmcJnzhiln90LqcPpOYq79CUFYxXI4GMXlCBe9BZLZG4rnelmoRRDWmWU
         /UJJ5SZI3HwemO+y4CpNPioyJhlKKdEjCtAk7ZVUoNMaIsMa5TG4/yWAmjFhUYevI0Dl
         +NHVHKkEUYYilavOBcMRWv6LLEaWJ/aC7UZRAYmiAQKDE5AZvI0sOUpnPOWeiB+in2V4
         QgQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uvOhxfw5nxQyG5oLUduxqlWir3BtB7B+zfX+5VPlY2I=;
        b=HQu9Z2Y5MO8UZIkfa3uQy/H5mbw4oGhHYSmhZaHQnUlMxVDjl2Yy1e9WVUjkgJ6PUw
         eapTdF6pb5k2S86DflgPyCQVtZI/+0cT3FW/gqUsO+qAdv5ztdy4CImghCxZOlUA8txn
         +dSvOYwMkMNy3yutgt2G+jFnwKWHEZEz1mPVk0Qmxr1rb+596AYtLfC0eDYPwulBN4H2
         IuwVtqjXfz22HWFGcluf7T6+1/bZ2ooUtawP6NiTlRSdXMrQNJRpTLdvcJl6UfpYZSda
         3/ajqVw51NLdKYoVrTUnCR1P5CXlbwu2rfCY9TGtRp7jEKTI8jhM5V3fAPqvGm/rU6Mf
         iiIQ==
X-Gm-Message-State: AOAM532N67UNt6lx/K+EpgYQUWPugy3zvVhKYV3XMj/mK1eU5b5LOcE/
	6EmgrWqEKh2+jSTbGHqwiEs=
X-Google-Smtp-Source: ABdhPJwR5fTxEFn7xnL5TROgfjhin4bZl3VueIQptqkaMIlhAE5BPKt550cBkoEaz5ObwjQGQez3yQ==
X-Received: by 2002:a9d:61c8:: with SMTP id h8mr9073otk.85.1603151778713;
        Mon, 19 Oct 2020 16:56:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c38a:: with SMTP id t132ls438694oif.4.gmail; Mon, 19 Oct
 2020 16:56:18 -0700 (PDT)
X-Received: by 2002:aca:4dd2:: with SMTP id a201mr51511oib.135.1603151778338;
        Mon, 19 Oct 2020 16:56:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603151778; cv=none;
        d=google.com; s=arc-20160816;
        b=LXRu3LMAVQBeX5c48Tk8TUD0BlJ3jwJjsnnrtac6NtkUFoyIBZ3Nc0CeuIKCuvYz9m
         8vSyDOINPmirvODseh7YSuDIVqrYD3OoKdekypi7GMbADHPgOTl7oYcyF2r993UfSDyk
         towN5LpRu4cd+zVM5YdpJiPDOAEfIVzmpMw8FoXSiBpKFmo2T7Zm+aXYVYf5fBJ5BtSc
         r5DOii/TBiQ4cFjz33KW0B/xq8T4dN6JxWHbPFtthNf8L/Nm7RnatUZ1SJCK9XNzXc0S
         KFnNev/pmK+/lpZtgmCaD/mKUtr1Vv8vR80FmUYHL+5cXBT+oE7iGwiCPFpMPNuCcvdr
         Lurw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=ExWjl1JeGWG1HkzmziK2mHIyQpKJ6XAkOWwi0DXTdkE=;
        b=Kt2Aze2blqJWAdha9SRu/C+KAmNIn6A4hX53r1UchqWLTHXnJhL6wMSVwkMlpmzWGo
         IlTjXV4+rQ5kWXQhkUfexdaX09GJ5CV2D4h/1u1KrsO/w0CslU6CvikvECCqjMB3E06W
         nCOETYGWcYCADY4WLtG3mJGTtn2JdKe+5I0EXHK69rMkJLBKUpGSrVqQLwRRYXkPnwQO
         w4PFSt+xTUq/QJyssDhLV5yOPfMUoQz7aeCmiQis32bmqqFlv4cM1lBNnkLAdhfbOngI
         uJJ0QbKNa6WjKwuKgeILIP1x/9wFompIwiEfP6wK5/xJzyEauaun67qfdCxx5+nsGfD0
         UVZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e5RtB9Bd;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id a7si7413oie.4.2020.10.19.16.56.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 16:56:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id r10so946047pgb.10
        for <clang-built-linux@googlegroups.com>; Mon, 19 Oct 2020 16:56:18 -0700 (PDT)
X-Received: by 2002:aa7:9af1:0:b029:152:6101:ad12 with SMTP id y17-20020aa79af10000b02901526101ad12mr22757pfp.40.1603151777364;
        Mon, 19 Oct 2020 16:56:17 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id q8sm94896pfl.100.2020.10.19.16.56.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 16:56:16 -0700 (PDT)
Date: Mon, 19 Oct 2020 16:56:16 -0700 (PDT)
Subject: Re: [PATCH] RISC-V: Fix the VDSO symbol generaton for binutils-2.34+
In-Reply-To: <CAKwvOdnsRHA1WMb7OWi-jV662xLrBBBZ=zBbB1gvfpBqVFeSfQ@mail.gmail.com>
CC: linux-riscv@lists.infradead.org, kernel-team@android.com, stable@vger.kernel.org,
  clang-built-linux@googlegroups.com
From: "'Palmer Dabbelt' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Message-ID: <mhng-d0a80ce3-f5e0-49da-b91d-0f6f6d0f2cb3@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: palmerdabbelt@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=e5RtB9Bd;       spf=pass
 (google.com: domain of palmerdabbelt@google.com designates
 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
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

On Mon, 19 Oct 2020 12:24:02 PDT (-0700), Nick Desaulniers wrote:
> On Fri, Oct 16, 2020 at 5:44 PM 'Palmer Dabbelt' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
>>
>> We were relying on GNU ld's ability to re-link executable files in order
>> to extract our VDSO symbols.  This behavior was deemed a bug as of
>> binutils-2.34 (specifically the binutils-gdb commit a87e1817a4 ("Have
>> the linker fail if any attempt to link in an executable is made."),
>> which IIUC landed in 2.34), which recently installed itself on my build
>> setup.
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
>> Cc: stable@vger.kernel.org
>> Cc: clang-built-linux@googlegroups.com
>> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
>
> Ah, I do see a build failure to link the vdso with:
> $ riscv64-linux-gnu-ld --version
> GNU ld (GNU Binutils for Debian) 2.34.90.20200706
>
> riscv64-linux-gnu-ld: cannot use executable file
> 'arch/riscv/kernel/vdso/vdso-dummy.o' as input to a link

Ya, looks like it was actually a backport.

> This patch fixes that for me, but there's a problem related to related
> to `nm` below.
>
> After this, there's two other things we might want to fix up related
> to the build of the vdso:
> 1. it looks like $(CC) is being used to link the vdso, rather than
> $(LD).  While it's generally fine to use the compiler as the driver
> for building a linked object file, it does not respect the set $(LD).
> `-fuse-ld=` needs to be passed to invoke the linker the user
> specified.  See also:
> https://lore.kernel.org/linux-kbuild/20201013033947.2257501-1-natechancellor@gmail.com/T/#u
> (this has popped up in a few places when trying to do hermetic builds
> with LLD).

It's probably just to make the argument handling easier -- I generally avoid
invoking the linker directly and instead just always use CC because I can never
remember the linker arguments.

> 2. I observe the warning when building with clang: `argument unused
> during compilation: '-no-pie' [-Wunused-command-line-argument]`. IIRC,
> the top level Makefile sets `-Qunused-arguments` for builds with
> clang.  `cmd_vdsold` may need that, but it's curious why it's unused
> and makes me wonder why/if `-no-pie` is necessary?  That also might be
> fixed by fixing 1.

That seems odd: vdsold is only used for a link, and -no-pie is necessary for
linking.

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
>>                     $(CROSS_COMPILE)objcopy \
>>                             $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
>>                     rm $@.tmp
>>
>> +# Extracts
>> +quiet_cmd_so2s = SO2S    $@
>> +      cmd_so2s = $(CROSS_COMPILE)nm -D $< | $(src)/so2s.sh > $@
>
> This should use `$(NM)` rather than `$(CROSS_COMPILE)nm` which
> hardcodes the use of GNU nm from GNU binutils.

Thanks, this is fixed in the v2.  Presumably we should be using $(OBJCOPY) as well?

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

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mhng-d0a80ce3-f5e0-49da-b91d-0f6f6d0f2cb3%40palmerdabbelt-glaptop1.
