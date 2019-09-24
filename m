Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBA4SVHWAKGQEW4J4D7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 84593BCDA4
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:49:08 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id w9sf2655030qto.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:49:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343747; cv=pass;
        d=google.com; s=arc-20160816;
        b=085WcxObjgKTVwiW7nF6+bU5iC/6PYrJwXZE7lo7pPmzbvmc6QWcWo/2fDsCP/2Rdl
         98UIysfPVhKw4OBsS35oJi4MXGVpMW+4UBq/0RumzfxKvGMXWuRpvkW1I6eAqDrpSfhZ
         DohGsoYxBfzjedeX1V3UzExH7pPQz4k+JpJttdZ9WY9YOzcIeuh9Q9Gfe59zZzTR3SuC
         A2K+6ivMs57zOkja9hc3obGQzClhPUeY8XntFI2TQqNKBwkGzR3SaXFSwG2BkMIkv0a1
         yRFQOVurdcJP6eoI7+3VWH6x9zSgnvvn5EOMw4M+nwEqeg2iZhIABzNC5zdSjGPjcRmC
         ry7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hWKfaRpuiolHpQxQAKj00tet23AzMq5TmKstTmkLFfY=;
        b=oWEryiX8WUveI4QNgqAHQ9enJbWSuZa87hCfciG7Ud8MDLNRH43rV8nzJ0RlMSNaxl
         Kdysf/f5VTcjL5J75WmpbcFYKJhILfrApuTXMogEwhb+puieupzze/dM41e4EbmaE2RJ
         DukCEjqwjPykSks9UX+IEnhXaGVF9J1s+wgGR4cMIUzPMuwMSr2OepnN5AfhR972j/y0
         1+iPSPXQe5vk9ORwQeBqAskOJyUH5qpJel30UPRps2I4MANwVGJCN6LGNyEXwqxesFU+
         D4WxtgRYrR5lTFkNatPbjtLXVKgtkaUpzlqpveI6Q++oyEl8Ocxt7NGaFNqhrOdNpY6z
         99PA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ihvCSFqI;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hWKfaRpuiolHpQxQAKj00tet23AzMq5TmKstTmkLFfY=;
        b=PdK8mCkYuSFKW8MdixW8ukZvDPSHVolQhWRWZTnN561GBssR2ZuSkXVs5tVK9tdlZz
         OsD0LfQr05kDopwsOGKckEmtm++RbLvf78oIs1Y2ZDkjDYG7bl/cEy4qziHMxJrP888M
         tATSr+IYgM/dHez1xSFzOkO4eU582O94W1YDf/Wj47ETGAiDWapFOUowtcIBalrUcmsP
         V/u7J1xfknpHH32yGGppfYnMKSrh46x0eSWDACtgvzsKYkJyKmefmmh9na6A121g0/Ja
         LtdToVqpl1PKbTSXWagA0l5EAkUuIrQJotSbDhSBPbXutD7nBrhDfFNxAfTl+q2WbF8p
         uqMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hWKfaRpuiolHpQxQAKj00tet23AzMq5TmKstTmkLFfY=;
        b=WZW2PBBcUImpCoozLXEJQ3Xr2W1ipJQPwqzkT/d3QncVJMzOp7RuCe5BwA7Un/TZWx
         V/2uERTO/W9wjrdmylh+vhdt0a7d3E+TVT0FlGCu2v/wSaUb2uxSIoqGYsW5/P/6PizX
         NTP2dc3gWLmjGpbBObWf/R6BrY2rJpxTYS/MsAk4Qk03hgmUVkedg42M9boQMV8giifd
         EWeHt+4nYMYUM0E5obR6DM4ggwFZfQMS7gbP5gDrJpitxwuTc7Ch6/wXyrCjAhXrzOZi
         QAgA/Rk0igr+a4PcL6HuyOvqMubdsyOjc7d02LKHN2tSct47PUqKDb1kvHOTcjtiaFy1
         zCQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUaiLGnbdZHVRAU7ZaNxOx5wrT1ppq+pD/MxhqbStVsv7aE3FY0
	RqEtFVg1QHrIwrgLmZ32vMc=
X-Google-Smtp-Source: APXvYqyCOGN3sXycCSOvVGu2t00aXJigrhrJfBIXverxH4QyaIDdn1fYRBrkz8pWNIPScpA5APlsyw==
X-Received: by 2002:a37:a182:: with SMTP id k124mr3527344qke.354.1569343747379;
        Tue, 24 Sep 2019 09:49:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ef0f:: with SMTP id d15ls1028158qkg.8.gmail; Tue, 24 Sep
 2019 09:49:07 -0700 (PDT)
X-Received: by 2002:a05:620a:694:: with SMTP id f20mr3510933qkh.379.1569343747077;
        Tue, 24 Sep 2019 09:49:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569343747; cv=none;
        d=google.com; s=arc-20160816;
        b=XuQuiPi5Nwc+sDP6ACJPu4fZQv4hr664rN9NyQ6RRI+9O4iNpnMNkCfvfzY4qhRROQ
         +FnvrBJa1ZgPALxvasWjklMTJOFu6aOKhiu5MKMhqOlo4C/5wS4qnru/riw0yeEfKCYW
         Rpj+qMWhq+JXvfyNHesYZlkGQsrpXG05xA4cWPYwDyiM0zoBxE5+1XUZ7cpesdEJxsIK
         Dt+6Y46eNcoBuFaywHBmnigiEDDoa6tAami6cdMeWVdZ55fiJrf5l44970SnQDd4dKP0
         HFgP5rfghNTfBbfDqEpHGxcR8gbrua6zdRRT32/3DGa8k1tGGiCnBkgGUUFVA/83II7z
         7vVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=m/0d4E5comngZW2MFGJG8RNh1PymQr2zz/G93r9PMxc=;
        b=gN+77prWESvvR0g3tZKc//PRlT6OtY7v4ZwJhn5FFtc3pWvUiZZcw6uQ6qkWOkg5rk
         77UBzY7HghS0QM/ZL3nK4T6NB2DJ0qvQJFfFN2kPsYaNr4W7g1PjWbBuNq0PBf5h3FPR
         XY0x0tAcvKnSS7WhsjEW1+q+nza0yaiPMLExjhf+FevmT8bFkig6RkGXSyl+JcdTkCPt
         IqNVmQmbaYQHlyv1RsN5aRIcqtj35W1zRKrq3Vn2UlEUmDNEQ8spbUO5yctfqFGtdkam
         a/V9PhOJYC68YmdXlLLqYJBBus23YnWvLpwmSiJiK38gSqslovxmKIAoUKTraIDp+gje
         FQSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ihvCSFqI;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x44si188445qtc.3.2019.09.24.09.49.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:49:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CD59B21D6C;
	Tue, 24 Sep 2019 16:49:04 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Joel Savitz <jsavitz@redhat.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-pci@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 11/50] PCI: rpaphp: Avoid a sometimes-uninitialized warning
Date: Tue, 24 Sep 2019 12:48:08 -0400
Message-Id: <20190924164847.27780-11-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924164847.27780-1-sashal@kernel.org>
References: <20190924164847.27780-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ihvCSFqI;       spf=pass
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
index 857c358b727b8..cc860c5f7d26f 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924164847.27780-11-sashal%40kernel.org.
