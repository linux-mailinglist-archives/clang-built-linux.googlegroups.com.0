Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSUGRCEQMGQECTIVW5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 142933F3E7A
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:56:59 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id b13-20020a92dccd0000b0290223ea53d878sf7966056ilr.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:56:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629619018; cv=pass;
        d=google.com; s=arc-20160816;
        b=Oi1WKOJRdSq2mBxqbOJlKsC6vaIWjO1TwJeujZpOcYJJKn1wGGBN36uc6Zcx82Ifdr
         suqcTvRcrgUx/ZDEU9ZveWqr9ai/3zxiBBJZ/G8KfmJBKztMZ0gfahUjFGyLDvBWpZQF
         4uPK1e31/GdGd5X4l34Duz4+/HGMVzSfgUDjy3VnKbHqgaRgjYCh+O87l0/37BGegXcf
         XtMrM5/YpdaZr2LiCX0DYm1TqaA5EVEEz87HCWNTAbbd56l5maQ5eGoNJ4iGHQzhI++0
         Zjeh9/Wb8Q2eBTnlb1GYR3wkh4ixi59rQxiU8ERxyri3FOLw2f2l64I8EocUulFmYRej
         xg1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wM0n57h7UeSFKcTUqBufFeb3oVDPHw04ju31rCaHKmw=;
        b=OV61pW8l+Z5Cflo7IyDWgk74IdLPnvxsy+/q2FynjBUEJDn/gB3Iwl/980jBlOsIVA
         vO+Hi5N+Njq1Pgb8YZJErsx8TNM1+3Jkte+A3/fM2nl7jKrj18k2KIzjc0ac0aBL9lIb
         famkBDn0zhZG+WdwlRvFoZwAYANJl+RcjZFLjKXKRIKHA5Z5E0gRHh3UK3AKncSUtpxP
         mjB67twID7HJE5cYjfJLNhjc7uv8Q95iNszDohcNwNjwnQ1MQ5iAQHCq1C4XvFvZgKUM
         bcEGf7uEmSNd+ZFK5psPXyjGcrL4Yv+kJsSkAiP8a7ZMOKXsmNgsTMhVAi6oMN50Ittp
         kPrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GtqbJu9G;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wM0n57h7UeSFKcTUqBufFeb3oVDPHw04ju31rCaHKmw=;
        b=L6Ru7NtwPHRATLMOnwX5a+HpVrq8F8uBjq4oTxo/1vYu2gX4aJgT929h5T66zDt4Y+
         0uSBwgYdH4VOs7vbJp5IPTHpd86eoHKWad5o520i2FQ/QkOEFQhXuz/XI1gm9cl+yCiY
         EPzdby0C01BHP9tTT3UgfdHrFPvTH/ScIVXR6osxlJMyW7Tqn0yrMhMs7bTlEq5oAr6O
         yRhONteNBXkatY9sw+npMu8zzIgJePhCBaaEppPDY3oZIlODXFg+N1AlhRQw2gG7WDLS
         itp3M5067UsIw6mH0HPFqi40F9NUTC6Qxa2Kk0+5ltUtl+0EFV2oVx3cAXRGupf15wJY
         uqYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wM0n57h7UeSFKcTUqBufFeb3oVDPHw04ju31rCaHKmw=;
        b=Y8rFnyM0RF3jZFpdIEgvYvlrjas9y1UlVB9LevgnMLxGx5d88tO70UALFf6xlUr9+I
         PTs8Bkw4VKZPN5SdGbko8MgFC2dpLjOKeRDyu9CCMQikLxLCheR6dIm9noX3cXr3uhmk
         IS4+MTxm/czphl3ZszefsbfgIlpXXTi1dW6WdoWqcq0e+rX5HDGrunMGXm1OqVylSnpF
         WArg0UtJVMrd0DwAWQEk0maGrp3cMAqilSQj4rxnob/xotFfhG06sWv1QA9JGkN4ouwk
         dyMO9ZirD/pGGI4KIA/QVGr+IiWJP0/e1BTb9a1VhTIIh6Y1Ise5OcWlYvHvy7tiYJjM
         bTYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531iU0GHLiQdlaZM/WTIOX2414Vwc5OGLIJvxlDEaMUoOVTAB8Y8
	1AodBisZUy4fPU9LAuAtkxs=
X-Google-Smtp-Source: ABdhPJw5d3Wxkfej1K7DyPd08Yry8VT9l4oei3W2W24R80g6riyO4sigYXik/Ww9g0DBCVGWW8sqyw==
X-Received: by 2002:a02:b88d:: with SMTP id p13mr24580571jam.104.1629619018109;
        Sun, 22 Aug 2021 00:56:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c789:: with SMTP id c9ls2710339ilk.9.gmail; Sun, 22 Aug
 2021 00:56:57 -0700 (PDT)
X-Received: by 2002:a92:d211:: with SMTP id y17mr19481357ily.93.1629619017834;
        Sun, 22 Aug 2021 00:56:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629619017; cv=none;
        d=google.com; s=arc-20160816;
        b=gqix+wh8tOjV/c3wx3Iq/2DifMRSrR1MZEbdUVoLunLJhRQ/L/0IHQ88s5iCQ7FVDJ
         b3QxdSCxVvfVNa2ic1FETPPWzrRqSdaDB14KZkXiEfDkPsDGyo70UHWkZb/RYkcK3C7l
         hYX8XAk3suXJscTrT/Z5uPgKsQpuW2QSVfL2Y9eBpeCl/HJDMBKSHq7pX5KMW/bBlAYZ
         2kgY9gnNfu3IDhUb1Si0qISHEFZeEgs01mK6Y6KO3SsdYAOyQbHy7zI0Px5VgWEFg4HG
         AxMfd7zOSqpltamOG2wlM8m+YnEfumdGNyXym/YvmcASlC8HcKVx5N0AAeON+Dh/M81Y
         NNNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KeRymW7dpjbPF0p3gK+nxzTW84+DhIw7kOz+lQywMZ0=;
        b=jFAJC5I6ZYiARgp1S0O2heehOOap6HktzIhq4z5p44n931bG9tTIpoB1TBEYQW1Ulo
         euxrh8RWyufA5cxD/svftUBBkroZvZa5wUElfph8SdiY8Dy9qfbgHMlYZGwdn+2uxDLE
         Wodfr9ffEH8iUc+yJ4HBrtraL7gEOJaLXAvrE2Ytmb/BIjwiLkhsvn/bEEPSH3qBUpmH
         mh1rauI1wH76djHaxAzZQDehaX3vo74KLtunZbyLU45uZnDUQhPJNhJxKGDxl1B6mdqx
         6StlqfnhnediryXwnu5w3veR6Zw9Qr8MNpUEOnT/CxI4vtdUnk5k7W7xVUuYeIK25xZf
         zyOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GtqbJu9G;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id c81si654465iof.3.2021.08.22.00.56.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:56:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Received: by mail-pl1-x62a.google.com with SMTP id e1so1431637plt.11
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:56:57 -0700 (PDT)
X-Received: by 2002:a17:902:ed8d:b0:132:39c7:2e1b with SMTP id e13-20020a170902ed8d00b0013239c72e1bmr5655204plj.78.1629619017358;
        Sun, 22 Aug 2021 00:56:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e26sm12137313pfj.46.2021.08.22.00.56.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:56:55 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 23/25] xfrm: Use memset_after() to clear padding
Date: Sun, 22 Aug 2021 00:51:20 -0700
Message-Id: <20210822075122.864511-24-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1608; h=from:subject; bh=U7PaWYEfsXfIcToHk3c5jWu69loxq4nonTzrBaorlEM=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH5KReKo4xPiA+igvESV/+YjCKmaMo7h3r3peg5 oUkpUq6JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB+QAKCRCJcvTf3G3AJm2UD/ 98c2p0Ikiqsfy0j09gDXjeb7uKt0hgg7w53Nm+FtEIpYiAbu2CuvI+bHrR+SD7yUMm1+vjr0vc4kcd kZF7jPP29ob7jRgTAFK21qeVCgV4H6OnLOuMGLybTf+p2Z+NTI5pBMwPKdPH1xsMWx+g1eOje4vvFl l0yXN7kbBmP1M+Ra6Ag+4zagN1Ev6Laj3DgeUP/bTFZ8EA7g5kpRr7c+geKPv1VVuyAcVJ+nep0Q/b KYL/q5ggAniSaDOdrr8b2MLWPZ1lrZQEI80Ou6KpNLFSwDdYwFWK250WDmwvSpUPsr5+YPkIapRC89 Jr4Ent2s1dBrTvzGdA/vNUbxWTBYFhYu1+7Ddch+R9FEjI0ePfXW7UhAoXszw1pxzSTd9u2wpyNzW1 i99sojhrSCSWj2+6efx7Ibsm/MPHcA8Ufy5Zd0YX5kjFwE2ZTgoY9FqOuPowQ4nPwXNOhi2ncSuJ49 +FHMc8nTHMmxpRxPcvv01N2GiFUy+iQiXXh9a65TVwmOuxSlOPlYfRUJQ2Gq8nzBOnfzodozrzRVNg mx56HetgdfRArbIMBbUaPP4/eP655rDJIJt9SCjxvLO+flWZkKsMn9hDOno6/nZGQcqqWhoaq1coCe FoDJiZU5nJHDzMdZhRBY57wuh+PEm24MXBWCaRW25xVtt1qVqUQbnw2Vyb0w==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GtqbJu9G;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62a
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

Clear trailing padding bytes using the new helper so that memset()
doesn't get confused about writing "past the end" of the last struct
member. There is no change to the resulting machine code.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 net/xfrm/xfrm_policy.c | 4 +---
 net/xfrm/xfrm_user.c   | 2 +-
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/net/xfrm/xfrm_policy.c b/net/xfrm/xfrm_policy.c
index 827d84255021..a21af241a2bb 100644
--- a/net/xfrm/xfrm_policy.c
+++ b/net/xfrm/xfrm_policy.c
@@ -2494,9 +2494,7 @@ static inline struct xfrm_dst *xfrm_alloc_dst(struct net *net, int family)
 	xdst = dst_alloc(dst_ops, NULL, 1, DST_OBSOLETE_NONE, 0);
 
 	if (likely(xdst)) {
-		struct dst_entry *dst = &xdst->u.dst;
-
-		memset(dst + 1, 0, sizeof(*xdst) - sizeof(*dst));
+		memset_after(xdst, 0, u.dst);
 	} else
 		xdst = ERR_PTR(-ENOBUFS);
 
diff --git a/net/xfrm/xfrm_user.c b/net/xfrm/xfrm_user.c
index b47d613409b7..880d260541c9 100644
--- a/net/xfrm/xfrm_user.c
+++ b/net/xfrm/xfrm_user.c
@@ -2845,7 +2845,7 @@ static int build_expire(struct sk_buff *skb, struct xfrm_state *x, const struct
 	copy_to_user_state(x, &ue->state);
 	ue->hard = (c->data.hard != 0) ? 1 : 0;
 	/* clear the padding bytes */
-	memset(&ue->hard + 1, 0, sizeof(*ue) - offsetofend(typeof(*ue), hard));
+	memset_after(ue, 0, hard);
 
 	err = xfrm_mark_put(skb, &x->mark);
 	if (err)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-24-keescook%40chromium.org.
