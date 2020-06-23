Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBX6DYX3QKGQEIA5HEKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 180D62046EB
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 03:58:57 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id c2sf9370913otb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 18:58:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592877536; cv=pass;
        d=google.com; s=arc-20160816;
        b=FBcKjmfEcUbsXy0pRcH2KsJ4fenhU5stOQKnRlW8wXT00dIqheCC0Xi41BfFW06gCx
         2MyPF+xuv20ynzwVsjG7byPAmOF7pbrLrXe98p/SBlWSN5KB652xYlj/XZYeWupsiBZs
         kT59l1P5T8o7YrVLptbMwisUAGfycguzvFyLShXMdu6qh7mznR2JinZ5/wfpbhOh6kXb
         4/IDTZ2AZlWoTJSa3yDHwWDhLXX8Of4I09wJcHZExefOit0vE953qW2/24QIFSqBy95E
         ebNmaSMgygZo8/bEat3prVLDDl2DipBkbiw9Wz6fqdRzDiOtJJsxhk/ubPXbQ3l6o+DU
         PxpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=om10wDfiX91sXd8I2AGSwRcPyLHS64ZOmmAMRcSQYjY=;
        b=TJ/kgejhJHM/F2HJRo5J+/A0sKxWJOIKbwgUNAbihCSC3EjBdepBAdpN1onzr29dD9
         gUSM3IjfHvELTxJ3rt5eA4spWmeVIFFdNatIfu8ow4zfdmzTrz2WtCnSOAlqg925w8nN
         Ojx1zia0NY3TJSFFrLezUSV5/04/oxQ+4skFbQFoe0ZDvWq7GV72g9aLudSXAZQYobsB
         iXJ/xzqxCC6HdmHBqxC+kkEmXh3d2ILidTfK63zvdyeFmLP7Z9ounJwbxpIz3+L6McZz
         GtSL7CEWCz89VFMz2UAMjEFxOeIatSwcWpCh22WZDrAZ7b3iqxqdwT2n3GQMeSUzZl9a
         440A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qLjxvkNr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=om10wDfiX91sXd8I2AGSwRcPyLHS64ZOmmAMRcSQYjY=;
        b=d/0Q8pdHpozvr44mOcdgZ4gxa40Twhlmy7jeaDG2JlXuyiQHyYN1g6xnX2VaGjVTXu
         /tyklsilMdBIAiS9koxsY54W0y++fNTa6GPss9/EvldzxAT+l8uH8LlMVIaV+kBUWmo2
         1c9HZrSUWWvfCqtp9iROCkc+LtNB9zkKxB5Ok0EG6w7mgUOTKGmna6jlt/KKTif0eq9d
         1sXa16BDAa0bgSnQDbrNRyHen+mKmnx5rG0TKRBfSPoq6gfINymaU6m5YD4Ojj/e2gyq
         9/Mun3DPrAOdJ4p9cCoXykd4YpAIcKqwh/FFcoEG1owFHNifYQi/sGhSb23j41xB5NId
         j/Yw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=om10wDfiX91sXd8I2AGSwRcPyLHS64ZOmmAMRcSQYjY=;
        b=jzte/z4pqzJEjnvtbuoRNqPBy6r1v1DpGdzpJ5LL3SIQ08VhbRrQ/GG+R1y8LsofW9
         Wq13k1g9UxjcCE2gPfL2RjwSf1UCGNa91wqEPARI2QSqeP+MiR4c80031UE4UkhE3Na6
         g6KriKEaS5D5cx/te29WItsqtmIT66gpq7+M2FNIA79YgVoUqtUwdi3g9ygzhKzTz5yk
         +D9s8Huan9b0yHTMeVytySALATNQVU6hrJ2l9MiXQdZop36BOFylxAFvBWQmMEeTyagr
         B5GdhsIWrMxFM4SO+NGFL7e9FAuD2O5OCQTARfT9u7nYpU2VvcwbOMARsrrkSGg3FSTS
         +YQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=om10wDfiX91sXd8I2AGSwRcPyLHS64ZOmmAMRcSQYjY=;
        b=K7zH2LCB8n1WYDkJUjxCtNajSd9HrdtP7BhTsfFPIrpM+AlW4+wRvnzDYJak6yBWMQ
         8fqvarjEWtGsdX5Qb66/PsBB2GUofwWEeZqIXyjLGKvLFixNTsh28Key2tzM5kDSWJOS
         hk5hPj2T7SVSJRDNJrL/bANLFUhxd1SutjC3Q1SjVtKAOLH+uTHfnm8byCeuAmKZxmPq
         Hp3x7i4inI6ZFD9CmphpszRh7GI/83/iG1T40axAmgpR//glThXp3/vgQETX0+LP9+RZ
         tZIkoLWATtVfwgoGm+3vUVaOHlPziBalpgx7XvRw6fJy4Yyx2GdlrL3FrXiDHNdqr7CK
         DTZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cI5oZ0h9eSE57rYEOl5HFdEXWgOpYGeyZ5fcIcjdofUXqBqqK
	oZCMQS4osXjDzNVz69qPMBw=
X-Google-Smtp-Source: ABdhPJwN5AxpuWK+shzXrRlbsbJtabevsE6b4/Y1IH+grT8+7OS+jTrP/eMG6eJsr91pb9tTpMyh6g==
X-Received: by 2002:a9d:53c3:: with SMTP id i3mr16904774oth.300.1592877536041;
        Mon, 22 Jun 2020 18:58:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5788:: with SMTP id l130ls3689450oib.2.gmail; Mon, 22
 Jun 2020 18:58:55 -0700 (PDT)
X-Received: by 2002:a05:6808:988:: with SMTP id a8mr15618570oic.19.1592877535735;
        Mon, 22 Jun 2020 18:58:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592877535; cv=none;
        d=google.com; s=arc-20160816;
        b=vCMcb1c982RF5Mug0T/KPp+EBuFO6cH1vwD2JcGZDhwaJo0GNUpmIwY5M28Iqzejkr
         u0BvqNS8edQmOMIld34zQHJV6mCGqRyyXtSeBH6qKX1rZbd6BxoNHtNKYRg9uVxsYILS
         oEHJHJM7uXrcJPTCo4KghpMckZjnyHq21vAeOsHZEir3tfcI23ZYpPgpKPggp7tzG2lo
         0tC9csMZsD2N9nXUBVzIWrtHul4GjeIxPXSsp9bkIIuyszXewGOhzCZbU8IdOhATgkYS
         lV7pQsOfpFMGp+BiQL9itcQNMsKApeTYKjOaOKdfmLv4Mqc+qj3NpXOqhhNh1vNIXRKP
         ryCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=MCboGWFBBNPNJ/zfMw0rp0TzXUHVpcQYHjnFLH8yUdQ=;
        b=T+C3VTNIA3guoiaYtg8Tl6SGYZZqjOCLyihYEqW0BLT+c4Z6RMygbEga2tzQ9k0iPZ
         LlUx0Q2yFirbbKCSn5yxboSGl+kHK0VSflHswwIkDLe7pjFJoEmfbHI6N/B4fyvGh/7Q
         HvKTVqFPNEdBmX7tpv4hB5BhlT7jIc1yUvoE73m6xv28EXYCqFy2J75K/vCnILofvJy3
         EQkthRpPMWS1SFO65lGke1Da1lzopM4HcGKtizKx/5dpdoUPajBIzIt6WLTZRfpCDs3p
         osOjurAs5mxWLLJ6BJhqfW+DnkU0hqr1U9oKmgnT7+6SYUT/QeueTgFK19/OZlL21NJw
         nkFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qLjxvkNr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id l18si1080538oil.2.2020.06.22.18.58.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 18:58:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id k15so14996753otp.8
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 18:58:55 -0700 (PDT)
X-Received: by 2002:a9d:5a12:: with SMTP id v18mr15905043oth.90.1592877535459;
        Mon, 22 Jun 2020 18:58:55 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id c13sm3737990otm.78.2020.06.22.18.58.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 18:58:54 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Barry Song <song.bao.hua@hisilicon.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] mm: cma: Return cma->name directly in cma_get_name
Date: Mon, 22 Jun 2020 18:58:40 -0700
Message-Id: <20200623015840.621964-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qLjxvkNr;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

clang warns:

mm/cma.c:55:14: warning: address of array 'cma->name' will always
evaluate to 'true' [-Wpointer-bool-conversion]
        return cma->name ? cma->name : "(undefined)";
               ~~~~~^~~~ ~
1 warning generated.

After commit e7f0557d7de9 ("mm: cma: fix the name of CMA areas"),
cma->name will be an array with some value worth printing so we do not
need to check for NULL.

Link: https://github.com/ClangBuiltLinux/linux/issues/1063
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 mm/cma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/cma.c b/mm/cma.c
index 31a61d410c59..6cf08817bac6 100644
--- a/mm/cma.c
+++ b/mm/cma.c
@@ -52,7 +52,7 @@ unsigned long cma_get_size(const struct cma *cma)
 
 const char *cma_get_name(const struct cma *cma)
 {
-	return cma->name ? cma->name : "(undefined)";
+	return cma->name;
 }
 
 static unsigned long cma_bitmap_aligned_mask(const struct cma *cma,

base-commit: 27f11fea33608cbd321a97cbecfa2ef97dcc1821
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623015840.621964-1-natechancellor%40gmail.com.
