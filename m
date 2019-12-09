Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCM2XPXQKGQEELLXJ3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAA6117970
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 23:39:06 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id a17sf8689565pjs.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 14:39:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575931145; cv=pass;
        d=google.com; s=arc-20160816;
        b=iQHs7Fuk3CQg+TZ8hgntvX4pSMEh2bxveN/5qpNFyIS7EBplT7Sth8ZLcP0VDS0a7O
         1etDEIx4h9YJAll9A1nPHF5muoMpe+ZIb6VEbmXwGq3C+7RZeDh+pZVTXpTzvjmbXiI/
         ofonh4bzokb1M2qHbWnMVl4/g6xvXPodqrWUeA9sc/jLL6I6FwwB/HuY5sPNzKp/FyCN
         NiV0EF9/4xD8EPGD0wGsLf42w3NC7mv/qmBLiwAH7jIUswH6jg0KTe63yE9ZQuvzWvp7
         ag0zq/VBQgOgqncsdpqveUj+N0RjbKDTUgXKzuZx8lvnZREMAOTcdF9f2s38M0FtWZ6+
         mcpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=yVw8+b3cGEKUmEerCISDRBCGmG55Us8KT2J485Fks0o=;
        b=jIH2jrjpyON0x8zX2oFmg4zQL/2oKQtZLnrsODem1WXCEw8TWp6Wdm6GNlLz/DDGqG
         xBOX7n2U07dmXTcoHX217iKUHt5t1Mzt53b7Wmf6B677mSp64Y8cC4tWJdV59xhYUCcG
         /ocF9eiZXuxyoL7VnwUzt5spscX3ObMhC/dva+Tx10cJGad0NvK318IxJJx/RyNO40Xp
         C6tWWwNg3t/Yom6WOlgz0/6u1fIkPz1XuNVKUxTJttXTnsSPhghSfaOKrUN7dtOmg+5A
         B319OeBXRih65iQ8ryBoVv5JpKV44Sk4amvs+EZMTxcgVTcHdwS8JzZCmnmT3V7msvll
         k0Ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a8YU+qS+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yVw8+b3cGEKUmEerCISDRBCGmG55Us8KT2J485Fks0o=;
        b=kxlnd7yRlEPIsm7bg/10vMlFFYks/KTfMV8FBoO1q7e9kOZZUND3H6T+v14x1r29tz
         yytW6s+ACb4Q84vWKlokPXxCgtw6XBrfkL3+qASpEhc2Ltlg1W1e3iTnxWBbH42wX65x
         7zjiqkG6l0Rj626YQZcG0C0ST6SIOVTvNbLZYwGhrknco7zlVhuE9dHDJTNTIJdciRdB
         DOuCpudbyN4f6MIlRX2Q3nJBcfIFkdrzUvkt4sCoS+L8K2LGheyNP1x0hjIHDPHrUldp
         pUBpPW//H6ITG8GwaXhSiC24uiOOacqkqVqbCaPQYTD9MCjtwJFu5kXPbKKeiXEzG+Tp
         0uuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yVw8+b3cGEKUmEerCISDRBCGmG55Us8KT2J485Fks0o=;
        b=WQCd6n8W+LJftCXmPiDftgHhyxwDAw0m/7y5FHpgq4dEfQJ2/3rXzkgAflFr9cBPbq
         Su3wgsFOlELrTI+tl/cvC+dxRBCJWsSm1AtRyk4zZlh6xt1sM7o//8AHmzykHcj0pqPU
         aEjSDd8lH1r1dR/kMzHBpVEXvCnaNGMTMxOHLuYNna8xrJRyQzvQNY2H3ZYSzK+2xLqR
         y/nBzCADl1TQR9Eu7VzoVPKpjB+AK09LamhGW3n3vCPSgb2dsGPJcE+ciTOv7yG+r0oW
         PLF3MLU1S+2rB8tYmFeiT4W9D5jmTKOLcSpIf2RsChOMcVU3KQ0prvFlXyg73hz3+iV6
         Qlug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yVw8+b3cGEKUmEerCISDRBCGmG55Us8KT2J485Fks0o=;
        b=dUQkKIFDonFF/QX+WrnXui1Zl0/TsMDzt0odUZ0KF8dG10KJZNlUT5ei7VenL0Z8WO
         9cdWi45dUAXc7ZX10U0WD0mkIGtA1fQRbS6ktzJ8WYITzaX+bTKPMc0stgYVo2CLxKtZ
         srRLq7LMzXM2QUTGeyxGHXE+KlqOvCGzV8pBFJpAumLqeX7w4rRpZ5NzYkBex6DQdEUX
         Vst6z3UEOEmqTUcSWXbqY6XIGAP1lbuaf/EG07O893k7/Hj3JhKVq71a9HfBmkTN2GBK
         bE1HivIrbucEt+n8d46PUJz3nFSdCOjsrhsq94p/wktYZQGKeJx5c0MwQ9IEz6hjM6pE
         AqRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU6I1X0oKuodCIcjtBVd1uGEISDw1tkDVYdOxjRi4oWn210IZyr
	dt7N3tWvaN2YzH4DUVQJMgg=
X-Google-Smtp-Source: APXvYqzhX4Kfw7+34xyF84sclo5pRbpooZUpBf1CFIl2ZxZ8UR7/Rp7QevP4X8BRGRAERMm0fwUQcg==
X-Received: by 2002:a17:902:bc8b:: with SMTP id bb11mr19881035plb.52.1575931145461;
        Mon, 09 Dec 2019 14:39:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:9142:: with SMTP id l63ls2997994pge.6.gmail; Mon, 09 Dec
 2019 14:39:05 -0800 (PST)
X-Received: by 2002:a62:4d87:: with SMTP id a129mr21507391pfb.116.1575931145020;
        Mon, 09 Dec 2019 14:39:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575931145; cv=none;
        d=google.com; s=arc-20160816;
        b=ZgWT5/kGKt+Cf+9yFz4iYqqjaWVMfVNYtDk4izVDtX2zdKdVep9h3g9+qp0QQJRFbO
         0ENObgRRF0yKWunlREBtF5WbalNdfXktA+C4py80hhtOV+eflxPAWrCFuregmnriIDQX
         cO6AyRpBhGDMvvqF9GQzS2Kg0helXgOYj5N4Bs50BSrlg/u+9+Cf7lKmvr4dGbp8AmjH
         Ds6QnxOFVvBdNBPN4LceqkBJ3OJZlyq7I+/R0s1HIm66CsEqimiGsBH2TTYT3YJP8k/X
         wsMb5EztO5WyPvlkZFAV4d01iORr8r9NKrtJhuhCs4pmSmJ1qbZF0Pv3CbNhslIbZmwy
         8Mog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Vck/uz8o9EPjsxRkE6GQtWk8nbm1J4z1jJPNcEvOqWg=;
        b=WxQgiNkMWRCDEBifigphBL4j9fPUuyjX6mvRC9ztOZ0Qj1fESe0coUx5la+n7IybeZ
         7V+dvcNe6Op6EuWjxGvHzjAGiQcRD7rLd6qK97pYsrTK6FBUkLQv8/NRJsbKbZ2d+USg
         D5kfpkQfzRWnoI622/7skacz8954rPGV4n8UyYfP0JnXqtlBtDfDSA8rMgAItx2N0zX2
         qiztTKJcnuh4kudDk1/rU0fbm1yuJmGlfNb6U2p0Qfz2K0F0D4FLPUsgGItM3xR/yM+O
         l8QLnyhgC6hk70BZRSeEfuqjK+L142RmWmUzXfUvWx0yrakJmqp1jr+GzILVPgW8vL1z
         s+rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a8YU+qS+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id h18si60962plr.4.2019.12.09.14.39.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 14:39:05 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id o9so13765295ote.2
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 14:39:04 -0800 (PST)
X-Received: by 2002:a9d:68ca:: with SMTP id i10mr22651207oto.178.1575931144149;
        Mon, 09 Dec 2019 14:39:04 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id w8sm504104ote.80.2019.12.09.14.39.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2019 14:39:03 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Paul Mackerras <paulus@samba.org>,
	"David S. Miller" <davem@davemloft.net>
Cc: linux-ppp@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] ppp: Adjust indentation into ppp_async_input
Date: Mon,  9 Dec 2019 15:38:59 -0700
Message-Id: <20191209223859.19013-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=a8YU+qS+;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../drivers/net/ppp/ppp_async.c:877:6: warning: misleading indentation;
statement is not part of the previous 'if' [-Wmisleading-indentation]
                                ap->rpkt = skb;
                                ^
../drivers/net/ppp/ppp_async.c:875:5: note: previous statement is here
                                if (!skb)
                                ^
1 warning generated.

This warning occurs because there is a space before the tab on this
line. Clean up this entire block's indentation so that it is consistent
with the Linux kernel coding style and clang no longer warns.

Fixes: 6722e78c9005 ("[PPP]: handle misaligned accesses")
Link: https://github.com/ClangBuiltLinux/linux/issues/800
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/net/ppp/ppp_async.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ppp/ppp_async.c b/drivers/net/ppp/ppp_async.c
index a7b9cf3269bf..29a0917a81e6 100644
--- a/drivers/net/ppp/ppp_async.c
+++ b/drivers/net/ppp/ppp_async.c
@@ -874,15 +874,15 @@ ppp_async_input(struct asyncppp *ap, const unsigned char *buf,
 				skb = dev_alloc_skb(ap->mru + PPP_HDRLEN + 2);
 				if (!skb)
 					goto nomem;
- 				ap->rpkt = skb;
- 			}
- 			if (skb->len == 0) {
- 				/* Try to get the payload 4-byte aligned.
- 				 * This should match the
- 				 * PPP_ALLSTATIONS/PPP_UI/compressed tests in
- 				 * process_input_packet, but we do not have
- 				 * enough chars here to test buf[1] and buf[2].
- 				 */
+				ap->rpkt = skb;
+			}
+			if (skb->len == 0) {
+				/* Try to get the payload 4-byte aligned.
+				 * This should match the
+				 * PPP_ALLSTATIONS/PPP_UI/compressed tests in
+				 * process_input_packet, but we do not have
+				 * enough chars here to test buf[1] and buf[2].
+				 */
 				if (buf[0] != PPP_ALLSTATIONS)
 					skb_reserve(skb, 2 + (buf[0] & 1));
 			}
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209223859.19013-1-natechancellor%40gmail.com.
