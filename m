Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBUMFYXUQKGQEPUJR4MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C14F76DBAA
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 06:10:58 +0200 (CEST)
Received: by mail-yw1-xc3b.google.com with SMTP id b63sf22844241ywc.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 21:10:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563509457; cv=pass;
        d=google.com; s=arc-20160816;
        b=mnYtBOyv3lImT0i0AHSVYFE1KrriKgiLnBkmsHb7WgNg82yOfpiLrJDRlxOxlmiutY
         zfeAskLMqL5ZH49fPVlxq260bEWwLW/VUj4Sjv2hKvI2haw4IN9kmadAEDzoZlZk6rEa
         0ZlHmRar5SzbLt4ljwpDR8Sx78m88Ury6KMq683CDjwuTgBoVgoAT+TmZfKnoMeXDO1f
         KJ04Xs5P4fr1tDfmzlKT5G2EhdECNCBQcFkBjPobTkfENB8NsU2vq/8zinu8YiY7gWKE
         yNP0VG2rk9DkX4odHwdaPlTTFa4lTGVHATQ2t40igmO6ktc2DsQv5UMVBtNZpR6NjjLC
         ZwQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4zO54fcTjy+J2Y9+WAiTYbgJnTRS1EC7grPLnzyJ9rA=;
        b=mhEMXj016TWUiCmIH4qKV1EFtrzXi+mXgbQx9KUO781qap+TBDQFe2Pxcd6c6Aqz0l
         uzRWcZBaQh0QqgoWqtMfN+ryDRc9vJq+i/3cr7YPifsV4ub7U+jTDZFxztOOlxuMYdWo
         yMcTGQodN2wngwDOiRgjOin5Q6wYbFys1x+JYYYWqa05X/c7bfzxiHKK7X9jb7Wi5mjf
         KBclVHoDKVbTA8aLtpqVfi4hvdtMgjXtHfx7UTAwSzswLTWlCoJFOuwrB0ppLLm6nRrg
         /B50Dns+Sr1EffvMkJC+2BNNvU18K5B6wJtZH6+aj22RsVxNiiklrn6g9JqGxmbphDT3
         xRsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jKsc48od;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4zO54fcTjy+J2Y9+WAiTYbgJnTRS1EC7grPLnzyJ9rA=;
        b=aoSD9Cnd8l0KndQycDqS5ODPjRwOhfNvqd+h4svqKN/LGyHGybTJ/N8WsC5S23BvDc
         hWOUnS7KqV+75H2GcqkYSCGE3t5EQZ0s0fX1n9h+Z1qHkge3ZOYBDYlmTqVwXiWNsMBS
         wQSGXi/IbmaVxwkWPpLL4D0dbncJB9yyNJWeRaokkW+DoygtBC9pknZCg7lMID7Ymm7j
         8RUjr2CqwiMYMVwBh/8MO+vIK+nXCGT3TI0wA3dvNf0Vqd0O807aua1HiBfX0nmNbMeo
         e06Knq3BpXQBW8ufJWdgHa2OrDrOJNLAIWBpe/wVI8frteq288vraCcpmtom8tD+tzuz
         iMfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4zO54fcTjy+J2Y9+WAiTYbgJnTRS1EC7grPLnzyJ9rA=;
        b=JRqDqVWICbfsyA4g7x08g0cz+i/ohns+uIj9v0J//dZ9w9DIfRXML7LqxeSFQxvbNM
         A8LQ5q7k/XCjqjXI4YBHVAPKrgNdX6iFuED1LVfpFBgNvGmNz6uauHY+5EgmXrnn7jYf
         90Gqc5OqeFRMvBhr0FYpsJXxOQ2ANdCErfMOMT0PtCnjfiQ2wnyfuFW9Xu1qzQBn/39l
         jSPmmPK6SFmJ7Nqwk4pNTZY1FjWjrqukc9KR5XtEA7u3DNV163B4aENw+i6IKoZPNnS/
         gtW6wKPus/m8juIx3PH2jWZ4oI5PO3DOaNAs7WaNzHoChP2WPw8rMQbnZztQ0XPP9M4S
         G/Bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUHWo48hrsCGcrbfwfPBqsx/Ks3SPmU2hQLuTxilRtJs8xy7kSg
	VFl+seG9OwRAEcMTrQQPiTY=
X-Google-Smtp-Source: APXvYqyJ+E4pPf88kzixf3cUmVmYwB6UB3kxlY0pBRRuTHwxRLONe28lIpVPmrWhhdx5jF4vjAaX7w==
X-Received: by 2002:a81:5f8a:: with SMTP id t132mr30395150ywb.381.1563509457879;
        Thu, 18 Jul 2019 21:10:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:700a:: with SMTP id l10ls4109657ybc.3.gmail; Thu, 18 Jul
 2019 21:10:57 -0700 (PDT)
X-Received: by 2002:a25:38b:: with SMTP id 133mr31509247ybd.93.1563509457712;
        Thu, 18 Jul 2019 21:10:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563509457; cv=none;
        d=google.com; s=arc-20160816;
        b=VB/q5XjiI6VUDNYSGLgb98Eeu1plKutu6M29dk/rWOInXcw8khzoACl4rEl9/vAJtQ
         rsTmMgjuLCH3sUiaJoqJZ060+eLmfW+kMXhLqCeaEuc1DCZc8Md6BGmIm85xtc1mD04p
         XkxhWB9X4O7iHZ0ywFz2DmqqTBMJWAExdlxxx20R4QmI9mAp7EZeOYOdxwyacS+zoeQC
         PzD3cprURFBTeDhgtPLjt+XP4AKakw2Ty+7FwWsvIX3Gh+MUxUiTQ31J37VsW3mTEAiW
         CMnUmOW/7guc68e3bm9tEjC5LXtuCZRgDwlxacJNy6CXEZdpfmtbPIM9ky5+367oE1FX
         cULw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=I9+Fk+DxyXrp90vk/M4SZnwa6lDTnurQAuKgvUIt8R4=;
        b=npchHv2Cc2cDtljyDjV31l0Vlmiwx1gbbh+HcwvgWRtGr18cBj1YFescAk9mgPQ+qQ
         zxA4pA0zrtwM44rCaNpr6SikyyHuRDw78weDuezEp6vGbNQa+9sPHnCJKcCP0qNBXSZ1
         MTp5wzhuy1dn/iHtNCu+m+lW6X1k2Wb40lhvKOehy7/2jRPkPNpyaJPKwuTnCS/A3j+W
         vFSIcbLgjj1Whc5gqJylgJyjYt0U7WgjMz3cigAEQUNt6rrVAWD+7z6C/vLj/qbVCngi
         h0rftEZswxf1XqA4iiHvvCaxMptgq3XxxZl3xf+/MyTezF8ofJjF9p2xSrTsQ9uy7IQv
         3YRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jKsc48od;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p125si1154631yba.1.2019.07.18.21.10.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 21:10:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0DF6B218BB;
	Fri, 19 Jul 2019 04:10:55 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 098/101] cxgb4: reduce kernel stack usage in cudbg_collect_mem_region()
Date: Fri, 19 Jul 2019 00:07:29 -0400
Message-Id: <20190719040732.17285-98-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719040732.17285-1-sashal@kernel.org>
References: <20190719040732.17285-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=jKsc48od;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 752c2ea2d8e7c23b0f64e2e7d4337f3604d44c9f ]

The cudbg_collect_mem_region() and cudbg_read_fw_mem() both use several
hundred kilobytes of kernel stack space. One gets inlined into the other,
which causes the stack usage to be combined beyond the warning limit
when building with clang:

drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c:1057:12: error: stack frame size of 1244 bytes in function 'cudbg_collect_mem_region' [-Werror,-Wframe-larger-than=]

Restructuring cudbg_collect_mem_region() lets clang do the same
optimization that gcc does and reuse the stack slots as it can
see that the large variables are never used together.

A better fix might be to avoid using cudbg_meminfo on the stack
altogether, but that requires a larger rewrite.

Fixes: a1c69520f785 ("cxgb4: collect MC memory dump")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../net/ethernet/chelsio/cxgb4/cudbg_lib.c    | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c b/drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c
index d97e0d7e541a..b766362031c3 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c
@@ -1065,14 +1065,12 @@ static void cudbg_t4_fwcache(struct cudbg_init *pdbg_init,
 	}
 }
 
-static int cudbg_collect_mem_region(struct cudbg_init *pdbg_init,
-				    struct cudbg_buffer *dbg_buff,
-				    struct cudbg_error *cudbg_err,
-				    u8 mem_type)
+static unsigned long cudbg_mem_region_size(struct cudbg_init *pdbg_init,
+					   struct cudbg_error *cudbg_err,
+					   u8 mem_type)
 {
 	struct adapter *padap = pdbg_init->adap;
 	struct cudbg_meminfo mem_info;
-	unsigned long size;
 	u8 mc_idx;
 	int rc;
 
@@ -1086,7 +1084,16 @@ static int cudbg_collect_mem_region(struct cudbg_init *pdbg_init,
 	if (rc)
 		return rc;
 
-	size = mem_info.avail[mc_idx].limit - mem_info.avail[mc_idx].base;
+	return mem_info.avail[mc_idx].limit - mem_info.avail[mc_idx].base;
+}
+
+static int cudbg_collect_mem_region(struct cudbg_init *pdbg_init,
+				    struct cudbg_buffer *dbg_buff,
+				    struct cudbg_error *cudbg_err,
+				    u8 mem_type)
+{
+	unsigned long size = cudbg_mem_region_size(pdbg_init, cudbg_err, mem_type);
+
 	return cudbg_read_fw_mem(pdbg_init, dbg_buff, mem_type, size,
 				 cudbg_err);
 }
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719040732.17285-98-sashal%40kernel.org.
