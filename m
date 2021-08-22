Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAUERCEQMGQEQN5QZHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F023F3E5A
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:51:32 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id t14-20020a635f0e000000b0024e7eb20fc3sf3609484pgb.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:51:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629618691; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zx7lJekdO13pAXElJJTlXfqB9RjvQBO9ya2oDYPCQza8pjk3c7K/Tv1nY9Lxr33Rhq
         rcXovCD436fxdujVXhUcF+igv+lNI9LdCexAjAZ14ODE+oaVMPYGLN6bkVC5RY15jtp9
         5VESLQxwgvBEMsgLVY0JRPLO452EBLZLZI5RX6FMfvBUU/FVzMPqcesBj37qK0D9aHkF
         d/D0UAxQrYp8wD+vbZv7sQurYF6+P4FPdKlql5aQSzpggUEF6J+71KKGhh5WdOnYpyoi
         AViv0gr8pBT2uAG/6uqxz37avtpo8gXyn5l4zmSUzr2iwuLV3wp0NTLpEUGJWUyzY3LQ
         tkFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UryiUp/oHT3AUtpDzAmI5F98dUoKAuGZVfjdKPRPWjY=;
        b=j9+/1PQd7fJ6+MwnAswxYfrGmjFclAIttO9lnsj+8izNxaU2LdJRVVZjHeeC3J8NOz
         gNJupr+U75fgUBwdDjYjmbYf3S4z0RiL5yRj73oBZaAHdf8OWJfn78stdqJ2NFatCBg/
         s0lKkZphiTr51odD33n+6/woCnXqRbkGf0VIHpdcNgiZWB7SEK1ZdQEwXDX49v+dVHyt
         iiXxtA1h2iWhVJ1sG/dE4IiCGcn2bW7T6gg94wPNj0UgXAMf8OFQb8yjA3s93xceWyqP
         QdoYueWcbGnJFE3KQoWQGj4TfKGZk3qCyCLXAyUeIdfEgD2WXaaAIPp9hlELWBp+56wg
         n1bQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=X1EMayCs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UryiUp/oHT3AUtpDzAmI5F98dUoKAuGZVfjdKPRPWjY=;
        b=bLj/wPnGyuf1uTkDdz/edv9rHZFSJF89/4ks6CxWzE9REOzYLZVibCMXGSngy5uK5U
         fnXtFJW0PiRP04soApBwbO/KZ4528vzr/ioNN1VG7/AwKKrConyOe6aoOMyzR+gi/Vvj
         QkS8Ra9HD3r0WleOBMCbVRoTRSzuxMiuI/c5omfzOUcCtSzUfa+WJ7smlQTCbjFj+hfm
         w8e7HMC1BWMZec54I6xs2rdMtFup5pJ+2XtlKAdgO4GhRwLNE+grBDWtIIlI8eN19xN/
         hRB7vgEmsxJitBuKK6V7DR7BXKP/jjyvtXjtC5tc/+Qnbydk/liyfT7U9NmaA4MRtZMT
         +NWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UryiUp/oHT3AUtpDzAmI5F98dUoKAuGZVfjdKPRPWjY=;
        b=jtEQGPksvreYVv0A/5AvxzAc1frUUirIkvbqWmz/V7AKQoQJ6hvAfu3PvCRwdasVXZ
         +fhzRG2hT72ZrAQR9IIyGAOOdMMKddtq3/Rrw1pLF3GEgqRCXWpF8dfyLz7wJkj3vjHV
         vVFvLUJVaaQMy5wMYoa6yENefTi9nYJfj5m7E017fwuOCdaV17pYFpzKce2ktX9ey7Fj
         ifuhMs5nYiufmTlQ9P2WkwC41ZYggY6irGAZkV/h4hKNlSS5G8+x25ad5+fOjkIB/ndB
         31pJ7amtbpZNElfW6F7mKpwQESZsX88y+z/SXxCTGq4aWolvbqJj3FVZjUGhtk31JYqh
         75Ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532R9ilczINP0ZcWaHS3zUxli98UdeB7EGcLeesnHz2kqMLkphG7
	g9JDVa9iXjCEXeNoxeW8Eak=
X-Google-Smtp-Source: ABdhPJx85a6CChh9vuQEMC3B8vP2Yto9f6dAoDmv97z8iRUu1/Z1quAthTA6Q1oCHUhC7SDwKoLd6w==
X-Received: by 2002:a17:90a:f007:: with SMTP id bt7mr6667321pjb.181.1629618691051;
        Sun, 22 Aug 2021 00:51:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:149:: with SMTP id z9ls6948375pje.2.gmail; Sun, 22
 Aug 2021 00:51:30 -0700 (PDT)
X-Received: by 2002:a17:902:aa89:b029:12c:17dc:43b0 with SMTP id d9-20020a170902aa89b029012c17dc43b0mr23237434plr.81.1629618690383;
        Sun, 22 Aug 2021 00:51:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629618690; cv=none;
        d=google.com; s=arc-20160816;
        b=Z4Y9l8xDC72Wp4Z0GqcgF8VEAdHcn7zN1vXweCnhLgwjvnmNJ9qqZ+m+z7BekStQQN
         rlefbubGfbXLege5mLJgflszTAKtgKFWbp77LssqB5JlJ7AvknPapoziAnNHZ0BFeNsq
         a/veQWuxyrY6fjdi5SxhEaRLwIvzWdKhXeWcJSMcZ9KuOeuR+7kw1DwA7gnN58XRl/P8
         GlhfrtFilNYSs/9OSXBwOpo0zZGLGsZaVVz/qno4mlMTTpOaeGFIYP5nDKGtHbKHHB9B
         sTg3wlSey67b5Xhr891UQmeJT20mvySc+dkUPo2VJvNNSpQyJUf50yc0uzx5ayBZ77Cx
         PRag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EgOg6z4ir95Zy10fHRjoUwnI8LbWbKa5Pjct0WSqQUs=;
        b=gKSIQrUGwsWTk5RNzfHP+WCvyYBnuc8QvnEB7UPdo0SJiU3zQKEM9FfrAu/By0urpG
         YV4x7AJxHlDckuTrerccrid4joqbSEIhdcurVwQOux3+ucdrHupKe3qb1j87ya/uZaid
         g425mDf37Fhsf+Mv94oIcUfr+r9EodpNII1SGrxL0TuEjxIot2NQLP7vwZhTgdfNA93/
         2swZ7lBaWQpMolB4Hq+kejAkF2eDskKPWGL2lshhWG8UZWPGL5Z9Bqhi0iV9Gr3EFQrD
         qT5B0eivZhzYm7u91vXTJz/QAhCtkElNxHOQjQxBryXlypQNQ7QxjAMtWPIGfwzCAGYj
         ya+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=X1EMayCs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id nv15si55953pjb.2.2021.08.22.00.51.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:51:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id m26so12585269pff.3
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:51:30 -0700 (PDT)
X-Received: by 2002:a63:2242:: with SMTP id t2mr25957753pgm.111.1629618690175;
        Sun, 22 Aug 2021 00:51:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e3sm12311603pfi.189.2021.08.22.00.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:51:29 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Michael Chan <michael.chan@broadcom.com>,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 06/25] bnxt_en: Use struct_group_attr() for memcpy() region
Date: Sun, 22 Aug 2021 00:51:03 -0700
Message-Id: <20210822075122.864511-7-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2644; h=from:subject; bh=2rfmjsXHCFfyDOdRvlFf8r1FgJW3UMhnCJ1YAXz54ew=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH1vwTutLxawm3vMmILurmAXksF5urmT0OkpQYc fUQkmMeJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB9QAKCRCJcvTf3G3AJgdEEA CqtV3IuBw5t9VSjAEmApP1pCjuuqD8Tv7dsbR6DE5lEGzlIBCFWcqPdSSwSr4L1MvpNuLbQjYDpL5Z Egsyufnt6YK2ulVD7b+zVP4jNuFWs9G5PzbEjtpf1V/GuVz3rwrPyn709rtFvD1ywQg2UDqypJ0aBO A9vtGQH9TSTOIyP1sgR5Ka/IAGcX7FKzwz7MwUtKjJZMA3+XIyvIBd6zZTHRgHD7F44+jqz6/cGaQY mj+w91SIUb4kFe/uyPb1YJFU/tqJSdAc7/tidGhmtbYWe4NgFAw6lYWDckMHdqJxeqfFYM7vl4+fEe sX2ABDZPMTKsmxPny9Q0e2ElMyFFfoHabff3BacYDb68B3yQSSeFy15EGeOlrmLacPIp6o58dOAPJF Ev9s+kkhDeT0+F75F1Mv9eFy49FSWl9LFUfeHuCr0ZESZjOvnkiLc9WVeFZCfXUMtzjZvUL4mbkIsA KqWIrFyr0Y3xgIDLxUmIJuoCVrGFrLydeZ4wvaG/EtxOyIvsNip5nOvQp8VRY2YZaGTYmFEYh/HB4u PU2C50Yh/4qH0WCCimOlVwHUAaewAJlqXRVMX7U0POtwFWLOEuEEK4QExxp0Hg6xL62zLtmLZ+4vWa U22onqiS4WB8wBQTqV/U8pFTTI0ntm6ZbNqXkXeR2VqEeV6mBfDHiq7gPf+w==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=X1EMayCs;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432
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
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Use struct_group() around members queue_id, min_bw, max_bw, tsa, pri_lvl,
and bw_weight so they can be referenced together. This will allow memcpy()
and sizeof() to more easily reason about sizes, improve readability,
and avoid future warnings about writing beyond the end of queue_id.

"pahole" shows no size nor member offset changes to struct bnxt_cos2bw_cfg.
"objdump -d" shows no meaningful object code changes (i.e. only source
line number induced differences and optimizations).

Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Michael Chan <michael.chan@broadcom.com>
Link: https://lore.kernel.org/lkml/CACKFLinDc6Y+P8eZ=450yA1nMC7swTURLtcdyiNR=9J6dfFyBg@mail.gmail.com
Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Link: https://lore.kernel.org/lkml/20210728044517.GE35706@embeddedor
---
 drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c |  4 ++--
 drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h | 14 ++++++++------
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c
index 8e90224c43a2..2ddebbfc9cc9 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c
@@ -148,10 +148,10 @@ static int bnxt_hwrm_queue_cos2bw_qcfg(struct bnxt *bp, struct ieee_ets *ets)
 	}
 
 	data = &resp->queue_id0 + offsetof(struct bnxt_cos2bw_cfg, queue_id);
-	for (i = 0; i < bp->max_tc; i++, data += sizeof(cos2bw) - 4) {
+	for (i = 0; i < bp->max_tc; i++, data += sizeof(cos2bw.cfg)) {
 		int tc;
 
-		memcpy(&cos2bw.queue_id, data, sizeof(cos2bw) - 4);
+		memcpy(&cos2bw.cfg, data, sizeof(cos2bw.cfg));
 		if (i == 0)
 			cos2bw.queue_id = resp->queue_id0;
 
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h b/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h
index 6eed231de565..716742522161 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h
@@ -23,13 +23,15 @@ struct bnxt_dcb {
 
 struct bnxt_cos2bw_cfg {
 	u8			pad[3];
-	u8			queue_id;
-	__le32			min_bw;
-	__le32			max_bw;
+	struct_group_attr(cfg, __packed,
+		u8		queue_id;
+		__le32		min_bw;
+		__le32		max_bw;
 #define BW_VALUE_UNIT_PERCENT1_100		(0x1UL << 29)
-	u8			tsa;
-	u8			pri_lvl;
-	u8			bw_weight;
+		u8		tsa;
+		u8		pri_lvl;
+		u8		bw_weight;
+	);
 	u8			unused;
 };
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-7-keescook%40chromium.org.
