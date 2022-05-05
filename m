Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBSXXZWJQMGQE7SAXTIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AE651B8B0
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 09:24:59 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id p187-20020aca42c4000000b003264d76f3f3sf1192834oia.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 00:24:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651735498; cv=pass;
        d=google.com; s=arc-20160816;
        b=A+VQbMnKkC4qyoT0T708CIfRMyXXc8bhf1RGOdb1mw74NDbiIkPb4BZApVIk/k0QSM
         YkqB9ZyLNfulF6rEoKVIHXTSXUc09dPF0DKWrejCExNEDhXl+H1d9vdXLUerh+6Bv6cN
         JlTx9RNQaT1Si4rStuCV+elovqf0DW3PNdVqKiv95P8RlXrvQfICiQ+e972pCeOUN/Ss
         zdkgACoouGkxRh1N3pHzSyNQElH95+d3f9C30OSusFKbNuga4No0G7E1nkvrDpR+BNyy
         VuY2rcoutwFWf/1YbIW5O4PAUq02hw6cIqTYuUyudmiwbToeOnLIbNmhkCgVyfUuRQqZ
         BN6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=NGXQDZwXEQ4w/9KTfiGgTdi7Dz3fmBubtuCgIPfA3Gk=;
        b=qAQsDEDQ6nkRQu9oMSBtI1ILSlVmEin0hbeQjcAfWcM94V7vg/qaTfUfsxxUHeRy40
         500Sl92P7lyMEfhrD/OkxVK77uAEaUptJ/IoqSwOu96e/ez3smZ6C8AQST2iSeiLjOM9
         YRghwbrQdAlN7GkYde0JQlNF1MUHpX3w9PTwr8G92cb728vW8s4LbdhQxDqbL7Ek8xbp
         FXExypyLXBOBB0nU0Fw41BnwjcHeY4SvW+aNgPavVPq39pXtj1Hw8YyVG6y2cWF/91S2
         nGA7q/cIStWesJpeKmFNpdsz9pgCd15zOcAsMAoLVoopXfm0gSpqt3UEPmAYF0uXUzpP
         jxkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=kF3oDW6K;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NGXQDZwXEQ4w/9KTfiGgTdi7Dz3fmBubtuCgIPfA3Gk=;
        b=aIZr1mOcbjKSSbsuh+SlFqbsuxf+XfSXtL3Zx80YVWebvoZvpVXg7glnwQgf21eB2q
         YJ3GyziUQV/+iwNFjcpTsIDmskOI54k/WaOpl94U93oLy/F0Dmrujt0yDzoiZv//+qxg
         ueHx2+KQI67yGHXQEfzx1d1QaHgp2KtkEEElm3LxgogFXpCzEu9xktNsxS3k4kTFuQqK
         zorRD7hgGrW5cc6cWh4+x18ubFLwbVG/GiS3FHiuHbwmjGYqRCZo8KTH1X2qTjtf5in0
         hkSIIVyfnbIUJtQYOIEBVN28t+y0siZJPL+OEXjc1UzHxINdLNzXln+wlNjKNxvdPY0H
         T4QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NGXQDZwXEQ4w/9KTfiGgTdi7Dz3fmBubtuCgIPfA3Gk=;
        b=B/WGJE06hnane/x2s19mCoC/OGuOtEGbPtND8rUEFm9idQWielo/fw+kzVm5g1Rtqk
         QKm+bVnW6hMzmnVqTRiUcFiFH0cOaHkj5wi9Vj3gfkC6itLo3dzR1vNRoU/v9lybymYm
         VAn/PuY+XMQjrCyiPH2ytNkIT4Jk9+OYn9VPZFZur384b5px7F67JsejghB15t3go48v
         nH79yLdoJZIjI7vbXedxy0WZU44A2+8vInuf7Lqv1Joj85r8wymR7PM9hm5cBaiexjJf
         /Mbm2EFs4ecX+hMuVugExV+cyO9UkKjLZs101pPoU6Wsds2eZ0xXVvH5Ypjpi34ItBLl
         US6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530UcCBithKLlreYNKHVLhVCY5xKFl4uZXcF+DlrIWaltK7e+Jna
	jSHFAOSdapfvm+Y1raNVh8Q=
X-Google-Smtp-Source: ABdhPJzZjCqwzavH1PTaGi3TpgDkhvwIEwqwlg+dPf7GR/O/oBEIDZfdMBEbQO0eYkZph0JK3mFlOw==
X-Received: by 2002:a05:6870:b41e:b0:e2:7b61:31f9 with SMTP id x30-20020a056870b41e00b000e27b6131f9mr1574820oap.86.1651735498109;
        Thu, 05 May 2022 00:24:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6870:d683:b0:e5:d244:bf9f with SMTP id
 z3-20020a056870d68300b000e5d244bf9fls1624064oap.5.gmail; Thu, 05 May 2022
 00:24:57 -0700 (PDT)
X-Received: by 2002:a05:6870:538c:b0:da:f5e5:5b56 with SMTP id h12-20020a056870538c00b000daf5e55b56mr1580817oan.241.1651735497749;
        Thu, 05 May 2022 00:24:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651735497; cv=none;
        d=google.com; s=arc-20160816;
        b=BNAh80y6+w0SGX23v+VGGDetnwq+3QRz8qgrhD8Pej/FPpkIseBHGMJrv+h3xu8CzG
         T3oWKyuYloyED//txXKJg19aGQnThECGiMJTB0Mae9RsG3Y5AtkAMEARVGD6CsJUyBks
         abZ6rG98q2STQtCNVnDfi5ZdG6k+vgR6BFI9MkqdlifZW7SCvmVkKbMc2pmOZ6AdehQZ
         XJX9laWNYXEgcbIsLdGLqz7Wr8zUak3ryqk5rVe3NeD+I+j5ESKVDlkquzMJRSWiuSqp
         E2L/KNJx1CA4nIOQUbyH5eGWzigxhrFwkxuNttn8MgquS1IxuzlsSz5SzKOWNTqLW1qK
         8ogg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=9vhjoHFvf7AOTb32B8E0KmlDlM3Jq1E3rFxrJ8jofQk=;
        b=HdJnjtq78o1sHqR/cJoIkIHvxaerJkk4EbDaSgAYYL+ok1ZsSFAVNXk1gTYhCAAP8w
         xW8vmuQU7YymXZsRPAzAJMztl9sJh3TdmJ6zut9OM5BDYXp5hc5od5Xnt3gb4oyUFo/4
         gm+Ez4zqzwN3ACyc05YQsjM8QZ7h4EJAk0m4GrgcHIwazc0rIrEIha7PeGfGEbg1WLHa
         B4k/fzeUX/KtCJ/mW3GrjycVPtG4x0dMPl4IEMiBOr7+dtiHv4+/ZZqi3sdu6vZyBm2n
         fWxM9Dus0Y+eyhmzTdN7dGH40AE+4qV9ThJEWdRnnKS1zKgmEQZH2V7jF8+TmWiGxS16
         porw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=kF3oDW6K;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id n8-20020a0568080a0800b003227a4ecc4asi50874oij.3.2022.05.05.00.24.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 May 2022 00:24:57 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 2457Nenm019426;
	Thu, 5 May 2022 16:23:45 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 2457Nenm019426
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        Nicolas Schier a <nicolas@fjasle.eu>, Ard Biesheuvel <ardb@kernel.org>,
        Luis Chamberlain <mcgrof@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
        linux-um@lists.infradead.org, linux-s390@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v3 04/15] modpost: move *.mod.c generation to write_mod_c_files()
Date: Thu,  5 May 2022 16:22:33 +0900
Message-Id: <20220505072244.1155033-5-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220505072244.1155033-1-masahiroy@kernel.org>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=kF3oDW6K;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

A later commit will add more code to this list_for_each_entry loop.

Before that, move the loop body into a separate helper function.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v3:
  - New patch

 scripts/mod/modpost.c | 56 ++++++++++++++++++++++++-------------------
 1 file changed, 31 insertions(+), 25 deletions(-)

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index ae8e4a4dcfd2..78a7107fcc40 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -2347,6 +2347,34 @@ static void write_if_changed(struct buffer *b, const char *fname)
 	write_buf(b, fname);
 }
 
+/* do sanity checks, and generate *.mod.c file */
+static void write_mod_c_file(struct module *mod)
+{
+	struct buffer buf = { };
+	char fname[PATH_MAX];
+	int ret;
+
+	check_modname_len(mod);
+	check_exports(mod);
+
+	add_header(&buf, mod);
+	add_versions(&buf, mod);
+	add_depends(&buf, mod);
+	add_moddevtable(&buf, mod);
+	add_srcversion(&buf, mod);
+
+	ret = snprintf(fname, sizeof(fname), "%s.mod.c", mod->name);
+	if (ret >= sizeof(fname)) {
+		error("%s: too long path was truncated\n", fname);
+		goto free;
+	}
+
+	write_if_changed(&buf, fname);
+
+free:
+	free(buf.p);
+}
+
 /* parse Module.symvers file. line format:
  * 0x12345678<tab>symbol<tab>module<tab>export<tab>namespace
  **/
@@ -2462,7 +2490,6 @@ struct dump_list {
 int main(int argc, char **argv)
 {
 	struct module *mod;
-	struct buffer buf = { };
 	char *missing_namespace_deps = NULL;
 	char *dump_write = NULL, *files_source = NULL;
 	int opt;
@@ -2524,30 +2551,11 @@ int main(int argc, char **argv)
 		read_symbols_from_files(files_source);
 
 	list_for_each_entry(mod, &modules, list) {
-		char fname[PATH_MAX];
-		int ret;
-
-		if (mod->is_vmlinux || mod->from_dump)
-			continue;
-
-		buf.pos = 0;
-
-		check_modname_len(mod);
-		check_exports(mod);
-
-		add_header(&buf, mod);
-		add_versions(&buf, mod);
-		add_depends(&buf, mod);
-		add_moddevtable(&buf, mod);
-		add_srcversion(&buf, mod);
-
-		ret = snprintf(fname, sizeof(fname), "%s.mod.c", mod->name);
-		if (ret >= sizeof(fname)) {
-			error("%s: too long path was truncated\n", fname);
+		if (mod->from_dump)
 			continue;
-		}
 
-		write_if_changed(&buf, fname);
+		if (!mod->is_vmlinux)
+			write_mod_c_file(mod);
 	}
 
 	if (missing_namespace_deps)
@@ -2563,7 +2571,5 @@ int main(int argc, char **argv)
 		warn("suppressed %u unresolved symbol warnings because there were too many)\n",
 		     nr_unresolved - MAX_UNRESOLVED_REPORTS);
 
-	free(buf.p);
-
 	return error_occurred ? 1 : 0;
 }
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220505072244.1155033-5-masahiroy%40kernel.org.
