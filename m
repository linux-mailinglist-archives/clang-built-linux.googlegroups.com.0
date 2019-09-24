Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBEEPVHWAKGQEA67VC5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FA2BCCC3
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:42:57 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id b2sf1515254otl.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:42:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343376; cv=pass;
        d=google.com; s=arc-20160816;
        b=n0/XY2awUM+ADOv5XTGuoxk2V26gU6CFF0RqghCrRmgPRWuO15Z/Vb8grHS1z1YgbH
         7TtgUfkTJIt1ouqj9X05BYV7QZCNzG0w9IXd6RCyOWL5bKwc65Ftxk/+MYYMYEbL0iF5
         VguajLsD+aS7zNMu6Vri6OxGbsl3UeWcx00YhMYOwmdNXpcCdApRl3ow5/E3yFzNOzJ3
         Yk2TPHY48NcazI/3t+lP1pXhJVjxD/ArqE7crhcHYMSY7fW6hkXvJeJxB6aazISsNGqj
         pwGWKYJEw8epsqbXx59zyVs8wxYh68JBv8OgW01KhgKYN0+w5FglGJZOaA7sL+BNtGCp
         bhPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0xVlBC6DGoeM2HMoXOZua+Y02+g4L24ycPCOsS5WCHs=;
        b=PLhljhPTJ+o7j7AgqnBZRdp9+k74XA9Tr78Rzso5VmGD+AUU3k540d4mdTDBxErHk6
         abVg0xjLbhQimXB/0EpIUvF9yVM1GkZJOhfuSuOh6H+UjwGUs3bnWUqcxlJsT1ewYZwL
         AmUEPbcqgnjBpiby7bSY1MyfwqG6dOMeCHjOkYzXbcjnE4lrPKJeup6v6UrQUOjkJbZq
         smyJIYUkkabkTjrieexSSGJnEIVF0x0qTPC8bBQ5fsFJWSrVvdJMJK4GKBrPjV8RzifK
         vJK8TzHVDg0BTfxzQI8ZM0iu7Budi9/Wusgx3Xi20VymAmSNbVaMhtBZYdhw0he2rZzI
         FqUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PidovqNm;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0xVlBC6DGoeM2HMoXOZua+Y02+g4L24ycPCOsS5WCHs=;
        b=A3w4b7OKD2WQkwMnwyKzFlJw5TXnbrZsF/KXMGqHLqREXoTShp/F7rpkcMpsxaOP76
         p6HErzsi9X0gLOpQYfyZr1eGFSh7WncSXErv1rOVM1HW1wfDG+vl0gTdiqWuxruaBpyI
         RpHXSsRlGN9M8XJBgNq3OaangTnZYTOljCBXpeo0XBv6ET8+wWhfUllzyzfGMpaObjRz
         5FceC2L3+TRxHsZ2Yj9bU2owkIrOQY/HAC6rCvvbLktp9eh6A5HBa/gM+S0aQn/nB2ff
         GhVCXK9O0PbnmMoBg+6I30F2NUwwJTFWQZaQOzrRmevM2Iyiqwy6I9Y5GvPyEp+n7gHo
         uviw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0xVlBC6DGoeM2HMoXOZua+Y02+g4L24ycPCOsS5WCHs=;
        b=gunOBZpOn4Jf7BjLvZzARm5TJfUX3EQs0kBbeCV/fLEjsM3karspQPt4PPSeE18NMR
         uKOYhuZu0isk2Ym4MLt/Lz0nQXASrv35j4YqWyJk5V7/utPZFy5SqclddOGiELjLcCBX
         QMhughI/HzVuwWI5KhiRNgaX7zqLcTGe8jaGwTWgwDSwHdm7YbDkVGz8MP52ugvfYvhv
         l4y5ZjBh9EYvEmAKsdrwwGre+6+SKAjmALVw3P3GJqq5ezaCClZKcXKxfJe5rODGCu3y
         wc4XUB9FXhdGVX4RiMYgbwmnaRzVvTeew7YQiNQdmtekY0HSZAR5I/VF6Siw0sXqbWmR
         /1ig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVpnLZkXLDwY6P8h4fVcKb05C1pUxclCdbwXTgC0HATc0XUXBni
	m6ZXCrriR98Gph0c5G4EEXU=
X-Google-Smtp-Source: APXvYqwkWU1tinWaO6FUzP3UTQ2cRYq/Nab0LnHH7hN126O/CifNfWcx1Yw8NNtYZMikdvqEQ5qHWw==
X-Received: by 2002:a9d:5f10:: with SMTP id f16mr2584755oti.332.1569343376095;
        Tue, 24 Sep 2019 09:42:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4dcb:: with SMTP id a194ls566844oib.7.gmail; Tue, 24 Sep
 2019 09:42:55 -0700 (PDT)
X-Received: by 2002:aca:de55:: with SMTP id v82mr931953oig.173.1569343375850;
        Tue, 24 Sep 2019 09:42:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569343375; cv=none;
        d=google.com; s=arc-20160816;
        b=YXma3nUYL1aY5pzb0CxNUCClV3hpF/06BkY1DoNdEtPlHVuLBFRN/Cr83uYTOT02t/
         hYGI5s2JY6SGPqDMvu1e7IkjpFvfcF4PQZaPpFgQgR6N1Kjo2k+6c80IS3hJNiyHM0yx
         Usw/FjZ/48j7Ahei9MEOSm9RiGRyEvQY2YWa+l0u6Sb43GnryOavSU3HkDwS+2AsY/pX
         f8kr97oi8zfUc/HJPUq/56rmTLkgpgF2VCs2NS9yhcVMO8NeKW89IZq/IdSh7kvhhDsC
         htCltL6h5RT2P2+eI9B8WBcokCnAqtv+T7QidM7o9zAnozYG1gT522FAZSZ+caJEARd9
         uhQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=h0fEiv0sp6cbGaaSvluO7JgNKxkUBB09hAimgYvZyW0=;
        b=uA5rEOsMXS6SVgWEsclTBKlqV/6aRVwfMKuE5ynWrR1yDTxFM8n184imfTub0FrbtJ
         XFeGQEtWfUR5merj6+FWzxdd03sb2oCdhbdoZ3GcQ+Abwykk/qhDexLfSNHHQyopQY5B
         2vaGWO+o6nk9ObeaO++aezgovmfaCDV+qEANceaN/i+tD9V7GXKOe9Sv2tLkFSWjlW6y
         y4oN3nhHi33TSzJHWFSsvExk+uotLCciPE9Fb21kJMK3GlSFYPCSATmwS9L3aTRbU09d
         GIF8NvBZrv+WEaQK9ZNhsmsncKW96MxUv/JI+YVhSN14LYF6nRAghUHpghICLMh4JWrH
         0SIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PidovqNm;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m23si182386otl.4.2019.09.24.09.42.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:42:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 87A4921D7C;
	Tue, 24 Sep 2019 16:42:53 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.3 24/87] PCI: rpaphp: Avoid a sometimes-uninitialized warning
Date: Tue, 24 Sep 2019 12:40:40 -0400
Message-Id: <20190924164144.25591-24-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924164144.25591-1-sashal@kernel.org>
References: <20190924164144.25591-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PidovqNm;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924164144.25591-24-sashal%40kernel.org.
