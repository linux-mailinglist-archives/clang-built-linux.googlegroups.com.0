Return-Path: <clang-built-linux+bncBCS7XUWOUULBBKNG3H7QKGQEPQ3MRAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CDD2EC73F
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 01:17:46 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id n24sf2493783vkm.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 16:17:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609978666; cv=pass;
        d=google.com; s=arc-20160816;
        b=NE2nphhxUCua58LzpICQ1gIDfBfQAW1KO3BqPm1am0qn1KHtlMIPTjKMT0jN80QIAb
         PQHNwnHKvO02ABkSFgKDTgF/Z4JUEpq7OQsYdGr5+KvnEmeLHKQc8hWUL75nayaCTl8V
         dgZL/eln92WTo90S6oCjVDqg7XxavOHYic47v/oeFYAFmFOBFiX1xTjsRc/ny1U9f9GE
         YZqrUfWoemqq2WL2z2sxuNHE1XHQYIh+UL/+KHTiYIUJ8dhRBVI/nkzeVWaG9AFlS8jb
         QqIyvpBLAjfskPsIlmBn/ogSwOdVixxe4oXi+u0rA8uL8cg1PSdN3a+dD+g9SofgJvBM
         N2Bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=n8TkjQXhRt2cdQ1Qm5GcPf67X8kbkJ0oUnI5bewYpDA=;
        b=GpIbqRUdj5dXZtGkho3ovMJ9pMmLMJwnQ6y6vty3PWVZpIeEsAYQvsjmAO64p0Y8O0
         IlZVvD7sjFyx1dpZ9ErEkhs2M118CvMx4BsyvoyxuXaypbmpwLDpsvfONlqk0FN3ze8l
         lcYaulLE82U+N0RO5tZsR4tk2ajlkSUY6sOf+LYLESwvCpiySJ0CPLL36TLSDlpHO/U4
         rnkiP+tX2ZGziywljhyhPW356R9eiCa5BsufwfNZEkB0dHbrVMgQtOuXUUjvxYSUGgai
         tGSBaA4pEFLdRgQXuTxvKcha0uXV8C/iKJ+X6e+QL8ILWoZ8AYE3FFEJp7asM6twZCmp
         ZhdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YbRzwjA0;
       spf=pass (google.com: domain of 3kvp2xwckea4aogyfomuccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3KVP2XwcKEa4aOgYfOmUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n8TkjQXhRt2cdQ1Qm5GcPf67X8kbkJ0oUnI5bewYpDA=;
        b=SwuT7b8gO0lJ1vLkMuyKwJmyK3Im8/A73/H8XjKiaqSoE+F2HNBuopj0VdViHqMBCE
         7QiHCoZ2YaMMTfslD/L4rNaLOJ2JblLMywuISb2Fk0WAQa4bTd4tIsezCd5f0P2n4NlW
         jOqTnmynIEKcLnW4l1ENY9h4uct8atWsQoeP8z+fiSyXxGb9aQGNFpoYH1pasSrymyW+
         aYb9TQoc1F525e7bYgtMBuoNLYeB6aW3CBvFE3aXln2BPQyE1wT8KMSo4xnZXr2UWq7y
         KLYIYQlqnfU7DEUv4sr6yRjcAGLc9aNYXZoaNinlu6arktMIJchMEeq8yqSTzUfB5lRH
         iW1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n8TkjQXhRt2cdQ1Qm5GcPf67X8kbkJ0oUnI5bewYpDA=;
        b=aFftGNQvsFDya6Rh25qyL4VZhvJ14vr1R61OVtuiEl7Lb9JW4+Xg6qQhC4cgduYLke
         K4i4JbKEDYdBSW5GoHsarZl/9NR6Ng8j0rX6Wa2UI55O5a4Jc0uIJaAhHZPiY/xP2fvw
         /jCef1gNLRXDbqrt/fvVgckQ5hWqLwFMIywL5vAcZMqSmnf1Lg/o+GdszzBnna/EzcLr
         hoz6eL5TsChs/7pDmAA/R8b0S1RMNlaBHD11cJnaYMG5d6lGd353m/djEJbszDex6UbS
         YjcJqxTzPNL4jUaQsY19uB27GPrkfVEVep3P9qw3uEK0lBJmMfbN18ZkN6R3w6l7cH9v
         1SrQ==
X-Gm-Message-State: AOAM5312R7Pw33VyorAoT7yfn2ULQ9TuPx31TLae96BLwtqkFwCvOzGz
	Ubbc25K+GsYrtiIQhTe1uoA=
X-Google-Smtp-Source: ABdhPJxBkZMzd5it1TpT7LWEsB0zqkIsiN9ntQtmxkRTrg0StXnuZfvvC0PohSJ7ujFtdz6QMJGXbA==
X-Received: by 2002:a9f:2628:: with SMTP id 37mr5551619uag.87.1609978665917;
        Wed, 06 Jan 2021 16:17:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2743:: with SMTP id c3ls427098uap.4.gmail; Wed, 06 Jan
 2021 16:17:45 -0800 (PST)
X-Received: by 2002:ab0:63cf:: with SMTP id i15mr5612517uap.12.1609978665484;
        Wed, 06 Jan 2021 16:17:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609978665; cv=none;
        d=google.com; s=arc-20160816;
        b=Catk1n+kvAx4HN4GcWsy/OVprplXQ+BRjBmyro0gRs1QNd4LA3EoUxEvGtsHDibuEv
         y1UbOSAe3QS7uqcUHj85lTKtL0n98sAvwx7tW/AFTRunWX26E6/OgO4BIIlfWXYNdLuU
         49/7yqRgN/DdUbaOGioJgFAcudgHI07DSkKPJUJ7Rx6pH5DGg8Aj7bI19aLD1LKGb8Hz
         d68FtqB79I3hrZDcD7y59f4s/IboECq7HhJj3pn208YfRsRa/CuwjCj2O0KxdM7JTEXL
         fxHDGHG4426qNCpHtzpB/xDMjfPn5d/6UXTdP7k4k/dtJpEVOiWBBsp3uZknwNW+prz+
         nXiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=lF6425iSo/7VCEtMZN9oNw0V0JdXZmHytXzvDMuDncU=;
        b=sInvBInwyQVUhwQlzCkYtppyj97dnTyvBQTM0/8seyfV+0fCea8ttmp4AdpiU9g1w6
         VI0CDciwF89cDD7eBFHBX5TbKRz8DGuSkJWjRg+qdmqQoWbVsjVFzBsl9hDHlDiSEW6l
         k/HyA1CiHJ3vkdptvdCId/zvachK0le1vmx28NhvsYH9tFTX33RTqefGVlYjDDbm5xD+
         W42NkR3noy41Nn3oav/LXucwF0CqbNbfJms4rU2d8RcTIapNSyHWU4jzvSrL6SnZd12P
         3QZOA5P6uNIp6xGS/rbTtKXKj7uW5+8FXtlRxhrTFpcGYExpMIjsxtkjKv9Hj0BwvSfh
         xgMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YbRzwjA0;
       spf=pass (google.com: domain of 3kvp2xwckea4aogyfomuccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3KVP2XwcKEa4aOgYfOmUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id r207si310119vkf.2.2021.01.06.16.17.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 16:17:45 -0800 (PST)
Received-SPF: pass (google.com: domain of 3kvp2xwckea4aogyfomuccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id g17so6979143ybh.5
        for <clang-built-linux@googlegroups.com>; Wed, 06 Jan 2021 16:17:45 -0800 (PST)
Sender: "maskray via sendgmr" <maskray@maskray1.svl.corp.google.com>
X-Received: from maskray1.svl.corp.google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
 (user=maskray job=sendgmr) by 2002:a25:1386:: with SMTP id
 128mr9503757ybt.374.1609978665106; Wed, 06 Jan 2021 16:17:45 -0800 (PST)
Date: Wed,  6 Jan 2021 16:17:39 -0800
Message-Id: <20210107001739.1321725-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.729.g45daf8777d-goog
Subject: [PATCH] x86: Treat R_386_PLT32 as R_386_PC32
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	x86@kernel.org
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YbRzwjA0;       spf=pass
 (google.com: domain of 3kvp2xwckea4aogyfomuccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3KVP2XwcKEa4aOgYfOmUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--maskray.bounces.google.com;
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

This is similar to commit b21ebf2fb4cde1618915a97cc773e287ff49173e "x86:
Treat R_X86_64_PLT32 as R_X86_64_PC32", but for i386.  As far as Linux
kernel is concerned, R_386_PLT32 can be treated the same as R_386_PC32.

R_386_PC32/R_X86_64_PC32 are PC-relative relocation types with the
requirement that the symbol address is significant.
R_386_PLT32/R_X86_64_PLT32 are PC-relative relocation types without the
address significance requirement.

On x86-64, there is no PIC vs non-PIC PLT distinction and an
R_X86_64_PLT32 relocation is produced for both `call/jmp foo` and
`call/jmp foo@PLT` with newer (2018) GNU as/LLVM integrated assembler.

On i386, there are 2 types of PLTs, PIC and non-PIC. Currently the
convention is to use R_386_PC32 for non-PIC PLT and R_386_PLT32 for PIC
PLT, but R_386_PLT32 is arguably preferable for -fno-pic code as well:
this can avoid a "canonical PLT entry" (st_shndx=0, st_value!=0) if the
symbol turns out to be defined externally. Latest Clang (since
961f31d8ad14c66829991522d73e14b5a96ff6d4) can use R_386_PLT32 for
compiler produced symbols (if we drop -ffreestanding for CONFIG_X86_32,
library call optimization can produce newer declarations) and future GCC
may use R_386_PLT32 as well if the maintainers agree to adopt an option
like -fdirect-access-external-data to avoid "canonical PLT entry"/copy
relocations https://gcc.gnu.org/bugzilla/show_bug.cgi?id=98112

Link: https://github.com/ClangBuiltLinux/linux/issues/1210
Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Fangrui Song <maskray@google.com>
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
2.29.2.729.g45daf8777d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107001739.1321725-1-maskray%40google.com.
