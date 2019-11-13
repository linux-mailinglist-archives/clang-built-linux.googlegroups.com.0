Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIOHVXXAKGQEQBYFMEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6846BFA1AF
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 03:00:02 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id 109sf202877otv.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:00:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610401; cv=pass;
        d=google.com; s=arc-20160816;
        b=oYfHk7J0cEIkt+yy88bL7DtdaIqFI1LmwWhW4rE9fhjrwon6WnW00N+lNFSbnHoPSo
         tc0bE0Tg2xAH87CyfnOyZdfs9s6hoxha44OKpvgZTOM68Z97WRX/x5ynW9J7PJ5LAJz9
         RnzBH4BuHJ3I6bPBSi8sYAtJEhoQaaUXRzGOzLAUrQU8uzGCMmSE4Vt1idE6lgBwOsO3
         qkB91GGTKOwQPBRisp4sstBePY68JdaF7kS8fJ8V533C9w0m886ijFHpPTMRtmCT9hNc
         tGdY1A9VVFtQ5Bu0yrChKEDOcXZBegtcxjXAfK62xOB1nRo3l47B8Bgt8MkI0G8/xUtT
         Z+/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TnSwqo2T8IUqy0KJX9qS4TYsUkTZC2zFs5OQvCT724A=;
        b=BcBso5dgeMcsd5C78va4SetKwVgIL9FMSBpmg2UawxTjJdH+1OAF2j2jLRBrQ3N8TK
         WiHBVlNXZMoirjwHFLq2KpwoQ40vEnwCRv+RWnWgi4zVckcU3le2X1Gy/tAVPoC3VvnZ
         UoCrwxo36dt68sThQqlGDHq3TTa+JOeNiQlDqGLlsI72E6cJHYp2jSvv0XHv8L0S84QF
         uJmklNyKJFEX9MSgzOQlhFyOFzCpX8sysq3wSD98qE7wBqQbXHpeSZBTpfaW8iQnvn4y
         33RSPmYXtRbLYykz1bhmzS012/gRaLb95cRY3LH+tei8rEXEcZ/zJMgcwAlDXT5hrBsU
         lGhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=px1X5xru;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TnSwqo2T8IUqy0KJX9qS4TYsUkTZC2zFs5OQvCT724A=;
        b=AJ/Lv9tCxG3uEUG2aXxCLcpQOeTwp+w6hHACfnI4R01QKk+fFmwkng7b+31JfkwK63
         5VtQNdkV0EC0MTd8CoToSJr10zWdihW/ZahS1K3VMomKmNL3qUi2YZ2Iq/jZp0qbB84j
         +eDJh3+bHwhAeLYgQZ0rDJBjjknMMb+j67c10Dw2nhNsQzU9Iifpz2nZxeBU450QfeOw
         lJzWhn4FsN2HZX5NpF3P2RMeZ1Uf8KG8XKBpusQ9niOfG3vrWs5T3o+Vr3DOoxkWFpuC
         x4TWi4sPGn0h3iENETYKebzA4zcRep2uZlaeSZbqLyvVuOnBQ9j1fTCDRcY+B2HGELg3
         0n6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TnSwqo2T8IUqy0KJX9qS4TYsUkTZC2zFs5OQvCT724A=;
        b=eODpkETzST5RHrMF/HSyMFOggnWyRr2FApQZRMZvltz0UXf35OK/5qMOT3P1qnuc9N
         JY0+VnTwTOw0o1Da3SOb3uwKlr64wGOalNsL5wV5opEMDUxRpLYHqbbbdu6BnSa9XRY+
         DVbepQLrXEjYZ4qiTvagHmt5WnzZQ47rNFDUrBo7u4RVz0Q+mJnzAJ1sFRN12cNyrbeu
         7cQAcYytmxYkqE4WWaOqCdBzMqxe/rD1LtaWg9rZ8uHgRk7OP1cs/DXO7/QI6GCdxodI
         H/9wfTqpUEulhsdYuj5/PvKoAdwcWF/KFopMFvdM9z3ZT3l0VA3HygFY6Th12WKXW+1e
         8+tA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVx9sNdTLT2pGc3/p/zBtjaLlHmM7H3FlcExoNMNh3oUs8BmeV9
	wLxDbzZFdBpNGRQ+AOZrRok=
X-Google-Smtp-Source: APXvYqxp0Amk38RM0qAsD9rW1mx4sLbb1TTiLw0ezfHVLQ5e1HrWzZjLz7CUIsF7fUNaKhIfe1S8Og==
X-Received: by 2002:a05:6830:1682:: with SMTP id k2mr494030otr.336.1573610401224;
        Tue, 12 Nov 2019 18:00:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf8f:: with SMTP id f137ls221755oig.8.gmail; Tue, 12 Nov
 2019 18:00:00 -0800 (PST)
X-Received: by 2002:aca:7595:: with SMTP id q143mr562315oic.103.1573610400878;
        Tue, 12 Nov 2019 18:00:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610400; cv=none;
        d=google.com; s=arc-20160816;
        b=0YTQoM69ql3qqkznD5fqNlwvnJjgAGFnbQ8H0MgmqAuTIZt+Lf2qj0xkYYAwcvcz4y
         /5L3klm9ykYLziZfow9NXIvGXA6meC+7y+rO9vjYA9te8QRxaLo8Bkl1mP9AhTkHo6/z
         RuYOeryzmzGh8BmgVK3PfNxa8FKw56WCNHV2Ux3Z56Y5bkNwVI0JWbXHx7zJ1NcW+w3z
         +1Qtgm6WKLqOCAI4hNEo54tATLFsVUJnfb3YkM0ILfTEszB7AoPhRiUhmCnBCnWg5vj5
         nfsaHjZ0k/pJ3VzyGUjCBL1T99Ef6/NWc75LKXzixJahWNsftO1RaMjQ/FRzW99nDGmZ
         6TgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SHswYgakd4cmvmhrHJU76B0qFxA1jD05+R70Da1SU40=;
        b=iQJS49vN1rBp6iXmMHFvf9j9murrdJBeIBlyPS3T7RxJ632yzhED6WIkEdye7NFFDT
         CNF0lKfsuSGU/7ZNJa3T0VjoWMemfEPk8Mb/QHgwiW89BEHrPL5HCiGa8gScsk2GL8oq
         7Dl+dEj1UYPs7kZMQ46r5nqb9Xv5zNQfEeG4SE/iwD+0EJ5bAqlaT3YGc+39i2nsmQd8
         K9MuawhvGCGm9TsgJLWc7Ld+/7QWxtcbYIEok6CKgMk9j3cxDk1Soma2cNkKvDITfmWs
         yF/fBcPkVBsgea+BeOGZQneLUFR50aK9DbOJEXTEMy1gBoPxeYCdwokZ35H4A5tmqGr1
         7Czw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=px1X5xru;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j26si33693otk.0.2019.11.12.18.00.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:00:00 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3D0BA22473;
	Wed, 13 Nov 2019 01:59:59 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 18/68] cxgb4: Use proper enum in IEEE_FAUX_SYNC
Date: Tue, 12 Nov 2019 20:58:42 -0500
Message-Id: <20191113015932.12655-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015932.12655-1-sashal@kernel.org>
References: <20191113015932.12655-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=px1X5xru;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 258b6d141878530ba1f8fc44db683822389de914 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c:390:4: warning: implicit
conversion from enumeration type 'enum cxgb4_dcb_state' to different
enumeration type 'enum cxgb4_dcb_state_input' [-Wenum-conversion]
                        IEEE_FAUX_SYNC(dev, dcb);
                        ^~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h:70:10: note: expanded
from macro 'IEEE_FAUX_SYNC'
                                            CXGB4_DCB_STATE_FW_ALLSYNCED);
                                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~

Use the equivalent value of the expected type to silence Clang while
resulting in no functional change.

CXGB4_DCB_STATE_FW_ALLSYNCED = CXGB4_DCB_INPUT_FW_ALLSYNCED = 3

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h
index ccf24d3dc9824..2c418c405c508 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h
+++ b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.h
@@ -67,7 +67,7 @@
 	do { \
 		if ((__dcb)->dcb_version == FW_PORT_DCB_VER_IEEE) \
 			cxgb4_dcb_state_fsm((__dev), \
-					    CXGB4_DCB_STATE_FW_ALLSYNCED); \
+					    CXGB4_DCB_INPUT_FW_ALLSYNCED); \
 	} while (0)
 
 /* States we can be in for a port's Data Center Bridging.
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015932.12655-18-sashal%40kernel.org.
