Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB37AZ37AKGQEYFB5GXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D96D2D7D33
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 18:46:24 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id j1sf11617155ybj.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 09:46:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607708783; cv=pass;
        d=google.com; s=arc-20160816;
        b=vpqnLO+sOQqa48KfyRD3cUAqYdcQGYOYcpuVUl15p3gvTigqBlIohO6E/MN1JS+Xyc
         tGH8AbCcardvhXU0zmhqUIAmQblf3cssPL8z0YUWCRs6UExXPIPT3CSDSEPKNqw/LUd+
         Ld9t/15A+msOF6eqrkfkRYlDJtZcx4L3x3N7vm/P6EP3VilmLSwtqrLeJBLw5L5JwfNu
         +0kR75ID4JPcmwUYPbFY2ejnj5DeOAJ6vHyOmZc8Y/Vc5wX+hsXJ6pLBJXAzSHREBpTG
         bLa0IYFjzjP7WuJ44PFKHkYGYZRf1CjSeKENlYK8fAjUREuiIz4FaKeItV0Z8qwyUR26
         GHPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=btjGms/i+ngBFElZQX0OyX9Y+RP69RJA4efirJdBG98=;
        b=KQOSAfX/wf2UeR9JMkDOCltvs0XxAZO17z93Qr1uc7XoMKJL/j3nrd+RwJgTGYhttK
         c582uqxWxXxHkihsHLPvAHBfAgSA77T9gZKDGCYl0jwCCGkAeJlkm/C31lHxvxk4K20u
         fb31XtPBGEZTC0SWs1sUMiXyo1jJBkMjIPGtmMh6O4FhqtZoOBA8bKooTlC3Jxe53fA3
         pQ6jLbDCOAyH6BOltIBPJt3AB8nrGYWursZXRmEb97NDwmQA2VmnfPlMfL3h7DNygYZO
         K5YDHgsX9NmgQ7697qKSBnGxH9N8mnMgrRwsUUJXQSnk2Ux5s9chng+g9SMPim9xKo8r
         Em2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CtzzaadU;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=btjGms/i+ngBFElZQX0OyX9Y+RP69RJA4efirJdBG98=;
        b=NoDL2Ts4k77TNQjBoHUa6oYf5By0Omji05V4nGkGTatWbKRW9s1xLkoAMFmtRJWoBN
         LH1xRzxerPPzb+ng3B9fn9ET6GPvZSLAKnMK6RchUCrhAyXGq50aB+0SyIxPhECfDO0X
         vteqpoT6Y1hPSyjoWmS4jQcmEYAA8C7+5Nhrdk4VJlGSD251Ok29AYdS4DZABYEmIlLw
         AnDHSaE/5Up5t7gJb48UQUpEtQKlyvOPT83uyP2V67X8a1uiZhLStfaF3eeA7i88QFQ7
         6X/fi5StTg0gqbsTsp5vTrsd5JTMB9dp+9uqicxFdxJM0QDkK3I7mTMIHLK2a/Ud319S
         sKIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=btjGms/i+ngBFElZQX0OyX9Y+RP69RJA4efirJdBG98=;
        b=jkaM59Mj2h3PAnSR69IqGrweulcKQwUL0dhz9fq9nvRfBNIwbGFQKaLOdfxTcQf02w
         No+6NnDedZXKw1V3sFY/CAme0eIiBWSBHGuPU+ud0I1//epq6duwWAqleUvB4Vhe5ZyM
         fGOdYOC9QRiKO8qd8OUiMumcXDwDXI4PYpxCullaPbTnRAQ6v4tClLmjXVUwlGj+cxDj
         Qod8mI7eszysiohAMpoQIyl4bKh3NhSOHP2raaLwfz8/h9KpSIbQ87oOKGJVLEenYW2p
         fmluaQ7nqV70vzg8mI6pAUX0FT79hDu4vAoC8TaTGMFB8rVXctjFnI8f5PVDy5jCwoaw
         jIzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530O1YwWp35DUBQPhJVd9R+HEn9/3xi00xfIhZCLePtV40hYgnmy
	DrNFCqVAiQmWmsxiEDLIV3M=
X-Google-Smtp-Source: ABdhPJxEI/wmA9iGWIVc6FJyQdCl+4L26+RYNsH4JzogGQRMjwXfS+PALPo6CX+9C6m5oHOVktSHFw==
X-Received: by 2002:a25:5442:: with SMTP id i63mr22568812ybb.344.1607708783358;
        Fri, 11 Dec 2020 09:46:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:23d1:: with SMTP id j200ls4530331ybj.11.gmail; Fri, 11
 Dec 2020 09:46:23 -0800 (PST)
X-Received: by 2002:a25:2506:: with SMTP id l6mr17411388ybl.115.1607708782955;
        Fri, 11 Dec 2020 09:46:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607708782; cv=none;
        d=google.com; s=arc-20160816;
        b=aSQFq27BdHEf2zfmVFaT/kSpgkeVeH91nOVWmSnOqxgGtJrPVwjZ+nKY2U3aJt0qvB
         6zWs9dffm4hiWRjFlPiVT193OLIf0DO5FiJGmo1RyXRN2pC6Vutw395hv4kpFxlDZGfn
         AH4u1prTA94FXB/E2AwCpVcGz5EEtOdAPyld9gyKtLUhrHZlcYRi07A+V6QX97NxJYU1
         UX6wKeX3iJIHWikSGogk//TytM9aHZZBaBThqQV7cUkxNhrZihe/7dratXak/MrM7TNC
         JObPaa8blKUGklUfztqCvEdSu25XuhjnfI/AiJwZdLEy6/51uHUpZprdK3sos6doWBx9
         tD8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FzP6paV2OVK1R/7FuD7jU8vd9PKyeesd/swefA4DzN8=;
        b=W0NCgOQAreyORldzuvmG+hsIhBdwJbn5R6Eri8EZjP9V44MrvcfqWyvCb4Lh7WHep3
         O9j7ea8FiRjyXlsedLDltO4Bz+sC/fJXuDIi/XZCucd4UXwvPDLQGsM0ImWCIHLw+WwW
         PhctX54r5QSDnV3L/LC20GkRuL2J3qbc9nAs0InaWk9Sigkm9k14iqaKpdl3GIOgkMYL
         QDcxjn/ja8TBNbXx2VucDaGBBS4YUPTwAnRDoNRXsheD2fjpvIRFh0yaHdddbXovzPrs
         7ecUaZ+GOIZyb4qMayggyatMqLMpSgbm3TlTu1XA5zC/jnQrz9mxUYCvG7goHD3eRC3I
         2iEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CtzzaadU;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id m3si894194ybf.1.2020.12.11.09.46.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 09:46:22 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-302-ky9U20HmPFyLH8tA_rrRjg-1; Fri, 11 Dec 2020 12:46:20 -0500
X-MC-Unique: ky9U20HmPFyLH8tA_rrRjg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1B38F81E24B;
	Fri, 11 Dec 2020 17:46:18 +0000 (UTC)
Received: from treble (ovpn-115-21.rdu2.redhat.com [10.10.115.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6574710021AA;
	Fri, 11 Dec 2020 17:46:17 +0000 (UTC)
Date: Fri, 11 Dec 2020 11:46:10 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: objtool crashes with some clang produced .o files
Message-ID: <20201211174610.2bfprpvrrlg66awd@treble>
References: <CAK8P3a20LXgEQkYSpbFFrJs1mdg19W72dp3pbebH9Pkpib2g-g@mail.gmail.com>
 <CAKwvOdn79V-jaTH0mEtKyc-O+=Hj22bGtjKkZ1jriY2YABj-Lw@mail.gmail.com>
 <20201211093205.GU2414@hirez.programming.kicks-ass.net>
 <20201211163748.b37gashl6an6misu@treble>
 <20201211164915.GA2414@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201211164915.GA2414@hirez.programming.kicks-ass.net>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CtzzaadU;
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

On Fri, Dec 11, 2020 at 05:49:15PM +0100, Peter Zijlstra wrote:
> Do we want to capture all that gunk in something like
> elf_reloc_to_insn(reloc, insn) instead of duplicating the magic?

Yup, here's an actual patch

From: Josh Poimboeuf <jpoimboe@redhat.com>
Subject: [PATCH] objtool: Support Clang non-section symbols in static call generation

The Clang assembler likes to strip section symbols, which means you
can't reference some text code by its section.  This confuses objtool
greatly, causing it to seg fault.

The fix is similar to what was done before, for ORC reloc generation:

  e81e07244325 ("objtool: Support Clang non-section symbols in ORC generation")

Factor out that code into a common helper and use it for static call
reloc generation as well.

Reported-by: Arnd Bergmann <arnd@kernel.org>
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
2.25.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211174610.2bfprpvrrlg66awd%40treble.
