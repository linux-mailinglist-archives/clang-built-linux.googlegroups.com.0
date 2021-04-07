Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCUAXCBQMGQESVIYYKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B4E35749A
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 20:55:09 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id j90sf11776864otc.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 11:55:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617821708; cv=pass;
        d=google.com; s=arc-20160816;
        b=WqNwsSO/Cv6pPN0NOc1MbVQtyjL0yeYJTGaF9yzqYLBPKozMtTUV8xlFXeBZGdrNO5
         65RuWDk6SpXBfy4HRLt6JZTEuOrlluYCf08fq5vYKkIUhT1xkEodj4AtsSwM7gMOfoYD
         rD/5Z8iHhXCapq6CYOnYc7xd7dDmjyNkvTrdnQnFTKLz5ZYDJmd+wU2WPzlD0Nreq8gL
         /WoSF4Tfann7sEo/5xzTfIspxQEPhOh7A8xAv5CjuyMJVukt26T/+laOpI2RVCrsUKog
         rCxe1I5YLgpdAlg5OD4X+FJzISXDIHgd3YQ1MLvGh6s35xtLF7b0wmGJN0pKb5cnrb1p
         kXQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=9BWx2VlxICVsYZ+ZZRTzADwL/+95FbWBvOwMLamMC20=;
        b=bfmeVQf9BG9tol6mW13wUxo66TC9j94JaGm34Wn94M0pWVBhbJFqmI8aV5h+4UHLNs
         QPeAHUuHXaE5NTACRsvyiARLzeDmL37dq8gbIbGByqrSe0ocGAWsivGEiiGSJ4tVYDum
         lEx72MVDqNOR7yyqyqlTKaF4BZXZ2/zhgrqTGgF/2edrctZVnQFhGB28BDKfSw/VvLK0
         KZydzmT7cu900nQobcEQUFLkjmdQdOceaUZhiVVnUsGKv1+h2OF6TQz2+A5XoyWCl3Uk
         Sg2JuUN+ddG3j958quighD1IF+doM/DPXST2ibh8lPh9Ggmkl0lXQzmIlQ+7nuYk5pdH
         XbCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kJ22aMNQ;
       spf=pass (google.com: domain of 3cabuyawkamk2st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3CABuYAwKAMk2st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9BWx2VlxICVsYZ+ZZRTzADwL/+95FbWBvOwMLamMC20=;
        b=cjdQoo0QARPO3y9tkZJ8V5Hj7JAZRNfCij102gJzrFYMn4K1m20ktRorNbpcynl0Vw
         0SxZHZed3k4acZ8fW2+LXlf6QYParv4RMHKV93y0ymWz7sx7sbQpXxV16ha0hGpHCSly
         gL/DZ6+Efd/tF0adNG1KlUEIm7SxSjB4jjkVkQ5hyJtK1cWhdKg1/smQoci1mHQ6YzXL
         FcGbWDK4POPgjJznqqkn5NXf6XunGzayz2a55pdl7nchO1eYHdgC6gTvMkRxYBWlbPbN
         0BcCPLJLxXz7b/AKuHOCYyuOqeXzvROu69KWTPUrFjqPsShDVO5YkCZx4/43pl84mffq
         69hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9BWx2VlxICVsYZ+ZZRTzADwL/+95FbWBvOwMLamMC20=;
        b=qffY1mY211hvbLdl0+NPX9TtyatnG5P9UG9D0UHHARwFzCr2oywVN3Bgjjsinb9Jr3
         YYcJcDTXTrTalLYf7E3TWm/vGKxe/V3bD7q3eaf2ku6SoJ2vjaEbJK8iMAT9nj8l6P34
         3O5RtvA20uAXOyfvzVMoGwXtepgwkt+ndG2YTwaNT65CxMA/aHDAfq5m/d96QvZe57PJ
         WINx9Klu0Hae0I5PWP0f7RCeP3TaXeutOM1QBNfdBjiiHkar+bG0Gc4Mj6IlgGAnPWd0
         0GfxtchjSORJKzwfErDJUeFqS0djfUJSTPRJJZK2GT4D+i/Gkf+j1Jm2LaIYhQ+nRTFw
         ilCA==
X-Gm-Message-State: AOAM532BMUIkF8AshhGGPVF+7sBr/M7djVoM2eMQr0OLZSjd1f/F21RC
	Hna6YkETQMhgaG9CIU5sD1M=
X-Google-Smtp-Source: ABdhPJxnB3WNLHXdqB+ato8bSTpHEnGrJmBgtPHvswwvq+Tu00MKEsTweoBOt//gLFtSEo/bJhT+OQ==
X-Received: by 2002:aca:4ad2:: with SMTP id x201mr3292212oia.46.1617821706570;
        Wed, 07 Apr 2021 11:55:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:f0d:: with SMTP id m13ls712031oiw.4.gmail; Wed, 07
 Apr 2021 11:55:04 -0700 (PDT)
X-Received: by 2002:aca:6545:: with SMTP id j5mr3262095oiw.31.1617821704713;
        Wed, 07 Apr 2021 11:55:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617821704; cv=none;
        d=google.com; s=arc-20160816;
        b=eIr5rp/ElqbRAwOYveESZcaadeYAiyJW9fez79hKa1br7AN5dTSAIZmuDNlO8c6SnT
         kbCyiLfds1Ypn/csetVSQ2/WJrHWKsOyEax5p9t7oZonhgKC7Ml8fzFuS9dksbVUCZ5N
         Xq+BnH+k+Jw7fCYSawbfvpdwHuwmWkdZqWkIi2Opu7iOlhwtx1lSx2mhLKKIb1+v87KC
         SDrhh/F/a0mjqKmtEqbWEI2YluP82dJqlu4LdwhJITKIFcdpgv/Od6mO4cCXeZ0Z8uX/
         A3Uvwu9iiWA7W5z0Hc0d0hz2lxe3H8hHlR29KsbYssV0a5c8KCdBffeQONAfWvnazV86
         b7hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=/gR9Ty4JZXDPsNPdLjznxvXioeerIHzHsL4Fen6xU1U=;
        b=0nNntq6h381KrkQCUZsyHCVa4990HydfiaHJcC2eXSSH3FLepVArvoa6kc01ldhVkt
         oJllYHBk0zONHlXizKuJD2Wk8yHk585XlPqfTuJkgeheZdUNGevQvcLmVdlxhdtg6zNu
         Rw82vrqa0uUu8WoZcQV7N/+CDdE9OlhwAorgWTggTR2iKWMzLRT4fQ36UBWPtnceZiwO
         atARpva70qXkbjPttv9D7u9WdDB/Zh3wxjJGB1lEOFwKtAS3yN8U8IXhWLeI1bev0tbX
         3EjzTcIw7ZIdtnG2c+l/VURUkaUFildMr+hPCxexjgvrd4Fh5A+ZoplumIeqJqTuIr+v
         YFuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kJ22aMNQ;
       spf=pass (google.com: domain of 3cabuyawkamk2st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3CABuYAwKAMk2st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id x143si1639479oif.2.2021.04.07.11.55.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 11:55:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cabuyawkamk2st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id n13so24887733ybp.14
        for <clang-built-linux@googlegroups.com>; Wed, 07 Apr 2021 11:55:04 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:c454:8587:ce1c:e900])
 (user=ndesaulniers job=sendgmr) by 2002:a25:9108:: with SMTP id
 v8mr6177944ybl.460.1617821704165; Wed, 07 Apr 2021 11:55:04 -0700 (PDT)
Date: Wed,  7 Apr 2021 11:54:55 -0700
In-Reply-To: <20210407185456.41943-1-ndesaulniers@google.com>
Message-Id: <20210407185456.41943-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210407185456.41943-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH 1/2] gcov: re-fix clang-11+ support
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Oberparleiter <oberpar@linux.ibm.com>
Cc: Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Andrew Morton <akpm@linux-foundation.org>, 
	Fangrui Song <maskray@google.com>, Prasad Sodagudi <psodagud@quicinc.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kJ22aMNQ;       spf=pass
 (google.com: domain of 3cabuyawkamk2st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3CABuYAwKAMk2st7p902xt67v33v0t.r31@flex--ndesaulniers.bounces.google.com;
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
---
 kernel/gcov/clang.c | 38 +++++++++++++++++++++++++++++++++-----
 1 file changed, 33 insertions(+), 5 deletions(-)

diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
index d41f5ecda9db..1747204541bf 100644
--- a/kernel/gcov/clang.c
+++ b/kernel/gcov/clang.c
@@ -69,7 +69,9 @@ struct gcov_fn_info {
 
 	u32 ident;
 	u32 checksum;
+#if CONFIG_CLANG_VERSION < 110000
 	u8 use_extra_checksum;
+#endif
 	u32 cfg_checksum;
 
 	u32 num_counters;
@@ -111,6 +113,7 @@ void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
 }
 EXPORT_SYMBOL(llvm_gcda_start_file);
 
+#if CONFIG_CLANG_VERSION < 110000
 void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
 		u8 use_extra_checksum, u32 cfg_checksum)
 {
@@ -126,6 +129,21 @@ void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
 	info->cfg_checksum = cfg_checksum;
 	list_add_tail(&info->head, &current_info->functions);
 }
+#else
+void llvm_gcda_emit_function(u32 ident, u32 func_checksum, u32 cfg_checksum)
+{
+	struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
+
+	if (!info)
+		return;
+
+	INIT_LIST_HEAD(&info->head);
+	info->ident = ident;
+	info->checksum = func_checksum;
+	info->cfg_checksum = cfg_checksum;
+	list_add_tail(&info->head, &current_info->functions);
+}
+#endif
 EXPORT_SYMBOL(llvm_gcda_emit_function);
 
 void llvm_gcda_emit_arcs(u32 num_counters, u64 *counters)
@@ -256,11 +274,16 @@ int gcov_info_is_compatible(struct gcov_info *info1, struct gcov_info *info2)
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
@@ -378,17 +401,22 @@ size_t convert_to_gcda(char *buffer, struct gcov_info *info)
 
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
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210407185456.41943-2-ndesaulniers%40google.com.
