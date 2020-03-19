Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGUOZTZQKGQEHC3P3WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB1C18AC69
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 06:46:03 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id s2sf848691iot.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 22:46:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584596762; cv=pass;
        d=google.com; s=arc-20160816;
        b=RNTlqChSIZX5w6hHYJ7xZRdxRtskbLpt0QhDc9SyWPspV6Gc0jtu8XOH3C0DlqDiTS
         nkPE5vV6BANddyLLqBS2I8S+M72+QYQHMi/Fk5xlkWnmPbAj69DP5TzJjBcX4c1X9/P9
         FImMnV2TsddV9p5hxI6p/hgQ+i/uqhlvdALUaBbcg8CktPfupPr7McpD3aciXG9pPkIO
         CL7RVB1r8EdbIAdyYj4zxiRkVAvKXsctfoiyf0Te8mSzlItxusgprFzCjsoWCOBgzqc4
         jdroSNdsCoCZr95gUBkjWFBQXVF2KPSRQPaHwZHaiqv3fnPIBLQx3pKRuTP2Ol9Yn9lt
         yDdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CegrUJhZHypukk7R3EDgFx5pJIMBaGGZBLfjzXgWA5I=;
        b=btUt3sWQDJ9ZTz4lMgZZF+NzVEu2WmDUlQXMD+NyfXdSewRLsPPF8zzjLrtv3x1rpL
         OtbKCh6hryMHfzFBCg50RVKVA/MKPWgr5EJkpR7pFcCUPSEwZfoya92yAU1ziuUDz+M4
         V2tm2OfEw1ZLkGQWbbxqaXRnwPA0JOQnC3zlXwICi4or41F4juH7ybDSyl7uPUE4goC2
         mGk4DvkYXYHKxT6czzl1kcYgiJLsbMt+Yb7NpnJkAKeOXLpEj/VQV9hpRVVy27Bf+QdI
         iqD2Jg+4ZeNoGU+Ae2DgdhUIDStrCmu78Pjg7i4cYx0PmJdCy/no+5ytLPAQUWCVEejc
         GtWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ack+gQ09;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CegrUJhZHypukk7R3EDgFx5pJIMBaGGZBLfjzXgWA5I=;
        b=J1Ayqct9+Y9e3zQ70YVE3w2ktgSAucw8UA6UPL2Ropdb/nPSOvCaZgHysSQd/2SA1O
         Jqh6UGv8pzRoJT3RTwhMJQ9EVBDL1M4WCnfzBvfMj/GneWRb7yN+wqZdiEOPyoNBlZaY
         Yx+Zt77It7js9CWMNTlj0c7Ywg7YL5BkHHgLMw3E9erS9CLs9gF61WT6Nb2gBeLiVG9C
         BcM5ECUdFdsYucd8N53iH2Pw5OfZ6U3r+tTqDtHOwMFI5PlfE8mfIw/UfvROye32wfex
         ZGZjhnm2GwUhuapwNVC6vCLpRuVEJtdK7K4akoRfblVewcuMTgMdpqkh7hyVKW2ypJia
         2SYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CegrUJhZHypukk7R3EDgFx5pJIMBaGGZBLfjzXgWA5I=;
        b=P3KyVmYbhOfgP+3P9ya/aRstI1yRWyWNdO4dz0rVzRevpcwbaIbYbfsw7bQbaqjZvM
         N1hmBlJKpiTy701LuXVQLm0Lx8y3NMoRP3fdDBvGmhRlzNRuuhtCyHCBJrp9ujchvdEb
         HoRl+eLe2rRyztcTZwDuVkXDH5c6XfngQCs27VRKynXRJNt20IVQXfpuuCLIsJKO70tr
         vetDCdrOYrsz1sEb4oOhkqAvW26jA861TUM1comMV8wIt9uvpRoysMvDyW+Z/3niEVX1
         n0Vmk46ALq1r3IaLbLJsLW6wcfNm/bxa1GxvEhsoFSPFPuLYxCg2EXSr2mCV8XxSPbgc
         Btgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0odJG6CzwDkLZsimV+iZPyEgmgM77BzlcaaqNy5Gf8ZWDGxgLl
	k9cV23xgZJMjtcEGiAt/Ta8=
X-Google-Smtp-Source: ADFU+vulTyoWnbrFKKkAiQx+JYPLKseTgab6a7kl2KZCb/l5EY7QcMmcoKYHO5xroW7f99i3q0z6fg==
X-Received: by 2002:a92:5d52:: with SMTP id r79mr1619947ilb.212.1584596762768;
        Wed, 18 Mar 2020 22:46:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3a9a:: with SMTP id i26ls285475ilf.3.gmail; Wed, 18 Mar
 2020 22:46:02 -0700 (PDT)
X-Received: by 2002:a92:4b0d:: with SMTP id m13mr1642106ilg.43.1584596762295;
        Wed, 18 Mar 2020 22:46:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584596762; cv=none;
        d=google.com; s=arc-20160816;
        b=jMV09HRFFTUT1n3osb1pA3CLeaKavTLgn6i95UT87TSVlXBztUP7AImKKPKjbazP7m
         6okPGXC8JRHxnOVmYG7QrcHbFCbDUYp12FT5e9zsGCi0IyWIZ0HL7cBc0kkG+slvWYgU
         +90ek83NoJ43wnS1RUJ5edHhaPsDLHvizCMuM9X3mbWzH4K6KaKoUS4Q16wyEwz+ZX5z
         WFt3E/9dVstItZowYg5M89bBzFdltVviaNcrLV583fhCe3r920B9yKitU/ciMy5GL/6s
         DZjV0jkIXtjLdWcUrhsGoSGBSd3LosprDvz2XKdnd6/wYR5uY44Y0CjBtlLJwVj2ZyZZ
         RjtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ru5neFweJumNPNlzao84Aj5kHcPfSkI6AXdUVCHgqkI=;
        b=MFIkYWtW70LolHwtMol1hdnuvXWi6LKctqIw/3yWS6wXqYmhzkpo7TvcnvgekGPjbT
         bQsgY6HO/2g4PUyFuAsX1KN/bTwSGjd+BPJPkUTPWEoewlBgvYGgnrhM57FwcrWnKJ/D
         i8ixa3oxfzm0MA+FdmtH2tPQOh1SuyJCiAelkvaj4qyVGoINGwAepyGI6u1vYT5v2ZND
         4+Vo//MMT/QOa9VjDzoh28VVvR4ITJ5S/UMzlmGDUjljpCsE3Ex4bCPOTCDdDlghfQKf
         WApC3Rp+9BcBk58e5HLbwwPmYV36WZefdkoY55plcUvsyTI+WLRCgE1oqiX/vBYrJURb
         UAaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ack+gQ09;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id q6si80476ild.2.2020.03.18.22.46.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 22:46:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id q16so1904354pje.1
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 22:46:02 -0700 (PDT)
X-Received: by 2002:a17:90b:370e:: with SMTP id mg14mr441874pjb.16.1584596761585;
        Wed, 18 Mar 2020 22:46:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k24sm904433pgm.61.2020.03.18.22.46.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 22:46:00 -0700 (PDT)
Date: Wed, 18 Mar 2020 22:45:59 -0700
From: Kees Cook <keescook@chromium.org>
To: Fangrui Song <maskray@google.com>
Cc: bpf@vger.kernel.org, netdev@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Stanislav Fomichev <sdf@google.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	"David S . Miller" <davem@davemloft.net>,
	Michael Ellerman <mpe@ellerman.id.au>,
	"Naveen N . Rao" <naveen.n.rao@linux.vnet.ibm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next v6] bpf: Support llvm-objcopy for vmlinux BTF
Message-ID: <202003182245.589A6B5@keescook>
References: <20200318222746.173648-1-maskray@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200318222746.173648-1-maskray@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ack+gQ09;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Mar 18, 2020 at 03:27:46PM -0700, Fangrui Song wrote:
> Simplify gen_btf logic to make it work with llvm-objcopy. The existing
> 'file format' and 'architecture' parsing logic is brittle and does not
> work with llvm-objcopy/llvm-objdump.
> 'file format' output of llvm-objdump>=11 will match GNU objdump, but
> 'architecture' (bfdarch) may not.
> 
> .BTF in .tmp_vmlinux.btf is non-SHF_ALLOC. Add the SHF_ALLOC flag
> because it is part of vmlinux image used for introspection. C code can
> reference the section via linker script defined __start_BTF and
> __stop_BTF. This fixes a small problem that previous .BTF had the
> SHF_WRITE flag (objcopy -I binary -O elf* synthesized .data).
> 
> Additionally, `objcopy -I binary` synthesized symbols
> _binary__btf_vmlinux_bin_start and _binary__btf_vmlinux_bin_stop (not
> used elsewhere) are replaced with more commonplace __start_BTF and
> __stop_BTF.
> 
> Add 2>/dev/null because GNU objcopy (but not llvm-objcopy) warns
> "empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"
> 
> We use a dd command to change the e_type field in the ELF header from
> ET_EXEC to ET_REL so that lld will accept .btf.vmlinux.bin.o.  Accepting
> ET_EXEC as an input file is an extremely rare GNU ld feature that lld
> does not intend to support, because this is error-prone.
> 
> The output section description .BTF in include/asm-generic/vmlinux.lds.h
> avoids potential subtle orphan section placement issues and suppresses
> --orphan-handling=warn warnings.
> 
> v6:
> - drop llvm-objdump from the title. We don't run objdump now
> - delete unused local variables: bin_arch, bin_format and bin_file
> - mention in the comment that lld does not allow an ET_EXEC input
> - rename BTF back to .BTF . The section name is assumed by bpftool
> - add output section description to include/asm-generic/vmlinux.lds.h
> - mention cb0cc635c7a9 ("powerpc: Include .BTF section")
> 
> v5:
> - rebase on top of bpf-next/master
> - rename .BTF to BTF
> 
> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> Fixes: cb0cc635c7a9 ("powerpc: Include .BTF section")
> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> Signed-off-by: Fangrui Song <maskray@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Stanislav Fomichev <sdf@google.com>
> Tested-by: Stanislav Fomichev <sdf@google.com>
> Cc: Alexei Starovoitov <ast@kernel.org>
> Cc: Andrii Nakryiko <andrii.nakryiko@gmail.com>
> Cc: Daniel Borkmann <daniel@iogearbox.net>
> Cc: David S. Miller <davem@davemloft.net>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: clang-built-linux@googlegroups.com
> ---
>  arch/powerpc/kernel/vmlinux.lds.S |  6 ------
>  include/asm-generic/vmlinux.lds.h | 15 +++++++++++++++
>  kernel/bpf/btf.c                  |  9 ++++-----
>  kernel/bpf/sysfs_btf.c            | 11 +++++------
>  scripts/link-vmlinux.sh           | 24 ++++++++++--------------
>  5 files changed, 34 insertions(+), 31 deletions(-)
> 
> diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
> index a32d478a7f41..b4c89a1acebb 100644
> --- a/arch/powerpc/kernel/vmlinux.lds.S
> +++ b/arch/powerpc/kernel/vmlinux.lds.S
> @@ -303,12 +303,6 @@ SECTIONS
>  		*(.branch_lt)
>  	}
>  
> -#ifdef CONFIG_DEBUG_INFO_BTF
> -	.BTF : AT(ADDR(.BTF) - LOAD_OFFSET) {
> -		*(.BTF)
> -	}
> -#endif
> -
>  	.opd : AT(ADDR(.opd) - LOAD_OFFSET) {
>  		__start_opd = .;
>  		KEEP(*(.opd))
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index e00f41aa8ec4..39da8d8b561d 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -535,6 +535,7 @@
>  									\
>  	RO_EXCEPTION_TABLE						\
>  	NOTES								\
> +	BTF								\
>  									\
>  	. = ALIGN((align));						\
>  	__end_rodata = .;
> @@ -621,6 +622,20 @@
>  		__stop___ex_table = .;					\
>  	}
>  
> +/*
> + * .BTF
> + */
> +#ifdef CONFIG_DEBUG_INFO_BTF
> +#define BTF								\
> +	.BTF : AT(ADDR(.BTF) - LOAD_OFFSET) {				\
> +		__start_BTF = .;					\
> +		*(.BTF)							\
> +		__stop_BTF = .;						\
> +	}
> +#else
> +#define BTF
> +#endif
> +
>  /*
>   * Init task
>   */
> diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
> index 50080add2ab9..6f397c4da05e 100644
> --- a/kernel/bpf/btf.c
> +++ b/kernel/bpf/btf.c
> @@ -3477,8 +3477,8 @@ static struct btf *btf_parse(void __user *btf_data, u32 btf_data_size,
>  	return ERR_PTR(err);
>  }
>  
> -extern char __weak _binary__btf_vmlinux_bin_start[];
> -extern char __weak _binary__btf_vmlinux_bin_end[];
> +extern char __weak __start_BTF[];
> +extern char __weak __stop_BTF[];
>  extern struct btf *btf_vmlinux;
>  
>  #define BPF_MAP_TYPE(_id, _ops)
> @@ -3605,9 +3605,8 @@ struct btf *btf_parse_vmlinux(void)
>  	}
>  	env->btf = btf;
>  
> -	btf->data = _binary__btf_vmlinux_bin_start;
> -	btf->data_size = _binary__btf_vmlinux_bin_end -
> -		_binary__btf_vmlinux_bin_start;
> +	btf->data = __start_BTF;
> +	btf->data_size = __stop_BTF - __start_BTF;
>  
>  	err = btf_parse_hdr(env);
>  	if (err)
> diff --git a/kernel/bpf/sysfs_btf.c b/kernel/bpf/sysfs_btf.c
> index 7ae5dddd1fe6..3b495773de5a 100644
> --- a/kernel/bpf/sysfs_btf.c
> +++ b/kernel/bpf/sysfs_btf.c
> @@ -9,15 +9,15 @@
>  #include <linux/sysfs.h>
>  
>  /* See scripts/link-vmlinux.sh, gen_btf() func for details */
> -extern char __weak _binary__btf_vmlinux_bin_start[];
> -extern char __weak _binary__btf_vmlinux_bin_end[];
> +extern char __weak __start_BTF[];
> +extern char __weak __stop_BTF[];
>  
>  static ssize_t
>  btf_vmlinux_read(struct file *file, struct kobject *kobj,
>  		 struct bin_attribute *bin_attr,
>  		 char *buf, loff_t off, size_t len)
>  {
> -	memcpy(buf, _binary__btf_vmlinux_bin_start + off, len);
> +	memcpy(buf, __start_BTF + off, len);
>  	return len;
>  }
>  
> @@ -30,15 +30,14 @@ static struct kobject *btf_kobj;
>  
>  static int __init btf_vmlinux_init(void)
>  {
> -	if (!_binary__btf_vmlinux_bin_start)
> +	if (!__start_BTF)
>  		return 0;
>  
>  	btf_kobj = kobject_create_and_add("btf", kernel_kobj);
>  	if (!btf_kobj)
>  		return -ENOMEM;
>  
> -	bin_attr_btf_vmlinux.size = _binary__btf_vmlinux_bin_end -
> -				    _binary__btf_vmlinux_bin_start;
> +	bin_attr_btf_vmlinux.size = __stop_BTF - __start_BTF;
>  
>  	return sysfs_create_bin_file(btf_kobj, &bin_attr_btf_vmlinux);
>  }
> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> index ac569e197bfa..d09ab4afbda4 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -113,9 +113,6 @@ vmlinux_link()
>  gen_btf()
>  {
>  	local pahole_ver
> -	local bin_arch
> -	local bin_format
> -	local bin_file
>  
>  	if ! [ -x "$(command -v ${PAHOLE})" ]; then
>  		echo >&2 "BTF: ${1}: pahole (${PAHOLE}) is not available"
> @@ -133,17 +130,16 @@ gen_btf()
>  	info "BTF" ${2}
>  	LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
>  
> -	# dump .BTF section into raw binary file to link with final vmlinux
> -	bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
> -		cut -d, -f1 | cut -d' ' -f2)
> -	bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
> -		awk '{print $4}')
> -	bin_file=.btf.vmlinux.bin
> -	${OBJCOPY} --change-section-address .BTF=0 \
> -		--set-section-flags .BTF=alloc -O binary \
> -		--only-section=.BTF ${1} $bin_file
> -	${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
> -		--rename-section .data=.BTF $bin_file ${2}
> +	# Create ${2} which contains just .BTF section but no symbols. Add
> +	# SHF_ALLOC because .BTF will be part of the vmlinux image. --strip-all
> +	# deletes all symbols including __start_BTF and __stop_BTF, which will
> +	# be redefined in the linker script. Add 2>/dev/null to suppress GNU
> +	# objcopy warnings: "empty loadable segment detected at ..."
> +	${OBJCOPY} --only-section=.BTF --set-section-flags .BTF=alloc,readonly \
> +		--strip-all ${1} ${2} 2>/dev/null
> +	# Change e_type to ET_REL so that it can be used to link final vmlinux.
> +	# Unlike GNU ld, lld does not allow an ET_EXEC input.
> +	printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16 status=none
>  }
>  
>  # Create ${2} .o file with all symbols from the ${1} object file
> -- 
> 2.25.1.481.gfbce0eb801-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003182245.589A6B5%40keescook.
