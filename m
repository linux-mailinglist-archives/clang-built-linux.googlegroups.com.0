Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBQEZWLUQKGQER7EDGAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id D8557690CF
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:25:05 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id l2sf2583982ybl.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:25:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563200705; cv=pass;
        d=google.com; s=arc-20160816;
        b=e/x5ucVl/3e7tOTkP4D/f6GN9RUw3C1g0kfqRt/T9jF6SSH362F5PnL1hl3NV5MnYd
         w7+OsEaYVvNz9i7XwP+bNk3O0yI12+/vPkrOUVzSOFrQEjVjnd9EvF+uRmb8nQFFn1kr
         sFl54tedCG+uyFun29sbibqVbknZDkC3n9xpnXN7AQ70YZFLEeVVXktnO1tOtOCEdcbG
         xH6NdJ5mo4nmf4SPvi0mr5IigtyX4HlbUxieggHmhUHVOQybMosY7fFm2eDnHZOzAuCB
         Yu8PaBSVNnhYWSSrWBYtLon8rXNpF3C1XgHMLXFwJMTCIwt3rGjtHZwFSJGQioNQiQdH
         lu3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=jArZIHvvI9d+kwLs4yb2mjH417QLo7cx0TqTSI9rDiM=;
        b=rCNYfKQCJy+MCgIK9YSVq2jXhBsOBWx/istogVY9pf9zl7zY8nzR9vm7tNOY9KCjN5
         q/6myOyhkzaSgTsS4SSRrf9qe3Gq8+NafY0gS8NqxC815iSMT3lRMrLjwcoElGysKH4j
         fsUB/0LBdZc+DM1LCCj+loXRZL7j2t2Fth9UP9fpT1ug+onNC12pb671EYevXw3s0gFZ
         DHHKJABKRI3Xdzoppdz/I8XrXT9aUURFP6tMPLauVrhIvxOeDxBGfiHthEtvx6YRixRH
         0vkIpgTE2GeRYipQ0fqCQxj9TWvgUVj6EuO1TCBzjUfuhcb5Xhh3ME8FpWHyItpwzD+1
         eQ6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GfFJOCAV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jArZIHvvI9d+kwLs4yb2mjH417QLo7cx0TqTSI9rDiM=;
        b=sLCd18S8j6Q1A/9vm+8foJGwB4JfhGXDXUZVSYD0WTSONX1Cqm8UExJ6yXej41ola8
         Qp/+oel4n0rM9ecdET2jPRaO5plbGp71DUonuTPpqEmd8YSPFZvw/PPwQlCVTMiS841X
         CJzJJ6+30Os7hcnDQKC/Upgp6NFU3+KXlox5Zk7aqeXJ9HoG4vlTPzzzhaNHaCKdDg+U
         O9wIbANUEHcdNoRj86EBc6UIvZai7fUJlRgeGpe6NQG8PorpV4Ihgb3AjX8y8syl3NdN
         NYnkT4+oCo4Ld6sFR5HwK6X7PLfbR5PTaawjWB8xUHgkgu7k6fy9mbPu4xKKHTuXvnZi
         ZyUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jArZIHvvI9d+kwLs4yb2mjH417QLo7cx0TqTSI9rDiM=;
        b=Hk6ENZh0KQnvBuo5YLYfrai8LPuS+5oovONOFxXT4Jp+6jvJmBPf7vpGDTr3j/1Jq0
         Wy3UaOhXq4DSlFTC9VIh2NS2WSQDb0CQUHUkwuEqAsd+cTQfYwjCyMuOsCSBeyiOeJJh
         lGJYnDOZuy3tdJBaeVzA0twVorQRW5iRH6p6o20JSV363kXUcCIPdDdXzIjD7Q69LZ9i
         rvbvHZyTa9cYqJlWLqow8Sg5MD4F83dyHBA++YhJSxAeJZn7sviExx3j32dt7JhZgRoD
         Y47a9LnVSZU+vL/KZqktvMeaaHHDzDIgVDV2cT6L6N3rWYaFvAH9mdLh+6nTb5sfUNgB
         bkgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDgQ+/+BgzHluQouaKx8dg63FZxaech8eErQ903w2ZVEEBfQ8U
	Xxf/jUsZ03vBziboB790koU=
X-Google-Smtp-Source: APXvYqy/La/yRYt+Pra55q71h/uXTcoTld8OSyD29ybI8+30cD+yVjRq/3Ht06JEyz38Au3IZip+zw==
X-Received: by 2002:a25:8108:: with SMTP id o8mr16160296ybk.281.1563200704982;
        Mon, 15 Jul 2019 07:25:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:8544:: with SMTP id v65ls2235174ywf.16.gmail; Mon, 15
 Jul 2019 07:25:04 -0700 (PDT)
X-Received: by 2002:a81:9b8e:: with SMTP id s136mr17025322ywg.114.1563200704653;
        Mon, 15 Jul 2019 07:25:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563200704; cv=none;
        d=google.com; s=arc-20160816;
        b=WwajSIpURBoHFlhIdcoTL7BICmAF0CLi3xUEpeRXoiTGfcehFyEYRvdn01fDqxtRhC
         f9ha1TxGyyn/6BvF1kfFrKk/TCdo9uU6HiNobJH85oz9+/VR0T5PgRXiX68ZDULzuCM9
         3vj03OlGQHm91ehY2Hp/NXD5A9QgekcIZS4uxVBTq8qs1sTekZmdKFUipRQNavsmMzDh
         7yttcXL0u12miL7Q2RbaxRQOuJYBqzvuPjOm3mdTIsyV51BdtLtdC2a/0PJyLWEAQ5xL
         HLulvDMGWW17w7reO4t8xw/v2T0uf7Ed6tWAszTKBvK35tnQyqh/aMBUwT23/DiUVUdj
         E8Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=A7bWxzgmVNgUzCCXKa7hjtyJFsz26w/elm7w0MzsxCY=;
        b=FQEQ+9qOkoqDRsPl/BZV1L4sbRDcwgpCYBEzy15BZ7gbdLjqxmIljUpz4OOfZAmDL0
         tZZgTGWaw1Giq9y+TYu28xOxAmmh+MjhVsTtD3oAc+yODxWyf6Rza3Mfa2/nOgtd0prW
         acz6hx5jWvuIgM7YOkEdpeNBsmSN0OH0t2nBfHLLBuuAlTdCxP+m0+Glplz1R5VnwRLf
         t8rDI9JSHOjL/iWn/Zea3v/66+YcJGQvAAMJ9hgMdVPJHcX5BvPSEbNeKcLkWHKWd2fM
         UJIfWpMV0X9tTeOi8vNCUSAL2oNxwCewOou5VZLwGEE4raHLO5mzWhZaYI5w4bRjaFCb
         mSig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GfFJOCAV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z4si741270ybg.2.2019.07.15.07.25.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:25:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C0BF9206B8;
	Mon, 15 Jul 2019 14:24:54 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jonathan Lemon <jonathan.lemon@gmail.com>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
	Song Liu <songliubraving@fb.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	xdp-newbies@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 114/158] xsk: Properly terminate assignment in xskq_produce_flush_desc
Date: Mon, 15 Jul 2019 10:17:25 -0400
Message-Id: <20190715141809.8445-114-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715141809.8445-1-sashal@kernel.org>
References: <20190715141809.8445-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GfFJOCAV;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit f7019b7b0ad14bde732b8953161994edfc384953 ]

Clang warns:

In file included from net/xdp/xsk_queue.c:10:
net/xdp/xsk_queue.h:292:2: warning: expression result unused
[-Wunused-value]
        WRITE_ONCE(q->ring->producer, q->prod_tail);
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/compiler.h:284:6: note: expanded from macro 'WRITE_ONCE'
        __u.__val;                                      \
        ~~~ ^~~~~
1 warning generated.

The q->prod_tail assignment has a comma at the end, not a semi-colon.
Fix that so clang no longer warns and everything works as expected.

Fixes: c497176cb2e4 ("xsk: add Rx receive functions and poll support")
Link: https://github.com/ClangBuiltLinux/linux/issues/544
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
Acked-by: Bj=C3=B6rn T=C3=B6pel <bjorn.topel@intel.com>
Acked-by: Song Liu <songliubraving@fb.com>
Signed-off-by: Daniel Borkmann <daniel@iogearbox.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/xdp/xsk_queue.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/xdp/xsk_queue.h b/net/xdp/xsk_queue.h
index 8a64b150be54..fe96c0d039f2 100644
--- a/net/xdp/xsk_queue.h
+++ b/net/xdp/xsk_queue.h
@@ -239,7 +239,7 @@ static inline void xskq_produce_flush_desc(struct xsk_q=
ueue *q)
 	/* Order producer and data */
 	smp_wmb();
=20
-	q->prod_tail =3D q->prod_head,
+	q->prod_tail =3D q->prod_head;
 	WRITE_ONCE(q->ring->producer, q->prod_tail);
 }
=20
--=20
2.20.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190715141809.8445-114-sashal%40kernel.org.
