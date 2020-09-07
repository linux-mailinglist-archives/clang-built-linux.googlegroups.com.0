Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBOVE3H5AKGQEU2XRJEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3677525FD25
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Sep 2020 17:31:07 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id f19sf8209587iol.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 08:31:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599492666; cv=pass;
        d=google.com; s=arc-20160816;
        b=I7X2h+ShX9QFQTTEhwE3WQlyPCOMD5Nbeuj5OwEXixmCOI4PXwMWiq10SYP16KpdFf
         hjhq7viLUihcK6IQP/u6TgzHJftXqshldx9LesqGsdQyT9mLPGCpilDYugg2f8PKMQJP
         BG9QFMS7Q0rkaL4ymsP9TBJC+JdPEpxvkYfPq4qcnwahAGWJp86jTMLE+WMbQp8L0nK2
         dGKXQIRGuJHv1N5phnvYBt9kd8zvBWW4/ffzkwhMnaUbSKr1e7PNd/zcoeYetia014tJ
         b0vDxQcxMfWPVlAo0vfyI2idhcg3MkEx3KLRdRwOn2Xh45VZCm1ZxObQ3sBzltpmerDj
         i4lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=9YG7xYW0rlZczZhK5VitIIhMlo4Yru8RasEw44fOZBs=;
        b=HARnvtDSjvptMEoOYRgB+H+mV2jZgZ0lqeP86TrQ1QaQRLy8I2fyiEtbvHYXV8BUUD
         VuD3JKI9sk7eJNdujfjrgo7jlgsrj5vLMkCtrls6kD610N+mGniTBd5WxkGVnmbkxl/K
         FYIgd7ZvOhYq9MTj1LLlmnjIdCE6lOAskZ/etFFmJrOCua/FNP8LoJJhijCOsLDRbqw1
         NtbsEf1FkaskTg0bqJMGRgaONKC14PM0dPHQN6IALQoouPHea2zFkd052hx0YyZ2H6Nc
         sohuOQZRaF4huB2GSuEsyH/BiXBnOkxYL+qSMAR8YCnqLIr77yDA7ezDlz69wxBTt1Bl
         0mEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Yna4t3lc;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9YG7xYW0rlZczZhK5VitIIhMlo4Yru8RasEw44fOZBs=;
        b=bJLd7sprMxd5xUHpwp814+SKE76IXI8FMm2ZGsqo/T8if0JMZGHw6xDW14ERDj6QMd
         F+FtXwuOmfqOObmK3yMUjbIO9N6Gb82ClhbyZVsKF7moiCv3FYTLu3fuY9+fB7HsdFpw
         lPArCGfuZI7RlRttNveH5ojHe2+WZpbVzNVmCelHUFCP9lakLxubEZ9EZD3BClBrewtE
         TD2ccrFNUnONTzRcHkS3jysmgoj2EP7VMQIWiVhPVeXTVuzWsWKVOTlCpWOuiOVw22Lu
         k3TFRDy7OQdSxFibyIqGMiHOcgoNlmuAfwiwBLhkQ9NjQ5vQu4OEcY+i5hRc6nA376qQ
         udoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9YG7xYW0rlZczZhK5VitIIhMlo4Yru8RasEw44fOZBs=;
        b=MarjrhBE5IJoQPPHT+PoTekWDWiSIxBhcaieMxywdrE2fquIeARO6geBRcRpsUXJIe
         wrFpGbYfZxu+VoqLkMBuZn3tn/wdzo3GPHQVP34APFXvKWCiHty68453pnSvftk7oe7t
         nrYI3+17NZYlrUFcFNrtTGbTICmeOaR5qeGfghcK3KL0PR0MvsRAzjahqXSIJq9Q+Xky
         4LWp3eEACIPCpPe3uSy+LEpoKKn1Q1hdy7b4y7exn9fWdfyHCMdZ0DY0Idjt0PkC6xtW
         6PYWJvME7hEhtioeDWumiOuWuhHiYxkxlvI+yiucUaco5lh5i8UQAmI4EOIM2dHLUJs6
         qc8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rgBziSNjnxleA1aFmHwUpo5E8fLvXDkaQY133FUBWR7AjDlk2
	pwWD+9oGi+7KG7qe4lwqlik=
X-Google-Smtp-Source: ABdhPJw60nI/u/rZyfUiEBkauU4Qd5zoq8DoX7jtECIE1yk4Em203TpE2ZPhLwmjtJYcPEazBb8bCw==
X-Received: by 2002:a5d:8352:: with SMTP id q18mr4343565ior.31.1599492666103;
        Mon, 07 Sep 2020 08:31:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:15ca:: with SMTP id f10ls631889iow.0.gmail; Mon, 07
 Sep 2020 08:31:05 -0700 (PDT)
X-Received: by 2002:a5e:8d04:: with SMTP id m4mr17145461ioj.107.1599492665533;
        Mon, 07 Sep 2020 08:31:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599492665; cv=none;
        d=google.com; s=arc-20160816;
        b=kn8db0qwU24fp6vSpzJWyR69Sy743zUbBpsFpr72KOXvIY3izaA5xQaqVPpv2q38cf
         BQrJihFi0sbvz/Ni0gz5eaDzXOXvYg3VKMc9yo/ljKS6Ksw/kmwUTY7sZVVvL4nAOk+S
         DJd9/r9Id4UTErTh+Mlyqx35dlR/jGLlmt0ymONpaDKmtquCpXP0ErpHyqO30MD88dAq
         9DOEEEYChtGwfP+L5G9tTBRgrFcNyksz1lTGiMVJj6nRqODWuIfVBkVAhZmXXaK1TLjg
         fwY0hHkSitm00QDfOs8/BmMd8V2xUY9ktlMBe0bNMKazGAtM/+trNHy1ljh/nM2Axt9Y
         A3GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=LaAhPv7xf0fzyzAeNRC0oSM953AkWxA0K40O3j1oCJU=;
        b=n83CznBxDOMP6weVyCNwaStNa7DONGBZNyiTEMM+LKqG8DFjVG8lcPEA0u7B1tmm1u
         Pw2a5fKZiI6LIO2iFr4Kffa8/f6sjkQfev2bDVChbjqXfM6+8+auE9ttRSPGuMbmS//K
         q3PFR23TWpSEhUMwMLW/NHs9RlpdEhVk4N2mlqIXMr6ca8r9T/2KmsQQp4+EuCxVPzjA
         dPp78HpUnLXKN3hhZCg8JyTMC/oKIJyMUQd00lMnn6YM2Zk52tNBBxrF+0mXr/lwmoz8
         ZMyYAnkgrl+wMuYHmka7kJtQwiBi2x4MNzwrNhH1PLRSTMLSCSMwk/tT3ZlEkjyUtPkN
         FSHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Yna4t3lc;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id a26si1035559ill.4.2020.09.07.08.31.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Sep 2020 08:31:05 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 087FUq6b028958
	for <clang-built-linux@googlegroups.com>; Tue, 8 Sep 2020 00:30:52 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 087FUq6b028958
X-Nifty-SrcIP: [209.85.216.41]
Received: by mail-pj1-f41.google.com with SMTP id n3so7567338pjq.1
        for <clang-built-linux@googlegroups.com>; Mon, 07 Sep 2020 08:30:52 -0700 (PDT)
X-Received: by 2002:a17:90b:208:: with SMTP id fy8mr4808973pjb.153.1599492651374;
 Mon, 07 Sep 2020 08:30:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com> <20200903203053.3411268-10-samitolvanen@google.com>
In-Reply-To: <20200903203053.3411268-10-samitolvanen@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 8 Sep 2020 00:30:14 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR7SbBPz06s5Gf2d+zry+Px1=jcUrC9c=_zQiCJLttY3A@mail.gmail.com>
Message-ID: <CAK7LNAR7SbBPz06s5Gf2d+zry+Px1=jcUrC9c=_zQiCJLttY3A@mail.gmail.com>
Subject: Re: [PATCH v2 09/28] kbuild: add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
        Steven Rostedt <rostedt@goodmis.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Kernel Hardening <kernel-hardening@lists.openwall.com>,
        linux-arch <linux-arch@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Yna4t3lc;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Fri, Sep 4, 2020 at 5:31 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> This change adds build system support for Clang's Link Time
> Optimization (LTO). With -flto, instead of ELF object files, Clang
> produces LLVM bitcode, which is compiled into native code at link
> time, allowing the final binary to be optimized globally. For more
> details, see:
>
>   https://llvm.org/docs/LinkTimeOptimization.html
>
> The Kconfig option CONFIG_LTO_CLANG is implemented as a choice,
> which defaults to LTO being disabled. To use LTO, the architecture
> must select ARCH_SUPPORTS_LTO_CLANG and support:
>
>   - compiling with Clang,
>   - compiling inline assembly with Clang's integrated assembler,
>   - and linking with LLD.
>
> While using full LTO results in the best runtime performance, the
> compilation is not scalable in time or memory. CONFIG_THINLTO
> enables ThinLTO, which allows parallel optimization and faster
> incremental builds. ThinLTO is used by default if the architecture
> also selects ARCH_SUPPORTS_THINLTO:
>
>   https://clang.llvm.org/docs/ThinLTO.html
>
> To enable LTO, LLVM tools must be used to handle bitcode files. The
> easiest way is to pass the LLVM=1 option to make:
>
>   $ make LLVM=1 defconfig
>   $ scripts/config -e LTO_CLANG
>   $ make LLVM=1
>
> Alternatively, at least the following LLVM tools must be used:
>
>   CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm
>
> To prepare for LTO support with other compilers, common parts are
> gated behind the CONFIG_LTO option, and LTO can be disabled for
> specific files by filtering out CC_FLAGS_LTO.
>
> Note that support for DYNAMIC_FTRACE and MODVERSIONS are added in
> follow-up patches.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  Makefile                          | 18 +++++++-
>  arch/Kconfig                      | 68 +++++++++++++++++++++++++++++++
>  include/asm-generic/vmlinux.lds.h | 11 +++--
>  scripts/Makefile.build            |  9 +++-
>  scripts/Makefile.modfinal         |  9 +++-
>  scripts/Makefile.modpost          | 24 ++++++++++-
>  scripts/link-vmlinux.sh           | 32 +++++++++++----
>  7 files changed, 154 insertions(+), 17 deletions(-)



>  #define TEXT_MAIN .text
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 6ecf30c70ced..a5f4b5d407e6 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -111,7 +111,7 @@ endif
>  # ---------------------------------------------------------------------------
>
>  quiet_cmd_cc_s_c = CC $(quiet_modtag)  $@
> -      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS), $(c_flags)) $(DISABLE_LTO) -fverbose-asm -S -o $@ $<
> +      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS) $(CC_FLAGS_LTO), $(c_flags)) -fverbose-asm -S -o $@ $<
>
>  $(obj)/%.s: $(src)/%.c FORCE
>         $(call if_changed_dep,cc_s_c)
> @@ -428,8 +428,15 @@ $(obj)/lib.a: $(lib-y) FORCE
>  # Do not replace $(filter %.o,^) with $(real-prereqs). When a single object
>  # module is turned into a multi object module, $^ will contain header file
>  # dependencies recorded in the .*.cmd file.
> +ifdef CONFIG_LTO_CLANG
> +quiet_cmd_link_multi-m = AR [M]  $@
> +cmd_link_multi-m =                                             \
> +       rm -f $@;                                               \
> +       $(AR) rcsTP$(KBUILD_ARFLAGS) $@ $(filter %.o,$^)


KBUILD_ARFLAGS no longer exists in the mainline.
(commit 13dc8c029cabf52ba95f60c56eb104d4d95d5889)




> +else
>  quiet_cmd_link_multi-m = LD [M]  $@
>        cmd_link_multi-m = $(LD) $(ld_flags) -r -o $@ $(filter %.o,$^)
> +endif
>
>  $(multi-used-m): FORCE
>         $(call if_changed,link_multi-m)
> diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
> index 411c1e600e7d..1005b147abd0 100644
> --- a/scripts/Makefile.modfinal
> +++ b/scripts/Makefile.modfinal
> @@ -6,6 +6,7 @@
>  PHONY := __modfinal
>  __modfinal:
>
> +include $(objtree)/include/config/auto.conf
>  include $(srctree)/scripts/Kbuild.include
>
>  # for c_flags
> @@ -29,6 +30,12 @@ quiet_cmd_cc_o_c = CC [M]  $@
>
>  ARCH_POSTLINK := $(wildcard $(srctree)/arch/$(SRCARCH)/Makefile.postlink)
>
> +ifdef CONFIG_LTO_CLANG
> +# With CONFIG_LTO_CLANG, reuse the object file we compiled for modpost to
> +# avoid a second slow LTO link
> +prelink-ext := .lto
> +endif
> +
>  quiet_cmd_ld_ko_o = LD [M]  $@
>        cmd_ld_ko_o =                                                     \
>         $(LD) -r $(KBUILD_LDFLAGS)                                      \
> @@ -37,7 +44,7 @@ quiet_cmd_ld_ko_o = LD [M]  $@
>                 -o $@ $(filter %.o, $^);                                \
>         $(if $(ARCH_POSTLINK), $(MAKE) -f $(ARCH_POSTLINK) $@, true)
>
> -$(modules): %.ko: %.o %.mod.o $(KBUILD_LDS_MODULE) FORCE
> +$(modules): %.ko: %$(prelink-ext).o %.mod.o $(KBUILD_LDS_MODULE) FORCE
>         +$(call if_changed,ld_ko_o)
>
>  targets += $(modules) $(modules:.ko=.mod.o)
> diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
> index f54b6ac37ac2..a70f1f7da6aa 100644
> --- a/scripts/Makefile.modpost
> +++ b/scripts/Makefile.modpost
> @@ -102,12 +102,32 @@ $(input-symdump):
>         @echo >&2 'WARNING: Symbol version dump "$@" is missing.'
>         @echo >&2 '         Modules may not have dependencies or modversions.'
>
> +ifdef CONFIG_LTO_CLANG
> +# With CONFIG_LTO_CLANG, .o files might be LLVM bitcode,

or, .o files might be even thin archives.

For example,

$ file net/ipv6/netfilter/nf_defrag_ipv6.o
net/ipv6/netfilter/nf_defrag_ipv6.o: thin archive with 6 symbol entries


Now we have 3 possibilities for .o files:

  - ELF  (real .o)
  - LLVM bitcode (.bc)
  - Thin archive (.a)


Let me discuss how to proceed with this...





--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR7SbBPz06s5Gf2d%2Bzry%2BPx1%3DjcUrC9c%3D_zQiCJLttY3A%40mail.gmail.com.
