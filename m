Return-Path: <clang-built-linux+bncBCS7XUWOUULBB2GAZLZQKGQETDTQE5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id DC63718A816
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 23:27:53 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id n89sf404227qte.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 15:27:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584570472; cv=pass;
        d=google.com; s=arc-20160816;
        b=OVYKKKitoE4Wj3JntS8KCOlhF/3uX7o/u9Ejx7ros/HzBNwl0eKk4P48nQUGHhNsgA
         0GA5sFJc3qrf0pjvKxbhUmygUL+EKpKoIzANmeuAeqNJYtDfa4bjMkWeulHOfDEp/7s4
         E3UPoVmvYU8L6Xq5lMgazWNbjXQ5154IFwzjL2WidiIS+Fs5Bza4XcuTodAHooy2PN95
         Y8vR4gpP8y3ARBWkzwxSx+s/6aDwVgc7UHI318Uaa+E3Nqh6I227d0Yn3IVZRhsKEUx0
         ER5MPI6xTyhkcELInfrevVl23XZ2lxkIsm3ETlRy8U4TbwyEn66ZbZUMqCMjEhjAtt63
         dbWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=inSbqNYvSCNo8SgRoQgRNbl7SNajTal0QXEUmCoYgpE=;
        b=gd2jhm7WzFVb2dM1iJLKxUIBK62Qi7i9ijC4u4WKvn59lmGITK4vOkm5tZCWQlxW2P
         8VwT6vO8uqUnl5kmm2T3nNQMpwlJqYU9vJ+H0xUF+VJgnjvoAzlv8646z5i9awAj4D+E
         5zS8ggTmhCiqJsFfad+TkpodTtdhswiSzuVCHvjHYoDt6PNvcAXX5zWjiSbw3mtHXVXO
         XwwR1WHXJaz6TvkO0bgCflo7pI0kk72/WHLXBoVW5bVcyHfNE1PMWy/qHiCY9yOi44a+
         dHqlnQPOXZ+cnpDNIPQAvfcjHyc7+H/dubuC+UgyuwJa6kWqwP160t63Aiioxjq3oSg7
         rZQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="SabMdH/a";
       spf=pass (google.com: domain of 3z6byxgckewwwkcubkiqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3Z6ByXgcKEWwWKcUbKiQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=inSbqNYvSCNo8SgRoQgRNbl7SNajTal0QXEUmCoYgpE=;
        b=Xc1+ygIl2BXwsl1u2+3+1L1q6rYkOOBwEiQ6XhJU/10d5EFS5PUreJGqy1vX8a6U2v
         jb+VHlS/xsVwsPpkY1BWQn8Xr9LOmJfuc1JFVhE0S4kfvhkESnN1vnSLpcE/UqD9NMKn
         Rw4JpGwP6+LcLKL5lmQOlgud41GtiAVH+lIhDa+fDAW7o52FZpWwz1DunVA1m0mRAxQ1
         QV5QJJVGjMn3tZoptWqIRL27pKbpkFzfnemZoQw+BFmikvZ23GLBdvzumlWwYnvisGt7
         B9CkqhDMJSavMSwNPWY73KHNUhIAizj1qBxhO7ycw3ZvulzJOtHHRlEZaO/bKZHBhASM
         XCvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=inSbqNYvSCNo8SgRoQgRNbl7SNajTal0QXEUmCoYgpE=;
        b=lsI03hPIktfSpGx+yd11vGKBZvaJBQ6QDbJ1A0nKLX2O/gg62mCO62oypLPRe+1m+2
         Gdsk2avxXLjLL2ENubR7ZXhglywgYbrZsCPmYdF/dNrJboBCRMKsy5S9UmgjdaIC5+kU
         bZeyfbx9hWUGW5dw8pUL/2S8uGo/wSQws6OogsqEshV/fYofNo6V+IHfgAWy3d0B9Mqi
         WlWX1SyxLLgzWMTrNHD9+w/Q4eiUMOd82wdLebzr/pf9njz13Ahp5oJTCmPBZ354IkRO
         mH5cmxRiifNfMtuZsgq9v5rh6udmJVPIVgnJeYseVRvUpup48mhdsgARoWsEW5EgZwOr
         Tbpg==
X-Gm-Message-State: ANhLgQ35eeBUuCEtsYkcIgMc2pMJrrCeB9wUK12gDcGv+m9cGiUMNO8L
	FATGsAOtJ2B/NWanT22JqBA=
X-Google-Smtp-Source: ADFU+vsOKeuuGZtiFUNa9hGITDi6Qh8uImV7zW7cB1NRlGV0Xa3HwRxQgQpt3RGuhjX8q6yA8msjmw==
X-Received: by 2002:a05:620a:a55:: with SMTP id j21mr118418qka.253.1584570472505;
        Wed, 18 Mar 2020 15:27:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3284:: with SMTP id z4ls169989qta.11.gmail; Wed, 18 Mar
 2020 15:27:52 -0700 (PDT)
X-Received: by 2002:ac8:5058:: with SMTP id h24mr6944135qtm.384.1584570472144;
        Wed, 18 Mar 2020 15:27:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584570472; cv=none;
        d=google.com; s=arc-20160816;
        b=ag2H7vtiRzeTwr4l7ZkV6bibhSoof+KPpG8mJ+emNLNMnkSW9bvmMAzo1MmOZa9VJU
         jtv3byiwt+nf6xyrmoTbWp9mUd1Di5lyPT9dwUXZxq0GC9lUENBtHE7DJDZTHicA7bsC
         tjSJ1neeNILTB0PVJldWAWyqZcxmqGuElghmAsF7eMPSVpBhlC+/Ef1q6R3TxEWP02sG
         a5DxHBPWfXcDJobnaLD00VqeqPDIT2qvwU+f+8WfdqGHxADz7MoXHzGPeI8NvAfoUGjS
         SWLMSFpoEOQwZKKqQihuODbhZzrc0xvauikd1bSbv8cYDoyfBz9YZfAybJ5ZCxXVEoNB
         2HyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=nN6aQ3y/30UMEsizdFRT3dSbqqosMtSBUXgTVV4iZgg=;
        b=C4BKHu4A95m2Z1f6BnDju0MFl/SvYAOpQsU1mg+AAssX6GzrjJ4pEFWpR6dWRtJasG
         oE2Sy7l1znBYi3ztFHNTLkVr/VhyVZNpxxF4PLgD5iQhMINYZ4Op3EOATiNHiqUNfJ8L
         pMNCNDwBoEm98gq4C3d5ZqRXxn6vuKwzDxAHNP1plrbzhlS0DWDuf2XIqPqQE5C03Jl6
         LSI6M2dgxnODwSJNHvYIq6FSCA1J6QGlkkcrmsRbWQMc80DEjvVsmgODQ/czzIXWwUQt
         ItnK9xB5a76wfwSydGLVj7wx1e3LZ8PyNNoRSR8z0aZf9jS6MUxU4ctm3Lt+2Gclx3bD
         vbTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="SabMdH/a";
       spf=pass (google.com: domain of 3z6byxgckewwwkcubkiqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3Z6ByXgcKEWwWKcUbKiQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id c2si38283qtn.0.2020.03.18.15.27.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 15:27:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3z6byxgckewwwkcubkiqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id x6so2472plo.13
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 15:27:52 -0700 (PDT)
X-Received: by 2002:a17:90a:1697:: with SMTP id o23mr444303pja.62.1584570471108;
 Wed, 18 Mar 2020 15:27:51 -0700 (PDT)
Date: Wed, 18 Mar 2020 15:27:46 -0700
Message-Id: <20200318222746.173648-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH bpf-next v6] bpf: Support llvm-objcopy for vmlinux BTF
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: bpf@vger.kernel.org, netdev@vger.kernel.org
Cc: Fangrui Song <maskray@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Stanislav Fomichev <sdf@google.com>, Alexei Starovoitov <ast@kernel.org>, 
	Andrii Nakryiko <andrii.nakryiko@gmail.com>, Daniel Borkmann <daniel@iogearbox.net>, 
	"David S . Miller" <davem@davemloft.net>, Kees Cook <keescook@chromium.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, "Naveen N . Rao" <naveen.n.rao@linux.vnet.ibm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="SabMdH/a";       spf=pass
 (google.com: domain of 3z6byxgckewwwkcubkiqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3Z6ByXgcKEWwWKcUbKiQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

Simplify gen_btf logic to make it work with llvm-objcopy. The existing
'file format' and 'architecture' parsing logic is brittle and does not
work with llvm-objcopy/llvm-objdump.
'file format' output of llvm-objdump>=11 will match GNU objdump, but
'architecture' (bfdarch) may not.

.BTF in .tmp_vmlinux.btf is non-SHF_ALLOC. Add the SHF_ALLOC flag
because it is part of vmlinux image used for introspection. C code can
reference the section via linker script defined __start_BTF and
__stop_BTF. This fixes a small problem that previous .BTF had the
SHF_WRITE flag (objcopy -I binary -O elf* synthesized .data).

Additionally, `objcopy -I binary` synthesized symbols
_binary__btf_vmlinux_bin_start and _binary__btf_vmlinux_bin_stop (not
used elsewhere) are replaced with more commonplace __start_BTF and
__stop_BTF.

Add 2>/dev/null because GNU objcopy (but not llvm-objcopy) warns
"empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"

We use a dd command to change the e_type field in the ELF header from
ET_EXEC to ET_REL so that lld will accept .btf.vmlinux.bin.o.  Accepting
ET_EXEC as an input file is an extremely rare GNU ld feature that lld
does not intend to support, because this is error-prone.

The output section description .BTF in include/asm-generic/vmlinux.lds.h
avoids potential subtle orphan section placement issues and suppresses
--orphan-handling=warn warnings.

v6:
- drop llvm-objdump from the title. We don't run objdump now
- delete unused local variables: bin_arch, bin_format and bin_file
- mention in the comment that lld does not allow an ET_EXEC input
- rename BTF back to .BTF . The section name is assumed by bpftool
- add output section description to include/asm-generic/vmlinux.lds.h
- mention cb0cc635c7a9 ("powerpc: Include .BTF section")

v5:
- rebase on top of bpf-next/master
- rename .BTF to BTF

Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
Fixes: cb0cc635c7a9 ("powerpc: Include .BTF section")
Link: https://github.com/ClangBuiltLinux/linux/issues/871
Signed-off-by: Fangrui Song <maskray@google.com>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Stanislav Fomichev <sdf@google.com>
Tested-by: Stanislav Fomichev <sdf@google.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Daniel Borkmann <daniel@iogearbox.net>
Cc: David S. Miller <davem@davemloft.net>
Cc: Kees Cook <keescook@chromium.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux@googlegroups.com
---
 arch/powerpc/kernel/vmlinux.lds.S |  6 ------
 include/asm-generic/vmlinux.lds.h | 15 +++++++++++++++
 kernel/bpf/btf.c                  |  9 ++++-----
 kernel/bpf/sysfs_btf.c            | 11 +++++------
 scripts/link-vmlinux.sh           | 24 ++++++++++--------------
 5 files changed, 34 insertions(+), 31 deletions(-)

diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
index a32d478a7f41..b4c89a1acebb 100644
--- a/arch/powerpc/kernel/vmlinux.lds.S
+++ b/arch/powerpc/kernel/vmlinux.lds.S
@@ -303,12 +303,6 @@ SECTIONS
 		*(.branch_lt)
 	}
 
-#ifdef CONFIG_DEBUG_INFO_BTF
-	.BTF : AT(ADDR(.BTF) - LOAD_OFFSET) {
-		*(.BTF)
-	}
-#endif
-
 	.opd : AT(ADDR(.opd) - LOAD_OFFSET) {
 		__start_opd = .;
 		KEEP(*(.opd))
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index e00f41aa8ec4..39da8d8b561d 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -535,6 +535,7 @@
 									\
 	RO_EXCEPTION_TABLE						\
 	NOTES								\
+	BTF								\
 									\
 	. = ALIGN((align));						\
 	__end_rodata = .;
@@ -621,6 +622,20 @@
 		__stop___ex_table = .;					\
 	}
 
+/*
+ * .BTF
+ */
+#ifdef CONFIG_DEBUG_INFO_BTF
+#define BTF								\
+	.BTF : AT(ADDR(.BTF) - LOAD_OFFSET) {				\
+		__start_BTF = .;					\
+		*(.BTF)							\
+		__stop_BTF = .;						\
+	}
+#else
+#define BTF
+#endif
+
 /*
  * Init task
  */
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
index ac569e197bfa..d09ab4afbda4 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -113,9 +113,6 @@ vmlinux_link()
 gen_btf()
 {
 	local pahole_ver
-	local bin_arch
-	local bin_format
-	local bin_file
 
 	if ! [ -x "$(command -v ${PAHOLE})" ]; then
 		echo >&2 "BTF: ${1}: pahole (${PAHOLE}) is not available"
@@ -133,17 +130,16 @@ gen_btf()
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
+	# Create ${2} which contains just .BTF section but no symbols. Add
+	# SHF_ALLOC because .BTF will be part of the vmlinux image. --strip-all
+	# deletes all symbols including __start_BTF and __stop_BTF, which will
+	# be redefined in the linker script. Add 2>/dev/null to suppress GNU
+	# objcopy warnings: "empty loadable segment detected at ..."
+	${OBJCOPY} --only-section=.BTF --set-section-flags .BTF=alloc,readonly \
+		--strip-all ${1} ${2} 2>/dev/null
+	# Change e_type to ET_REL so that it can be used to link final vmlinux.
+	# Unlike GNU ld, lld does not allow an ET_EXEC input.
+	printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16 status=none
 }
 
 # Create ${2} .o file with all symbols from the ${1} object file
-- 
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200318222746.173648-1-maskray%40google.com.
