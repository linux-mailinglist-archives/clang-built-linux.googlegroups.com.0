Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBX54QKAAMGQEZWDRQDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A8F2F6B4B
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:41:21 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id g5sf5651240qke.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:41:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653280; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uf4kWdD+HdSQe9D4siXB0EVuY1xMdNBS3sfolfbW4212OMHNi00LqW4tWiTqrGjeep
         skCjgoANnwKY71AB7xb2Th5ZyVJwEFw1wsWDFDPjFoIebhgUagkbHklms5dILMGcZ5Ik
         uB7bCX7pM6fsYbBXcKwzobjsC7W+nPqWx/qadmJgy7vX22CvQJPk0jAZIV2l52NK5hbj
         ZNUNp5q25derh0X3S42UrKFEgGqnVrQ3Hu3DMFwi+uFyly5XZInijDh8KbPAVSYcNfa5
         FgrJCBkVzEE0JvcpoijrrFXmrMWMz+h+4SkRaoej3fUuKNHd4QFayhIlLICUCfrxiP42
         RKJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XI/OkFbOs6ikXvz7VNV1YdZulXl2U4mj71cIief8TBI=;
        b=RrtrDfbbiQJ3iCdMSwA9tjxzFs+LABIloBDbG9/Ahzvi4vhnJWARO5LopjN8E7lRQJ
         0wq48UZes8tgwZNuRqvGYDduX08wpt3sESFXngNxJHsZKraA/klFNvHq1x0zSy1Hog9S
         DqYF8WVEljuWxggv41iDMshboaIgcyqWMf36k0hcoHXmJuSurVvjgk3YXu6abZnvyOWC
         374v20Pprd+x4+/MqmSocUjuXVXA01t48fBNBRXZdb/JF+nkXHEfqbPd7H/XnnWsMf+A
         EFAQim5d2eJ1BPxjCrM7bphJuHRL4uqVA+LfyMh04ogRVZr7BOqEuKPeh9JTrsKvzJPt
         aCgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XCdtq+5Y;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XI/OkFbOs6ikXvz7VNV1YdZulXl2U4mj71cIief8TBI=;
        b=cIkI8Z30AeCfzpS6qL+KxmV5TfQpVwYlQQWDQ+vULWzZXOdSCmoz8DcbcNyUmxp2Ce
         9hUxmmNOs+u5Ycr1njFbjXk0jEkYw0WdnGQKgmhy/8E+OvPdIe8s6Ya693zxA6zdwxCj
         nZ8+ru5dWytNGzXWK8184HwHFGky6IVc6VYzUGJMgD8jusE5xT7ZIJ0+/0OyMB6irNWA
         dWwdfDpMHu+6M66VM33nN7kjcyof/6e1qbMLofX5ylENwrn6lWdYyGpi9kD6Ad/X3OyD
         d7xOxHnI5/xkD9wNWvGjTGhiFKDcmjnD3mHCQ/omgzDRi2ICuNedRgx+Pki25K36B0dC
         YD2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XI/OkFbOs6ikXvz7VNV1YdZulXl2U4mj71cIief8TBI=;
        b=eb2vF3rjZj9wjZG5uSn3Om7EY1Bqvn9FjwC6w7XY4xAH1AYFtLr2ibJlQpTQm1BncL
         EL1IV0Evwde217Ys1iN/ICb8yrdPJtZ58/Ib2YQ/fmePSCyc1vBrdQ3W3d7dcdoG6y4D
         a8FTcui9vuCUFffiktxmne36vtFil+uYQRzDFT4puHJRh/ynIn4ofqyYvfGYyZAJ4sZi
         uH4+AZpL5NJ5D3LdmXXJoImfvNLysnfOuGhFNhCgsPwVs3dafVPWRDbfNCCkXxNgkYPe
         43YqEPZKRQoHGLWrzAe/jSSP/RHtSmV76/1UJenQDhQ3tbAbr/3eBVRgk7C8xU/xqEcQ
         SiwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DSOctZUTr1wkBOwpWkT++bzBYaayVYedeJVODZG9mL2KUdTqc
	94w27AVb2kqkKQXFVABqBys=
X-Google-Smtp-Source: ABdhPJzuHkhKEOkmDSsRHIvrodmMID8kcQMrPbBy8pFkvbFQ9GU5wp3r9O44vllecFsxWoL26B2ZsQ==
X-Received: by 2002:a37:a544:: with SMTP id o65mr8694369qke.238.1610653279601;
        Thu, 14 Jan 2021 11:41:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5ece:: with SMTP id s14ls2999709qtx.4.gmail; Thu, 14 Jan
 2021 11:41:19 -0800 (PST)
X-Received: by 2002:aed:2e47:: with SMTP id j65mr8590971qtd.231.1610653279225;
        Thu, 14 Jan 2021 11:41:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653279; cv=none;
        d=google.com; s=arc-20160816;
        b=Jn82mgrTlV6FJoIUm7mQHP7xfY/iqLRNiskOPd7C3Sm2lO+Kr8jBO56/bXznqR0N/C
         QShmsI2GUFo/rz9F+4rTw/ZD6G3j7VQkpCMcTTBjE3BdHzTeSGrQRy5QcLIiZ0BCLDtY
         WbSfyo580PVwydT9+9t0YIr4apEvbAkKkkQKcVZh3mwWN9W3cW15sB8DmmF6o8vzg6o0
         z2McE4xjxtur5hLx+MEPCaWCEa6Gl4e1Ijx/cH8sFSUwdP5eJ/VgwDPM2SVAvbfvU020
         CL5WviM74iN7E4109JBr/2P/uCw5FrxVHix1uINgdPFwv3lmgFVIU8l6KmvBTWMx427U
         H1CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=l9ra0R9+c2hdeQAnghr6HbwvV/9EwWxziu7zSY7JbOI=;
        b=fRjth8uvJ6pfx7EvpHBFdO57rh1Y+TsIS8v9ITKNHLwEOTQMPI5zeE+HvZC6+6sUaU
         78VyqSAH6FwYdkLdUL2lRwl8dXYTZbhnkVKwOS73WkaQghS/r8Tk5YbijCcpH1R/ok6W
         bmhZGWRtD47LJsBLUpEm50uiqyxDVM+8eO0Or0BgZHJmwIrEvYIzfWYOhKPklB09MRtP
         RG54DCsWIwzNeAwAmprpUhvXl23DR14IJK2lGLNTAHjwV80wKhOGLMdp91D9BE84YcIv
         sz0Zjm9ku6/xOSc7T+8ODz8K9/FmUs+FJ9Smyg6tmQbg03yDlf6W/VUH0dCNcU3WuXQF
         ZSMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=XCdtq+5Y;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id p6si431822qti.1.2021.01.14.11.41.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:41:19 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-484-NY5icMc_MsqiERxgPRVfpg-1; Thu, 14 Jan 2021 14:41:15 -0500
X-MC-Unique: NY5icMc_MsqiERxgPRVfpg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0563110766BC;
	Thu, 14 Jan 2021 19:41:13 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BA025100AE45;
	Thu, 14 Jan 2021 19:41:11 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Miroslav Benes <mbenes@suse.cz>
Subject: [PATCH 11/21] objtool: Move unsuffixed symbol conversion to a helper function
Date: Thu, 14 Jan 2021 13:40:07 -0600
Message-Id: <37e341c0f4522656a6320528f0aacb0cb7ff0034.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=XCdtq+5Y;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

This logic will also be needed for the CONFIG_CFI_CLANG support.

Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 tools/objtool/elf.c | 59 ++++++++++++++++++++++++++++-----------------
 1 file changed, 37 insertions(+), 22 deletions(-)

diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index be89c741ba9a..292f015f7ec6 100644
--- a/tools/objtool/elf.c
+++ b/tools/objtool/elf.c
@@ -262,6 +262,38 @@ struct reloc *find_reloc_by_dest(const struct elf *elf, struct section *sec, uns
 	return find_reloc_by_dest_range(elf, sec, offset, 1);
 }
 
+static int find_unsuffixed_func(const struct elf *elf, struct symbol *sym,
+				const char *suffix, struct symbol **func)
+{
+	char name[MAX_NAME_LEN + 1];
+	const char *loc;
+	size_t len;
+
+	*func = NULL;
+
+	loc = strstr(sym->name, suffix);
+	if (!loc)
+		return 0;
+
+	len = loc - sym->name;
+	if (len > MAX_NAME_LEN) {
+		WARN("%s(): unsuffixed function name exceeds maximum length of %d characters",
+		     sym->name, MAX_NAME_LEN);
+		return -1;
+	}
+
+	strncpy(name, sym->name, len);
+	name[len] = '\0';
+
+	*func = find_symbol_by_name(elf, name);
+	if (!*func || (*func)->type != STT_FUNC) {
+		WARN("%s(): can't find unsuffixed function", sym->name);
+		return -1;
+	}
+
+	return 0;
+}
+
 void insn_to_reloc_sym_addend(struct section *sec, unsigned long offset,
 			      struct reloc *reloc)
 {
@@ -456,37 +488,20 @@ static int read_symbols(struct elf *elf)
 	/* Create parent/child links for any cold subfunctions */
 	list_for_each_entry(sec, &elf->sections, list) {
 		list_for_each_entry(sym, &sec->symbol_list, list) {
-			char pname[MAX_NAME_LEN + 1];
-			size_t pnamelen;
 			if (sym->type != STT_FUNC)
 				continue;
 
-			if (sym->pfunc == NULL)
+			if (!sym->pfunc)
 				sym->pfunc = sym;
 
-			if (sym->cfunc == NULL)
+			if (!sym->cfunc)
 				sym->cfunc = sym;
 
-			coldstr = strstr(sym->name, ".cold");
-			if (!coldstr)
-				continue;
-
-			pnamelen = coldstr - sym->name;
-			if (pnamelen > MAX_NAME_LEN) {
-				WARN("%s(): parent function name exceeds maximum length of %d characters",
-				     sym->name, MAX_NAME_LEN);
+			if (find_unsuffixed_func(elf, sym, ".cold", &pfunc))
 				return -1;
-			}
 
-			strncpy(pname, sym->name, pnamelen);
-			pname[pnamelen] = '\0';
-			pfunc = find_symbol_by_name(elf, pname);
-
-			if (!pfunc) {
-				WARN("%s(): can't find parent function",
-				     sym->name);
-				return -1;
-			}
+			if (!pfunc)
+				continue;
 
 			sym->pfunc = pfunc;
 			pfunc->cfunc = sym;
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/37e341c0f4522656a6320528f0aacb0cb7ff0034.1610652862.git.jpoimboe%40redhat.com.
