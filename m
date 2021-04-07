Return-Path: <clang-built-linux+bncBCS7XUWOUULBBCMGXCBQMGQE4NNLGVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 505353574CA
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 21:07:55 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id 7sf13030769pfn.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 12:07:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617822474; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ex0xkKoPA/ssdoCKYq9+MjVqnlyHkpEgEaTXTePb3zCaMdf20x+q6L0tQSLnW7EDyy
         gBdCqcHKyaMmiidTU6g0J5Xr9NSmCc6RD7YGmAOrVUcvdq9XCJEG/u9bYg3M0OZ5BuTh
         6EKBS8vIJCviLowUhH4XhoGDh7yB6X9zr3UI1NCrII31qPrl0ia5ROJvN9DbwPud3thz
         CAWq/IsJK4ZHdLOUC0hFXJwcl/05cUW0O+koYqYKAZhz0Z6E+bjZ5TLpMluvu/b/N55Z
         WLh+pibpYPxnUvvissgse1ILpT+0o1Hhx+mG+P/c5jddYrprG1auiQqkbm4BBHsf7+eY
         KpDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=sF8wIi0gUxsQfZmD1x9t+JIy1MWBkvlOSLAOo1DPEqE=;
        b=wb/r0TbU2/HJHmu/ilHc2+fsk3OQqS6iyGeKth3Brr8iw10xv87YClS5hDEENFzQYS
         wDQDEc8Bys6An13frWHQCNxkXIDjMU3vua0KSfPB1J6n3F/MP4qQTwprBbWIxBSDrVc3
         lI/Y7KtW+AVMfKk/mcr1Uo5kuRoyk9dca/94DeWiLs8Ez/e0z5LUDFS/aOGmGe/iE4Jk
         QKkD5fhHJjp2T3KIsqNHdPhHX9eoAz9/ulrsFtqkgv2Bb5m7PrdjJE2s1/dbyI3Hpd1D
         P9pRO+sQKvTelRPkmCi0ecFqhNe/zU0Rp245tHqvgzLW2VSsll72gEH8/rjRXbpmzDi3
         1gfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jGwtRoP0;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sF8wIi0gUxsQfZmD1x9t+JIy1MWBkvlOSLAOo1DPEqE=;
        b=eLuPhf/LZHsK/Y9FGxYOioLMTsuCLgkbL1wLpiZGIbaTljc2tizO4K5l43SREp/oz7
         br86BKRd/6vcK5nilsSGUM84ndatWl6m6yPew6BzrNTLeU65SIX2WopUg5djxU08hSZ3
         LFA1tSLJqNTbgpNED4CZXS3HjI8HO0qP8XrI+CdfbvB3CrL2hcLiiJXtSooMRNQ+hGpx
         dE0hABZCT0vbvcBfd4NA+7lk5Ua+RGwLY9PGjkz+5ZfFHZcO47pZvYb2NO9fkZL6B0eY
         YjdC6Q65EI4WwY8dA2o/L/R8VjCWqgiOtIhJz6AjPb1Wh9tYG+pmXRuU7FEpVb/YQz6x
         Syfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sF8wIi0gUxsQfZmD1x9t+JIy1MWBkvlOSLAOo1DPEqE=;
        b=ZjW3SwV95qr1HFeAl/CvX7bWNe+Nqq2Yqg+ecZYksOKwwZh9Mt+VUmBkjKED/OrmDf
         AK3pYTzhNuZ9RLBT+zAR7GrSftpQX0scjQl20TsxsEb8fk/VIVbY5Ec6IU6673qm/J3H
         MjBftX6eeFPFFT5AvlMBurR+fbYCuK0/vlvA6opeEM9h4irgBXuflzW0SeTcuw+sLE2i
         +uMSZ8+s5xi/GJ3QeDOnKqzvLaFYA1XscunURB4MonEwzHvM1rkm15yi5kxsL57kQzO6
         rOFgIZOBTPYsLXk/ZKMupruCG9tbaJGUmwdlj6gTmfYM4ca2abKvCBzYteHOB0dsVaQN
         omyg==
X-Gm-Message-State: AOAM532hfK+jA+x+BV68PXWPe8Y+I8wYdbBwjXy5oPILnOlvg1P5AukA
	MiWjNJF5wV03o7M4kYWYfGM=
X-Google-Smtp-Source: ABdhPJw8tOlAn9NfHbYL94QFSx7cfMjLWNBt3tgVzWbQWkLOZrvBDEJAIPt3VylCNh4s+4TdNPeBXQ==
X-Received: by 2002:a63:c348:: with SMTP id e8mr4684121pgd.36.1617822474091;
        Wed, 07 Apr 2021 12:07:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:da91:: with SMTP id j17ls1410618plx.1.gmail; Wed, 07
 Apr 2021 12:07:53 -0700 (PDT)
X-Received: by 2002:a17:902:f687:b029:e8:da63:6195 with SMTP id l7-20020a170902f687b02900e8da636195mr4346509plg.75.1617822473515;
        Wed, 07 Apr 2021 12:07:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617822473; cv=none;
        d=google.com; s=arc-20160816;
        b=OlfZqnnme75dX77btOGleYH4wb6ppo2l2cFb0whMqHvm1HN52utiQp5lO/EBIHAyk/
         1uzqWnTZU72u2E6apFoCeiqWivynDcMhk53bia/WM57/NVkoAMh6Vhsb8bi/pNEZvJcY
         /Ku98bZCyIo0VThYpRCZxp8bwoEzrKhLiIrJEBYxH8+G+MrzLmuDRft0jKifAXC/zJbn
         eNzOcFvBNrAHJSrYJfrs63S7zyVUuVPwitpau0fJbNsGM+PfaFilLtA6DB8xD0X/6xfB
         j2umYEgnYTDKRvigkFQqJh9JHfYY9LZt9FDuHW/IrArnb2mZB9DHbAyHWaM7ISfLleN8
         CeBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VJr8wPst998PqQT7MGZfQ+Xd7fdt8VxKbhROA1rDigw=;
        b=X+QieQTdjfHOkcqCByYA6+ebxjvmLxflOCd0S7LvNnlxglg92dHanl8mPw2SE7O375
         LeN6V0MzXDy6bQr/+ai0mqLcPJKJVxfo7xkY/BXbTisZf0Ucv/0kYN/hV6WoMd27i/yz
         cCv+QbgEZ0B2DNX65B5pd3vGs52rO4mjVrfafC/SPAPByJ3gKIP2yacSsfSpfpRMlF/e
         WDWVS3cngO0m8vTwSXaM2qAw3MSzY7sM1hIOJk8KWo6yoJM6L6RV4+qtW7qUSVVAqxgE
         AEtQK5aSuZeIWlpNiC2EVCic3vIYIw77kbmgZ3Uvbgc3/nAzxAX5OEdPTlS4ymlxraqb
         W5Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jGwtRoP0;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id f7si516305pjs.1.2021.04.07.12.07.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 12:07:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Received: by mail-pl1-x62a.google.com with SMTP id l1so9823837plg.12
        for <clang-built-linux@googlegroups.com>; Wed, 07 Apr 2021 12:07:53 -0700 (PDT)
X-Received: by 2002:a17:90a:c981:: with SMTP id w1mr4788223pjt.176.1617822472991;
        Wed, 07 Apr 2021 12:07:52 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:2840:b668:1017:7fcf])
        by smtp.gmail.com with ESMTPSA id c21sm22216553pgl.71.2021.04.07.12.07.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 12:07:52 -0700 (PDT)
Date: Wed, 7 Apr 2021 12:07:49 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>,
	Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Prasad Sodagudi <psodagud@quicinc.com>
Subject: Re: [PATCH 2/2] gcov: re-drop support for clang-10
Message-ID: <20210407190749.p3h72h4zlshiyt76@google.com>
References: <20210407185456.41943-1-ndesaulniers@google.com>
 <20210407185456.41943-3-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210407185456.41943-3-ndesaulniers@google.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jGwtRoP0;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62a
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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


On 2021-04-07, Nick Desaulniers wrote:
>LLVM changed the expected function signatures for
>llvm_gcda_emit_function() in the clang-11 release.  Drop the older
>implementations and require folks to upgrade their compiler if they're
>interested in GCOV support.
>
>Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>---
> kernel/gcov/clang.c | 40 ----------------------------------------
> 1 file changed, 40 deletions(-)
>
>diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
>index 1747204541bf..78c4dc751080 100644
>--- a/kernel/gcov/clang.c
>+++ b/kernel/gcov/clang.c
>@@ -69,9 +69,6 @@ struct gcov_fn_info {
>
> 	u32 ident;
> 	u32 checksum;
>-#if CONFIG_CLANG_VERSION < 110000
>-	u8 use_extra_checksum;
>-#endif
> 	u32 cfg_checksum;
>
> 	u32 num_counters;
>@@ -113,23 +110,6 @@ void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
> }
> EXPORT_SYMBOL(llvm_gcda_start_file);
>
>-#if CONFIG_CLANG_VERSION < 110000
>-void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
>-		u8 use_extra_checksum, u32 cfg_checksum)
>-{
>-	struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
>-
>-	if (!info)
>-		return;
>-
>-	INIT_LIST_HEAD(&info->head);
>-	info->ident = ident;
>-	info->checksum = func_checksum;
>-	info->use_extra_checksum = use_extra_checksum;
>-	info->cfg_checksum = cfg_checksum;
>-	list_add_tail(&info->head, &current_info->functions);
>-}
>-#else
> void llvm_gcda_emit_function(u32 ident, u32 func_checksum, u32 cfg_checksum)
> {
> 	struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
>@@ -143,7 +123,6 @@ void llvm_gcda_emit_function(u32 ident, u32 func_checksum, u32 cfg_checksum)
> 	info->cfg_checksum = cfg_checksum;
> 	list_add_tail(&info->head, &current_info->functions);
> }
>-#endif
> EXPORT_SYMBOL(llvm_gcda_emit_function);
>
> void llvm_gcda_emit_arcs(u32 num_counters, u64 *counters)
>@@ -274,16 +253,8 @@ int gcov_info_is_compatible(struct gcov_info *info1, struct gcov_info *info2)
> 		!list_is_last(&fn_ptr2->head, &info2->functions)) {
> 		if (fn_ptr1->checksum != fn_ptr2->checksum)
> 			return false;
>-#if CONFIG_CLANG_VERSION < 110000
>-		if (fn_ptr1->use_extra_checksum != fn_ptr2->use_extra_checksum)
>-			return false;
>-		if (fn_ptr1->use_extra_checksum &&
>-			fn_ptr1->cfg_checksum != fn_ptr2->cfg_checksum)
>-			return false;
>-#else
> 		if (fn_ptr1->cfg_checksum != fn_ptr2->cfg_checksum)
> 			return false;
>-#endif
> 		fn_ptr1 = list_next_entry(fn_ptr1, head);
> 		fn_ptr2 = list_next_entry(fn_ptr2, head);
> 	}
>@@ -403,21 +374,10 @@ size_t convert_to_gcda(char *buffer, struct gcov_info *info)
> 		u32 i;
>
> 		pos += store_gcov_u32(buffer, pos, GCOV_TAG_FUNCTION);
>-#if CONFIG_CLANG_VERSION < 110000
>-		pos += store_gcov_u32(buffer, pos,
>-			fi_ptr->use_extra_checksum ? 3 : 2);
>-#else
> 		pos += store_gcov_u32(buffer, pos, 3);
>-#endif
> 		pos += store_gcov_u32(buffer, pos, fi_ptr->ident);
> 		pos += store_gcov_u32(buffer, pos, fi_ptr->checksum);
>-#if CONFIG_CLANG_VERSION < 110000
>-		if (fi_ptr->use_extra_checksum)
>-			pos += store_gcov_u32(buffer, pos, fi_ptr->cfg_checksum);
>-#else
> 		pos += store_gcov_u32(buffer, pos, fi_ptr->cfg_checksum);
>-#endif
>-
> 		pos += store_gcov_u32(buffer, pos, GCOV_TAG_COUNTER_BASE);
> 		pos += store_gcov_u32(buffer, pos, fi_ptr->num_counters * 2);
> 		for (i = 0; i < fi_ptr->num_counters; i++)
>-- 
>2.31.1.295.g9ea45b61b8-goog
>

Looks good for both. Thanks!

Reviewed-by: Fangrui Song <maskray@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210407190749.p3h72h4zlshiyt76%40google.com.
