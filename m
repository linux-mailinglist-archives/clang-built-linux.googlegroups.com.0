Return-Path: <clang-built-linux+bncBDJJN2O66QEBBDVWQH5AKGQEQASJPEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D67724E3EE
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 01:38:56 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id v10sf1990313plp.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 16:38:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598053135; cv=pass;
        d=google.com; s=arc-20160816;
        b=i/URcJ1RY83ud6/Mp4rgIEI+ftjl8SJodAUc74u9jrFFA3828mvlXJdJkxxzepQZqZ
         lh5BfWj1d2J9zj1zo7X3V/EalT0kOIlCLjEHvAeOjI4Dlqn1XIpm/eq+If24XEDZBDUx
         dI4cHJpp1mWMu2WEl0MDCNdQ4vb16c20zJlE/L2tglMJ1l66EHz7Mi4UlCNwP2qUsGoD
         mcb+kEWOOTn2JA5flr74TxC2VfLQQdZ0bb4pSn62eWSuAXv5M/l4ianLmnBwNOgB8Ekt
         8BOhPy8yq5qTHnPOl9Wrbx1LJocCNynM8eWL8E4oqe3gwPBYLKwNzZLPkHEXDJFjHDAS
         RlVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=ihOR2rJCoBFklhlZx0bfmtW2H1LbAcynVyBXyVwVLXM=;
        b=FHJXiOdCe+5eA2YYjmyDlg++3JTvYSsuukw79ncDHCMASFZx0d14H4SfadgqP3+NSc
         rJjTioBenWDH0FDfVojsDwrFoz8TwjdTmt35OOsC0YMpaBVe2mDLCN/5vYwyvdpu913d
         RES+zb3iSql5fAMyDAnfRx/RQIMnSJEwhVKOuwrE9LKqMsGzX2RVo97p+Gwvoil1P6n4
         IGYo16xgcxdmKF42b6U1uvDQ711rXI2s47jVeU7gdEx5qTbVXTZ23VBSkkJEqTgZj/F/
         LAv78WPAg+UPxbfro8GPFsZD5QSIyK3pTCpTR9HOmp4NQ6mcIf46kajQvUGHIe77SFRN
         BvGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tLmds5aw;
       spf=pass (google.com: domain of 3dvtaxwkkamqmuoxxovv8qyyqvo.myw@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3DVtAXwkKAMQmuoxxovv8qyyqvo.myw@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ihOR2rJCoBFklhlZx0bfmtW2H1LbAcynVyBXyVwVLXM=;
        b=Mrm0O75MDPMbhc0m9DFZ+7EKRYPH0VIU8f7O/GSubx0I4DDk2QlhPhQ02De5L1qQJc
         bleUNaOcXa8SAfgkm0ACarHhG6DYbe/dap4LnewbiIR71Pf9bWtTj0tH1QvcAcZeCxVV
         Cq6Kl5OJRWD9MKz2RnUSU37XBA6UkpcOsx/H7UcfJcwo+inShkdfuKAz8uKGI48ih+6/
         mUtXEcppSeOQCtb/PxveZpvUyPCegLz4oDW/Nw4gPZbHTSl09X+PhjVyMZfAm7N7MUBe
         IGJiVoDY5xlV5TPg7BFYPPwxoYDaOdeCnwrcogLJoksXjjlCm3u4Wkv/Jvf3pmZZ3fpO
         61xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ihOR2rJCoBFklhlZx0bfmtW2H1LbAcynVyBXyVwVLXM=;
        b=LoUQheG/DNpvyShEghzWNusJ9hbTs3cWsr2yj0Ov6RKkCA+DhlfaCVvjuLn+5I62mN
         E7s60srvUGS6Elats+ozZpqAEbjxr0zShE/QXeBXe9lCPHL2XYsuey1IWpvYF0JcO1wf
         2Fbm+hjddOfhsCXbl6BTXI7E6Goe9OuwYrOzesrb5/kZ5IrBdA0Cp4Buu89cGW/YUGfD
         VQAr98WxsRLzaBazK6b0MrPRwDqCroKeKr/XVuFSD7iBiM5kg4fPzcp7RX5DCRWMHCk8
         2F1DXDkg27EhMQcV7bBGlhR5BdMxANA830R+ytfxcjUChPGnNazztgW+nMTb8b5iqXSR
         YVMA==
X-Gm-Message-State: AOAM533WCk6zJ+vFcel9VKPXkxaDSXUxT2Ah7G6ggDmKn4KH7gnC545h
	vpGUSqrezRFCdWNVhKqWbTQ=
X-Google-Smtp-Source: ABdhPJxOs2stcSW17V8+FvexaCmecmeCc/c6VPYGZguaYMBNBklNlGYahXUxhMkthUDFIZrZ7l2rVg==
X-Received: by 2002:a63:5fc9:: with SMTP id t192mr3938280pgb.269.1598053134962;
        Fri, 21 Aug 2020 16:38:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c252:: with SMTP id 18ls1717058plg.3.gmail; Fri, 21
 Aug 2020 16:38:54 -0700 (PDT)
X-Received: by 2002:a17:902:c410:: with SMTP id k16mr4173790plk.340.1598053134500;
        Fri, 21 Aug 2020 16:38:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598053134; cv=none;
        d=google.com; s=arc-20160816;
        b=qQ1WEn8Ka4QsuTNXvDiFO6/JHb7sHmeluHI6avKanfQgoC4C40RVJa1vDpQVsXnQWH
         JdqmL3Gy+iKUJhHUaFRFNHp67PcwqphYPgKtvqgTwnLdhxC0OUZNjI1JCZcVk0J8gC1G
         mUAt1WOjCmvxi86Y9a/z60pot1UA0jVAzGVgVhED9n8oFB7HrW5F2318cH0puqulIWbB
         Z3lVEe4kFcISFjb7JqREV+fdnE2JkN8xaxy/Ed1Twd0/ivE8N+xey16oteM0sXMvJgLh
         0gTa0eX80Sk6ssyRWO6LyhdLf0kcUnnuMVTQk5TOtiyE/kSDtnqr3AF7+gi5YItzRmI8
         /4fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=wTTHOHLUpSJsOh9SXDMCY9S+w0wdFVpDu5cnszimX/A=;
        b=AFNmeggVgb3CUliySLBTFi0xdJKbTZufeUp3w7XypjmiYsEc2UJ7QZK+9C1B+exWBO
         wdfkh2R86YwhRvMks62uH5bPi0FKIlDWAG9z+m7DKjNQ4s8f8CEWn00HrxEAhT/LekMe
         E5reMrEPXQ0K3ESYHw9GHyGNBWR3mEVR8dMiAIy1k/xQMeX4H1JNem7tVfDqsxz0ezRU
         IdBiTrE/10sK6fEN/81wYOoTgEdBTOBQmbAiScAY7YByVks0FDK2EbQG/uAbaVAx2dyN
         6UfY3YLBbPyGqL6suqK6HvP27Vd0662mtJz80+sQgLtole9qn0yBddrkJDaOeqRFfL7F
         oRmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tLmds5aw;
       spf=pass (google.com: domain of 3dvtaxwkkamqmuoxxovv8qyyqvo.myw@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3DVtAXwkKAMQmuoxxovv8qyyqvo.myw@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id t13si199403plr.0.2020.08.21.16.38.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 16:38:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3dvtaxwkkamqmuoxxovv8qyyqvo.myw@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id v16so2426175qka.18
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 16:38:54 -0700 (PDT)
Sender: "ckennelly via sendgmr" <ckennelly@ckennelly28.nyc.corp.google.com>
X-Received: from ckennelly28.nyc.corp.google.com ([2620:0:1003:1003:3e52:82ff:fe5a:a91a])
 (user=ckennelly job=sendgmr) by 2002:a05:6214:184b:: with SMTP id
 d11mr4672334qvy.21.1598053133560; Fri, 21 Aug 2020 16:38:53 -0700 (PDT)
Date: Fri, 21 Aug 2020 19:38:47 -0400
In-Reply-To: <20200821233848.3904680-1-ckennelly@google.com>
Message-Id: <20200821233848.3904680-2-ckennelly@google.com>
Mime-Version: 1.0
References: <20200821233848.3904680-1-ckennelly@google.com>
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
Subject: [PATCH v4 1/2] fs/binfmt_elf: Use PT_LOAD p_align values for suitable
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
 header.i=@google.com header.s=20161025 header.b=tLmds5aw;       spf=pass
 (google.com: domain of 3dvtaxwkkamqmuoxxovv8qyyqvo.myw@flex--ckennelly.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3DVtAXwkKAMQmuoxxovv8qyyqvo.myw@flex--ckennelly.bounces.google.com;
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
 fs/binfmt_elf.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/fs/binfmt_elf.c b/fs/binfmt_elf.c
index 13d053982dd73..96370e3e36872 100644
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
@@ -421,6 +422,26 @@ static int elf_read(struct file *file, void *buf, size_t len, loff_t pos)
 	return 0;
 }
 
+static unsigned long maximum_alignment(struct elf_phdr *cmds, int nr)
+{
+	unsigned long alignment = 0;
+	int i;
+
+	for (i = 0; i < nr; i++) {
+		if (cmds[i].p_type == PT_LOAD) {
+			unsigned long p_align = cmds[i].p_align;
+
+			/* skip non-power of two alignments as invalid */
+			if (!is_power_of_2(p_align))
+				continue;
+			alignment = max(alignment, p_align);
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
@@ -1008,6 +1029,7 @@ static int load_elf_binary(struct linux_binprm *bprm)
 		int elf_prot, elf_flags;
 		unsigned long k, vaddr;
 		unsigned long total_size = 0;
+		unsigned long alignment;
 
 		if (elf_ppnt->p_type != PT_LOAD)
 			continue;
@@ -1086,6 +1108,9 @@ static int load_elf_binary(struct linux_binprm *bprm)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821233848.3904680-2-ckennelly%40google.com.
