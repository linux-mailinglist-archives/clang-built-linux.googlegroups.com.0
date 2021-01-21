Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB2PEU6AAMGQEFSXUH7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 8840B2FF742
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:30:18 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id o77sf2010071pfd.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:30:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264617; cv=pass;
        d=google.com; s=arc-20160816;
        b=YB4ntRUhmHDBSJJZV9vip+uiSnFe8Tv3B24RjnpcVgBroban5xxxCkRA+cYZwHPqYn
         /2QGAhnOguaNxgYn432zSr/f+gKkXlFPQjNRYhJfo1OH+g9nKZTz8QEl0KiaU+impcJn
         xlRBvdrSAnPKbB7eLjU/OIjWDMoYTAzFKKYAVTzrnZ+0UEYRN2IPCTCMI8FgQavE2P3G
         vhJAFezrcBm80Qix4fy7KanmLS5WJ5QcsYTNnsDb73kLp0xG61W9ucTEEzmOQh24YPkp
         cVsp8b5/BWSBmVanUGGXiOtgUl+DsqRaDb73fT9ezeazYEv6TT401zunfTok2BuoqRlJ
         ChCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Nd5vuWjUfYcfPoAK5lSLjcoJjW9QdHOXRuWK0CfMt2E=;
        b=qG651Qwc+XQZOt0OwSuR2sz88BJgsq20m5bm9ZJo7L91sgDCIFN5EJHeE1PSfZsIR6
         2DR592IG2spFWAQl4haiqbhNe6i7eXYDmCy4+AD9UufFzhByeHg9FuVU2TJKWRTYa3Ic
         O2u3b3UXXe3uWz4Z6bS1ICtvhHwfVw3NNSaNiC6YIURlormb4imoiFDrONhwKX8NmwNU
         BhoS4LKSjUN5qbFFoRRSqPEWqZ4ihwkm8Ydu8MB/mnr8A4i7wqx9lKLzz8LJQEfylBLT
         WVmpR5b8+0kD7DxRjOpQmYWmJsCvaSiKFLJetWz5SMXNh9WMWouhBW/jlBbZYCJB8oST
         3m/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ca9RLN80;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nd5vuWjUfYcfPoAK5lSLjcoJjW9QdHOXRuWK0CfMt2E=;
        b=LXeuykR4Cg2KXbzrk8Hd7Q4FsluzPTfG5vjHFAQuSZ0hyxu2A5nxR4R+Zgd+NMfpZR
         /9rSCSjzx6j0/WIiJdCmEmNuK0RluUSCj+tHxpV20dY3vZqAUzUkLq9Otghn+JGyfZqm
         IYhXaZtP150rRxfKo49uFBtv46z5uRA3Ejto6qEDOkWyBaBcXqE3+seyKC5GzsGj4ehf
         8tlM0EgFJGi0Q0ud9enLYGb3dIKyFqmKPQqwSYRcG3w8V5vrMwCWQ0MU1lEG/7Cnyt5E
         puMyR0s7+DYOrz3H6lMX5cq3jy5CzzOiCRE9MHElV6ekPDJEcJXKDNhGxW/zbRNnnqLU
         ZXjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nd5vuWjUfYcfPoAK5lSLjcoJjW9QdHOXRuWK0CfMt2E=;
        b=Z//weMnN7nKOzZn8z+alPW/xZSyKxmDjsO30s7thBZPhX1nT1XXJN/BRlTAQ0knQ8e
         WD4n/3sQTrZ2SXDLn6TrELlMUZoQ3MfqUODcH6NqEzmg7kioOTocCTGArpJlJg/7paqJ
         9B9RXra/Txv5J5MIy6frkBfkhezFeBsVwIp3uDmWL1v/5ByYbTYrcZGIMbbiXtdx4MiQ
         ybzdcOEarUlT/vU7AZ8qTi4PXt0SKi9m65waOGC93tMnREMphBtCyzFs7uLbgomvIrNT
         M511VujYGcNyS/DMUHfrdZtKnH8rmUFyfAbpq6AyVkLuwjqffPYSxsBLmzMNUpBWSacU
         xgMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532m+ItZu+6bfj2oLrXla58fXG04nKazYrECoGdJjreWf212QyPk
	yEgJrOUV/KJ1VMYk4pCwmn0=
X-Google-Smtp-Source: ABdhPJzWLDXeVTB4AqHjtmQiWPu97BjkebnqUb6xVhN8eK/AGKMhb1igALLNObdu+roxIEWM6bJIDA==
X-Received: by 2002:a63:ce42:: with SMTP id r2mr1347085pgi.8.1611264617324;
        Thu, 21 Jan 2021 13:30:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:768d:: with SMTP id r135ls1286040pfc.4.gmail; Thu, 21
 Jan 2021 13:30:16 -0800 (PST)
X-Received: by 2002:a63:da17:: with SMTP id c23mr1282632pgh.348.1611264616481;
        Thu, 21 Jan 2021 13:30:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264616; cv=none;
        d=google.com; s=arc-20160816;
        b=aQoM/nGpmzV09e+QZIK4m2p5y0aB33bHhx+u2yg5vOSSuIqPO3pz3seQHWCs8wnHVV
         elGqA5PnRfP6wnaKEH1sS5dadhzOWKUaj/Pr8uew/aFQmC4innl/Wljikmi8kcAOZciX
         9ybGEzRxC/wFL8PvaXZ5QQT7nONrlFQsxLFveJAZItjPw2lYetmO8UJkDV5iFfpRHNHK
         2amFc9ANdk+Go+rzsbq0z723WvXjJMjcuCfQ6OJilekZXIL5A7Ea52kOmdShCmi9N8ib
         zYWQXPj7zucS34beUo47IcXVDNT2alDCDxx/TpF8XiU6j/4s1vWRj2ga1tpptO1EHVrw
         DP6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=60SJun32QdAIf2tr9798845HD7Fuw2MK0DmcQ0OjObg=;
        b=kYzpjOsXay1MP0yNyGC1OlyjLizhaT/a/diTM52+MHxB18VnYJ8bFug2v2AGYFnRvH
         alu8yxjr/PVKpYXAUiDfkZajUFQZ0/qvqG6rZkkCElTxeMVd8dgN7xiys/st0+YVJHr+
         6Kb2KrOSg7DnGo0IeN/TS9Dh+TaWyjxWqDGxQPFVlYXeGhgzMg4remt13wiVzq4Vjfgq
         0TF7aSRYUYU7f9PrluPduzZO10PcQKP//nhciTK0gXn0uBIAVZJ7jLzbSdUl8qyw3h7A
         Vi4UdPYWyelKL8HrEda1pXBmm4pV6Vyo8V6gHygwRdvbJxuoF5a3T8RDKDnBuupfIsJO
         e/yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ca9RLN80;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id z2si426607pjq.0.2021.01.21.13.30.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:30:16 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-417--Q8i2yeDOL6ANuA9WqGeQQ-1; Thu, 21 Jan 2021 16:30:11 -0500
X-MC-Unique: -Q8i2yeDOL6ANuA9WqGeQQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DEA22806662;
	Thu, 21 Jan 2021 21:30:09 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 563A519C59;
	Thu, 21 Jan 2021 21:30:08 +0000 (UTC)
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
Subject: [PATCH v2 10/20] objtool: Move unsuffixed symbol conversion to a helper function
Date: Thu, 21 Jan 2021 15:29:26 -0600
Message-Id: <693bc87431d1fb498e93a43ea2640e4512c39144.1611263462.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ca9RLN80;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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
 tools/objtool/elf.c | 60 ++++++++++++++++++++++++++++-----------------
 1 file changed, 37 insertions(+), 23 deletions(-)

diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index 43714ecd09f7..e7d9c29fe78c 100644
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
@@ -374,7 +406,6 @@ static int read_symbols(struct elf *elf)
 	struct list_head *entry;
 	struct rb_node *pnode;
 	int symbols_nr, i;
-	char *coldstr;
 	Elf_Data *shndx_data = NULL;
 	Elf32_Word shndx;
 
@@ -456,37 +487,20 @@ static int read_symbols(struct elf *elf)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/693bc87431d1fb498e93a43ea2640e4512c39144.1611263462.git.jpoimboe%40redhat.com.
