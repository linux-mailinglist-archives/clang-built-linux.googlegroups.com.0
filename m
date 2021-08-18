Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXNL6KEAMGQEUUHBYZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FB13EF9C6
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 07:08:47 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id t62-20020a625f410000b029032bc3dda599sf625980pfb.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 22:08:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629263325; cv=pass;
        d=google.com; s=arc-20160816;
        b=bGMyPiQH6U0m0j3jlJS1CcmkpvQsoUi29+J8WPykgig6r37i7mX023H0FVFtvz0fWa
         J2IR8LjMJmldgPQsd0e+fpIt/WoFCfLpuAo8KA1sVkz3KZuMD8G5lCZ7v0s4gw00nJS7
         741VQYw28c5BR6ufnpDz4all8/hbuixFB+0J3ZmGcEI/Q81StWY9HKSXKEdYUenfC8ZO
         oRccu9mA0lKjmszE+qNuZILDjwJzclKTvEbSp0H37eUO/id1zx/z524XTsY+07duZiaf
         LPgKHDAYvTp5PMip1I4cMF8Eds0koL+j1zJBWwOc+s0oy8uFYYpbLc+UNmM6oh3hEgxa
         3H7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NCa0jLRTKN7t8/m8syZ21lgWXpXuW1h9VVUbKqIsjEc=;
        b=Vm5cqh8pdGIUWrbzrOzZ1MLD6ZKz5JgZNopxnPM5Tr0+LZFpH+RwA2K+plFBvb93TV
         E4VSsU/G2HGeQnMnGVrQXo8Mquq7vAt+XoIuAvXl5OQ0G2/o7qZAf1z+oR/T+xNMqkX0
         FuBCV9u4C0C4VgLI5+k8BE8uxmeQulkpR7tXMD1/9wWpfDVFbQUoi0OhFrug15jmjsBd
         pFpV4n8uM+L/9RvlSZAvTkDzHoMlnUypl1QyZHPNiHvx9GS1kFZYefocsLa1tBvf5LPA
         dvggzWpRKLgwawfai5jR+xFk8Jm0YB6fj/1Tv3JXEuwkXjxqZ9wKTWekpSgiqjwmq0qJ
         x73w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QfgA3m29;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NCa0jLRTKN7t8/m8syZ21lgWXpXuW1h9VVUbKqIsjEc=;
        b=SNLR8IxO7QvnbcJ9k8FddDLmJb13tvMWj8RthvCquUGROVcOVXazyfvEhwhK5Qr4D+
         lqB/ggRUEpKVjbCrlMYNReT4NHQwnldxIDfIn00KWGmM/ph7bZEZBBXixvFu5nMO3p3f
         TvNF7BHJAI/gvYsIXKaP+8Dz3RDr/vYAE7UH/QYBpiMf/IWFrjcMAZQBkq+iFTpvtZmF
         U5VIRVFeiOyedoJAHa8lWzM1MuNp+aeTGl/OONAbrnUjBWAg3D3/3jLqAbms+GjjXb4Q
         K2n35EFHkfknZLYGR2rSXj8p3FMCJB/zcmFiWt1f78PycZsTAKTE3CNiNwHUdSoT+prm
         Z/aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NCa0jLRTKN7t8/m8syZ21lgWXpXuW1h9VVUbKqIsjEc=;
        b=QQx6SiVji/rKLHRRkBGUMZPriE57p6YMiP5bZuu+fmooqVh3llE70fcbQwn0iiRpSs
         K01FRfFYiMHrISjD53u/0vi9WjsPjVHPxw/bJy7jJGlbjlY7GWEWfnifuGDKkn4VGACZ
         IkxWnOYjrXCCOXJRlS4NfjZZS5MV2gQ7kPI166OcvaSUVSLucBsTlO1DA0ffh462Z7fo
         BkLrkGS5Si/3u5PT5hUKrBIKSKaSNTvhME2yE1fXDxgM4qpPIBRDg9yknToGErZ877Ir
         RWvmr77oC0lJVzJYmf+5hkjIbKNcsOT4RIHaf1qYXvCdlfWHAynfkhKJhB4vj1mvrySC
         ii4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530nDLzDLkWcs4ZR1C1o551qrFtNCcx9DH4Q0/iGYaevRRjTMyvi
	dWJbsfClggr0lE3m7U6zGls=
X-Google-Smtp-Source: ABdhPJy0T3pxVCAnS8xPNiCgNiA5wAa6g0ksKNVdWnH/ptBz/5PDmT8/o1zqjxCHDMeMxX8+oqEE2A==
X-Received: by 2002:a63:5c04:: with SMTP id q4mr6986234pgb.127.1629263325642;
        Tue, 17 Aug 2021 22:08:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:656:: with SMTP id 83ls589368pgg.9.gmail; Tue, 17 Aug
 2021 22:08:45 -0700 (PDT)
X-Received: by 2002:aa7:8685:0:b0:3e1:76d8:922e with SMTP id d5-20020aa78685000000b003e176d8922emr7273582pfo.45.1629263325093;
        Tue, 17 Aug 2021 22:08:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629263325; cv=none;
        d=google.com; s=arc-20160816;
        b=ELmwaPmBZS+TmyaBJtSML9kTLLZbTIgQsGsOxWQLhMT1UxfhIcLfL7lLtMOy8Lxpus
         qzAJsosEtfQo0AiNI8OyRY+lL/OgYcPhG4lkBVGjG+7GQ7S48kOEqVE0UaZ3F08bCOR7
         D/h1igXKc5WfNOQD6c7i/STVu4WS9Um5swYoBp+JmtfDYLwJQyC7NeMFxKCbd0LsOkWy
         aIMz/THLdfgb2WjbAH+5RGF/+WHrtojpq5pCGgLTBCawSYmmuwX0csmW6xOAE7heawIw
         MyhiJuAlACxZ2kuj/FAwWMd8Mrp9Rrl/IGcHeJ7NvGNyGFw2aZmzc4EIhPqFq4vdQ1Zw
         Br9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=odUz6n/RKpUPExqy4Plx6hZKFwyikJ7mCPOENAXpi1A=;
        b=ESfjlVjeaqTIpJjpE2rIXFHpd0DtZ2IVrXuAVl9Scxu86bVZVp4uGh0jiAzVsrwtco
         fhkTHlVY/QzQp1y6snfc7SiB51a2BL3VbRYFMycZFM2dw7KxZLtGV54PciSdX84ffhtQ
         dy3g7JjHE+FlgG2fDUKSrjmQsck36ZzwX/qxESBDOx5z8U9XlQKyqMzDNKue1kt0AFzu
         dhFZ89WVf+nBTAdJrqhwwS4gW8QENSLK1vs8ahOU+YM3AbLEQiWf0Tf947VpzGqFk55/
         pY7hYU/aGLbncXAuJoEv66QYauHSPFqku/nnXqRC92uoPUrDc3fLU/LMsfPS+Hg4Gfzk
         tSJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QfgA3m29;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id e11si365150pgm.0.2021.08.17.22.08.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 22:08:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id j12-20020a17090aeb0c00b00179530520b3so8207256pjz.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 22:08:45 -0700 (PDT)
X-Received: by 2002:a17:90a:bd87:: with SMTP id z7mr7384174pjr.163.1629263324923;
        Tue, 17 Aug 2021 22:08:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b10sm4425381pfi.122.2021.08.17.22.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 22:08:43 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Daniel Micay <danielmicay@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-mm@kvack.org,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Christoph Lameter <cl@linux.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH 3/5] mm/page_alloc: Add __alloc_size attributes for better bounds checking
Date: Tue, 17 Aug 2021 22:08:39 -0700
Message-Id: <20210818050841.2226600-4-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818050841.2226600-1-keescook@chromium.org>
References: <20210818050841.2226600-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1375; h=from:subject; bh=cp0O8NJngs9amnriLD+6h+/L/ha0ko1xnZRmO7UAZwQ=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHJXYxDq6T8pm0e3owI/dczoEgQdLOkB19YGYAKIr XNQYfSuJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyV2AAKCRCJcvTf3G3AJi3mEA Caf9xRewJicK7Djb8O1KuuuUsMzmapMH/i8WIOm/xR6TNmV/o9Rctjak4Yy8/DQEnYWERnzuJMazvR hUF7XU6j2B/hKSVHwy6Uo83WnrAaUNwA+I+PCXbcZm51to2scEh4u1mmz93c1s7P0CEEZp1mLy9JRE HrdfZ8ZzT5RngtrH6P+sD4456p/tnCI28R9SXFt/qoke6KZmbUFTLu4FSIRexjEY6IIcped2xKvWTi 54kupXtmBj5sTQWElu2ixPtov/wAymO275s66hJOnus7rv1ff+OwTvSTvGOyFe0kDhrDiXJKs2HuWs XEvxdOq1U0kML4Cpg4M+keh7fruNGlDr2+yDbDQ9fc4MvCaRVLJqFjao4dBmVji/PgMqB8MWR2I3YU ErShjZWeHSBrttD1kuPcyqhRHqQL2Ji0I+GufYvMP5cS5o7o8Cqkhcs54OShP6Jd0gveJyisFuT24L 8hHLvD14FlRpuHQ5QWeTeBTmdxxpqcspr+3RKkgAXmju/WIjNLHkzkg6rzyEELKnS8eryi5bqbIF5P tC0FIBAmqeiiMJhaGevB+Rj2YjSc1pEFcIPcUHTlZ5PAaDfBBvNhgFqosNy7b9XQYZsv2dquDN8I6k R9sdrdJ/ybYIj4TWIuLE+0jfsJs+lgR31VHnXTNXI/C9QqYbdDj+hCbsfWxg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=QfgA3m29;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c
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
appropriate page allocator interfaces, to provide additional hinting
for better bounds checking, assisting CONFIG_FORTIFY_SOURCE and other
compiler optimizations.

Co-developed-by: Daniel Micay <danielmicay@gmail.com>
Signed-off-by: Daniel Micay <danielmicay@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-mm@kvack.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/gfp.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/gfp.h b/include/linux/gfp.h
index 3745efd21cf6..94e57c752308 100644
--- a/include/linux/gfp.h
+++ b/include/linux/gfp.h
@@ -618,9 +618,9 @@ static inline struct folio *folio_alloc(gfp_t gfp, unsigned int order)
 extern unsigned long __get_free_pages(gfp_t gfp_mask, unsigned int order);
 extern unsigned long get_zeroed_page(gfp_t gfp_mask);
 
-void *alloc_pages_exact(size_t size, gfp_t gfp_mask);
+void *alloc_pages_exact(size_t size, gfp_t gfp_mask) __alloc_size(1);
 void free_pages_exact(void *virt, size_t size);
-void * __meminit alloc_pages_exact_nid(int nid, size_t size, gfp_t gfp_mask);
+void * __meminit alloc_pages_exact_nid(int nid, size_t size, gfp_t gfp_mask) __alloc_size(1);
 
 #define __get_free_page(gfp_mask) \
 		__get_free_pages((gfp_mask), 0)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818050841.2226600-4-keescook%40chromium.org.
