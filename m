Return-Path: <clang-built-linux+bncBCS7XUWOUULBBOHDV73AKGQEIWNIUCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A911E1297
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 18:26:34 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id mt16sf344602pjb.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 09:26:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590423993; cv=pass;
        d=google.com; s=arc-20160816;
        b=etsUXZyl85xoDz5ARvYIUVSHxJhswP0yYRxQnU/BDYKjYS5JuiQKuW/8YLZFxkPUg8
         VMxXYrEvp/KMMvb54751Q/r6ld7prkFoj9jd9BN9RT2uFKFH6nb81eNmNi1tU/T1F9V2
         eRTNeklDCC1GhqhjLqwR3r9dXNkgrdytRShNc2TCMkP1UqfseE6Gx+xZHC9NH4G6K0VL
         kNuH+BbeY0w1UzhCA2g7bjwdExUMg8i7rbrRmPppvrvY0nSaGAiM595k5uu4lB1Q9UwN
         6EG7lZOYnOUBnOTF04WYriSrhmowVnNiZTTZDHzcPoNEGI92RLGFlojAEF6zkg4qjHkc
         YNCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=7Jv0X9LGTQRW2EJshYQEg4z61KK9YyENrldPjSEcu6Q=;
        b=ELvDiSL3JJVZq8EFUMlZFaPvKVFCdXt8xSrHfDyf3Es53Gh9AdX/hRe5JMCSqq26UE
         LIA2IqFHeKgELpI/yIrMgnDUMFRkX6vieTSekQQYX+9pofjf8/RxLCDCcIvQnqgAbhDL
         jvXL/zYJY8mK+qUEM7mJ+DMsHcGsygg8Qa8s0kggVdlH9wSpKeOhKitw+BPcz/vfCVpW
         pSUcyWvHAtcv2VHvfJ6IMMCkXp99mXqTjzS//Pjv02uvw6+eFfOj2gGLVJMpkE3SBbPJ
         bgfpNHvFd0X8co9pSRu2w1uCyVw2OQfr+DF7AflaEfyP1MZCLX7sWoH0NM8pLmgWiyjL
         nnZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=smwQ83X7;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=7Jv0X9LGTQRW2EJshYQEg4z61KK9YyENrldPjSEcu6Q=;
        b=Pc99Jd37PshVuIBwSlxjrY5/3Os7bvehUIAbjPDrEx4BQKkHtc1gX6ZpwJK/njc2S7
         2PZye81QuWSe6ZOL420hD3HqoAD8dIH/QCcQU2krjBoK+zCSLP5Qny7ohIr/sLFa0pkr
         t8tf9GKbfSoBfI3GoU4pDdTZZAYlVY7Jn9brnmWTujLUdv3jqLjEb71FVxTyUN86NoOA
         zotVVpNqXBjtdsPRrYKN/RpjpKnCwj7+R/HRbZbCWkShkcJKJs+HPRyNKHzIRfiYliBr
         /gFNMB48LdzlR4OAiukASbl8SYq26F8f4RYQ8A55feP77Xanpbw/CJHjM3m3g0cv70Lw
         8HRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Jv0X9LGTQRW2EJshYQEg4z61KK9YyENrldPjSEcu6Q=;
        b=dxsocb7oHEwQlN+T+/Gb8nlfYDOWDMBtIYJLzBxQyMdhcYT2tO/ZR184vT1uR6cUTE
         gsO/547I+ASVx/ZzbtVmoLHu4wPjOQ+bnLWIlUuZqVZOcyjYGQBSaOsBbtL3gPF7pI9W
         vGQ4Tt4fKvxc+H4noARi/AeHLyCS/DdWqcgFxbakXj35BHLPQTCM4I40RpJfKBsemurb
         b7HbjW7YuI+armxaVqva3Y7sfYKN7nz2GExtv5yntM5qXr83Z4XbLlkolMxzWJ7kA0LL
         rd2oUM5qWygx6qnSncUqlafB3jKCokUXE6jieAAMWMydq5Cqa8eVmQXFXiYUGiSyZW48
         WIWQ==
X-Gm-Message-State: AOAM530eYQ/Z2EklLYdfC4MaJP9oD4JhB/bJeMuxpHWFbm+IX9X1rF7J
	V9n3LbaqoALSrlq6LKeFDC4=
X-Google-Smtp-Source: ABdhPJyBXrc+PHgcFTSE5LUebziheEkbUQdapDlZ5Kgu65TPV4ptjeSjars7VT5Ag5xp6GXfQiCVdw==
X-Received: by 2002:a17:90a:e016:: with SMTP id u22mr21620588pjy.28.1590423992870;
        Mon, 25 May 2020 09:26:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1cca:: with SMTP id c193ls3067228pfc.9.gmail; Mon, 25
 May 2020 09:26:32 -0700 (PDT)
X-Received: by 2002:a65:51c7:: with SMTP id i7mr27451874pgq.382.1590423992458;
        Mon, 25 May 2020 09:26:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590423992; cv=none;
        d=google.com; s=arc-20160816;
        b=imLbc/2FeRsT+PVzK+BRS+yCr2olN+Fi04u0mtUMHUapkTN9K2Gj0KS4DxGOUCE8Sa
         gqF7ffhPqEpefln8x6mV1u3z/WwiUulcQfv2TYXmVqraxOTZVBJ7x21TZJ+0S4okO3pb
         RqvDIoXHwS1O/dJdG+XES5QA2W9j5dvr+yoXByiYRVTIwJBVJNUuJ3hfNIaXyPgXu0y1
         7+pNjewdLTbszPDK352Cv4FiqwU+Pg8pHZ9BJdwBlPv+2FrQO+M4eI129qJU4kkGC2ck
         8J/cZ4sfEDw+A7/svMJYhoVeaksBLx0ezpd8voTtnCDN9T6CSThKE0KhVF9SK0G2lw5a
         FDQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7P+69zSItFSaF7MzlKMuY5SXRy3EOvJEQAB8khNVn2Y=;
        b=lz6PPV+CODLhDiWwkRdKdgtVYtFxOiPOGZEcmLBcH8V7ohMUCMrKODZyOp0VBanaKY
         UX+KAAHeZbViEXJrtEKaRFPDLUOstwZCbBY6oM7Bewy3ji+xAQ6fno61gEcrKI9H1I/4
         CXHlhnm4Z6BwhWgQra6zd2gwuuibOs5pc0GW8OSG5qq62sQ16HlxdtmNuolhR4Q3HpNg
         f/wCf77Kevuo4XRudMDYA3N5Q+dTCMlEaytCcDtngSfhKwyrdKag8xxnfWavgQ04KHT4
         BJGQZhTCUBQXhp3575tZZSAKEPJcJsegkkIZVbbfW2hd0h9DHU+JQfs2h/P+r7rI4LQ+
         k5FQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=smwQ83X7;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id g6si1125474pjl.1.2020.05.25.09.26.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2020 09:26:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id x10so7635462plr.4
        for <clang-built-linux@googlegroups.com>; Mon, 25 May 2020 09:26:32 -0700 (PDT)
X-Received: by 2002:a17:902:c38b:: with SMTP id g11mr29768262plg.189.1590423991775;
        Mon, 25 May 2020 09:26:31 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id n38sm2952792pgm.1.2020.05.25.09.26.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 May 2020 09:26:31 -0700 (PDT)
Date: Mon, 25 May 2020 09:26:26 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 4/4] x86/boot: Check that there are no runtime relocations
Message-ID: <20200525162626.4covxuycii6bvmjg@google.com>
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
 <20200524212816.243139-5-nivedita@alum.mit.edu>
 <CAMj1kXFjDMuLekYKiPoKDqJhfkY8UViApdMd3JaPmGbnKLO+NA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAMj1kXFjDMuLekYKiPoKDqJhfkY8UViApdMd3JaPmGbnKLO+NA@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=smwQ83X7;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643
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

On 2020-05-25, Ard Biesheuvel wrote:
>On Sun, 24 May 2020 at 23:28, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>>
>> Add a linker script check that there are no runtime relocations, and
>> remove the old one that tries to check via looking for specially-named
>> sections in the object files.
>>
>> Drop the tests for -fPIE compiler option and -pie linker option, as they
>> are available in all supported gcc and binutils versions (as well as
>> clang and lld).
>>
>> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
>> ---
>>  arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
>>  arch/x86/boot/compressed/vmlinux.lds.S | 11 ++++++++++
>>  2 files changed, 14 insertions(+), 25 deletions(-)
>>
>> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
>> index d3e882e855ee..679a2b383bfe 100644
>> --- a/arch/x86/boot/compressed/Makefile
>> +++ b/arch/x86/boot/compressed/Makefile
>> @@ -27,7 +27,7 @@ targets := vmlinux vmlinux.bin vmlinux.bin.gz vmlinux.bin.bz2 vmlinux.bin.lzma \
>>         vmlinux.bin.xz vmlinux.bin.lzo vmlinux.bin.lz4
>>
>>  KBUILD_CFLAGS := -m$(BITS) -O2
>> -KBUILD_CFLAGS += -fno-strict-aliasing $(call cc-option, -fPIE, -fPIC)
>> +KBUILD_CFLAGS += -fno-strict-aliasing -fPIE
>>  KBUILD_CFLAGS += -DDISABLE_BRANCH_PROFILING
>>  cflags-$(CONFIG_X86_32) := -march=i386
>>  cflags-$(CONFIG_X86_64) := -mcmodel=small
>> @@ -49,7 +49,7 @@ UBSAN_SANITIZE :=n
>>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>>  # Compressed kernel should be built as PIE since it may be loaded at any
>>  # address by the bootloader.
>> -KBUILD_LDFLAGS += $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
>> +KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
>>  LDFLAGS_vmlinux := -T
>>
>>  hostprogs      := mkpiggy
>> @@ -84,30 +84,8 @@ vmlinux-objs-$(CONFIG_ACPI) += $(obj)/acpi.o
>>  vmlinux-objs-$(CONFIG_EFI_STUB) += $(objtree)/drivers/firmware/efi/libstub/lib.a
>>  vmlinux-objs-$(CONFIG_EFI_MIXED) += $(obj)/efi_thunk_$(BITS).o
>>
>> -# The compressed kernel is built with -fPIC/-fPIE so that a boot loader
>> -# can place it anywhere in memory and it will still run. However, since
>> -# it is executed as-is without any ELF relocation processing performed
>> -# (and has already had all relocation sections stripped from the binary),
>> -# none of the code can use data relocations (e.g. static assignments of
>> -# pointer values), since they will be meaningless at runtime. This check
>> -# will refuse to link the vmlinux if any of these relocations are found.
>> -quiet_cmd_check_data_rel = DATAREL $@
>> -define cmd_check_data_rel
>> -       for obj in $(filter %.o,$^); do \
>> -               $(READELF) -S $$obj | grep -qF .rel.local && { \
>> -                       echo "error: $$obj has data relocations!" >&2; \
>> -                       exit 1; \
>> -               } || true; \
>> -       done
>> -endef
>> -
>> -# We need to run two commands under "if_changed", so merge them into a
>> -# single invocation.
>> -quiet_cmd_check-and-link-vmlinux = LD      $@
>> -      cmd_check-and-link-vmlinux = $(cmd_check_data_rel); $(cmd_ld)
>> -
>>  $(obj)/vmlinux: $(vmlinux-objs-y) FORCE
>> -       $(call if_changed,check-and-link-vmlinux)
>> +       $(call if_changed,ld)
>>
>>  OBJCOPYFLAGS_vmlinux.bin :=  -R .comment -S
>>  $(obj)/vmlinux.bin: vmlinux FORCE
>> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
>> index d826ab38a8f9..0ac14feacb24 100644
>> --- a/arch/x86/boot/compressed/vmlinux.lds.S
>> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
>> @@ -11,9 +11,15 @@ OUTPUT_FORMAT(CONFIG_OUTPUT_FORMAT)
>>  #ifdef CONFIG_X86_64
>>  OUTPUT_ARCH(i386:x86-64)
>>  ENTRY(startup_64)
>> +
>> +#define REL .rela
>> +
>>  #else
>>  OUTPUT_ARCH(i386)
>>  ENTRY(startup_32)
>> +
>> +#define REL .rel
>> +
>>  #endif
>>
>>  SECTIONS
>> @@ -42,6 +48,9 @@ SECTIONS
>>                 *(.rodata.*)
>>                 _erodata = . ;
>>         }
>> +       REL.dyn : {
>> +               *(REL.*)
>> +       }
>
>Do we really need the macro here? Could we just do

The output section name does not matter: it will be discarded by the linker.

>.rel.dyn : { *(.rel.* .rela.*) }

If for some reasons there is at least one SHT_REL and at least one
SHT_RELA, LLD will error "section type mismatch for .rel.dyn", while the
intended diagnostic is the assert below.

>(or even
>
>.rel.dyn  : { *(.rel.* }
>.rela.dyn : { *(.rela.*) }
>
>if the output section name matters, and always assert that both are empty)?

   .rel.dyn  : { *(.rel.* }
   .rela.dyn : { *(.rela.*) }

looks good to me.


FWIW I intend to add -z rel and -z rela to LLD: https://reviews.llvm.org/D80496#inline-738804
(binutils thread https://sourceware.org/pipermail/binutils/2020-May/111244.html)

In case someone builds the x86-64 kernel with -z rel, your suggested
input section description will work out of the box...


>>         .got : {
>>                 *(.got)
>>         }
>> @@ -83,3 +92,5 @@ ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT en
>>  #else
>>  ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
>>  #endif
>> +
>> +ASSERT(SIZEOF(REL.dyn) == 0, "Unexpected runtime relocations detected!")
>> --
>> 2.26.2
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200525162626.4covxuycii6bvmjg%40google.com.
