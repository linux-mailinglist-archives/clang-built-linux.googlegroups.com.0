Return-Path: <clang-built-linux+bncBDYJPJO25UGBBO6VQH5AKGQEYCUVQDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id E88B224E442
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 02:45:48 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id r18sf1585148otq.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 17:45:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598057148; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pc0cYwgaDEG/iluoPZpJ1ucVILYqOb89xmI4w9K+IvmUW+ltppqcEqCj19c5yJKKeS
         L+oKbFXkDL029DbO5JNNBDbyH9YzV/bqRdhDnE1lJ7mTEQJn8d+zLGnvm7ELL8Z/jOxn
         IwUCpi66hna3z2zxHog/ERRtmRIvrpUMl6bz2wtMtqy3mmIlcpr+pqFafZI2mQHDGriy
         JHGz8/bgJdgPOvW6094gUlXEnoBVwEOCFZrXhXRRETs3JBKWRQlm9eZ1UIwMO2VjE/BC
         RGQO7AOdujIB1yXDumFUMPpQW/w1OjyXh1xCQNybaRdwVo/mzT5ShVbmlN7CY22PdyDa
         6q4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=lS6I2KGMIUchC5TPABVvtw5A1cicGM06hqbOAjTVsy0=;
        b=tM8ZdOtHv74M+AkKk1xFsdM00eXE8ZhM6F7F8niYeKX3Cenz4LxvJTjoh96ZIsZ5Wh
         jinvtbdDhZkkr/w4ELi5hBkc4qK24VuoSMJ9HbuznsCXiuDRo+RuEgltkS5JQQBIhMYJ
         HkJkUuU5l9ZYJvU2lu2r71ovBtKCyta2VX915F5dw9d/ySVL53oXRyvwBrGU8LruKQGz
         vtmKvqhI+M2W9r0wNi0BPHcYCzZew8AqXE1QfUiceyBOXHoS5opFS7qXAljYWxgFe90z
         8EmS14mpxq4ftfpoXLFkD2M7ylWkL0CshpKMm73CH9orA3PMcMuD3Z4zdihIx7UR+eLw
         wyjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DAF4Uzk+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lS6I2KGMIUchC5TPABVvtw5A1cicGM06hqbOAjTVsy0=;
        b=ZGDXsxT/ae9f9wxRk8dFdJWxSAQo8QQwXKGkY8+c3Pg+uth8SZu3PD8vz/Lams8OXp
         i2DmyMHDtdK7O3QZ+eG/mootU9gQ55c/F6lqrbTSXS63GlUE3NEB69TOy1RY5lXrIwp9
         FeyyXv7t4eMLovnouoOdNzXOo7AFaGChyyoHNwBMNgRCvFsYunPNEdMo9Hwjh+Ikqa64
         M6MtNGcupnGqw3PqJGvg+zxeX8WpTN5oVpXefUnjBu0UuBwoXctNXgPQf4QxzBPOQ9s5
         eJDl5PqUej00XWWMko2I1aUNyw7a2YxaHoy0/vhYe2mTolILoDp7Tf16uhzLcQdZErGZ
         Cg2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lS6I2KGMIUchC5TPABVvtw5A1cicGM06hqbOAjTVsy0=;
        b=bRSnFHaW1Lb14dWnp60HcH/T1v+Jdgvs13FZmuybVlab7c1lgJMp89joTNQUKBlmfE
         DWQ2YCECXvkMntd/I+0/njL0mrpA445o3Q86kCMTpO4geLG8unDLnJ9X9FDJg5Z2AM4r
         FZghL9MxjtFb6aGWmsLuDEIbQdmww5PbF9/a8taIvlgcCpD10ZI2DIAsubDQKQQenM7N
         QvYU9s89qzEVh0tdkepN276wlAcOj2WgASn6kQj/r68G9enFU2cOeEs5qotfvwzHXbUJ
         z53jfvfqJ0Y98XnbuWwKt7MWYLL417+N6ixzRY+Pw3qn9ggyd5DBve0MA/hInc7SXzmU
         U9lg==
X-Gm-Message-State: AOAM533JMPnAt5J56xkp1KBgGeq/jmAgqHi+FTlaBsp/SPvWGyxHk8S/
	NvvZY4NGLl0K8RuYLTHtCps=
X-Google-Smtp-Source: ABdhPJwEJbJnp6SOs1b44H8p39BgTYHu23usB3kXK0aUjDweaOOZbLIa7EU5X4RTxAlYvgvdSKAXiQ==
X-Received: by 2002:aca:d595:: with SMTP id m143mr3269805oig.11.1598057147880;
        Fri, 21 Aug 2020 17:45:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1d90:: with SMTP id y16ls872023oti.10.gmail; Fri,
 21 Aug 2020 17:45:47 -0700 (PDT)
X-Received: by 2002:a9d:2aea:: with SMTP id e97mr3804406otb.123.1598057147581;
        Fri, 21 Aug 2020 17:45:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598057147; cv=none;
        d=google.com; s=arc-20160816;
        b=x74Y6ctCMdD6yShRemw27PjpeTPJyIbICMuSIL7TIgbMAbQCnRHlVYk9VxG+uZXw7K
         N9QnkVwAgnur3z8ZWCaw+wz4L9fqUZuLRwbTcOIDR1dzJKCsjq0y0V8Ao/eYIK2ooBWQ
         C/8UaVgIHr5kjBfrmNkcxOBXyUg6Z27SWFR5Fh5a+uL4kY0qdNJDHJ0JeSsCDSpxhBHS
         MISlRdELNykwx0gSV+URsvX8ZIqsoJ4HoXkyGgz/OK/1NeqQoQwQFEklOhcnNREALzC0
         c0dWDz+0N4Gcm9PSkIvDCUcapd5OZthyEX0GkZii44ooeDgGKZ1TaTssanqLmhaK7Y6b
         G6Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NY5DJt5lm6krkgKqak2a2sk/F2E40cokLY/vvCYJjVU=;
        b=JBOwUyOD3FyU8QX3RG6QIR++itS3HLCwGHuIqbyGNo8nmUzcPZJQ5I8A6X175CEPcp
         IOeqs1HiF3yj5HWtP667SLU7f2Sajy8W/GdFHkD3jPUN3QTwiEhtTpS+L1rlr6jdXfCI
         6iTDNo/cKFyHJ73XEN6EnkMxMZDQDNvt2J9FkcdigS9cuauPDSAe7ZlYDhMeuTuwDwwu
         OWt06jhcGylyw+1fxPMjjfsx/ugZbPqoM5AOot6mKpSKtLkiKoI25Okk0zllYjsN3t2q
         rDpVfKsBJ9J9N//UsCTpU/6sPVOhhLy+Bzco4xJlHqZu5HY/yFo0ZhmDzgZHcbmWziSD
         q45w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DAF4Uzk+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id u18si206111oif.1.2020.08.21.17.45.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 17:45:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id s15so1762522pgc.8
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 17:45:47 -0700 (PDT)
X-Received: by 2002:a63:7d8:: with SMTP id 207mr4156920pgh.263.1598057146355;
 Fri, 21 Aug 2020 17:45:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200821190159.1033740-1-masahiroy@kernel.org> <20200821190159.1033740-9-masahiroy@kernel.org>
In-Reply-To: <20200821190159.1033740-9-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 21 Aug 2020 17:45:35 -0700
Message-ID: <CAKwvOdkm81Cn66LFKiM2bcSbFP29vPWxOGu9RsaLvMFZ=D5b4g@mail.gmail.com>
Subject: Re: [PATCH v2 8/9] kbuild: wire up the build rule of
 compile_commands.json to Makefile
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>, 
	Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michal Marek <michal.lkml@markovi.net>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DAF4Uzk+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Aug 21, 2020 at 12:02 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Currently, you need to manually run scripts/gen_compile_commands.py
> to create compile_commands.json. It parses all the .*.cmd files found
> under the specified directory.
>
> If you rebuild the kernel over again without 'make clean',
> .*.cmd files from older builds will create stale entries in
> compile_commands.json.
>
> This commit wires up the compile_commands.json rule to Makefile, and
> makes it parse only the .*.cmd files involved in the current build.
>
> Pass $(KBUILD_VMLINUX_OBJS), $(KBUILD_VMLINUX_LIBS), and modules.order
> to the script. The objects or archives linked to vmlinux are listed in
> $(KBUILD_VMLINUX_OBJS) or $(KBUILD_VMLINUX_LIBS). All the modules are
> listed in modules.order.
>
> You can create compile_commands.json from Make:
>
>   $ make -j$(nproc) CC=clang compile_commands.json
>
> You can also build vmlinux, modules, and compile_commands.json all
> together in a single command:
>
>   $ make -j$(nproc) CC=clang all compile_commands.json
>
> It works for M= builds as well. In this case, compile_commands.json
> is created in the top directory of the external module.
>
> This is convenient, but it has a drawback; the coverage of the
> compile_commands.json is reduced because only the objects linked to
> vmlinux or modules are handled. For example, the following C files are
> not included in the compile_commands.json:
>
>  - Decompressor source files (arch/*/boot/)
>  - VDSO source files
>  - C files used to generate intermediates (e.g. kernel/bounds.c)
>  - Standalone host programs
>
> I think it is fine for most developers because our main interest is
> the kernel-space code.
>
> If you want to cover all the compiled C files, please build the kernel
> then run the script manually as before:
>
>   $ make clean    # if you want to delete stale .cmd files [optional]
>   $ make -j$(nproc) CC=clang
>   $ scripts/gen_compile_commands.json
>
> Here is a note for out-of-tree builds. 'make compile_commands.json'
> works with O= option, but please notice compile_commands.json is
> created in the object tree instead of the source tree.
>
> Some people may want to have compile_commands.json in the source tree
> because Clang Tools searches for it through all parent paths of the
> first input source file.
>
> However, you cannot do this for O= builds. Kbuild should never generate
> any build artifact in the source tree when O= is given because the
> source tree might be read-only. Any write attempt to the source tree
> is monitored and the violation may be reported. See the commit log of
> 8ef14c2c41d9.
>
> So, the only possible way is to create compile_commands.json in the
> object tree, then specify '-p <build-path>' when you use clang-check,
> clang-tidy, etc.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
> (no changes since v1)
>
>  Makefile | 29 +++++++++++++++++++++++++----
>  1 file changed, 25 insertions(+), 4 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 9cac6fde3479..65ed336a6de1 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -635,7 +635,7 @@ endif
>  # in addition to whatever we do anyway.
>  # Just "make" or "make all" shall build modules as well
>
> -ifneq ($(filter all modules nsdeps,$(MAKECMDGOALS)),)
> +ifneq ($(filter all modules nsdeps %compile_commands.json,$(MAKECMDGOALS)),)
>    KBUILD_MODULES := 1
>  endif
>
> @@ -1464,7 +1464,8 @@ endif # CONFIG_MODULES
>
>  # Directories & files removed with 'make clean'
>  CLEAN_FILES += include/ksym vmlinux.symvers \
> -              modules.builtin modules.builtin.modinfo modules.nsdeps
> +              modules.builtin modules.builtin.modinfo modules.nsdeps \
> +              compile_commands.json
>
>  # Directories & files removed with 'make mrproper'
>  MRPROPER_FILES += include/config include/generated          \
> @@ -1698,9 +1699,12 @@ KBUILD_MODULES := 1
>
>  build-dirs := $(KBUILD_EXTMOD)
>  PHONY += modules
> -modules: descend
> +modules: $(MODORDER)
>         $(Q)$(MAKE) -f $(srctree)/scripts/Makefile.modpost
>
> +$(MODORDER): descend
> +       @:

^ stuff like this I don't understand.  But I understand the premise of
the patch, the change in behavior, and the tradeoffs, so:
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

> +
>  PHONY += modules_install
>  modules_install: _emodinst_ _emodinst_post
>
> @@ -1714,8 +1718,12 @@ PHONY += _emodinst_post
>  _emodinst_post: _emodinst_
>         $(call cmd,depmod)
>
> +compile_commands.json: $(extmod-prefix)compile_commands.json
> +PHONY += compile_commands.json
> +
>  clean-dirs := $(KBUILD_EXTMOD)
> -clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps
> +clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers $(KBUILD_EXTMOD)/modules.nsdeps \
> +       $(KBUILD_EXTMOD)/compile_commands.json
>
>  PHONY += help
>  help:
> @@ -1828,6 +1836,19 @@ nsdeps: export KBUILD_NSDEPS=1
>  nsdeps: modules
>         $(Q)$(CONFIG_SHELL) $(srctree)/scripts/nsdeps
>
> +# Clang Tooling
> +# ---------------------------------------------------------------------------
> +
> +quiet_cmd_gen_compile_commands = GEN     $@
> +      cmd_gen_compile_commands = $(PYTHON3) $< -a $(AR) -o $@ $(filter-out $<, $(real-prereqs))
> +
> +$(extmod-prefix)compile_commands.json: scripts/gen_compile_commands.py \
> +       $(if $(KBUILD_EXTMOD),,$(KBUILD_VMLINUX_OBJS) $(KBUILD_VMLINUX_LIBS)) \
> +       $(if $(CONFIG_MODULES), $(MODORDER)) FORCE
> +       $(call if_changed,gen_compile_commands)
> +
> +targets += $(extmod-prefix)compile_commands.json
> +
>  # Scripts to check various things for consistency
>  # ---------------------------------------------------------------------------
>
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkm81Cn66LFKiM2bcSbFP29vPWxOGu9RsaLvMFZ%3DD5b4g%40mail.gmail.com.
