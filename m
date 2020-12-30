Return-Path: <clang-built-linux+bncBC27X66SWQMBBDVKWL7QKGQEQWNQIAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E592E7A10
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 15:56:15 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id 33sf12334802pgv.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 06:56:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609340174; cv=pass;
        d=google.com; s=arc-20160816;
        b=BuPxpj8cPihoIfV1eqkRXZjtODb7QjVRK9O4qTsF7dLyOBW5GJdEo/wULhAOH9hgFu
         DBbMVLFiEmLXO6Y8BcODG45xgpDO9lvg49S0q2GS8dzI3wtQxkmyMFriEJgX8311qHej
         3pkDixuNyYq/bl8WmOkb0+nVZkHQydxiS1y9n/bEB2uJo8rkCBuz7tT/d4mRGKmLuRd+
         ZsxfdEyx76xHKi4weSDYDMBThs/gfgMDE6exjuOtc8j3Anl8VTMDG9SXOHwkr+s5XtDB
         bwqa2g/rN4Hdr32nslvfqNlPb9woUAnDbpIWyQlqWCNn741Op6Z6RzWbhGAyJp0aQ5I6
         Emhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=rI2WMx3m032mmdsSXiDi5TW0OEX5TCGUKB7k6GDHkAE=;
        b=RBm5NOzD9Yf+soAzSrvdgag+6CYziYJkqssz38J31jnr/KZx6sEN5esmZvW4eci0i8
         trVJ9pWXvz+kczadzG3dHXvloXqH+r0Z936H5Rjtw2zUCNJNulCoAd9xcGQhCssP8wDe
         M+QZABwQQcGCv6DUGv5NtP2aA1bDKuyYRSE3hY4oJRzCby2HJCOFADxv9v1zt/5ws2IR
         h0uqtVAUcPPcCc/WuE7xGzEMwoWRlr/GRbCAP7cNdez9W1R17KMfvvJoFN7t5KLF8eCK
         Jtemo9obZhoMRM23W4YcaNQCllVVA/TZjq/94ENbIH1G1khPlxTWnYcUisR4gpDqKdZb
         FitQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=er8MLI0Z;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rI2WMx3m032mmdsSXiDi5TW0OEX5TCGUKB7k6GDHkAE=;
        b=W8HjNk2NsTEZuh2Tn1dOuIDlIOdABiysm0D6F64nLE61+yAwHqUopGu1Q5xDqiS0Z3
         99YS6fK7DnDloLlSj0RiyRwiiRwvW0eJgs+WXoYMUx8YExsuG2qR/OlI6hqN8Kkumq24
         68OAMPb4QqGXEhVFJU38LUI/SPbexSjLxAGEigvl7H50ELx9ICyOFOgEEECdlgQ1UZsS
         S52Dp+wBBa7C4GqKlVuukxRzecUUKKKf9HuupypLjCPHKhC2lpOOcn8nJhf76l91VW2D
         WWItzbm5Hb46a/X2V02C+45R7eqvQibctIY9NJGaN7uCGPTBqTnuyiAHJaHuQfSEJCph
         kHxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rI2WMx3m032mmdsSXiDi5TW0OEX5TCGUKB7k6GDHkAE=;
        b=HfxRdEqONDIGGTcqmWy4Q4LLJ98ZHAoOYRdJ64vc4hRJ29yjRIY6uv2w4Ttu1kVzsj
         mOi771UNSUBNcptP1/4LtmtAXyKEd8EM0IwbXD4EWXGdvaaMiCNBaoT2c8XvrEIy5ys2
         KbVB9F8FrLdwvAg92Z+GcD6d6GKiOYjEHJQhS6FMhSD18acViNoTb6LloD2Keym+nNJS
         ZS4hRheM2QlEGgD1b1cl3vIGDB7/0xG37j+oaNQMDP3X/xT09XrstSZJerwgviwc/7cq
         EPwggv+vKj3awbeVMFpF85Yh7yCY/xIru0rx/9isUQwe0PtNoy9Fm5H9V6R5lejT15UW
         7Ibw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338gJrbfUig49KMNlij+0kSRYpIh4QG+saU6KJG0j1R9IXmoKtI
	l3Vs86778fLWZq+RIx4QYgI=
X-Google-Smtp-Source: ABdhPJzKW+p133OzAyWjKtJfWZBses9skh4Rm+pmeQAAXrE6NK4Dpb1IEkyXzIrydx88Apc7sAHgAw==
X-Received: by 2002:a63:fc42:: with SMTP id r2mr34381743pgk.234.1609340174447;
        Wed, 30 Dec 2020 06:56:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:959d:: with SMTP id z29ls20337237pfj.2.gmail; Wed, 30
 Dec 2020 06:56:13 -0800 (PST)
X-Received: by 2002:a63:1626:: with SMTP id w38mr52080885pgl.278.1609340173745;
        Wed, 30 Dec 2020 06:56:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609340173; cv=none;
        d=google.com; s=arc-20160816;
        b=VXgKYpxnXZT78lE86KrFgEL8kFmREd6jt/iI/HLljRMZkfnfq1P5TCXMD//SeNHoP1
         Jt7s0cOUegMoyb7Eq70J2g8oNraNstQLXbvI5HjwOoDKKdIbPHUOZZaVztYu0n5ZaLwp
         hiLEtgwSN45eLz4eLpC9zzZBIz9N9s7mCSAfJml7FXOHkDLgvLiXFPPDaEURxdMzpT6W
         IwnUQUnxzm8rs9iIvlQyfj46YYgMcf5JtYFAnPSOWup27kow1CvpBU7LuWO1Fl/2L7df
         pidxiar9kiitdHkAEanvJNqKozNm0C6Dslh0AynzhkZOSavK7y8fKlXLpil84twekco1
         ReKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=w6RH1LM35oC579jEOnaRKqc5ukFlU7LKex1Uzqpw4kk=;
        b=wt5KCjDOBK/irh+dgwAInoA0dY2j2J+yAEeWC1qo9pBbczZ87v8vZNgGfBkzJ5jOlH
         S+C67mHsa1/kWRRQwWN06iU0eViBJylMAFCof2Z7QqPzzNfVxJ7mBF64H076b9hXqnU/
         I3aw0D9yOD1JdZju0yqknX0moVpprIGz4P41h+ELX5cZGzGlXvkY9oCU3+2nlm1DHcFl
         KwEQaGB9jkpEQ1a9IXx41dSsfn4iYHlc03BwhaOBy3/zAOZJ+tfXvbNXXPL4Ch/wmiTu
         +VKYju1ET4Y61ssxLLzCYbK0UrG81iH2z/IjyhBzh6NivsYYB8tWXjCVJxiQIO4ABFbK
         IBkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=er8MLI0Z;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id 13si3076641pgf.0.2020.12.30.06.56.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Dec 2020 06:56:13 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com
 [209.85.210.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-63-Dds9ttwONMSgLD944BIB4Q-1; Wed, 30 Dec 2020 09:56:11 -0500
X-MC-Unique: Dds9ttwONMSgLD944BIB4Q-1
Received: by mail-ot1-f69.google.com with SMTP id n108so11971676ota.5
        for <clang-built-linux@googlegroups.com>; Wed, 30 Dec 2020 06:56:10 -0800 (PST)
X-Received: by 2002:aca:c756:: with SMTP id x83mr5236804oif.62.1609340170236;
        Wed, 30 Dec 2020 06:56:10 -0800 (PST)
X-Received: by 2002:aca:c756:: with SMTP id x83mr5236795oif.62.1609340170082;
        Wed, 30 Dec 2020 06:56:10 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id s66sm9182400ooa.37.2020.12.30.06.56.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Dec 2020 06:56:09 -0800 (PST)
From: trix@redhat.com
To: dwmw2@infradead.org,
	richard@nod.at,
	natechancellor@gmail.com,
	ndesaulniers@google.com
Cc: linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] jffs2: fix use after free in jffs2_sum_write_data()
Date: Wed, 30 Dec 2020 06:56:04 -0800
Message-Id: <20201230145604.1586486-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=er8MLI0Z;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

clang static analysis reports this problem

fs/jffs2/summary.c:794:31: warning: Use of memory after it is freed
                c->summary->sum_list_head = temp->u.next;
                                            ^~~~~~~~~~~~

In jffs2_sum_write_data(), in a loop summary data is handles a node at
a time.  When it has written out the node it is removed the summary list,
and the node is deleted.  In the corner case when a
JFFS2_FEATURE_RWCOMPAT_COPY is seen, a call is made to
jffs2_sum_disable_collecting().  jffs2_sum_disable_collecting() deletes
the whole list which conflicts with the loop's deleting the list by parts.

To preserve the old behavior of stopping the write midway, bail out of
the loop after disabling summary collection.

Fixes: 6171586a7ae5 ("[JFFS2] Correct handling of JFFS2_FEATURE_RWCOMPAT_COPY nodes.")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 fs/jffs2/summary.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/jffs2/summary.c b/fs/jffs2/summary.c
index be7c8a6a5748..4fe64519870f 100644
--- a/fs/jffs2/summary.c
+++ b/fs/jffs2/summary.c
@@ -783,6 +783,8 @@ static int jffs2_sum_write_data(struct jffs2_sb_info *c, struct jffs2_eraseblock
 					dbg_summary("Writing unknown RWCOMPAT_COPY node type %x\n",
 						    je16_to_cpu(temp->u.nodetype));
 					jffs2_sum_disable_collecting(c->summary);
+					/* The above call removes the list, nothing more to do */
+					goto bail_rwcompat;
 				} else {
 					BUG();	/* unknown node in summary information */
 				}
@@ -794,6 +796,7 @@ static int jffs2_sum_write_data(struct jffs2_sb_info *c, struct jffs2_eraseblock
 
 		c->summary->sum_num--;
 	}
+ bail_rwcompat:
 
 	jffs2_sum_reset_collected(c->summary);
 
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201230145604.1586486-1-trix%40redhat.com.
