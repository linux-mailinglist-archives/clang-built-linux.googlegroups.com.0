Return-Path: <clang-built-linux+bncBCR5PSMFZYORBC4SZXZQKGQEMQ2BDQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id D737618B14D
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 11:27:24 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id e5sf1567534ilg.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 03:27:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584613643; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cw8pasNS++/cF3Zr0KAC8PMhttAxK96DLYkR2QsjDEhukP/pigqiWhKO0SCURxrARi
         aVXyVOxcPd9hDt9KnKn9J+0donL7jV5xclEpCn32z85aq96wsh+Ikgvc6cCnRB5QvO48
         wa3G/xyBelAyS5+UqRrbUfRg4Gvq1uOGficnkdOtHwVyOhWIJIRdnmvFk82J6aKU9fsB
         uJ3UxfXkMncs2HTqwa37isOWutqZDt/gIFVRSJ0aCYNGaWGsZIgJSx+ZCn3LRjQ5kHVS
         gWjkv6ZHis6TCR92A1Ve93mza5sUFB4uWR6sVpOB7FSPcNlQRo1miYq+TpNsCL6DSqQ5
         /CJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=krQDG5W+pSkgzImcjZ1L/2pvswAzbio1XU+EZ9g4UM0=;
        b=mxZKAKsO6g/VWZZK2/JtE9bHUG5unBonb7QSm+XEcMGgf/bbac50SM8SJ1P6MJf5V9
         CFTk728fHpN2ry38fDox4OI3zn6aznjQyo0PvGQlQmanbvDRAjZ9ryRJICRbXyLRSGRs
         M7tK0oEei70r4/tsxPhXxWR0NVOrANPj3SbIoNOxmE9INlSYXIsIbF1pkyt0aFHuRNod
         gC/vUqEAOuK/PrKgWFMGXT696Lg9KSeff62WZnZpGe2UHiU2Ke5Wxp1Q35DkaTG8gpIw
         kNR0Jjs88xpnpbpwLY+pAaa6fxnxIMfpy7Ge97U1WJHHkQKiOjKt0nSHQw96Nvh/hV34
         tMVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=WISc9kYh;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=krQDG5W+pSkgzImcjZ1L/2pvswAzbio1XU+EZ9g4UM0=;
        b=lSTYW9AtWSmSIVVwRDUaY/AceCbfA0ifIbibp2OY+0YIWUEBPPQip/0kNak+1ushLq
         UDi/bH/NSJf0KKQ1n2OmcvGiliqmOvrVVrftLK76ZoPnYOrApMCdUjtzS5272dccWoIx
         EBWn9Cce7RBYjQDgWgjuf4fDgoppFNigCtyiX13FYVi+9uXSTta27oW839ovJd8L+q1P
         Zd7iUQXE6YzCVlmcBzKDFl8Sx9QwbrPOyAUKwYb4x/VH2sP+W5bluVtzP2V+9hnapKXz
         cgMJjaljqeSA/ixdQ80YUx/gidVxIzBWJw4fm+/RnCrwD4gr4VLzSNWTwerDjGJo5TTw
         KWmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=krQDG5W+pSkgzImcjZ1L/2pvswAzbio1XU+EZ9g4UM0=;
        b=e5Ph5bKz4cRm6Egnd/0P37PabrYsIJ0iuT9KIUgDPVfldMF06PFAIuQl18vr4Itrm8
         xconCG7ASOjNUvi4bGDXWZKCSlq4vzoz5NzL5PPpww+tR4B7EIgBvdMQifsxzl43FnYt
         bsMkKg8HqY9kAEi+2jcP8cNTrO+zSmJBI5g2jocaIzi7ZMHuEcxg6uwJWr9cyONmGb5X
         +1s1WPgS2ydP+HhI37jvDZvxI+5Gc3c/b7mSQqrNXI7AXd1TJMABdhU8efdHAWdm2NAE
         1TugLMeAJ8SCqv8vDVz2h7fPPg8yF4SmIvSRSNHRk7L5qmUSbfJSBGAO3qlSLqyHEEUk
         fhiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ388vmnw9x3TnQyXOq4sbZQD4AGacy0Hy2DlNmihcc1OXT7gmED
	QDBqyT0pmn66V4SNq5hp8QE=
X-Google-Smtp-Source: ADFU+vvR7FWnx+OPf0Lep8OYXDNVogabmTOxpolRk6+6IQHibkjbBs4bg6fQKGYjs5R+xyjQuMswQg==
X-Received: by 2002:a92:b08:: with SMTP id b8mr2474877ilf.202.1584613643681;
        Thu, 19 Mar 2020 03:27:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d204:: with SMTP id y4ls447425ily.5.gmail; Thu, 19 Mar
 2020 03:27:23 -0700 (PDT)
X-Received: by 2002:a92:6a10:: with SMTP id f16mr2501802ilc.113.1584613643108;
        Thu, 19 Mar 2020 03:27:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584613643; cv=none;
        d=google.com; s=arc-20160816;
        b=a3gEeQJRSh/InEKQ+ohm6A/X/2XIWhjBS8tvNU3xQTTLCUQ1hFvuxEEcVhDIDCuGj7
         yyhzuF3C0HZAff114c36Cvnban+TllQKIjkEjH78XIIr9SSgnW2nuZ/ewjZNDYibFUp0
         1Pt5viv6I/IsoQWK6PFvuqN358XNlonEs6dl1FiUVjAKTqwTwsNGWjNkVRLkOROUpT+F
         F+s6pA8Gz62cw5xNAeuWFIE5TvQ2qfDkzXVZPihqZA+fKtmEd1PK2skYospHtc3qebrm
         bd9mTuexiQhYRX3EZzN3ocnpvbTZA2qHSZ2p0KuvjdNjpId1jw+X/XCTwOocvYKf3cGN
         cJLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=kOL7XCauTtuhieh6by3lTcJ4qs86nfxV0IFARS3NUso=;
        b=1Eoe4eodKviy/jGbkAO8tHYHjC93yJVejO+V+Jhn3WG5GSrlpvEmhHecsKitjf8oEF
         2h3dXPMWl5WUO8HG9zRz3oyWyLTvXUSGjYPp/2M5/w848MY/s8KpK/9cr+fSKuETjA/1
         lx9CD61gyzDcBu4qeM6Krae9BpyNUbcTPY6VontMnmsONhUMT6RDgFUMsv++VrNjzQGi
         CIyDNuW2a8V17Fa1aTiPMuL4GnErpoOLt3y4xTl8KOjeAVoRiABq8Axi1XXKnq1ZBwqB
         26RWx1xtCpTiA50dogjD65NgQo/OawZ2eM1kjTonbioADuUKE8MaFJOBtMu52Dm1Uanw
         5tsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=WISc9kYh;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id s201si108610ilc.0.2020.03.19.03.27.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2020 03:27:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 48jjl76CcWz9sPR;
	Thu, 19 Mar 2020 21:27:15 +1100 (AEDT)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Fangrui Song <maskray@google.com>, bpf@vger.kernel.org, netdev@vger.kernel.org
Cc: Fangrui Song <maskray@google.com>, Nathan Chancellor <natechancellor@gmail.com>, Stanislav Fomichev <sdf@google.com>, Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii.nakryiko@gmail.com>, Daniel Borkmann <daniel@iogearbox.net>, "David S . Miller" <davem@davemloft.net>, Kees Cook <keescook@chromium.org>, "Naveen N . Rao" <naveen.n.rao@linux.vnet.ibm.com>, Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next v6] bpf: Support llvm-objcopy for vmlinux BTF
In-Reply-To: <20200318222746.173648-1-maskray@google.com>
References: <20200318222746.173648-1-maskray@google.com>
Date: Thu, 19 Mar 2020 21:27:16 +1100
Message-ID: <87tv2kd4hn.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=WISc9kYh;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

Fangrui Song <maskray@google.com> writes:
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

I wasn't able to easily test as I don't have bpf-next/master handy.

But this part of the change looks fine to me.

Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)

cheers



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

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87tv2kd4hn.fsf%40mpe.ellerman.id.au.
