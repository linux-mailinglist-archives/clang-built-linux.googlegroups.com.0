Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVOYVODAMGQEOTZR5LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 574F43AAC59
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 08:31:50 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id z71-20020a63334a0000b029022250d765d3sf3126647pgz.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 23:31:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623911509; cv=pass;
        d=google.com; s=arc-20160816;
        b=qrq1fB6/L+fROrdGr1+fiuydqDhTv1Mo8qXYC6BfdJnp2bi5xOGQqPuQYIxany3n53
         KUe367lxeDOykAwoieN4Eh3h0LrnDs7pL7v0lLX577pfE1sgjJhYyylY19wvPxZmvUDe
         W8lmlhNH2JZ+ysot5TQ7dQtU249mO8qNCFwSyK3Y+zEdjChbaCGdIR3WijVps2etqFj8
         IpMPBxcASC0n1X8u25yREGpnGVboBlI1PK79N7eDhO5Mh4t9HnzqtO+P3a5JnsX24oMS
         wrtMVOZ0doRoE3AYjxKfz+2HDYyUKbKFq4xc0/PIvRiVjYGIvrOV67MtrFWBUEOUVUCP
         qbyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=5DesN2uD8+orRDMXbaWub6/oYF07k+RCaFZVYeA1bc8=;
        b=SWWHT0FSDq6moivbDkJUtNdBlX/dVdMg43SHXwCMyEZiPymkOAc+I7R+a3P2gzJshS
         dnTLlvXsFCZ46aX5w5DP8IsTm6M+c2fPyzMxUBEvx0Y7z4vCjYpbVLzEwXJBnmx9tyIy
         pceqbp1ls4WqSOy2/OTmdMjFxonDykxxcMMyHyVgtt3rbDkcGJc9THPCfhA7D3k74XWU
         lBw74XnKsvTbXzBHqWr7H77NuBYpadw7Af/PpRXX9Xabpl+hnYDs+BpqIbRphRu/XdTO
         pQIb08Qty7luOzdxiU5kMdvCtiDKQZRT51UZFsy0hrIxEF0VcAymlws4VB5c+9abX9DI
         qQNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Jst4nC2b;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5DesN2uD8+orRDMXbaWub6/oYF07k+RCaFZVYeA1bc8=;
        b=PFL5fgBQ7yTEBwK8HMS0ujYLUKnpdYpHJfw3RgNHe5VClJjSvXBsv4tfYKcYpgSEUw
         9keBfLT8D8ykGg+R8iR37haU2oyM0XNQm0gYCoYMeA82vt1KXPBDkg7gV0xe5wULutE0
         hcrhyN+8kYIVSxxMUz9Km4IlMrexfuhrT/eSewEs/CbL2tBpwV+LLlZ5oSAQk/6kpqqZ
         A8J/OwcaVuvEiKg9UErvjswwVyXuTQmFEvfUSu3pM6LkzqvfdtkfQC/9OZjeF8VYAKAt
         mh7aJhZMWXmIpBl00EI6QWHDezqLmTVbt8WTZIQjylE53AgGTAb1KupAj9COP+W9WJTF
         aWmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5DesN2uD8+orRDMXbaWub6/oYF07k+RCaFZVYeA1bc8=;
        b=Hw6BPsTH+xu+FvqU2vbCePx7LQqE72nQfoiFrNHTLZqWxbxinJiJFPACMfE/rYBFZv
         bdrI9jJ5lyY1Lb85HylJySorsKpZzewwqv/6EAVWXJFRrXUddm7PARYtWwlw2KO411Ft
         E3IWeo+eCQllxKMr8xsGqcPUIpnm5nnsab3sZx5PVZ0/StRLKPrgDHWY6jP1ZIG8Dqgz
         kLBwkvE23SG+FRq54HVyISPpAXT6yq2s7BVj9dwgCY9AwcPdn0b6u2Fvv0rX0nfn66zt
         jF+nzt7uHtdqGCewUx4J6PTwGY+1pTI01onYvKmoV8mA+hJE1+Er50/HQBa2AQVV0FJ4
         DGgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HFq7vpcJDta7wZXV5rtiaj4di4B7yNmWDFeqoB1HCClV6ffzH
	5ErlHU232pNa9lQFqV9ZoCw=
X-Google-Smtp-Source: ABdhPJwDtzgSklO1qVU/lnPOFHDPjhQwMaJCespd6QDFCtgdva9+q60qgnQJLsdddfLAgpJoTVIrag==
X-Received: by 2002:a63:5c04:: with SMTP id q4mr3483218pgb.127.1623911509120;
        Wed, 16 Jun 2021 23:31:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4a42:: with SMTP id lb2ls3120259pjb.1.gmail; Wed, 16
 Jun 2021 23:31:48 -0700 (PDT)
X-Received: by 2002:a17:903:102:b029:104:cb79:16d5 with SMTP id y2-20020a1709030102b0290104cb7916d5mr3147913plc.43.1623911508630;
        Wed, 16 Jun 2021 23:31:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623911508; cv=none;
        d=google.com; s=arc-20160816;
        b=LfgNFbb5Ge2wTd0hY0IvbGI8bN5Dn69e3gPHoMOEj/rYM0OGWOCut40FKhWHL7Huz7
         D6ZIvdPXCUrlkYUj8HzZfmszRLQsx9x6MRMZ5dNZt97C1JP5V25fAvJ7Tyy2W/9sbFd5
         9bwvJic5+SgQe79c5AZcq+BBNdL2GBnz3POQuj4mPCFSSua2DiDi0hP2vuvP6htUk2I6
         Q2QA5cB/z1Ao2qz0yecSO6tJmLednECCpPLzGj7wShuBbUnWdahuIR3Itqs3gdu+WMLV
         1IzqEDDLKIvpMgTWyQePN1GXy8QrjZJf6J8m7udTYOiFMtRGZYuSwcQWrUEkNKY5dJRO
         RIdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=PBAjjUdaShlVBQ0qXaDLmR9kJZUz36swGq1N5ImgXIo=;
        b=0hlHqncyhPAEJspQlJNM24aPoGoBe/54OBmKjLwekphDHYMW6wlGgpWsjI+0RliFcl
         Bta8ExdDA+nLos7Jf/JvahmsbaP7oaxq0blpfZva5aZ3i46Uh8jHwGmDVZF2a6j8um07
         lmgO/CN28XTn5HCl9Y/I/NAg6/9JBQYl22bzdVGfkPR/AyVLtg01HT6drUd4yXVlty81
         p6UZqLFlqi7EI8v4fednjzCJ6WeDAPjYn8ysiKli9J3ZIUglxvhxOTZxxVI1SHaKKmgU
         LkVESyiykNfwOtQBt0BwpTZPETvZy4fG9Q8Yv9I3CoLRWHPXHvIVmQ41X/64mU2rzWKx
         s9ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Jst4nC2b;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z10si1728pfk.4.2021.06.16.23.31.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Jun 2021 23:31:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 75B786113E;
	Thu, 17 Jun 2021 06:31:46 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: James Smart <james.smart@broadcom.com>,
	Ram Vegesna <ram.vegesna@broadcom.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-scsi@vger.kernel.org,
	target-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] scsi: elx: efct: Eliminate unnecessary boolean check in efct_hw_command_cancel()
Date: Wed, 16 Jun 2021 23:31:23 -0700
Message-Id: <20210617063123.21239-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Jst4nC2b;       spf=pass
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

clang warns:

drivers/scsi/elx/efct/efct_hw.c:1523:17: warning: address of array
'ctx->buf' will always evaluate to 'true' [-Wpointer-bool-conversion]
                              (!ctx->buf ? U32_MAX : *((u32 *)ctx->buf)));
                               ~~~~~~^~~

buf is an array in the middle of a struct so deferencing it is not a
problem as long as ctx is not NULL. Eliminate the check, which fixes the
warning.

Fixes: 580c0255e4ef ("scsi: elx: efct: RQ buffer, memory pool allocation and deallocation APIs")
Link: https://github.com/ClangBuiltLinux/linux/issues/1398
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/scsi/elx/efct/efct_hw.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/scsi/elx/efct/efct_hw.c b/drivers/scsi/elx/efct/efct_hw.c
index ce4736c41564..5b508d49e5a5 100644
--- a/drivers/scsi/elx/efct/efct_hw.c
+++ b/drivers/scsi/elx/efct/efct_hw.c
@@ -1519,8 +1519,7 @@ efct_hw_command_cancel(struct efct_hw *hw)
 				       struct efct_command_ctx, list_entry);
 
 		efc_log_debug(hw->os, "hung command %08x\n",
-			      !ctx ? U32_MAX :
-			      (!ctx->buf ? U32_MAX : *((u32 *)ctx->buf)));
+			      !ctx ? U32_MAX : *((u32 *)ctx->buf));
 		spin_unlock_irqrestore(&hw->cmd_lock, flags);
 		rc = efct_hw_command_process(hw, -1, mqe, SLI4_BMBX_SIZE);
 		spin_lock_irqsave(&hw->cmd_lock, flags);

base-commit: ebc076b3eddc807729bd81f7bc48e798a3ddc477
-- 
2.32.0.93.g670b81a890

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210617063123.21239-1-nathan%40kernel.org.
