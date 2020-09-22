Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPNJU35QKGQEFPPYVEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A07C273A82
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 08:07:59 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id s4sf9734333pgk.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 23:07:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600754877; cv=pass;
        d=google.com; s=arc-20160816;
        b=ePAjP1mvFIUKYNj93vitd7IovmjCgCQynTjyyAzkxhkW3pF1JDtb3tuNzIzYLCzmlz
         cy+tVyU4hxEF6H9wngVXGcmHrMrPAJGFt2b7vVfVV7p5Jv8AH5klVGkfspPVLDDJ4AF7
         39VBpb3aWiKOUBhvZBYJsKo4PQ2c0dP6YbzVvArw4B/WE55UWwIZUZdARuJE0iTD0isM
         6ltF+HHXnNu5YtGgPX1mDHfJ2Kup6PCXo++dTN9svyhW4t+WkKYfh5XB0jm3e7wGzUqi
         R6//Im3SuNtvRHLDVfr4Q2K8BweBcunwfQOzwmut8TUDiV5jtfosdcmiGAGDYyJ9YSjk
         1G6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=f24vHSFYs0MVBpXusQ9A0kHqrB6FcnDsvDao3xPJoAM=;
        b=FbizrjGZag10x3OnCaHF287UyN3ARV7mqHzh/hl4VIO67XZUtQI8sUHDaSpMpZUvvf
         P7BtBa1qI3x6NwnlOstCu+KYn6cnWqNEsY/GguGXy9r9PvcXKLywCQRqGJbMOCOJn1A/
         hOIpzDUTG6BGDfneFahujL6cnNQHIjc1SawyUqb7VK1sXqzf5m3PwVkCBw2bZz/ii4Eb
         Y9hGVHsy+awtNJ7mR0cdYK1tyJDXtogY10YikCXsdChyeJQZ879sGGTy/3NdCsqY3hjG
         UuFLic4ncw5YXb9IZZ6jMyLki4s17phFDustkINtfE8TbQL/PbBBJqwkvDNK/Mxx6ryF
         U0VA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iuUH7P98;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f24vHSFYs0MVBpXusQ9A0kHqrB6FcnDsvDao3xPJoAM=;
        b=JtyJwIt+lgbJksOqqKkVDA7qw5fNkXTItEceBseeNjiQ/7NuNg8W063ZLJDmIo6Dst
         q4CwW9AFrdL/3lbtc7TVnjUVLorS2y+SEslir/wRZHk4PtnbSAyr0wtHS9Qo7b2mex3F
         Vga3pFX0jgzuNwtlC0eJmVDOvYhFVuWOtVZqvsctByNQlZ/1ivOzbcLMTKHuc1TZSOBC
         GCvJxbMIdXq1GwrJdKyS2o+x73UHVlqgRveMQciCUp/u79G0MrlKULbXOPYrEnVg8DnM
         W2wO3ZnCa+4o/xP8oC7Bv4kQRFA4u2JF6izrebpT+n8WMUv0nd1SRVEZmWFdwjdi3yNO
         jDnA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f24vHSFYs0MVBpXusQ9A0kHqrB6FcnDsvDao3xPJoAM=;
        b=sZ5Y23Lse7s/QGmt8EGY2fseJgDPtkBAkBRkjI47B6kmv4eT9fdoW0TqYqqO/GUG/6
         7hyeN4wqgJ6OfzWsJc8995LcC1aMyAsxMO8DtDIPNj7KOOS264YLXZuuM45j7a5T5o5q
         Y4v5+0W0uuBQWANBePAaE4TlUwo3NyQMJ3GXg6YTjRK4bWGFL7WfVk/+stXxcs5I+n0Y
         geJirb5n+W50HBVAgePXYTsbRHKwgWHYBV4bIwC9wtjT+zGM4bZQ9gSqMdiGvs5UxQCk
         UkMliv1hMystrYMUHaW9qp2TGe1Xy5/hVwkMdwygZZM/NEwhqfusxQECWPOCNcytEA1i
         OUjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f24vHSFYs0MVBpXusQ9A0kHqrB6FcnDsvDao3xPJoAM=;
        b=YJyIPg1Fxj3LuuCYfuPGqYtQGBXSFkZ7fQwUxUKbw0fj6QTtcPiDpwVZOqiEMmYEPq
         +qcnDChlAKqqetQZSNDoNflRaOMG0iTxcj3VJFcay1iy37X3ijXcEuZ8j3K7eKpR/FNg
         Ld7jHllrbSE7HLTwWgDyoyk5myoh51mwkq5dvVK5NMPQYc3WZqDqcdsU9VPFBFteMoUb
         QiAb16YuDNhJtAatfkYZwQHU8f0wt/vT1RN0qssnvDqXw3Nn3fBB0M684i80LpPThbQp
         jJS4/wXJJvDbemBqUhWJaIei/3/zRwsvnhqQqd1gYQHbU9N1DsRJ8DcN7i/5C3Cl28MO
         i6ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Ax++pYykKo6VE8k+tNlI5HsnU/CLPPUARR7z68YXFQKvrxh1I
	Xz9ynNOIIWrVUf9W8+u6d30=
X-Google-Smtp-Source: ABdhPJzSGBFNA3gn3CyeOXky+yJtK9bKJOAqcZZ+kDG8wp8XialKgAvqy1O4jt6FxECy9jmKnjLxRw==
X-Received: by 2002:a17:902:988c:b029:d2:2f2a:8aa6 with SMTP id s12-20020a170902988cb02900d22f2a8aa6mr1043046plp.17.1600754877631;
        Mon, 21 Sep 2020 23:07:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7591:: with SMTP id q139ls5402543pfc.3.gmail; Mon, 21
 Sep 2020 23:07:57 -0700 (PDT)
X-Received: by 2002:a65:594b:: with SMTP id g11mr2338053pgu.382.1600754877062;
        Mon, 21 Sep 2020 23:07:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600754877; cv=none;
        d=google.com; s=arc-20160816;
        b=MMa1ujkM8JfLCLLgnLpYyyxzzvec8H8pkOW77ZqdXQOpcJ1bAWin2I+HAew42ijbta
         XAjLcTvLH7mUEI56FhH9zry4+jLA+ITEoFMW+UHuNcMAZintzDUBvwnWk/sWb1FVN5Rd
         hDYVGydwgAieYGvSUtinf+7TMGzMjCBRMoI3Dokb/wL47aKUyoUNzg/fehbxiIFw6eMK
         oDVnJ0GaIGWzo+cWV8todyucAZHiEg1ndse+kkYoWrD3SDpcK6oJCV/vKKzylXxQ94Q1
         chm4r10M1X/Ab7+I0hq/HfOYkKmptVLgbn+yHOM4+auBu5siWMqLEPifAAoCXFTPA1p8
         Y0Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=YtWt5LT1rZHUieitxqoZL94pXE9Kni8HrVa9DLq6ra8=;
        b=uNgb+Ho4oA5LsuS3KuP6zpvDRMPTlBIefbRGGHrN6b4AgQ7fCJKXnkYDdzIDkShVEz
         YTloL/cgjhKZp1DjGhB/QSi4IQzaKQ/Ogvui6d5nMnsHzXG/DgjDU4uechrL97Thn7Am
         GsejvHfbJt+kTRK95oaymIYh9MKpB4os00N0ujMjmFU/tYOg6c90gNia92q2zk/YCaRw
         QIRWCZgeVyi0NumEiB4rkzXUEJYmmq3ts1c+PKMJt9wraHq2IZ3vVHkB9y/wWcktuSJ5
         M8lKhenNQcQNe07huMJ0YDZ7LnCmg8edYErz1+ACUUUU0xKXUTYodq6+zUKs+t+bLekP
         GN8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iuUH7P98;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id bk9si92149pjb.1.2020.09.21.23.07.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 23:07:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id h1so8941091qvo.9
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 23:07:57 -0700 (PDT)
X-Received: by 2002:a0c:8b02:: with SMTP id q2mr4425388qva.48.1600754876169;
        Mon, 21 Sep 2020 23:07:56 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id x3sm12523533qta.53.2020.09.21.23.07.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2020 23:07:55 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: david@redhat.com
Cc: akpm@linux-foundation.org,
	ardb@kernel.org,
	bhe@redhat.com,
	dan.j.williams@intel.com,
	jgg@ziepe.ca,
	keescook@chromium.org,
	linux-acpi@vger.kernel.org,
	linux-hyperv@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	linux-nvdimm@lists.01.org,
	linux-s390@vger.kernel.org,
	mhocko@suse.com,
	pankaj.gupta.linux@gmail.com,
	richardw.yang@linux.intel.com,
	virtualization@lists.linux-foundation.org,
	xen-devel@lists.xenproject.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] kernel/resource: Fix use of ternary condition in release_mem_region_adjustable
Date: Mon, 21 Sep 2020 23:07:48 -0700
Message-Id: <20200922060748.2452056-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200911103459.10306-2-david@redhat.com>
References: <20200911103459.10306-2-david@redhat.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iuUH7P98;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

kernel/resource.c:1281:53: warning: operator '?:' has lower precedence
than '|'; '|' will be evaluated first
[-Wbitwise-conditional-parentheses]
        new_res = alloc_resource(GFP_KERNEL | alloc_nofail ? __GFP_NOFAIL : 0);
                                 ~~~~~~~~~~~~~~~~~~~~~~~~~ ^
kernel/resource.c:1281:53: note: place parentheses around the '|'
expression to silence this warning
        new_res = alloc_resource(GFP_KERNEL | alloc_nofail ? __GFP_NOFAIL : 0);
                                 ~~~~~~~~~~~~~~~~~~~~~~~~~ ^
kernel/resource.c:1281:53: note: place parentheses around the '?:'
expression to evaluate it first
        new_res = alloc_resource(GFP_KERNEL | alloc_nofail ? __GFP_NOFAIL : 0);
                                                           ^
                                              (                              )
1 warning generated.

Add the parentheses as it was clearly intended for the ternary condition
to be evaluated first.

Fixes: 5fd23bd0d739 ("kernel/resource: make release_mem_region_adjustable() never fail")
Link: https://github.com/ClangBuiltLinux/linux/issues/1159
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

Presumably, this will be squashed but I included a fixes tag
nonetheless. Apologies if this has already been noticed and fixed
already, I did not find anything on LKML.

 kernel/resource.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/resource.c b/kernel/resource.c
index ca2a666e4317..3ae2f56cc79d 100644
--- a/kernel/resource.c
+++ b/kernel/resource.c
@@ -1278,7 +1278,7 @@ void release_mem_region_adjustable(resource_size_t start, resource_size_t size)
 	 * similarly).
 	 */
 retry:
-	new_res = alloc_resource(GFP_KERNEL | alloc_nofail ? __GFP_NOFAIL : 0);
+	new_res = alloc_resource(GFP_KERNEL | (alloc_nofail ? __GFP_NOFAIL : 0));
 
 	p = &parent->child;
 	write_lock(&resource_lock);

base-commit: 40ee82f47bf297e31d0c47547cd8f24ede52415a
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200922060748.2452056-1-natechancellor%40gmail.com.
