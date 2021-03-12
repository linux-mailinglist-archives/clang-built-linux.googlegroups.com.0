Return-Path: <clang-built-linux+bncBCS7XUWOUULBBTE4V6BAMGQEHATYXAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2006C33982B
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 21:25:50 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id h17sf281749uax.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 12:25:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615580749; cv=pass;
        d=google.com; s=arc-20160816;
        b=PNc2Y7BEyhQef5ZYRwQjApRLhDOf7uH4SWuuNY7NUeQ6Wqo2dacfNIAObe3fkrR4v0
         d4+gtxOeXRRXwG+EQ9A2X1xWQ7jpoICcc/6x3NG3AndIXnXxJB+0vZeD/8Pflm9DYy2S
         70So4OMAIFDOI2dOPVbcti2cFMjhtL90feYFEC+yRnS1K8mmfGPGpGPsjf92pvWFwWKM
         W9I9oDhz9NOozx9D2tyYfFWvI2r4+P5Vo2ytuvy3IpCOpFur3TaOYnZGT6sCncsEWANs
         Bvspc7jj36DcHbXZsmg0D795iu6DsCexFOC6IjLLR7zqmV8gu5BcUpBdBcW97wRgyAhn
         z4QA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=JhvcQtvjGZPdO1HeRjDI3cdEf+xr8EW+cNkWDKBfQto=;
        b=fjygfZYA6vAAwWDZ4AQiN7sf9LHPyNhwM/wxpmmN1nOdAa6GuX1hz3kId58OcecXZK
         +yfeiunWd7IbdNI3j7OGtAByC13BPzP0QRltNA2e3HBV+G537ExjGo2LjMv0COu01Jl8
         Q2it0WjzJU+qxEoJTLDm6SnyNZRq2fL2pK/YUzk8R+WgJnH4AmM3oXmo0f80pkxAep7Q
         EOXRz+09nXs/pxyx2tyqujvuV5c6cx3Cw9fhz9DMVbvivSPye+x8jgU5LAH6YoW6VhzP
         75uhMdu44El6XfokRjiqVTtmMEYEQGGxAxzizs5Gkz1lYi9/2CbvwNZMC5aJKJjf4iHB
         HwDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qrvpBtlT;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=JhvcQtvjGZPdO1HeRjDI3cdEf+xr8EW+cNkWDKBfQto=;
        b=tbZ75A4dar0hyj3L0QvVEF0JIUvCbQ05Y3sjzi85lukoEbEIN49ql/AII9u43Uxp6P
         hvAOMs8n59Fclg05Lt0To/EGivtwWtUjLmfRBDmLMNnpMO6k7QuPQaFfe33DDIrSntN3
         VfFzqLEdTNv0nVfC/ZMlIi+ZCipAyIwuXlWUS1WG9QIoaL97r4iAyK6Je6/7vTr9C5ZQ
         FDHxHH9yJyjctkTO1bG871cDF+IWGg4jfe6k7mU9p/2hdMaiKZ1NT9u1ws2Yx1vzIu/g
         WxUdHwSeCHCcsACJeP/WDgyL+JVr1LU0KTH6Hq7BOqCbB+6+ZrEeOvyQdORTmUGep0DK
         OJjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JhvcQtvjGZPdO1HeRjDI3cdEf+xr8EW+cNkWDKBfQto=;
        b=atB2qRjrwMnr8z2t0/Q64eZFR5VuekpNNavUbEiWknmpRxgdvS1JE8Xd0fOwV5myP8
         EzYmLQY9f7bNJPCXU3FYb0157TwWNW+98oIhltXQXDR/m+cjvEVZYHFgCRtCJiFU62RJ
         4OaQ/d2ItvCW9vJPZN5jJY2rVBXrtec/p5SAYx234JHWmbLt8zGbg6PlA+hLo+KeATt9
         /KO7u9lkLoCE0ENOT3f70pgSHj+0DR+6/rXr1WHKKeBYeVK2oWGtk72scLRls8+CjipL
         f4XkbMKuSPmoBysrcVjGZVrylkRSPQddsAyQg4LvZklXVQjZ8xdQPxcr7PBwAn/cTgq1
         Lx/g==
X-Gm-Message-State: AOAM530TilcaShgor2scbuj5H54vhunqdITdOEFNKUnSUXE42p3i9k2x
	/V0qqv5JKDxEqUqqP+DwklU=
X-Google-Smtp-Source: ABdhPJwFWaEiDooYkydblo5l952xWqONlkWL2uGZAds1oM2Qd1wxIAo1Iug/YWyOT/LHDJUjwY2+sA==
X-Received: by 2002:a67:fd43:: with SMTP id g3mr37486vsr.43.1615580748860;
        Fri, 12 Mar 2021 12:25:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2366:: with SMTP id o6ls1326372vsa.1.gmail; Fri, 12
 Mar 2021 12:25:48 -0800 (PST)
X-Received: by 2002:a05:6102:22f8:: with SMTP id b24mr9427237vsh.42.1615580748377;
        Fri, 12 Mar 2021 12:25:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615580748; cv=none;
        d=google.com; s=arc-20160816;
        b=eHk0ahM6pK95BaXUm/eMbyIpFb2mQ6walu4x98BNbXbP0mGZ04An69P1Mzrb0zaby+
         DeCt4//zLpzZR3pmcxfaG9dgHem//hyjoePg48kQXVUgPD4tkJirC12iqtaiuqBR8kQ7
         iFTEKQkN7Y+zYa4Q0OfLIHV/x0T0ZB3J2G9YxR8tUHkszTNVIEUthxXXdDjyFa0XXU+s
         SM7jwjbtDs+3i/ft9v4P4+knx9msJ7AdPoGNDZxJrxZvavolqsqa2T1LBsN9z1XQBaCO
         N5vVXappPkLsS7VElGIGtqmwUWyezJ6IJq15M4EN0e4dtANT2fpUjtC9X3LsFCPpYaGF
         urVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=l1XdOGwIHlgShuWyG/qyw32Z0LhndfoXT9jRJKn1tLU=;
        b=nunVUXZQh/5azV6geqHv+iz4xuYuAZts0lVtcTnzjkLtN9rCIfqe1343rhKCB+FMnY
         5rZgKRoq359ZBaf9wgWu7BMa6yGK6pCU5+bMSjzRSB66OUd0l2XheezBsXn2lg7DpWjh
         VNBT8TrolPR+PKZTdmhpg77/6TWfC7rCA8DUee6VG4sHi5e9WjCJ0Fnjy92niZltBPav
         /cQPNW4wreKRqyDE9GmpKolb/rO/v49fzbpd95WCxMqi9SNWTywMLHtB5d4msAD9SZsw
         cY0zONpFVFzQuwU2MfEruxPdSREmy0Dz1os2JPOxah4YlRcyjzb01zjE3qAjpRI5RhcP
         IRDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qrvpBtlT;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id i8si397684vko.4.2021.03.12.12.25.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 12:25:48 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id nh23-20020a17090b3657b02900c0d5e235a8so11621969pjb.0
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 12:25:48 -0800 (PST)
X-Received: by 2002:a17:902:e884:b029:e5:fece:3bb0 with SMTP id w4-20020a170902e884b02900e5fece3bb0mr791629plg.61.1615580747373;
        Fri, 12 Mar 2021 12:25:47 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:bca6:9fa5:8695:2f0d])
        by smtp.gmail.com with ESMTPSA id t5sm5980038pgl.89.2021.03.12.12.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 12:25:46 -0800 (PST)
Date: Fri, 12 Mar 2021 12:25:37 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Prasad Sodagudi <psodagud@quicinc.com>,
	Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] gcov: fix clang-11+ support
Message-ID: <20210312202537.z77v4qnvptbrug2f@google.com>
References: <20210312192139.2503087-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210312192139.2503087-1-ndesaulniers@google.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qrvpBtlT;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033
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

On 2021-03-12, Nick Desaulniers wrote:
>LLVM changed the expected function signatures for llvm_gcda_start_file()
>and llvm_gcda_emit_function() in the clang-11 release. Users of clang-11
>or newer may have noticed their kernels failing to boot due to a panic
>when enabling CONFIG_GCOV_KERNEL=y +CONFIG_GCOV_PROFILE_ALL=y.  Fix up
>the function signatures so calling these functions doesn't panic the
>kernel.
>
>When we drop clang-10 support from the kernel, we should carefully
>update the original implementations to try to preserve git blame,
>deleting these implementations.
>
>Link: https://reviews.llvm.org/rGcdd683b516d147925212724b09ec6fb792a40041
>Link: https://reviews.llvm.org/rG13a633b438b6500ecad9e4f936ebadf3411d0f44
>Cc: Fangrui Song <maskray@google.com>
>Reported-by: Prasad Sodagudi<psodagud@quicinc.com>
>Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>---
> kernel/gcov/clang.c | 69 +++++++++++++++++++++++++++++++++++++++++++++
> 1 file changed, 69 insertions(+)
>
>diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
>index c94b820a1b62..20e6760ec05d 100644
>--- a/kernel/gcov/clang.c
>+++ b/kernel/gcov/clang.c
>@@ -75,7 +75,9 @@ struct gcov_fn_info {
>
> 	u32 num_counters;
> 	u64 *counters;
>+#if __clang_major__ < 11
> 	const char *function_name;
>+#endif

function_name can be unconditionally deleted. It is not used by llvm-cov
gcov.  You'll need to delete a few assignments to gcov_info_free but you
can then unify the gcov_fn_info_dup and gcov_info_free implementations.

> };
>
> static struct gcov_info *current_info;
>@@ -105,6 +107,7 @@ void llvm_gcov_init(llvm_gcov_callback writeout, llvm_gcov_callback flush)
> }
> EXPORT_SYMBOL(llvm_gcov_init);
>
>+#if __clang_major__ < 11
> void llvm_gcda_start_file(const char *orig_filename, const char version[4],
> 		u32 checksum)
> {
>@@ -113,7 +116,17 @@ void llvm_gcda_start_file(const char *orig_filename, const char version[4],
> 	current_info->checksum = checksum;
> }
> EXPORT_SYMBOL(llvm_gcda_start_file);
>+#else
>+void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
>+{
>+	current_info->filename = orig_filename;
>+	current_info->version = version;
>+	current_info->checksum = checksum;
>+}
>+EXPORT_SYMBOL(llvm_gcda_start_file);
>+#endif

LG. On big-endian systems, clang < 11 emitted .gcno/.gcda files do not
work with llvm-cov gcov < 11.  To fix it and make .gcno/.gcda work with
gcc gcov I chose to break compatibility (and make all the breaking
changes like deleting some CC1 options) in a short window. At that time
I was not aware that there is the kernel implementation. Later on I was
CCed on a few https://github.com/ClangBuiltLinux/linux/ gcov issues but
I forgot to mention the interface change.

Now in clang 11 onward, clang --coverage defaults to the gcov 4.8
compatible format. You can specify the CC1 option (internal option,
subject to change) -coverage-version to make it compatible with other
versions' gcov.

-Xclang -coverage-version='407*' => 4.7
-Xclang -coverage-version='704*' => 7.4
-Xclang -coverage-version='B02*' => 10.2 (('B'-'A')*10 = 10)

Reviewed-by: Fangrui Song <maskray@google.com>

>+#if __clang_major__ < 11
> void llvm_gcda_emit_function(u32 ident, const char *function_name,
> 		u32 func_checksum, u8 use_extra_checksum, u32 cfg_checksum)
> {
>@@ -133,6 +146,24 @@ void llvm_gcda_emit_function(u32 ident, const char *function_name,
> 	list_add_tail(&info->head, &current_info->functions);
> }
> EXPORT_SYMBOL(llvm_gcda_emit_function);
>+#else
>+void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
>+		u8 use_extra_checksum, u32 cfg_checksum)
>+{
>+	struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
>+
>+	if (!info)
>+		return;
>+
>+	INIT_LIST_HEAD(&info->head);
>+	info->ident = ident;
>+	info->checksum = func_checksum;
>+	info->use_extra_checksum = use_extra_checksum;
>+	info->cfg_checksum = cfg_checksum;
>+	list_add_tail(&info->head, &current_info->functions);
>+}
>+EXPORT_SYMBOL(llvm_gcda_emit_function);
>+#endif
>
> void llvm_gcda_emit_arcs(u32 num_counters, u64 *counters)
> {
>@@ -295,6 +326,7 @@ void gcov_info_add(struct gcov_info *dst, struct gcov_info *src)
> 	}
> }
>
>+#if __clang_major__ < 11
> static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
> {
> 	size_t cv_size; /* counter values size */
>@@ -322,6 +354,28 @@ static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
> 	kfree(fn_dup);
> 	return NULL;
> }
>+#else
>+static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
>+{
>+	size_t cv_size; /* counter values size */
>+	struct gcov_fn_info *fn_dup = kmemdup(fn, sizeof(*fn),
>+			GFP_KERNEL);
>+	if (!fn_dup)
>+		return NULL;
>+	INIT_LIST_HEAD(&fn_dup->head);
>+
>+	cv_size = fn->num_counters * sizeof(fn->counters[0]);
>+	fn_dup->counters = vmalloc(cv_size);
>+	if (!fn_dup->counters) {
>+		kfree(fn_dup);
>+		return NULL;
>+	}
>+
>+	memcpy(fn_dup->counters, fn->counters, cv_size);
>+
>+	return fn_dup;
>+}
>+#endif
>
> /**
>  * gcov_info_dup - duplicate profiling data set
>@@ -362,6 +416,7 @@ struct gcov_info *gcov_info_dup(struct gcov_info *info)
>  * gcov_info_free - release memory for profiling data set duplicate
>  * @info: profiling data set duplicate to free
>  */
>+#if __clang_major__ < 11
> void gcov_info_free(struct gcov_info *info)
> {
> 	struct gcov_fn_info *fn, *tmp;
>@@ -375,6 +430,20 @@ void gcov_info_free(struct gcov_info *info)
> 	kfree(info->filename);
> 	kfree(info);
> }
>+#else
>+void gcov_info_free(struct gcov_info *info)
>+{
>+	struct gcov_fn_info *fn, *tmp;
>+
>+	list_for_each_entry_safe(fn, tmp, &info->functions, head) {
>+		vfree(fn->counters);
>+		list_del(&fn->head);
>+		kfree(fn);
>+	}
>+	kfree(info->filename);
>+	kfree(info);
>+}
>+#endif
>
> #define ITER_STRIDE	PAGE_SIZE
>
>
>base-commit: f78d76e72a4671ea52d12752d92077788b4f5d50
>-- 
>2.31.0.rc2.261.g7f71774620-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210312202537.z77v4qnvptbrug2f%40google.com.
