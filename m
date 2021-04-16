Return-Path: <clang-built-linux+bncBC2ORX645YPRBW7L46BQMGQEH72SSGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5531D36296B
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 22:38:52 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id o9-20020a5e8a490000b02903e6e5e5c905sf5139488iom.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:38:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618605531; cv=pass;
        d=google.com; s=arc-20160816;
        b=HZruRZ2G2Y4JdpkI62h1HYu1omlGdA+G8TTAkyjwXG8bEqUs4qVPT5G4h4/WatOSGc
         uBDX6j81o2wQS21oyvoELTTRYoNjzMxCqisutDn/NuOpFu/oHQEP+4o8pLG6OtinxBD1
         KO1O71+CnUEdIAA/9TWA+JsEpDn7X29PLVAZFHdhYsXUzi4SOTERasyadHAVQtjGiS8F
         bijeYRlhU62hQ5NJODz4niKvV/N1l0RiacVkcqcKU1J6930YSpuoTsul2d62uVRh3fFJ
         5kcsVzQ/CKkfSJbywBpsQWS4KPVA+RpQZl2OAvfGpL4NuTZovle8sytMXDPFOD7E+c7O
         IPUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=45aU4p1xRa/SJM059c6LguDXUO8gOyQaV2ZU5egilEw=;
        b=dbBhIry6wKQvX9v1G2uLbySN8ZF2BDVmaJHbhVvwKQ0le6cHfN+6zOVnBbVhfbDScR
         x3VDXYfYDpinDzKOlmY1ebUxVMDTHDIrXlaBDkQgAU2n4CLwdRKqTcoDHDSK8R3CBqj3
         9hE0X/1Bx0b3lLkvyDXOGRaqGoe1lwiMlBBGGvM46vYPaLHO8Bbow6vMsypBokuHIvI8
         SsdV4W88/w949WVSCxrqBKA/5s2ZCHXzywpUXOAFc3EA/snSgpZ6ZvaJDfDab3r5iXF9
         3UYstJ6unhHdOcrvYBxQEdvknGJOHcWNRkoAd2U6BnmjTdVMBB22dNWhEM+H7JXrSad7
         bCWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AkvSGo1f;
       spf=pass (google.com: domain of 32vv5yawkalcpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=32vV5YAwKALcpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=45aU4p1xRa/SJM059c6LguDXUO8gOyQaV2ZU5egilEw=;
        b=O9YL7ypgqqh4tt3uHwhcScuX1uiMueiTvbi4MHanqsrEBPyKGkY1PoCDOY4KchLqHr
         ZsfES1f3CB/YQs6jEYFW93i1H+c0RxIuH9p1ne7XUjI25aGzmMfYuaA+NTjAoI9sAqN9
         QFDuT+bXBLPvLzyfRAXCN+qxUEhX7ChA+UPZVI6XrwmWwQww+1HwORgsd5FlBc5YM5D1
         R5IwRy0uRHqLyLnptUCEkt/OVn/TzA2D1Uo+xb6L8GQVTDvdSJtJ7emy6NrYse87cxVL
         BfuHCqC63ibTYchk4uBaS+kfLUUcgbB/eUzbv8cMW+1RDg4sDQDPHjfjbsul7W5Z81L/
         9jpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=45aU4p1xRa/SJM059c6LguDXUO8gOyQaV2ZU5egilEw=;
        b=LxOID58utVmXbBorplE4cMS1PJhfEeHpMUCDAKdtN8plPzh82XAT0wf/EHtzqT528e
         PwNUQn5Lytbk9b2B1I3bIjLDnP5zug2ocPaflDWgOFPotFASrSmUANGjq+Cmni1sRFz6
         Yq2yrcNh/XYyixS+dL7dI54d90JXm3HBF4R9MQOIUwbuiWusaxrzEcYD5R45F3SfsRYb
         CqzWK8fmC3c15D6tWYGI2VMGFGTlprEtDSBxtNsJU/xnkVekIgJhwfY+qCI4EgusZi98
         CaD/KUWHivEfJ8b8w7cmfHMxyIhBm+ANmZ8yF5rXtPHmjQXK5YydmRlGrzYDlnoMU+Rm
         N05Q==
X-Gm-Message-State: AOAM532LeYQR2g7jappno7d4XaNvge55Vyo3mvtrS7jC6XEnVfI6VWAa
	+uqhmMBqIdv4ZYCm1qYT9PM=
X-Google-Smtp-Source: ABdhPJzs7yhTJTEhN0QmPR+92Ekegr/ZWoiOiJuto4fLXqrp2SxtiyWAJ2Cl56TtN77K132Y2cx/kQ==
X-Received: by 2002:a5d:8b01:: with SMTP id k1mr4217267ion.127.1618605531381;
        Fri, 16 Apr 2021 13:38:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:c646:: with SMTP id s6ls1797735ioo.7.gmail; Fri, 16 Apr
 2021 13:38:51 -0700 (PDT)
X-Received: by 2002:a6b:7e0c:: with SMTP id i12mr5021547iom.196.1618605531020;
        Fri, 16 Apr 2021 13:38:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618605531; cv=none;
        d=google.com; s=arc-20160816;
        b=wloImGnd2EbeUxU7M/S8F4Aa++D9ifa/GohJJdL8IRSIaTbLkr3yErhIO28hcwxwyM
         xcqSHFTvODx7LMInuwN++/cAt8XrYuNyMavM3lZZvW3O/cV5Nud7sXRWjZ+8H+kX2dvv
         8p5dhhmlFioUPu2yc6nSsMYIWEh++zEoXn+Xvi6ni0jl5AF0GrNTCVHeOf7lyYcCMo23
         F/axolSWWc/tn01b79kFRjJFwywsri2kD96Ec4X/GAN5j0HDaxSjtgyBgOfUHqmivd7S
         Y9d0BRqFfN/b9o01b+59Fz+j85Iv7e+fyNaNF8FUzNT+pNeUP4pyrQwNR9FoGJv8jNaP
         6LnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=jDS7Yxe+QOQd/ON8hFRWD8N0+6UfcyzD361zMutG46I=;
        b=ZdP6oOHCe22MFLtT29KlDnKfE4dY4kstMzeCIB0F093Pn5wBDtbMIm5Q4eK33DTuZR
         81J+4mmTM04AHEbzYh3ecwTwbzHEKQMN3W1go/Dkx+b1tCDVOlGfjW6HtaTM3eKYkhLU
         q1s7RC180yG+RQG9WEDr7yD9haQo0z6fAfJJPIzgNR/1WkdVRRKwUBuGCaFtn3kWW4WS
         zvn8MF5M4Hefc0i51wBzRs92zLwoJm6Wz/Zrh3HPRfHBXlPb/glx/5ELhA9TBh1GFqKn
         QEYsNa05HszTIpnpVvTcevDlLMM/bvs8CoqsTJmYbPdbBOsOt/yvOFWKDy7Nd1djP8Xq
         U5vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AkvSGo1f;
       spf=pass (google.com: domain of 32vv5yawkalcpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=32vV5YAwKALcpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id j1si522452ilq.0.2021.04.16.13.38.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 13:38:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 32vv5yawkalcpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id p9-20020a2574090000b02904e2cb6a90e7so205182ybc.17
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 13:38:50 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:e262:3d8e:cbf:6164])
 (user=samitolvanen job=sendgmr) by 2002:a25:b993:: with SMTP id
 r19mr1340658ybg.445.1618605530534; Fri, 16 Apr 2021 13:38:50 -0700 (PDT)
Date: Fri, 16 Apr 2021 13:38:31 -0700
In-Reply-To: <20210416203844.3803177-1-samitolvanen@google.com>
Message-Id: <20210416203844.3803177-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 02/15] objtool: Add CONFIG_CFI_CLANG support
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AkvSGo1f;       spf=pass
 (google.com: domain of 32vv5yawkalcpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=32vV5YAwKALcpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

With CONFIG_CFI_CLANG, the compiler replaces function references with
references to the CFI jump table, which confuses objtool. This change,
based on Josh's initial patch [1], goes through the list of relocations
and replaces jump table symbols with the actual function symbols.

[1] https://lore.kernel.org/r/d743f4b36e120c06506567a9f87a062ae03da47f.1611263462.git.jpoimboe@redhat.com/

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 tools/objtool/elf.c                 | 48 +++++++++++++++++++++++++++++
 tools/objtool/include/objtool/elf.h |  2 +-
 2 files changed, 49 insertions(+), 1 deletion(-)

diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index d08f5f3670f8..5cf2c61ce7b8 100644
--- a/tools/objtool/elf.c
+++ b/tools/objtool/elf.c
@@ -273,6 +273,10 @@ static int read_sections(struct elf *elf)
 		}
 		sec->len = sec->sh.sh_size;
 
+		/* Detect -fsanitize=cfi jump table sections */
+		if (!strncmp(sec->name, ".text..L.cfi.jumptable", 22))
+			sec->cfi_jt = true;
+
 		list_add_tail(&sec->list, &elf->sections);
 		elf_hash_add(elf->section_hash, &sec->hash, sec->idx);
 		elf_hash_add(elf->section_name_hash, &sec->name_hash, str_hash(sec->name));
@@ -548,6 +552,48 @@ static int read_rela_reloc(struct section *sec, int i, struct reloc *reloc, unsi
 	return 0;
 }
 
+static int fix_cfi_relocs(const struct elf *elf)
+{
+	struct section *sec, *tmpsec;
+	struct reloc *reloc, *tmpreloc;
+
+	list_for_each_entry_safe(sec, tmpsec, &elf->sections, list) {
+		list_for_each_entry_safe(reloc, tmpreloc, &sec->reloc_list, list) {
+			struct symbol *sym;
+			struct reloc *func_reloc;
+
+			/*
+			 * CONFIG_CFI_CLANG replaces function relocations to refer
+			 * to an intermediate jump table. Undo the conversion so
+			 * objtool can make sense of things.
+			 */
+			if (!reloc->sym->sec->cfi_jt)
+				continue;
+
+			if (reloc->sym->type == STT_SECTION)
+				sym = find_func_by_offset(reloc->sym->sec,
+							  reloc->addend);
+			else
+				sym = reloc->sym;
+
+			if (!sym || !sym->sec)
+				continue;
+
+			/*
+			 * The jump table immediately jumps to the actual function,
+			 * so look up the relocation there.
+			 */
+			func_reloc = find_reloc_by_dest_range(elf, sym->sec, sym->offset, 5);
+			if (!func_reloc || !func_reloc->sym)
+				continue;
+
+			reloc->sym = func_reloc->sym;
+		}
+	}
+
+	return 0;
+}
+
 static int read_relocs(struct elf *elf)
 {
 	struct section *sec;
@@ -608,6 +654,8 @@ static int read_relocs(struct elf *elf)
 		tot_reloc += nr_reloc;
 	}
 
+	fix_cfi_relocs(elf);
+
 	if (stats) {
 		printf("max_reloc: %lu\n", max_reloc);
 		printf("tot_reloc: %lu\n", tot_reloc);
diff --git a/tools/objtool/include/objtool/elf.h b/tools/objtool/include/objtool/elf.h
index 45e5ede363b0..ef19578fc5e4 100644
--- a/tools/objtool/include/objtool/elf.h
+++ b/tools/objtool/include/objtool/elf.h
@@ -39,7 +39,7 @@ struct section {
 	char *name;
 	int idx;
 	unsigned int len;
-	bool changed, text, rodata, noinstr;
+	bool changed, text, rodata, noinstr, cfi_jt;
 };
 
 struct symbol {
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416203844.3803177-3-samitolvanen%40google.com.
