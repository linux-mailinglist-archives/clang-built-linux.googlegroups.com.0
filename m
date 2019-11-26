Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBT4O63XAKGQEFQ7R6DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEE610A51D
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 21:13:05 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id 14sf1885901uar.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 12:13:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574799184; cv=pass;
        d=google.com; s=arc-20160816;
        b=qES4g2kugJh6G9R5MYuS1n6VGt9P8rVajlMRxUgxkhRvWHaIwkFOnwVTzWGhLEz+rQ
         lwY1VpGHW5skJMvFaR5KGxgol+SgRNmHyv+gfAfJmoxUhi+1lBhwncBpn5s6l+gCuiHl
         dqJiLNhIEOB3g16HPyIemtt3oVALVo9G7Bv1JCdxQ6rxMw0UhA6M6Bt2dsa2oF4oOB8U
         QWOd7pwtwQ/ntOMxoC4DsGmdeTri1kJUDeShOWOg02EyyrRKEv6EzIMyw3TSbukpmLWp
         nlPCS9c7DyemaLsHejr2KAdfIjwMWXuwurL1+f/+a6ygQEePVRatYsjproC72+7TRhVD
         yuew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=nKTLubhM3aEqn7k6S1NbISFKnb+VCoMR2S7mvLeerDk=;
        b=HDTwd5ow9O1eAf3sH1e/hyd8dTQZmGu4izXajpFmWUOuDG5Pc9weOwS3LPnMCNmMq3
         6irl/7kPicXRJFYB1FP1ZS8o75UZ9pigJY79YGf17OqHiSq3MsE2mF5fIYfU0A6/id8Q
         wgz7bEi5aeFRbS2OXs3H2Epi4VaF6XjHOup3bKk+dHf12oOglL5mNcSEgIUHEJXm78zv
         SLApLFEQq1bPt7Wbznguf5mBwA1H+HAsOSZdl5pw3T9cHVEOWqLQPBQnfffzFvUOTky5
         /7VhpFxEPrvYnt2dr8PKPMqab2UaRS2AhoYGuFItvRTXLDP96EcjVtKTl9WRHX1qJL7W
         E0Gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pLKc4Sgt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nKTLubhM3aEqn7k6S1NbISFKnb+VCoMR2S7mvLeerDk=;
        b=MhNxnZUcGkxfXAT9vv4AK/ah+eQarRqr0c9bafrMaD4FLTDJGB5/ysV3aaNjTTIUnb
         /N0HQQtILpq6Ni10Fr9Z+eaOEu3V5/UUIGrqhcs5Ri+xDqmOylJLqiqVWaqMD/7mO5r/
         VW7VpoiP43sEolWPC/qkGL/D9ofug4C9CDcwuySJHlprCsQeGaPQrtOz6yvJaKj8zE+V
         ljMGESSGqtkf35wRmhs95ame353M7COFVgiYY28wVvysY7f4VgGK35NeH+xZ1oG/wO+7
         8/u/8B+rhP8/TCTNRn7ah5iaQCABtMqy99STRIhW07Xdim6aKcP1Y8Ke1Pp6VoJwOOhF
         AU2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nKTLubhM3aEqn7k6S1NbISFKnb+VCoMR2S7mvLeerDk=;
        b=pnmoIC7HLAtdTkh0N3KbVgm97V2a08vhz7mey56F97+CZLFIEOAvbYyBSfPF87eVk7
         H8X/uqA9k1lpMwr0MFqd0ZIjKdVPrCzxAqdUOpQz42qky+ISRb5jPGAl8jCNYdJ9ZBsl
         0wDHb/eXVIel32lGkldB6xDrRXL9GEVQOB+V7cfhqnKd6nzfRQ2F6ASkILDmJn+rS2yD
         MhkXgA1PBO7IWZxZ76fJbmAnEEO5f8viymZeZ4rAN5HVkqwz+SlNfubYlAYL8WAorAVK
         SkYI/1LlIEfJeMwOAR2GJBm2cLzAT8S6u7ElOfz96uIGx05Tryebjay6jEcydooXho1r
         +bZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nKTLubhM3aEqn7k6S1NbISFKnb+VCoMR2S7mvLeerDk=;
        b=VckduQWi63c0/6e6OmAQWJ4f9Zt/SlI/P27xVGnL3bNrIgynYM2V2WopX2VyOs/+LS
         eu8aVvwD86V61WWGBFNrpznUvFrVDiEq9ied1PnWpoJyfSdgpY/nDHucF/iauNkJDpNB
         9N6Y5Ca+d4Ie4lu/ryCl2cBOvDthu+GJdzJ3cJ4D/m+DvexUdsxLoH5eRExeAjEyCBqN
         Bc3xVSilk91HOTNeeIIATtUvB/IptECetNU0wKUJ4xRb6GWSqzrrF2xTJIUxAk9r/HBT
         ffrkVsHSKRwW9v34p0rZE01zGUrZN4/ezPxDuiIswScDVLans5OYqN1lclqk5NiYMY17
         TJoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAULy1gOFqE704Z6iaxXwO/KyfJc4QHo0LxVu0ny/RX+cE6Y2wve
	yBQNGNXou5M9cIfz5pcnR74=
X-Google-Smtp-Source: APXvYqy/R1Kxm+AGJsLxM6YgRyLuWcBX8zsHoKgwEnnCh40I521N4JeEwmG9EyfmohTDIq1QgIxlFA==
X-Received: by 2002:ab0:2853:: with SMTP id c19mr227942uaq.5.1574799183940;
        Tue, 26 Nov 2019 12:13:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:22db:: with SMTP id a27ls968812vsh.0.gmail; Tue, 26
 Nov 2019 12:13:03 -0800 (PST)
X-Received: by 2002:a67:5d47:: with SMTP id r68mr24922748vsb.103.1574799183565;
        Tue, 26 Nov 2019 12:13:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574799183; cv=none;
        d=google.com; s=arc-20160816;
        b=vZ7VW42gwrXmiTkrtty89ZHtBfC7T8GqyHgA2KN22U/4ZRax242pRcSHOjvk9D5kSM
         KWr6FX8KkE7MX+7dfx/fWUyR2XDBTjWzfIh1oJFIK/pWpBW2dHD5J7UVLP+NhTyqRCqh
         k0AkaT4jr1ynCSa2TwMsm8Nh60ygNu+yhs/SkK1bI5zwtJppLZCj2FkYE9fx0wheLKiS
         3FWSVzxTY6jrhg+ervnD8l1tR/sEXFQQBjU7oDSD4J40zsN2nUMknyW7zyGbtV2wtyYs
         QcRQdDrYR9rXlfDo48NjR2kt/hLtb7BKAhESdmBF0FBe94d3G96KCX0YGuYT0wGsaIGp
         NMuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=nWXvBe8iHv2e1HrWC91gojWLhn523EghSo2ykxPHbqU=;
        b=ejUOmjg7l2ASc//ne0IEamQK2C2PwBhrdUUOlNLw/OhK5vX+el6znFJoq+pdl57h2O
         6r+s5KES8VipSELhfOAYoHIH5ceLcwkqNzv1bg59UDWITd9F8O1VtQr3aExftMHwhNT2
         pNfZ26+35K9Xmqr0mIcDKWzLbqlVUn+dEA5kWBi+KRK+Wn+inQ44kQxlhjNPx4q9N4zW
         gkYmzndpDUlKWesULygWilUzPIPnJTUbaV+tJBS5g6PS8B1aWauzd0EIFfnaMX4SY/1D
         RnEpkecta2mrQTBIHtvDOX6PH7FVQVxcdJUm0dOqhS/3r+Cd3vxOpJnaoikTDAjA8Esr
         2qaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pLKc4Sgt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id h143si420756vkh.1.2019.11.26.12.13.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2019 12:13:03 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id k196so1503403oib.2
        for <clang-built-linux@googlegroups.com>; Tue, 26 Nov 2019 12:13:03 -0800 (PST)
X-Received: by 2002:aca:b708:: with SMTP id h8mr787878oif.126.1574799182939;
        Tue, 26 Nov 2019 12:13:02 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::7])
        by smtp.gmail.com with ESMTPSA id e186sm4033064oia.47.2019.11.26.12.13.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2019 12:13:02 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@netfilter.org>,
	Florian Westphal <fw@strlen.de>
Cc: netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] netfilter: nf_flow_table_offload: Don't use offset uninitialized in flow_offload_port_{d,s}nat
Date: Tue, 26 Nov 2019 13:12:26 -0700
Message-Id: <20191126201226.51857-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pLKc4Sgt;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns (trimmed the second warning for brevity):

../net/netfilter/nf_flow_table_offload.c:342:2: warning: variable
'offset' is used uninitialized whenever switch default is taken
[-Wsometimes-uninitialized]
        default:
        ^~~~~~~
../net/netfilter/nf_flow_table_offload.c:346:57: note: uninitialized use
occurs here
        flow_offload_mangle(entry, flow_offload_l4proto(flow), offset,
                                                               ^~~~~~
../net/netfilter/nf_flow_table_offload.c:331:12: note: initialize the
variable 'offset' to silence this warning
        u32 offset;
                  ^
                   = 0

Match what was done in the flow_offload_ipv{4,6}_{d,s}nat functions and
just return in the default case, since port would also be uninitialized.

Fixes: c29f74e0df7a ("netfilter: nf_flow_table: hardware offload support")
Link: https://github.com/ClangBuiltLinux/linux/issues/780
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 net/netfilter/nf_flow_table_offload.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/netfilter/nf_flow_table_offload.c b/net/netfilter/nf_flow_table_offload.c
index c54c9a6cc981..a77a6e1cfd64 100644
--- a/net/netfilter/nf_flow_table_offload.c
+++ b/net/netfilter/nf_flow_table_offload.c
@@ -340,7 +340,7 @@ static void flow_offload_port_snat(struct net *net,
 		offset = 0; /* offsetof(struct tcphdr, dest); */
 		break;
 	default:
-		break;
+		return;
 	}
 
 	flow_offload_mangle(entry, flow_offload_l4proto(flow), offset,
@@ -367,7 +367,7 @@ static void flow_offload_port_dnat(struct net *net,
 		offset = 0; /* offsetof(struct tcphdr, dest); */
 		break;
 	default:
-		break;
+		return;
 	}
 
 	flow_offload_mangle(entry, flow_offload_l4proto(flow), offset,
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191126201226.51857-1-natechancellor%40gmail.com.
