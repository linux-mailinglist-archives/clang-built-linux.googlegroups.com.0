Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTHPQGEAMGQE4LNYUMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id C080A3D812B
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:17:01 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id c18-20020a0568081392b029025ca5afbdeasf296695oiw.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:17:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420620; cv=pass;
        d=google.com; s=arc-20160816;
        b=GlAf1bxo3yqwKAZKW4aLMG9U2yrDw0VKls9QjCbxKaqMhbO9g0ydVJXpINCnLxWtbv
         +n0BN68lXYVo2aao+lS85vUAWFIrlvsybkbu9iRGNmma0Z9JQdfCy9BBO8W2Wu1xMKaL
         fk/NyYCEiPcd+We+WV9WbR50Q8K5kgnRIX0dnjE1KUOQs6ILqmOfH1o3+Y29TQ3LfzqD
         kXJcFTCYBtFWzvfAfAGanvB7RUNT1IG4pksdoKyNSszcnQ1AFn1dRXTd31fxPm7VVl/+
         GUflFoLL/kF4ypQXwqxxPR89p7kSNY5joLSZRk/Vs+1FSDqlFcTsXjBWbzvi254BLPtb
         Qevg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=uDjNLpEewanlqR1reHe5FD51TVKV3K4HSFMQcBQ8zJg=;
        b=oN+nQCR+2DMgqZugK/R51yDXyAgLHpZ6P8FPP+hj6MWzBoJjkdM4oxmgWMOL/Y7yw5
         ZKNCv0aUFt8Wwig3yWE+I1cmqnzoqdSzKTkMDHzljFibTMQsZD94R1Rq6gfgaWNbSVIb
         p/JXu7zfrWX8D0GTr+KFoaOZ9NKRFIhG+G0cnD8BOYsAVVUkkpp8c7fLItswfZlGfrPa
         4EtWSfIWKNUNXXznCbHsHkxfW5HIIzxiUqeMevo9sfiwFm2MW+NIA1KRApxa7Vo0rW+Y
         zbtWeXh4lRHelP+7avtOnzdG3VBITpvtEGYQwAy73Dczxfwp5EXhVXS3WQKRgBirBBvg
         gIPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="C4eYS/6T";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uDjNLpEewanlqR1reHe5FD51TVKV3K4HSFMQcBQ8zJg=;
        b=RyezsxBiWEUNpicuLuKrkU66nIDb1nuiLOW0pMMz2aBmgIdlqrdJPkWXJ74bC8IS9s
         Muir7DPJob15VBASxkXJb4ZO9M8Vd+ESfD8Sbdlt1W/pKWykvnNGDpSRxNze60ggg+WK
         2V2T6dBCkkZruxBSEWvioG2clFTl8rGYGSbZiBU1CGzH6AZOR/5Qs7Kr2O7+rYgc45Lh
         yloq2i9Mqkl2NF1KEaMNn17lIc++mCYxz/OuYmbDYvn3KjNGlP7mrBT/OrhmDrj+2YXQ
         6dxyhIfj1f2EzAI5hQzxXjCfwDPPniNPrq0q+tPPI/0gOGMRU630umKLHA5iMGU4Axzw
         Yb1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uDjNLpEewanlqR1reHe5FD51TVKV3K4HSFMQcBQ8zJg=;
        b=niKkyGLuMQx5ZcAI6n7u3QF2gbVxrHi3t23OyYJCNk30jN8spzzhhxKoOWY14fPwe5
         19ST8dye9K+O7scIacjADdyV4aV0vfNbm3LIVDAPNQhFXrKO/YATdwc/sUxMv8e+2kag
         PhCLFS3vCVIislJJJk6bdkxP5tzz/4ihdDhZuIO2RsOEeQKoRntgPK2zDacAo46pY/eC
         5/EsYX9LYvxr1OaUXKx8mSFMhldb9pDwx/ywlW+3nXYkYk0YmCgoI7LkDFsttjMX7eq8
         M5hJqodHacCtjtGJjZau9TpO5dP+Iyj12u+lj8QSGSe3PedF7zIbDrkQ2AW0AL690eVB
         8oPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309u6r3SvKKj/uBqzzWYk6mTMI7RlY5rt4XvZ5RfWyLLXaBl6A8
	G3hVgv6gA6+Q9OU168b7bZI=
X-Google-Smtp-Source: ABdhPJzOgHsaywk20qunoIkBCWijaCsazGy0lBXD4PgfVWhZd4PLgyQGCH4jWykJzBwr1tZTffq1Ow==
X-Received: by 2002:aca:d64d:: with SMTP id n74mr4314653oig.47.1627420620770;
        Tue, 27 Jul 2021 14:17:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:51c7:: with SMTP id s190ls5135ooa.7.gmail; Tue, 27 Jul
 2021 14:17:00 -0700 (PDT)
X-Received: by 2002:a4a:e502:: with SMTP id r2mr15109613oot.36.1627420620398;
        Tue, 27 Jul 2021 14:17:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420620; cv=none;
        d=google.com; s=arc-20160816;
        b=ALvTKsuimaRODekl0WMwTvCL5i94IXlvwHO3p/TC38FP6SBHK7OAdutupNIe7M5Mev
         NdZF0WWzRkH+UvIy3yUnL+oDhfKHM5HKaiK7cABYGYMUi21iRNkBeqhieyPedMr7zlXv
         lPk1WfFAPOyAwvq0bj3YNFUIP2juaHCCWSr+ZV2GQyIvWj9UBamjbymw/Z0hhUzjbGIb
         fS80MJx5ZZN64OZ0x0RjvuklV5Es5CyU/TEbpVCJpxUu/vFmVxjfYZttZN/M2+qbAcqA
         kcztFQ5Qte4UdfHhQYictVV5sMrX2TpQh2H7F8L/61NcTiyjaLJqLHwa4SXqDe2yzipw
         MtSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+X6IZihoLyfy0Wiif0jTU6fGkcegk1/ptK7zaE9ExOM=;
        b=KtLYqgNOlwEVPQFEi+sKS7D24vBRvpG7f0U0xYN+RnnA2zt2SMCbZSSo08TahmUh/A
         B0gvXNZunIs/k7OTD6TMyaeozUGxAzGHUggu6rIkk+KF1YJs9jTiHsgcT3UWdsZmvvgh
         rTkR9zs+8O4+R42HxPFFdLNyxfHciU84S69Vro0SRz2OuSQxL6voOs1CWY8mCpynlF5r
         9qZTZVfsWbfrfqFy0r7mIW2mmh6oan6HBFbWyzsOTLCTeY2DV9t8O0I/SfV7PrfipCVw
         cmtBIOHITAu5WILKTk/KQ7qIODbEZM7hZvOaqshr5Kmpw90xQlH7UzcyWoUhTFzVAp8y
         3Chg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="C4eYS/6T";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id o10si407055oic.3.2021.07.27.14.17.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:17:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id e14so39972plh.8
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:17:00 -0700 (PDT)
X-Received: by 2002:a62:804b:0:b029:328:db41:1f47 with SMTP id j72-20020a62804b0000b0290328db411f47mr25007825pfd.43.1627420620114;
        Tue, 27 Jul 2021 14:17:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z124sm5174411pgb.6.2021.07.27.14.16.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:16:58 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 52/64] dm integrity: Use struct_group() to zero struct journal_sector
Date: Tue, 27 Jul 2021 13:58:43 -0700
Message-Id: <20210727205855.411487-53-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1561; h=from:subject; bh=06AwgDhDm5rfSJczNzpy0ALLnPqFifOqpq/XiymXeZw=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOLkvi4WP3nwdDAQoa1QSWSWWQpEaKPsLt1Yrm3 8FcNJeSJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBziwAKCRCJcvTf3G3AJtOGD/ 4oB/qnnjc336AyH1K6CiqoIGRiODxOG/34zhnJ2L3+mEclURUs4GXvEBs+ynT4uxsaY9QUrjZhpqCp cdyjZJptJPu5bTduPuT/zB8wtiA1nclT/0pnTgoVaFym7lXLnek6LJsOD0RkPwz3jefg96VcdXLn6T TubbzJ4g0ejSYk50gFY2qrA/M/tOBn/OnNwc05C5P9FMHi9s6oV0SFXBMrqdxQCBjmbWQ6Efr9RdXD anks+/yMI/Ww+Lmq1IKQ+10f86r0m2ii3mT6s7tkBApimQWsrgRRguCOY8Ik4wqIaIQQ8IskbwjfRQ zAvsH8PTdNbFjoqR3LIZWIALOtNDkrAIG3wYkJUVq8qBNCH0Gbs5b+3ICmwcEGk1rjYJtGD1JttHO1 8dhqMnihZZQgW2QTqO9UALTRvnmppmvMGXI9t1RSj32G71bLR37OvLf8RYbb5U/ZwW1mG1NdfR18IT +53ZFRG56YQXa/CvxD25rnfVEjsakHncwqKoh+QE/qcQ0lrgJ4wN1lAf0tGqQ4EFaPskxJVADlbjmN 32hM7hI6LNVfSBDdz70anPmudlxiL2l4IWNCgn2CQFA4uwHDgkkIs+OhSEEXPGp8z4obbVQoaGhoG3 canI+R37hvHDQXuDDJFTaj6vFfN8KFalRxYZp56Y89KxykB44tLc2SwCNSPQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="C4eYS/6T";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-53-keescook%40chromium.org.
