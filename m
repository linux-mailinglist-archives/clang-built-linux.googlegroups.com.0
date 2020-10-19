Return-Path: <clang-built-linux+bncBCP7VQF36ABBBZ6GXD6AKGQE4WP5ELI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5D029320E
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 01:38:16 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id t4sf59603qtd.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 16:38:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603150695; cv=pass;
        d=google.com; s=arc-20160816;
        b=inptiqVIyytVHa9FRgNcD6eNcJKrIcJas2lbE08Wi95yEm3tdIKzYzrcTlzJSHhz7V
         RHRWJcPb4cMgtdQ7n3EM81Pd9V9wSAjCHGS+L33yaRbzAFf7mmp4aJaGT1tcBfCoLAGE
         kkSUiEvaSU/+XimQdPwDIlxlPzNB5daluTLK7QlawzaDgcSAjiWxbWZ98t6Upd/3fMm0
         lBCIBzpP97RTnJVwIc0FLLymQX7j9gPPef5gy9Bbn+jYa8zYENCFrKWYPFacGa7fDRe+
         WPl/fsycF1f8MOGlXyE8Am3C75AX5HH3h7xjOZGAxgeogo88LYURZ391ZFZ7oFFbkafo
         vnNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id:to
         :from:cc:in-reply-to:subject:date:dkim-signature;
        bh=qlqIqNTvuFhDPrSqFhx1q4yKRC9NpN6bkQugTFhJzvg=;
        b=wz9Rmnr+zblLIY8ruiOOWv2rdgAM8JLh0yRp53KALXwUM2xH8xzCfbcVn09xZPBRwa
         r6fnxp47K22VM3pLdMjVY9hl8eg/ASZuQDfEbluupumn9lB7gy2PvVWeWmay8Q1+q1Uc
         7U0T3kYKzMteMg6Qj1ejsQ1/UqAk6nbBX0ZTmg9k4BgB2+dL4Xuvi8f1L3YTHXq/kSe4
         iUHQ1tKaptRyCYgfy9AlZP3lAe3cMd68eEfWYZBgakK3PXyI4cN3+7OSq4ZoB+e2jtZv
         6pHF0Rw7w/C8AKMO8Rl5VGMrf25DuugyvfhE05HT/HbFaT8BOBIHQnwlTgRT6u2Qb2GR
         W3kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fTz46wi0;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qlqIqNTvuFhDPrSqFhx1q4yKRC9NpN6bkQugTFhJzvg=;
        b=DvPcnGjkWymX3WG1q127w1BOwPQuz00nANq6wZeggpuq/dQ/zyCFTopZlXNEIul8HY
         0HXildSXhmusF8gDzxajCdhKlxyucRqptxVS5wbfU1ulO1pNw8CBnvXOXD3fTkgv4dA5
         /ZQLUsR08d+XPBauGV946uIS7M/NkE5nUFMBnnFM2pqmJ7I86QI8r5CzaJFdnok8oACA
         ujGj6gF0RccrKvrTwj95pq4Rn0dKEBCHJdcQ8vzEDyFMiwS+Oad2XfnC9ofaaRj2zITZ
         T6aviIJ/Z6KwLq5e4Tm5PCN+jHh+WeGlBOBmGkrO4NAHm152oMpjI3g2P7LvlaMZVEAh
         y96g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qlqIqNTvuFhDPrSqFhx1q4yKRC9NpN6bkQugTFhJzvg=;
        b=fbP2fuCpRBt/D/csTNP2iwLjRxOPebNYs1+45sPYK08/ew9D/LMEsmgCRyiExXmAGH
         huPII0X1AYYld1K7lB4QuXH5D58opIU8eyqBkV9ECaMg9wkO1cCNp3RQEWWi7RUYnr8G
         s9eTQaAPBWgvJ6IJyGEYVCndUMaA7LVVLZ1BLjmw37+O/ShZ8efPDnEnQMok6Wt4b+vm
         JEsyHPNxlBIThypcS1dIf+Cz4nt/HbEIFC7xcP72PDM5LH3o9400EmKvo7dDLW8kBqQk
         +GgN+by4x1LC82KlcFqIUrZUxNTCI6OLrG/CvTXVSeLqNhuVVT5c3Z+7MxXS9Xk4iA+w
         ifmw==
X-Gm-Message-State: AOAM530b7dgEYmjgJfZG+zbw2KZ80Nz20gj5+btLvcpPe/8o7myMtckN
	YIfstVQcqI8GQj2hpFcXMTA=
X-Google-Smtp-Source: ABdhPJyKI7xtAMoJJgmQRPh+oEG8FMUeW+lPxoOG7w4DbsW+e4WkvojvhQvqa59lcXPXXdkxuhdQcg==
X-Received: by 2002:ad4:4f46:: with SMTP id eu6mr226253qvb.9.1603150695305;
        Mon, 19 Oct 2020 16:38:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4d0c:: with SMTP id l12ls14823qvl.4.gmail; Mon, 19 Oct
 2020 16:38:14 -0700 (PDT)
X-Received: by 2002:a0c:e054:: with SMTP id y20mr338614qvk.30.1603150694776;
        Mon, 19 Oct 2020 16:38:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603150694; cv=none;
        d=google.com; s=arc-20160816;
        b=sPwsT+pR8HAzyY7hHlPivwXHvyxfSisVX4sUlzyLHNoiswZ46+3wGQsXJyXbXHLNHf
         OkTplHwC0fQLnIaI1NcjhR9zjhU2SbjSoK4+FKJ7KnPZ8DoI7MNkr8LdRVOAwbmrZVBu
         074RrvyhlR/utJp3Ko/PxvNMaC0bz7hWhlWZ/d0eHl1aMmL7MiXZ4zyuCAiGitvA6/lT
         /3R0/mdXTdK7E739zRRz7B+HCIauErDFZ/BZ1dSToFEIzDu0bM0Ux3pBjOJX7c91rMHj
         BEOE8AfQP49oEQG2sdmlfgGqCPMswZG9Si4un84JivRbdkBZtujGGANPfQfb8/pIYLKN
         VCoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=mMyOOTA+qM4WB3OIOjM+vOGGfCTR7HflUyF9on66ERI=;
        b=Qa4ffu+AgDPD/Iw3o0JbbFnGyITMXOLeCYGQfBOz14M2jwDj+sZd5V6u3V1g74SblG
         MJxAb9oeiQDaV++/JvI4cv0LePOmuYQNCDQah4ck6L8RjIPabz4yxMuEApWQErHihkkF
         i35x2A9sprcxdX2poFrpaxJ7hwkKr/HFlgzRYTFKiJk3lrRlQrXbgMYkOGvvOwmwCE/u
         byuGfA/Jp+RTxz1UF8dfj+4aRQ2a8IUuF1ZinJHeTQ8zDsemm0sZ6R6DHVIAwJpyfmx3
         2mvkaK+bHwQmO9fXbYcMyWl821midg6GaES8NpZaSEFq27PU/mqB9nLc7u3cDeU2iu7R
         QVFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fTz46wi0;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id h18si4401qkg.3.2020.10.19.16.38.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 16:38:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id h4so89673pjk.0
        for <clang-built-linux@googlegroups.com>; Mon, 19 Oct 2020 16:38:14 -0700 (PDT)
X-Received: by 2002:a17:902:9681:b029:d5:cdbd:c38c with SMTP id n1-20020a1709029681b02900d5cdbdc38cmr86753plp.85.1603150693662;
        Mon, 19 Oct 2020 16:38:13 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id t5sm582639pgs.74.2020.10.19.16.38.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 16:38:12 -0700 (PDT)
Date: Mon, 19 Oct 2020 16:38:12 -0700 (PDT)
Subject: Re: [PATCH] RISC-V: Fix the VDSO symbol generaton for binutils-2.34+
In-Reply-To: <20201019204121.jaw7mqn4bkn2h6mx@google.com>
CC: Nick Desaulniers <ndesaulniers@google.com>, linux-riscv@lists.infradead.org,
  kernel-team@android.com, stable@vger.kernel.org, clang-built-linux@googlegroups.com
From: "'Palmer Dabbelt' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: maskray@google.com
Message-ID: <mhng-68644eee-bf80-46ee-aecd-466157800f59@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: palmerdabbelt@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fTz46wi0;       spf=pass
 (google.com: domain of palmerdabbelt@google.com designates
 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
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

On Mon, 19 Oct 2020 13:41:21 PDT (-0700), maskray@google.com wrote:
> On 2020-10-19, 'Nick Desaulniers' via Clang Built Linux wrote:
>>On Fri, Oct 16, 2020 at 5:44 PM 'Palmer Dabbelt' via Clang Built Linux
>><clang-built-linux@googlegroups.com> wrote:
>>>
>>> We were relying on GNU ld's ability to re-link executable files in order
>>> to extract our VDSO symbols.  This behavior was deemed a bug as of
>>> binutils-2.34 (specifically the binutils-gdb commit a87e1817a4 ("Have
>>> the linker fail if any attempt to link in an executable is made."),
>>> which IIUC landed in 2.34), which recently installed itself on my build
>>> setup.
>
> I filed the issue https://sourceware.org/bugzilla/show_bug.cgi?id=26047
> The commit is in 2.35 but not in the released 2.34 branch.

Thanks.  Looks like it was backported to the Debian 2.34, I guess I was off by
a release when looking.  Regardless, I think the fix in binutils is reasonable
and that we just shouldn't be doing this sort of thing.

>>> The previous version of this was a bit of a mess: we were linking a
>>> static executable version of the VDSO, containing only a subset of the
>>> input symbols, which we then linked into the kernel.  This worked, but
>>> certainly wasn't a supported path through the toolchain.  Instead this
>>> new version parses the textual output of nm to produce a symbol table.
>>> Both rely on near-zero addresses being linkable, but as we rely on weak
>>> undefined symbols being linkable elsewhere I don't view this as a major
>>> issue.
>>>
>>> Fixes: e2c0cdfba7f6 ("RISC-V: User-facing API")
>>> Cc: stable@vger.kernel.org
>>> Cc: clang-built-linux@googlegroups.com
>>> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
>>
>>Ah, I do see a build failure to link the vdso with:
>>$ riscv64-linux-gnu-ld --version
>>GNU ld (GNU Binutils for Debian) 2.34.90.20200706
>>
>>riscv64-linux-gnu-ld: cannot use executable file
>>'arch/riscv/kernel/vdso/vdso-dummy.o' as input to a link
>>
>>This patch fixes that for me, but there's a problem related to related
>>to `nm` below.
>>
>>After this, there's two other things we might want to fix up related
>>to the build of the vdso:
>>1. it looks like $(CC) is being used to link the vdso, rather than
>>$(LD).  While it's generally fine to use the compiler as the driver
>>for building a linked object file, it does not respect the set $(LD).
>>`-fuse-ld=` needs to be passed to invoke the linker the user
>>specified.  See also:
>>https://lore.kernel.org/linux-kbuild/20201013033947.2257501-1-natechancellor@gmail.com/T/#u
>>(this has popped up in a few places when trying to do hermetic builds
>>with LLD).
>>2. I observe the warning when building with clang: `argument unused
>>during compilation: '-no-pie' [-Wunused-command-line-argument]`. IIRC,
>>the top level Makefile sets `-Qunused-arguments` for builds with
>>clang.  `cmd_vdsold` may need that, but it's curious why it's unused
>>and makes me wonder why/if `-no-pie` is necessary?  That also might be
>>fixed by fixing 1.
>>
>>> ---
>>>  arch/riscv/kernel/vdso/.gitignore |  1 +
>>>  arch/riscv/kernel/vdso/Makefile   | 19 +++++++++----------
>>>  arch/riscv/kernel/vdso/so2s.sh    |  7 +++++++
>>>  3 files changed, 17 insertions(+), 10 deletions(-)
>>>  create mode 100755 arch/riscv/kernel/vdso/so2s.sh
>>>
>>> diff --git a/arch/riscv/kernel/vdso/.gitignore b/arch/riscv/kernel/vdso/.gitignore
>>> index 11ebee9e4c1d..3a19def868ec 100644
>>> --- a/arch/riscv/kernel/vdso/.gitignore
>>> +++ b/arch/riscv/kernel/vdso/.gitignore
>>> @@ -1,3 +1,4 @@
>>>  # SPDX-License-Identifier: GPL-2.0-only
>>>  vdso.lds
>>>  *.tmp
>>> +vdso-syms.S
>>> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
>>> index 478e7338ddc1..2e02958f6224 100644
>>> --- a/arch/riscv/kernel/vdso/Makefile
>>> +++ b/arch/riscv/kernel/vdso/Makefile
>>> @@ -43,19 +43,14 @@ $(obj)/vdso.o: $(obj)/vdso.so
>>>  SYSCFLAGS_vdso.so.dbg = $(c_flags)
>>>  $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
>>>         $(call if_changed,vdsold)
>>> +SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
>>> +       -Wl,--build-id -Wl,--hash-style=both
>>>
>>>  # We also create a special relocatable object that should mirror the symbol
>>>  # table and layout of the linked DSO. With ld --just-symbols we can then
>>>  # refer to these symbols in the kernel code rather than hand-coded addresses.
>>> -
>>> -SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
>>> -       -Wl,--build-id -Wl,--hash-style=both
>>> -$(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
>>> -       $(call if_changed,vdsold)
>>> -
>>> -LDFLAGS_vdso-syms.o := -r --just-symbols
>>> -$(obj)/vdso-syms.o: $(obj)/vdso-dummy.o FORCE
>>> -       $(call if_changed,ld)
>>> +$(obj)/vdso-syms.S: $(obj)/vdso.so FORCE
>>> +       $(call if_changed,so2s)
>>>
>>>  # strip rule for the .so file
>>>  $(obj)/%.so: OBJCOPYFLAGS := -S
>>> @@ -68,11 +63,15 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
>>>  # Make sure only to export the intended __vdso_xxx symbol offsets.
>>>  quiet_cmd_vdsold = VDSOLD  $@
>>>        cmd_vdsold = $(CC) $(KBUILD_CFLAGS) $(call cc-option, -no-pie) -nostdlib -nostartfiles $(SYSCFLAGS_$(@F)) \
>>> -                           -Wl,-T,$(filter-out FORCE,$^) -o $@.tmp && \
>>> +                           -Wl,-T,$(filter-out FORCE,$^) -o $@.tmp -Wl,-Map,$@.map && \
>
> Is -Wl,-Map,$@.map needed?

Nope, that's there be accident.  I've fixed it for the v2.

Thanks!

>
>>>                     $(CROSS_COMPILE)objcopy \
>>>                             $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
>>>                     rm $@.tmp
>>>
>>> +# Extracts
>>> +quiet_cmd_so2s = SO2S    $@
>>> +      cmd_so2s = $(CROSS_COMPILE)nm -D $< | $(src)/so2s.sh > $@
>>
>>This should use `$(NM)` rather than `$(CROSS_COMPILE)nm` which
>>hardcodes the use of GNU nm from GNU binutils.
>>
>>> +
>>>  # install commands for the unstripped file
>>>  quiet_cmd_vdso_install = INSTALL $@
>>>        cmd_vdso_install = cp $(obj)/$@.dbg $(MODLIB)/vdso/$@
>>> diff --git a/arch/riscv/kernel/vdso/so2s.sh b/arch/riscv/kernel/vdso/so2s.sh
>>> new file mode 100755
>>> index 000000000000..7862866b5ebb
>>> --- /dev/null
>>> +++ b/arch/riscv/kernel/vdso/so2s.sh
>>> @@ -0,0 +1,6 @@
>>> +#!/bin/sh
>>> +# SPDX-License-Identifier: GPL-2.0+
>>> +# Copyright 2020 Palmer Dabbelt <palmerdabbelt@google.com>
>>> +
>>> +sed 's!\([0-9a-f]*\) T \([a-z0-9_]*\)@@LINUX_4.15!.global \2\n.set \2,0x\1!' \
>>> +| grep '^\.'
>>> --
>>
>>--
>>Thanks,
>>~Nick Desaulniers
>>
>>--
>>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnsRHA1WMb7OWi-jV662xLrBBBZ%3DzBbB1gvfpBqVFeSfQ%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mhng-68644eee-bf80-46ee-aecd-466157800f59%40palmerdabbelt-glaptop1.
