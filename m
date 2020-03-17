Return-Path: <clang-built-linux+bncBCS7XUWOUULBBRX4YTZQKGQEYI6Y3VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA27189033
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 22:16:55 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id n11sf750044otq.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 14:16:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584479814; cv=pass;
        d=google.com; s=arc-20160816;
        b=RAzd52CJ6VrpGCvgcAq8DS59t40/Sl8KBxPfq1avUezyuiOGq/jZECHro/vF4lg++T
         qo0uhTuesaQXo1B+7iz1OSXDB2NWSz2p6sazbNV/4Q+2oQL32fc1bp45+Q6Tk+upZJQr
         uBxpRa++u9K2eZespKP1GkE8VvdTpLVzb0sHfRWgszDHAL0hSoro10Jyqjazs9ZKPZfn
         uDaPVt1oVmFP5nrwby9HgUJ+fPnYvHeV6v0NECEiZbZZCL7YDqXTyPh4sBGvycGqmJl5
         UH/rHIqyjPtF0V5GZGxv3kkTyvtOYxnm5ySs30B12t85yeubeSHh2TnbPfyQcMs9L6cA
         +n9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Yj8c3m02IfsM2ToAyJchmWIU0GBK36cj/KfPKEL17dM=;
        b=VyAeOKNZfeVclAPIYfZjxcDOmuK2xgfh8rnImcKLQyQCebRdSPg7XDHej1hnk1EYjN
         SRe8h0l0srzTiWhEwKMpvW5Mw85TdpGiUeZ4GCrX17TdimWRQgyzoWPq8j6zHw7sQO9y
         tcuRDNrRUjO00+UPRroESypKiab2B4KS1srPp5QymfEgptlQYswBUu4Tq5hJPd2elM1Y
         V3Gx6T/vKPBPH9u4kNAbmlZP9LfMi3XjZGmWEnQe5Sj1rAgdXjp1s15KVpSWtcEkQeRk
         RzLtYpXtHw8ES7332QHqDpTSjFp3CO3m0XJv7zyyVVEjjv/xcET8zV6iGJ7MhGJOB7zo
         Vzsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JqkaALJ5;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yj8c3m02IfsM2ToAyJchmWIU0GBK36cj/KfPKEL17dM=;
        b=sAz9Z57V6BdmH6KBDJZjJh5FMUQgNNJfPyKqxFEmaZoPlxDQPCgCU62kdJh+X3/iJp
         7FE73NwyPzq541cbLd4qsfOgATaHnMMyDicLEm6yp9KZSoF2r0WbcRfuPZEtEhSBbNit
         0Vpzysl5FJ8I6YQRp6clGhYbpRXJe6BxLyWjV+EQEWS4HdwA160MGkSGKznGuUTNZP9C
         72s2IbK/EyMMAyE6pad6bcPEHfe5RbeWwaPAYqV1N3YDsBXHQbBeubtJsRIrIPXxF4Zf
         1emSozWUTjTFKUWnEjnWomK8XnOubIDlmULsCwWC74eSg6lkNFDLxC3L7+giEmNR5KkA
         wnvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yj8c3m02IfsM2ToAyJchmWIU0GBK36cj/KfPKEL17dM=;
        b=FzFzK+cLLTqKrkP8S0GTRY06qYCXB6uB1j0smTADvh7hAk3ZtToQSkODT14jJg+4fb
         VrjLT9a5VwjtISmkCJ86pg5WFdsJSeaRY3gs+iGZim6ESI4fEDV/4r64Gg22IufuZShm
         uIgAlEQRsYW3YvEubJIGR2b/suZq7Jqid5XmSmuSaJcpiZtfkj1tjWSgNgV82DYC1Hsg
         oWFTn9OmI71DGGEbT00G9wVBOl57Zi6SYzphE6fgLZvnabjFCGjkJYGPu0nMTALHN2NJ
         Um93tmCukQryzutd1hpJsr1GgBtWL6CJVbqlnGiPBrhNkxd5MEYw7D1JhVzWodx7Ef2b
         Foig==
X-Gm-Message-State: ANhLgQ10s51COfNWI1Om4x6+hcg4zoAJSm+zX1SKwX4Ck1ksCve8XlkX
	ILmvXJDjjl2JFfFtH4TwVMY=
X-Google-Smtp-Source: ADFU+vtBT0F4+dAAV3mpqXe/BudjIjQoAZzr5r7FyC7D0s6AxNcpkz0ThSoKMHE84bcFkXfshs12eg==
X-Received: by 2002:aca:5191:: with SMTP id f139mr744407oib.140.1584479814365;
        Tue, 17 Mar 2020 14:16:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:508d:: with SMTP id e135ls7507228oib.5.gmail; Tue, 17
 Mar 2020 14:16:53 -0700 (PDT)
X-Received: by 2002:aca:cc41:: with SMTP id c62mr762108oig.58.1584479813865;
        Tue, 17 Mar 2020 14:16:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584479813; cv=none;
        d=google.com; s=arc-20160816;
        b=sYTio90wGc194h8awEekC3uzodeFUP2VWTEGM1OBQQI7jmJusmyXWQfE1h+0V+9PHW
         7c/a4rF6Sju6XUl1GwPl5Pm8+qw4Or8dwHPfOBUxvUlFvQWoXhNp6BMraPUMY6D6Uyam
         jdGGY6qKD++jFyqsBUmtkPyx9EkgCnyzASZv4pzCA2iLVp5CZ172/A0C3GNZYdxGft9j
         6SjJplbAzcoNH21rzdX7lBEJ7Fc3PfHGjNDoS0fGBmBClSVG9Xw70sSJzZzwhdAqDr26
         0YyJjOgUgCJM/DsjGMkWTUILFw41SW2VOjfJi73UzZqUfEbey9gFxq7qkxqyfGaGt/xg
         4P4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=KBl7oV3oQ7bIla5SSC487wlydUV4JIjyK9cn0JCM0zM=;
        b=apfNT2X9UfMFYtGoA8kyezFWRdwQVw9/HDmaUz3K8u5bLYu81Vdo1ncN48hjSqL0d4
         dZPM6t15zUjxYM0RBV9fXj1vZ4RqTmj6putvmcx7N3rMP7S7Katu7QuTaX7UpJc+cqVF
         P9o2pJwA3IvmuHUNV2vxEOoZ7Ro+zm0uHpExguHZhoANGo4dlXIpm5KTe1181bxdbiIi
         WFtJzST+czMJFHetOoqrOGHhqUP3v/YdiyhHqZ8AOcEd2gV6F+4VxEwTyslKj2lyIi0o
         9PODNlOA8fA4jFkoRPqXwCbRdlO4msD/wDmWb8xuxn71Q3BiACiE5LmKtFgkySvoAqRd
         94gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JqkaALJ5;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v19si397747oth.1.2020.03.17.14.16.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 14:16:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id b72so12630267pfb.11
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 14:16:53 -0700 (PDT)
X-Received: by 2002:a63:3fce:: with SMTP id m197mr1144365pga.38.1584479812827;
        Tue, 17 Mar 2020 14:16:52 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id l67sm282646pjb.23.2020.03.17.14.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 14:16:52 -0700 (PDT)
Date: Tue, 17 Mar 2020 14:16:49 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: bpf <bpf@vger.kernel.org>, Networking <netdev@vger.kernel.org>
Cc: Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	Stanislav Fomichev <sdf@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Alexei Starovoitov <ast@kernel.org>,
	Kees Cook <keescook@chromium.org>
Subject: [PATCH bpf-next v5] bpf: Support llvm-objcopy and llvm-objdump for
 vmlinux BTF
Message-ID: <20200317211649.o4fzaxrzy6qxvz4f@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JqkaALJ5;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443
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

Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
The existing 'file format' and 'architecture' parsing logic is brittle
and does not work with llvm-objcopy/llvm-objdump.

.BTF in .tmp_vmlinux.btf is non-SHF_ALLOC. Add the SHF_ALLOC flag and
rename .BTF to BTF so that C code can reference the section via linker
synthesized __start_BTF and __stop_BTF. This fixes a small problem that
previous .BTF had the SHF_WRITE flag. Additionally, `objcopy -I binary`
synthesized symbols _binary__btf_vmlinux_bin_start and
_binary__btf_vmlinux_bin_start (not used elsewhere) are replaced with
more common __start_BTF and __stop_BTF.

Add 2>/dev/null because GNU objcopy (but not llvm-objcopy) warns
"empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"

We use a dd command to change the e_type field in the ELF header from
ET_EXEC to ET_REL so that lld will accept .btf.vmlinux.bin.o.  Accepting
ET_EXEC as an input file is an extremely rare GNU ld feature that lld
does not intend to support, because this is error-prone.

Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
Cc: Stanislav Fomichev <sdf@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/871
Signed-off-by: Fangrui Song <maskray@google.com>
---
  kernel/bpf/btf.c        |  9 ++++-----
  kernel/bpf/sysfs_btf.c  | 11 +++++------
  scripts/link-vmlinux.sh | 17 ++++++-----------
  3 files changed, 15 insertions(+), 22 deletions(-)

diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
index 50080add2ab9..6f397c4da05e 100644
--- a/kernel/bpf/btf.c
+++ b/kernel/bpf/btf.c
@@ -3477,8 +3477,8 @@ static struct btf *btf_parse(void __user *btf_data, u32 btf_data_size,
  	return ERR_PTR(err);
  }
  
-extern char __weak _binary__btf_vmlinux_bin_start[];
-extern char __weak _binary__btf_vmlinux_bin_end[];
+extern char __weak __start_BTF[];
+extern char __weak __stop_BTF[];
  extern struct btf *btf_vmlinux;
  
  #define BPF_MAP_TYPE(_id, _ops)
@@ -3605,9 +3605,8 @@ struct btf *btf_parse_vmlinux(void)
  	}
  	env->btf = btf;
  
-	btf->data = _binary__btf_vmlinux_bin_start;
-	btf->data_size = _binary__btf_vmlinux_bin_end -
-		_binary__btf_vmlinux_bin_start;
+	btf->data = __start_BTF;
+	btf->data_size = __stop_BTF - __start_BTF;
  
  	err = btf_parse_hdr(env);
  	if (err)
diff --git a/kernel/bpf/sysfs_btf.c b/kernel/bpf/sysfs_btf.c
index 7ae5dddd1fe6..3b495773de5a 100644
--- a/kernel/bpf/sysfs_btf.c
+++ b/kernel/bpf/sysfs_btf.c
@@ -9,15 +9,15 @@
  #include <linux/sysfs.h>
  
  /* See scripts/link-vmlinux.sh, gen_btf() func for details */
-extern char __weak _binary__btf_vmlinux_bin_start[];
-extern char __weak _binary__btf_vmlinux_bin_end[];
+extern char __weak __start_BTF[];
+extern char __weak __stop_BTF[];
  
  static ssize_t
  btf_vmlinux_read(struct file *file, struct kobject *kobj,
  		 struct bin_attribute *bin_attr,
  		 char *buf, loff_t off, size_t len)
  {
-	memcpy(buf, _binary__btf_vmlinux_bin_start + off, len);
+	memcpy(buf, __start_BTF + off, len);
  	return len;
  }
  
@@ -30,15 +30,14 @@ static struct kobject *btf_kobj;
  
  static int __init btf_vmlinux_init(void)
  {
-	if (!_binary__btf_vmlinux_bin_start)
+	if (!__start_BTF)
  		return 0;
  
  	btf_kobj = kobject_create_and_add("btf", kernel_kobj);
  	if (!btf_kobj)
  		return -ENOMEM;
  
-	bin_attr_btf_vmlinux.size = _binary__btf_vmlinux_bin_end -
-				    _binary__btf_vmlinux_bin_start;
+	bin_attr_btf_vmlinux.size = __stop_BTF - __start_BTF;
  
  	return sysfs_create_bin_file(btf_kobj, &bin_attr_btf_vmlinux);
  }
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index ac569e197bfa..ae2048625f1e 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -133,17 +133,12 @@ gen_btf()
  	info "BTF" ${2}
  	LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
  
-	# dump .BTF section into raw binary file to link with final vmlinux
-	bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
-		cut -d, -f1 | cut -d' ' -f2)
-	bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
-		awk '{print $4}')
-	bin_file=.btf.vmlinux.bin
-	${OBJCOPY} --change-section-address .BTF=0 \
-		--set-section-flags .BTF=alloc -O binary \
-		--only-section=.BTF ${1} $bin_file
-	${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
-		--rename-section .data=.BTF $bin_file ${2}
+	# Extract .BTF, add SHF_ALLOC, rename to BTF so that we can reference
+	# it via linker synthesized __start_BTF and __stop_BTF. Change e_type
+	# to ET_REL so that it can be used to link final vmlinux.
+	${OBJCOPY} --only-section=.BTF --set-section-flags .BTF=alloc,readonly \
+		--rename-section .BTF=BTF ${1} ${2} 2>/dev/null && \
+		printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16 status=none
  }
  
  # Create ${2} .o file with all symbols from the ${1} object file
-- 
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317211649.o4fzaxrzy6qxvz4f%40google.com.
