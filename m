Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBW46QKEAMGQEVET5O5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 488453D8379
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 00:57:32 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id g3-20020a4ab0430000b02902677ea337a5sf348730oon.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 15:57:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627426651; cv=pass;
        d=google.com; s=arc-20160816;
        b=MFJHA294gPaC8pb/tLYyVPzP/HMsMGb3y+z+PtdXN8cTI57gX7HwcvdvBF1ffT1kke
         kQCbQrZAr3RZB0OmaJRpeBcB9VAMa69RWHlIWI6AnydmeYySAa02fKN8nvdJNfGbGpxQ
         /jB0SuFd/Lknxnz7oGBtL0X2C6zLE4vYLpDO6BwGjxXUfp8D8WaU7Ht54VMyW+oK6KAp
         uTlcNOp+THXPlZ7SFPTMpBjdC1dPq+WWp4ZUzwfiqfclAPOwj9C308RNelHsHJFC06Ot
         YadRCOY+NHdUUE1GywjeqZ2+XZPP3sjTVOG8AdKoi1DMeVzsM4yDU4Yf/bxaJKac+BUq
         91yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=O4Vy0YrWjjRDY9WLCkULCzvldRCAJPhx18pfw+F7XyE=;
        b=JPe9oC0AtAEWuelJ0P+Y5BYsmCL9GGzWTWNZnhX8REcVc2t2Kicw00/KC6drJLkD7P
         6EV438i69qSWni+qilmW0Ox6IxxLf2F+o/o6Gine/eZO1yoOhPrptYTS0cHNUKRkACg3
         ZSYawVLaEVCpLEMUfkFjwcFNd/WPZ4LZNfKzsoD4EbC0Gw2URLo/phwuiUKwuNmSsDnH
         3TOxh7gB8o3rgfI0WSbAhLkB1UDcIyO0Jn7Kj9Zl6YUEPLh1zPmw9w7WxMz6UAUn0UBs
         p3lHkiArza5/qk5X4pMOk1N5+3RvUrUGYSQKriqDDidwspyvdExZSCAAgHFz2Y/1v4rn
         IBvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZoCmfX0T;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O4Vy0YrWjjRDY9WLCkULCzvldRCAJPhx18pfw+F7XyE=;
        b=S3mJXLFlKt/Y/RqplOcZozB3ppo4lauej3iP7+7CHb+hS28NepfBYNsW6tGbTH0QZw
         SSLSDK4bUTyBxkBdwOS+gWLXLfXuOuhLXS5rFKn4/Gf8ply+zo/OEwVlFlRLMogujOYG
         ufO9RZjql6Uqzai5D1O1Jy8axmc0LUrX94jqS+AkBRKjTqBNgc+4nuIlq6blzjsvUjHP
         eD5FT0aNuqLNi+SZx4aVAILMalT9gaJOqbPzWwthvhon1w/wwM7EZm/LeMB+CWMNRMF1
         MmTS0efLLVXwInTkXsnAxwjULIWn5v7E1Oy24ygeX8b9EsG64HcBMJVxB/Mdo/fxZAWH
         4AKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O4Vy0YrWjjRDY9WLCkULCzvldRCAJPhx18pfw+F7XyE=;
        b=fvH5iqmePICjsPLjvZDutUgQ8UY3dKD6xBZMryEtAF+wI9Bm96bO2AewvThjheKgfc
         rmf/KpioXdhQXK672oMeMdL/Apb0RArfi6Kh8KabfiFqhUjM9beGVGZ3FSuKAtC54Kjo
         a5fTjqSQG6kArXjkOw1VyNWJHXn+HCbHZ05CfM6dQ7LrguM9LIqaVfFrzXxJe49xG1tL
         HcMjuQRzLKRC2ToEpHSh0vugN24Nq4UKj6UhjY9C4a9dZdHHMQXgcHxM64SAv/gd7Jyb
         GtHvD6cgAogRShOwf83PDBBeph6Y6TPrdxHtlE2BiuhzVe6NKTweNarwuFdu7Pv9IFwl
         Kokg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530yoYXnVZdLm+qkentRAU4yRGoil8HsI9CNDiOq6BXd6ouIAwOE
	isCow87TuZavQMYv8sbk70I=
X-Google-Smtp-Source: ABdhPJxmkVO5f2JBIu25uMuJziLcui85FJVEp+47jjhw7gtwFAbSgvsKFPZZrWFTIa8miqlVDCAUXw==
X-Received: by 2002:a9d:6750:: with SMTP id w16mr17289208otm.177.1627426651110;
        Tue, 27 Jul 2021 15:57:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c4c9:: with SMTP id u192ls125903oif.7.gmail; Tue, 27 Jul
 2021 15:57:30 -0700 (PDT)
X-Received: by 2002:aca:400a:: with SMTP id n10mr16575619oia.127.1627426650753;
        Tue, 27 Jul 2021 15:57:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627426650; cv=none;
        d=google.com; s=arc-20160816;
        b=topU7+CUkKDTXYcJMqpKogBYLCZYDHvXVIMPLkUCIC6NLgaAU4LK+LrEy/GnfP+M6X
         Qm8DwY1HgWxtoWs97B6TJ/pF+kQxvA9N7p8L1TmkGe8vWH1hDKr65q+PmQTZPMADW71i
         wbAn5T29ps3qNXJ0OHWIpopMXNHcJRfotmRNv7bsgGKTaXGIqexqCFJY8BuCMegy2Za7
         LpU0klB89dklB4DomfztiIRYBylodPT5jdlD8NKXSUyBrlg499uFM+rwZhIhs52jfRZ2
         ICb6xnvMiRl3hiRYpxK4aebZXNCcM1TWU1++vWHElnjr2XvDt+khNSVT6sTog8pN1tmW
         QS+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ti1u/DUr2olUQE+1Ny3+a9N92Z3sQ02wTr9Q9ULeRl0=;
        b=TN6kseo8Hx6jVqrPZozSJk53e5ARv40LJ/jmAizdTXt27SCE3af4AmyDq7bZub+292
         f2MnGYDpimrSm8R+LVRmqyKYxf7DFrNa7OrcX0/bE2OUVxSs8XlX1Q9hGUeXuueHkOlp
         kJvsE/VOrKbjM6/Q34neRh8tL7ncYH5jkgJW32MJalnBAjiiRxlyo9NqIv3X2SHzNRfO
         ZnTUGiWqLsrwxfngeoI+5Z74W/ycbFAIhG7mNOSha6d4KEHr3+AyLv5TyrGtLhMJtN5w
         IF66Z0RQd3Ukm5w0aKB0t1wOFbLTm94aJHkuGYr+meeKKR/1YliXvGSPO444RB5hCizh
         ZEFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZoCmfX0T;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o10si420449oic.3.2021.07.27.15.57.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 15:57:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 59E4560EB2;
	Tue, 27 Jul 2021 22:57:28 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: stable@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	Hoang Le <hoang.h.le@dektech.com.au>,
	Jon Maloy <jon.maloy@ericsson.com>,
	Ying Xue <ying.xue@windriver.com>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH 4.9 2/2] tipc: Fix backport of b77413446408fdd256599daf00d5be72b5f3e7c6
Date: Tue, 27 Jul 2021 15:56:50 -0700
Message-Id: <20210727225650.726875-2-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.264.g75ae10bc75
In-Reply-To: <20210727225650.726875-1-nathan@kernel.org>
References: <20210727225650.726875-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ZoCmfX0T;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

Clang warns:

net/tipc/link.c:896:23: warning: variable 'hdr' is uninitialized when
used here [-Wuninitialized]
        imp = msg_importance(hdr);
                             ^~~
net/tipc/link.c:890:22: note: initialize the variable 'hdr' to silence
this warning
        struct tipc_msg *hdr;
                            ^
                             = NULL
1 warning generated.

The backport of commit b77413446408 ("tipc: fix NULL deref in
tipc_link_xmit()") to 4.9 as commit 310014f572a5 ("tipc: fix NULL deref
in tipc_link_xmit()") added the hdr initialization above the

    if (unlikely(msg_size(hdr) > mtu)) {

like in the upstream commit; however, in 4.9, that check is below imp's
first use because commit 365ad353c256 ("tipc: reduce risk of user
starvation during link congestion") is not present. This results in hdr
being used uninitialized.

Fix this by moving hdr's initialization before imp and after the if
check like the original backport did.

Cc: Hoang Le <hoang.h.le@dektech.com.au>
Cc: Jon Maloy <jon.maloy@ericsson.com>
Cc: Ying Xue <ying.xue@windriver.com>
Fixes: 310014f572a5 ("tipc: fix NULL deref in tipc_link_xmit()")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 net/tipc/link.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/link.c b/net/tipc/link.c
index 06327f78f203..6fc2fa75503d 100644
--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -893,6 +893,7 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 	if (pkt_cnt <= 0)
 		return 0;
 
+	hdr = buf_msg(skb_peek(list));
 	imp = msg_importance(hdr);
 	/* Match msg importance against this and all higher backlog limits: */
 	if (!skb_queue_empty(backlogq)) {
@@ -902,7 +903,6 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
 		}
 	}
 
-	hdr = buf_msg(skb_peek(list));
 	if (unlikely(msg_size(hdr) > mtu)) {
 		skb_queue_purge(list);
 		return -EMSGSIZE;
-- 
2.32.0.264.g75ae10bc75

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727225650.726875-2-nathan%40kernel.org.
