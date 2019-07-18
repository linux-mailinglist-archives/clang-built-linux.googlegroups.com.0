Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBV76YHUQKGQE46J6SJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 108AC6CF88
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 16:16:56 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id a5sf5807381wrt.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 07:16:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563459415; cv=pass;
        d=google.com; s=arc-20160816;
        b=pKhITlSs2omRA1R2YRN0GxgviEiKyajowClKmaNVdPk2ctkHG3pAsIqmwHrZ/yFDEB
         LoDpOqgjvlaKYC4aYwE5mYZRsuGg5MdnrqavWlLIZ4sDqxbVJWjWUZomDie++xUuxEzh
         2Ya7bUKa/P95SHCjUTAqDrbBJO2iyGqAhyg/0SggioRK/Fbb0gcJyarMb9a/sqOZ1CYV
         u6y3eNChNdH8PUqC0Sj9BFKDxx+/3qFXzW9DZEagosU4f9QpMKhb0rURt8XOExg4kWLu
         N+wlU9LJlU4Bfh3VpLWERv/FBbuncH1w97lCUm69bPMO16bSx8GGy+PFsex3TUK3VnbS
         pA5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=xue/RlB2FwwZ4zQI2sCjSE5ihba020Ivw+jV05h0SeQ=;
        b=e0rf9JOszK12x2N2yPq4e+S9K3TcMIg5FtuQ9+L7IC+RZLihwShDsQ8O93K4MQRnld
         ZiwV4fFx6J2lOmrOTd+AOtpl1/ZP+V9ydnzISD/3mKDgrgl+xEURo09VXPwhQVeI+1qe
         SQE0FTi3XCLdkNlKj0bNyhVY2yXh0rZ+8Sy5JqzPMXU8TaO2qry76h4YgwG/v/0b9FNM
         DwGue9DmPOqQoJ1z26A8hL4uHM939X0/ggm3rb+qy8iDpblqCS7YbIKLM+yA9PCKZOCK
         JUcl1GD9uNgKmr68cQV68fDFbEOsMxJVzzDwoPxpfXtBdxeFQuCxqvbteBzs4S4aib5f
         bY7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xue/RlB2FwwZ4zQI2sCjSE5ihba020Ivw+jV05h0SeQ=;
        b=Y9QlvbtZTrsSC5b0q9jfDCwdVHoDd3mL0pCcQKP4AXqcqhElMEmZXUDHMi99k7tEpk
         pkt80hE0njD5/W5+65EeRxpGjpLhKCEDYZ9IzEH0NKFeCCYU+2YUh8a4aWRqbSyQphS8
         Vi0NaA4NCZNybo3P6WXcUV+ptCQWfkw3Q84PlfJD7Nx5EpxdDSHxiEHWPrkzDtPYZyf1
         fipPXghbpbwb9m8tgKNDfault97LWUOmaLoDmINbv5p2rTn6noVCSjGVKtfC8aiBe98/
         GFh1iVloXY0KtUO0AxM57WHL/heR91qZAm6kMeBHjGT2lGQ2FUqpEYz059bKX/M4ltjq
         M+0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xue/RlB2FwwZ4zQI2sCjSE5ihba020Ivw+jV05h0SeQ=;
        b=ay4JBxiUy7BNzKYCKnKey0tnsWUxj0/jbTVd4egaZ6wfkNlDxPdFJP5f+U6YpOSRx5
         ZSwNVn6fVQ/X312EoOVOpSKdVh8H+Qa96x+8KIhH1G/px/cwwh01sgHxj3mi0YwAwN3I
         gwKC/klPd/fhQTINBGCV4d60Pg+v1HNrSWuLS0PXYtIdyl1+rCepDK067r23j8R99nLr
         TK/uAoQY1fwY4qo3xXbs0JVCEE5y7MeDs7EQofnRpOtaT7R0ELRXI05BoD6UtDUSqGbS
         keZEOprjU0yE35CqXJHXUaqzHDNI/op4BUFukflH+KZnFAaTuR491wATdBJ2mrAgsyT+
         ADVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWRgXOyW9Rvxsi4d7BuaVrCM2LS6LKHXy3res4GRGcmN/gg79SQ
	YcF2itCCMzont860UEHySVE=
X-Google-Smtp-Source: APXvYqzeJRa+tq6P3NnvCjklzgEN+Xgn309xzKgGTdocyOMIXTAnzMoXju+yEsrytS+VAmGDGWfkjg==
X-Received: by 2002:a1c:5f87:: with SMTP id t129mr45202656wmb.150.1563459415768;
        Thu, 18 Jul 2019 07:16:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9321:: with SMTP id 30ls8787696wro.1.gmail; Thu, 18 Jul
 2019 07:16:55 -0700 (PDT)
X-Received: by 2002:a5d:564e:: with SMTP id j14mr48986134wrw.1.1563459415381;
        Thu, 18 Jul 2019 07:16:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563459415; cv=none;
        d=google.com; s=arc-20160816;
        b=OievIW2csSqIrMMk1xtTHgbUGrqyJ+BTDurdmITGMME+3JBVhLJJYw1J6uvJwbyUdF
         MwZvPBW59WXC9H9eNoQAPBvD9drfHgFheW4bs9IdHihE8WOTz4my5qiIXXpCkUvvDgmv
         xGkEJ8+1DkkTV0lvCvJj5GGmgnvt+F2CYv3JmckaMACIKHKJ8HYmB8bAAra+N9iVFyTB
         hPso4CG6BK8FCBRuDVwTb5OW2nwMwUBQOxLIkldLeHccTt/1T0fq/Zg4lJsFgeJNewjg
         Kxoc/gVN6BrbnycpVtt2sfvTFzQv/71ACM4Yd2HmanqmDSoDjMsKu6hg8aVIoH343ROF
         CSOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=qKwmGzIJo6452dh5ts4oSdoCpsoT1Kb7+rMJoiIABTA=;
        b=CAsi5qMOH65Es2HFPjmaV5nYRuZMEWeW+ipXzlKhMIoJqBdxJp+fblel0TTYhoqRXi
         rE086H0MSJh66kcUnxyBtwQLVorbG6pI1OngtsdnvLYKgcPVN2m8JJTS3Mqbsx1BVbGf
         gLipmXY+BnSualu8aJsG9xw3R8N++oP1KVIuX9vOCxJpjV7f0Hs01RK41CMeRHzAwoiW
         m8cOw9EovWya2gECIMjzgVGWsYsmFtaaT9urdJ5fayv1QMyFAWfXCIZo41//mj0sR/VE
         wXz5l1xG63cGLttYPO+J+eE+baWXshskr2C/2rAWpXGXp/IwPHA5Iic1Kr+4sqmy/vaB
         s7Bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id r13si1511973wrn.3.2019.07.18.07.16.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 07:16:55 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MdNHa-1iNS2127Qe-00ZLMK; Thu, 18 Jul 2019 16:16:53 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Hans Verkuil <hverkuil@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Johan Korsnes <johan.korsnes@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Gabriel Francisco Mandaji <gfmandaji@gmail.com>,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] media: vivid: work around high stack usage with clang
Date: Thu, 18 Jul 2019 16:16:43 +0200
Message-Id: <20190718141652.3323402-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:pQKRRjSAwPvJe/DxyiorcFmR6g4THfSDWMYc4p1kZ8aLckuM0qr
 xiClQ7AIVuxhBy+lGsPSBjcs77ak3SReRcHc5Am7mqZgcmrz9f4AoLd3JloLdNFEQglNegX
 6jdTth3eX4T4XaZYZZVQjYzBNeckqyHawmVjOWSrwzLGx4S2Tp/SgN1edqnon9OwZxy0rr+
 ftQgSnAn9XDmMOCvB2ebA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8NGldS+p5eQ=:By0jRMiqfFn2SYMphKkJGN
 i3yDPSR68JLDHktBXZ/qviTIEXWjHGJIdnA1VW72vr/hIz3WOnGbh7uZdJqfKdg5W5XuegFHI
 CjIkleZu201NWQ+tOktdMjcBbsF8z7rAOJvJd0rM7BXwi3fayjvf8l7SVubOp3GgyiqE9akGY
 KwzerfPyAtao1W+byoBidehfl987Lw4pHrMLUv7d5lru4Qg5Rxwcs0EM1yaUUMp52PI0R9oEg
 L+WvO2ty8u789v/03RE9d/S1OgvvOIGsj8dun2hMJ04PHuPnbj5+h6uKlhohhxfffam01eYT8
 9kKMawa1wwQ28ZB0wQtX1QaakIsJ+xDEL63P54/GxBsGNrVINo8NT/2gc0MpkproSgjZ6SCWS
 h5lJOb5BVBClB3WcPG5+8U2SM3oV8m/oZJSIZ3ewHFCPImc5ulF1iJP6a2xGssg2yzPbP25+a
 d/S7rlHcj+CxpFnLBqMKthxqafWyqaud59fXGcSTybzxX+Fc38wWBiYu0rjynB1/6wUEUok9d
 QBdwA7Pl6CjsbMpH8SarPDXByn6sQs7cSZt2u3bpIGfsOOm2KC/kwn2EDjDhY9KgStKqyX/sM
 Fae6snP4LKzacTQ6bqMOe/8a1LfqWfS/5eH+ijSfqkslnL7hpZ0nHeZFdA/Pa1Glrb7NM+xjr
 nIdJuXqpjFhUmg3rj+0cf8okhl6YlHouWlE/0mBoF4mQ1GXOO69SEcd5TJGhIJ91ltRZvYb9q
 Xc7tFuIOp6ppiw+kpl1+2E7ACbzQatv09fxO6A==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.13 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

Building a KASAN-enabled kernel with clang ends up in a case where too
much is inlined into vivid_thread_vid_cap() and the stack usage grows
a lot, possibly when the register allocation fails to produce efficient
code and spills a lot of temporaries to the stack. This uses more
than twice the amount of stack than the sum of the individual functions
when they are not inlined:

drivers/media/platform/vivid/vivid-kthread-cap.c:766:12: error: stack frame size of 2208 bytes in function 'vivid_thread_vid_cap' [-Werror,-Wframe-larger-than=]

Marking two of the key functions in here as 'noinline_for_stack' avoids
the pathological case in clang without any apparent downside for gcc.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
Not sure how much effort we want to put into fixing clang to not
get into this case. I could open an llvm bug report if something
thinks this has a chance of getting fixed there.
---
 drivers/media/platform/vivid/vivid-kthread-cap.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/vivid/vivid-kthread-cap.c b/drivers/media/platform/vivid/vivid-kthread-cap.c
index 6cf495a7d5cc..4f94897e6303 100644
--- a/drivers/media/platform/vivid/vivid-kthread-cap.c
+++ b/drivers/media/platform/vivid/vivid-kthread-cap.c
@@ -232,8 +232,8 @@ static void *plane_vaddr(struct tpg_data *tpg, struct vivid_buffer *buf,
 	return vbuf;
 }
 
-static int vivid_copy_buffer(struct vivid_dev *dev, unsigned p, u8 *vcapbuf,
-		struct vivid_buffer *vid_cap_buf)
+static noinline_for_stack int vivid_copy_buffer(struct vivid_dev *dev, unsigned p,
+		u8 *vcapbuf, struct vivid_buffer *vid_cap_buf)
 {
 	bool blank = dev->must_blank[vid_cap_buf->vb.vb2_buf.index];
 	struct tpg_data *tpg = &dev->tpg;
@@ -670,7 +670,8 @@ static void vivid_cap_update_frame_period(struct vivid_dev *dev)
 	dev->cap_frame_period = f_period;
 }
 
-static void vivid_thread_vid_cap_tick(struct vivid_dev *dev, int dropped_bufs)
+static noinline_for_stack void vivid_thread_vid_cap_tick(struct vivid_dev *dev,
+							 int dropped_bufs)
 {
 	struct vivid_buffer *vid_cap_buf = NULL;
 	struct vivid_buffer *vbi_cap_buf = NULL;
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190718141652.3323402-1-arnd%40arndb.de.
