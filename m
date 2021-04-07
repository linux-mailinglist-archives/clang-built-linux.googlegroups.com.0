Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCUAXCBQMGQESVIYYKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B03357499
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 20:55:07 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id d18sf5168531qtn.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 11:55:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617821706; cv=pass;
        d=google.com; s=arc-20160816;
        b=iHkxzWX9zmibS7HegtRVxPjxgrFoTB2vBjTv2+fOE5YXbHfBtJT8jdBX/AiG5dv7Pl
         kRf57+MpbK43O20QRhVL6gh8wQA+c8rtAeNVJYG8vEBAc6UuWSduCIgakoSSOf2vXczs
         1uVUVCkhQo7xpJNhMgBJNIDe1PLfHxcxj5LD9QcVotlax3Vne+cl5clyBWhIPaZCD7c3
         BPMKydNLP2uteoRZr2NabCVJc0sX9ulqiyqtPJoegSHoLT+2N1vOA+qjKzJ5dzrqruJN
         pH+RSwnnjR/7/23HsGvD/q+Wwfanp82wYtyU7GaswmcLeYVdHpyC8ziOOvBz/0jcr7oD
         ieUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=1aN9lRq1Asjrx9ymgDSusIwhClyMhmf632fyrcGKVfU=;
        b=GoXbwNLCfuH4a5dpfmxgplutRK/cxZiZCmiRu9v8eFAWBo1coXZOEyrBx/QoxrNDe/
         vas51ISABtJbB0UIbMuHPjd8AXLrQQ1JIXSolfz9JnbNM6PA7QPs+RwiqLcmcFl/ZGqG
         7tCtZfod6FlOnHdeqdd+pNMz6eKYSpgaQj8oqiL+NeobZNUhEUSVxOftZKI7KgdIs1r7
         NopYQ0WYZepllLemoS9pKeDcdIbyANCxbME0FdYUlIO42VhBwM7COt5V/JDxvtikzevQ
         92CfrlcAfm/hMbeo3vHRc4YrdBA1tiYaJ7AHyUKnFvWWwdNHSHutyXqQ0cotqhy3oxso
         rYwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QvouwaN6;
       spf=pass (google.com: domain of 3cqbuyawkamo3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3CQBuYAwKAMo3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1aN9lRq1Asjrx9ymgDSusIwhClyMhmf632fyrcGKVfU=;
        b=e7nI5/SBznRTZEwSkXtfBwFlfMUPWzlq6h0H0JzwgA8Pl2Qu+h1TxqCm5TdRjT2R2G
         p4GuTPEK06eM0GxDZsNSZRrxaL+UiyFdkDWV9EIiGzYqAeeFJ/UsqS0Vj/P1xMef8r6G
         fmslhY1wR3uGwFqk6DKJruPZhNGDdWi/i3qJCPU6Rv4T1vmOPhi3hwWrLisykTUiRqNC
         /SZxlP5NCUFJI4hQ5TOD/0gm/NTUJqYIlGEi7WWSw4uZfrPSjzVeQB2CtJnLjZgetKgm
         QheM1ipt9J2m1+cvT5qsQ5SlEGBWpCggMfjoTiXUDbHPP6CmC4sYIhnD16iV8I7zOOGx
         r00w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1aN9lRq1Asjrx9ymgDSusIwhClyMhmf632fyrcGKVfU=;
        b=Vsg7DEReqjiKnguHuqB+lpnIuaeHyeQ59BMfwyec9SeIf8j66WD1n92c1cTr40xgc8
         ooU4QxRJWJh5wCZsR4wG3jCx2zSnuWd+aPkUKC69ThBMEziGHUkltP3APcqvfmIGSa1Q
         eCuTbfxr+mRZ/bDUtgIE1g8+kTlRuNq1Z/MxeucZK+G/ux6hjMJGc6O9qPU+ltLZAYpE
         f/+uX+Gj3MACoKcLfp34zZGpH/+jbnw78sxW0E3wRfM00OFoGWuJMQkLvqfBWogYQwYN
         vVx3uMcWULmIz/DPY+0iZD5YxquoKNx2rKpZ5SdyYME5NX5/YyBoQy5518ZUc6qdK/XQ
         Bhdw==
X-Gm-Message-State: AOAM532QId9f0Y39haqaE0/TgJfi7Na/+k2aQ6RP0OiwxdUFrt9QxWGm
	vGnt4jUPf1dXyfmYoXnSmls=
X-Google-Smtp-Source: ABdhPJzdwIT5Dr2r8S0kAn6SLhhsLdVPbJqldoC3QYgJEwehHlzpQdR1Jq6kdTJW8Rd5+QhQOjjzsA==
X-Received: by 2002:ac8:688c:: with SMTP id m12mr4149503qtq.74.1617821706638;
        Wed, 07 Apr 2021 11:55:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:254:: with SMTP id c20ls1246213qtx.9.gmail; Wed, 07
 Apr 2021 11:55:06 -0700 (PDT)
X-Received: by 2002:ac8:7dc2:: with SMTP id c2mr3998735qte.341.1617821706230;
        Wed, 07 Apr 2021 11:55:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617821706; cv=none;
        d=google.com; s=arc-20160816;
        b=cRj3M2fbvo5KYjSheAyRWlrUSZH7/F3JzDtZGYqt6WBQP3vKa/F6WE16vDhFcc2/My
         DnTf4AUpKZrgHasY+CmPYfhOc6EsiPwUwQ4rlX1kRkkQ5wAn5G1GgvCkGGBbwhseTga3
         sgfvTOW8WOvwvBzVActoLeJY9yqFF00rgn0HyomlSdh2PhZpLjfoT111sGjmpqbBHTEe
         0FR4mOEFMcSG+lJASrwe0e9l9rOYcfYbGKinfTZKezEVyvGm6rhNyFiuXk2vdeNklc+P
         wHAp9c+IsyE7oACpy/WZ+JtRyKBNsKhzrvBzWwr2qPfQ5IP9OOtfUWOXDtLNZ4XM24Dk
         EvwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=732FuhF+yEqhx0MeVArWdFACqgUAoeDTQ99xUhtV4rU=;
        b=HbFKjFh0vr7u5XT8lqNfYtJQt+oYFdUKaAdIerwpfTOSXrRNJUhT7ZQ5esCuqi1oUj
         wSYtxBaPGaoPTW5MV0cVUTp6pmOjI53XATxrLk99wzUexsRBltUvi/LkdvwS+k/R3Qoo
         hQr1EMO4S3hP1IzRGAgWLQYTYPtPMdiXzlOZXbBCT68ua6/73Ro2t4Bv0DRyAJLT2tjt
         3a+BpsgjRZPO8SsiybGruvA5qn6zNgVGsBMDM8jCSiZcbQZGA2x/mEOGPCH8I1XZtKoC
         8fhC6qN4rSud1d0dun6CGIfJg+5Bil86MDUP0Mheag3LU66DfKv8191ZMHW8wp0F1Aco
         UC7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QvouwaN6;
       spf=pass (google.com: domain of 3cqbuyawkamo3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3CQBuYAwKAMo3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id b2si3598702qtq.5.2021.04.07.11.55.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 11:55:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cqbuyawkamo3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id g7so12373388qtb.5
        for <clang-built-linux@googlegroups.com>; Wed, 07 Apr 2021 11:55:06 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:c454:8587:ce1c:e900])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:a404:: with SMTP id
 w4mr4975968qvw.45.1617821705987; Wed, 07 Apr 2021 11:55:05 -0700 (PDT)
Date: Wed,  7 Apr 2021 11:54:56 -0700
In-Reply-To: <20210407185456.41943-1-ndesaulniers@google.com>
Message-Id: <20210407185456.41943-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210407185456.41943-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH 2/2] gcov: re-drop support for clang-10
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Oberparleiter <oberpar@linux.ibm.com>
Cc: Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Andrew Morton <akpm@linux-foundation.org>, 
	Fangrui Song <maskray@google.com>, Prasad Sodagudi <psodagud@quicinc.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QvouwaN6;       spf=pass
 (google.com: domain of 3cqbuyawkamo3tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3CQBuYAwKAMo3tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
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

LLVM changed the expected function signatures for
llvm_gcda_emit_function() in the clang-11 release.  Drop the older
implementations and require folks to upgrade their compiler if they're
interested in GCOV support.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 kernel/gcov/clang.c | 40 ----------------------------------------
 1 file changed, 40 deletions(-)

diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
index 1747204541bf..78c4dc751080 100644
--- a/kernel/gcov/clang.c
+++ b/kernel/gcov/clang.c
@@ -69,9 +69,6 @@ struct gcov_fn_info {
 
 	u32 ident;
 	u32 checksum;
-#if CONFIG_CLANG_VERSION < 110000
-	u8 use_extra_checksum;
-#endif
 	u32 cfg_checksum;
 
 	u32 num_counters;
@@ -113,23 +110,6 @@ void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
 }
 EXPORT_SYMBOL(llvm_gcda_start_file);
 
-#if CONFIG_CLANG_VERSION < 110000
-void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
-		u8 use_extra_checksum, u32 cfg_checksum)
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
-	list_add_tail(&info->head, &current_info->functions);
-}
-#else
 void llvm_gcda_emit_function(u32 ident, u32 func_checksum, u32 cfg_checksum)
 {
 	struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
@@ -143,7 +123,6 @@ void llvm_gcda_emit_function(u32 ident, u32 func_checksum, u32 cfg_checksum)
 	info->cfg_checksum = cfg_checksum;
 	list_add_tail(&info->head, &current_info->functions);
 }
-#endif
 EXPORT_SYMBOL(llvm_gcda_emit_function);
 
 void llvm_gcda_emit_arcs(u32 num_counters, u64 *counters)
@@ -274,16 +253,8 @@ int gcov_info_is_compatible(struct gcov_info *info1, struct gcov_info *info2)
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
@@ -403,21 +374,10 @@ size_t convert_to_gcda(char *buffer, struct gcov_info *info)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210407185456.41943-3-ndesaulniers%40google.com.
