Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBTUBYXUQKGQELX3QVBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4B86DA6C
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 06:02:24 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id e7sf6388367pgm.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 21:02:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563508943; cv=pass;
        d=google.com; s=arc-20160816;
        b=fQh3pEqMTOEx0SyBESdrZ3tA63niD2c56wj7sVmn2hCQ+8Ug9cSEOhhSf+biS55TcR
         HyXLdC1SHBeykNIuWV7m+kNMG6tZvaaQkCU5U/Oi802X+CRYXXIcKOfc7a9DXR0u+6+T
         cAt4GAsNS1YNJ5ZG2ZxLzc06YW3Iyhd4IhTlYlYBhOdoBckEOSswWnrTdk0QeyYXX49O
         6qaj/q5MflCnV8W2ujXOw+IK366JQkLNlEnPPPXrBzEV8ha7o08ykKSWdEz86dkw+vFt
         gpkQMEbZAXutNJRRae3ipMZ5xzVOJ13PQnnemi4y3m0UUQJcd//xy9H6+wX6J408rSFx
         khKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5gu+lRd+/3QVJkUW+7uBZa0LVLCEvedkJuR20y6EjiM=;
        b=Bs7ectPRxoo/JaD93eichx+M4jGtknnEP//fzQZ6oHd78mfzaUS0ctPjyavrHPHkJ8
         Kq4842M7S9DDQbz9GMMSLItrRytHVpr7sfQqbETaC/+Vtcri/i3jUM1luHt+/bynoM2/
         lMSE2bD5tm6mZU1gyxk5ruiQ21TX4WT4c9tFGSWCrYMpVOtghH1dFm6ji5f0yVQuwYgQ
         fr1L0SuxDsd08GVVDkgB6eDC/VJ01XJMiidnY2JD7mYpqw/GoS/uPUsVpCNKYBQvBK5r
         0smZgAYYmRZ8khDB9WT1aAJsXf1Jdj8nIA241tm0Jn/3VQud+Ze87yrBBBWLsiB0W7yV
         LTOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2d2FmylP;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5gu+lRd+/3QVJkUW+7uBZa0LVLCEvedkJuR20y6EjiM=;
        b=EvomtbvQXXlWrpmWj/wDSszNSwb4tx1RXG0xf5XlzmRIsSxUV49w3jevvuBb/e+E3x
         iKsbpZvgtPG9YuZ4xkeww8gBYeelfQCQpZxqTZ4awQBhuOt2u2qdVLM/d9hYuNhpvLbj
         QJ4A7SpzKdetarSqKfl1dsleczTbQrkj3DfATeQN0mGbvZCs+x0o+lLN4TPvdrZJuXig
         X+ggspvvEuKT5DH58RS9zzmtase8yKyLkJ2equzSXW0aT6uUBf1akBZup07Wwp1cgFWQ
         VEqVnNpflaBnYCZ78hfircSZolx/4ue/AXZNUHoL9fCE/vUH10/TJa4GiHcuDRRyk0qW
         I7ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5gu+lRd+/3QVJkUW+7uBZa0LVLCEvedkJuR20y6EjiM=;
        b=eZDouoG454pQV7V7PVBLxv6vx588b7c0vxUC6CxGTI9M2Wfq3HHz8c8X3R+g6ICnXg
         5UDQl4ulzEtGoDy9+ysXS7qTk8btEPq2X8krnjP3zN+bNjhr15jR/eDKmazgU8+oyasT
         IaeK/7DkptKXUppDXRKt7zW9IFzTViW+k6ZRdfoy24bztMNhURgtSr52dOrbnwRlJp4n
         ZquMMFPB0mJWMDNjW3J49WNLXleY9QyM+036MEyaTbKVYK6lb381vbRbjNd4WENrM5tg
         S1S86XoHj4oip8nJWI/cFKYAlZZBpZdVWu7zFX7KwESOs7fR51XWylZeNku6pVUPj7gW
         yD3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXpfVVEJpWZGudYuwmXTSISPyYp86Fj7i9fgJ02oHe6Efoe3jde
	UXmIOyrUKTribwA1GWKGyxY=
X-Google-Smtp-Source: APXvYqyN1HQrapAE/egY2UMVvFeLddCiFm3qve0Rn8pUUSIaV7Os37KkdR42rDo2WJwDsgg8sL1Qfg==
X-Received: by 2002:a17:902:d917:: with SMTP id c23mr54333562plz.248.1563508942927;
        Thu, 18 Jul 2019 21:02:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3662:: with SMTP id s89ls10197866pjb.1.canary-gmail;
 Thu, 18 Jul 2019 21:02:22 -0700 (PDT)
X-Received: by 2002:a17:90a:376f:: with SMTP id u102mr55595694pjb.5.1563508942635;
        Thu, 18 Jul 2019 21:02:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563508942; cv=none;
        d=google.com; s=arc-20160816;
        b=SXaAMa/L6j+sNjZoivhXDeJaJZWw3eoDr1B1aQITRgickc/fx6SjO2sVKgnSmhfjdZ
         hgCE79s0Ide6OEsnAAw9NghhUXWuAFYbAz5F2npv6StlBG/2dpf4ojud9w2++RtblY4F
         lk2rXu0BG2CWFSiyHiszB2Lxf0sPp88MdS78/rb7Jrbwv1oFpc48gHUmcW1hUW2/ol4o
         2X/JT8FviTQC/le/gTS5IXKe3Dt+BJcwEcmkziJcaEvHxk/4pLktPVMeiOsazHFGIzqG
         b3Lu86lLNy35xq4Ll3zq1QxcnpTaFJoZrnw69QIcx5R/OPNw9cN+z4C2dVIjIX5D7Ql5
         1qHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NaVbcQ6cAecSR+ScnatzbnHsXl0g9xbPs6IweDDZEsI=;
        b=oueJ5qKJex92PWjwo3DrctHsbKoJ39JRBuKLps4uJWNpiomNUKRPwwS8VBc9vlZT2c
         39An3fTGzkTmUM/wQT5es3E5uDXN6sSO2NwYDt7KvvFpQAusR3pGH5J5Xralzv4nRs8I
         KwTHE4IiSxohRsf+eRMIfnBDC2xoeL7/4NWZ5yq1GOfyR4B0/vn0NOxEtsOkkdSv0t5f
         erXfFWDJyUeLoLsGVfV4bk3oFcJoMUTuIe/6Wo1WLdKn0xDubjF8OHb6JX/IAxjLBq8X
         GPRLcLnl5/UQN5Jw/qDdXiS7Cu64hfS+WpkmemMvu12eaOZFaAakpQ17M/wsOcrnHMz0
         20ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2d2FmylP;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j18si1097468pfh.4.2019.07.18.21.02.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 21:02:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A33C221882;
	Fri, 19 Jul 2019 04:02:21 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 167/171] cxgb4: reduce kernel stack usage in cudbg_collect_mem_region()
Date: Thu, 18 Jul 2019 23:56:38 -0400
Message-Id: <20190719035643.14300-167-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719035643.14300-1-sashal@kernel.org>
References: <20190719035643.14300-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2d2FmylP;       spf=pass
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
index a76529a7662d..c2e92786608b 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/cudbg_lib.c
@@ -1054,14 +1054,12 @@ static void cudbg_t4_fwcache(struct cudbg_init *pdbg_init,
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
 
@@ -1075,7 +1073,16 @@ static int cudbg_collect_mem_region(struct cudbg_init *pdbg_init,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719035643.14300-167-sashal%40kernel.org.
