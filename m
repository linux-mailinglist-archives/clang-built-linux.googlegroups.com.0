Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAHG4D3AKGQEVLZ7BBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 7263B1ED916
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 01:32:17 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id x6sf3390984qts.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 16:32:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591227136; cv=pass;
        d=google.com; s=arc-20160816;
        b=pvfk62yoENCaeZsuHApLPQBdksF507If7WvPSN0csCKDbBp7xnDcGN+9Lvh8LTUrln
         6AkkPj0Rhr1lMHs2PbcRYxksRjqxoqBNeLgsZabgJndA8lut0AdVIcCoV3g+UOxvgSp4
         +IfQcj5CDzR3pNiPvz9EQykwpXG3sTqB6JkTl/PQEE6ceGcjIJd0UiykcINeU6AjqmLp
         nmHA/ugnzPn7Yuzf+HvhKPhoqZsZVD76WsR/pDb0Rud264L8nkujyyRpIF9NbhMQmRcY
         Fiq+pAACFf/JrtDQD8FRcy0MO+sd0hJ8lE1QpP64pi4PpKnldhATD5epMJ8iIt8HJ4ac
         DUnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=p17T5mkBMvAzlwuSAh7ZgGOC09+uS7BWdNaEzk9Of+8=;
        b=bhwO2tI14RnJxSMJAtU3XuHIj3wp2w5MQuGhCXWtSlqqFJaoon9em9dDVdTZgF10Af
         a7MSodDWEncvSE0Bw2bV/c5arYq6gQh23h8yCIxwYQtuE6fuAfFEEZ/mdWz5fpgTnTJU
         Ax3aO8PJ/ydk+/6ZuXy2If0hJClQR/r/Wq8ZiLsb0XRyxYAiZmomeNGXbZa+M73kjsWb
         yvNZkBfjkrnZ5rBF0PXVMX7tmnV+TMTdnH2mhDMAxK0lC8hyp3uchs7/FFDT58weP7TF
         8kIR49PMpqnbb7sm7C1D7Y9Lch9z8eNIjVUBSF51ercMXU+HKl7g9PceM9NwDrGP58Ml
         sqiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VCJ2fVD0;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p17T5mkBMvAzlwuSAh7ZgGOC09+uS7BWdNaEzk9Of+8=;
        b=KajVhxMc1Ffti3i0pYJV7I42eutPV1ksYSmy7aUUtMlAkXLgayUMKPSrYTObDYnOu7
         6USqKcVUqHgBuS8DB1hkvAFglO2JXG62/phen3DDfCvUUtaz10yUW+3Y0YPcLhBllMb7
         u0y0A5vP8lBpmqLzaetITaBoHVpS0NAVc+4FGYaPxNHpbpr03uaHFbgJ3RZ2KZpV3fUp
         v7Cxiqq3CwZsdxmQ882Z0nBpgf+p/OLekqF6bg79ahIwWY7rWbaNPOpL+j4CcvaPQEjo
         NuW6wrStml4NTqYdtlTscPw2hoyHTEHmQuN7HnS9FI7+UfGtIDxBaHPUa7NTUY614QJh
         /StQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p17T5mkBMvAzlwuSAh7ZgGOC09+uS7BWdNaEzk9Of+8=;
        b=NzV5+/vFv5Lii2bu2ItPAJk//2eaIBrXt8bW+9UpYs/nqFr5PW6a1ZfgvwsNCQLC4A
         7DOh+VwOKkwo9s6g5FHxS+wOOc63Jorl8VvsImU/4ShJ4pxhRN3L+SZzNg3rnenKnHsi
         1K7+9Yu8nn8YKkmcuvbxryVC8F1vqGKoJBppvS0l6Msrreb25rHj8BSWDa1BtDmqUnAR
         8tt8IVZOJmG5zUp1LwHo4k6/tH+N6MIM/jDRBQdwCfprPNeU6HXDBo1KcliGCK3Sz/78
         6CCcl/tE8OjF4/DKFPHNpJFh0O7YYrYMTHdQ2NYKX+xbY6MPNEGTcKjeyzT+L9to00uM
         mqsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533k0ODAo44Y1pk/PKik5eXi8FNq5fJnoQ4o667BaGomWo4e/99H
	CTS7esDN+Ut1s9GLmAIHGgc=
X-Google-Smtp-Source: ABdhPJzAVfDscMbvgkiUKFpjMcRXc3GciWw2cJeMAXZu2Wml5A8Pj6md7iGulqTxffHAwMvc93aMkg==
X-Received: by 2002:a37:8e85:: with SMTP id q127mr2231288qkd.105.1591227136345;
        Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9f89:: with SMTP id i131ls1349266qke.3.gmail; Wed, 03
 Jun 2020 16:32:16 -0700 (PDT)
X-Received: by 2002:ae9:ebc5:: with SMTP id b188mr2091780qkg.203.1591227136034;
        Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591227136; cv=none;
        d=google.com; s=arc-20160816;
        b=1Ge+F4L8tTlWNu0WWz7sVVz9vAvbNTx55AsxZ5EBAIw95lqOtqG7E/zwtL17WGZltH
         9eERp34ZR0hVEdsxppQGO87TI1JUO7c1dfTrQqqc2y1/dqnnI/WwvX1KHoe3gRl2AyTa
         +th/JiO13M0UgPfx8xlJC6Pf3yVRFdyY3J1teN0NCr0nJinB7Ht6vJcX0yKCeTWCsGF3
         hj+AbAxkUr0k3LfP/ud3I7qI7BVLjiPVYDtDOyzDo37wkTKSzabgVP2yWjZyVtOXyZfA
         b72mnW99zIfi6/FwtCq0F3dliIxdpnApNrP232E5BeuNHOI06S2FqlKNMU+WWrOhhPNm
         g4Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0cI/V2fP2M6XP0OWA+3cSpTCBqMiFhr0WbfahcOkSkY=;
        b=gdE5+1mAxVanjViL2KyZvEj7Smu66QQjSZ/FlotdPZMdQVb1q510qS3nxo3uqxEwZy
         qYjIVhd4XQKzJVNbUYebUGOzmf4iPlsgs0PxP8oNwMMGYJBWIlzGefxRhHD5DJ2XXqVo
         iwuLsxPL3Q8ExYH/LAlod3ZwFKpuPHw0QfSq/QfloxVqwcR6D42W11HDp2q7vDrPhNU9
         BHokNNHouZqapWTWgP4y+0z5e1aF7KG03epN2x2EBfaUH3CTtMNLhSlWRiMBCLDxbU7U
         ID17WF4aRhTJHzRKlXN7RDIPC3LGYyKZqdwoB7TdwpIdQBIbMnyXdlJQ8e/+/mfW5cYo
         2IRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VCJ2fVD0;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id m1si228983qki.3.2020.06.03.16.32.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 16:32:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id b16so2466731pfi.13
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 16:32:15 -0700 (PDT)
X-Received: by 2002:a65:4488:: with SMTP id l8mr1683466pgq.327.1591227135199;
        Wed, 03 Jun 2020 16:32:15 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x25sm2353911pge.23.2020.06.03.16.32.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 16:32:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>,
	Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	b43-dev@lists.infradead.org,
	netdev@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 02/10] drbd: Remove uninitialized_var() usage
Date: Wed,  3 Jun 2020 16:31:55 -0700
Message-Id: <20200603233203.1695403-3-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200603233203.1695403-1-keescook@chromium.org>
References: <20200603233203.1695403-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VCJ2fVD0;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
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

Using uninitialized_var() is dangerous as it papers over real bugs[1]
(or can in the future), and suppresses unrelated compiler warnings (e.g.
"unused variable"). If the compiler thinks it is uninitialized, either
simply initialize the variable or make compiler changes. As a precursor
to removing[2] this[3] macro[4], just initialize this variable to NULL.

[1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
[2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
[3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
[4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/block/drbd/drbd_state.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/drbd/drbd_state.c b/drivers/block/drbd/drbd_state.c
index eeaa3b49b264..0067d328f0b5 100644
--- a/drivers/block/drbd/drbd_state.c
+++ b/drivers/block/drbd/drbd_state.c
@@ -1604,7 +1604,7 @@ static void broadcast_state_change(struct drbd_state_change *state_change)
 	unsigned int n_device, n_connection, n_peer_device, n_peer_devices;
 	void (*last_func)(struct sk_buff *, unsigned int, void *,
 			  enum drbd_notification_type) = NULL;
-	void *uninitialized_var(last_arg);
+	void *last_arg = NULL;
 
 #define HAS_CHANGED(state) ((state)[OLD] != (state)[NEW])
 #define FINAL_STATE_CHANGE(type) \
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603233203.1695403-3-keescook%40chromium.org.
