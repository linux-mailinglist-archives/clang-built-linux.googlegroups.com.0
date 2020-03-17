Return-Path: <clang-built-linux+bncBDE5JTGNZULRBR4MYXZQKGQE7ALOJPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 946371890C2
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 22:51:04 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id d7sf22214235qvq.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 14:51:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584481863; cv=pass;
        d=google.com; s=arc-20160816;
        b=qa33fHBtczRcjHXkmz/ugEpBUIukkQBVNIwz7aiOZ1Qmw+UY0vti74c0zSQCOg8aWF
         LP9UncA3hAjZs0XJDPOKEWeTGQVU2qhdRvbJqD9Dc4uNdkXcf2kGl8ptNOhMSvsbWLUv
         IeG0/xwvIAYkfzmn7Bm3GsPpsWjFmiVgqKnp49F9PWv9MLveLcVGrj2SoKi4OoIAEOMZ
         HaIWGnpeTcl6wO/x1j8bynsHvDQH24nvlOM1uG4l6xLNlsyxQGHAPmBVCO0mEAb6HtXn
         OS5kfmO8HiKywysx02UZd2cgOL4SGEhLVX139jVI+Svo2yswIGui8FvHANFOo92gnGXY
         NZJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=bvuGnyBY7nDeqL2/jT/AmZS8A5/BqHPBkjuhdWppWL4=;
        b=kLOS5ioHF3BueMH6I0B3GD7qX8MwL7thAwTyKr7R1jpA9fLPgEERZuVr4W5Rbkc6vQ
         gmAk8ABYXqVztSjMZBV0VG3iSZcTLcGH/1xKCirQmQbNoKAkPe+wV/R8my4UhYnTqqaI
         gJG37PzWI6ch2kyndyLOfsxf5/RrkdzoQTdtJkYLrgQ7KnGjfmDDaQCk3k6Fnyd3BAYN
         Tp0ebMMTN8AKeHtvj5rKh5Y+87rB005cwR32aT31n7ZWj9hpPPmJl/N7OQWM73uqdJ+t
         hOv9AbLeUtnkD67yjj5C3B//nCCps0hDBobU46uRYuH2gey1gM4McMyiHvvJGSvSe+7A
         RGmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623 header.b=FEkQxtHI;
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bvuGnyBY7nDeqL2/jT/AmZS8A5/BqHPBkjuhdWppWL4=;
        b=ezpObB7w1K6DRzTvVj+5PfxwTBRw7zxHipa/dzrvPUwOGXhRUDHF/sEjNiYLbzCBc6
         xRLzxiucIa1XgBoIdJwtIuxHpF1u+WOhAb5IMcMPWT69J2o6+9pdspvWs9bkeg7DjdDT
         Me0w2I8119Quj/b9uWGgaJC29Ortj3UCbmLx0NBje3mQRm/n/j+7AMxpB78UkQCwZBKE
         tos7Dq1FuyLbYUhcHnxlpv1ZihLM5v5EQTEnj/XLo/yZon6hFD5Ck42mc0ixLw4+kh82
         OeismE8+dY0U6EMp0BhGuSEc49r+c19B0t1JfQU2MvBAGk9YE+9Io5eggGUv3JTVG5rq
         SDFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bvuGnyBY7nDeqL2/jT/AmZS8A5/BqHPBkjuhdWppWL4=;
        b=kywgs/BokPy9FmxWRv0s4wumE2L35lmMY6toKRq+wqhlgRRhK0UdiV0jfdc6IHaPlq
         y9fZDdTGsXyjVDKvqc616DxUzAhvUHFoSoAn2hD16oM5q3Fx+BUDDv28N0xo1AGtisn6
         yFh9Fi4HEZDO9reqWx5Lysi64+JIIZM4SOR3c1e1PiRtZ7khMn2Ap0oLKCrQ2e0tbIFZ
         8n0ZiOh9gKhxp87GP2rm0LCfaUUOqMSoionnBIGlTegMz9g5v80VINo/mDuhf8ImizHR
         UY2mYtHfXMTDsqslolHkpdNODhCUHPDKk+fAu1kusiS0vcaeR4dVP/3X1UQk6cMmVvA+
         O44Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0lphTd64h0WInAdHHD1Rev3d3+BAzGc70xbm5KR15bygHtcx5N
	Hf/Rqi2gCk4hu4zK2LDWM6A=
X-Google-Smtp-Source: ADFU+vtsZId0D7GXelZP1MUMbIBvDSDejHUIb2WHnMvCy6xZhiWPj+OymNcAAzgkUKYfASW6E4DMfA==
X-Received: by 2002:ae9:f707:: with SMTP id s7mr1078341qkg.5.1584481863506;
        Tue, 17 Mar 2020 14:51:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:56a:: with SMTP id p10ls11663308qkp.2.gmail; Tue,
 17 Mar 2020 14:51:03 -0700 (PDT)
X-Received: by 2002:a37:a505:: with SMTP id o5mr1111804qke.30.1584481863125;
        Tue, 17 Mar 2020 14:51:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584481863; cv=none;
        d=google.com; s=arc-20160816;
        b=rNcOLzwV+d2M5EyFTkHpBQsX0Algoga4tAuAu/wNqbm8HrtAXV+3Z3OfpkVk49s2vq
         vbrd4pOvQMQw73OZvNRgR1td4oACh23YKUnRSKeJHZqvm5sc26DvW4d508dCQPmacr0W
         eO/wmp2Elo8hBmRnAwai9T99AnOS4DYp2849H+CIeUH8/p9wEkEne7zssP9BoZAxNaqt
         UvFNWwyMHdHHGk31fMNLsXa0qyY9X7/C59VCDlzJqG8Ack2DXMS9ePT5Vn/YSN9LSpoH
         togOrP1RDf1HVz7ZFxc6/8n8+e1akISMYw9VZxyAjDLfthKvOY85onvrcQKHwx9gyeFN
         Ey1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=G8ak8AESDzh6e3M3i5Q2LPitDfjwSZZdOv21drjByw8=;
        b=DnX3c38VIkBtI+bh8dOONDEUNQhAgOKL4HQ7wKeej3Bz9PBAigT42SL4ZDQnvYq9x/
         r+//Z4hJySBQwRJQ7NkG+o/Yzq0IpTwDNqq0kFgvw1UaILnpcrUdkF3GVSN0a7UL96Be
         V5v/qSvZA2W5CRPTaYUi9+YbOhIgckC7PCks7NCM2gGmow8F9mNuQgJ+OsXgy5WuVCHS
         30ntER1tEZaOxSLDulErbhJDxDzaub4OaVyrnkBw8vmTtstn8Yg9r+QkdATZIGrQd+9k
         xnVa5XsfEg9Nmk84hHwmY2EtgQSfEmq6AMdn/Lf8oJI222LNaAiDDhx20NoHB6+kRZkS
         8XYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623 header.b=FEkQxtHI;
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id r14si183756qtc.5.2020.03.17.14.51.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 14:51:03 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id y30so12435030pga.13
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 14:51:03 -0700 (PDT)
X-Received: by 2002:aa7:9416:: with SMTP id x22mr915918pfo.100.1584481862039;
        Tue, 17 Mar 2020 14:51:02 -0700 (PDT)
Received: from localhost ([2601:646:8f00:18d9:d0fa:7a4b:764f:de48])
        by smtp.gmail.com with ESMTPSA id q12sm3957215pfh.158.2020.03.17.14.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 14:51:01 -0700 (PDT)
Date: Tue, 17 Mar 2020 14:51:00 -0700
From: Stanislav Fomichev <sdf@fomichev.me>
To: Fangrui Song <maskray@google.com>
Cc: bpf <bpf@vger.kernel.org>, Networking <netdev@vger.kernel.org>,
	Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	Stanislav Fomichev <sdf@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Alexei Starovoitov <ast@kernel.org>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH bpf-next v5] bpf: Support llvm-objcopy and llvm-objdump
 for vmlinux BTF
Message-ID: <20200317215100.GC2459609@mini-arch.hsd1.ca.comcast.net>
References: <20200317211649.o4fzaxrzy6qxvz4f@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200317211649.o4fzaxrzy6qxvz4f@google.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: sdf@fomichev.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623
 header.b=FEkQxtHI;       spf=neutral (google.com: 2607:f8b0:4864:20::542 is
 neither permitted nor denied by best guess record for domain of
 sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
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

On 03/17, Fangrui Song wrote:
> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
> The existing 'file format' and 'architecture' parsing logic is brittle
> and does not work with llvm-objcopy/llvm-objdump.
Thanks, it all makes sense and looks much better/portable (too much
dependence on binutils :-).
I've left a bunch of questions/nits below.

> 
> .BTF in .tmp_vmlinux.btf is non-SHF_ALLOC. Add the SHF_ALLOC flag and
> rename .BTF to BTF so that C code can reference the section via linker
> synthesized __start_BTF and __stop_BTF. This fixes a small problem that
> previous .BTF had the SHF_WRITE flag. Additionally, `objcopy -I binary`
> synthesized symbols _binary__btf_vmlinux_bin_start and
> _binary__btf_vmlinux_bin_start (not used elsewhere) are replaced with
> more common __start_BTF and __stop_BTF.
> 
> Add 2>/dev/null because GNU objcopy (but not llvm-objcopy) warns
> "empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"
> 
> We use a dd command to change the e_type field in the ELF header from
> ET_EXEC to ET_REL so that lld will accept .btf.vmlinux.bin.o.  Accepting
> ET_EXEC as an input file is an extremely rare GNU ld feature that lld
> does not intend to support, because this is error-prone.
Please keep small changelog here, for example:

v5:
* rebased on top of bpfnext

Btw, I tried to pull and test it and failed:
$ curl -LO https://lore.kernel.org/bpf/20200317211649.o4fzaxrzy6qxvz4f@google.com/raw
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  9627  100  9627    0     0  47191      0 --:--:-- --:--:-- --:--:-- 47191
$ git am raw
warning: Patch sent with format=flowed; space at the end of lines might
be lost.
Applying: bpf: Support llvm-objcopy and llvm-objdump for vmlinux BTF
error: corrupt patch at line 20
Patch failed at 0001 bpf: Support llvm-objcopy and llvm-objdump for
vmlinux BTF
hint: Use 'git am --show-current-patch' to see the failed patch
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
$ git describe
v5.6-rc5-1621-g230021539e8c

Are you sure it's on top of the bpf-next? Or am I doing something wrong?

> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
> Cc: Stanislav Fomichev <sdf@google.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/871
> Signed-off-by: Fangrui Song <maskray@google.com>
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
We still have the following in gen_btf that you need to remove:
	local bin_arch
	local bin_format
	local bin_file

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
	We have 'set -e' so && can be omitted. Maybe it will be a bit
	more clear:

	# Extract .BTF, add SHF_ALLOC, rename to BTF so that we can reference
	# it via linker synthesized __start_BTF and __stop_BTF.
	${OBJCOPY} --only-section=.BTF --set-section-flags .BTF=alloc,readonly \
		--rename-section .BTF=BTF ${1} ${2} 2>/dev/null

	# Change e_type to ET_REL (0x01) so that it can be used to link final
	# vmlinux.
	printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16 status=none

	^^^ maybe also point out that this is required for llvm's ldd.
	I know you point it out in the commit message, but still nice
	to have as a comment here.

>  }
>  # Create ${2} .o file with all symbols from the ${1} object file
> -- 
> 2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317215100.GC2459609%40mini-arch.hsd1.ca.comcast.net.
