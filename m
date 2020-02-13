Return-Path: <clang-built-linux+bncBDYJPJO25UGBBN5TS3ZAKGQEWW5J24Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5695015CAA7
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 19:47:20 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id j2sf3585958otk.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 10:47:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581619639; cv=pass;
        d=google.com; s=arc-20160816;
        b=nTqZxKLQGIxZPh3J9qBqMUMhA8YyHo2BRCSaNk4+DgGEiblnHPDdrVLGR0fj+AAPJN
         wjvxRkwSgY8/j8Z7/2Ul4c8lHCeWJEi/tuWAkSzmAsHXML/eVM0s3V7dVRvud1SMgSGR
         jon6ZdqoRct3s5w5TqtvWqz1Sq0IL8J2VgvgL0H73rN15VYNop76UHTVRWYyFypEvwVu
         dvkfKPmTCQIyhpsGD5p8dLbFG6ItKRbVPWlruojFq5qWLgw4KAPwcbmmLHIOYyn5Txhu
         hVT1bQYAWlYwN85ymvHaD0+dvJWbSq15JG4DRTvOTb2QeMJSh2P3a6D3OdXec/h8X4cu
         eTLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=nitsP32jbK94CbH8gkSXkZiG0QpBnkWCMTYJCTzutxY=;
        b=X85zMqdIGYACacthdoadkJv1lHj4xvKLfkKcQaOai3VfVgv7i4Sy8d1dJt0i3ZOrvw
         WvQG1suttvDrtx9E5fkvrgKR6ogwc4OT+FXpFstDOsmvrfYkVocKmP5rG1cHP6f7RAWu
         PuCIMscN6vuyTLjL2gu3Mow1RFdPRaRoNh583couf5no48n6itGPteua+ihjrZaXNMVJ
         CHoaJcOU+HXSdmIpNFt2nInkg3wnS8tfw8Bopegeuq57ONDYY2vRpcMz6To20PEJ0MEE
         GHM9lhPz+2s831wrMnLvxytg8R+k7t6M5WXgP9Rb7XOSqgBp1tIh4QORT7am6tkFMCe0
         PBRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B8IzkPfi;
       spf=pass (google.com: domain of 3tzlfxgwkapylbcqysjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3tZlFXgwKAPYlbcqYsjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=nitsP32jbK94CbH8gkSXkZiG0QpBnkWCMTYJCTzutxY=;
        b=Py9MR67qzz/bGkVnyKzRfECbxHzJhdoRYfjfjHJ9DH5QeDHFlq1wUzbCYzy8EvKbEu
         WYoo+x81uA11pzWWVuOe9iJC7S1tVNL7/isHFioPNyVFb03jal7xOt5oiJG73SVRJbmo
         NJnxXrCCFHksATUNELpO3nVHJSVv4R7yuBgGMPDhf64Eb1pXAnFMpqzzIyY/AjNyjxGy
         +HPHZXrsmMuue/EvochW9aVObo3DcAedGK1IdnD/D8IM2GQiYj5M94Al5VyHlXY4h3dm
         PytOKLdAKaO9BhAzko/8fSdXZzvXu7lGWidkKCbOko9w3oSM+lSZiGMbzwzYFMBYgOVu
         jnYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nitsP32jbK94CbH8gkSXkZiG0QpBnkWCMTYJCTzutxY=;
        b=Q7qEu8r4QvuA0TgbZ07rumFMb/HMhDAU6VF5M98q1nDAbKJqWkPg2CYrUPQAwzedvI
         H7vr95e+8IO/bjppiQyWvOgsnDC655ssn6OCPrvN8eDm0//PXXkE6UzYpWl+eOEwkUQk
         wA3PoRvrVlWFhsvtvqmTj0/kt4qf6pByyB3eZ1dN0CO8EvX4zi4Wbm9Jsj2e71mU4klo
         lCLNBONF4b4Xu4UjfDHSHbsgZ95diX5S8cwmjl7Llhfhxw51znCU/hd+dP256+4T1unV
         Sar0w3qJgEVW2cmyDA288wY1AVVIM82yx6glrCUyeAfRfkwFyfs3/obPn+R+pIaee3pc
         n9hQ==
X-Gm-Message-State: APjAAAUxRyzmK8ddH3sHkkBnzAiSAuwT0fPCjJX/LYWxQHRJIZ574gmK
	R2MI+pSoY6ITdM92CzYyPeU=
X-Google-Smtp-Source: APXvYqyRHx11tU9/cKnRP8Ykp3NioJ5T5q9pp8M1xQvZH1AOEOSOSz7FM75GukAK2i5TZkXi8QjAmQ==
X-Received: by 2002:a9d:1ca3:: with SMTP id l35mr12854436ota.271.1581619639274;
        Thu, 13 Feb 2020 10:47:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a01:: with SMTP id g1ls394668otn.6.gmail; Thu, 13 Feb
 2020 10:47:18 -0800 (PST)
X-Received: by 2002:a05:6830:154a:: with SMTP id l10mr14601095otp.44.1581619638723;
        Thu, 13 Feb 2020 10:47:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581619638; cv=none;
        d=google.com; s=arc-20160816;
        b=yOB+FK0PEoE3QXY/2FQV29hqvJSZmJNOv58X3LqZYvvrhCzkLzzlsQyBmYgIf98EU4
         B801W+Htqf9vBmVr5L2dgByB1Ra9etSgIUXSZMQAduKpX3ziaiscABMyKepS7QygVn7u
         CgBkSjDzX6jCxWkqa76lyQfmfOi88Bg/dcF53mR/dMrIh+5PVLD2iLtHjgqq1uvmXYGd
         X7hlhrvwtq7GuEFVFOmjxy0G8vf/DNbmOR9mOgsGDh8WV9QVJpCtp8UueNcHtAen2L0O
         rSStiO5wOiy31DqFAWeZ+IMflSaJ1f6nYPZlHW+0W3Ij/BXFg9LGb9PW5LJOEgO1tzL+
         Wwcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=q6Z9P/dVJ1hNdsghQK1UTCWedGdDNEtUHw2XO4diJH8=;
        b=MzB/vTf3sehxsgemxSmtlFSqkbIOdlQe9h1rQ9bxhEMxeJhhjf8Lo1JL1wKpzaSVOa
         +A85IDy0rVgfGLQiyaeFD7kj+/ltBeAm7J47Xku7/cHuDDLppJgxYLxTZGlNbRGhZYMV
         buNpISnmzds83jD9fLuqNhHK4vlHsUbmgxtGO+WVRdE8fvAfpE8co2qONA7qQW9X1z7M
         IBd/c6WBU3mTZi7m2xa4w0vlcYs5WxqI9maZRhC2gg+y6lbSjEQ9CfPzFz0YxrrMC18V
         IoyqcNDR40qCWaywcIcZ+h0vt+TS1HU1opachcNfSarDI3ZqxX+vre25PokHv/Tc1BOC
         SZPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B8IzkPfi;
       spf=pass (google.com: domain of 3tzlfxgwkapylbcqysjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3tZlFXgwKAPYlbcqYsjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa49.google.com (mail-vk1-xa49.google.com. [2607:f8b0:4864:20::a49])
        by gmr-mx.google.com with ESMTPS id d16si189905oij.1.2020.02.13.10.47.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 10:47:18 -0800 (PST)
Received-SPF: pass (google.com: domain of 3tzlfxgwkapylbcqysjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) client-ip=2607:f8b0:4864:20::a49;
Received: by mail-vk1-xa49.google.com with SMTP id v188so2305506vkf.10
        for <clang-built-linux@googlegroups.com>; Thu, 13 Feb 2020 10:47:18 -0800 (PST)
X-Received: by 2002:a67:f30d:: with SMTP id p13mr16077583vsf.112.1581619637977;
 Thu, 13 Feb 2020 10:47:17 -0800 (PST)
Date: Thu, 13 Feb 2020 10:47:08 -0800
Message-Id: <20200213184708.205083-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH] objtool: ignore .L prefixed local symbols
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: jpoimboe@redhat.com, peterz@infradead.org
Cc: clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Fangrui Song <maskray@google.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=B8IzkPfi;       spf=pass
 (google.com: domain of 3tzlfxgwkapylbcqysjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3tZlFXgwKAPYlbcqYsjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Top of tree LLVM has optimizations related to
-fno-semantic-interposition to avoid emitting PLT relocations for
references to symbols located in the same translation unit, where it
will emit "local symbol" references.

Clang builds fall back on GNU as for assembling, currently. It appears a
bug in GNU as introduced around 2.31 is keeping around local labels in
the symbol table, despite the documentation saying:

"Local symbols are defined and used within the assembler, but they are
normally not saved in object files."

When objtool searches for a symbol at a given offset, it's finding the
incorrectly kept .L<symbol>$local symbol that should have been discarded
by the assembler.

A patch for GNU as has been authored.  For now, objtool should not treat
local symbols as the expected symbol for a given offset when iterating
the symbol table.

commit 644592d32837 ("objtool: Fail the kernel build on fatal errors")
exposed this issue.

Link: https://github.com/ClangBuiltLinux/linux/issues/872
Link: https://sourceware.org/binutils/docs/as/Symbol-Names.html#Symbol-Names
Link: https://sourceware.org/ml/binutils/2020-02/msg00243.html
Link: https://travis-ci.com/ClangBuiltLinux/continuous-integration/jobs/286292010
Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
Debugged-by: Fangrui Song <maskray@google.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Build tested allyesconfig with ToT Clang and GCC 9.2.1.
Boot tested defconfig with ToT Clang and GCC 9.2.1.

 tools/objtool/elf.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index edba4745f25a..9c1e3cc928b0 100644
--- a/tools/objtool/elf.c
+++ b/tools/objtool/elf.c
@@ -63,7 +63,8 @@ struct symbol *find_symbol_by_offset(struct section *sec, unsigned long offset)
 
 	list_for_each_entry(sym, &sec->symbol_list, list)
 		if (sym->type != STT_SECTION &&
-		    sym->offset == offset)
+		    sym->offset == offset &&
+		    strstr(sym->name, ".L") != sym->name)
 			return sym;
 
 	return NULL;
-- 
2.25.0.225.g125e21ebc7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213184708.205083-1-ndesaulniers%40google.com.
