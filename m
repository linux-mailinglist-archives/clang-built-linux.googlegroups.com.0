Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2MC7LZQKGQENUCCQGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1689819615C
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 23:42:51 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id z8sf10096293ybi.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 15:42:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585348970; cv=pass;
        d=google.com; s=arc-20160816;
        b=QWB0K9ko4YGIqxP2JdxfTyiZHlq3bL33/EJEsRO5EUv3soxAFLGwfBbzgAMviXTmU1
         f4n9Pek4XFXz+Jf3Snq/XtZWDnHzrDWnHObdCBqQD5SIQyx7VkvWv1AakDer5iVvBWNb
         RjmEQ0roSwMlfLKDa5HcHXtIehmyKgrpzJIDNZLfVEryg4cInmHRYbQtLvS5rjJ66Moz
         Ge+740zDe45luRe1cpBbadH28TH0I1jaUC52GVk4j5ZVyPGNHypiRYq0mrZP+5aZDozm
         ovYctmSRQ4TbFVV1fIFVDwWNk5tcwsdCRerthAxd5gcyvzUL/ZBgrj1hH0yIvNmRHqF9
         GjcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=MDh1W5ElxTKNx4TysMKE4v/0l6a+ENIAb6UF+7WOYeI=;
        b=nFBx5Dq8ouIt27zAFnJupfA+LWCjygalfdCbip9XkyaSh6YHoNNsSthM2AQMpIOq42
         UZdoruoXmKpe3FL4A0w8THXOv/q0QACZDaVz2Td+9FmCGpz9hxw6JE0FMTuZNavvBt1U
         9qodnnvoyWISRKUwZiWyQBPkGX9ZccfyDohS4zip8y1CE2/gP5kxLlFVMSOk3amLlSkZ
         foDCwZr/6HOLVbBBibMsJQZ/VCahi9yM1qHvWb3S+GPZoiZ7BLLSFmsNYDDe1abhfcWY
         JP7iretzbMDbiYI3WIBH7+ddXB/rUVIMA9Jdwx0fhzHRGoAPR0GAge9tdLNF8oP6QQmS
         QObg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qo7acoP8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MDh1W5ElxTKNx4TysMKE4v/0l6a+ENIAb6UF+7WOYeI=;
        b=HpSTerBLDerUm+qJfFv5xzv6r0/iLExgJSWFuJT9k+S9Mt0SJMvy7wx3/KC5UA9QuH
         S0m0ONN6clr1kzHlgSjGqzIcRkO99XAcgCsfiRsz6QE5HHCE1rOjbtWByrrnYvWvXmN6
         dEFnZaUWPvUJrYDplgjBEX2g27Pba5KPuNvEmpIPJpxpNtRBUvMi2NU7bO7WzNq85AQW
         8pxO4qxXK0OPeHlSDQqNn6kld+a1Ik8oPLeikOnPeGmTveXZSq/f78hRvon2IGF80wCg
         JZ61BbtsIyXplF296kYL/PDRx38XIxizmzy6a0WNZlq2ccxnR6gslloPzCOKucUFj3U4
         e8JQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MDh1W5ElxTKNx4TysMKE4v/0l6a+ENIAb6UF+7WOYeI=;
        b=O6wNvDSqtSHjI3YuVZBkt9gdWIHo2CTkCPhPt81pddpS6Hz36DYc4KcRUSGPb9Q3pZ
         P+aWCEgS3ea1Nx0Czi3Eui79AXg0dFa+sW5IPCQZfjDWqbYx83FTMVjZ60gcAQvehVuz
         F++pWaWjc3cf3FlWtQ5gG3xVMubHJmYf54vJ43BWI7YJm7plRo7HrhjpEfZI+ya9petV
         K7S8isWdGlNVELc42GEpNTHMalSymO4FurkjtS7D0IWeSFVHZD9qRno0CFvkDFiunaEN
         ssG8QA/3luPfQzOWSmeVZx+eFRqfIppKftIuA1OF7+bEdLfBPTQAfGSabhGLa/58BEUB
         zh8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MDh1W5ElxTKNx4TysMKE4v/0l6a+ENIAb6UF+7WOYeI=;
        b=ADxflj01VGUY4ocRUlq79ePFs6ee/hKCNrjJIYLJOs/FhW0FTydzQ2jiVkUt+DuL1q
         7GLbraRsUWlz4ScGC8AXutFUAU6C/JzbLGr64q+rpvYXHYAV7AI2M7VZbaCVi7C1vlMj
         jNW/Eja+34DHyFOOEgt/Id8qKd7/dFnhueyYahnEcwdKZPOoI5XJGfmvNtvYIfmMRj6A
         FyRlejVemUYuKsYjG1y9ZATIM/4M/pKC5hWWr3a0NSadk0cI1tD4jwEb+ds+PIY5SvP0
         cb+uwpvoXXLOBWf0s2RYdr9mvH/qS5s1PGn5D1D8kwJPqtPDtMMhRmTGTBjunbcgQy/g
         UROw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3dLQEWbwILW4U0PWnruOXc+6wjV3QYSbfNAvJjxxYOMP5YhZuk
	abHJaWPtMwWOhsbPBGyYcFM=
X-Google-Smtp-Source: ADFU+vtYNVVOFRxTQt6kZSBk9rG/aoBeZnuUba4BNUwnK0o3+BHETSJZrV/8kqv8PF85l9Pv1OYJ6w==
X-Received: by 2002:a25:cace:: with SMTP id a197mr1797144ybg.19.1585348969735;
        Fri, 27 Mar 2020 15:42:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aab3:: with SMTP id t48ls3545592ybi.2.gmail; Fri, 27 Mar
 2020 15:42:49 -0700 (PDT)
X-Received: by 2002:a25:9344:: with SMTP id g4mr1725534ybo.415.1585348969229;
        Fri, 27 Mar 2020 15:42:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585348969; cv=none;
        d=google.com; s=arc-20160816;
        b=fEygzc6LOrG1wwH1qz/zELK8UariknXgyNRp7ZT6qA01mYJqUYOHHcX+eA12oh8+cl
         0EOhv0fMq5wFSTkZA4Q1xtQxopUcZ1P7Onk5iELHJ7bpYaH8ewKnF/E3B6//9BfcrzZw
         9D10QnGZeOCJVy2LcWq2y6mTZUZvvfSwWfK/D5885dOPRrDbAy7KmFldKWyE+3UABrnD
         kPrVVBoilVI6dsjlLMYlqk/ZDREWmAw80B7NFGsl7zo/6/JZiSMAoGHZprDaIdhq+mi3
         NrmO8m7fqatWAKuIrjz8lB1P/ex3fc7RsufJBuSRZ4emtpDHx3W0ZWspGl0SxaJZ+5ag
         UOLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=b2K5AFjmsX/bgW6eWjt5DFeA+GmCKVXYTCWAUaaLArQ=;
        b=axZfeSw2FqcYkib2DrcuGNtoo75FZW1mUOhhaRMJzzu+eQ82YZs1BX7/lhCcpYcEnF
         Zp+vJcEYfgzLmDuFxJbacMQjJzZimTcU1Bnl0XvykRRF/4q8L5sWRXz2wMnbvyEMwCZY
         yDRDFSz0/AU/uPKzIc5ucohF5+q7+pgxnZgRxs351Xuj6ZfKdwIkhrw2DDMHVMV5FMEf
         J8mrfFIYta0nzWQupLWin/xBPG60rrcsJQjnoneHW+bUpmPuvtPR9UUSYNl2bxbDpf/C
         NvWSaQjciBVxI4XQbAr0AOzVayfuL1G1DHgIXJlLXdUK2LgZaTih17AZdM6Dlr4o0pB3
         j0xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qo7acoP8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id x13si376452ybs.4.2020.03.27.15.42.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 15:42:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id l23so11536403otf.3
        for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 15:42:49 -0700 (PDT)
X-Received: by 2002:a05:6830:158e:: with SMTP id i14mr801986otr.103.1585348968691;
        Fri, 27 Mar 2020 15:42:48 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id z12sm2253435otk.24.2020.03.27.15.42.47
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 27 Mar 2020 15:42:48 -0700 (PDT)
Date: Fri, 27 Mar 2020 15:42:46 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: masahiroy@kernel.org, clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	Sandeep Patil <sspatil@google.com>
Subject: Re: [PATCH v2] Makefile.llvm: simplify LLVM build
Message-ID: <20200327224246.GA12350@ubuntu-m2-xlarge-x86>
References: <20200317202404.GA20746@ubuntu-m2-xlarge-x86>
 <20200317215515.226917-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200317215515.226917-1-ndesaulniers@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Qo7acoP8;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Sorry for the delay in review :(

On Tue, Mar 17, 2020 at 02:55:15PM -0700, Nick Desaulniers wrote:
> Prior to this patch, building the Linux kernel with Clang
> looked like:
> 
> $ make CC=clang
> 
> or when cross compiling:
> 
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang
> 
> which got very verbose and unwieldy when using all of LLVM's substitutes
> for GNU binutils:
> 
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang AS=clang \
>   LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
>   OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \
>   READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \
>   HOSTLD=ld.lld
> 
> This change adds a new Makefile under scripts/ which will be included in
> the top level Makefile AFTER CC and friends are set, in order to make
> the use of LLVM utilities when building a Linux kernel more ergonomic.
> 
> With this patch, the above now looks like:
> 
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=y
> 
> Then you can "opt out" of certain LLVM utilities explicitly:
> 
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=y AS=as
> 
> will instead invoke arm-linux-gnueabihf-as in place of clang for AS.
> 
> Or when not cross compiling:
> 
> $ make LLVM=y AS=as
> 
> This would make it more verbose to opt into just one tool from LLVM, but
> this patch doesn't actually break the old style; just leave off LLVM=y.
> Also, LLVM=y CC=clang would wind up prefixing clang with $CROSS_COMPILE.
> In that case, it's recommended to just drop LLVM=y and use the old
> style. So LLVM=y can be thought of as default to LLVM with explicit opt
> ins for GNU, vs the current case of default to GNU and opt in for LLVM.
> 
> A key part of the design of this patch is to be minimally invasive to
> the top level Makefile and not break existing workflows. We could get
> more aggressive, but I'd prefer to save larger refactorings for another
> day.
> 
> Finally, some linux distributions package specific versions of LLVM
> utilities with naming conventions that use the version as a suffix, ie.
> clang-11.  In that case, you can use LLVM=<number> and that number will
> be used as a suffix. Example:
> 
> $ make LLVM=11
> 
> will invoke clang-11, ld.lld-11, llvm-objcopy-11, etc.
> 
> About the script:
> The pattern used in the script is in the form:
> 
> ifeq "$(origin $(CC))" "file"
> $(CC) := $(clang)
> else
> override $(CC) := $(CROSS_COMPILE)$(CC)
> endif
> 
> "Metaprogramming" (eval) is used to template the above to make it more
> concise for specifying all of the substitutions.
> 
> The "origin" of a variable tracks whether a variable was explicitly set
> via "command line", "environment", was defined earlier via Makefile
> "file", was provided by "default", or was "undefined".
> 
> Variable assignment in GNU Make has some special and complicated rules.
> 
> If the variable was set earlier explicitly in the Makefile, we can
> simply reassign a new value to it. If a variable was unspecified, then
> earlier assignments were executed and change the origin to file.
> Otherwise, the variable was explicitly specified.
> 
> If a variable's "origin" was "command line" or "environment",
> non-"override" assignments are not executed. The "override" directive
> forces the assignment regardless of "origin".
> 
> Some tips I found useful for debugging for future travelers:
> 
> $(info $$origin of $$CC is $(origin CC))
> 
> at the start of the new script for all of the variables can help you
> understand "default" vs "undefined" variable origins.
> 
> $(info $$CC is [${CC}])
> 
> in the top level Makefile after including the new script, for all of the
> variables can help you check that they're being set as expected.
> 
> Link: https://www.gnu.org/software/make/manual/html_node/Eval-Function.html
> Link: https://www.gnu.org/software/make/manual/html_node/Origin-Function.html
> Link: https://www.gnu.org/software/make/manual/html_node/Implicit-Variables.html
> Link: https://www.gnu.org/software/make/manual/html_node/Override-Directive.html
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V1 -> V2:
> * Rather than LLVM=1, use LLVM=y to enable all.
> * LLVM=<anything other than y> becomes a suffix, LLVM_SUFFIX.
> * strip has to be used on the LLVM_SUFFIX to avoid an extra whitespace.
> 
> 
>  Makefile              |  4 ++++
>  scripts/Makefile.llvm | 30 ++++++++++++++++++++++++++++++
>  2 files changed, 34 insertions(+)
>  create mode 100644 scripts/Makefile.llvm
> 
> diff --git a/Makefile b/Makefile
> index 402f276da062..72ec9dfea15e 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -475,6 +475,10 @@ KBUILD_LDFLAGS :=
>  GCC_PLUGINS_CFLAGS :=
>  CLANG_FLAGS :=
>  
> +ifneq ($(LLVM),)
> +include scripts/Makefile.llvm
> +endif
> +
>  export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
>  export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE LEX YACC AWK INSTALLKERNEL
>  export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
> diff --git a/scripts/Makefile.llvm b/scripts/Makefile.llvm
> new file mode 100644
> index 000000000000..0bab45a100a3
> --- /dev/null
> +++ b/scripts/Makefile.llvm
> @@ -0,0 +1,30 @@
> +LLVM_SUFFIX=
> +
> +ifneq ($(LLVM),y)
> +LLVM_SUFFIX += -$(LLVM)
> +endif
> +
> +define META_set =
> +ifeq "$(origin $(1))" "file"
> +$(1) := $(2)$(strip $(LLVM_SUFFIX))
> +else
> +override $(1) := $(CROSS_COMPILE)$($(1))
> +endif
> +endef
> +
> +$(eval $(call META_set,CC,clang))
> +$(eval $(call META_set,AS,clang))
> +$(eval $(call META_set,LD,ld.lld))
> +$(eval $(call META_set,AR,llvm-ar))
> +$(eval $(call META_set,NM,llvm-nm))
> +$(eval $(call META_set,STRIP,llvm-strip))
> +$(eval $(call META_set,OBJCOPY,llvm-objcopy))
> +$(eval $(call META_set,OBJDUMP,llvm-objdump))
> +$(eval $(call META_set,OBJSIZE,llvm-objsize))
> +$(eval $(call META_set,READELF,llvm-readelf))
> +$(eval $(call META_set,HOSTCC,clang))
> +$(eval $(call META_set,HOSTCXX,clang++))
> +$(eval $(call META_set,HOSTAR,llvm-ar))
> +$(eval $(call META_set,HOSTLD,ld.lld))
> +
> +## TODO: HOSTAR, HOSTLD in tools/objtool/Makefile
> -- 
> 2.25.1.481.gfbce0eb801-goog
> 

The use of override appears to break exporting the value to Kconfig,
which causes Kconfig to endlessly loop at the --syncconfig step:

$ make -j$(nproc) ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- LD=ld LLVM=y defconfig prepare
...
Makefile: LD is riscv64-linux-gnu-ld
*** Default configuration is based on 'defconfig'
Kconfig: LD is ld
#
# No change to .config
#
Makefile: LD is riscv64-linux-gnu-ld
Makefile: LD is riscv64-linux-gnu-ld
scripts/kconfig/conf  --syncconfig Kconfig
Kconfig: LD is ld
Makefile: LD is riscv64-linux-gnu-ld
auto.conf.cmd: LD is riscv64-linux-gnu-ld
Makefile: LD is riscv64-linux-gnu-ld
scripts/kconfig/conf  --syncconfig Kconfig
Kconfig: LD is ld
Makefile: LD is riscv64-linux-gnu-ld
auto.conf.cmd: LD is riscv64-linux-gnu-ld
Makefile: LD is riscv64-linux-gnu-ld
scripts/kconfig/conf  --syncconfig Kconfig
Kconfig: LD is ld
...

This endless loops happens because auto.conf.cmd is constantly being
regenerated because Kconfig is not picking up the override value, as you
can see from the debugging output above and auto.conf.cmd below:

$ rg -A 2 "LD\)" include/config/auto.conf.cmd | cat
ifneq "$(LD)" "ld"
include/config/auto.conf: FORCE
endif

$(LD) evaluates to riscv64-linux-gnu-ld, which is not equal to ld, so
include/config/auto.conf is regenerated, but env_write_dep in
scripts/kconfig/preprocess.c just picks up the environment value, rather
than the value that was overridden. This appears to be related to
recursive make calls from what I can tell.

$ cat Makefile
override FOO := foo
export FOO

all:
	$(info Makefile: $$(FOO) is $(FOO))
	$(MAKE) -f Makefile.sub all

$ cat Makefile.sub
all:
	$(info Makefile.sub: $$(FOO) is $(FOO))

$ make -s
Makefile: $(FOO) is foo
Makefile.sub: $(FOO) is foo

$ make -s FOO=bar
Makefile: $(FOO) is foo
Makefile.sub: $(FOO) is bar

No idea if this is a bug in make or not, this seems subtle. Not really
sure where to go from here, hopefully this is useful to you or Masahiro.

You will only notice this with variables that impact Kconfig, which
is why you never noticed with AS=as. See include/config/auto.conf.cmd
for the full list (CC, LD, NM, OBJCOPY, HOSTCC, and HOSTCXX are the ones
I see).

Debug patch if you want to play around with this.

Cheers,
Nathan

================================

diff --git a/Makefile b/Makefile
index acd8022ddb52..81cbb940e035 100644
--- a/Makefile
+++ b/Makefile
@@ -479,6 +479,8 @@ ifneq ($(LLVM),)
 include scripts/Makefile.llvm
 endif
 
+$(info Makefile: LD is $(LD))
+
 export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
 export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE LEX YACC AWK INSTALLKERNEL
 export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index 8074f14d9d0d..43a852e0ee93 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -57,3 +57,5 @@ gcc-version := $(shell,$(srctree)/scripts/gcc-version.sh $(CC))
 cc-option-bit = $(if-success,$(CC) -Werror $(1) -E -x c /dev/null -o /dev/null,$(1))
 m32-flag := $(cc-option-bit,-m32)
 m64-flag := $(cc-option-bit,-m64)
+
+$(info,Kconfig: LD is $(LD))
diff --git a/scripts/kconfig/preprocess.c b/scripts/kconfig/preprocess.c
index 0243086fb168..fd828efc85fc 100644
--- a/scripts/kconfig/preprocess.c
+++ b/scripts/kconfig/preprocess.c
@@ -93,6 +93,7 @@ void env_write_dep(FILE *f, const char *autoconfig_name)
 
 	list_for_each_entry_safe(e, tmp, &env_list, node) {
 		fprintf(f, "ifneq \"$(%s)\" \"%s\"\n", e->name, e->value);
+		fprintf(f, "$(info auto.conf.cmd: %s is $(%s))\n", e->name, e->name);
 		fprintf(f, "%s: FORCE\n", autoconfig_name);
 		fprintf(f, "endif\n");
 		env_del(e);

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200327224246.GA12350%40ubuntu-m2-xlarge-x86.
