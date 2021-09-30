Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQHT3CFAMGQETW6QMNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1972C41E3E0
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Oct 2021 00:27:14 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id gf8-20020a17090ac7c800b0019ed5b47b51sf4104493pjb.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Sep 2021 15:27:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633040832; cv=pass;
        d=google.com; s=arc-20160816;
        b=NmA1VV8yJxkwx46JiVAMZwajDTYFJb6QGqY5hIEnBtOR41euuIcFokhug5vle8Q+sF
         aDReXBJBjBAcmff19ffPmKhni8ep0qquMO6ApihUYZAaBRqGsbZ1ckipKTOhRRco2/hW
         Tkd6Y1CcvMDNcxc+vSMA+gbEqWVPo43R9Js37+11cHd+o6sTI7LtMptp973H/ss40ESu
         reQkIhMAfvUrc8r8YkcqEwCNOcPTe1/Wtxq4uegys62VlCHZ5crLNr/6NqyCZk5UoNh1
         tzTDWANfAxryT2/mIHpO5hC7Nj1k4r6lC2vNOkjWJLM2Mx4J1gg40NMZQDlDj4AWQeRr
         QOQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=sVeQ+txF7BcnRyBg1yqqMx/WqdzZNfWEiAqa2LGvzrw=;
        b=q2pOgxwRh13e5XQfn9rLr/y9AgQh42IYDkgYD0THdhCUOs9hceICSDE+WiLrA546Fo
         VTzLkO+D7kxcV8si77XlqucMuXn7h08L2xm8SEKl5KTRMsqQzwQcWTp3WsbX2dfV9HeN
         9D31J9H5f4CiPqSLVQNenPIR5H0N2p97LnddQkfK7YeU0gYfqRJazia1afS3NBC9jkEb
         VmPEEZj5yB6bkhxwBw5koiNIwWCurXy7PRDjET1eIccUEdKHYKoK3hsQf3TMJAiwdq+E
         1aUunvOxjr94eUdZL7jYJYyJkRvj0wCW5ezudyHk6dSmdIvE/8QCRHhPdPs4mfpnxiS5
         d7PQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=E4117kGo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sVeQ+txF7BcnRyBg1yqqMx/WqdzZNfWEiAqa2LGvzrw=;
        b=e7t13TEEhNesVA8scaLeLYKgKE62C9fjQFA9t8sQA/W94vRvnDty+A4cMBbJQoatm+
         uxH21PYPARPUwBOs/rGoRxkuY5koPyvHGq3JaTO4dqpL2GrAiSA61d2Lkqik7N8z4gkF
         eX7Zs4cUtLu5iyTl5q1uhps8WNaPBufrXUI/21BpUWILAowsSXFAibSoA6P6JJK5yZ0e
         +WW0Z5FfcOaBSN3J/0FOeKjrDpv3FxEG0ZyxVajoSZXaiyYzIqjjdkGhXGxpmvAHeLMG
         u9oXxitFruqvqK0P2FZlfAiSqJ5CqlBcL3HDPclOlHRtMxf0PgnXreZYDQ3idFT3L0he
         oEDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sVeQ+txF7BcnRyBg1yqqMx/WqdzZNfWEiAqa2LGvzrw=;
        b=tFbjQ07fPfsafSDARDqo5LKkhxDsKSGqk8tdXDoV5dCGfvnpm1fEMPyPS72EHVFbbt
         5u4sXcmJCQnN2X3+okH9mzPQxk5DNU7ui03+oE9mWy6IWNPF9HNznnWGiLXmvRzIqvII
         lHRSvL0zALWm3r8Bo4XXRNrhdn//gYJb+gh62fW7f91jCeuoLWzxH2oTjQVh2iYz/wfD
         vBnditX7TUj9K4XN2mxkL8gPD4RN+d+MNCeSLj94gi100zyBbcV78lbcEW6gmzUhgnQp
         xaQ6713VzwpmAi2vSmqZT2Vfs5nN8i2iWu09rXFNHmh9cZxSUWaS3CjN3I9B9q+z5liK
         wu2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XhPWsnxygt3E3CcA1ZvFUeU7y99b+gKQdEHxySoZqlnW2v2UN
	Pp8CRT0bBnJ8oMyKAR4WupY=
X-Google-Smtp-Source: ABdhPJzz4kDLVmKtpSHJxJJMJ+ypt070daxGakAE306o2QLQCXTgeQzHrv5rjDQV2PPFfzHTTU4pTg==
X-Received: by 2002:a17:903:32ce:b0:13e:2245:6fc8 with SMTP id i14-20020a17090332ce00b0013e22456fc8mr6258569plr.67.1633040832695;
        Thu, 30 Sep 2021 15:27:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6643:: with SMTP id z3ls2933176pgv.3.gmail; Thu, 30 Sep
 2021 15:27:12 -0700 (PDT)
X-Received: by 2002:a62:7543:0:b0:44b:b97a:d0db with SMTP id q64-20020a627543000000b0044bb97ad0dbmr6603755pfc.9.1633040832101;
        Thu, 30 Sep 2021 15:27:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633040832; cv=none;
        d=google.com; s=arc-20160816;
        b=Cx4bcG7ul6Khqk/WfhAKmoogxoK3lj+NLO4+nJA2WirHT0Chve1o1VzQ4GaDfc1Svk
         KXtLMjuXmdfUff2vjjGOQr6xKfayaahhjwEqBg8IUrTqL8Uoopnfh6OoPhWNYKp41QPC
         ATq4os166plClSQbhLZPjhw8wTZ3oRtUwbx5/mENvQkQNqUyeBUIlMrcYhCr4TK62WpT
         8LRJDYD9rrmcoo3eKiIDE73CApUXPpvBEW/6nYz4TteliU0cxFi7K9Cm0gfrvZJk3mzW
         faZI6D56hNesZ7plSPQUfdcW7udpQSFxnoZJA8pte7Wgc+ZKCuqjVQ8ZNgP/AiappF+P
         hZPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=u2ub9aDUdGkR7a45M6+RayGW3Mc5Nzpp+BqvE+GQyD4=;
        b=Ged2RztJc/CgDP22AbDUG+ipUdeDhzWC7RaVlr+or3aiyXPEOpXPIqtAgCoJRkyrhU
         7gqblzplgRUrip7DYk57fJV2GWBa9RsO484YqWCVgmGhz19ckythCnSsIOcmM+gX6WBp
         oX99LW94GVki6sqAU/6JS6xGW8GdG8XwzOLvzGs52KeEOi5CtOdUO+L4YX0H4soYKesj
         tL4USNPjzHRP+SCTTwUt3TaNK0EflAIwwyYPSV4qytdbG9gVBPDhkb8iYGjhV3VIJYEe
         9Z4glX0ado5pyQt0qF1O1t4rQhE8z+TGmvz5wXBwJLYidBfmPDlhrKBNNSvmRiRoXA7W
         dS4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=E4117kGo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id c5si223310pjd.2.2021.09.30.15.27.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Sep 2021 15:27:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id qe4-20020a17090b4f8400b0019f663cfcd1so1409101pjb.1
        for <clang-built-linux@googlegroups.com>; Thu, 30 Sep 2021 15:27:12 -0700 (PDT)
X-Received: by 2002:a17:90a:47:: with SMTP id 7mr9261738pjb.46.1633040831839;
        Thu, 30 Sep 2021 15:27:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l185sm4055195pfd.29.2021.09.30.15.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Sep 2021 15:27:09 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Andy Whitcroft <apw@canonical.com>,
	Christoph Lameter <cl@linux.com>,
	David Rientjes <rientjes@google.com>,
	Dennis Zhou <dennis@kernel.org>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Joe Perches <joe@perches.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Pekka Enberg <penberg@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	Daniel Micay <danielmicay@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH v3 7/8] mm/page_alloc: Add __alloc_size attributes for better bounds checking
Date: Thu, 30 Sep 2021 15:27:03 -0700
Message-Id: <20210930222704.2631604-8-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210930222704.2631604-1-keescook@chromium.org>
References: <20210930222704.2631604-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1867; h=from:subject; bh=yfsJRZe5VPlXhNpESupqg/Lx3TB+JxswN2/B9c/1qRE=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhVjm4IH1a0nV/SMwCAsRFQGt/UlwMh4gkN7oMNoN0 ZBYvfZOJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYVY5uAAKCRCJcvTf3G3AJnyND/ 9Jn6MqWe77b4tIIKVMs4JhXxwCeYTw1fq3mDnWNU4lSzNE/x3S6AYm3L/txTVyeheRfpOl7SOWwk70 /CWgalV93SIVwrfyQk3eIHwwaYv5XjUxMKTq9OmuY8shTCHA0Dmu9LfiSuLzV9yZ8WUaBEymsdsauL A3bK8vkp9rzhLE4geifpHgJ2ELbeD+A+KNRW5ojXhXB4SBMsdYtEqRGGSsMURPAyAOIn14yPxBLu4M ILNp4YRWjuhJWMN2YAc262qkmCtJjdPPTiQirjxUttsVUtLbK3BsOqjXu+T/dGyFDCb1+eCMJ0arG5 LR10YyJAmOxmECGqzhaP9h18bHNuGDnHAxpPXDn+AhFwwI/Qw5u7+QnYpaOKUkucflZJbd4KykcidL NxsnbLLexoPG7e3txH9ZWIYh72T0Se7V2u93sp9AhF80AYirhFQw26z3rqV3XeCFQkceyWEaZmiras 5eoD20fPo4Dlt04k/F5h2NaBn/LUiB8YxoMnHv2hVt8Ft/cqmhNRqkI/z5Nux69TO3JMtdRDX67id+ /uJBIcZFdewl3ka+oWfCVb3bpMGdaHVp3+bmLiQGZXR1z6tnH3gUZVUECYU98Kh0AW4LuiNi3A/xGa 0WhDo8ht51lnbE7T8FRhQ7FL8vO50a8MszXtDGPQpVltL0E0RubMc+2FVe6A==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=E4117kGo;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Content-Type: text/plain; charset="UTF-8"
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

As already done in GrapheneOS, add the __alloc_size attribute for
appropriate page allocator interfaces, to provide additional hinting for
better bounds checking, assisting CONFIG_FORTIFY_SOURCE and other compiler
optimizations.

Cc: Andy Whitcroft <apw@canonical.com>
Cc: Christoph Lameter <cl@linux.com>
Cc: David Rientjes <rientjes@google.com>
Cc: Dennis Zhou <dennis@kernel.org>
Cc: Dwaipayan Ray <dwaipayanray1@gmail.com>
Cc: Joe Perches <joe@perches.com>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Miguel Ojeda <ojeda@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: Tejun Heo <tj@kernel.org>
Cc: Vlastimil Babka <vbabka@suse.cz>
Co-developed-by: Daniel Micay <danielmicay@gmail.com>
Signed-off-by: Daniel Micay <danielmicay@gmail.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/gfp.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/gfp.h b/include/linux/gfp.h
index 55b2ec1f965a..fbd4abc33f24 100644
--- a/include/linux/gfp.h
+++ b/include/linux/gfp.h
@@ -608,9 +608,9 @@ static inline struct page *alloc_pages(gfp_t gfp_mask, unsigned int order)
 extern unsigned long __get_free_pages(gfp_t gfp_mask, unsigned int order);
 extern unsigned long get_zeroed_page(gfp_t gfp_mask);
 
-void *alloc_pages_exact(size_t size, gfp_t gfp_mask);
+void *alloc_pages_exact(size_t size, gfp_t gfp_mask) __alloc_size(1);
 void free_pages_exact(void *virt, size_t size);
-void * __meminit alloc_pages_exact_nid(int nid, size_t size, gfp_t gfp_mask);
+__meminit void *alloc_pages_exact_nid(int nid, size_t size, gfp_t gfp_mask) __alloc_size(1);
 
 #define __get_free_page(gfp_mask) \
 		__get_free_pages((gfp_mask), 0)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210930222704.2631604-8-keescook%40chromium.org.
