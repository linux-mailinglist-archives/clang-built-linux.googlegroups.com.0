Return-Path: <clang-built-linux+bncBDJJN2O66QEBB7OJSH4QKGQEOGERZ6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2AD234B2D
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 20:37:51 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id d131sf21470764qke.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 11:37:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596220670; cv=pass;
        d=google.com; s=arc-20160816;
        b=sETYSFhNXvGgWlPOI/7I2U5218Sw5u205OQKbW971WtJn6Fsmfg2/+496mJJZhnbhm
         UsNEFsAQn73+2JVXn84q8tKjnf4rl0DLEzVCZaj3gZHW+nxNQmZ9pAdDo5d4DR5EPwM3
         WBk5EGqLGFpKIxY1e5rtsPtZokzoFrLY2+nYRd8Q8z/qYcPrYrcBZu5SwhO10BvUKkyA
         Io7KwVahs/9hvuxCQGDTqMXCHPgibDCvKetOWQ0aaFSN3KSpCVdGCKJY2zf60hhFTUP8
         th42kTLovKpghiYow7eF4pKCue4osoGLfPwOitdWsBPRlxZi1QoS9npMfuWs2mxIBgwF
         I4Cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=tkcb7lWon+ozHO979sLk3aCEMSpQ3BuFU99EyXsQe1c=;
        b=S6hgJn1U0sltc0C5ciStjPFvkme4swWNQuu6QG4gaxji9HRK7OcDBv8hvTppn2ZNvF
         nAyxkYurwZ0F21pLn6+dHtimixYjx4lkTc+21NG4yrFJmcDit9qa6XN8MRdkm5z7BTit
         uKaiuGNrCJOcU3Ns5CP609wlPL8AreFVCvdilmla92vfmhQoIQIjFyc1SriXVzhZPTh+
         4+wT76FCrkTHW2NBs3pT94GGAXwbkDgVw45EsX9CWRIA/v9gXXoYYTtVaDoSKT1Krxd7
         9zO3GrJxG6FijxqXuIj+8/sqH3SKJgHfceEnFbzOrSTMZVcDHwf9Y0Eu5D81MNcMRE19
         K0xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BFtthBoR;
       spf=pass (google.com: domain of 3_wqkxwkkafg2a4dd4bbo6ee6b4.2ec@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3_WQkXwkKAFg2A4DD4BBO6EE6B4.2EC@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tkcb7lWon+ozHO979sLk3aCEMSpQ3BuFU99EyXsQe1c=;
        b=ke9HVe9w7ghqmMwnV6/lu9/qKF3IzOSxRtRkr6QkRZCfMJ4wG3WcjRiHPlLWRBVe+E
         1xmU2KFpU4ytTq7qhIbb00jWlgb8YcaotrXrsxiI93lKs8OtSctUjaj6SiB48Jbk8ruP
         DYaOf1zhWFvV/QYX59DOCmT5T3mTfHcG0xwMfxwx48lVveCbJ0zZHyvdQJBOAAqPYvpa
         gn7gwADt2B7XtsDxb5ER8V+tv+e47Vr7DTnfR/fSMl10lJjZeFcbm8l/mUPXXVCJk+3E
         VeK2ItvtrppPybg9i1qX/5stXo2OoemxlDLcgWQYW93HQZ4gho6/5jOlTlVipy3EDo+0
         f/jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tkcb7lWon+ozHO979sLk3aCEMSpQ3BuFU99EyXsQe1c=;
        b=bc50mwVHcDvDXqfnUyiDffCQiF4QkzbFlf82h0j0AUvnhhl2xXg4CcTzenVqTo66Qj
         JoK/l4SPCBmmnvlyPy6rTw5/VH0iDQr8EFvhghlR4Ll8gkIbErbuGVBNkGpkQNHFl1Vv
         Nwb8rWQXGbwdJoks8JGp0BFKeJFL3i+W7bipGeJwhVCNxHTeYItQHrjuthv2jmiNXM0F
         avg4F2UsF38bjgm0MberQEcpnxLtoE9C69weXC9ESLeNVcA1znIzXz4zKUlOCLrj5gC6
         b7QkjG1rNrRExV3kvSJhEVlyobH+3WM6TE+1PaTJGI2KvvUEqVUGTVEqF4Z9EmhJldzo
         KJSw==
X-Gm-Message-State: AOAM530OENmETcbVuBa5BWHe3ODGu/v7cp5St0BtBiBChyn5abljX+RF
	Dw0OhUk/BcxcTZ0lwVCAkFs=
X-Google-Smtp-Source: ABdhPJww+otcS3OWglZXp1uQJQmjA7ZT2UETPU+tXcHlcTOSq9xH/G+NTc5K7KyUsPguD9MOyq0Ifw==
X-Received: by 2002:ac8:564f:: with SMTP id 15mr5105712qtt.54.1596220669963;
        Fri, 31 Jul 2020 11:37:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ee18:: with SMTP id i24ls4592652qkg.10.gmail; Fri, 31
 Jul 2020 11:37:49 -0700 (PDT)
X-Received: by 2002:ae9:c20a:: with SMTP id j10mr5433754qkg.254.1596220669496;
        Fri, 31 Jul 2020 11:37:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596220669; cv=none;
        d=google.com; s=arc-20160816;
        b=Us4SNa752hSEqUezsjzkEnauQ7yw45fnXVhikcyM/iw60zlgJlTT1+TRN3f/PV0/zl
         X/p+0hS13ZKKQzay0obLu/2I324S/oCEHit9HSjaDRxAJ/ttOo1jHelJbyMHyUuLcIQq
         L/5U9oIQL8wkdlWeYTZJ+raelK/e/ZGgWy5hxqrm4SwdHTWJI+AUnb2sq2uJjep9u03E
         rFoZpsyNxF1O1Xb3O8gYnhT0sWbBYEN5vtcitgkgSr5Q5DjLrs4mayC/Pd9Xe+DMv7Dz
         ReHQPPBj4rtWTRyYkOUsYtA9WdsSwAz/LB5mbmY4x62QCXBwlqnoJVkwgB62zOFp2tCE
         gl7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=zM3dgZxHGwtay7ZIQFv5BfEN+wOLWmAIUQFsf0Z3VmM=;
        b=BUsdGUtB6rarTWtMfX3d2k1jdc4czYOD4Sa3X5SbpdXNhsScAAVM1oVtNU2LI/uDlh
         SUAq0v7nZPlYRb85NabZfhXedxj7RHZVDz9y2AzLPgEDr1D0c1u4toUr2AJUDK6qwvai
         rDPngIqB0cen2/DoiZAnm2Fg4oCYjqICFJkxQBqwNTqyRBdqnBFeCRF+Ktr0V/+cPFN/
         I6/RSPw/9L00hsFTRXzoCWzMY27l//3VRaqNleKlkFZlsbq6m3UNAhzYUaMCjHxmfI8X
         q79YzAPsu1hsipCb4SxvM5ma2amKQbxdXv4p/SkmkUbmkootIw3whsrQXODwlSEo9g3u
         laBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BFtthBoR;
       spf=pass (google.com: domain of 3_wqkxwkkafg2a4dd4bbo6ee6b4.2ec@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3_WQkXwkKAFg2A4DD4BBO6EE6B4.2EC@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id s124si335848qke.3.2020.07.31.11.37.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 11:37:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3_wqkxwkkafg2a4dd4bbo6ee6b4.2ec@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id m13so2775457qth.16
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 11:37:49 -0700 (PDT)
X-Received: by 2002:a0c:fa85:: with SMTP id o5mr5404015qvn.91.1596220669093;
 Fri, 31 Jul 2020 11:37:49 -0700 (PDT)
Date: Fri, 31 Jul 2020 14:37:43 -0400
In-Reply-To: <20200731183745.1669355-1-ckennelly@google.com>
Message-Id: <20200731183745.1669355-2-ckennelly@google.com>
Mime-Version: 1.0
References: <20200731183745.1669355-1-ckennelly@google.com>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
Subject: [PATCH 1/2 v2] fs/binfmt_elf: Use PT_LOAD p_align values for suitable
 start address.
From: "'Chris Kennelly' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>, Alexey Dobriyan <adobriyan@gmail.com>, 
	Song Liu <songliubraving@fb.com>
Cc: David Rientjes <rientjes@google.com>, Ian Rogers <irogers@google.com>, 
	Hugh Dickens <hughd@google.com>, Andrew Morton <akpm@google.com>, 
	Suren Baghdasaryan <surenb@google.com>, Sandeep Patil <sspatil@google.com>, 
	Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Chris Kennelly <ckennelly@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ckennelly@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BFtthBoR;       spf=pass
 (google.com: domain of 3_wqkxwkkafg2a4dd4bbo6ee6b4.2ec@flex--ckennelly.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3_WQkXwkKAFg2A4DD4BBO6EE6B4.2EC@flex--ckennelly.bounces.google.com;
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
 fs/binfmt_elf.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/fs/binfmt_elf.c b/fs/binfmt_elf.c
index 9fe3b51c116a6..24e80302b497d 100644
--- a/fs/binfmt_elf.c
+++ b/fs/binfmt_elf.c
@@ -421,6 +421,25 @@ static int elf_read(struct file *file, void *buf, size_t len, loff_t pos)
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
+			if (cmds[i].p_align & (cmds[i].p_align - 1))
+				continue;
+			if (cmds[i].p_align > alignment)
+				alignment = cmds[i].p_align;
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
@@ -1086,6 +1106,10 @@ static int load_elf_binary(struct linux_binprm *bprm)
 				load_bias = ELF_ET_DYN_BASE;
 				if (current->flags & PF_RANDOMIZE)
 					load_bias += arch_mmap_rnd();
+				alignment = maximum_alignment(
+					elf_phdata, elf_ex->e_phnum);
+				if (alignment)
+					load_bias &= ~(alignment - 1);
 				elf_flags |= MAP_FIXED;
 			} else
 				load_bias = 0;
-- 
2.28.0.163.g6104cc2f0b6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731183745.1669355-2-ckennelly%40google.com.
