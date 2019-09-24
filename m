Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBZUQVHWAKGQESYA6TPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2CEBCD47
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:46:32 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id p2sf1907247pff.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:46:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343591; cv=pass;
        d=google.com; s=arc-20160816;
        b=kkGA+lmzFXFm8/doVd6siYFX3szXY5pAV3xq3C96XDNm6ape2kPFQlmsKc0nEOE0dJ
         LyWd070il1Gcy5bwezbM9JDTddyIfCX8Ter+O3yx4nBUsr2Eof7l/yKpvNIjR4Ihp1e9
         hVBSiIEg5A+iCchnvh77SEdrcaE1N6rB2DW40d1Av96bFPLMGoAFBfvXuxEwCRm1uyYr
         GngZ63ZVV2efudUgFKGIN8zNong8S1ZU21zggbsPMmGfTW2gN5lN/iTVzuDfU6/H3fD0
         n88YJMefgk1Dn5Hgp7yO6PUl0bPsBGdzWstGCJywLnmCs4oWuOqddhR1wMY7Ed3BcX5g
         Utgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CBWxz3b/fheb4ss+s1N0BpuSClxU3ZquJVSsXRMlSa8=;
        b=O9gCjszJgm+1StZtQL+YYxKSBpth5d2rEikesJYw1l+8NIvnm+zr4luIVqZYXqI4mU
         8tNUVQzmAY1FWLayba9T+bCVANiNBQMlYjeL6sqjjk+VAbkhZquV+NPK8+P9jeNDDk1p
         IYUo/1Zdg18YUxBvVYLcBKvEAzHIIsddMobzE05hMnKoTOOPk6IlErrF7jprxf9YB9ym
         +uGNP9u/TTHea5m210Fyoi0qiZmfp/6uzmtRmLCbr8GAkzbar2uUXplSCvIN1MNsiqFs
         hbSqLUAJNMVDMCcMKkq6/Q1SOqbuA+9lCgkB436oH9yY96Vymi7ePYZAdcyuJ8DtR59R
         QbBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UZMIUdCy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CBWxz3b/fheb4ss+s1N0BpuSClxU3ZquJVSsXRMlSa8=;
        b=n0SSW24Kdu7lHJ3pfu0poNT7KOXxipRdTgDQLbvvKFv2u3hDci8RLgcOyB3ZZXMqCg
         PXeNLiZzwPNHc92r9cX3bIPROOMBUlNpZtTHxMR4rn+N/7jArVZUg+6E2gWTB0/4xgXW
         iMmST1agfY7/bYRMaLWnokEoHOEK/EO89Yw0TEtRBlnxqknn7QK1tX0yREqhZQurgiP9
         96Ktj6RGrufoZMe0gGAigvtyjR1sWtWNAIHdloXqKNCXQ+qaJ3IMxqAATgBw0NAJ0QdU
         OpksABOzauARG8vMT1wGnYa3G3WOpC339pl19Gc39/A6xsxLDMDcNMnlBkPSmiJ1jrGf
         NOmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CBWxz3b/fheb4ss+s1N0BpuSClxU3ZquJVSsXRMlSa8=;
        b=STL617on8Ms/6w31OCSU7iuPBSH0SiEP+dWqJ/Ro7D5FWuM4cFx4r57tSDwJ1qcLSh
         ePqtSTJjcUz4qctqEpPDDd6pZ7IhV9Xxx8d37wzg0HqSYKrkip8dDstK+osjLyfjYWxN
         BVj4L5E7sww3uMmVOeqJ4DAJhoidwwm7ZOAuTlXVyf/G/JjkM91NILgnr7HKd82PDuow
         Z7G0UZCZ+ZAhYj2FpzBM81pyDKn/2ZWlVvZFhfh6qgHtWffj0eN02bOZcG0wGH6pzAxZ
         xW6icaucOSb23w1RBEbJpgvzQ+FHtCUIPEkrjrTfTFRoDKJoHL9K+FNzWrfwp12NSuSR
         6fXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV45wxPAr8ilk0KewI2R2wgN1w5oW9Zgi6h2Zsr+bfh2AULJLMO
	WdzWLSja6junhC5MWg9bbCg=
X-Google-Smtp-Source: APXvYqzCPAkWeyuqUToISey7VSWulkabXU3DuO3Nj/L+N8AmeLr+At7mNrS3U7mngztO+p5ZDPpdaw==
X-Received: by 2002:a63:741a:: with SMTP id p26mr3975993pgc.177.1569343590918;
        Tue, 24 Sep 2019 09:46:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2204:: with SMTP id i4ls674199pgi.12.gmail; Tue, 24 Sep
 2019 09:46:30 -0700 (PDT)
X-Received: by 2002:a62:3c1:: with SMTP id 184mr4517394pfd.209.1569343590604;
        Tue, 24 Sep 2019 09:46:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569343590; cv=none;
        d=google.com; s=arc-20160816;
        b=poXdyvD6Dc7JKbe0WlXUKDVRapq6qmi5AIGHCBpNNSN4wXJdXMk1YwNSt9gRncOHAb
         A1hyQlQwm0UK6vjRWBrlN8/VbFM5KIO6LLfXZXuPpRFaohOhIhGFWcF0xIvunC1T5Hjs
         HMMnic8k0Ll8S1D0nT7Ra7S4Cgo3lrE5Yq2AElwmfMeKHHvHBKiREv2XB/irZRn7luL9
         Y0RrzUGFYIblMt/ywxNDLrq2eTMHAffobydPQXkS+/6enZ1kcHQBAZpJ6TvNesCqsrW0
         bMtcOcR+58QAoAO9aVg9+l5yntWgXs2rGvSt7NrNfhPnYMULCSNhgUQE7Y675NZlQ5RD
         KnGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=h0fEiv0sp6cbGaaSvluO7JgNKxkUBB09hAimgYvZyW0=;
        b=gKhmTYcHp1nCUzLv3cE/6jFaUxS2Q76vXc7xWWsci6aso/tgZTuJ6mE/oqT3ZLfDDa
         Ogoi5JEY0XTS3d1Erp4RJh2MotKdLp7Zakmi45GzGiSmeClhPVXVM0qNyTRe4v6o1YX7
         6tKo0elWb1N0AH+Lo8HbpdtJzIRgrm5/Pukibo/CXIXxpI9Ia4eU2r6CQeCHeV9qenYy
         1e1dXlLfd3eZlJdDfBee8kesbtv95K9mSJbhBebEBXT8iSC3Ftdmgf648i44iF5lR0zY
         V6iFtA1HxW5ISOcAjUayZPA6BQN23fjdsAJVxnz6TpqByJXskT51MMDshmirvo3AiwQS
         9+AA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UZMIUdCy;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b64si178382pfg.0.2019.09.24.09.46.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:46:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 39C4121D82;
	Tue, 24 Sep 2019 16:46:29 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Joel Savitz <jsavitz@redhat.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Sasha Levin <sashal@kernel.org>,
	linuxppc-dev@lists.ozlabs.org,
	linux-pci@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 17/70] PCI: rpaphp: Avoid a sometimes-uninitialized warning
Date: Tue, 24 Sep 2019 12:44:56 -0400
Message-Id: <20190924164549.27058-17-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924164549.27058-1-sashal@kernel.org>
References: <20190924164549.27058-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=UZMIUdCy;       spf=pass
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

[ Upstream commit 0df3e42167caaf9f8c7b64de3da40a459979afe8 ]

When building with -Wsometimes-uninitialized, clang warns:

drivers/pci/hotplug/rpaphp_core.c:243:14: warning: variable 'fndit' is
used uninitialized whenever 'for' loop exits because its condition is
false [-Wsometimes-uninitialized]
        for (j = 0; j < entries; j++) {
                    ^~~~~~~~~~~
drivers/pci/hotplug/rpaphp_core.c:256:6: note: uninitialized use occurs
here
        if (fndit)
            ^~~~~
drivers/pci/hotplug/rpaphp_core.c:243:14: note: remove the condition if
it is always true
        for (j = 0; j < entries; j++) {
                    ^~~~~~~~~~~
drivers/pci/hotplug/rpaphp_core.c:233:14: note: initialize the variable
'fndit' to silence this warning
        int j, fndit;
                    ^
                     = 0

fndit is only used to gate a sprintf call, which can be moved into the
loop to simplify the code and eliminate the local variable, which will
fix this warning.

Fixes: 2fcf3ae508c2 ("hotplug/drc-info: Add code to search ibm,drc-info property")
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Tyrel Datwyler <tyreld@linux.ibm.com>
Acked-by: Joel Savitz <jsavitz@redhat.com>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
Link: https://github.com/ClangBuiltLinux/linux/issues/504
Link: https://lore.kernel.org/r/20190603221157.58502-1-natechancellor@gmail.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/pci/hotplug/rpaphp_core.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/pci/hotplug/rpaphp_core.c b/drivers/pci/hotplug/rpaphp_core.c
index bcd5d357ca238..c3899ee1db995 100644
--- a/drivers/pci/hotplug/rpaphp_core.c
+++ b/drivers/pci/hotplug/rpaphp_core.c
@@ -230,7 +230,7 @@ static int rpaphp_check_drc_props_v2(struct device_node *dn, char *drc_name,
 	struct of_drc_info drc;
 	const __be32 *value;
 	char cell_drc_name[MAX_DRC_NAME_LEN];
-	int j, fndit;
+	int j;
 
 	info = of_find_property(dn->parent, "ibm,drc-info", NULL);
 	if (info == NULL)
@@ -245,17 +245,13 @@ static int rpaphp_check_drc_props_v2(struct device_node *dn, char *drc_name,
 
 		/* Should now know end of current entry */
 
-		if (my_index > drc.last_drc_index)
-			continue;
-
-		fndit = 1;
-		break;
+		/* Found it */
+		if (my_index <= drc.last_drc_index) {
+			sprintf(cell_drc_name, "%s%d", drc.drc_name_prefix,
+				my_index);
+			break;
+		}
 	}
-	/* Found it */
-
-	if (fndit)
-		sprintf(cell_drc_name, "%s%d", drc.drc_name_prefix, 
-			my_index);
 
 	if (((drc_name == NULL) ||
 	     (drc_name && !strcmp(drc_name, cell_drc_name))) &&
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924164549.27058-17-sashal%40kernel.org.
