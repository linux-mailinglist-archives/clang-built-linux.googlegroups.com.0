Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7OG26BQMGQEUQX2RLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 0171135E673
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 20:31:27 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id cq14-20020a17090af98eb029014de92947desf8296483pjb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 11:31:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618338685; cv=pass;
        d=google.com; s=arc-20160816;
        b=H2d6TLbwJtDTNCPrMi81KEFIOxfrG1Sm09oyTgsBriGITNARMnhxhDMgmPsU4QYJyy
         6NO8WnFhIf/5zLodxpSusHEcmPe2Wj6SH5EfFsHt+TY2EVBsk/Pi4j+mfdECWk++Idsq
         oGoOjqxBUUrpDrXBaRM0HPzal1e7M8UnR2MRljyCJZshIsb42Zyh7scc3i3rev6UjKof
         zWxTmMgGfnPn0uzNxkli7oEDAEiZrmT722UrTnWULF0JFUVIZq2rslXBZosdcuyoWVjx
         G3l3Ajh96ey1XB+8cu8wUyfxDTvO4nm40miX89vnFeSpaild2UCoABJQhiAKLKnLIWT1
         IJbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=Rrg+pGmCBdvqjCwOzfm6YE5NEm938k6IWmEA0ixGg+Q=;
        b=kLXfllN2do3pwXtyqS81ZUzLUioDFUYA3qga6Z3uQmWSkkM+alUOZOQiNH+9IgNsHn
         Rn+IsgUzWqt34mjKl9v8E0Xkqz260yH2++4vLj63tg0pjsMl0OLp8sH+ieCCOOuMeq0D
         4pbnsVuXIq6w2Sa4A+iairDeIEa6U0i+nrQVp5TCg/sgK3ocrfb5EyxDg7o43YteG4ks
         /jrrZhQPQhQ0eECX6jAKkISBWDKLubjM0yGeO2o11+6WxYwae0Swwz0KRce93kwbVtGK
         OYDuGemwQPnhGh/IdTm+Vy2747cYirb7FJVEJCVueLSdHWJ5dqYW4S/ho2bqeW+eI57G
         AGyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ubDbNdWu;
       spf=pass (google.com: domain of 3e-n1yawkacqndesaulniersgoogle.com@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3e-N1YAwKACQNDESAULNIERSGOOGLE.COM@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Rrg+pGmCBdvqjCwOzfm6YE5NEm938k6IWmEA0ixGg+Q=;
        b=q3bN8BoLKmW35DlUEclcek6qDFlwKsSmjO6NkYf+LxGrdMdch9p6Hs1XwKSs+nkckS
         MYt9zvEsTyN0O5Qsx8IC3x2MHXcmE5YmJkj5HuUd14KZn21FzhZ023H181uGlhalBw4m
         sOw07MQsBcI+OvfA5pRD2KO1drTgp1BOr8RP1wQjCZ5B14DPFgNiHAT8uLedXXWEoIxb
         D1o24RGGVEiHBuvtR7fk/9hRS/4vBeBypO5TAP1mZlCzAQU1z87JE4SB0JiqGMtVy8oA
         OjvrMJaKTEGobsLgnZfjQGyaCL3sfQgXHrAngqV8FVbj4pauIkDExv2M41I9A2EY6dW3
         9dhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rrg+pGmCBdvqjCwOzfm6YE5NEm938k6IWmEA0ixGg+Q=;
        b=sBWDmirvwap39Um2B4FEuIIoSA2FJEtzM+le9pWnCNVXXGwOgEk9rlRGgqI0eJZNFf
         ++flFlUxW8gI7xv6JAKwKHra1ivFnNMuMxL6q2I6/YAgdb+1jLIK4pG93Rxdrq0ui++Q
         qyv4GuEyQrN0OX7u1S4ixuJ8V5CxrOqOrqeM9gzUynB8ABC8M2NIc6ScXSMKPQp3yC6f
         0H63dBevAERfNYSjVk4HKq2DGZgwGjQR6rjkqMxV9oSin5Aipog3QetO7X1xtSlHREoW
         mUk76dpEhOunxRy7c4DYwnViuMYxcQfttDCFBGIoGTEcdU4UQqEWW99facK/yC4ipti4
         gseg==
X-Gm-Message-State: AOAM530rSMV5lBt0l5I+EKIVj2qN7TL2aJnPu2pTPDfptdqlmZQj0t5K
	wmSwe9Rvz0nd+qfw90JvJFc=
X-Google-Smtp-Source: ABdhPJxLViymmuwMrLpEFVbigYqT9qXRynkjwaMGnfN+05RU7a9kn13nmgMAe5sXA1MbFqefkoIItA==
X-Received: by 2002:a05:6a00:1c77:b029:241:5c43:8cf5 with SMTP id s55-20020a056a001c77b02902415c438cf5mr31467579pfw.10.1618338685302;
        Tue, 13 Apr 2021 11:31:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:22c8:: with SMTP id y8ls10024685plg.2.gmail; Tue, 13
 Apr 2021 11:31:24 -0700 (PDT)
X-Received: by 2002:a17:90a:850c:: with SMTP id l12mr1388202pjn.224.1618338684743;
        Tue, 13 Apr 2021 11:31:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618338684; cv=none;
        d=google.com; s=arc-20160816;
        b=LmhzENudjy2NYYgiL0a0vl6aaWUEkWq84to08UHtxTXV7HaQTbQ0IpEZJH2/0VEtmr
         Q/Ke02wkTWmjbiEbiP7ny1uTUOJp3cVYDc42MmmB7mw8ZHVCI2o79Zb8N1OgDnZYphIN
         QrlPtS08A3U6RFM0hVZyNB83ahmK7t/rFQ9d15XvMGuJu2e3t18EfxW9M9RERTKQquil
         gGLgDtl2hFdnVTdPLEQ6tzer7oTwyBv3C4vQB+hxDkEV/NGo7LkUQQXnOXj9wIuf+jzh
         WbmW88oNvLFoug9MWhWOJdBzMjJw+YnQrCHl3QjCZ8/VZ1aYaXqBWt4w/kUVRYbYZNgh
         ItLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=wP3BEooCPpuS3ZpV7a/AbrV/b1fsR44Fq9Twjjsk8fY=;
        b=yxWM361OLK5XiUXjAkkYMWP9ICngixTluB4siOjeQMQu2ehnQCZxCi3dhYLD9r29/h
         qugfAEPnaZztdisHSWambEYfXw0rBlV/zHpcXmOswym7AYBz7SeOuB8RE1d3vCEKRdYF
         mMiLVbjBzdqED+FNV6F8jt3nqMYaSdW9XhBvP97PrwfaYp4jlsHZUUlYXTmljk/HXZUF
         AX3pM/0fga/MdpN1fdLt19LKsoBdDE/5QVrck0jUZXsV47b9Xu4xB4h/zOakEe6E27w9
         mcdaUrjFm2NNTa9Yp1k3PsZORU/qP0PBHv5YrQqFXMXiibLvEcII2x3Bc6grD04eKTay
         e0mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ubDbNdWu;
       spf=pass (google.com: domain of 3e-n1yawkacqndesaulniersgoogle.com@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3e-N1YAwKACQNDESAULNIERSGOOGLE.COM@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id b14si410395plh.1.2021.04.13.11.31.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 11:31:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3e-n1yawkacqndesaulniersgoogle.com@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id e185so8052063ybf.4
        for <clang-built-linux@googlegroups.com>; Tue, 13 Apr 2021 11:31:24 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:49f8:17:36c4:aa51])
 (user=ndesaulniers job=sendgmr) by 2002:a25:7491:: with SMTP id
 p139mr16469270ybc.53.1618338683899; Tue, 13 Apr 2021 11:31:23 -0700 (PDT)
Date: Tue, 13 Apr 2021 11:31:12 -0700
Message-Id: <20210413183113.2977432-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v3] gcov: clang: drop support for clang-10 and older
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	Peter Oberparleiter <oberpar@linux.ibm.com>, Fangrui Song <maskray@google.com>, 
	Prasad Sodagudi <psodagud@quicinc.com>, Johannes Berg <johannes.berg@intel.com>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ubDbNdWu;       spf=pass
 (google.com: domain of 3e-n1yawkacqndesaulniersgoogle.com@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3e-N1YAwKACQNDESAULNIERSGOOGLE.COM@flex--ndesaulniers.bounces.google.com;
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

LLVM changed the expected function signatures for llvm_gcda_start_file()
and llvm_gcda_emit_function() in the clang-11 release.  Drop the older
implementations and require folks to upgrade their compiler if they're
interested in GCOV support.

Link: https://reviews.llvm.org/rGcdd683b516d147925212724b09ec6fb792a40041
Link: https://reviews.llvm.org/rG13a633b438b6500ecad9e4f936ebadf3411d0f44
Link: https://lkml.kernel.org/r/20210312224132.3413602-3-ndesaulniers@google.com
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Acked-by: Peter Oberparleiter <oberpar@linux.ibm.com>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Cc: Prasad Sodagudi <psodagud@quicinc.com>
Cc: Johannes Berg <johannes.berg@intel.com>
---
This patch is
https://lore.kernel.org/lkml/20210412214210.6e1ecca9cdc5.I24459763acf0591d5e6b31c7e3a59890d802f79c@changeid/
and
https://lore.kernel.org/lkml/20210312224132.3413602-3-ndesaulniers@google.com/
rolled into one, then rebased on linux-next with
https://lore.kernel.org/lkml/20210412214210.6e1ecca9cdc5.I24459763acf0591d5e6b31c7e3a59890d802f79c@changeid/
applied. I merged the Reviewed-by and Acked-by tags. It was
simpler to drop v1
https://www.spinics.net/lists/mm-commits/msg154861.html in order to land
commit 9562fd132985 ("gcov: re-fix clang-11+ support").

 kernel/gcov/Kconfig |   1 +
 kernel/gcov/clang.c | 103 --------------------------------------------
 2 files changed, 1 insertion(+), 103 deletions(-)

diff --git a/kernel/gcov/Kconfig b/kernel/gcov/Kconfig
index f62de2dea8a3..58f87a3092f3 100644
--- a/kernel/gcov/Kconfig
+++ b/kernel/gcov/Kconfig
@@ -4,6 +4,7 @@ menu "GCOV-based kernel profiling"
 config GCOV_KERNEL
 	bool "Enable gcov-based kernel profiling"
 	depends on DEBUG_FS
+	depends on !CC_IS_CLANG || CLANG_VERSION >= 110000
 	select CONSTRUCTORS
 	default n
 	help
diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
index d43ffd0c5ddb..cbb0bed958ab 100644
--- a/kernel/gcov/clang.c
+++ b/kernel/gcov/clang.c
@@ -69,16 +69,10 @@ struct gcov_fn_info {
 
 	u32 ident;
 	u32 checksum;
-#if CONFIG_CLANG_VERSION < 110000
-	u8 use_extra_checksum;
-#endif
 	u32 cfg_checksum;
 
 	u32 num_counters;
 	u64 *counters;
-#if CONFIG_CLANG_VERSION < 110000
-	const char *function_name;
-#endif
 };
 
 static struct gcov_info *current_info;
@@ -108,16 +102,6 @@ void llvm_gcov_init(llvm_gcov_callback writeout, llvm_gcov_callback flush)
 }
 EXPORT_SYMBOL(llvm_gcov_init);
 
-#if CONFIG_CLANG_VERSION < 110000
-void llvm_gcda_start_file(const char *orig_filename, const char version[4],
-		u32 checksum)
-{
-	current_info->filename = orig_filename;
-	memcpy(&current_info->version, version, sizeof(current_info->version));
-	current_info->checksum = checksum;
-}
-EXPORT_SYMBOL(llvm_gcda_start_file);
-#else
 void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
 {
 	current_info->filename = orig_filename;
@@ -125,28 +109,7 @@ void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
 	current_info->checksum = checksum;
 }
 EXPORT_SYMBOL(llvm_gcda_start_file);
-#endif
 
-#if CONFIG_CLANG_VERSION < 110000
-void llvm_gcda_emit_function(u32 ident, const char *function_name,
-		u32 func_checksum, u8 use_extra_checksum, u32 cfg_checksum)
-{
-	struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
-
-	if (!info)
-		return;
-
-	INIT_LIST_HEAD(&info->head);
-	info->ident = ident;
-	info->checksum = func_checksum;
-	info->use_extra_checksum = use_extra_checksum;
-	info->cfg_checksum = cfg_checksum;
-	if (function_name)
-		info->function_name = kstrdup(function_name, GFP_KERNEL);
-
-	list_add_tail(&info->head, &current_info->functions);
-}
-#else
 void llvm_gcda_emit_function(u32 ident, u32 func_checksum, u32 cfg_checksum)
 {
 	struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
@@ -160,7 +123,6 @@ void llvm_gcda_emit_function(u32 ident, u32 func_checksum, u32 cfg_checksum)
 	info->cfg_checksum = cfg_checksum;
 	list_add_tail(&info->head, &current_info->functions);
 }
-#endif
 EXPORT_SYMBOL(llvm_gcda_emit_function);
 
 void llvm_gcda_emit_arcs(u32 num_counters, u64 *counters)
@@ -291,16 +253,8 @@ int gcov_info_is_compatible(struct gcov_info *info1, struct gcov_info *info2)
 		!list_is_last(&fn_ptr2->head, &info2->functions)) {
 		if (fn_ptr1->checksum != fn_ptr2->checksum)
 			return false;
-#if CONFIG_CLANG_VERSION < 110000
-		if (fn_ptr1->use_extra_checksum != fn_ptr2->use_extra_checksum)
-			return false;
-		if (fn_ptr1->use_extra_checksum &&
-			fn_ptr1->cfg_checksum != fn_ptr2->cfg_checksum)
-			return false;
-#else
 		if (fn_ptr1->cfg_checksum != fn_ptr2->cfg_checksum)
 			return false;
-#endif
 		fn_ptr1 = list_next_entry(fn_ptr1, head);
 		fn_ptr2 = list_next_entry(fn_ptr2, head);
 	}
@@ -329,35 +283,6 @@ void gcov_info_add(struct gcov_info *dst, struct gcov_info *src)
 	}
 }
 
-#if CONFIG_CLANG_VERSION < 110000
-static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
-{
-	size_t cv_size; /* counter values size */
-	struct gcov_fn_info *fn_dup = kmemdup(fn, sizeof(*fn), GFP_KERNEL);
-
-	if (!fn_dup)
-		return NULL;
-	INIT_LIST_HEAD(&fn_dup->head);
-
-	fn_dup->function_name = kstrdup(fn->function_name, GFP_KERNEL);
-	if (!fn_dup->function_name)
-		goto err_name;
-
-	cv_size = fn->num_counters * sizeof(fn->counters[0]);
-	fn_dup->counters = kvmalloc(cv_size, GFP_KERNEL);
-	if (!fn_dup->counters)
-		goto err_counters;
-	memcpy(fn_dup->counters, fn->counters, cv_size);
-
-	return fn_dup;
-
-err_counters:
-	kfree(fn_dup->function_name);
-err_name:
-	kfree(fn_dup);
-	return NULL;
-}
-#else
 static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
 {
 	size_t cv_size; /* counter values size */
@@ -378,7 +303,6 @@ static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
 
 	return fn_dup;
 }
-#endif
 
 /**
  * gcov_info_dup - duplicate profiling data set
@@ -419,21 +343,6 @@ struct gcov_info *gcov_info_dup(struct gcov_info *info)
  * gcov_info_free - release memory for profiling data set duplicate
  * @info: profiling data set duplicate to free
  */
-#if CONFIG_CLANG_VERSION < 110000
-void gcov_info_free(struct gcov_info *info)
-{
-	struct gcov_fn_info *fn, *tmp;
-
-	list_for_each_entry_safe(fn, tmp, &info->functions, head) {
-		kfree(fn->function_name);
-		vfree(fn->counters);
-		list_del(&fn->head);
-		kfree(fn);
-	}
-	kfree(info->filename);
-	kfree(info);
-}
-#else
 void gcov_info_free(struct gcov_info *info)
 {
 	struct gcov_fn_info *fn, *tmp;
@@ -446,7 +355,6 @@ void gcov_info_free(struct gcov_info *info)
 	kfree(info->filename);
 	kfree(info);
 }
-#endif
 
 /**
  * convert_to_gcda - convert profiling data set to gcda file format
@@ -469,21 +377,10 @@ size_t convert_to_gcda(char *buffer, struct gcov_info *info)
 		u32 i;
 
 		pos += store_gcov_u32(buffer, pos, GCOV_TAG_FUNCTION);
-#if CONFIG_CLANG_VERSION < 110000
-		pos += store_gcov_u32(buffer, pos,
-			fi_ptr->use_extra_checksum ? 3 : 2);
-#else
 		pos += store_gcov_u32(buffer, pos, 3);
-#endif
 		pos += store_gcov_u32(buffer, pos, fi_ptr->ident);
 		pos += store_gcov_u32(buffer, pos, fi_ptr->checksum);
-#if CONFIG_CLANG_VERSION < 110000
-		if (fi_ptr->use_extra_checksum)
-			pos += store_gcov_u32(buffer, pos, fi_ptr->cfg_checksum);
-#else
 		pos += store_gcov_u32(buffer, pos, fi_ptr->cfg_checksum);
-#endif
-
 		pos += store_gcov_u32(buffer, pos, GCOV_TAG_COUNTER_BASE);
 		pos += store_gcov_u32(buffer, pos, fi_ptr->num_counters * 2);
 		for (i = 0; i < fi_ptr->num_counters; i++)
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210413183113.2977432-1-ndesaulniers%40google.com.
