Return-Path: <clang-built-linux+bncBCS7XUWOUULBBN4UQOAAMGQEITWS5PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D162F6E80
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 23:48:25 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id y2sf4704122pgq.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 14:48:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610664504; cv=pass;
        d=google.com; s=arc-20160816;
        b=kqCMZPfftDWRtXUEjZQqHlEXw1QdgqYxbcrvinhT/OmB+Y8eIrDY1vbAXNn148RYVB
         KIoEgfExZ9qhg7U1gS0rbwDTjbOm8pTxmF6NrWcXcXzELDJB8TdDs6nfEbw9jpm90oaq
         ke4pwPmdKZOMpnKaEoghAcavEYJZkxGTW5oMI48sFPnR+PhT2OUM6e1uxDsU1o/Kfxxq
         G98WSsrgj4/Pqj9mjAzaM/C16qNoz/UYmGqxqn29eLrK+MqHcQruX8cNt4hDbHuORoRh
         KP+QXulR4xHeXFVwcZX08Z327Cp4dxuxaXYOCaRsMd9Xx9+XseBzVOLDen26O3mlor3v
         rA+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=uVlxYSccoDnCQC4nikXbiJ2cmGD5bCND8OGShfAIgEo=;
        b=H6UwfljdGtxI9x8Hq6V2JPvQUnta5I+ts1V6+HZ9ORVElmBdw8dj9CvKVcxtoS+mib
         tR+ZATD8fYCiTtbRuRURkLpwB2VAwusD4quUE4VH6J4b6rxeA6+E6S9eYhFTOmETee0x
         WCJZl6MjYKH4u+3hEwzNIkoctN1C0205+cAZ5V90e3PeQLhbyf3uIrNS0ygva5HHmMVU
         XUfBIcy6bhONsB1ztzbILkDBkh9enuM6Dr0JTznBJMNDEvW0Z/H/OSTV+EmMHUt7q607
         hzHTMkUV7U0LhalZ2G0ZdXEY2L3sXYB2GasNTSz9mWyUQOwomJQPbvlstGrpsEGRk5rq
         jwRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JuCQDAek;
       spf=pass (google.com: domain of 3nsoayackedmbzh9gzn5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3NsoAYAcKEdMBzH9GzN5DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uVlxYSccoDnCQC4nikXbiJ2cmGD5bCND8OGShfAIgEo=;
        b=dl/UMTcqGtpAKn/GfRMz8bHWr1EJoyKQ+dykYuk7DN09T5GsGj+Ckime6215vYzuVE
         Qr7UQ3wqH/PwpMOn2Pv8492irFzlXyC+csYoPQqdLeuX8VYLZNUZCHVCEHtnSQqWpdtX
         7luFnEuIv2qRfr+9atoc6HEim4f1S1nZ3ZxryDYKSCEYXUTXBfK4Dq4WKyTSBihZzK/o
         ayeL+2Z4OwLYx4KNb0r7D2ycYglFJiCewD02mhbkMWngAcxFEc+Db/GxwX9Aaz3qy2Pc
         EZRd7yRuathCl2Bjh9zFSAn43hsOohdXchDDHDhsQXWJt0ZjABjxLHIyQKObqJAYKNAH
         P8Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uVlxYSccoDnCQC4nikXbiJ2cmGD5bCND8OGShfAIgEo=;
        b=Y6/2Ztg5yHXmikxkKx8G+Ow4h4q5/aN7+gvxAFutBDsCvWdgXRDyaeSnZw0pNmi5u9
         1Ys9RKNmZkLR/PCKpqAWrq6hic9vK+hnL5+wt9duZu1ZaKW6bpdU5auVCSaSzkxtQEQz
         f/7Gr70aAEfjfrU3tQs1r22m1LI7LFELR77TSzVRDemfrTmpnpXpx3skEINj4AP7a7Qk
         iQP7sJkV5OqEVbgu1zJOxqn1a6U1qHbuZaq6d0fJff2yA381YfCuSqpp2lIHpmXRYxMw
         xvqOkSnTpt8dRxnqdiAPOVzeBOyMRrIPuttk3nV9PVfwcdff3v9DwGNCchsS8ZL9AkVM
         Vaow==
X-Gm-Message-State: AOAM531fzenfT/HEKWtquMLCc7BJuAIsLFEVQ1MkCebtpIoxnHmvIbKY
	cyFuzoSVXtDvsj9j0Uzca4U=
X-Google-Smtp-Source: ABdhPJz7jgj/rdvQE8E1nJ/R81xm85Ws7WwceMB7kZISwZE6WlC65vrY1y2+pJWoMOK5wJmIy0tCvQ==
X-Received: by 2002:a62:ee03:0:b029:1a9:cc29:7d1f with SMTP id e3-20020a62ee030000b02901a9cc297d1fmr9291740pfi.24.1610664503906;
        Thu, 14 Jan 2021 14:48:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6d0e:: with SMTP id i14ls2729789pgc.8.gmail; Thu, 14 Jan
 2021 14:48:23 -0800 (PST)
X-Received: by 2002:a62:e516:0:b029:156:3b35:9423 with SMTP id n22-20020a62e5160000b02901563b359423mr9667317pff.19.1610664503239;
        Thu, 14 Jan 2021 14:48:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610664503; cv=none;
        d=google.com; s=arc-20160816;
        b=BqNv7Zg+ncXUd4hoVmaKIknTcAU/L96RL+QbxCsxQVdNsLbUZiOGq9mCkIIadD0xqd
         T1RAKG1szKu5cSb6vhpbq4usDajSkkjtQAxJYVz420QnhsXcUSlpAvLzbk2ArKlZpJ9D
         UFnbfeLlTkUqw1hb0xbBVy6oeZZWGeHbicsa1GkaHTmRilkRArB03TYI21mUbFeY5wQA
         TW6O04VafhvcDduT31jgrLFhDD5Y4zVJHW3Kc4F2rLfZnnJsnDI3bDjHvhVlOUl7zsK0
         DVIy1tTUNYFfQP9DAW3KzLiLFJ6aj0d0GGc9RRnhW+uXZizsjZrB8/tLw79O+w4SCDkT
         iAhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=RbsfhVoCXn95CjDh/v1ZbeIm2/iYKTwaoq52D6PfEPY=;
        b=ku0ElJZnUDfO8S/kn5cfmWAzestXqQU9fozXIiNaYLUy6xz9+RRwAn38gDvA8VLwAt
         MFmlflf3EuEohfjAh2PPmQSab240uvG9xOWHQBdgHNbfJ0vvyi8N3FXb0QOQVRp2T5B5
         4eF6NiS431VmSUF9x4EnKMbl2iJabibPYgA1lTD7kYpw74ixEkr68HISV11E9ZmBGOo+
         JtM/57AO7YctzXNkV8xjxQV5LRIKoe8arVCrf6kHIQ16/qnvrCEoMdIRvw8MDkZkay7z
         SrzeK6R7ZAbCPwf8zyTy3lL9dMd/4Kupg/4o3IHrNK/q6ZO77w3HReY44+cy0rNcQ4XU
         +MCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JuCQDAek;
       spf=pass (google.com: domain of 3nsoayackedmbzh9gzn5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3NsoAYAcKEdMBzH9GzN5DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id t22si462791pjg.2.2021.01.14.14.48.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 14:48:23 -0800 (PST)
Received-SPF: pass (google.com: domain of 3nsoayackedmbzh9gzn5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id x17so3325925ybs.12
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 14:48:23 -0800 (PST)
Sender: "maskray via sendgmr" <maskray@maskray1.svl.corp.google.com>
X-Received: from maskray1.svl.corp.google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
 (user=maskray job=sendgmr) by 2002:a25:b341:: with SMTP id
 k1mr14146305ybg.37.1610664502367; Thu, 14 Jan 2021 14:48:22 -0800 (PST)
Date: Thu, 14 Jan 2021 14:48:19 -0800
In-Reply-To: <20210107185555.2781221-1-maskray@google.com>
Message-Id: <20210114224819.1608929-1-maskray@google.com>
Mime-Version: 1.0
References: <20210107185555.2781221-1-maskray@google.com>
X-Mailer: git-send-email 2.30.0.296.g2bfb1c46d8-goog
Subject: [PATCH v3] x86: Treat R_386_PLT32 as R_386_PC32
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	x86@kernel.org
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Fangrui Song <maskray@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JuCQDAek;       spf=pass
 (google.com: domain of 3nsoayackedmbzh9gzn5dd5a3.1db1azc5-0j7ai-a7cjm5dd5a35gdjeh.1db@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3NsoAYAcKEdMBzH9GzN5DD5A3.1DB1AzC5-0J7AI-A7CJM5DD5A35GDJEH.1DB@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

This is similar to commit b21ebf2fb4cd ("x86: Treat R_X86_64_PLT32 as
R_X86_64_PC32"), but for i386.  As far as Linux kernel is concerned,
R_386_PLT32 can be treated the same as R_386_PC32.

R_386_PC32/R_X86_64_PC32 are PC-relative relocation types with the
requirement that the symbol address is significant.
R_386_PLT32/R_X86_64_PLT32 are PC-relative relocation types without the
address significance requirement.

On x86-64, there is no PIC vs non-PIC PLT distinction and an
R_X86_64_PLT32 relocation is produced for both `call/jmp foo` and
`call/jmp foo@PLT` with newer (2018) GNU as/LLVM integrated assembler.

On i386, there are 2 types of PLTs, PIC and non-PIC. Currently the
convention is to use R_386_PC32 for non-PIC PLT and R_386_PLT32 for PIC
PLT.

clang-12 -fno-pic (since
https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
can emit R_386_PLT32 for compiler generated function declarations as
well to avoid a canonical PLT entry (st_shndx=0, st_value!=0) if the
symbol turns out to be defined externally. GCC/GNU as will likely keep
using R_386_PC32 because (1) the ABI is legacy (2) the change will drop
a GNU ld non-default visibility ifunc for shared objects.
https://sourceware.org/bugzilla/show_bug.cgi?id=27169

Link: https://github.com/ClangBuiltLinux/linux/issues/1210
Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Fangrui Song <maskray@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

---
Change in v2:
* Improve commit message
---
Change in v3:
* Change the GCC link to the more relevant GNU as link.
* Fix the relevant llvm-project commit id.
---
 arch/x86/kernel/module.c | 1 +
 arch/x86/tools/relocs.c  | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/x86/kernel/module.c b/arch/x86/kernel/module.c
index 34b153cbd4ac..5e9a34b5bd74 100644
--- a/arch/x86/kernel/module.c
+++ b/arch/x86/kernel/module.c
@@ -114,6 +114,7 @@ int apply_relocate(Elf32_Shdr *sechdrs,
 			*location += sym->st_value;
 			break;
 		case R_386_PC32:
+		case R_386_PLT32:
 			/* Add the value, subtract its position */
 			*location += sym->st_value - (uint32_t)location;
 			break;
diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
index ce7188cbdae5..717e48ca28b6 100644
--- a/arch/x86/tools/relocs.c
+++ b/arch/x86/tools/relocs.c
@@ -867,6 +867,7 @@ static int do_reloc32(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
 	case R_386_PC32:
 	case R_386_PC16:
 	case R_386_PC8:
+	case R_386_PLT32:
 		/*
 		 * NONE can be ignored and PC relative relocations don't
 		 * need to be adjusted.
@@ -910,6 +911,7 @@ static int do_reloc_real(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
 	case R_386_PC32:
 	case R_386_PC16:
 	case R_386_PC8:
+	case R_386_PLT32:
 		/*
 		 * NONE can be ignored and PC relative relocations don't
 		 * need to be adjusted.
-- 
2.30.0.296.g2bfb1c46d8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114224819.1608929-1-maskray%40google.com.
