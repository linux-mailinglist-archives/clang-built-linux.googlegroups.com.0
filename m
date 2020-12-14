Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB7GC377AKGQEZ5X74GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1351B2DA2F5
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 23:04:46 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id c72sf14811123ila.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 14:04:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607983485; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bq53nvYa4LO8Qv9xIj2msEwIxrb0NdwPv8YWcuDteo1POZxxWCQ5ZRFMGJAUcd9CIG
         TLUk/zoGZGSHXQ/oTXj88ildyR2AQ9D4V6bOrBTrWC2OR5vNd7NHqZByXpOfrtjc+0lM
         eIjkdJassr69SmKWCxJYQN7qWgSqEXA1AMs/5KXTXCoVww3wYhxcmz1akq/AvxI7lNpe
         TR3fvgyFZ3ozs22viHPIZM0SoLwUDsgMDCPHjrjEft1Cb1O2/o81ujwPGKAQmpeWUhkL
         iPmqOxH/BzwBVFQ88BAm21OXpJORszxExWiIo+94h8d1zFLXCmsxWX91BbgW7+qxxRal
         GF9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=SPZmiHnXOxZDs2ceRbh9Qr/81pHQZCh7+plHr/HPOsw=;
        b=RVj6sucV31wgVZuLSzFAL7CzLf+vow2kbOwupZRvEBaG2BloZTz+oq2bMWFQUBQ4ug
         nSoLi4weEozMom/BRXlQkwzvCgHvaJwqhCFg+EeJRoJOi/wNp88imYkXMLW10ibO1MjC
         /hpnWIVFpNV2B1pT2qbWUR//xFCEfZwY4/uinCksZ1ApPpZsOvh+/pWWaw0hoGESLG07
         7irSHYDGU4PHRwQLeMm8OTBmQCoyvJ+UJ91ayYAAf6s0F+L647VTrTEu7KCZbhkUY8zT
         7Yc4LjM1/Kls2VjzzNRQzzIFiH8/zqQT6JkdxnpjhGXetr/M6EMHlzfTMG4siJ1O3geW
         U/ZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aoBZuab0;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SPZmiHnXOxZDs2ceRbh9Qr/81pHQZCh7+plHr/HPOsw=;
        b=AilGH0tVMF8z1WTBn4k6PFWrW+XXjy/41Ki0JQ1PzaCFH2qPrU/9iFweYq6FqIwy0+
         a5o7iSeKCWghHRgaASQGGtAsq9NNQGudlJOu1YO1z1IanTSS7sA2M1yISgVL1h8UTUzG
         gG8YtBW9m5OfAB4jaypF73WsQDY+lQV43RAfGRnqjcsNWb+xDWaVNz7TM2XZMsif/3py
         Xq9Ydeuqbu6WevvhwbG1quU8T6wMDT0Ttqm28kZlJRGH/2dy+sqjhfWRtr6SZ8cY3HTq
         XjG7uZvCehLGrI/pUJ/wD0+SIp3EYwpQTmxzuT5ibTUpxFBWMugYVWqV+GzjbvJPP1qd
         Zo7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SPZmiHnXOxZDs2ceRbh9Qr/81pHQZCh7+plHr/HPOsw=;
        b=ScBzSd7/pwcQ8OR9pJMKPtoPgHouMRBMkcd8/Cv6k6olSyYhcnwDylO1asasQw4qso
         RPukCx2I41mhej+AXYhMXMr4wcm/Na7CP2CM68AXqh61Z/bAP0oOVHEFzyv4doFPQ3VH
         lAPLR+CnNdpzEiws3b+aT2dUGuMfGEIEyd+jUXdiD7oUIFAMVQaZdslwk+uba3yPXqPQ
         CGleRkSeL9Y1z/22LEAJdMOX5QnOfmcbiJlF5s/eUOt8yxHN1+M7RgEgfQGljX+WxlDU
         SC+Z2ipSeU2iEUn5mOuRNNEMp/lThy7WIg8dDT+4qy/1zZtRp8WCPY2D3ePIQJH6v6A1
         ubaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Pi0H6g4q8uYIlyZnJiv31gPyHYyyJpqHDc0aPxZQLJPU9IlBM
	lqrCxz3sr49jEwU7ZPNPZUU=
X-Google-Smtp-Source: ABdhPJyXXwwWdOlb6rVGA63HzNF2s5Bo4u21p+IWtw2B1ReO+OMerBSMzAdzsuDlJa9zr1xMAbbTfQ==
X-Received: by 2002:a92:c845:: with SMTP id b5mr38136341ilq.32.1607983484903;
        Mon, 14 Dec 2020 14:04:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9f06:: with SMTP id q6ls2892100iot.1.gmail; Mon, 14 Dec
 2020 14:04:44 -0800 (PST)
X-Received: by 2002:a6b:c9cb:: with SMTP id z194mr34435203iof.110.1607983484401;
        Mon, 14 Dec 2020 14:04:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607983484; cv=none;
        d=google.com; s=arc-20160816;
        b=Er/CexpCyNuCqvnMNClHQM3Y5iy3hubFBwdzzIaDGpkd21ve4IWGJs9ZprOQoQlzRN
         nYbSkdQDbvZtPzILLmKe1E8Gv4ThUbGx7iXPwhuJVxknK0dK5vbl5GMNm1tadbDLnkrM
         HL7idnzvwi33ougAjGcEgkgY1qODNErwJ9yJMnS9MSB9mnXQ7yRSiaxCVY7ptSNfBXFS
         CHYFpbO2LMqaqFqfbeXjuAHUBIhaqeATTaNOp8CUSUOBOXR0E0qwUsk0lWqMtcpSKK1e
         5TcARldHk8KqUmaS+iozdZWLqtS7Osc1yyWrFem8TUn50ctQN7GzyTnKm8OweDFvMAYw
         GO7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=fW75B8TuuWSO4pQv9VG4aA61uFDavRGNu4wKmT1MNjY=;
        b=sRpKyUP5M6CjAB4HRgzLZf+YXt823myxh5sc4z2BAFq1SnV6IZhhA6sMuufQKIGO3M
         LufRRchW1vw+dieNDLNkZFzsKY/q8EByLKVr+TVHQ0jgErFL+E4SinXY2Pa/3orC/dSZ
         Fee1tJW2UaAMmCLbm2wQMYFacziRu7m1SZ63jb/PBD0p/6pAzhWA3C4IwLGs0U4WxMFT
         FLc+z5DT7vMGRZFMVXygbPPdc6aP01hHeyqsp6o2GP/OOw6aDKV/3rlCZJB3a9oPCnK2
         MmZQ9iGpFdZhlxRTpinVHfVReTf9ehIP5UdxB9i9MC8goNph9PdAGig0BKf1O0lPLwYU
         nzAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=aoBZuab0;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id e26si615397ios.2.2020.12.14.14.04.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Dec 2020 14:04:44 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-B38apv-TNfmiwQxh6Kf2wA-1; Mon, 14 Dec 2020 17:04:40 -0500
X-MC-Unique: B38apv-TNfmiwQxh6Kf2wA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F1B188049C1;
	Mon, 14 Dec 2020 22:04:38 +0000 (UTC)
Received: from treble.redhat.com (ovpn-112-170.rdu2.redhat.com [10.10.112.170])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D13955D9DC;
	Mon, 14 Dec 2020 22:04:37 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux@googlegroups.com,
	Arnd Bergmann <arnd@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH] objtool: Fix seg fault with Clang non-section symbols
Date: Mon, 14 Dec 2020 16:04:20 -0600
Message-Id: <ba6b6c0f0dd5acbba66e403955a967d9fdd1726a.1607983452.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=aoBZuab0;
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

The Clang assembler likes to strip section symbols, which means objtool
can't reference some text code by its section.  This confuses objtool
greatly, causing it to seg fault.

The fix is similar to what was done before, for ORC reloc generation:

  e81e07244325 ("objtool: Support Clang non-section symbols in ORC generation")

Factor out that code into a common helper and use it for static call
reloc generation as well.

Reported-by: Arnd Bergmann <arnd@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1207
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 tools/objtool/check.c   | 11 +++++++++--
 tools/objtool/elf.c     | 26 ++++++++++++++++++++++++++
 tools/objtool/elf.h     |  2 ++
 tools/objtool/orc_gen.c | 29 +++++------------------------
 4 files changed, 42 insertions(+), 26 deletions(-)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index c6ab44543c92..5f8d3eed78a1 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -467,13 +467,20 @@ static int create_static_call_sections(struct objtool_file *file)
 
 		/* populate reloc for 'addr' */
 		reloc = malloc(sizeof(*reloc));
+
 		if (!reloc) {
 			perror("malloc");
 			return -1;
 		}
 		memset(reloc, 0, sizeof(*reloc));
-		reloc->sym = insn->sec->sym;
-		reloc->addend = insn->offset;
+
+		insn_to_reloc_sym_addend(insn->sec, insn->offset, reloc);
+		if (!reloc->sym) {
+			WARN_FUNC("static call tramp: missing containing symbol",
+				  insn->sec, insn->offset);
+			return -1;
+		}
+
 		reloc->type = R_X86_64_PC32;
 		reloc->offset = idx * sizeof(struct static_call_site);
 		reloc->sec = reloc_sec;
diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index 4e1d7460574b..be89c741ba9a 100644
--- a/tools/objtool/elf.c
+++ b/tools/objtool/elf.c
@@ -262,6 +262,32 @@ struct reloc *find_reloc_by_dest(const struct elf *elf, struct section *sec, uns
 	return find_reloc_by_dest_range(elf, sec, offset, 1);
 }
 
+void insn_to_reloc_sym_addend(struct section *sec, unsigned long offset,
+			      struct reloc *reloc)
+{
+	if (sec->sym) {
+		reloc->sym = sec->sym;
+		reloc->addend = offset;
+		return;
+	}
+
+	/*
+	 * The Clang assembler strips section symbols, so we have to reference
+	 * the function symbol instead:
+	 */
+	reloc->sym = find_symbol_containing(sec, offset);
+	if (!reloc->sym) {
+		/*
+		 * Hack alert.  This happens when we need to reference the NOP
+		 * pad insn immediately after the function.
+		 */
+		reloc->sym = find_symbol_containing(sec, offset - 1);
+	}
+
+	if (reloc->sym)
+		reloc->addend = offset - reloc->sym->offset;
+}
+
 static int read_sections(struct elf *elf)
 {
 	Elf_Scn *s = NULL;
diff --git a/tools/objtool/elf.h b/tools/objtool/elf.h
index 807f8c670097..e6890cc70a25 100644
--- a/tools/objtool/elf.h
+++ b/tools/objtool/elf.h
@@ -140,6 +140,8 @@ struct reloc *find_reloc_by_dest(const struct elf *elf, struct section *sec, uns
 struct reloc *find_reloc_by_dest_range(const struct elf *elf, struct section *sec,
 				     unsigned long offset, unsigned int len);
 struct symbol *find_func_containing(struct section *sec, unsigned long offset);
+void insn_to_reloc_sym_addend(struct section *sec, unsigned long offset,
+			      struct reloc *reloc);
 int elf_rebuild_reloc_section(struct elf *elf, struct section *sec);
 
 #define for_each_sec(file, sec)						\
diff --git a/tools/objtool/orc_gen.c b/tools/objtool/orc_gen.c
index 235663b96adc..9ce68b385a1b 100644
--- a/tools/objtool/orc_gen.c
+++ b/tools/objtool/orc_gen.c
@@ -105,30 +105,11 @@ static int create_orc_entry(struct elf *elf, struct section *u_sec, struct secti
 	}
 	memset(reloc, 0, sizeof(*reloc));
 
-	if (insn_sec->sym) {
-		reloc->sym = insn_sec->sym;
-		reloc->addend = insn_off;
-	} else {
-		/*
-		 * The Clang assembler doesn't produce section symbols, so we
-		 * have to reference the function symbol instead:
-		 */
-		reloc->sym = find_symbol_containing(insn_sec, insn_off);
-		if (!reloc->sym) {
-			/*
-			 * Hack alert.  This happens when we need to reference
-			 * the NOP pad insn immediately after the function.
-			 */
-			reloc->sym = find_symbol_containing(insn_sec,
-							   insn_off - 1);
-		}
-		if (!reloc->sym) {
-			WARN("missing symbol for insn at offset 0x%lx\n",
-			     insn_off);
-			return -1;
-		}
-
-		reloc->addend = insn_off - reloc->sym->offset;
+	insn_to_reloc_sym_addend(insn_sec, insn_off, reloc);
+	if (!reloc->sym) {
+		WARN("missing symbol for insn at offset 0x%lx",
+		     insn_off);
+		return -1;
 	}
 
 	reloc->type = R_X86_64_PC32;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ba6b6c0f0dd5acbba66e403955a967d9fdd1726a.1607983452.git.jpoimboe%40redhat.com.
