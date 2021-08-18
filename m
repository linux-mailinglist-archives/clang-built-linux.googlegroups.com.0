Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBWX46WEAMGQEZUB3U3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id CA58A3F0D87
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 23:40:43 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id r35-20020a635d230000b0290239a31e9f24sf2195149pgb.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 14:40:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629322842; cv=pass;
        d=google.com; s=arc-20160816;
        b=SfAfdgYUcd8dYh5bMqEBRJmcWMqJPfLql5MDD+T3DQu5EilMWxSOV/9hfyIrgzJ7HW
         OY3Ko4sAyXWszK7pN5RbtTPNXS03IC89ug0LVJbpJCHiEBgX4yycs+McXUih0/+OC2Bb
         yMYZTXugr2rWBEZThVNNF7rOgFT7tvD+1xUQgoZzo8c1IFBtAIbQaJVEvSNZF3ABIcn8
         hVAUDjAkV9N1ATUWka+2EBoAA7P7LsLWzSj8iyjrQHJUhlHnsrs8+5f+RNZz7ngFisXK
         pO5E/THficBA8kdl9c4xBKXI5lpuENa2YparDxrcV/vxgyRRTAChuItrO0T1TG7x5m1E
         Errw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=rkhpzjhimlkS7Naw2bPuDDLNqRbV1rIj2RM5gRqxf/4=;
        b=emV5WhpCy+OqqgDtVaFtrAu67dRjxc3ja5lHC//BaXIgneSvdP5c1SBkRQXqJ9zsfu
         MMkvqO65Egd9CqzJ1h8uTamSZgpJ/k8Ydy843drU+dIzFqgXRpUP/ds2OhZIy8K6dRxl
         T3aQk2L9SW0zVW+KLQ+XKCnr6UjcggbChs7pcOfkU+QOlhcjwMpUVvlarBfo/3EgFD7p
         layhZpO48H6CA5Gskko7fdkNTVciWLPhnM3Rf2S/WC0NBVXToVSBJlp3kRjUMXUE9Bvo
         I1ZQyT4c7QdRYEqyrHjRrtDn+lvghRut7CL+bjzgCz+8JqCenk5cc8KMYMv3j6z4cRwR
         KXYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Qy6If4qc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rkhpzjhimlkS7Naw2bPuDDLNqRbV1rIj2RM5gRqxf/4=;
        b=Sx/83AOw9h+aqeop+ULMw9zdau55fmmLYVVaDJ1/nHbb6rL1up0i4IPps6BLPTpQzg
         syvl/eR3hafalMH5/57irN2Buk0LN4JnG/tDNQ0YAB+TPt4+oJCDqC3qc030VQSRGRPB
         RdUxCRdtHofGPIjEVHcfEdlbInwN9uy/KiZxyOm9NvWJLEdNhlUa3Fz0sYSJjoDj9Sv0
         tXFrbSP3SQfp21C+2Ox0u7EZA4ml7v8XXtiNO/J/uFszkJ68C2i7UMXAQOoXyjGGs4Js
         Jd9I3pQwI9YIuXEpCrytCUN2nQ0X0ecyj0coAeOcVlfEERRrJVAZ9gzx5K5Ielnokbbk
         yP4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rkhpzjhimlkS7Naw2bPuDDLNqRbV1rIj2RM5gRqxf/4=;
        b=a7lmqxpnZDAsY2MC1ms6xDWYxkBCWhIBY49AmeDZHkjuwEaLFOiAst1aRGUF74t1U3
         HwMFRQDT5f4e5o4U7cZHxdXH/h5vXLACU8r0joIuNQOSxZfjCf3bGPxWufRHWTCF9ncj
         SMYJopA+WUxZImRNJovO5ImIsiMhMROV5JBCosOIasYPU37uiGYTnpoDNK1QCG/MXvME
         G1/bMl4eLXEbVGqKBn4E1XMe/csXkgsgSvGimyeL9AZWny1cEiy9x4qxqOTegYF3/K8p
         shHQo4JGOZ58Ud200hNoMqRhXq/rn+iKYHO2ycwKcQy+5yPvqIlDsM8bjDvmtHYjQO/6
         ANBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pYOge/x2WZ98c57tHvpUxrbwkVFOazq5jwgMsaSSIS8bUmBdZ
	2l3SOfEkzePV0/2Fdd9e3vE=
X-Google-Smtp-Source: ABdhPJywJoZnIVbt2ON8Wcw2lsuqg7W1TASj37P0HtEtW6gUbtmMClfxfg/j6871ZL1YWjPCDGNw5w==
X-Received: by 2002:a17:90b:e08:: with SMTP id ge8mr11406243pjb.204.1629322842529;
        Wed, 18 Aug 2021 14:40:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:9c5:: with SMTP id 188ls1645433pgj.4.gmail; Wed, 18 Aug
 2021 14:40:42 -0700 (PDT)
X-Received: by 2002:a05:6a00:1ace:b0:3e2:2a73:e0a4 with SMTP id f14-20020a056a001ace00b003e22a73e0a4mr11624013pfv.73.1629322841895;
        Wed, 18 Aug 2021 14:40:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629322841; cv=none;
        d=google.com; s=arc-20160816;
        b=RRnBh9TxHgZvQcRIKiKQvYCsvJoyOywcil2WV47RxP68Qa+EtbpAgY60HnXGxGOdIo
         TCC71/39cwFSUjmU6pgVbHsmO13KUjqYU45b203OQ5n7EBozGb1n1173YI5NDKQTNIY6
         IV7IkH7RHp3vMkH2Jft8wpS/EhYmJJ6raLP3ktsQdbcQk82oA81+eKJJ8IQEC+g0CKNm
         jwRCSUtLbFIZ2tAxcKes/KXxZjMCdaqDg4g09X9kcYKeJ9XBhhxP1Nj6uGoqlwC7bud6
         V57v2VjiWvqVCVVBesmTGO7aPwY5XoVB0QXS2z4hQFFciVSDhQlzX83gt5C4hE+Wl/gF
         uWsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gkpL6W5wADmlyNHUFZldG5mVI9okFbona7uNlwuA1mU=;
        b=KT4VZZ5+gY0oiObhgN2K+8lXzilJz2DsK4TE9dT9JZAdwO6lEqGsRiwII7m0FiHmjE
         ziPwFz/zvHzLXXQk4TOlikDdMyDvr+Bbapa3T7kIG+rbgUzQQoKG1HycGpJIJif/7210
         CnRJuDytILevhtfrMxy1NCdse5AXZ/6SseEvD7LO3LxCSO4+fQWvobd20N908qlhd6Wo
         IuOj3gwqRB1sJ0BsIshBiFQM9nZNgJi9kVYQjlnYXM+pNqy4r1wrCk5wXT0fBo5GUj74
         eVVT1Zq775cXG/dcgf3C8gMtjcNCpC5TuQ8BOPyUMQ1FwpRDXnoiirM/DpYdr6SQ1HyM
         sMjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Qy6If4qc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id m9si131118pgl.4.2021.08.18.14.40.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 14:40:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id c17so2708725plz.2
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 14:40:41 -0700 (PDT)
X-Received: by 2002:a17:90b:fd3:: with SMTP id gd19mr9573234pjb.76.1629322841706;
        Wed, 18 Aug 2021 14:40:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x19sm834704pgk.37.2021.08.18.14.40.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 14:40:39 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Daniel Micay <danielmicay@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-mm@kvack.org,
	Joe Perches <joe@perches.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Whitcroft <apw@canonical.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
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
Subject: [PATCH v2 5/7] mm/page_alloc: Add __alloc_size attributes for better bounds checking
Date: Wed, 18 Aug 2021 14:40:19 -0700
Message-Id: <20210818214021.2476230-6-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818214021.2476230-1-keescook@chromium.org>
References: <20210818214021.2476230-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1190; h=from:subject; bh=W6Cb28S2qXmrTKUD2DPqGU+sVI4WS8pidViY5hBWcNE=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHX5ERWo0fTNGYg6mwSKLViBT93/C8jzcI2r2WUjP LwkFmOOJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYR1+RAAKCRCJcvTf3G3AJu5UD/ 9yIUyrMR9IxHlxKAanhzIsME7zxx04n6zWRtwcafigdh/kVuzrzuRYMif8CdvvgBvmz8HJwZdDcdQE 82qUSTku6Uc0adci2vK6LHAWS+sDWZ3y83xb61th6T9qdLd8fcpin+QnJYegrBY56S1DOI4ipiyEXa w68LROW++aDn1Yb0oS+5DBCusLj0DqNdO63YohcPDDjtXNNamr5A6kjzJLbtUDeFJDxp65/gisJEo6 oV/morkS6bYX73qMpvcGnt1dXWLw6irYepPYWiyYPa29OL4bzmjo8TVNFj6869tivAN6s2p8BxyeHM 5hpfLWXwu1dC1GqLFGMxENpbegEsaqkzhn/KFG3dPkm8DFSCbTzB14kZ7wr1vqD65b1FQoZhlghJEW PWciluNwgNnwlQKgC3uvfsvBPMJvWN5974DLE/OCwJWr4P8y6OGFjeAg3GFD4ds+UgtkXb9nEwEVij SojHGWi6tife8OuVdpiyAaAousPkkz02htMpPDwG8SSxJJO1Fw9CwRWGDF0sEkOHwCCosUKhVTp8Vu UivVUOYfr/LVdMW5lpya4iiJDoBoL8ww5GKz0SAGrRpmPpbLtWALZA9bu9NmpyoloQ9lKFEAACF+dJ Fq0C6qVNHPMSUlCr0vhM7/JSbua0QjaQtTxhpC+iz25WikK4frNDFwJKbcnw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Qy6If4qc;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62f
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
 include/linux/gfp.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/gfp.h b/include/linux/gfp.h
index 3745efd21cf6..897538d5ffd2 100644
--- a/include/linux/gfp.h
+++ b/include/linux/gfp.h
@@ -618,8 +618,10 @@ static inline struct folio *folio_alloc(gfp_t gfp, unsigned int order)
 extern unsigned long __get_free_pages(gfp_t gfp_mask, unsigned int order);
 extern unsigned long get_zeroed_page(gfp_t gfp_mask);
 
+__alloc_size(1)
 void *alloc_pages_exact(size_t size, gfp_t gfp_mask);
 void free_pages_exact(void *virt, size_t size);
+__alloc_size(1)
 void * __meminit alloc_pages_exact_nid(int nid, size_t size, gfp_t gfp_mask);
 
 #define __get_free_page(gfp_mask) \
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818214021.2476230-6-keescook%40chromium.org.
