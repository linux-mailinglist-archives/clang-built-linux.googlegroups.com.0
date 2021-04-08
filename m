Return-Path: <clang-built-linux+bncBDYJPJO25UGBBD47XWBQMGQEWMJAE2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id F2733358CE0
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:46:39 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id b20sf1710237qvf.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:46:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617907599; cv=pass;
        d=google.com; s=arc-20160816;
        b=STOpll21/bWNk6pQ8oYyQ+6lMMmQuH8j0S4UVqy8NCwNM88NQJshL88rRbUN02nejh
         9y83yrQBz19oCh7GhKXngIlrQbAlrnmqC8dKWSy2GP9uxyOc0JkrXLInhgnUYqKDl841
         /2Qcp8ClR/GDVjU+kkutVXBw6QG2aQBXuGZnIYowHXSK8PCcNIiCELS/SRDY4gdaQahQ
         fLIy7tyKVj3bx5cCm5+eT4/KRzZw30pB5Cx8OdURYFCZon66ITVqMhKUGi4Hy3IK/HmM
         I+7eeRsmrEL5eGSzCWpEzz5FzSAhcwaxnI/mkG8Z4uyLVMqjhU+txywT1y761DoNL1Ih
         95Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=7GqLD7vAQ63RF0c9fjDsRtUm1sZ2I/fbcuz2PzJfdMc=;
        b=sS6NfjJP0RDPvCY3R0WyJjrN0a/hwXMjFns2DVssZRtnBLXOZIYrbCUWcqWHH2gk+m
         tLkk4BjuL1kLmIE7ppIctFDyb1CZIk+ssmFt0BrvxXIAN/tJMOBiW5u/glMB/zNC4ULi
         p/bP0vdrKr+j+w3M7YFdSf/o6y3KCkYfSJfcU6pv/EiB+7AvXHq9Nfo9Ln6c86+GCfMT
         XsTAjJgx6F81lougC8pfMVsdVsAOTJ0w3LXl2uPe5M1mujOgF5dE8BGqmk9jQzpkovgb
         11FMFBl0XKFei1D3D6CQBkdMuQM+YPyk4rtygDedCVCN1SfNF2nGYmc6cVzEog5mYHZ+
         I/tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CsxGIoVi;
       spf=pass (google.com: domain of 3jk9vyawkapmiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3jk9vYAwKAPMiYZnVpgidZmnbjjbgZ.Xjh@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7GqLD7vAQ63RF0c9fjDsRtUm1sZ2I/fbcuz2PzJfdMc=;
        b=GTvVuLAIaddwkPrbPIAkeflVzHGsdGSlU0AQ+UYccxZi0+r6Og2sxLdf1ZVbPtNMHY
         8ojJ3s5zlgNYlRnTV2yogowolihy7HgfPeZ7qbYrYNvvfQtkkNRxOxBdNiJgm7i113rm
         sviShXj3C4Fr0myeetpQzBx3OoVacthgqVf/751LGoGFH5BeP/NlmHSsvqQmpBo+BSiq
         dIepNufTxGNeTZ+qZgXJmHUNLJveYLOeQo2S6aWH33FtYFOVJJI2CMnse6L3vutVlEn1
         T4DqatAlMCjBvCgjpWzUtrD9Zd4E5e9+v5/BdNc15uynwVdmzZPMRr2qvZmWB0OOxUqM
         Zsqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7GqLD7vAQ63RF0c9fjDsRtUm1sZ2I/fbcuz2PzJfdMc=;
        b=nXWQ1ht7pGuqFQPjdZsW8FgH4FEY89HMblO3G5n/ajESX16dss+BmHvXVvvcHh10cu
         gOlXk3/xpQgsEcXFkGgNTtvswtUBaxHW3j/V+d09qejzaBg8/gc7QSldJ6STvVwRG9DC
         T+CeevBY+g/zc8ZJLepVgMJ02nFFUmHuw53kQEWjF5LEnw+sTPq4WSf8yH3Fo9z/+gJ0
         VepjGJlgHDftQE/MF/PxXLvTTCrtviSWclIsz/iRvXqOgf7fYCmW5Gt/g/hoVt/vyCoM
         0TVew1BXtrYBarqJYO0/UUDSOeBtvki3iMJYDoDKNbmPCXo0aChdIvDD/wqG5xzidGNt
         zkig==
X-Gm-Message-State: AOAM533Kaslgba/8EaxlA6drNGo8IK7vyhkBPQbPzJVSH1HfEgPwJX+g
	0KlxHAmfCXhiRQyfes5vf1U=
X-Google-Smtp-Source: ABdhPJyeE/CH6qr9s1ZPwVpZF0iTvrSHc8h/I5FPJPmi859DiVx0Q/ven//n2X8dfoLagjvRFWfRPw==
X-Received: by 2002:a37:ef17:: with SMTP id j23mr9712899qkk.209.1617907599138;
        Thu, 08 Apr 2021 11:46:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:c83:: with SMTP id r3ls1858528qvr.5.gmail; Thu, 08
 Apr 2021 11:46:38 -0700 (PDT)
X-Received: by 2002:ad4:5851:: with SMTP id de17mr10565484qvb.6.1617907598749;
        Thu, 08 Apr 2021 11:46:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617907598; cv=none;
        d=google.com; s=arc-20160816;
        b=HsxqAHvoO9Iqt3eNlI6OXPu1ktZx4pliiA7ZAtQcqJCmGKm76/pWRd5ArQG9qTVijH
         rOvsLYisWsmOuTeeZTHopqIAZ/NoDkcsy5kZdKzfl7xd0ET3e5Uhn/74wxR3HyFf1OlD
         kygrZwfW3J0NZOVo9ixlQQ0m/OIsh5Cr+X2glGLyaBuUMcOA92SgxyjVSRUeoNHT6u8H
         QVTWmeWJWkbv9Gq0dVRzJKTdcOyOJOgYqHkvKrnatHW2szrpw0JVw7REgeh6u0do7GJZ
         5jycYv35jbjPgiP6U/9enivopPa/xYmZUdLi3LVK3/EfPaNGXZtLSN5T4MNAZF1491Fx
         /x+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=6gAnMk/3QmoHKKKOynZbE6ARTru22AXVPx9J9ennqYk=;
        b=WZSWvko4vgqyyJlg8tzBHcEgi1wZYDKRaEm1czGOhmylgN760VGonZQB/GDFf0JBAX
         6tiIJLREf3o8qzI0THpE4UXceW9xQz94+50iIyN3NgYvMP3D2ueGzVtnEch/erc5xjyq
         qgq7FBkmaaxB7MP7L2hkt/TM+qWcuGPecV4DN5pAaNVHyeMMW/bFsHYRmlQB9rerQF0E
         DKHbNtVdS8qzK49XxOSsnbUMwX83A9LxTtwI8zRB183km3VC4mBXFBxhJZ+/MdxKZFQ/
         EmHfGLHmWBNB0X15NWV4hlQq0v37j+bf+mxEAXM5QfOAEGJCmvxMuSs40/oxhlAAm7HH
         L5hA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CsxGIoVi;
       spf=pass (google.com: domain of 3jk9vyawkapmiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3jk9vYAwKAPMiYZnVpgidZmnbjjbgZ.Xjh@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id d3si19879qki.3.2021.04.08.11.46.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:46:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jk9vyawkapmiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id t24so1884330qkg.3
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:46:38 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:258e:3713:7415:ce58])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:2628:: with SMTP id
 gv8mr10352013qvb.19.1617907598457; Thu, 08 Apr 2021 11:46:38 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:46:31 -0700
In-Reply-To: <20210407152621.3826f93e893c0cf9b327071f@linux-foundation.org>
Message-Id: <20210408184631.1156669-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210407152621.3826f93e893c0cf9b327071f@linux-foundation.org>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v2] gcov: re-fix clang-11+ support
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	maskray@google.com, nathan@kernel.org, ndesaulniers@google.com, 
	oberpar@linux.ibm.com, psodagud@quicinc.com, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CsxGIoVi;       spf=pass
 (google.com: domain of 3jk9vyawkapmiyznvpgidzmnbjjbgz.xjh@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3jk9vYAwKAPMiYZnVpgidZmnbjjbgZ.Xjh@flex--ndesaulniers.bounces.google.com;
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

LLVM changed the expected function signature for
llvm_gcda_emit_function() in the clang-11 release.  Users of clang-11 or
newer may have noticed their kernels producing invalid coverage
information:

$ llvm-cov gcov -a -c -u -f -b <input>.gcda -- gcno=<input>.gcno
1 <func>: checksum mismatch, \
  (<lineno chksum A>, <cfg chksum B>) != (<lineno chksum A>, <cfg chksum C>)
2 Invalid .gcda File!
...

Fix up the function signatures so calling this function interprets its
parameters correctly and computes the correct cfg checksum. In
particular, in clang-11, the additional checksum is no longer optional.

Link: https://reviews.llvm.org/rG25544ce2df0daa4304c07e64b9c8b0f7df60c11d
Cc: stable@vger.kernel.org #5.4+
Reported-by: Prasad Sodagudi <psodagud@quicinc.com>
Tested-by: Prasad Sodagudi <psodagud@quicinc.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
---
Changes V1 -> V2:
* Carried Nathan's reviewed-by tag.
* Rebased on mainline, as per Andrew.
* Left off patch 2/2 from the series
https://lore.kernel.org/lkml/20210407185456.41943-1-ndesaulniers@google.com/
  I assume that dropping support for clang-10+GCOV will be held
  separately for -next for 5.13, while this will be sent for 5.12?

 kernel/gcov/clang.c | 29 +++++++++++++++++++----------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
index 8743150db2ac..c466c7fbdece 100644
--- a/kernel/gcov/clang.c
+++ b/kernel/gcov/clang.c
@@ -70,7 +70,9 @@ struct gcov_fn_info {
 
 	u32 ident;
 	u32 checksum;
+#if CONFIG_CLANG_VERSION < 110000
 	u8 use_extra_checksum;
+#endif
 	u32 cfg_checksum;
 
 	u32 num_counters;
@@ -145,10 +147,8 @@ void llvm_gcda_emit_function(u32 ident, const char *function_name,
 
 	list_add_tail(&info->head, &current_info->functions);
 }
-EXPORT_SYMBOL(llvm_gcda_emit_function);
 #else
-void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
-		u8 use_extra_checksum, u32 cfg_checksum)
+void llvm_gcda_emit_function(u32 ident, u32 func_checksum, u32 cfg_checksum)
 {
 	struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
 
@@ -158,12 +158,11 @@ void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
 	INIT_LIST_HEAD(&info->head);
 	info->ident = ident;
 	info->checksum = func_checksum;
-	info->use_extra_checksum = use_extra_checksum;
 	info->cfg_checksum = cfg_checksum;
 	list_add_tail(&info->head, &current_info->functions);
 }
-EXPORT_SYMBOL(llvm_gcda_emit_function);
 #endif
+EXPORT_SYMBOL(llvm_gcda_emit_function);
 
 void llvm_gcda_emit_arcs(u32 num_counters, u64 *counters)
 {
@@ -293,11 +292,16 @@ int gcov_info_is_compatible(struct gcov_info *info1, struct gcov_info *info2)
 		!list_is_last(&fn_ptr2->head, &info2->functions)) {
 		if (fn_ptr1->checksum != fn_ptr2->checksum)
 			return false;
+#if CONFIG_CLANG_VERSION < 110000
 		if (fn_ptr1->use_extra_checksum != fn_ptr2->use_extra_checksum)
 			return false;
 		if (fn_ptr1->use_extra_checksum &&
 			fn_ptr1->cfg_checksum != fn_ptr2->cfg_checksum)
 			return false;
+#else
+		if (fn_ptr1->cfg_checksum != fn_ptr2->cfg_checksum)
+			return false;
+#endif
 		fn_ptr1 = list_next_entry(fn_ptr1, head);
 		fn_ptr2 = list_next_entry(fn_ptr2, head);
 	}
@@ -529,17 +533,22 @@ static size_t convert_to_gcda(char *buffer, struct gcov_info *info)
 
 	list_for_each_entry(fi_ptr, &info->functions, head) {
 		u32 i;
-		u32 len = 2;
-
-		if (fi_ptr->use_extra_checksum)
-			len++;
 
 		pos += store_gcov_u32(buffer, pos, GCOV_TAG_FUNCTION);
-		pos += store_gcov_u32(buffer, pos, len);
+#if CONFIG_CLANG_VERSION < 110000
+		pos += store_gcov_u32(buffer, pos,
+			fi_ptr->use_extra_checksum ? 3 : 2);
+#else
+		pos += store_gcov_u32(buffer, pos, 3);
+#endif
 		pos += store_gcov_u32(buffer, pos, fi_ptr->ident);
 		pos += store_gcov_u32(buffer, pos, fi_ptr->checksum);
+#if CONFIG_CLANG_VERSION < 110000
 		if (fi_ptr->use_extra_checksum)
 			pos += store_gcov_u32(buffer, pos, fi_ptr->cfg_checksum);
+#else
+		pos += store_gcov_u32(buffer, pos, fi_ptr->cfg_checksum);
+#endif
 
 		pos += store_gcov_u32(buffer, pos, GCOV_TAG_COUNTER_BASE);
 		pos += store_gcov_u32(buffer, pos, fi_ptr->num_counters * 2);

base-commit: 3fb4f979b4fa1f92a02b538ae86e725b73e703d0
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408184631.1156669-1-ndesaulniers%40google.com.
