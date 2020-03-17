Return-Path: <clang-built-linux+bncBCS7XUWOUULBBRMRYXZQKGQEOEHWWKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 149771890EC
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 23:01:43 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id t3sf10657233qvr.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 15:01:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584482502; cv=pass;
        d=google.com; s=arc-20160816;
        b=S4f9YDKI05OLmJwD/wh39griYS2B60/Ct7r/AMFHfBB+JQzHwplNQHf3bZQ/OWLOjG
         Adx+cdWSrMaTkyAatJN2khrALvi7+dbWAvLY4MHye4I96dUq8V0MuVDYcDgQc6cjpxR8
         lm8PZP+0NyOXE6n2AXJpG8nH/O2NBxHDsSbAsNfBzim28TpdEqez+HsXJFBQogdni6Yb
         S+O6pYhRkk8sNp2+R7zBXcEy90mTV05raE8FLYK2GH+af2ol62ONUOL1bYuHHruE+sjs
         viZewj69PSUVM9BVtL/HKzDVsY1gRNm7331Q26TG0xK8BYNIrd5e2Mgls0lKl023n+8Q
         YRkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=fDn5A6AGO3YzYug7RyTiCSyofBd1Kusa86DRUA63GOY=;
        b=axj2u7OdNIt3S0fMIcHAtoLxQYaSoeqhYU5StmnCDjhNNyB/rgDMLvmTlLHlqT6GcM
         EhCud9XUYgbmA2YrzyJ0yIh8QLTU8wgKUXCZfHm4kK332WtIOunkJEAk6GU67zynZA7k
         8r4Zo8YdtlpvfdPYOfuIdaABKAIEKT6EM6iR+UpnRpMAutg7wZ10pdpqfmlX2GwGdfCr
         ZNngbgKbGcrtplZgN0/yYQn39uCbNa3DcrcTKNDFOtfaDmK4nHTCuwsYqRMOy0/6Fvww
         BJnLD/qnKV283h9roMPS2kyhPlNGp5Zep6usTl7u7rhCjuttdWJmt3rfcr5vHklARgyJ
         F4og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AByfV4A3;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=fDn5A6AGO3YzYug7RyTiCSyofBd1Kusa86DRUA63GOY=;
        b=q5AbqmORm1x/bYmolb3bGWpjc90nz3Uulb0ahXzwgunAlNbC5QFOAhbH8n+rnjvdRA
         YcMPLwgIGdcesOWafVqh/VdWbP9tAbpQ5gWhdLKAhp7KatDnkfZmK2kj1PPmnjvlLDqA
         lIV78fL3CNLaN/tNjLqRqoYpcgTR7N7mK0ALP5B7NU4C9DAETjwQyWIuXIEcN9tG2oh4
         7IiyLXxlkxwqjyREax/t/FOYi/WdEzHTFwaElDqp16IGw8dkMzb5u7IXHXziFtblhCoQ
         Y/5cfQZvIG01LTRDOEkcsXavpGH8aFfbDpjQlet2D8i8jaemfjbVDx/9H66WeYldbvr8
         orNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fDn5A6AGO3YzYug7RyTiCSyofBd1Kusa86DRUA63GOY=;
        b=EmwzcLnZrgl68yf61mfNwBcnMyEEggw22Nto11GeRfWQzA4or9ihgnVzjTx34SS6TQ
         ZcNW9lfC4Vsce/mm3bW5LGmZebBdcS6kGFv3gHudfy/tO5jZn3hR6lpOX8T6aOPklip3
         9IlhEkeBGBmgjBTy6zDiZ0dcg7iCEWuytwNHloW+hhm1Ldd8dMLeo94KH7M+4DLko8mK
         XuWCph+XEcEUaVXx1M+4SSQezG1yE3M7In0GOouUUEGx7C4n1xsyeVpiRKFhZkXgWMNV
         D8ZeffCEcXAsckcfowC8YQWdEtLjCAEtvLLTO9Px7b8UKxC2Ux+O/1U1UeQXJewV7sF8
         ru9g==
X-Gm-Message-State: ANhLgQ14W9AWRZvZOfv2Wf5kaxoYvXVXEXosJDJ++IawnQ9bSO45pCS7
	mv9uKyjW9pU0laWIdj5Kzns=
X-Google-Smtp-Source: ADFU+vtaOur6tCHgvxW/fYs9EzmRn8zyiyanpH2n0Bnf1gb29Yhxk94XVLaNv0NMET9YFHLKs40JaQ==
X-Received: by 2002:a25:e792:: with SMTP id e140mr1338291ybh.187.1584482502032;
        Tue, 17 Mar 2020 15:01:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ab94:: with SMTP id v20ls8197753ybi.0.gmail; Tue, 17 Mar
 2020 15:01:41 -0700 (PDT)
X-Received: by 2002:a25:1589:: with SMTP id 131mr1382407ybv.305.1584482501598;
        Tue, 17 Mar 2020 15:01:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584482501; cv=none;
        d=google.com; s=arc-20160816;
        b=bsV5HPg+dxDi5bMAWyofYO25id9uKn+3YeSTlZjsIF0q8095VDEGeVv2YurRFnNRLf
         NPMQJIZWebke7ZwTsrmevVWqQbB9D893ocH3BjVjV2H66luVhRrVI1Te6NxkLZ7bDBES
         YCXIGFsJasGNtIGB+phkiSY/CeBE0Qun7LM+VIUSliGmPVtSMxTZ11t81lIPL2idGtji
         1ochjM5+xWkOW8lKcyz059s107XDirFIkatYEVQ/d40Gc5ePrTfqQPiPXLurzvr4LRkL
         6Pg87R3CnO2xuo7eNE7Tqj1HH3coihe+eedeTFvzi0ISz/T1yiWV7I3T4R/EQfc/d/TY
         G5LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=U88thZKGHroURsqS7X1WFE9B14zALmPuaKr4fy6mftY=;
        b=XiJAEpbswx4u52opWE+h+mD7wZHzk5A/zShykMUMABWsFb5mR4PoN8Rtw5OKQFJzKM
         tC+0v7QAWnsPzGlo4TU60mJbe/1tGBIYNeZYRJ33husc95Ur2+4TJJPRdI9ZDS1sGVMp
         QIfTmL4nqMw3iASm7k2Oe7ZYiaJsS/pi2DlZwsxfAltnumLSu0VtSrGfZdbY2fqGXaWp
         hDCBsqVmmkUF4zIH5q2OtFWpMK8tK97+gFxh1P8RfuzscFui21UaQFWBFkWXNqW3YEYF
         /zed5mBl7DKprjRbUjP4TcyxBYQG2DM08uV6NBchOZtleL+20JQqm5imcyYmBVCgERMV
         Sv8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AByfV4A3;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id 207si289291ybe.5.2020.03.17.15.01.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 15:01:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id b1so12457030pgm.8
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 15:01:41 -0700 (PDT)
X-Received: by 2002:aa7:8191:: with SMTP id g17mr911561pfi.70.1584482500144;
        Tue, 17 Mar 2020 15:01:40 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id k20sm3986075pfk.123.2020.03.17.15.01.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 15:01:39 -0700 (PDT)
Date: Tue, 17 Mar 2020 15:01:36 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Stanislav Fomichev <sdf@fomichev.me>
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
Message-ID: <20200317220136.srrt6rpxdjhptu23@google.com>
References: <20200317211649.o4fzaxrzy6qxvz4f@google.com>
 <20200317215100.GC2459609@mini-arch.hsd1.ca.comcast.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200317215100.GC2459609@mini-arch.hsd1.ca.comcast.net>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AByfV4A3;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541
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

On 2020-03-17, Stanislav Fomichev wrote:
>On 03/17, Fangrui Song wrote:
>> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
>> The existing 'file format' and 'architecture' parsing logic is brittle
>> and does not work with llvm-objcopy/llvm-objdump.
>Thanks, it all makes sense and looks much better/portable (too much
>dependence on binutils :-).
>I've left a bunch of questions/nits below.
>
>>
>> .BTF in .tmp_vmlinux.btf is non-SHF_ALLOC. Add the SHF_ALLOC flag and
>> rename .BTF to BTF so that C code can reference the section via linker
>> synthesized __start_BTF and __stop_BTF. This fixes a small problem that
>> previous .BTF had the SHF_WRITE flag. Additionally, `objcopy -I binary`
>> synthesized symbols _binary__btf_vmlinux_bin_start and
>> _binary__btf_vmlinux_bin_start (not used elsewhere) are replaced with
>> more common __start_BTF and __stop_BTF.
>>
>> Add 2>/dev/null because GNU objcopy (but not llvm-objcopy) warns
>> "empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"
>>
>> We use a dd command to change the e_type field in the ELF header from
>> ET_EXEC to ET_REL so that lld will accept .btf.vmlinux.bin.o.  Accepting
>> ET_EXEC as an input file is an extremely rare GNU ld feature that lld
>> does not intend to support, because this is error-prone.
>Please keep small changelog here, for example:
>
>v5:
>* rebased on top of bpfnext

Thanks for the tip. Add them at the bottom?

>Btw, I tried to pull and test it and failed:
>$ curl -LO https://lore.kernel.org/bpf/20200317211649.o4fzaxrzy6qxvz4f@google.com/raw
>  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
>                                 Dload  Upload   Total   Spent    Left  Speed
>100  9627  100  9627    0     0  47191      0 --:--:-- --:--:-- --:--:-- 47191
>$ git am raw
>warning: Patch sent with format=flowed; space at the end of lines might
>be lost.
>Applying: bpf: Support llvm-objcopy and llvm-objdump for vmlinux BTF
>error: corrupt patch at line 20
>Patch failed at 0001 bpf: Support llvm-objcopy and llvm-objdump for
>vmlinux BTF
>hint: Use 'git am --show-current-patch' to see the failed patch
>When you have resolved this problem, run "git am --continue".
>If you prefer to skip this patch, run "git am --skip" instead.
>To restore the original branch and stop patching, run "git am --abort".
>$ git describe
>v5.6-rc5-1621-g230021539e8c
>
>Are you sure it's on top of the bpf-next? Or am I doing something wrong?

It can be my fault when messing with various patches..
Will be more cautious.

>> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
>> Cc: Stanislav Fomichev <sdf@google.com>
>> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/871
>> Signed-off-by: Fangrui Song <maskray@google.com>
>> ---
>>  kernel/bpf/btf.c        |  9 ++++-----
>>  kernel/bpf/sysfs_btf.c  | 11 +++++------
>>  scripts/link-vmlinux.sh | 17 ++++++-----------
>>  3 files changed, 15 insertions(+), 22 deletions(-)
>>
>> diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
>> index 50080add2ab9..6f397c4da05e 100644
>> --- a/kernel/bpf/btf.c
>> +++ b/kernel/bpf/btf.c
>> @@ -3477,8 +3477,8 @@ static struct btf *btf_parse(void __user *btf_data, u32 btf_data_size,
>>  	return ERR_PTR(err);
>>  }
>> -extern char __weak _binary__btf_vmlinux_bin_start[];
>> -extern char __weak _binary__btf_vmlinux_bin_end[];
>> +extern char __weak __start_BTF[];
>> +extern char __weak __stop_BTF[];
>>  extern struct btf *btf_vmlinux;
>>  #define BPF_MAP_TYPE(_id, _ops)
>> @@ -3605,9 +3605,8 @@ struct btf *btf_parse_vmlinux(void)
>>  	}
>>  	env->btf = btf;
>> -	btf->data = _binary__btf_vmlinux_bin_start;
>> -	btf->data_size = _binary__btf_vmlinux_bin_end -
>> -		_binary__btf_vmlinux_bin_start;
>> +	btf->data = __start_BTF;
>> +	btf->data_size = __stop_BTF - __start_BTF;
>>  	err = btf_parse_hdr(env);
>>  	if (err)
>> diff --git a/kernel/bpf/sysfs_btf.c b/kernel/bpf/sysfs_btf.c
>> index 7ae5dddd1fe6..3b495773de5a 100644
>> --- a/kernel/bpf/sysfs_btf.c
>> +++ b/kernel/bpf/sysfs_btf.c
>> @@ -9,15 +9,15 @@
>>  #include <linux/sysfs.h>
>>  /* See scripts/link-vmlinux.sh, gen_btf() func for details */
>> -extern char __weak _binary__btf_vmlinux_bin_start[];
>> -extern char __weak _binary__btf_vmlinux_bin_end[];
>> +extern char __weak __start_BTF[];
>> +extern char __weak __stop_BTF[];
>>  static ssize_t
>>  btf_vmlinux_read(struct file *file, struct kobject *kobj,
>>  		 struct bin_attribute *bin_attr,
>>  		 char *buf, loff_t off, size_t len)
>>  {
>> -	memcpy(buf, _binary__btf_vmlinux_bin_start + off, len);
>> +	memcpy(buf, __start_BTF + off, len);
>>  	return len;
>>  }
>> @@ -30,15 +30,14 @@ static struct kobject *btf_kobj;
>>  static int __init btf_vmlinux_init(void)
>>  {
>> -	if (!_binary__btf_vmlinux_bin_start)
>> +	if (!__start_BTF)
>>  		return 0;
>>  	btf_kobj = kobject_create_and_add("btf", kernel_kobj);
>>  	if (!btf_kobj)
>>  		return -ENOMEM;
>> -	bin_attr_btf_vmlinux.size = _binary__btf_vmlinux_bin_end -
>> -				    _binary__btf_vmlinux_bin_start;
>> +	bin_attr_btf_vmlinux.size = __stop_BTF - __start_BTF;
>>  	return sysfs_create_bin_file(btf_kobj, &bin_attr_btf_vmlinux);
>>  }
>> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>> index ac569e197bfa..ae2048625f1e 100755
>> --- a/scripts/link-vmlinux.sh
>> +++ b/scripts/link-vmlinux.sh
>> @@ -133,17 +133,12 @@ gen_btf()
>>  	info "BTF" ${2}
>>  	LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
>> -	# dump .BTF section into raw binary file to link with final vmlinux
>> -	bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
>> -		cut -d, -f1 | cut -d' ' -f2)
>> -	bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
>> -		awk '{print $4}')
>> -	bin_file=.btf.vmlinux.bin
>We still have the following in gen_btf that you need to remove:
>	local bin_arch
>	local bin_format
>	local bin_file

Thanks. Will delete them.

>> -	${OBJCOPY} --change-section-address .BTF=0 \
>> -		--set-section-flags .BTF=alloc -O binary \
>> -		--only-section=.BTF ${1} $bin_file
>> -	${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
>> -		--rename-section .data=.BTF $bin_file ${2}
>> +	# Extract .BTF, add SHF_ALLOC, rename to BTF so that we can reference
>> +	# it via linker synthesized __start_BTF and __stop_BTF. Change e_type
>> +	# to ET_REL so that it can be used to link final vmlinux.
>> +	${OBJCOPY} --only-section=.BTF --set-section-flags .BTF=alloc,readonly \
>> +		--rename-section .BTF=BTF ${1} ${2} 2>/dev/null && \
>> +		printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16 status=none
>	We have 'set -e' so && can be omitted. Maybe it will be a bit
>	more clear:

Agree.

>	# Extract .BTF, add SHF_ALLOC, rename to BTF so that we can reference
>	# it via linker synthesized __start_BTF and __stop_BTF.
>	${OBJCOPY} --only-section=.BTF --set-section-flags .BTF=alloc,readonly \
>		--rename-section .BTF=BTF ${1} ${2} 2>/dev/null
>
>	# Change e_type to ET_REL (0x01) so that it can be used to link final
>	# vmlinux.
>	printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16 status=none
>
>	^^^ maybe also point out that this is required for llvm's ldd.
>	I know you point it out in the commit message, but still nice
>	to have as a comment here.

Will mention lld in v6.

>>  }
>>  # Create ${2} .o file with all symbols from the ${1} object file
>> --
>> 2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317220136.srrt6rpxdjhptu23%40google.com.
