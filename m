Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBXW7QKAAMGQEZI6LMEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4EA2F6C9F
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 21:55:59 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id r15sf4078967pfg.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 12:55:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610657758; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z3Dz90Lrl+aFZnuEXo8QAlt19Sd6a9WSyTl4rWumRiVkywYAUfH1v3beFTDmvSFYkE
         IR24wEmfSxKKKTkHvCblO0VDytl4+A15EjC+98p1t+pEmPpRCmbyrM6PawY2AK5Cys+c
         LiHAd+5FCDthjIvb5mZYfqfoTK2O71JVGWUiHc1QKb0lAwkD6rKI6g3eTnIj8Zr2ISXe
         glT2nDJIhsStAJ4ge+WqiUUUzQFYIOPu27Z7Zo7cdHydh55VbYoThbl017CSpPQ92FnZ
         xDTRottgAWWKLJTciTa13TRUJZI2FKXZVTPI4fbInh2utB0i70xYijd6y69HDJ78qXa+
         p+kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MR9oBU+QAhBcMeXAVV9BKjZMHE8mB/GmCAS1BHrXpq4=;
        b=SYkJKhy7jENFoN1DCPw10o0Ex2tPUdfyFl4ix0Ci1/CgtC9kJcmG4REEB5wwkDw0aq
         lhIAOfDLIGd0Bku/iJJaTXaT0YPU5qShtCIahe1JjbiKjt0wQ2B9eg1buWKeFUUeVmey
         rQqOdioU7MjJLSLQmfM68bnja5KHfbUh+ecbDRApoYjQc8Weq19YJ6yhRULijnv0TEYR
         eBZBDlhXVTMh5StGUNGYRxiEfEz26Kb+E/YMkU/6gN+tDv/2lMIw37ZHP3Z9UDyqzaE1
         sAqQZqGEQ+00KGDiWcIP2vbXALsYw4IxFayDtWO9oco/Xsrm8RmpVKhLTxoXFI0pTkpP
         7egQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EcVHab8A;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MR9oBU+QAhBcMeXAVV9BKjZMHE8mB/GmCAS1BHrXpq4=;
        b=d1DbtYlJzHIwvwZXrm05vBi4Z6CAwXqEfdFprDA/G3eoe4wwwgyBSSd4Cf2WJoSBbl
         SBSJ1Fw8W6eyd5hxEGVMQnMVT7JzgKGBCrkajUcNQDC38eZveHEZgvq7+v3umzWRIEQ8
         /M/CDQQZ8Ktp69U9UJIiDynnDg0Sb5ZbEkBCvMXvBFyggqsZplV5fDIy8aIyH+s9e5XY
         9dTjNDHPbnfHHesSq5ALTHRNhoacvCY0o34NH7HC6H85CyrjgEnUt0MRX9n/7gJQiMEG
         EvtvPZrhOB9VaShg5ez24vQd2WDcu/aUMVrQOgo8etIY5sIAdj6Y4MbOHAEW1Bvbb4xc
         Tclg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MR9oBU+QAhBcMeXAVV9BKjZMHE8mB/GmCAS1BHrXpq4=;
        b=KsNuih1eJ4TbnvSr4K/3vMAIaQI6YDcFns4aeqDFN1Pb/rxfNv8vL8dugfCVZMDu3w
         sbeTn/INfL/i+sUKXacFuBsk5x/7OSJm7kOj27sWuGoKvH/XY9wwaWs2kKAw7UPJizsT
         4OCnH8+ccoZEDfbUrBIciQZAqW7HKC82ETnzPTjsGcX6ToA0rCast8nLLXbN3D53A3Xe
         lUn3f29DQikuNLXuKOMLsVFwrIp/zAX1FIztPrrVgFC3tVUcgOw0Cl68dsKEakfkl9Wr
         GDtMhIRQ5BMZ3n3vPLmmRWbzAo/to+1DxAPfuUyFEDvUwQk0VXL7oM263n5vHLgOUGXW
         5EFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DtpqmF6e8HVGgGhe6q4+3sHunHCpET6z6szVD9oXd1SnOIWOi
	wce/ZqKVoFv+zlcuVndq558=
X-Google-Smtp-Source: ABdhPJya87sgv3q+H69GUo4F7Rjxhc4D/CWG7sIZ4TiwK3IRA2UnDezNkkPToJbh3I5zHQUtQZ8P7A==
X-Received: by 2002:a65:5209:: with SMTP id o9mr9243303pgp.34.1610657758588;
        Thu, 14 Jan 2021 12:55:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ea89:: with SMTP id x9ls3243258plb.2.gmail; Thu, 14
 Jan 2021 12:55:58 -0800 (PST)
X-Received: by 2002:a17:902:8203:b029:dc:3ef7:9321 with SMTP id x3-20020a1709028203b02900dc3ef79321mr9030009pln.39.1610657757956;
        Thu, 14 Jan 2021 12:55:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610657757; cv=none;
        d=google.com; s=arc-20160816;
        b=ZJwe7GrYovLhKy9dNfr5J3YCw8mhXjHubkDd/RHze5weDtFpCs4SaFpAdK7clW3Zqw
         YcBFomqoyyYgim5eAC5exNdwrFUJPrB0omwtCfSe/V/AISvw69WRf/7QoKwv8dukF/ws
         sYBfV7v/Ovjb9lkZvamGSQSAS/lSXT6SAeA96IJtvr2E5aDq0z8v3l2v8VhNdkAnUVbr
         BX+asRWLJX1h4RYT2pqUECAjna/EF3UFI0n6+G8m25kbuRYYxF/LiwjhZBOAwF4eWxJP
         i0kGYOrSWU/Z9NP/KCTW1ZLqVaPaUN7k/GJMp8o+fLk2qF595b20n4BadYiVY4jxcFOs
         4mVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yBGqFp0/AGy67G2GU5MRUO2gAeWdKdgk866e/Nrr2ow=;
        b=bKHSOsLOxGuuL6d6ydd9gmKDpjHhV65bE32UYGgEZcT+zxfvkZDTK9NRriOVxQYQOg
         J/LznnLQfWPNXLf9xK8NBjg7Sa7LNKIDDNOiNR54KycAJiGddBoaUzZi+B6qGlGjwozy
         V7JZtWN34I3QPYKR3bP67JmzwtHPkxZGB6dF7Xulk6rtn/UgkGR7beSMYqfjsisYIyIB
         9KDgAvrQutrigJofLQyMfCiRiy1FPAKSmsCrkBHyICYhCihOsXQgUXKv+Vtr48cO2g4s
         vlFVcfzwUvnQL9njF8COZEQfh7xG02xqqdskxDBAeUXyNEhdIHAvGY/5eqSd1yynbdyO
         IOUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EcVHab8A;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id l192si313979pfd.6.2021.01.14.12.55.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 12:55:57 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-256-6gvhsoLSPPuUyzdfBBXneg-1; Thu, 14 Jan 2021 15:55:53 -0500
X-MC-Unique: 6gvhsoLSPPuUyzdfBBXneg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 82752806668;
	Thu, 14 Jan 2021 20:55:51 +0000 (UTC)
Received: from treble (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 68D101803B;
	Thu, 14 Jan 2021 20:55:49 +0000 (UTC)
Date: Thu, 14 Jan 2021 14:55:44 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, Miroslav Benes <mbenes@suse.cz>
Subject: [PATCH v1.1 11/21] objtool: Move unsuffixed symbol conversion to a
 helper function
Message-ID: <20210114205544.ehynfby5tummams5@treble>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <37e341c0f4522656a6320528f0aacb0cb7ff0034.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <37e341c0f4522656a6320528f0aacb0cb7ff0034.1610652862.git.jpoimboe@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=EcVHab8A;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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
index be89c741ba9a..6d248a19e2c6 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114205544.ehynfby5tummams5%40treble.
