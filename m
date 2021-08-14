Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBVVC4GEAMGQEPD2EBJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 8423D3EC5F1
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Aug 2021 01:27:19 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id h10-20020a05620a284a00b003d30e8c8cb5sf1254512qkp.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 16:27:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628983638; cv=pass;
        d=google.com; s=arc-20160816;
        b=QwjlvR7/CscDC5znutcnx8ZAA+OpHRoi5DA6jgk2+3tA9cTiTNGmusf3TIG63CEZsN
         5Q9cjS2aJBqmFH05JtG6xr8/v5zP5ptGqhA3HPd471Q8cylh/QEUohY8Dy2cveZ7TuDk
         KcbXWa05c0X/RAt/FvSMQcptFQfozHsU2epD6Cgxfb6aRDaP/JfuLC3IZUUCG3RuEUNq
         z4v1koud8YRhZk0m6loMs/oup2EbgoXvB4zMomDc2+LEhEGD6j32wISblW6GF4q3zquc
         QBq14n6BYClkzcy76WgpHnWMN5gNRPKzKvu1HWmwlcc7YDIdYEu8uJCqAGtMEuy4RCXp
         OjPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=TK1wAlX2tRyKQQHL4PzNeLWepIbxSJdFprYqeec63Q8=;
        b=Y5lLTeGUGyD2ObHVViw/1KLKVPDIyGqQwXtlJKGThJwOgG8qlC7VNSsOuC8V23H7mq
         XH0RSVmpvkUrXDQ03thgjfqxUMGvaoPepbNNJ1DfM/x5+ba//aEfpOhcMM26ypH6GsQY
         RHxBJsij6TpIPhrFdPynKeGa5fAwu8ZuI/5XWuwvo1qzyRqZ1s8u87BMjlDPUvDOeW1G
         isunJTi+tplXOC2sl5sV55+1W2Djrx041LI5Bo2U8o50zGg73MN4Q+mJNkzdvBmV1A0a
         EhFgdoQML8lRIJOHAGvMxgDQnf8vSztd+4TXZYgaXkHsSbhOZDZdDDL/xrDmEPskidHr
         FTQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=gAk2iqYK;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TK1wAlX2tRyKQQHL4PzNeLWepIbxSJdFprYqeec63Q8=;
        b=gVPClt9TnW/8SZn/ofDdbx/gwajRtvozfafMVK6nf9WZtHywU8kPA4OXLixg2V5DO0
         RWc25JmrsdUzyI3wCDtGL3dF7g37+E7deNrXB+tYasXs5C4DECkR6lsKE/UaKs/H3+TG
         5KTdcuY/D8n2JYapfrNa9+JMFT2OT/UrLLDJb2ASfWnoguPF7a7hyXczNTxBGwMq7T7Q
         Aj3XXBMLILrdfAFPw2SUd6jxTcIiO1s70Qnuf0kYIp6d+EIVpVmyz1FkkTyg2XXQicvX
         x2krX4NTX+DKVbNPzyY+09Z8N86WM6W+1uXOjSaUqWww0G0ZdmXUqrcuE5yI7YQET5jq
         1r2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TK1wAlX2tRyKQQHL4PzNeLWepIbxSJdFprYqeec63Q8=;
        b=goADDGSPD5Z9VvIvPzn2kRYwria2G7yytza/sTfiVNaiEduPKJCOXdnK+xNm9GlqqP
         sV4vh7XW5R7NGeeQ3LYbb6gjkjkOug/c7r6LDRoq5DuN4WW2X6HOgw/ApAAa7Kx9ka2o
         YA39+8jMm1Z5wgRPXJBnYY5q0Lyi5AOKV6+QM/j7ciLGw3JjWEqiKafwHPQQgMaJBIu5
         rf7Xx7wPsfbQvqzwj11+RwQBe3u+tPUVVLK2RevwtzfEqRi7m/I1BotFVHdi+dTsQjNi
         +2pjzmb6sU3bmpk61p02LsdeoVAFM+sgajqXKa6vq57Cv5UyhbbV8aHT1r+3p2oQe9v1
         jdmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531MMKvdjO91BuOU7cX7zA8qaefwQCREBq9f27nBHedfIfl4Fmvl
	N4WK5ngRKJxgGBa4b0U82Gg=
X-Google-Smtp-Source: ABdhPJwX8QNYwH1pHGtnhjeP81wwtqPbynI0ONXvYx4VASvBniELNsBP4dsp+Bvg/wAw4wCJnjJ4Ww==
X-Received: by 2002:a05:6214:27ea:: with SMTP id jt10mr9509770qvb.39.1628983638535;
        Sat, 14 Aug 2021 16:27:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e605:: with SMTP id z5ls3192292qkf.8.gmail; Sat, 14 Aug
 2021 16:27:18 -0700 (PDT)
X-Received: by 2002:a05:620a:1311:: with SMTP id o17mr8979093qkj.295.1628983638126;
        Sat, 14 Aug 2021 16:27:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628983638; cv=none;
        d=google.com; s=arc-20160816;
        b=hMLxuDOuM9ieqdUhsKoAfYnBmcf8n/U4FB5JHsmVkScNPvounBw9liGoFL+6yEKvki
         GpIdU6d/xY73WjQ9TjE4c5EpJTIWWiyypOPbrUAzHLZt59Z+wUYwcfstObH/3LWN9spf
         emoBBmUGDUGeY1Z5PdDw+Y4xwvCb8b+ygdN0NPOPZr+FYHJJw+TyJyQ0dwnF4nTEeyo8
         9aAytr7NBFCmtawyoBI1smbPwUEBiqetdhCFa5gEaV9MEEekcBF+vKBFv6Z80ZUnvJu5
         IaaQzN27EANmMvu1vfhYhbsY+tJsUYmprz0ly3MnHAbcYParBZfFeairALqpEoV71DGv
         iWRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=7z+omtu8gmqaOgMf41PFzvC+a++lkF72UQ6ovQ7SYtM=;
        b=0rbGRT6+Zn+L5x5zHfKfb1oTEevKtDW3awfdw9KtvTdC+e6+BJYRldNHini+gVbugM
         WDvwLL2hLaAziWcofsigxMroqAcdyx/M6KixojxPMicB5jm5qsqGcvs7Avz/924svtgq
         NISpJH9eNeRxzg0bnhSnpcdyt9325IV9N9xEjfpcaZei+x98I2e0ImFoXQZh4AgcMDhp
         vvb4bg8670l+VqKXJRFT9lmyaaB3D1v/0JiiumHk0RYu2byMspKNDfARBtyqpVhc7+0l
         c0g0R0eFTMAwDIz/IXQ0JAHEzKrj3Eimyp0cHkbB3cY9fi9laGivMhIpo7BzXMhybvQ6
         mYjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=gAk2iqYK;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id 12si260809qtp.2.2021.08.14.16.27.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Aug 2021 16:27:18 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 17ENR3pH026150
	for <clang-built-linux@googlegroups.com>; Sun, 15 Aug 2021 08:27:04 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 17ENR3pH026150
X-Nifty-SrcIP: [209.85.216.41]
Received: by mail-pj1-f41.google.com with SMTP id w14so20831674pjh.5
        for <clang-built-linux@googlegroups.com>; Sat, 14 Aug 2021 16:27:04 -0700 (PDT)
X-Received: by 2002:aa7:94ac:0:b0:3e0:f21a:e6ff with SMTP id
 a12-20020aa794ac000000b003e0f21ae6ffmr8732818pfl.76.1628983623343; Sat, 14
 Aug 2021 16:27:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210812214614.1797845-1-samitolvanen@google.com>
In-Reply-To: <20210812214614.1797845-1-samitolvanen@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 15 Aug 2021 08:26:26 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ8Ucg=ZrEtMUCMkq3wonZqaijtrqbeUBod6DLERrp=zw@mail.gmail.com>
Message-ID: <CAK7LNAQ8Ucg=ZrEtMUCMkq3wonZqaijtrqbeUBod6DLERrp=zw@mail.gmail.com>
Subject: Re: [PATCH v3] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>, Michal Marek <michal.lkml@markovi.net>,
        Alexander Lobakin <alobakin@pm.me>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=gAk2iqYK;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Aug 13, 2021 at 6:46 AM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> With CONFIG_LTO_CLANG, we currently link modules into native
> code just before modpost, which means with TRIM_UNUSED_KSYMS
> enabled, we still look at the LLVM bitcode in the .o files when
> generating the list of used symbols. As the bitcode doesn't
> yet have calls to compiler intrinsics and llvm-nm doesn't see
> function references that only exist in function-level inline
> assembly, we currently need a whitelist for TRIM_UNUSED_KSYMS to
> work with LTO.
>
> This change moves module LTO linking to happen earlier, and
> thus avoids the issue with LLVM bitcode and TRIM_UNUSED_KSYMS
> entirely, allowing us to also drop the whitelist from
> gen_autoksyms.sh.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1369
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Alexander Lobakin <alobakin@pm.me>
> Tested-by: Alexander Lobakin <alobakin@pm.me>
> ---
> Changes in v3:
> - Added missing FORCE.



All the modules are recompiled every time.




masahiro@oscar:~/workspace/linux-kbuild$ make LLVM=1 LLVM_IAS=1  -j24
  DESCEND objtool
  CALL    scripts/atomic/check-atomics.sh
  CALL    scripts/checksyscalls.sh
  CHK     include/generated/compile.h
  LTO [M] net/netfilter/nf_log_syslog.lto.o
  LTO [M] net/netfilter/xt_mark.lto.o
  LTO [M] net/netfilter/xt_nat.lto.o
  LTO [M] net/netfilter/xt_LOG.lto.o
  LTO [M] drivers/thermal/intel/x86_pkg_temp_thermal.lto.o
  LTO [M] net/netfilter/xt_MASQUERADE.lto.o
  LTO [M] net/netfilter/xt_addrtype.lto.o
  LTO [M] fs/efivarfs/efivarfs.lto.o
  LTO [M] net/ipv4/netfilter/iptable_nat.lto.o
  CHK     include/generated/autoksyms.h
  MODPOST modules-only.symvers
  GEN     Module.symvers
  LD [M]  drivers/thermal/intel/x86_pkg_temp_thermal.ko
  LD [M]  fs/efivarfs/efivarfs.ko
  LD [M]  net/ipv4/netfilter/iptable_nat.ko
  LD [M]  net/netfilter/nf_log_syslog.ko
  LD [M]  net/netfilter/xt_LOG.ko
  LD [M]  net/netfilter/xt_MASQUERADE.ko
  LD [M]  net/netfilter/xt_addrtype.ko
  LD [M]  net/netfilter/xt_mark.ko
  LD [M]  net/netfilter/xt_nat.ko
Kernel: arch/x86/boot/bzImage is ready  (#20)




> Changes in v2:
> - Fixed a couple of typos.
> - Fixed objtool arguments for .lto.o to always include --module.
>
> ---
>  scripts/Makefile.build    | 24 +++++++++++++++++++++++-
>  scripts/Makefile.lib      |  7 +++++++
>  scripts/Makefile.modfinal | 21 ++-------------------
>  scripts/Makefile.modpost  | 22 +++-------------------
>  scripts/gen_autoksyms.sh  | 12 ------------
>  5 files changed, 35 insertions(+), 51 deletions(-)
>
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 02197cb8e3a7..524701d9896b 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -271,12 +271,34 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $$(objtool_dep) FORCE
>         $(call if_changed_rule,cc_o_c)
>         $(call cmd,force_checksrc)
>
> +ifdef CONFIG_LTO_CLANG
> +# Module .o files may contain LLVM bitcode, compile them into native code
> +# before ELF processing
> +quiet_cmd_cc_lto_link_modules = LTO [M] $@
> +cmd_cc_lto_link_modules =                                              \
> +       $(LD) $(ld_flags) -r -o $@                                      \
> +               $(shell [ -s $(@:.lto.o=.o.symversions) ] &&            \
> +                       echo -T $(@:.lto.o=.o.symversions))             \
> +               --whole-archive $(filter-out FORCE,$^)
> +
> +ifdef CONFIG_STACK_VALIDATION
> +# objtool was skipped for LLVM bitcode, run it now that we have compiled
> +# modules into native code
> +cmd_cc_lto_link_modules += ;                                           \
> +       $(objtree)/tools/objtool/objtool $(objtool_args) --module       \
> +               $(@:.ko=$(mod-prelink-ext).o)
> +endif
> +
> +$(obj)/%.lto.o: $(obj)/%.o FORCE
> +       $(call if_changed,cc_lto_link_modules)
> +endif
> +
>  cmd_mod = { \
>         echo $(if $($*-objs)$($*-y)$($*-m), $(addprefix $(obj)/, $($*-objs) $($*-y) $($*-m)), $(@:.mod=.o)); \
>         $(undefined_syms) echo; \
>         } > $@
>
> -$(obj)/%.mod: $(obj)/%.o FORCE
> +$(obj)/%.mod: $(obj)/%$(mod-prelink-ext).o FORCE
>         $(call if_changed,mod)
>
>  quiet_cmd_cc_lst_c = MKLST   $@
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 10950559b223..af1c920a585c 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -225,6 +225,13 @@ dtc_cpp_flags  = -Wp,-MMD,$(depfile).pre.tmp -nostdinc                    \
>                  $(addprefix -I,$(DTC_INCLUDE))                          \
>                  -undef -D__DTS__
>
> +ifeq ($(CONFIG_LTO_CLANG),y)
> +# With CONFIG_LTO_CLANG, .o files in modules might be LLVM bitcode, so we
> +# need to run LTO to compile them into native code (.lto.o) before further
> +# processing.
> +mod-prelink-ext := .lto
> +endif
> +
>  # Objtool arguments are also needed for modfinal with LTO, so we define
>  # then here to avoid duplication.
>  objtool_args =                                                         \
> diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
> index 5e9b8057fb24..ff805777431c 100644
> --- a/scripts/Makefile.modfinal
> +++ b/scripts/Makefile.modfinal
> @@ -9,7 +9,7 @@ __modfinal:
>  include include/config/auto.conf
>  include $(srctree)/scripts/Kbuild.include
>
> -# for c_flags and objtool_args
> +# for c_flags and mod-prelink-ext
>  include $(srctree)/scripts/Makefile.lib
>
>  # find all modules listed in modules.order
> @@ -30,23 +30,6 @@ quiet_cmd_cc_o_c = CC [M]  $@
>
>  ARCH_POSTLINK := $(wildcard $(srctree)/arch/$(SRCARCH)/Makefile.postlink)
>
> -ifdef CONFIG_LTO_CLANG
> -# With CONFIG_LTO_CLANG, reuse the object file we compiled for modpost to
> -# avoid a second slow LTO link
> -prelink-ext := .lto
> -
> -# ELF processing was skipped earlier because we didn't have native code,
> -# so let's now process the prelinked binary before we link the module.
> -
> -ifdef CONFIG_STACK_VALIDATION
> -cmd_ld_ko_o +=                                                         \
> -       $(objtree)/tools/objtool/objtool $(objtool_args)                \
> -               $(@:.ko=$(prelink-ext).o);
> -
> -endif # CONFIG_STACK_VALIDATION
> -
> -endif # CONFIG_LTO_CLANG
> -
>  quiet_cmd_ld_ko_o = LD [M]  $@
>        cmd_ld_ko_o +=                                                   \
>         $(LD) -r $(KBUILD_LDFLAGS)                                      \
> @@ -72,7 +55,7 @@ if_changed_except = $(if $(call newer_prereqs_except,$(2))$(cmd-check),      \
>
>
>  # Re-generate module BTFs if either module's .ko or vmlinux changed
> -$(modules): %.ko: %$(prelink-ext).o %.mod.o scripts/module.lds $(if $(KBUILD_BUILTIN),vmlinux) FORCE
> +$(modules): %.ko: %$(mod-prelink-ext).o %.mod.o scripts/module.lds $(if $(KBUILD_BUILTIN),vmlinux) FORCE
>         +$(call if_changed_except,ld_ko_o,vmlinux)
>  ifdef CONFIG_DEBUG_INFO_BTF_MODULES
>         +$(if $(newer-prereqs),$(call cmd,btf_ko))
> diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
> index c383ba33d837..eef56d629799 100644
> --- a/scripts/Makefile.modpost
> +++ b/scripts/Makefile.modpost
> @@ -41,7 +41,7 @@ __modpost:
>  include include/config/auto.conf
>  include $(srctree)/scripts/Kbuild.include
>
> -# for ld_flags
> +# for mod-prelink-ext
>  include $(srctree)/scripts/Makefile.lib
>
>  MODPOST = scripts/mod/modpost                                                          \
> @@ -118,22 +118,6 @@ $(input-symdump):
>         @echo >&2 '         Modules may not have dependencies or modversions.'
>         @echo >&2 '         You may get many unresolved symbol warnings.'
>
> -ifdef CONFIG_LTO_CLANG
> -# With CONFIG_LTO_CLANG, .o files might be LLVM bitcode, so we need to run
> -# LTO to compile them into native code before running modpost
> -prelink-ext := .lto
> -
> -quiet_cmd_cc_lto_link_modules = LTO [M] $@
> -cmd_cc_lto_link_modules =                                              \
> -       $(LD) $(ld_flags) -r -o $@                                      \
> -               $(shell [ -s $(@:.lto.o=.o.symversions) ] &&            \
> -                       echo -T $(@:.lto.o=.o.symversions))             \
> -               --whole-archive $^
> -
> -%.lto.o: %.o
> -       $(call if_changed,cc_lto_link_modules)
> -endif
> -
>  modules := $(sort $(shell cat $(MODORDER)))
>
>  # KBUILD_MODPOST_WARN can be set to avoid error out in case of undefined symbols
> @@ -144,9 +128,9 @@ endif
>  # Read out modules.order to pass in modpost.
>  # Otherwise, allmodconfig would fail with "Argument list too long".
>  quiet_cmd_modpost = MODPOST $@
> -      cmd_modpost = sed 's/\.ko$$/$(prelink-ext)\.o/' $< | $(MODPOST) -T -
> +      cmd_modpost = sed 's/\.ko$$/$(mod-prelink-ext)\.o/' $< | $(MODPOST) -T -
>
> -$(output-symdump): $(MODORDER) $(input-symdump) $(modules:.ko=$(prelink-ext).o) FORCE
> +$(output-symdump): $(MODORDER) $(input-symdump) $(modules:.ko=$(mod-prelink-ext).o) FORCE
>         $(call if_changed,modpost)
>
>  targets += $(output-symdump)
> diff --git a/scripts/gen_autoksyms.sh b/scripts/gen_autoksyms.sh
> index da320151e7c3..6ed0d225c8b1 100755
> --- a/scripts/gen_autoksyms.sh
> +++ b/scripts/gen_autoksyms.sh
> @@ -26,18 +26,6 @@ if [ -n "$CONFIG_MODVERSIONS" ]; then
>         needed_symbols="$needed_symbols module_layout"
>  fi
>
> -# With CONFIG_LTO_CLANG, LLVM bitcode has not yet been compiled into a binary
> -# when the .mod files are generated, which means they don't yet contain
> -# references to certain symbols that will be present in the final binaries.
> -if [ -n "$CONFIG_LTO_CLANG" ]; then
> -       # intrinsic functions
> -       needed_symbols="$needed_symbols memcpy memmove memset"
> -       # ftrace
> -       needed_symbols="$needed_symbols _mcount"
> -       # stack protector symbols
> -       needed_symbols="$needed_symbols __stack_chk_fail __stack_chk_guard"
> -fi
> -
>  ksym_wl=
>  if [ -n "$CONFIG_UNUSED_KSYMS_WHITELIST" ]; then
>         # Use 'eval' to expand the whitelist path and check if it is relative
>
> base-commit: f8fbb47c6e86c0b75f8df864db702c3e3f757361
> --
> 2.33.0.rc1.237.g0d66db33f3-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210812214614.1797845-1-samitolvanen%40google.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ8Ucg%3DZrEtMUCMkq3wonZqaijtrqbeUBod6DLERrp%3Dzw%40mail.gmail.com.
