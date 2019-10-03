Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTGX3DWAKGQEMRC7CVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 759B2CA812
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Oct 2019 19:11:40 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id o8sf1394386wmc.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Oct 2019 10:11:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570122700; cv=pass;
        d=google.com; s=arc-20160816;
        b=KNdeVHoz1P4lIfj/8Jj/WbTNFG2OL21WOFQ4NrMCXZLc9hvqrjSl/tS/QO/RlpqFZK
         nl9pophKgCy0cmPhbvBQZ+wg96of0ttcm4c7JzgjTjoJD8b1dY4kKWnC8Z4cHJ7pjmmh
         0Is5hn46+ag7jyPrdXjEF0B04Ti4N5/n/AhS4NzHONRqHyd7wluZ06HgKw9dypBqclag
         hnEpp0SSpAbA+IxXWZGlBtI9G3KuKb0eNoe+iwlziNMNEkjJlz32rBOmx9bp2WI03A7o
         RCuYOYC9fPl5HM+Sw9HFfno+PCcAccUg2qDBenHmiIhjxTBa0oeWEsH7SsymcLtRLaLJ
         BxMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=Rh9Kc7Q+3TxXaojYELI4jeci68kkyQnxV7fK5DUlmOU=;
        b=gPmAsMfLgCCJ0t178bvhhPIXGzojl2csC62GIMmBBUauWssq0Q5fhD8t4iqMefwblY
         blWXjIzARmgRNvzFcLTG9zKXUYHt3WcCeX79b4nmRpdKyA94bhh7s7HfNP8i+UDP2sOd
         5hksjIacjcWkbWJ78R7Zoe+vuwQXAS3KWmoMH9ZC+bNXJbvYzNKkrrR255p9NRS7Ausl
         Bzkh8UtIeGzYBiUlphQ0LAp3MlUci7Ld6/Gt5LNlzVZ/abvS1vTMqYKoVaZCmbNOgOYs
         AIxWvxN8CSeiezR1g5Lul+fsGRBULt+mRwsZA7ILlYlN1D1wSANSqsYE0cvUetrAPiqj
         L9Jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QOYnNsDv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rh9Kc7Q+3TxXaojYELI4jeci68kkyQnxV7fK5DUlmOU=;
        b=rme6b704yA8z7dRZTqvmUzBjZK4el7CnILRvae2ubuUt22yKTgaXX7KSHGbdwFrD6H
         HeHLHpg0QvTFoFXSL+/Zgz8Z4I1Z0uChSaXZw788dvFC5qcFm2irZL0sOnOGYv25BDbh
         pPBFbcIUxwgxozLsJwlvBRV+wayeVYzqwEVA0T4UnVtSG7nzyAMda7ZHp08yEkEg8Ju+
         Qz3KWT1LEaqm/vOqe0qD/Pqxq52siHkFwoD2mHjNGmKm1Le4MOHf+flvWSwAK35UzwGt
         J+GROLTKFd3Efe2CvrCo5xKoNsM3zfdgpHn/riXeoR19zmfot2Hv1JeO4d7eXDDvyc9p
         6ltg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rh9Kc7Q+3TxXaojYELI4jeci68kkyQnxV7fK5DUlmOU=;
        b=S2QO7DnNBXUoHuy2LVJhaq6V1o9QgUYpiDV0f5mLG9ZqsVN6AVM5n6V7hjFWQYppbm
         L7OvRMF5o6tcf60ehvxTm/X+NHaWMyszyWbIvh2u1UTvNfu5hr7+VbUUvV39MzXTSSdu
         Tdc+C/0VhbIKKLmQBFYcIBhYoYHCRB6k+M2ItnxP1HboAm6w1BY5/yIa0UWmQZhTiJDs
         OpNyvLhXUAUx4ynujPdZIIoZOy6iaOUMiXAnoq/3cABBOvJPHpGWvdU8AwyIQ1ydPwSM
         GcEZGEW6hiIxHW+vr7qMCje6Gla0eIYrYepkVwTNYePrRmxGsjgfKqWFzJtwiUt2B/BB
         Unug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rh9Kc7Q+3TxXaojYELI4jeci68kkyQnxV7fK5DUlmOU=;
        b=UYCPS7SBGXqnn/3SVQFF18bFa/D5MFC2CT/SSAf2IC/Yq3jFzOZmxYW0sj4G6oNmbA
         EhijgayDKqyD9YZVkywRh4QOn0ofmJOGnsOrH9f/Isujf/ljOpzfkxPtXmr4qypDsuMu
         j1FHfNdvL52Bu9osXLz9TKVJZYedWP6lFUvriVJdz8XmQMxt3SGHu+EY8wQTuxWWKnvA
         0oElEo7wYtrKAxyA8qzNwnowKlWvX2Yx6TxJ9fHvUmPFfhcLkI6tm2J0x/3lDE/ZyXfr
         YaFmMhljfDJGlV2ttywX0PDfSDLxiRryl1SBq2Hv/0rt5yWl8EPMdJVpVUe8+6pmsX7W
         8eUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW2nV5Fxb62TqPt7wgFw6BeqYdD3jYig14IBvHLUfz809qJRph+
	k09R4RE/BB3LKSHoVVrtXOU=
X-Google-Smtp-Source: APXvYqzIe+znhHLck6oRIrxhNMEMKXWRKLVk1aM/VdSdRI7VpS9KKg7HOj/hN/X0LzGBByWXhfgCuw==
X-Received: by 2002:a7b:c088:: with SMTP id r8mr8187611wmh.44.1570122700172;
        Thu, 03 Oct 2019 10:11:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:526c:: with SMTP id l12ls1957540wrc.12.gmail; Thu, 03
 Oct 2019 10:11:39 -0700 (PDT)
X-Received: by 2002:adf:f0c7:: with SMTP id x7mr8339598wro.2.1570122699660;
        Thu, 03 Oct 2019 10:11:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570122699; cv=none;
        d=google.com; s=arc-20160816;
        b=dA70OqgPI/avklCTKyM+0uoVEEilJUeAKivy7Ob/m2UvPD2a6cTdIp5LQfnCHAxK96
         v59SitPsF9uhORGTIRqdgNp+K4GNGQWkagOapRQEiNduIkkY8Xwb2ti1Bhi0k+x6wX6O
         nLUEwA1TksM9NFxXYxqewpjhffQs/kiDMxbA4LLqBm1LeEoG0Zojw1H2rf+rXY/WbPjK
         Yz8cKyie8pFYVdkdT7uZttMO+ynaqsrBdvahe6zsVdt1d1ZVawiVZ87DXZNVyufFifGc
         QW8IOqc2sZuzk3UTFui3Cv/phvK/K1ILd/elFtgWwRXgVFV5F23jVbTh1pG7Stzmx+8V
         1YgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=hR9NNmOdT5rcLSqoSR1KORhykwTT8D7K6IAvdiYy3eY=;
        b=zOFvxjWgeM3i+KIiAbGRZVLVJLM4/FycPIVkWOchpfh+URLYeq/4nLIBC+LHu02ohg
         VNykfZL1ZBquruCqs6aUtw9NS6EhGTddas8NAOVqYe0P1lsm70wfXw9XwYnyqmU7KK6s
         NOazvvGstVYtJwNWeBGN4qEtxxGq5VbLiE5GMYSol8F+n0qTO8m1DF016NpH6qt7prMp
         peds/KZPJuve85TXk9lmZ9GDFMwl1Wbxc2irp72BU8catjfunnLnL95oPu/FzDMwA2q9
         D6XgvSrWvoRcCqBVaolJgbhhy9N5eS7iU0uavgSM6DfiR+aOKuBh24MelOt7J2VjmwdY
         5Gmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QOYnNsDv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id n16si289357wrs.4.2019.10.03.10.11.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2019 10:11:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id f22so2905051wmc.2
        for <clang-built-linux@googlegroups.com>; Thu, 03 Oct 2019 10:11:39 -0700 (PDT)
X-Received: by 2002:a05:600c:2057:: with SMTP id p23mr7495542wmg.17.1570122699103;
        Thu, 03 Oct 2019 10:11:39 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id j1sm7067386wrg.24.2019.10.03.10.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2019 10:11:38 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Christian Brauner <christian.brauner@ubuntu.com>,
	Aleksa Sarai <cyphar@cyphar.com>
Cc: Kees Cook <keescook@chromium.org>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] usercopy: Add parentheses around assignment in test_copy_struct_from_user
Date: Thu,  3 Oct 2019 10:11:21 -0700
Message-Id: <20191003171121.2723619-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QOYnNsDv;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

lib/test_user_copy.c:96:10: warning: using the result of an assignment
as a condition without parentheses [-Wparentheses]
        if (ret |= test(umem_src == NULL, "kmalloc failed"))
            ~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
lib/test_user_copy.c:96:10: note: place parentheses around the
assignment to silence this warning
        if (ret |= test(umem_src == NULL, "kmalloc failed"))
                ^
            (                                              )
lib/test_user_copy.c:96:10: note: use '!=' to turn this compound
assignment into an inequality comparison
        if (ret |= test(umem_src == NULL, "kmalloc failed"))
                ^~
                !=

Add the parentheses as it suggests because this is intentional.

Fixes: f5a1a536fa14 ("lib: introduce copy_struct_from_user() helper")
Link: https://github.com/ClangBuiltLinux/linux/issues/731
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 lib/test_user_copy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/test_user_copy.c b/lib/test_user_copy.c
index 950ee88cd6ac..e365ace06538 100644
--- a/lib/test_user_copy.c
+++ b/lib/test_user_copy.c
@@ -93,11 +93,11 @@ static int test_copy_struct_from_user(char *kmem, char __user *umem,
 	size_t ksize, usize;
 
 	umem_src = kmalloc(size, GFP_KERNEL);
-	if (ret |= test(umem_src == NULL, "kmalloc failed"))
+	if ((ret |= test(umem_src == NULL, "kmalloc failed")))
 		goto out_free;
 
 	expected = kmalloc(size, GFP_KERNEL);
-	if (ret |= test(expected == NULL, "kmalloc failed"))
+	if ((ret |= test(expected == NULL, "kmalloc failed")))
 		goto out_free;
 
 	/* Fill umem with a fixed byte pattern. */
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191003171121.2723619-1-natechancellor%40gmail.com.
