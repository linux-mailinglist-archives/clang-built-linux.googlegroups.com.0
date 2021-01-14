Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBM54QKAAMGQE6GTQLHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3DD2F6B40
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:40:36 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id a1sf10341876ios.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:40:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653236; cv=pass;
        d=google.com; s=arc-20160816;
        b=NSABW5G81gDnfI4egXChkhbapIJLysMd9mun1JhrXjkRJZoSTv5rMpOek0s/elTG3+
         ftbP2eDHO8wHGFTlrNBJhe4CUFoTfKFci3EduiH2Y1UYV+vBaMgcR3NAYc9bXz7Gu3zc
         qeIJNP9UCVrlazeILU32BwqKsfwCGImO3tcrgzh7eQG9mX0cOmuHsbpdxvoD5b/ATxzV
         NPj7zhvC+ili525rjNzgbG0ERiKuIDxu9zycoYByltTPsZ0I6OqbgLTqWgzU4apYJ1dS
         2XsxwN2hyL+fb6kK7LiqBV8dfBP54q+6o3p8QLrXhmgnHx2KCCdUFyBbQo2I3oFisFt6
         SaXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/UwH0ro88NYWB449wnIiCe6o6KrtD4pPLDfcX12EM4U=;
        b=Mbg+p3AUS6zrRyQqh7K3RznN7NQUgp6Wk0av1wgSxLgvhDq4zY38LTbXmogPtC/x1S
         IClVU7grbKkOwUaaEsGCL57HRtWgGiT8dOzuvw1FKeh8i2P/nN7DgBjDhI6ZM6lZmKNq
         K1YC5bxZthQUyaEDsvWUD8l/F+KUgYj8letHWt7QvoJv98G9QPnL2OCZIVL/8PqR9u2R
         ZjPzHmqzn1sFJBzGQaR6ABv2JkXazRW0015Nt/z64S1yjPhvTfl1C2JeQBP1bKd09WI8
         o7W/VbKUNQ0/jeKRwnEDEJj1YKMhYO5wEzD72o/ZDZ6RVwMSh79YYdfLIb7W7NlIMZai
         PzKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CveN8nrh;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/UwH0ro88NYWB449wnIiCe6o6KrtD4pPLDfcX12EM4U=;
        b=K7TWaNb4WPDp1J1OjkXEPlZ17oIdRSWbRsOpnzykqkvI2uTxmklKuvEngOVCv9Q2uT
         zqu3ZA9NK4hrNKUzriwFjcLD0YNgeaCKBFiXNNLOObRtwuubRgMjAWqhBKvkZ373SQI0
         6TffUe6pJ9+yKlxBzCBGfXLsGFUNzB23EUB+u4Dn4vqjNtuMxoxuES7sO9JgPG4ZpTkl
         jRjzcNfmJ9XWoDQ0ibunldG77QE0eV85IbMFpYAh+q+gFGcF1tw+3tIxF0zKOm3s/oPa
         +sqmQR6ZuzhWEuTWrZ0NM8eUi8G/B4wCGOREP6wDLJmkGdnM7sZFPy+JGeNV0wwOQnf1
         HZ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/UwH0ro88NYWB449wnIiCe6o6KrtD4pPLDfcX12EM4U=;
        b=WamrlAYGAS+TLJDp2wOAzsTb2pW4azKR8X8JdHtQeQbst1wW2Ushuz9GCtzH5ldUo3
         sP1EJ1Pns7YAV9t+r7l5gq64jUdynTezo8ik+gwohh0W6LjiEMA25wFBpFUk6Yh7sCd7
         k+NsxIeMr00WYbRvqKRE9cBETPc6AizAqwp9GGdrbmlLSrfdz43j5rSJ522rFcXzHlhQ
         oV9ilW+c7ut2iGcVzXvVxNcoggGdcvbGv7aKgFrgJTlree94tXdUlAI02V5+jFaPUZTf
         4gjEXP47ubB2M/TVM44vUHUFpc59QGBkiUl0EraiCnRUnDqQMiyFjQ92HtSfc1dRPAav
         3jQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533uwMQc6E1uvSt3w6+wYiXyBGjgVMNnqV+Egma7VGsfb0IYn3JG
	kFIqFgyUhjZ1wGgUn354Ppk=
X-Google-Smtp-Source: ABdhPJzRKLNpwx/wdm75rYqRjruDPaOejc16Nfb0KU5lHXrhcDkEQy891kepLJ2BqTHLjb5aTXVi6g==
X-Received: by 2002:a92:1589:: with SMTP id 9mr7767962ilv.39.1610653235969;
        Thu, 14 Jan 2021 11:40:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:7f0f:: with SMTP id a15ls1934882ild.8.gmail; Thu, 14 Jan
 2021 11:40:35 -0800 (PST)
X-Received: by 2002:a05:6e02:20ee:: with SMTP id q14mr7723090ilv.259.1610653235523;
        Thu, 14 Jan 2021 11:40:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653235; cv=none;
        d=google.com; s=arc-20160816;
        b=x0yt1+1GBkW14c4qSZuQD6sPI7fvA3KHvVEo+jKkl2faG4h+Hg5t8jkMNLcHovrwyr
         aVf2ggbK8hWuZVjE58cP9ppaY5bXW/l/xAAb4FyV/VZsBpqnksK2tUfv/qY28FilExpl
         cCoQobSKC8aefCiocWI+43lDCkHTmkU0aG3WVp6atAxUrrLMh7K1DKrYv/+xzdAuHcwN
         9uPwYluift8d0Y4TlqLE0+w1ZTF1O1tTRuhCwI+SzYr0gX+UpFTfjwp9aP1SvxtF7r3n
         rFGdKtIKvXV/BochKTYpfa3MF+U0JOqw+vOaBQhDS2sGCQUq+yySep8F61xwMYveHTJi
         5nOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LtkOd8OGR4QCUbP/bof8SKFwi5IUvg/uW+YsMcmRdpg=;
        b=bEmsaIXD+B4/rrIbPM6OirZoSI1aJ9khY5YCLKnc45ogJz4A08R+pSj0Mk93IPAf3P
         jw3a+6tg7QIfVicZet67MtqeolgF1ZCqk1NaZvJRKJmOCzn1Txqgpo0Dh1Zn/l1ubnWJ
         763658YnYNgIAkw2hzw8MSX8ZndodKFEOlNqqDWSIqu61r0e3AtppbrwQzWnPr5Mx6qA
         E5q7Qc6nHeRuao/P/cxmTXp9f88MtySBYKGaY9SCTXg8z4ScKzOUue7Tyr7oMPWOHOqJ
         wrd7/4wHAnTDmhR6JgHCXy7w1M50yl1GtWNqEOiHEByCa17DyucYoQXVWEVVED6uRfOp
         SNqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CveN8nrh;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id b8si823944ile.1.2021.01.14.11.40.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:40:35 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-497-YsImawPAMjKF1_WIt3aHZg-1; Thu, 14 Jan 2021 14:40:33 -0500
X-MC-Unique: YsImawPAMjKF1_WIt3aHZg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5258E107ACF7;
	Thu, 14 Jan 2021 19:40:31 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2815310023B3;
	Thu, 14 Jan 2021 19:40:28 +0000 (UTC)
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
Subject: [PATCH 03/21] objtool: Fix retpoline detection in asm code
Date: Thu, 14 Jan 2021 13:39:59 -0600
Message-Id: <1d835370d4bfa899f6d6819898ac27f06296dc87.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CveN8nrh;
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
 tools/objtool/arch/x86/special.c |  2 +-
 tools/objtool/check.c            |  3 ++-
 tools/objtool/check.h            | 11 +++++++++++
 3 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/tools/objtool/arch/x86/special.c b/tools/objtool/arch/x86/special.c
index fd4af88c0ea5..151b13d0a267 100644
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
index 93c3937d1d6a..00969eac5f7b 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -789,7 +789,8 @@ static int add_jump_destinations(struct objtool_file *file)
 			dest_sec = reloc->sym->sec;
 			dest_off = reloc->sym->sym.st_value +
 				   arch_dest_reloc_offset(reloc->addend);
-		} else if (strstr(reloc->sym->name, "_indirect_thunk_")) {
+		} else if (!strncmp(reloc->sym->name, "__x86_indirect_thunk_", 21) ||
+			   !strncmp(reloc->sym->name, "__x86_retpoline_", 16)) {
 			/*
 			 * Retpoline jumps are really dynamic jumps in
 			 * disguise, so convert them accordingly.
diff --git a/tools/objtool/check.h b/tools/objtool/check.h
index 5ec00a4b891b..2804848e628e 100644
--- a/tools/objtool/check.h
+++ b/tools/objtool/check.h
@@ -54,6 +54,17 @@ static inline bool is_static_jump(struct instruction *insn)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1d835370d4bfa899f6d6819898ac27f06296dc87.1610652862.git.jpoimboe%40redhat.com.
