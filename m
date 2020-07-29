Return-Path: <clang-built-linux+bncBDE4FB7KZAEBBLMZQ34QKGQEIERZEZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id C33F92320EA
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 16:50:22 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id y20sf5572153pfr.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 07:50:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596034221; cv=pass;
        d=google.com; s=arc-20160816;
        b=pdtTJibIUBtL9Yf1cOj2O7kuC1EatP5aUOXIOKnyMpHYHTixkotViBaMuW+PvdbcIB
         SwDtbzsJ1mVge8Dg5+bMJzd8NFSzpPiMg8jYXGpKgnaIs5k6QRNzi+8V2NxBcfxTd4Pc
         S7h9wkvU6pOkthEbSOzJHv7BUd5+5mOh6YbIr5F7EalnvYDDKmkoVi4tFHmS1Z/cNtYM
         zd+o1Q+9qNU1EFwtJI0OCv6tI/QgMg6nVhu+oTkjuS8VKaAHGGtgFtU3srGl6YiNCGWg
         r9lRocCjy5o+4KWu3k++1xWykAKnExdGfWDiOTjFfnBz6LgFvi56UbMDqyVcNxPCRIsN
         Iydg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:sender
         :dkim-signature:dkim-signature;
        bh=KvjMIeqnAA262WjXH2AG/GNSGGVkztANfn9HRqU9NAY=;
        b=UTBj24aXKQD0HUf77rA1B/6Zkq4I/JU6pVwuVCUqZ0jKxUnGzGScyI87VhGhfW0lLO
         Ie2sRhaOxttegdOMAXkIeC6IWCeBVqHy30JCfTDAFUyfy1EsrzKL5IKS8qp/QaYWjBns
         5Rx3sG+fbEC8p1LAkJYK/N9f2cZAAbbzzfTu3i8Sgff7Lv0bEbzi2Qs1uQZcfoDZBPZR
         LgvivF8pq6Dxzk7K6NNmy5N73BZKN6rHSPjhLfTbZBhtc7iLLp7+fYj7OfZysLMEI9md
         ulaHMqZG+f1XFNgOxqYCw5RmVQYIgx80+9VLndemM2SoVcHwtNP++Y4RMyDUqBpp4ulV
         FKLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uekz1hDH;
       spf=pass (google.com: domain of zhaoqianligood@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=zhaoqianligood@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KvjMIeqnAA262WjXH2AG/GNSGGVkztANfn9HRqU9NAY=;
        b=Ik/UmHAQNztybK0UKWuxiZY9RdKh6GuEZbOJt3ExLJrHAsDthhrv2XY3Zc6ZZeKHf3
         pJmmQfaLY3G3UEVbHzE3U/x0yoduNU1tSM3wCbp0TcGBwhyzIuAfbuV1h5ymlHMDglYi
         ax9BHSdyVuHq8fD2HAsoSpYJQyEIH9nB50fhuP22V5n/FituxYcgouqGtW8x4qMHDYNx
         ERK5tkFkrnyqoXMOM7UeHyvZOOsbVQECmfPVrW/XcJy0XygJFwhB7qda2mXMgep0MDVh
         bqkoxLg5XscRh6KUfVUU85HFPEPWW6nbwRPmPOXS7mHKd6Mp6AFAGrHe/UapfvkoA2Qe
         hxYg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KvjMIeqnAA262WjXH2AG/GNSGGVkztANfn9HRqU9NAY=;
        b=utOzuj5T/KQuxU0qh8/PgGjF9HJfHxOgb2rzCbINgmrudwPH7o3bTp5rMLCi60C3Dp
         o6CsdjugtxrrUMEAesQO4VVuxh4Y1Iw7mVOq1BQ1DfJBDmcKTTSjX9Z7H15Crw3HSm3k
         J6LMLS/WxMoY3NktMIwLLNo49a8OheQ0EtizJzTqPmLzGrW1gW3uXfA+Am8XkML7lEaG
         JR7E5QsjgoViTNyg2UfutLp0mMOXZZOpClcPlH53UxrOa4XgHGjKEl12u87V3eHxVJY8
         kxlM6h0OFTKXYNLu8Nki8JdznKPiGN04r7+F5JnJO1isTwmzjhg9XO2AGvCl7Fcjl3Qb
         stNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KvjMIeqnAA262WjXH2AG/GNSGGVkztANfn9HRqU9NAY=;
        b=ANmLoZua1KdovoeRRFcpmFCq1jjsk7TzJs8uzNfuUYH5XglbRnnPD1yjmO3S8chPq8
         U6GgCDnyzEF6gAY31bMVlb5xNiMb2BPKvqQBZYWTQvLwy2KoMFUheV0P/ZHjiaJpfedu
         xYPhpXKl76loi4dKJfhiAQgQnsmTZj5NU29UQpcTGQmMMrF2qWW9FgqWqeb8AHF3voEe
         jAmpg1g4xezKJ+d0WB9mblQ9Xl6ngXH10+4MVCmlNIcXD42JYSOYLu/9t+qOoNEPP1fE
         KO1fVNzinqybLSd8NFe+MtZJzR6pFbcAGHSlmo8CbcNIVujw2VyG5NrCqoQDmzYjPRll
         0pFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531OJ2pKaJ/yNwMGowwAGDJnOpRcSsHbehuzJLZ841AU2c7NcoyC
	MCnPA658PXScTK+TRuREU3c=
X-Google-Smtp-Source: ABdhPJzd6MzcOFTOblKdx98AxO8wTjaMZ/CP1ItNNZCza6R+GxdyOZGkLzCSh+E1nRFFxfmgrIwcNA==
X-Received: by 2002:a17:90b:c90:: with SMTP id o16mr9460959pjz.79.1596034221340;
        Wed, 29 Jul 2020 07:50:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:4ec4:: with SMTP id c187ls838212pfb.7.gmail; Wed, 29 Jul
 2020 07:50:21 -0700 (PDT)
X-Received: by 2002:a62:188a:: with SMTP id 132mr18233049pfy.59.1596034220880;
        Wed, 29 Jul 2020 07:50:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596034220; cv=none;
        d=google.com; s=arc-20160816;
        b=EZqlrtHfFvHNv+1TVKh4l/cKx6eIOZsCxFjl+GqHYl1HMtfUiT721Lj4z372M6a08G
         0R5I76GXyWD1UeYgB9LoDF0DB280sUDeqOgh9z9lA12dVMjN6suN8+eorj00XFwg6BQ1
         wKZQvzavBLG78Ikgf4v/+qgdEELqF2rGUhLFrdMiTqBvTlufWW7Swd+PfbftJsUDMg6a
         QddGfbVVKU684eInCbiB8+BRjeUliT65hDtAv5oFAxF0iG+4lwY9prR07NMoVRsf3E1S
         /41+O8jGVG7AS+MBwrHKZ5zFptxSEhVyJm+1kY+F1hWCAZ0VggLsEqnJHdFM/JZCi8ic
         0Prw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=XgDzWs5LYt7Mkx0UdbPr7BFgEZ8N/ZoZ6ADwKcHkW84=;
        b=S0VQG4n4/7XpI6ohw639tJyQiqGjdZmK3bs3hpAZwxmKZk8bU8D9iz1k/Az5VFJGR2
         PUR8oL6hEdfmM0nAKWv4nfvqBhFmFubMbH+YJAkgICFu6u7FMk7TOdXipSs/uo7HHS3D
         hBC734O3J0mV6qr0h/7/TgKqY6IEhuAuXm7KBv1RmapA5iY3K5EgjJaaglWFMrDaoSLb
         namRdGkHwdaVsdR2sXvxWskVSv+bgKA7Aw5XJ0tVIoqSHs7XqT8dZgi7zQlwSN+SqcKo
         NlIP2RIvYCG4t01GGQeHzTTXy3ytH2w+kjfQ7SJiA/bZYIgGSBDjRZoL47V7A9ylEsrg
         M8Ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uekz1hDH;
       spf=pass (google.com: domain of zhaoqianligood@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=zhaoqianligood@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id h18si87777plr.5.2020.07.29.07.50.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 07:50:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhaoqianligood@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id q17so11875384pls.9
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jul 2020 07:50:20 -0700 (PDT)
X-Received: by 2002:a17:902:d303:: with SMTP id b3mr13162508plc.101.1596034220591;
        Wed, 29 Jul 2020 07:50:20 -0700 (PDT)
Received: from builder-PowerEdge-R730xd.mioffice.cn ([43.224.245.179])
        by smtp.gmail.com with ESMTPSA id o190sm1251827pfd.194.2020.07.29.07.50.17
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Jul 2020 07:50:20 -0700 (PDT)
From: Qianli Zhao <zhaoqianligood@gmail.com>
To: cl@linux.com,
	penberg@kernel.org,
	rientjes@google.com,
	iamjoonsoo.kim@lge.com,
	akpm@linux-foundation.org
Cc: linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	zhaoqianli@xiaomi.com
Subject: [PATCH] mm: slab: Avoid the use of one-element array and use struct_size() helper
Date: Wed, 29 Jul 2020 22:50:14 +0800
Message-Id: <1596034214-15010-1-git-send-email-zhaoqianligood@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: zhaoqianligood@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Uekz1hDH;       spf=pass
 (google.com: domain of zhaoqianligood@gmail.com designates
 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=zhaoqianligood@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: Qianli Zhao <zhaoqianli@xiaomi.com>

There is a regular need in the kernel to provide a way to declare having a
dynamically sized set of trailing elements in a structure. Kernel code shou=
ld
always use =E2=80=9Cflexible array members=E2=80=9D[1] for these cases. The=
 older style of
one-element or zero-length arrays should no longer be used[2].

Make use of the struct_size() helper instead of an open-coded version
in order to avoid any potential type mistakes.

[1] https://en.wikipedia.org/wiki/Flexible_array_member
[2] https://github.com/KSPP/linux/issues/21

Signed-off-by: Qianli Zhao <zhaoqianli@xiaomi.com>
---
 mm/slab.h        | 2 +-
 mm/slab_common.c | 7 ++-----
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/mm/slab.h b/mm/slab.h
index 74f7e09..c12fb65 100644
--- a/mm/slab.h
+++ b/mm/slab.h
@@ -34,7 +34,7 @@ struct kmem_cache {
=20
 struct memcg_cache_array {
 	struct rcu_head rcu;
-	struct kmem_cache *entries[0];
+	struct kmem_cache *entries[];
 };
=20
 /*
diff --git a/mm/slab_common.c b/mm/slab_common.c
index fe8b684..56f4818 100644
--- a/mm/slab_common.c
+++ b/mm/slab_common.c
@@ -166,9 +166,7 @@ static int init_memcg_params(struct kmem_cache *s,
 	if (!memcg_nr_cache_ids)
 		return 0;
=20
-	arr =3D kvzalloc(sizeof(struct memcg_cache_array) +
-		       memcg_nr_cache_ids * sizeof(void *),
-		       GFP_KERNEL);
+	arr =3D kvzalloc(struct_size(arr, entries, memcg_nr_cache_ids), GFP_KERNE=
L);
 	if (!arr)
 		return -ENOMEM;
=20
@@ -199,8 +197,7 @@ static int update_memcg_params(struct kmem_cache *s, in=
t new_array_size)
 {
 	struct memcg_cache_array *old, *new;
=20
-	new =3D kvzalloc(sizeof(struct memcg_cache_array) +
-		       new_array_size * sizeof(void *), GFP_KERNEL);
+	new =3D kvzalloc(struct_size(new, entries, new_array_size), GFP_KERNEL);
 	if (!new)
 		return -ENOMEM;
=20
--=20
2.7.4

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1596034214-15010-1-git-send-email-zhaoqianligood%40gmail.=
com.
