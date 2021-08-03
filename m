Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBFNU2EAMGQEA2XW5IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4600E3DF548
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 21:18:30 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id n4-20020a17090ac684b0290177656cfbc7sf68101pjt.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 12:18:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628018308; cv=pass;
        d=google.com; s=arc-20160816;
        b=wjFihrdLO1cjTUK3/nVxjbHemLNWZCVTh2n7dmX55eWZ0hJTI2Z91K0Wsw3zPrh6Sb
         iYdlgHy9s0Ki5XDbqztm5E0CsjSUHf3OXcj53tu4upMkZ1fhCaqZZNgE8S6IezCOBsLL
         udxl0D2Pd7WhfSWN/2W13bWeiHZ9NNJb3U4mIwaGC5+ZT/VcCbs/BBBFdct9DUE5AbZI
         QxlYypwZRO+dSBmRI4s4WW3wSRKDBVqvkOQyGeCAqHjFpvWji8G0M9XuUYCB3bm3xPaZ
         eq+mNh32JZjhoS8hpiqMb1asBSRr+fQyLqc0S0c9m+3BES3p521BKnaO3PzXgFEbMpga
         zvfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=cQnAGfdnLb6atToJDxhBK2XVXmIILARuf2feAHEaAiU=;
        b=e9Nw03Xb4ueyVmx4qv/k65WulPSKHBQcIpoIaIZgw1/jsXjpuiSYShuIIkD00PyfWi
         YpdDyXDlAivN2JZyHUB4UrQPbYO939Gq/RaexgV89b1ZL6xmCs6UqM+tgTqcxI8SJkUt
         aUzhcHczPKwY3+azrf6Lk+dXLQDGaTEHevEofAhcHH50dFLZoMdY0sWGQ24GFgsgCOCl
         qS7he33D+uORaL/WrCM/4I4URCkv0myud2lJ+ug9UGLHa5rWJ7RabnYj5llt04DmLz6Q
         QOVXCv390iM3qS1K4T/EZ6f3Mzsup4K8SHNUXYCAiLS5DrUoAQ/aaOHzM0z3CNCH+Lmu
         S61A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kLqXMEY8;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cQnAGfdnLb6atToJDxhBK2XVXmIILARuf2feAHEaAiU=;
        b=ISNaPUCFuHZabuxFnhBxj8XODIyrs6hS6OILZDU2l+QercHU6OcplyKJjelyVxBbKW
         Rbg6cAUvqtDVKeEgozFqZXnKQG52G3xJFOdqB8pBCqo1CNBABPrmdBOVRGz+1oOvB50S
         DcWT6yhXL3WzNxRKDQpIZxpoJgf8v9e7JpThvT5IIKaEl1riqNTU8Bwxu+Lfdi0KyWkG
         73PzhUmRAASarvuKxH/CHJph92iof0yvazM50Hh5Vz2grRx/QHA5kzapJovR+aNCJ4ey
         tPs8K5zPbf4lAkypgrlOAJt8S+4Cp9UZm7cwb6DbMzkDlCYfkUOa6e7MCOc2+uOBT4Il
         qtRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cQnAGfdnLb6atToJDxhBK2XVXmIILARuf2feAHEaAiU=;
        b=nWC1brbYtUP40Dzdv+1CDqoGo5SC/5zLnFS+zkKAhJb8R02nN+i4SyqVCptGCwtOse
         aMcE5V1xyWskNAP4gT4bCbHvAiguZ1XmrHWYqDA6qtyMQpErepVq7sfIt+FfTnEj3Fvt
         00o4eYr+Xk6MRUSzAHY3h+uIu+moUunR5ecd/V+G4RVwh+zFXoFhN+VfXjAbISz8ifFO
         jvPbrnqHYAMPth3FefzhJphcOmVGUIZ2NEsu8vjPM0t8Adj8OOqY8PSIm7eNlOpy7ZDK
         in/w9+V7RAb/fWFRqTXyW68WcmIgIp7yynN9Fni6MDqedvg+ThbUZDhmAzMuAyTeHY+e
         qKzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ih/fCOxruKNIXEyF+nuSvLXzROP12tLIQqTjEiezbsPTujvYh
	pthIawny1S5oBC5bEg2dX5U=
X-Google-Smtp-Source: ABdhPJw8R0Ssf0UHwtxiIWc5Omi2oS97tJEeBnidltJm29u7vgI/wWEedElwB+TDQurlbZyRWrIWnQ==
X-Received: by 2002:a17:90b:1d81:: with SMTP id pf1mr12497251pjb.88.1628018308784;
        Tue, 03 Aug 2021 12:18:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8f05:: with SMTP id x5ls5612914pfr.5.gmail; Tue, 03 Aug
 2021 12:18:28 -0700 (PDT)
X-Received: by 2002:a62:fb13:0:b029:309:8d89:46b2 with SMTP id x19-20020a62fb130000b02903098d8946b2mr23708696pfm.67.1628018308198;
        Tue, 03 Aug 2021 12:18:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628018308; cv=none;
        d=google.com; s=arc-20160816;
        b=GMGf/nULHcv8//xLOpB3XNO6ErNyZafEh9N7dIRCUiJ4qzCGtqfNZqVHxdXo0G8eyL
         ulQ12cJhGTNGAVMnd2jr+EoEbJljDWySgt3iYlABnMoCOYEKwjbRFVRISBPhFZgpEh2E
         eRAWJ3YYBtzP/qan80Jn16LvTEXxSeyHedL0v27i3rbdGRs933LuyC7ElKXbOR4r50Wi
         URA7+L8jCW1i3S8D2iE+PBrgcYGUpxsq1bSvncisuLhEheMWqzTXGZknL8nvbmVYKDVw
         JTLlKtvmF+7EX9CyQae/JQq/9S78JTVOclIVpSXEMIvzroXbadDIr8zm2/iCOiPEUIQv
         AAQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=0T1C78ShifMoFbiaZNPa2s0ERFU8Gd4A7QQcsOMyic8=;
        b=EXYBN1UKrgtWGDHrNI1ms0q1/QNmUA/d48lL+s4PX78yldkBE0xSVwV7BJs0RO48Bb
         XeVMeKMm36DoATpTqSbVbwaDpH3RlikWz+qApEPytYLQBbPDz1IufqY6+AzzwB0LMC1W
         6TrkIHVhLH2pAKKmTIFcEIDVtG2pOvtR0KmCabhJBu4MJS+TWh7uRoqeE3/Tf7DLVmFO
         S2qCJuKR0klTQDE6vJjGv7kiRWDQa6DXdSWsVlXZHtCxxtQRyzzJU76aVg+OK3jw4mxm
         keGnRj13rKAPIY4EaXy+NrZNxpRK5hbVmW+G0AVPVDNL0/ObRnzrh26vhSA/Mnn+EuUJ
         +oWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kLqXMEY8;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r9si685232plo.0.2021.08.03.12.18.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 12:18:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D2D4661037;
	Tue,  3 Aug 2021 19:18:25 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@netfilter.org>,
	Florian Westphal <fw@strlen.de>
Cc: netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] netfilter: ipset: Fix maximal range check in hash_ipportnet4_uadt()
Date: Tue,  3 Aug 2021 12:18:13 -0700
Message-Id: <20210803191813.282980-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=kLqXMEY8;       spf=pass
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

net/netfilter/ipset/ip_set_hash_ipportnet.c:249:29: warning: variable
'port_to' is uninitialized when used here [-Wuninitialized]
        if (((u64)ip_to - ip + 1)*(port_to - port + 1) > IPSET_MAX_RANGE)
                                   ^~~~~~~
net/netfilter/ipset/ip_set_hash_ipportnet.c:167:45: note: initialize the
variable 'port_to' to silence this warning
        u32 ip = 0, ip_to = 0, p = 0, port, port_to;
                                                   ^
                                                    = 0
net/netfilter/ipset/ip_set_hash_ipportnet.c:249:39: warning: variable
'port' is uninitialized when used here [-Wuninitialized]
        if (((u64)ip_to - ip + 1)*(port_to - port + 1) > IPSET_MAX_RANGE)
                                             ^~~~
net/netfilter/ipset/ip_set_hash_ipportnet.c:167:36: note: initialize the
variable 'port' to silence this warning
        u32 ip = 0, ip_to = 0, p = 0, port, port_to;
                                          ^
                                           = 0
2 warnings generated.

The range check was added before port and port_to are initialized.
Shuffle the check after the initialization so that the check works
properly.

Fixes: 7fb6c63025ff ("netfilter: ipset: Limit the maximal range of consecutive elements to add/delete")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 net/netfilter/ipset/ip_set_hash_ipportnet.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/netfilter/ipset/ip_set_hash_ipportnet.c b/net/netfilter/ipset/ip_set_hash_ipportnet.c
index b293aa1ff258..7df94f437f60 100644
--- a/net/netfilter/ipset/ip_set_hash_ipportnet.c
+++ b/net/netfilter/ipset/ip_set_hash_ipportnet.c
@@ -246,9 +246,6 @@ hash_ipportnet4_uadt(struct ip_set *set, struct nlattr *tb[],
 		ip_set_mask_from_to(ip, ip_to, cidr);
 	}
 
-	if (((u64)ip_to - ip + 1)*(port_to - port + 1) > IPSET_MAX_RANGE)
-		return -ERANGE;
-
 	port_to = port = ntohs(e.port);
 	if (tb[IPSET_ATTR_PORT_TO]) {
 		port_to = ip_set_get_h16(tb[IPSET_ATTR_PORT_TO]);
@@ -256,6 +253,9 @@ hash_ipportnet4_uadt(struct ip_set *set, struct nlattr *tb[],
 			swap(port, port_to);
 	}
 
+	if (((u64)ip_to - ip + 1)*(port_to - port + 1) > IPSET_MAX_RANGE)
+		return -ERANGE;
+
 	ip2_to = ip2_from;
 	if (tb[IPSET_ATTR_IP2_TO]) {
 		ret = ip_set_get_hostipaddr4(tb[IPSET_ATTR_IP2_TO], &ip2_to);

base-commit: 4d3fc8ead710a06c98d36f382777c6a843a83b7c
-- 
2.33.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210803191813.282980-1-nathan%40kernel.org.
