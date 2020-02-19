Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPVRW3ZAKGQENLHEEAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1F8164FB9
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 21:21:19 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id bd7sf824464plb.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 12:21:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582143678; cv=pass;
        d=google.com; s=arc-20160816;
        b=ak8JCjZjiZe0qFnVO3a36yQ69AaSJ2qMHrAvKFE6CvQoPtb8ZRr/B5s0d+kc/ZzETK
         ZYRIub0OsEsBo4npjw9zqbQL8CAJbUj9xgnbGfGV2SDhZkuc9ExMZNun9yQxVs1IEX3b
         A74HmgsIqNbwpN58cgK2lUcVXXQyqqrUzjSY743WJWcjG4Er3mdb2aJHxP1GbYgS/k6Z
         NqR/nwdwrTV9udaWiAmjRb1wbode3ucWxNhDjONdN4deNcxsvH3JEUFXQZFQFh2P7yXo
         DQMLMUejzvni4GsS8QC3UT7v90zqDsUxacbUYFKiIeLPyI9SJIytaGeAH9vtuTp4Tnhg
         aWnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=qxg4c1ZaTBcWUPR1717uFjQfkkn0R0nt8jeM+ZqZKpw=;
        b=N4A0sA8Tvzz7dDOt2IFY6ibVEZGJ4kBPR4OrguyO9MTEyEoANXbgL5h6l3TOQwGQ/6
         FRBNOHl17yySv1pPfdeHFfrqMx0svsoCzAlgb48bbwUxyJ87a7FQV6fAIdNiIBhv57M4
         axElVjAwyrBE5cvIwA0c0f+N/njRM14mj8t2uvivFtA3HOqJzaHvXsDKpMNW0NBiwFuX
         4wIsAwTqYTBX6+4uxFfTRr7UFmiwr/BCE8uyEqMgb/tCtU2yz0QVUnbZM806zY47QyTU
         iKPb1GEQT8XN3pKXR2JCsKpUh1cxCSNLotfURAPs9YPV/IzTE/vk6/kswLU67QmlFaIj
         ptOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q0wuRZAe;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qxg4c1ZaTBcWUPR1717uFjQfkkn0R0nt8jeM+ZqZKpw=;
        b=nUQ6igpP08BkP1tEBbvhjZtJ+oDqEfHjb1UsV2vBwnZTG+0FlOyxfnLqhtx+mRLvKd
         egFkTS6hTUL+gT97gxZLq1IQHckoVFT3xsbwt9nD+O9klErsADQbGi9v2nfsUmh9UbdF
         J4IAqj548SNAa3jW1E+PXnhDl/wzGsK8JZvoa+03zj4dCzApl0fjmVJqFp6cvwgo8dks
         FPFf5OW6u/ny0q9gsPRJlRfsEJz+vW+V8WAQdJTVYrwKYFWx+HF5vK4R2h5j//moCqvu
         uBiPYoPY8v87meTDDUCz76vUVYauDEEuVNMQckmwXFUII4us4y049f/SlxX8X6i4y3Pr
         pZnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qxg4c1ZaTBcWUPR1717uFjQfkkn0R0nt8jeM+ZqZKpw=;
        b=cw5HElTeOYnji79lXMhaNkrwVnpnxwNEaAcp5if3Zk/I3QNgEs9sQOh7K2D5YOWu+Z
         3Tg44agNRf3ZBNZVLQ7iiAQYpmtAb3BXl84+711RKwpEqpRDq4tCJCYGSb3MWC7FnUE9
         ATaZVHZkKJPj6fo6qylxrQSMdunro1EBdgYXNPG7ekd1xja3JcYMZRthRmppLyoDABVE
         DOrnfXLvswL5CTqa9qmBsQtmeGZC4d091zLiqd0ALwYMHrxDoUDjNDtNmnv1T6YHfW1F
         yCEiZSObOsdMEiTFibydfDkpsDelfhcykx/nxhk52AuAzk1qqAasO450plBtwu73wmEs
         21OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qxg4c1ZaTBcWUPR1717uFjQfkkn0R0nt8jeM+ZqZKpw=;
        b=M9Pcc8OL7tURSiQt+znmFQviFwcHiGg/GIKUpSK12L/QAceBXxG20oHz+ZSHbaj6X+
         de7Mle3thf4FX9M39WL7W3MyLybSu68knaMHq3yYSl96t+cQiBD83jXB9KnqI7c+kfUZ
         jIyJImZjiysl9ikeDqeoNsOtdJVHwL8z6t1K5mBIqJCnvUuOQJAUY7s1h2f9nGT71GPF
         npJRJmvoGgPcQvOHq8P5hY89l5mv2Ku/ete9hIUlemQ/ybY2v8D8xHbQLKKP9czMTu7O
         i8lwsoJm51C2eeqjpON37KyOriOIHTZVNX3aUyrmwmHG+okhE1cAtNrYmx5OWR77XQ+U
         cpqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU5E9unI9fdz8vQE41wLJ/zrJ9dZbR1WTagYTyW14rxctWmWLsP
	Q2BiT/aNUb30RcMYBtwgRqw=
X-Google-Smtp-Source: APXvYqy9L5hMgzwxAKvrWrqrjIZTO/XxU0Bdtq1DSXarsxwpCqAFUCaF4/xEzb0XUIjXsX7cWmWSkw==
X-Received: by 2002:a63:3e4a:: with SMTP id l71mr4777881pga.283.1582143678243;
        Wed, 19 Feb 2020 12:21:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4d5:: with SMTP id 204ls8251096pge.9.gmail; Wed, 19 Feb
 2020 12:21:17 -0800 (PST)
X-Received: by 2002:a63:ed16:: with SMTP id d22mr2023930pgi.314.1582143677758;
        Wed, 19 Feb 2020 12:21:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582143677; cv=none;
        d=google.com; s=arc-20160816;
        b=mSl4PJ3PwYiMKHe0KKNcICIgqCNURCYOM5x3OblK+izOgXhKa/noDhRt9wnzOt4mZP
         /VVxbn3MbP07rdBQ931o67kld16AEIkhXWqQ3zLrO4E4LKm4xskY8mJv/r6/OJ49yhpn
         YVwq9Ue3W0H67PhRYXuincZFm/FtTSbg5n/9TTfNaciH4nU/LzejWSgIzQ8hLXuV2KGi
         42jDt44zGdeGaYU8TjkFRicVHTynHlLQGWmMbmFOHzcWY2Rm3ZBW/r1tSZjj2EbtWM8m
         2kIaxAvfc7JYb9BoGYdbDz3X6T558+tJqElsXP2r+VcAyI4GCowUC1LaKMvjdnqJbxJh
         TOPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=gcApxqQdtPLJZD/Hiy7dx4dLHAfOr3+SL6yidJyJBXo=;
        b=sE0S0mUGp5Lghn/8GRIUCewpBBZulMRkWMYHbU6yv9QElCtwL/nkmLGGtIZMuzoDt8
         VExngcV61+qooBiEz/BMyh5JnO/lO4OYFTcwP0eTyxlWRE424ydfvdA0GCsez5XGMp5q
         kD1nm45qFfEUdCrF9rrFyfaJ7lyoJ4LdCspWjLK+n2f9wEUxr6PrhmJ07wgbDZtF4hwD
         DUKFTn4fivRnlJ8Fr//hRe5l+vN946hlYOEmf5Eg8o9F7JgfVO2o4rd2kZaHt/OEIu2/
         Y6iARwSIJ/p4JYn2Xc8LI4LuekXrJUh+Ib3ZHovm22AqGbaUdKNkjJB00Yqr0WNfvxU7
         EABg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q0wuRZAe;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id f31si311880pje.2.2020.02.19.12.21.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 12:21:17 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id l136so25148225oig.1
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 12:21:17 -0800 (PST)
X-Received: by 2002:aca:b588:: with SMTP id e130mr2061973oif.176.1582143677030;
        Wed, 19 Feb 2020 12:21:17 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id a30sm263270otc.79.2020.02.19.12.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2020 12:21:16 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v2] kernel/extable: Use address-of operator on section symbols
Date: Wed, 19 Feb 2020 13:20:37 -0700
Message-Id: <20200219202036.45702-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=q0wuRZAe;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../kernel/extable.c:37:52: warning: array comparison always evaluates to
a constant [-Wtautological-compare]
        if (main_extable_sort_needed && __stop___ex_table > __start___ex_table) {
                                                          ^
1 warning generated.

These are not true arrays, they are linker defined symbols, which are
just addresses. Using the address of operator silences the warning and
does not change the resulting assembly with either clang/ld.lld or
gcc/ld (tested with diff + objdump -Dr).

Link: https://github.com/ClangBuiltLinux/linux/issues/892
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2: https://lore.kernel.org/lkml/20200219045423.54190-3-natechancellor@gmail.com/

* No longer a series because there is no prerequisite patch.
* Use address-of operator instead of casting to unsigned long.

 kernel/extable.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/kernel/extable.c b/kernel/extable.c
index a0024f27d3a1..88f3251b05e3 100644
--- a/kernel/extable.c
+++ b/kernel/extable.c
@@ -34,7 +34,8 @@ u32 __initdata __visible main_extable_sort_needed = 1;
 /* Sort the kernel's built-in exception table */
 void __init sort_main_extable(void)
 {
-	if (main_extable_sort_needed && __stop___ex_table > __start___ex_table) {
+	if (main_extable_sort_needed &&
+	    &__stop___ex_table > &__start___ex_table) {
 		pr_notice("Sorting __ex_table...\n");
 		sort_extable(__start___ex_table, __stop___ex_table);
 	}
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219202036.45702-1-natechancellor%40gmail.com.
