Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDWP6KEAMGQES7NRIOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 041153EFC47
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:24:16 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id y68-20020a1f4b470000b029025e10a0ed69sf213521vka.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:24:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267854; cv=pass;
        d=google.com; s=arc-20160816;
        b=BTRnkn/hSLMQKwo5+2A8EPdfE33deV8Ot7IR1wN1uk1dethuso0gvR971vneEp6Qiq
         FNezi6LQVnx/QkFF7K0fTKL1jV2npQrVHv/q1xMlGEqhwzkinyCzwWfDS2P8IZFBjW+R
         Ir5TvaGJxfZgq1gH2OjaZDtajkRGIqAOJUYTeO5u9mwxrRtTI0Mtle6U/4osYaWQwSrW
         MjE/2xIKsFj3FAvEjZPRU6fRCJx6CRluJNR6fY9IgSCryOY6LD5ZrmJTHZgCKfGU/dBb
         mAP9fnISzIx2BOxJURrf8AK9YR0x7WmMbfAOv8PS7ebszZ44aKz85b/45Yy2gHRKhuZu
         0wNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9aZpykFJkDbZZIPSAUCbHFdlou+Ta09ErePqac3rja8=;
        b=V4WmHAm7vuLVzsl3zdLQm0tkpcz/XZb7xbNNNyc41TjRgvFYYIh5R7mNtzXQj0uuFw
         ZUZyLfObD6Zb2OSalktXgQTUgo/qHBTkjOzOR34/ESPquI9oOojDG5xKdUZ7RUud45R1
         FqGtb3DVqVsABgAIBmfVTIvNBXW1klWK8tNR9Upb/ThtV+FlqBWtmJf2K7O6RMyp4cUc
         Bv6ajIbDF+bmBfTWspzRf3AMsMbxYr+1xIISvkBV8zfELiZb39gpG/cGSQq8jesAF+od
         b5Vjgu6OungQz6/DhrMCT6WWD+7tjrNF15B7JoI1dG1/yfMboshvCeKHMumZpibEuvZa
         alyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Q+q1h03V;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9aZpykFJkDbZZIPSAUCbHFdlou+Ta09ErePqac3rja8=;
        b=gW1XrZ5KnKuaKa1ka3kYhYZ1wOiZCQxw2hG5+wk/qRPOsZzQ7MmYERBJriI1tCpd4H
         b6uvmivZ6Gt3YfJpnGtbyeTHtVQ3SFZLQLJBRyTtuA9Nez4lvyLpHhmNVPCjEvojFS2I
         WexhocMXj5Xo7fLfU0/vdoS3wRro/+CFIp7dAwIsRURumJEJcbWv/4FCq5jK++0PBgW1
         VPq4zGNMvqWHeqMiAre0POSncd9MqM3I94D58nDaNBoSVatulm9M7N2xGfEp/nvzcXgv
         tkGrdWnH6ti6VNmsQfcp+nXaH5FdBrVPBsu1vWyGOFAhUA1h8i3weqNc3/oWrFuGD01s
         G8NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9aZpykFJkDbZZIPSAUCbHFdlou+Ta09ErePqac3rja8=;
        b=As5rk7K8zEz8caBDuQ92IufrAJqdAYnAK8skiF6EeqenubOpITjn074KGLeryhti2F
         vPO9nYjEIejb0sS2gR4SDhBObjKwEbBFK8PbkJfRqvMjh5tygegaD/1xuMjJcVUJY18m
         AY2xWBdVitXYVfhHqbeAfKwi/fMOd8tzfQOgyxQs+c0EY9J/lGGP/waHSzL1P2uEaZQd
         F4Hcci8e6Sg1uapHw/31VSquSM/tPojKFs5QYejSxkH5hgaXM5lkFsoGtU1z6ktID8FU
         Dv5ZE/FlFzRw2M6gMycXnKTClfF5q/8in+0+AhVkU2EEaehCBK5xJVkhJ34A5HrQk/Lk
         9izA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532t6OdQAgIuCCK3NXWM4jeb3GBwbItS+Ws9ydZTqRz9unT100ZK
	LoQKKGtrI9G8sTQKwrHEXGw=
X-Google-Smtp-Source: ABdhPJwfxUJhh8bH4ldxxpesbXPw5ZVR/lUqeejvZKRWJSxgBKiICLMbuntJ9erfRAqgY8ILVW0Njg==
X-Received: by 2002:ab0:3f0:: with SMTP id 103mr5450236uau.78.1629267854882;
        Tue, 17 Aug 2021 23:24:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:a81:: with SMTP id n1ls164905vsg.8.gmail; Tue, 17
 Aug 2021 23:24:14 -0700 (PDT)
X-Received: by 2002:a05:6102:354e:: with SMTP id e14mr6452452vss.20.1629267854450;
        Tue, 17 Aug 2021 23:24:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267854; cv=none;
        d=google.com; s=arc-20160816;
        b=d+eSjBh9xTbkzMaPaYURsD6ridxNniqSWbEOk3VyXeLc30T4x7Piin9n81naJ8071L
         zMvPn++HP6or/3VhP+EEQSBQd6VPddRYsxihQVs9YgLoG3DRVdZM6MT+rtmdDP0FGrID
         C5gWNH9bT97H7xQaBMJCpnhTMn5vKPpZiq/4PiPJuqjgzGr3gzsky+nb4pe1/9wwtUZG
         7QQ7qG+5TdpFM+KyvQExIYZybED5PYdJo4OeGxytJMkA1hGgrBjU6EpVrx0ji3TL1aS9
         JD230+HPGznTU1LEAbfE2wvUz7o4Cij63pRNwVImpaNaRYpQqb3Ef95YczVWHKlJqfUB
         A3dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=8+A9B+piI2a1pz1tZAhljlWwZX3AUujJJLfFoqwX48c=;
        b=yqQlY0xqHGOy7yUqJ7whtHYspssUqz79XVacETqvlg5mgWR8yQ+/9tkojTiNeEKSVv
         KnxUOv/MFHA9Vb3O4KYlzdH7ne+JhB7+s3a2ICszqoLucfyMfl9HvsvnrFgJ0kW6aeQS
         FsV22yaFK5iG6JUWh4l5ed5JCc9OXd3ba1H7Q234LtTxrcsgpFp9wOi2plO1iRL6GZpt
         6qxv3N73WKm5Pp9PiqrGzFqsvO1KxfotqRKIIjLptWHDOmwHZm2Tcb/lsfNZ4lKcN2OV
         oW15sz5sA1lHF5/7kQ88m1Bpo9RBWAQhvKOslzTENryw64w+ZXHQMP14fYcgBZLgfmwD
         /BoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Q+q1h03V;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id q21si343080vso.0.2021.08.17.23.24.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:24:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id t1so1183856pgv.3
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:24:14 -0700 (PDT)
X-Received: by 2002:a05:6a00:134e:b0:3e1:1ed:80ff with SMTP id k14-20020a056a00134e00b003e101ed80ffmr7575503pfu.34.1629267853688;
        Tue, 17 Aug 2021 23:24:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p24sm4878901pff.161.2021.08.17.23.24.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:24:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Alasdair Kergon <agk@redhat.com>,
	Mike Snitzer <snitzer@redhat.com>,
	dm-devel@redhat.com,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 54/63] dm integrity: Use struct_group() to zero struct journal_sector
Date: Tue, 17 Aug 2021 23:05:24 -0700
Message-Id: <20210818060533.3569517-55-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1663; h=from:subject; bh=RPEjx0xOcNjHRBM+3EZ1vHtaj+TxiBoxNq+cj1Ac9bE=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMqKJz2SoJYeKtBFLmX4tcR3DHJFXvBbKzH4heh kSEkuyiJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjKgAKCRCJcvTf3G3AJuKGD/ 4n4SpuomtIZ+g22QufnnrQNKHA98zIHUxCFyPUWlldkaYq1yjxANA7kCeWzhMyhnDbNsMcPnBz0u8w gTumF2NUeGQx1DWnIYpoWchHj0biXBVmJ627d0qH4ZPJV0xVoCra7OxBNu9MzddxWpF6sdPcwkm6G6 KRyO9F4M4JhZ6wIx91tgVghgSzl5twheIhtA3njJ073Q8wNaDnBzfs/l9Ut/AzjfupZu1x3ki+jwpu WmD6nfcKbq0Iek6wuIdRHun0EOL5PBZd4fWR1bJEQePLiZZr/WzyrJktCcPBtbfNoxoh3Zd/RDOYxC Phqtb9d6KbfQDNPiqFq8A/FFx6Omeamuzt6AZrvZOtupVwaAqZxmTGL+T1t6dJrUD1sjtKDjGoNOLi 7dn6c/08XUE+My/kdCiaqMIMLvnXKeruIHQhrlJ6zoMYvFZ06D7/j39GezPIeXXaEJGwuF4EXX7UYn QzJ8yJKQqHgf3AnzSklDq7S2QgMQbMBg1H2HY21GsA89Wb8lyNm0RvImBjKDi+T7HWHtu01K2er3t2 O4+fb9meXQjoQXeBGEZ9RShjhKkgK9BaIxyiqfANsALqrrzQxMSMbRLvnALSRrEOGtrHi3ZBCAsQ/F uBwH2rx2bGKY/138CbdayzcXJ/PERuBisG0LhMFqbUDxYwVopHT1lxsnBtzA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Q+q1h03V;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Add struct_group() to mark region of struct journal_sector that should be
initialized to zero.

Cc: Alasdair Kergon <agk@redhat.com>
Cc: Mike Snitzer <snitzer@redhat.com>
Cc: dm-devel@redhat.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/md/dm-integrity.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/md/dm-integrity.c b/drivers/md/dm-integrity.c
index 40f8116c8e44..59deea0dd305 100644
--- a/drivers/md/dm-integrity.c
+++ b/drivers/md/dm-integrity.c
@@ -119,8 +119,10 @@ struct journal_entry {
 #define JOURNAL_MAC_SIZE		(JOURNAL_MAC_PER_SECTOR * JOURNAL_BLOCK_SECTORS)
 
 struct journal_sector {
-	__u8 entries[JOURNAL_SECTOR_DATA - JOURNAL_MAC_PER_SECTOR];
-	__u8 mac[JOURNAL_MAC_PER_SECTOR];
+	struct_group(sectors,
+		__u8 entries[JOURNAL_SECTOR_DATA - JOURNAL_MAC_PER_SECTOR];
+		__u8 mac[JOURNAL_MAC_PER_SECTOR];
+	);
 	commit_id_t commit_id;
 };
 
@@ -2856,7 +2858,8 @@ static void init_journal(struct dm_integrity_c *ic, unsigned start_section,
 		wraparound_section(ic, &i);
 		for (j = 0; j < ic->journal_section_sectors; j++) {
 			struct journal_sector *js = access_journal(ic, i, j);
-			memset(&js->entries, 0, JOURNAL_SECTOR_DATA);
+			BUILD_BUG_ON(sizeof(js->sectors) != JOURNAL_SECTOR_DATA);
+			memset(&js->sectors, 0, sizeof(js->sectors));
 			js->commit_id = dm_integrity_commit_id(ic, i, j, commit_seq);
 		}
 		for (j = 0; j < ic->journal_section_entries; j++) {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-55-keescook%40chromium.org.
