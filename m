Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBUPEU6AAMGQEYDIRX3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id B79222FF738
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:29:54 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id x206sf2002519pfc.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:29:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264593; cv=pass;
        d=google.com; s=arc-20160816;
        b=ACDzZ1XOwjvaduuCStS0+boLDUnYGb+eR3e6NVewTHYcEGsEUUXYt6se3BA4Isv6zx
         bmkFTjCxsqK+C2ILoPeUZBdAQVprFv30T2gLXZ7WEHkeEsDdpMOvm4Oayx+AQan4stJu
         w9ynkvlpwiM8i39Smx0qjaH2hJeLt3uugd6F6ZJAC6UKM4jUMyldm+hJeXmXD9vnjVmb
         OdhG8eY4JMcetArOJQNZCRfsgOL79uOwmVZhwO99FY8kS9bPm7yW7lwglifk4D4cD3Nh
         0OSkrlfyE/sTzj7Isq2s6ECOtB1KN3S12zC+aiiLJZm5tGomA3G9n5a92NvepEg15BiZ
         mQ2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ymhg8tuxxMbcSgY7IPM0bbibtaqQjVnDkrkoFbPhWFs=;
        b=uKAyfEhziSgtD/a7wvU3tRQfLmfJeUDQdzgMnnsDaglk94NPgzXiArnaPQNVSFb6ZV
         rwpZuJNEds5+dp1I+TL4ZKRHttFdKfJLfRESlmDUJwDddjvjxddwqK+k2wQswlMULO3u
         KefZ1pinVsbGFp39vod2QDWmUNFyI5xUWn430evwAzRQjoJP/xc7hTvw1bTC8SI5I4Ac
         /nj/64qcjdAAN0H0DYdqL5LpVWOFrCP+ZL17tLCRrsOzPagQwv55tZ15nEhncon2xaTc
         T1+ktV6sYeiwXWJViNwMoWr83dHzokHNkqIl9QRyFCMEN6PX3CHiv2OUu28HYe3aNpES
         5AXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="AhGXY/kS";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ymhg8tuxxMbcSgY7IPM0bbibtaqQjVnDkrkoFbPhWFs=;
        b=BH5EA/5DZpJOuXkWN5WCNGJ/hcwWnQOoAoMbxluKThdykhIp8x8fzAgC529J0mweG2
         jFw/+43exknAhxgQjEFcRG73acch5hOTKGdXl+L2r1fU9nP0QcCBk64m52phrMRKbIBP
         c+59q/bWVAT4OmDldsMC23DJWYsJ1TvLOC88FGGJP8T9EfrbFTAFqAxMvPpridf5XBnA
         Y0LM+3/jHWPJOH7ug5CQbohVY80hmoxCHZOQdSZR5zXRV47ZaJUt8MswW+Ca4CZFAGTu
         iAsMC8waHv0ruppcZGtLNh8miWkazYvSDXptr5d+BBhXQwBX834/e7WBVqgROk5XmiKd
         xJGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ymhg8tuxxMbcSgY7IPM0bbibtaqQjVnDkrkoFbPhWFs=;
        b=g/cOVbYrSo4GzrlDZeciLZ/kx+17p8nbiiESYEe9oFQ9GAnU9W0GB/y3a1UITWGs5I
         uW0F+2TI7EMNVxAUNMUN+n2m5ESaT8eESjmKuIao2k/5FhfFK0L0C6n/u4BbE1nAsfGi
         TsgqJuWVxmMKbxPGgCc8SHnpSVqnF2ET5EnGlD154dilh6fxIgoDirETMt3AsoN1YDhw
         gAS+wQGCgC81AVNR419CyjYWHGErxqmjifDAMzDaYx6g2I3YFH2CPWKbUqb5DgIHUXod
         A8PScWbOIPQAstohxQlhvx9dHD1ZRwz+PSJPFSnurWXlGOeUaIbFJQk34bYsjQtYYI9l
         rJ1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aekeGNenAnK31/W8gr4QFgh5lfkiBAIPtxY8IR6ujWF0zQ7V3
	vuQAO1a88PbIwEu1CJvrdSU=
X-Google-Smtp-Source: ABdhPJzqXWI6nhvakb3D3H4+W/mET4EXTf7/WX2cqTQWxpXW7gnnYNWV9hetoAnE5hjDsisDlJGsXA==
X-Received: by 2002:a17:902:26a:b029:da:af47:77c7 with SMTP id 97-20020a170902026ab02900daaf4777c7mr1716280plc.10.1611264593517;
        Thu, 21 Jan 2021 13:29:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a416:: with SMTP id p22ls1670556plq.3.gmail; Thu, 21
 Jan 2021 13:29:53 -0800 (PST)
X-Received: by 2002:a17:90b:3c8:: with SMTP id go8mr1515555pjb.105.1611264592890;
        Thu, 21 Jan 2021 13:29:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264592; cv=none;
        d=google.com; s=arc-20160816;
        b=jbkT2BHMuX9QIy18n6mA+Igg1HhG1UeqyBxWu6ObKj53Z3gPAola0Bwruc3wqxbs6p
         Vb9pkiW7YpP6eLo9KQD0A7nZqyfmi1cDaTbSTj4ciPPF8O4BMQ6SClYz78TdW+pPdV2Y
         JJ8rtk/Z55rYCuqoeXj70fa5SMkBrLkzkzDJ4L1/gCbSi1VYvtU+GQCMvQ/iIPGpNTz7
         7+hvWwzJhOja3RN3vdIUgEDCeGe8UmJWm4lqtzNQd+vJ8V3KP2WGmVdQdnnpF8UYnAhr
         g2Sc7JuQe2gG3RER5QpqJsK1pcrMiLqSmMXg9a8Ywb3KadC+3qQ1ypisNqWsVKTPVDCx
         ZhWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/ldEgrsH9LEK5NXXOyW/fZfXe/Y6qZgIym112gLv+Y4=;
        b=fEdPrTAkUfnzhjnnK2l8O0yu/f0SEtokS9I4r+nlGBS8YvxEAN8WdLjPkY6rRmgMs7
         KbzM3w5jaSQnwXacjT/YUSQHYx3Fd7nUo1dkVymiBJMN09zxiWcKFW0B+1WyVn+WLVkQ
         j6XlV9CG69BCqmkBK4F8NUyI4VKlQHO+H8Mp2kN2ONB8prqdmVTAhwkszErAloJoBkuq
         X1U5mnQApRR1MXQVCbhWx/LY67n3fWXZehKKb9TmGNKYDR5S2LNgJ0/Fi6yjho7d/TlU
         J3V0EJ9srceIIAesF1wKzExrGVbOlQkhCNMlul/7Q1MffrGlizCse2U9uHHTe8Adh/wr
         /2IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="AhGXY/kS";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id w2si111611ply.1.2021.01.21.13.29.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:29:52 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-189-tFv9y_2QMduZ_GRUnorU4w-1; Thu, 21 Jan 2021 16:29:48 -0500
X-MC-Unique: tFv9y_2QMduZ_GRUnorU4w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8739B107ACE3;
	Thu, 21 Jan 2021 21:29:46 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8040B19C59;
	Thu, 21 Jan 2021 21:29:44 +0000 (UTC)
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
Subject: [PATCH v2 02/20] objtool: Fix retpoline detection in asm code
Date: Thu, 21 Jan 2021 15:29:18 -0600
Message-Id: <31f5833e2e4f01e3d755889ac77e3661e906c09f.1611263461.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="AhGXY/kS";
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

The JMP_NOSPEC macro branches to __x86_retpoline_*() rather than the
__x86_indirect_thunk_*() wrappers used by C code.  Detect jumps to
__x86_retpoline_*() as retpoline dynamic jumps.

Presumably this doesn't trigger a user-visible bug.  I only found it
when testing vmlinux.o validation.

Fixes: 39b735332cb8 ("objtool: Detect jumps to retpoline thunks")
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 tools/objtool/arch/x86/special.c      |  2 +-
 tools/objtool/check.c                 |  3 ++-
 tools/objtool/include/objtool/check.h | 11 +++++++++++
 3 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/tools/objtool/arch/x86/special.c b/tools/objtool/arch/x86/special.c
index b4bd3505fc94..e707d9bcd161 100644
--- a/tools/objtool/arch/x86/special.c
+++ b/tools/objtool/arch/x86/special.c
@@ -48,7 +48,7 @@ bool arch_support_alt_relocation(struct special_alt *special_alt,
 	 * replacement group.
 	 */
 	return insn->offset == special_alt->new_off &&
-	       (insn->type == INSN_CALL || is_static_jump(insn));
+	       (insn->type == INSN_CALL || is_jump(insn));
 }
 
 /*
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 3bdd946c2027..081572170f6b 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -785,7 +785,8 @@ static int add_jump_destinations(struct objtool_file *file)
 			dest_sec = reloc->sym->sec;
 			dest_off = reloc->sym->sym.st_value +
 				   arch_dest_reloc_offset(reloc->addend);
-		} else if (strstr(reloc->sym->name, "_indirect_thunk_")) {
+		} else if (!strncmp(reloc->sym->name, "__x86_indirect_thunk_", 21) ||
+			   !strncmp(reloc->sym->name, "__x86_retpoline_", 16)) {
 			/*
 			 * Retpoline jumps are really dynamic jumps in
 			 * disguise, so convert them accordingly.
diff --git a/tools/objtool/include/objtool/check.h b/tools/objtool/include/objtool/check.h
index f4e041fbdab2..b408636c0201 100644
--- a/tools/objtool/include/objtool/check.h
+++ b/tools/objtool/include/objtool/check.h
@@ -68,6 +68,17 @@ static inline bool is_static_jump(struct instruction *insn)
 	       insn->type == INSN_JUMP_UNCONDITIONAL;
 }
 
+static inline bool is_dynamic_jump(struct instruction *insn)
+{
+	return insn->type == INSN_JUMP_DYNAMIC ||
+	       insn->type == INSN_JUMP_DYNAMIC_CONDITIONAL;
+}
+
+static inline bool is_jump(struct instruction *insn)
+{
+	return is_static_jump(insn) || is_dynamic_jump(insn);
+}
+
 struct instruction *find_insn(struct objtool_file *file,
 			      struct section *sec, unsigned long offset);
 
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/31f5833e2e4f01e3d755889ac77e3661e906c09f.1611263461.git.jpoimboe%40redhat.com.
