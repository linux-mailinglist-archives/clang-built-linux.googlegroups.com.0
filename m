Return-Path: <clang-built-linux+bncBCOI5MHU24HRBPXYX6DAMGQE4536JZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC123AE1B6
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 04:41:03 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id h10-20020ac87d4a0000b029024eccb9d079sf2411948qtb.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Jun 2021 19:41:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624243262; cv=pass;
        d=google.com; s=arc-20160816;
        b=u+98gxIPjY5jeH1We2uDndHs77TQfNXJ99CxbEoJd5iyV3WshUhGNWQo+rPO8folTm
         v34DM/f4lxK+7AACo9t4OLO28fkALlY7v2SFlAevogszFTc3hFn3baFB5kHuW4pKW9e3
         vIv/Ufjpqz2sAbd1UksuOje9T2ACaUZMZCjo+lAkqv92SQdWieRRuUU3rfoSqSoW9wMn
         FFCWJh4fQTkTo9Cm1OZkQPEO+Axm6GZlCzUtR14MQRM4KCgzCPNtsRM2Ilt5biBX1MJi
         3+qIMRE6t1ilV7Be1+UMIjWj1aegSPDMScFEDlE5yN1qbgv3O7Tfp9QYio/Zg7vsZNSq
         K9Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:mime-version:sender
         :dkim-signature:dkim-signature;
        bh=MYsZYMWUwzQ21xK3tb5PF2IaDcS4IUpj+BKlvnsc0f0=;
        b=gao11URU3OuGHm6lcsTzuzDHv6Z5JbqE2qox+3TV4VuSIRzQ7UVNdHo34hx09D2zsT
         Lb79a4sHvIh1Ca0Kh65seKxBbtsYWXo3i331cUUkKAHiXCRZ6UthbkDItnYYlk/LU7bM
         OmySATPObF4qYClsjYnPMl8g3hHo0mlT2jVgz28SGKwalGnU9rEXx8hemEZNZELQNxSX
         C17Gzb7dSMHoXU3diit8OY9+4vDi2ojCBIAN3gt1j8TGUcnz3IQXrL2hLqhJ6lV34yez
         cBlyiQj+Bn6N5ZGjzPR81WGecl3A6AYZQMHdMy3Q8fyRVIQy9eGYUDIZg4ZJRK7QQEM8
         BPdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iWdhN3CF;
       spf=pass (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=gumingtao1225@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MYsZYMWUwzQ21xK3tb5PF2IaDcS4IUpj+BKlvnsc0f0=;
        b=ZnFljKCogYzVQJc4qSAlXWnucGOz6BZdhUbTMNsNiOhOzqwCOQ/keb/mc/trVhwX1G
         FQcfbYln2gbXs2Eo0rtQoIHFZWy2arB9xVYBb6ltZxBndb6NQq/8sTKC45YEEO+pnwDS
         I/f/nd/Q3zv7NYQfBBE07nxr3Wdz1ZMzx7r1UVv6l8962MA7BC5jkhso4bXNw8fHyhpc
         ntiXH1dcEfE15klOyquF3saUs1rowX9pHBzlUbxAJh8m9fOwcD3TG8oyiGZ4j0C1RwXs
         rKXpfAaI0+6PBaJoZ6EJAsYWrmSUVI6WMRpTHDrTVoC/mwuob0IVpwbedi7r5aLlrvWI
         C3XQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MYsZYMWUwzQ21xK3tb5PF2IaDcS4IUpj+BKlvnsc0f0=;
        b=e7VfDxuJ9OHj/DkLAYe3uQm5Sc77jxl1V5ALeM7rZuaKFshG49TZUg0/zW2xjxEOVd
         FBfyJvpPfopSurnJUi/Egsuwnsp/M2TUtsjmA/YF1mOxduXGXqPQOAtzEQ2gEB/owoiy
         Afs8B821IViIEkL2vQXMQ0tUamH+ldJkvicI8XOx7HgLgka0JUUpvQd8uIRJrybAZDcX
         E8uo71iikc2bIEaRMhBnx1SY23i6/2z8231cP0JwQ8hcLEr61312bVLeUsaIGm8Cwj1t
         2Dq1qHmV1NoxH8U03o+VobuEh7vmv91Y1O69flBRR4IAU4tiiTzs0OwImKyNuF0i/SrI
         1i4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MYsZYMWUwzQ21xK3tb5PF2IaDcS4IUpj+BKlvnsc0f0=;
        b=dOUIhn2Rxb18Lrf7y0zzNdYE34UnEyKAzfavQ5qWP4/5XSkNJCgumTkFaoPuTF7DzU
         Z12whmC4DIC/YG1B/d8xNE3db45wdMZKSAG3IBJIZgt1P+ES9rVBBtIXTqi1MIaftJzc
         SLNZkz7i/DDJYHfkw2dDzywInePErRIzisNH5h8uObCA+k8ZhWcVpiDl/pO5zawxJeLt
         grIdcDcDWEJahybpkbGFACvR1dCZAzuHnzkMFc8HfxaHjbn2DXvjd01NA+U3V37dm6lc
         AlMktqTKIiY9Gmg4ucR9dKQzZusqNGDwliP8QzsiGCgAqgrhvFAZmFufq1EJBpOOspOk
         +YaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fLCwMW9dSCf4K4pw4YW3Sr0UQw9nFHPJ1Xh6OfHvfaVWErp2O
	5l1outa5xEPwnI+i7UmlDcg=
X-Google-Smtp-Source: ABdhPJwrbRrjXL4olWnyKRmDo+ynYHR0++sQL6qedgfj5YybvzQpYtOLJY0YvsQ1RW6/o2xMB4sW8g==
X-Received: by 2002:a37:4048:: with SMTP id n69mr3219300qka.416.1624243262451;
        Sun, 20 Jun 2021 19:41:02 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2995:: with SMTP id r21ls2706349qkp.2.gmail; Sun,
 20 Jun 2021 19:41:02 -0700 (PDT)
X-Received: by 2002:a05:620a:1a8c:: with SMTP id bl12mr13739208qkb.103.1624243262041;
        Sun, 20 Jun 2021 19:41:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624243262; cv=none;
        d=google.com; s=arc-20160816;
        b=uuG0M20njo+GNw1bOBRtiC6Q7mVE7yIWPhLEToWb4eJFkvRJBTXR3gTdxB9OyRpE9N
         g2i+prg03GL3cMGyb8fkSNiFFyAI2LhI6y7MtiESm5iBSE4d2EhM9EVX0O/NBqgOdy8A
         EFxSm+RrR0vIXS2ZXvxXS/peGsnl9NCdlDtB+nX502MfFTZqAsEAd0bL+2lek1kCTZtS
         ApYqGv3faaIH7HPTcUQMbOZyx8kB44EiO4b/YOEEzC+ssp9Rg+n3+dL5EZU4xiFRcCe+
         vwkjMd2+6X2+Ai1ROyWpsm0fLVAQn3JSnChRmgcreEBaS4toIr9PhG45qPokH30kfy9P
         Fo2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=tiITAbqpPnqkOi6wakpBtQx52McUyGYZCcHPIl7xsy0=;
        b=UsSFsKtrvlFgpGpMR4fc08AQLwEAKvNAdZuhE0Oz6wagfq8E08hIH9fAup9fM6CHy5
         yCQBXvHd7+rQAXOTQ1nnr/pl858BGZtSy2qZmTmCQm2B+a9UbtVPS09eJV+ac2EwFr8S
         WQ4i2g9Bl0ptEcOjnUJkmF5EbX1j16j5BPasV/iAMlz/RxKCBSEHog67AG4uUoPo1759
         PT4+FVLVzN1hE8NnLctnJinTWmlayo/MfW2fP5/qkz2iJbX7jLE5pK1GLQeXOYl636nd
         PUh7v9Rz/YDSBcxK0EzElnIpgflqpbTtoUM1E4R/2z16juT8DmBw2hiSOYBRvWamp9xB
         ViGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iWdhN3CF;
       spf=pass (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=gumingtao1225@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id j16si1335035qko.3.2021.06.20.19.41.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Jun 2021 19:41:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Received: by mail-pg1-x530.google.com with SMTP id n12so4191480pgs.13
        for <clang-built-linux@googlegroups.com>; Sun, 20 Jun 2021 19:41:02 -0700 (PDT)
X-Received: by 2002:a63:ff14:: with SMTP id k20mr2714079pgi.390.1624243261301;
        Sun, 20 Jun 2021 19:41:01 -0700 (PDT)
Received: from localhost ([43.224.245.180])
        by smtp.gmail.com with ESMTPSA id p20sm15052178pgi.94.2021.06.20.19.41.00
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Jun 2021 19:41:01 -0700 (PDT)
From: gumingtao <gumingtao1225@gmail.com>
To: cl@linux.com
Cc: penberg@kernel.org,
	rientjes@google.com,
	iamjoonsoo.kim@lge.com,
	akpm@linux-foundation.org,
	vbabka@suse.cz,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	gumingtao <gumingtao@xiaomi.com>
Subject: [PATCH v2] slab: Use %s instead of function name
Date: Mon, 21 Jun 2021 10:40:40 +0800
Message-Id: <e73123325fa47200f7b94ce36a0152fb774c0538.1624240708.git.gumingtao@xiaomi.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1624240708.git.gumingtao@xiaomi.com>
References: <cover.1624240708.git.gumingtao@xiaomi.com>
In-Reply-To: <cover.1624240708.git.gumingtao@xiaomi.com>
References: <cover.1624240708.git.gumingtao@xiaomi.com>
X-Original-Sender: gumingtao1225@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iWdhN3CF;       spf=pass
 (google.com: domain of gumingtao1225@gmail.com designates 2607:f8b0:4864:20::530
 as permitted sender) smtp.mailfrom=gumingtao1225@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

It is better to replace the function name with %s.

Signed-off-by: gumingtao <gumingtao@xiaomi.com>
---
 mm/slab_common.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/mm/slab_common.c b/mm/slab_common.c
index a4a5714..ffa3b11 100644
--- a/mm/slab_common.c
+++ b/mm/slab_common.c
@@ -378,11 +378,11 @@ kmem_cache_create_usercopy(const char *name,
 
 	if (err) {
 		if (flags & SLAB_PANIC)
-			panic("kmem_cache_create: Failed to create slab '%s'. Error %d\n",
-				name, err);
+			panic("%s: Failed to create slab '%s'. Error %d\n",
+				__func__, name, err);
 		else {
-			pr_warn("kmem_cache_create(%s) failed with error %d\n",
-				name, err);
+			pr_warn("%s(%s) failed with error %d\n",
+				__func__, name, err);
 			dump_stack();
 		}
 		return NULL;
@@ -509,8 +509,8 @@ void kmem_cache_destroy(struct kmem_cache *s)
 
 	err = shutdown_cache(s);
 	if (err) {
-		pr_err("kmem_cache_destroy %s: Slab cache still has objects\n",
-		       s->name);
+		pr_err("%s %s: Slab cache still has objects\n",
+		       __func__, s->name);
 		dump_stack();
 	}
 out_unlock:
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e73123325fa47200f7b94ce36a0152fb774c0538.1624240708.git.gumingtao%40xiaomi.com.
