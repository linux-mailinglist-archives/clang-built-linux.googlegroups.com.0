Return-Path: <clang-built-linux+bncBDJJN2O66QEBB4O27L4QKGQEIQCODII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE9F24C40E
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 19:05:54 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id q5sf1643984pgl.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 10:05:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597943153; cv=pass;
        d=google.com; s=arc-20160816;
        b=eejMfXbf5ywlH1SIiJ8IQ4rb12w4akE+E/jU8EsZypOhRsxer5e1nGfsifZPvlCDi3
         QuDumG/YJNtBLmIaPafwVJp4CkB0pYENIHueZksp3b0SBzVfIv6BYpZjv2Beagvzzcu0
         wEjq0nw3jLXEJsZAyufrYNaOsYJHbAiGVfRT5HqfLKtQnDlhToAlOnH/pkda9WsUB+Ts
         YOEepJ4YtthLrx+X30rOqQZiET7VWqix0eyiZh4Pw+lITd5cRsq3Ru9Bo7D8QKN2x7lV
         wciJDiV2jAEo5uYROFStdy+4RIiCZwwad91hjpoxupO2SsaNGfFwPJZ3zDi/PtsBP32O
         iU8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=JLkrGAwpnTFCcP4JT10uBFFZJ7fpbgksevspB1ZX7hA=;
        b=QbpH0jSJ3GqC44KPcafHdRJ8YyVAH9ryy9s5ajeajY2+lZhj7433q7pDsNd+FoFAdA
         v/TlYo5+wvHDeno8l28OW0rXHYNZUDavEvA+7Aaqp3lvSiCntBhbET9sNM+4c8jCxGem
         jjzt4x3/h8MhS6wrcXcRdw3GHpZ6KgjBh/vwGIK6HcvdooYJjQ6AvAe/kP+RHjJqo7aU
         v3Ju51qj6gGpI8dqE4bX0VYaiV4O4a/sZI3nbRE2tO0/QWBp1hQLfYLs3eNdIIHNFLAi
         ujiShJ4JNjEw6qCltwRNTlLi3pWFO0tJ3qiNx+m0nL8TkEqaAWGGsZbEE6vaRr/e3Yrb
         fcbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JAoLsfvQ;
       spf=pass (google.com: domain of 3ck0-xwkkamunvpyypww9rzzrwp.nzx@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3cK0-XwkKAMUnvpyypww9rzzrwp.nzx@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JLkrGAwpnTFCcP4JT10uBFFZJ7fpbgksevspB1ZX7hA=;
        b=exJlovRRSvOCThgjr1LT8sIvYoB+iER1IACZwD2dVYINhGqOdOs5nLmXVrawqXM7Zo
         Rw0k6ZVUHeEs/H7tHvBtKRYxODJwr8dRSh0KJNZ8yoZ6Mov6fxHpD1Q23wxB9dkfYCdi
         UCq97pZmlXEP2prBySMXe4MPbX4oXTVhHkcI53dPqQ7pkiLl7T1T4r5rsW6GhjFk/Fe/
         P/sSWzPP+XMtVG1xypKZKr82SkpIUGlT7f0MZmQs60ZA1tl6C2A/Bk0Etq47tlEtMj6Z
         Y/+9hAfxl8eL06Fj5k5ajzUW0yJuPaeX7YU7HgBi+0LvQPgj19118moOxmJmtUuLSx9n
         RWYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JLkrGAwpnTFCcP4JT10uBFFZJ7fpbgksevspB1ZX7hA=;
        b=IfBJ3ov0IbTryJJIDKYmgYOqG/NxRiEJAFGt1hNe9EneKi1iDFxrnPdo4lL7ksvkWt
         dV2T7z2V69PUxYJMJ6bruiwCF3Vt5gXsnQjhJ7+pp0/dsgvzQW0mUjY5oDVk/u0vnXrT
         d0cjPtTfWoYJ7n8/T5KR+kvQFjU6DTOSeklM7ZQSDys91PDxFIkVk6MSVR2B/qGYCeQo
         vomFFVkB9399lo9bAJZwj59OY05eo1lnhMWzXfH5iz5pfNh7YhU9ovYj3/wbPOry/fAQ
         7yDjOviMGUaYYG1tUq4Uo4GqY22voGCI5uVL3A561DbG4CovXJEWDQR1qxPITbfU/XS6
         CPiA==
X-Gm-Message-State: AOAM531WVNFuQDIy8xLnDVu98Vmt7Wk17UT5n22DQf8EOS3AE7L25L8y
	ZTQBix0AWmEIVIIz8mAmY1c=
X-Google-Smtp-Source: ABdhPJy2m4JzY9hs5DMlzQrUR4p9+pRqCKdkMX0N8VIDNXuba6CcluO8blCrTJHGvaDJhtIwYHi13A==
X-Received: by 2002:a63:dc4a:: with SMTP id f10mr2962881pgj.394.1597943153469;
        Thu, 20 Aug 2020 10:05:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b602:: with SMTP id b2ls1485955pls.11.gmail; Thu, 20
 Aug 2020 10:05:53 -0700 (PDT)
X-Received: by 2002:a17:902:d88a:: with SMTP id b10mr3311669plz.117.1597943152982;
        Thu, 20 Aug 2020 10:05:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597943152; cv=none;
        d=google.com; s=arc-20160816;
        b=WAUisl0SiHorfSs1nX2Bormoy9EhjZL8m8oLTEoNq5QsLlCqzfixUvt9xyVD/4HTmt
         n3FphSK17a5x/Xygm9LaOqjjgmANjsXdGujgnoSyg9qTnkQuazAid/qMxsNSzuI2QPIw
         aCIVEorY/gRv+o3XRUIL7QeiGj63uWdFqaKH3NvXyOjbRzooJcnf6tOYtdNgYy0GydKQ
         GTHfzsMNpzQK8ZzV5Y2sk/25mIuOraZIkeurIzHjOpVhpBB71sst0WBgmdsSFidXx4JS
         nuAiS2xVoLbhmbK9GfiujOb1l9ONK7t3bbsU0NIZhrqhowBCAFkGs7G1MrU0XQvSNMBg
         8S5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=Iv89Xj9r4G2AFHTvNFTUszt55oudaNNsbG7Jzt5MM3M=;
        b=TOfEXJ8ChPewVqYKLmvcjLMiSnOanrBvx0P4Fz1th5ITYMaRrM2TGbWDxFxkG6Skob
         1Ox2bDhj+Zdfm8csghiN45gNKkE1UvL9YzAgon1ACrUImYcDILml+ZB3i0COC75LUt+6
         bknleoxYqzuou4Q4wDFzX6TTJZlXa2mi4I34PWzVnv9KGNOzdfhHblYfklmJLblXH2Zy
         21IhHGQftTtDw2y0zVA2eDeCpoMxAh2r5Gm0moZiToaJMWywlRZNdgS52/XtgeToPqWF
         PuP5ChJpEvGr7ltTQFz4/VJo0yOWlva5TJmwlF9jgqYF74dLh97d78uLvwIK9yGXTGNv
         WFQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JAoLsfvQ;
       spf=pass (google.com: domain of 3ck0-xwkkamunvpyypww9rzzrwp.nzx@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3cK0-XwkKAMUnvpyypww9rzzrwp.nzx@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id s76si176290pfc.1.2020.08.20.10.05.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Aug 2020 10:05:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ck0-xwkkamunvpyypww9rzzrwp.nzx@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id y7so1800155qvj.11
        for <clang-built-linux@googlegroups.com>; Thu, 20 Aug 2020 10:05:52 -0700 (PDT)
Sender: "ckennelly via sendgmr" <ckennelly@ckennelly28.nyc.corp.google.com>
X-Received: from ckennelly28.nyc.corp.google.com ([2620:0:1003:1003:3e52:82ff:fe5a:a91a])
 (user=ckennelly job=sendgmr) by 2002:a05:6214:1910:: with SMTP id
 er16mr3766114qvb.228.1597943152055; Thu, 20 Aug 2020 10:05:52 -0700 (PDT)
Date: Thu, 20 Aug 2020 13:05:40 -0400
In-Reply-To: <20200820170541.1132271-1-ckennelly@google.com>
Message-Id: <20200820170541.1132271-2-ckennelly@google.com>
Mime-Version: 1.0
References: <20200820170541.1132271-1-ckennelly@google.com>
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
Subject: [PATCH v3 1/2] fs/binfmt_elf: Use PT_LOAD p_align values for suitable
 start address.
From: "'Chris Kennelly' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>, Alexey Dobriyan <adobriyan@gmail.com>, 
	Song Liu <songliubraving@fb.com>
Cc: David Rientjes <rientjes@google.com>, Ian Rogers <irogers@google.com>, 
	Hugh Dickens <hughd@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Suren Baghdasaryan <surenb@google.com>, Sandeep Patil <sspatil@google.com>, 
	Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Chris Kennelly <ckennelly@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ckennelly@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JAoLsfvQ;       spf=pass
 (google.com: domain of 3ck0-xwkkamunvpyypww9rzzrwp.nzx@flex--ckennelly.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3cK0-XwkKAMUnvpyypww9rzzrwp.nzx@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Chris Kennelly <ckennelly@google.com>
Reply-To: Chris Kennelly <ckennelly@google.com>
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

The current ELF loading mechancism provides page-aligned mappings.  This
can lead to the program being loaded in a way unsuitable for
file-backed, transparent huge pages when handling PIE executables.

For binaries built with increased alignment, this limits the number of
bits usable for ASLR, but provides some randomization over using fixed
load addresses/non-PIE binaries.

Tested: verified program with -Wl,-z,max-page-size=0x200000 loading
Signed-off-by: Chris Kennelly <ckennelly@google.com>
---
 fs/binfmt_elf.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/fs/binfmt_elf.c b/fs/binfmt_elf.c
index 13d053982dd73..a980dc3704639 100644
--- a/fs/binfmt_elf.c
+++ b/fs/binfmt_elf.c
@@ -13,6 +13,7 @@
 #include <linux/module.h>
 #include <linux/kernel.h>
 #include <linux/fs.h>
+#include <linux/log2.h>
 #include <linux/mm.h>
 #include <linux/mman.h>
 #include <linux/errno.h>
@@ -421,6 +422,24 @@ static int elf_read(struct file *file, void *buf, size_t len, loff_t pos)
 	return 0;
 }
 
+static unsigned long maximum_alignment(struct elf_phdr *cmds, int nr)
+{
+	unsigned long alignment = 0;
+	int i;
+
+	for (i = 0; i < nr; i++) {
+		if (cmds[i].p_type == PT_LOAD) {
+			/* skip non-power of two alignments */
+			if (!is_power_of_2(cmds[i].p_align))
+				continue;
+			alignment = max(alignment, cmds[i].p_align);
+		}
+	}
+
+	/* ensure we align to at least one page */
+	return ELF_PAGEALIGN(alignment);
+}
+
 /**
  * load_elf_phdrs() - load ELF program headers
  * @elf_ex:   ELF header of the binary whose program headers should be loaded
@@ -1008,6 +1027,7 @@ static int load_elf_binary(struct linux_binprm *bprm)
 		int elf_prot, elf_flags;
 		unsigned long k, vaddr;
 		unsigned long total_size = 0;
+		unsigned long alignment;
 
 		if (elf_ppnt->p_type != PT_LOAD)
 			continue;
@@ -1086,6 +1106,9 @@ static int load_elf_binary(struct linux_binprm *bprm)
 				load_bias = ELF_ET_DYN_BASE;
 				if (current->flags & PF_RANDOMIZE)
 					load_bias += arch_mmap_rnd();
+				alignment = maximum_alignment(elf_phdata, elf_ex->e_phnum);
+				if (alignment)
+					load_bias &= ~(alignment - 1);
 				elf_flags |= MAP_FIXED;
 			} else
 				load_bias = 0;
-- 
2.28.0.297.g1956fa8f8d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200820170541.1132271-2-ckennelly%40google.com.
