Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3URTPZAKGQED6O235Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 759CF15E1D9
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:21:03 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id 10sf4820352oir.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:21:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697262; cv=pass;
        d=google.com; s=arc-20160816;
        b=eTeNVOx9pvW93x90sagZsY/Mc3VqxjaEW8K3VvoIVPsnoIaaRf3bsLFuH3IP7Hc3/6
         9LC03tLVXf8RtHKP222NjDIzDtEK456eHGhL30hHM467czRDjtH7AUN6/WFcI1brzchF
         sE5ui1v10nT4FakLyUo+Njf/M0NkkUgG1+NkrTv1r9N46bUMs4znww31fJ0jWFPkpGRq
         5YqhkNNz4s9JAEgJLQowMDwQcEkTk0opreW58KMQtfLgRwetZZolB9xGyB2rPs+aOSfb
         9tXOFUAheqmSERip6HQr4fKQyzNklHkrYFZHHyd4JUpF6Jl7l8R5fbzCaeiGU7J9PjVs
         3jtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lV34251wE2Up1/6AnXg0ETEMP5ClT/cVpDcByT0fm4c=;
        b=b/P8rknVwkzM/IqD5aURUg/4AyWxa3UdgIzk6Pmp8gSkerax5LDeXmbtD/rolW6skU
         RFaiRtcfz2p/0rk7TgETaHtM5DWaiCfjOKbi36xMNnWrxBGUUOveqDz8ZBsafJkowjbS
         eaeoJXfnNvhSc+ibpz7wadXsiOCQx74OhhP7gC0/JC8HIYg0VkBm9xqPum+hTK87x2Sr
         bfcwQS52OvDAR5zcz4ppllxlE1VJ6+45gwCZW8rua0SI2x6T2n+ialEaD/RmQSc3LMew
         gpcmLFGKC5JkoIebh2furJB1uTvj5Zs0TCZtRjwoRTaPgVI0MMzQP0NdqrLJiYSYv+j2
         lIMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w9WZWTxp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lV34251wE2Up1/6AnXg0ETEMP5ClT/cVpDcByT0fm4c=;
        b=qtL/5l+hRw5tbeKJzXf24EDHxQ1p/sjqN7qCPmwKiq8kcZEqOEtqadDXuFQ+2TmSIA
         gUb9e5WsK8fN2XbguCl/49HliRcsH22JvUDerQ8/p70Tzsg95gelZxV7uFnfa1R79B5K
         wARiT745NMwfVtlWXvSn5wTlLQnp0t88MKUuv//R7IdQV0JtwCq+/HZaqd7IbJoNwg/8
         WBuJ2NOmol8iwuXT4tS1AqYnfHD2itdYJaKqI1dWzBQXJxCu0ZngE2tAabo3ZKIYV3bP
         6Zi+yYeSHtovzDtYoUmosUvUuOa8tyLwyOLVW2BDf9irPinphi3VOlkcaFAx7kez9lIk
         xLWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lV34251wE2Up1/6AnXg0ETEMP5ClT/cVpDcByT0fm4c=;
        b=KfNbAFxlaI82EIrDqqYpfii6aXqzruWJePRr/HRWSyxx1/IhTZd/A0bzjSfnkkzgHo
         EEmZmN4WWu+jHx5DzxrFh6DeMCj3+OvlsQ2nzN3X+VwZd/TgOphNnWZ1bAbW8MRTI3qW
         jIsbsvrd7t7DJ/RkasbF1nDNQ/7lpd4zLWVjelC9loN7lGzTdjZiLdPMyX3LT7HTXW2C
         kdeN0CDAhdh0UQW7ELHfTXi26oOFu8v2a3PCuh7RrHIHsGzEeWqZto+2bkLhA3myOpiK
         mzlNwiCCBzXcsAfsj3ckKySjch60kznVEOcEYSUwxE0VMrFrGubVCxTQiU9vzVvouBro
         9mLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU+2hNJgdV25N77ASCI44Uw20kUkWOb1cJJ+2LB2dgeQU5bQqgB
	1dkBPSQzG/AiBDE2RlGfksM=
X-Google-Smtp-Source: APXvYqwgVWoaIJxhzEkjQc+vm3Zy9Xzoc2PJOaBfYbdrGUfYuJ/gHAuH3JMiHtNbyrfqjwfss0yN5w==
X-Received: by 2002:a54:4816:: with SMTP id j22mr2402814oij.179.1581697262402;
        Fri, 14 Feb 2020 08:21:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:611c:: with SMTP id i28ls800527otj.3.gmail; Fri, 14 Feb
 2020 08:21:02 -0800 (PST)
X-Received: by 2002:a05:6830:1db3:: with SMTP id z19mr2977784oti.292.1581697262035;
        Fri, 14 Feb 2020 08:21:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697262; cv=none;
        d=google.com; s=arc-20160816;
        b=v5FzicrqNPdxAwHmmKpCumYI40NUGcyVp7ZT2/Q9etnhbUo8YFIDVyAS8YGzd1DJvM
         iDAXgN5aGIAjCyN6cH6YGc43L0Aly9xILtaLpdmwLWRltrESIdSWTxeC4XMNN1uviO/n
         Fh8w0tEKhUwytSmesehZsHTUjEof/GVJRlZIumGCvoUWl0ovfMcTcKNLrwiA8/2p7gd9
         r+H7ltASwO4oNZ16nL176BhbiD9IcrYH0luhU/HOJKCQ3C0JzKAfDsQ6LMx8nXgIgsAM
         nFFomc3z+2u2F83nKCKtlB0Dbj8dQMQef1U2zc+WvDNoCsotH5MsLVg/cQZll+aKp2Kv
         TZRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OCgKmyEbPkAlRX5YSlXULl/eVdiFYD8tkePazFwEPEI=;
        b=nCVh2bpdvhqnK+d4l+1Qu4mfnHM8ww/pfiLjxtOVSMocsCZJb8I9lkkbSrqKsZmehq
         aK51WcV/kq00ZrL340U6U3LYDtkI3Yr7wUQcArAs4wUMr0QbLNUZ99Yq/o5agvXpefXm
         Uz1Fb+c5J1pv1A7XsDd5GfaQmSkYlygg6dUvz9ELHB0qn2JfMqNIaV5N0iXtzgKbNBO+
         N+G5Y8qGBElnZalVIf3Gvnt4+A7y7Aq3C9na01SAIhCEHvypRv/lfFCpYR9t9hwuQvge
         4ZC54joi0171L5PuSZTR5ZtTpAG/IJZKoFOwoAzD9XqSVXQmOw5LyJiwbofPtSyMBwU+
         lE1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w9WZWTxp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s10si288553oth.2.2020.02.14.08.21.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:21:02 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7E2E824719;
	Fri, 14 Feb 2020 16:21:00 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 176/186] lib/scatterlist.c: adjust indentation in __sg_alloc_table
Date: Fri, 14 Feb 2020 11:17:05 -0500
Message-Id: <20200214161715.18113-176-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161715.18113-1-sashal@kernel.org>
References: <20200214161715.18113-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=w9WZWTxp;       spf=pass
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

[ Upstream commit 4e456fee215677584cafa7f67298a76917e89c64 ]

Clang warns:

  ../lib/scatterlist.c:314:5: warning: misleading indentation; statement
  is not part of the previous 'if' [-Wmisleading-indentation]
                          return -ENOMEM;
                          ^
  ../lib/scatterlist.c:311:4: note: previous statement is here
                          if (prv)
                          ^
  1 warning generated.

This warning occurs because there is a space before the tab on this
line.  Remove it so that the indentation is consistent with the Linux
kernel coding style and clang no longer warns.

Link: http://lkml.kernel.org/r/20191218033606.11942-1-natechancellor@gmail.com
Link: https://github.com/ClangBuiltLinux/linux/issues/830
Fixes: edce6820a9fd ("scatterlist: prevent invalid free when alloc fails")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 lib/scatterlist.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/scatterlist.c b/lib/scatterlist.c
index 11fce289d1166..834c846c5af84 100644
--- a/lib/scatterlist.c
+++ b/lib/scatterlist.c
@@ -317,7 +317,7 @@ int __sg_alloc_table(struct sg_table *table, unsigned int nents,
 			if (prv)
 				table->nents = ++table->orig_nents;
 
- 			return -ENOMEM;
+			return -ENOMEM;
 		}
 
 		sg_init_table(sg, alloc_size);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161715.18113-176-sashal%40kernel.org.
