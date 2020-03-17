Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVEOYXZQKGQEPX3LKUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D581890D4
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 22:55:34 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id v198sf14198699oia.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 14:55:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584482133; cv=pass;
        d=google.com; s=arc-20160816;
        b=oD2xreiXxJNAtf5+NdLWLAdyKCvrFS+ifbhI/hywQhl3v6M+DUeLjdEdn9QICl9rGk
         T9MPVSzvuZX+ekK+9PgMHoTGNCysUBbZM345htyW9rXYEK+CZHn+7ykUcV58o37V7g1+
         4MmH2mCP3epX2fad1qQyqqkf+jd4fp1uk3FWlThQLzTE6u6uVSmyXpFV6FE/HsUeN6el
         zjF2MJ8tcaTViqBxcGOXTqTT12uC8znmWWyO88LhwPTa3cmwEi6IULpJg1T4VhEtAyse
         pLBKs+TqStTaQ6dbQdzVFbOw9HGloCuYTI0eXqPaO9zIOCVmZHpDY0nNMyJOpu27wSwT
         WPNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=uWMGbc/tJteEyt5wRjMS6wC2qahzV5t77BRfUjyygqg=;
        b=JfQGFU3PEoqWINSOKBIpNuasl2pX3FT45Ry9yedNAiWCSCR40djCHHLWKNymFibF1g
         jKCNQhWDsflIgVALn0CDJ2BOvPDRUhThdY61CfA6S1g/rQDw0eMYF7i2KvcuH/c2hNB+
         TBonxPKgIBezHk3xD7DA9DZ5IYdySBdOurU5j/1MsQZueEwsMK1MDHC+tumX+bYoCIL8
         pRJviBRRLFewiPCjvuFJ/hJQO3rpDnI0G0OH/y5fMH3LYWMBgLhAvaHrhrEjaKylclSx
         c4R4r/ZAa6FPGU/9Bm1G10atn2BR/lgtXihrE38WwOrbI4grLso4U5a2qkquEWH1A+Rh
         tHcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kvPHVjN5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uWMGbc/tJteEyt5wRjMS6wC2qahzV5t77BRfUjyygqg=;
        b=ESHYUehmY6UUN8DhTlufBhZTjlx1xs+vY2veHqTc7YvbsVODB53DoS/oavApYost7Y
         QaDRWW9hUFDRqgU1gH9gGcf3g62KbSsMVfailoak4QtY5lI5aitw/kfDCh/VopYLdCTQ
         zoxuE/wRPaIMMNfSN7OI61gDKLBi9sdSexXu2SQNGpj/noIsiyRDYh8DWVrPsUNQwNdf
         dL0b7fExy9GQb3+h5WAoO+yGxkrSUd0oHc6sN9UH3VLSry6YGQ/alafG0oU5SQhYSUlN
         SwLhU74Vrip3bF1fM0gSqiOgPI+vZ6LKIuGSEm+0Z9VcbDoMyLbSd7v4HTLdzAAIXjv7
         7EHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uWMGbc/tJteEyt5wRjMS6wC2qahzV5t77BRfUjyygqg=;
        b=gv4rz0YfCfnwUWotz3cjnUo9SsXZF2V8gWXeFNxJTax+0FfWdKVrncwLC4uugqElOT
         WW+RFDMCNl5/Wt6cznMC8dpnRy9zwncELjjVCHc2A/GUBqKchEmq2fS/K38kpVh0zuhx
         5iN2VRSu1gMAHkvt/eDBhcAkRsy7mmOe+JhLAfVjVttfoxsHuhFoLKixZdxkJoVam7Up
         cqSmPZIcimozHUxsCwoYvWm/FmhLehU/X3Z/xn88HNQCBByl4rHS2oIbMGaavYgBlv3i
         uNjk90gYXGrIfRLkWkYLG3wT8yceU48oO4pTdTW21A8JpwEb/kdtU64Fm+f2TsefzBgs
         MT1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ15Gzt6pzOLWXqAzhR9hBUSu+blBSX88yNLvXfG9UGZCow/qB2r
	DQivlzRl4NlxWT4MtaiApuM=
X-Google-Smtp-Source: ADFU+vuGGeIjEeBt/oj0l3UL/8S8aDm6zChjOTQY3HqR5DiHITCjULySsrGCgTfSbjP548d/NEg9lA==
X-Received: by 2002:aca:b703:: with SMTP id h3mr828212oif.148.1584482132965;
        Tue, 17 Mar 2020 14:55:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:30c4:: with SMTP id r4ls7542390otg.9.gmail; Tue, 17 Mar
 2020 14:55:32 -0700 (PDT)
X-Received: by 2002:a05:6830:30a3:: with SMTP id g3mr1259252ots.222.1584482132608;
        Tue, 17 Mar 2020 14:55:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584482132; cv=none;
        d=google.com; s=arc-20160816;
        b=ETAuhbWta3UQdUC4INc4Lzu8A15Nf/Gg87sEHqdtyufyog2rY+eawYIzYiL98PaJmv
         /N29aQYj0hmw1BqXdv7hCSp3BFYrSuuir1eXVViR0ZCfKyNNvMelVO9u122uWFi6OKPC
         5TLzlTwUFkbHFVQ59pRwe/6hO995EO5fhkLdnbi9FRvmSDXLbFMcLTO5xlG5UrHGJERB
         cFmpMbm+qQqDOGF2iUQomt2mSfzpfZ3a1M2hLLjNYwzWIOyYBjAy0tr6cX/knp2wn0RI
         p63nR2gXibVo0D9S495iO1ualLCmipLcCZXczA7V0nifIKr/M1ryuLN8nhdurHl+OKsy
         RFOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zn81+2/mHk8JESolQzJ6TzVtfsQLsPwXnqDsT+ejuXo=;
        b=IH6nB+svBFjxeewbivbmbXuuAoaE9FHIbC95yta0LRnMpwr6yrChuCOgbuTb5XKZoL
         aUCkfft0e5kK7QBUStBsEDzC0hfCJwVCYZe849I2pRV+LDEvNHDrgOD7MkCHmTTGR5rK
         mmPqlHVzCMQX5yEKDiJadPRpGJ6nWKC6VhBKkqwIpo/VPVMb7rN9sQz4r1kirlE1sscE
         fNH8rexIYHpYhgnXQ9inuS3mUkd6eIlTJKivhTBliy5wHmRa9c78+630ItKxV1AN1o0A
         QgWTW4RRxytpwFnLZbXeYt8+IQqaUQ9lmDnIazo6BoHM3rZqFS3rKn3A2lxbQcBi1UDH
         5AHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kvPHVjN5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id d11si390702otk.5.2020.03.17.14.55.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 14:55:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id mj6so340623pjb.5
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 14:55:32 -0700 (PDT)
X-Received: by 2002:a17:902:7298:: with SMTP id d24mr778151pll.134.1584482131815;
        Tue, 17 Mar 2020 14:55:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g2sm3507364pgi.20.2020.03.17.14.55.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 14:55:31 -0700 (PDT)
Date: Tue, 17 Mar 2020 14:55:30 -0700
From: Kees Cook <keescook@chromium.org>
To: Fangrui Song <maskray@google.com>
Cc: bpf <bpf@vger.kernel.org>, Networking <netdev@vger.kernel.org>,
	Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	Stanislav Fomichev <sdf@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Alexei Starovoitov <ast@kernel.org>
Subject: Re: [PATCH bpf-next v5] bpf: Support llvm-objcopy and llvm-objdump
 for vmlinux BTF
Message-ID: <202003171451.6B11E25636@keescook>
References: <20200317211649.o4fzaxrzy6qxvz4f@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200317211649.o4fzaxrzy6qxvz4f@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=kvPHVjN5;       spf=pass
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

On Tue, Mar 17, 2020 at 02:16:49PM -0700, Fangrui Song wrote:
> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
> The existing 'file format' and 'architecture' parsing logic is brittle
> and does not work with llvm-objcopy/llvm-objdump.
> 
> .BTF in .tmp_vmlinux.btf is non-SHF_ALLOC. Add the SHF_ALLOC flag and
> rename .BTF to BTF so that C code can reference the section via linker
> synthesized __start_BTF and __stop_BTF. This fixes a small problem that
> previous .BTF had the SHF_WRITE flag. Additionally, `objcopy -I binary`
> synthesized symbols _binary__btf_vmlinux_bin_start and
> _binary__btf_vmlinux_bin_start (not used elsewhere) are replaced with
> more common __start_BTF and __stop_BTF.

I'm glad to see the name change benefit here. Just reducing the number
of execs in this path is only worth this change, IMO. Going from 2
objdump and 2 objcopy calls to a single objcopy is very nice. :)

> 
> Add 2>/dev/null because GNU objcopy (but not llvm-objcopy) warns
> "empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"
> 
> We use a dd command to change the e_type field in the ELF header from
> ET_EXEC to ET_REL so that lld will accept .btf.vmlinux.bin.o.  Accepting
> ET_EXEC as an input file is an extremely rare GNU ld feature that lld
> does not intend to support, because this is error-prone.

Nice ELF trick. :)

> 
> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> Cc: Stanislav Fomichev <sdf@google.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> Signed-off-by: Fangrui Song <maskray@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  kernel/bpf/btf.c        |  9 ++++-----
>  kernel/bpf/sysfs_btf.c  | 11 +++++------
>  scripts/link-vmlinux.sh | 17 ++++++-----------
>  3 files changed, 15 insertions(+), 22 deletions(-)
> 
> diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
> index 50080add2ab9..6f397c4da05e 100644
> --- a/kernel/bpf/btf.c
> +++ b/kernel/bpf/btf.c
> @@ -3477,8 +3477,8 @@ static struct btf *btf_parse(void __user *btf_data, u32 btf_data_size,
>  	return ERR_PTR(err);
>  }
> -extern char __weak _binary__btf_vmlinux_bin_start[];
> -extern char __weak _binary__btf_vmlinux_bin_end[];
> +extern char __weak __start_BTF[];
> +extern char __weak __stop_BTF[];
>  extern struct btf *btf_vmlinux;
>  #define BPF_MAP_TYPE(_id, _ops)
> @@ -3605,9 +3605,8 @@ struct btf *btf_parse_vmlinux(void)
>  	}
>  	env->btf = btf;
> -	btf->data = _binary__btf_vmlinux_bin_start;
> -	btf->data_size = _binary__btf_vmlinux_bin_end -
> -		_binary__btf_vmlinux_bin_start;
> +	btf->data = __start_BTF;
> +	btf->data_size = __stop_BTF - __start_BTF;
>  	err = btf_parse_hdr(env);
>  	if (err)
> diff --git a/kernel/bpf/sysfs_btf.c b/kernel/bpf/sysfs_btf.c
> index 7ae5dddd1fe6..3b495773de5a 100644
> --- a/kernel/bpf/sysfs_btf.c
> +++ b/kernel/bpf/sysfs_btf.c
> @@ -9,15 +9,15 @@
>  #include <linux/sysfs.h>
>  /* See scripts/link-vmlinux.sh, gen_btf() func for details */
> -extern char __weak _binary__btf_vmlinux_bin_start[];
> -extern char __weak _binary__btf_vmlinux_bin_end[];
> +extern char __weak __start_BTF[];
> +extern char __weak __stop_BTF[];
>  static ssize_t
>  btf_vmlinux_read(struct file *file, struct kobject *kobj,
>  		 struct bin_attribute *bin_attr,
>  		 char *buf, loff_t off, size_t len)
>  {
> -	memcpy(buf, _binary__btf_vmlinux_bin_start + off, len);
> +	memcpy(buf, __start_BTF + off, len);
>  	return len;
>  }
> @@ -30,15 +30,14 @@ static struct kobject *btf_kobj;
>  static int __init btf_vmlinux_init(void)
>  {
> -	if (!_binary__btf_vmlinux_bin_start)
> +	if (!__start_BTF)
>  		return 0;
>  	btf_kobj = kobject_create_and_add("btf", kernel_kobj);
>  	if (!btf_kobj)
>  		return -ENOMEM;
> -	bin_attr_btf_vmlinux.size = _binary__btf_vmlinux_bin_end -
> -				    _binary__btf_vmlinux_bin_start;
> +	bin_attr_btf_vmlinux.size = __stop_BTF - __start_BTF;
>  	return sysfs_create_bin_file(btf_kobj, &bin_attr_btf_vmlinux);
>  }
> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> index ac569e197bfa..ae2048625f1e 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -133,17 +133,12 @@ gen_btf()
>  	info "BTF" ${2}
>  	LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
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
> +	# Extract .BTF, add SHF_ALLOC, rename to BTF so that we can reference
> +	# it via linker synthesized __start_BTF and __stop_BTF. Change e_type
> +	# to ET_REL so that it can be used to link final vmlinux.
> +	${OBJCOPY} --only-section=.BTF --set-section-flags .BTF=alloc,readonly \
> +		--rename-section .BTF=BTF ${1} ${2} 2>/dev/null && \
> +		printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16 status=none
>  }
>  # Create ${2} .o file with all symbols from the ${1} object file
> -- 
> 2.25.1.481.gfbce0eb801-goog

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003171451.6B11E25636%40keescook.
