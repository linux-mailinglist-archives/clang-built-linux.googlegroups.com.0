Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB5MTWLUQKGQE45PZUOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AD068F34
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:13:10 +0200 (CEST)
Received: by mail-yw1-xc39.google.com with SMTP id d18sf13628083ywb.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:13:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563199989; cv=pass;
        d=google.com; s=arc-20160816;
        b=m6j7L0t89jLB5JSZMqOPLV0Psd3PO08SnKyYXg4G5bCLD1MKRd6Rsg9VhQ3tLP70Wc
         SovQTnroCR3kqwUCb/E6xFHR6RquwES4z/Si6X70ggySfQUzvrZE6Iy0H9o8M8MXOUt7
         2/z/r9AsX5K9JA5CRmF9Qjvd+TeuxJOGI/xhWr9EswiAjKNWzDK+XewAFcrgvpIKLgms
         v2Hk/mKYuY0rJ9mAXkYAFmdvQ0qsujdlhBgf0mXy2Whxbc3XTe/hRKOOOIUA/+uF53OY
         jDWEE4R8OM57HbttglPQXYPWO4hd4Vs78w6a9jSu4FOVgU7K8VpufwUHCtA7mDoJxclw
         aDVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=Pbve7tIEbitUP+le2f/BdJOYC1g/bOyNGYmLgoIFT/I=;
        b=zkdwKXEq29wx2Fx1rpKuuWE6se560L62Xqlu/gXBsK1mW1PvPtyhfU87OxuinHsMgG
         pglU6JhfD9x0eEoHYkiFTliiMA1vanYKPm8yUXC98b6EuJOFoAJhnuyKbPL6Fqs71I2F
         rY3BJ5KodpCtZ82a9IRWH+3qkD6erKL0JwwS4rKu9EZv2YqlQqZJbhzhyasXA7nlNRDk
         8dgW5Qq0PJ7prDEtdVJ9/g2KrweTy5etbTFYu7RWd///UflwCqb1DbbaiKkDmXNVqzOC
         BMaGelQ+kMDNo7znoH3hRU2q4t+3RfYHfMte74nQL2yJw3wXaKYHog56ea9kCqutBbZP
         r+jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NThYHnTO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pbve7tIEbitUP+le2f/BdJOYC1g/bOyNGYmLgoIFT/I=;
        b=r2kJBzGblcgY+ZN1RzHNsfSRx5cF2Rfa4dDSZUT9z6QvLCVnDaSWNdL/d2Bt+8UJxQ
         w7tWUbng3VNcZbB1FQVHD9dDBIK3FEz57E2OJiZA3HSXjjsX6cnuRq0CwMGFocqj7SbD
         o/C0VUqVS9v1qRNkqr+ebkRpHXMzUeRht8bYGu02K6yTnbdJAa9YWNVrdDZtJiVoLPx0
         ibVDJl8PSuPjlgXBGKn47GLJgKUKcmnKU6XQ93PrkEuQh++N/8YIV9JZ65fY7EgKOg3t
         6qDH6qjvxA8UZiLHGMdvZRE4JWU3MDWthum2Ugt/FO1iU6y20AiEKG345MHXT8rHu9Ps
         jR0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Pbve7tIEbitUP+le2f/BdJOYC1g/bOyNGYmLgoIFT/I=;
        b=R9iC6SSjXro8pqa5USgzraU0j4yYbdPYFTB3xIo9uQqo8jNuOXNLvdu67soPMJ3f2J
         WasRFZyb5USUEKY2SD84RhlYMI8SBJ8fgZfzGHA1v9ats0EMMLNFbFYZtaJ2xQe54oIY
         VzXvPr/xBYWhJQBQsPmrUIcq1p9RVvWeO94/audajC0xyBg+HjXyBR5a8gSgLen1zE0q
         8SPV1k/+2fhfqf4Yeqx5wm5G33MY7bJST68LJifq9Pgu2I5/rWv6RN8VwrHzPzgGbwRg
         Z41UXXKEfBRexQXjymIl5I4t8WMagdWBiMBUAMOs2eJp5SKNNnzQgLPvhCUv19eCxX5+
         c6GQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUKDX7gtQU8AT7jbX8//JZ7k0MBTEC2QoWoENKRkaxCBAActpSH
	Q6FnYQN5ozqsyMJ52wSY1Z4=
X-Google-Smtp-Source: APXvYqxFCojXNd8vTUE5YLNMMVFXzu3ir1i75BD/M1YqCwJT2RS5E16YsE6CxN+xoDZqvi2SDeT4tg==
X-Received: by 2002:a81:3803:: with SMTP id f3mr15535349ywa.337.1563199989430;
        Mon, 15 Jul 2019 07:13:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:2393:: with SMTP id j141ls2227957ywj.11.gmail; Mon, 15
 Jul 2019 07:13:09 -0700 (PDT)
X-Received: by 2002:a0d:c941:: with SMTP id l62mr16447656ywd.265.1563199989154;
        Mon, 15 Jul 2019 07:13:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563199989; cv=none;
        d=google.com; s=arc-20160816;
        b=f8vG+hTSTXy+YmxfstsqKOIMIey4YjLYcShHE7lACX34by9YorK+04ogUrWIaBVm0R
         Rj0reeqH+0YmbM51B/F/xR9ql97mVNnLGDr3oJiVSQqePeNy65IFe9xRCxOSgu7S0QdR
         isHm1+4YIV0sJPi3u1mWeXHsIgqe4/LJxEqSl+e1VA4hLyoK/YMx+TOMkMJvCQoq+KF+
         7KPtj2z8t8RAEmWJ7tZvJj1Yyf0SbFFY1Oa5HRKnUAxhndbtPISqvGsNPkRJzVqbsaYo
         xf4pQU9dHicETnz/LqjGNkQTC6Lij9tbFxgMNTyWl8nopR7BGNCyn+nPnmGkmEDN2uPQ
         8z6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6pqMPSnTQD5CnjSMYBupVepJU0uFY7l53zRRFtbRxMI=;
        b=x28CiKxDP1eY0gGZwgDGYVxEtO8VOpVQuyYdMFX0lVl58tF011EVwj8JuwsHIByIew
         SLr1sljSMMs9IK5Lft6hsPPTOtadm2Usw+dZxL/ovPEV8fLQ6Yezp8cDlDtDjKE16nN+
         EmLZflr+4v5snCQlqDh5FOVsFXwF9v0S7lfnQLwPiD2GPgdY/AsM1hO6vJTkKGrx6idd
         kf6FXdy3z0+iLG+pZCYLCnsteEgMMid3aAr+6/L2UIbR1vyn6TIjWrdHCxHt/iehKE7p
         5Ix4xiUOF2jDvLlmxl4ak2sT0SZzhGu0iWx6WO/QK02phEnCeDuGJ+y/g4Fp3zmBhQUM
         mh9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NThYHnTO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r1si1053756ywg.4.2019.07.15.07.13.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:13:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6546A217D8;
	Mon, 15 Jul 2019 14:13:04 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.1 154/219] xsk: Properly terminate assignment in xskq_produce_flush_desc
Date: Mon, 15 Jul 2019 10:02:35 -0400
Message-Id: <20190715140341.6443-154-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715140341.6443-1-sashal@kernel.org>
References: <20190715140341.6443-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=NThYHnTO;       spf=pass
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
index 610c0bdc0c2b..cd333701f4bf 100644
--- a/net/xdp/xsk_queue.h
+++ b/net/xdp/xsk_queue.h
@@ -240,7 +240,7 @@ static inline void xskq_produce_flush_desc(struct xsk_q=
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
clang-built-linux/20190715140341.6443-154-sashal%40kernel.org.
