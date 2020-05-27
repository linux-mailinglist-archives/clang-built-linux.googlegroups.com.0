Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKOBXD3AKGQE5PCCN7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0663F1E3B3D
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 10:11:23 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id x2sf8441741ill.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 01:11:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590567082; cv=pass;
        d=google.com; s=arc-20160816;
        b=tl9wfdv6HurKZM9xY+cS5W8RAvq1AssQBE0/EaQ3FSpd6JAy/Ae/S61ycfGn6Y/xrX
         Q9bSXi++VKejN27C35j/T39t2QcfnEB/fssfnqbFLI3VSDEHlS3UnE1ZiCqhJ9PC2OoV
         I7rJmVwcj1KcnUn+Sj1agjMTuFJh/x5hSC7t20KpBvsUbe4tO+m5EVibxIanO27L3lej
         Magiy4ytKfkp8jhZAr7eZx6MzY2BZrqRrJt6SJFvTTPyr98L7+6uNEvSN9HBQOpml2Zf
         Fh5XvuXTpS6rFl7wAZJb7t13H0SUb/tlHDOeMukNObXeROwo/HfoAWMYlbL0pY0XxiIu
         Xzcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=GlNNKzIrvlIRQFQS7wC8mjH0poVsAheQ9qcW3eWcXho=;
        b=C54i/jXjLUogmwdhp0b/akw6lmU2BMVSJFA3zrISHqjOslpB9hw7p3LFmvAXi/yoFn
         43sW8kuAsWDB0iyaNmbkbMPH9umw3929VPrvbGR6w51a28ekH9ywdPM5mEXv4S05S4uD
         HtBPGrtoELhsnRVO0s7M/8+R+ErtknkVxMsPWGo8Vn60afdJ+ZFv+gGc0X2hVblmWrm/
         5wHAOtQQGtY8r7jL4DvfsWM0CroTZ1EuEW3ymUjXaOXQeBpq6/TlZW1UvLitIQ1bFzGr
         kC302qT7rzAOm8SoKnEsIel8oqFDms1MacMJlyeXi7NpNCQPgic8NglyjX97Wz4SENa2
         dBnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S36TXPD+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GlNNKzIrvlIRQFQS7wC8mjH0poVsAheQ9qcW3eWcXho=;
        b=dor1uW8wlu170uq0oQL7QRI1a8gKi1q9cSG3CXRSQKLb8V1sXIgo9shTPrQ539dqux
         XbdSkA1EvymOiEVFRsdiVsQCBEufFZfkj5EuhCe/MRLmyhfCSMzKK8fzVaTbWx58kd2W
         3Tdo0BepqiSyUEn+a4wK/alfJPQO+ZVmkEbHv6uKrT/3vtWiuFVDXuU6hmsBFwqwoPNW
         YETZN1Cja/XCQTofANF+JDeynSPsA56tU+M8qEqcM6yOiknz2jSwXgStFlzM5L5bo/0l
         XsHjijhn1oExCNuMXV8bHfpuFYOTB3kUmSYoR5FDyzpTjp1kuvPE2KVS0f51Rjo2j7gy
         zHeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GlNNKzIrvlIRQFQS7wC8mjH0poVsAheQ9qcW3eWcXho=;
        b=f+c1I+qZ8liGLo2AfvC63P4qIQemIFcnh83Xb9QZ4yFwOIRx7gvjxFChOC2hxuzoCL
         oHwW2v9nac0ybm0v3h+VVKboTCr2iOzfDhX6Wtdeh6WF1sICKFbhu6oyNBQQc2L5434B
         trXaKVQvrpntFy4fkI047M138r6NlgzKB72FwTQ11BiB/FvByuTwK7/YSZKqeBdGGYHo
         40LqgfFqLhNUx8ftIigvJtU9pKgHLOUPy/iOPI9Faw0nBlGCroSFw5BMCNBj0o8ymYeS
         jRy517BOaCbAWQ6jPgLs7t3f/Vixf0YvAh2+uduEaPeElV3VJ5oIWv3cD/L8CZrIgjac
         oTwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GlNNKzIrvlIRQFQS7wC8mjH0poVsAheQ9qcW3eWcXho=;
        b=Z2QudBMtWDPzQE8uJvhjnnVZwJMdrYaewtqgPEwOST5Xs2M9rUXCKow+gcvxZPUN76
         36lTJpONw8Em8ohiapOgXp3tkYQR/IP7Sp5oV5BNk+cQGvtXZHotwLtvBYfSQcwf2R+E
         LyAhCl2lCcZWk0AvOkwCcJFg8/aP2K7CRiGQxdSo2izrODXOqC+MzriMt5kgb2ioM8Kf
         2oKsuu1gDgnsEO+EhufY+uiwR34MQywE7/IBrOlctSvoawtoMSCJhoVHSopyDUlJ4vl2
         nbDRrTCIFrdH+mwmjcHQkD7nVRENjyiysx0vW0zJYML5GHc+NiHBmmJe3lTnhU1t0Usj
         TGtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Rn+fV+Z9JGC03oM997Q5qpWHCPFV3jOsLSwjP4HPCh4z5lOq9
	a3Uk+r+U7+ysyk8Qxlc27lA=
X-Google-Smtp-Source: ABdhPJya/oiw0Wiwa3KBMY2i7y7W478GvAl955vZeHb9XMD4+IInIIjyNuiMlRdQHnm/y8UCjkY90Q==
X-Received: by 2002:a6b:c706:: with SMTP id x6mr19883089iof.112.1590567082024;
        Wed, 27 May 2020 01:11:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c80c:: with SMTP id p12ls870459jao.7.gmail; Wed, 27 May
 2020 01:11:21 -0700 (PDT)
X-Received: by 2002:a02:82cd:: with SMTP id u13mr4628628jag.32.1590567081706;
        Wed, 27 May 2020 01:11:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590567081; cv=none;
        d=google.com; s=arc-20160816;
        b=S4jDprXbGeLRTVsc30hkIY8tFw1dsevBxmmGQSOUMseIH4vKVz2ROw1aVcFfwBim0J
         BSH3FpoqKEN7+9SKIens4cmK51AWaQGYbl2OpV32qsaC9aKJNeKZZ7ZCPSsylmcPm3iV
         iI0r0gd0QtpA7Lsgl5ufOWyyg5BfJ9TusHu4me4kK5vPF9gwcj0A5f5wucGzS4j2II4Y
         STsbyIQTf3iRBjBYzwj+pTKVj9Ey7tP8uGVkEK1zmmko9Z5UYWxxHN5VuESnwnnzf3bR
         YYS5Nbd1D6kXXWZ2pCc2rrD2iPVLYSKm3eI3z/L2DKkRBbScaveD5nWVyqXhZdWm8EAe
         MYFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=HqOS3b0kz9buhGMAwpM1e//tKnAWm9QINLirTrl38pg=;
        b=xRkCr8IZm/381vk0WktnZV9xWTsnE+Ug8BOQKxLt4EWL3/uEsBWzIJ8eaeStxyRO8G
         K2hrF0rpXtaBar8jWmq0nuiRMgOzIWsajBweQ0cjX9RPVhD0UxqBsmIqPGjntDE0tqvR
         jp4iCwh+GcyLlEHRzeLltkbkuTSBmByEEe6aCqtICsGaL7MxCROX/+SGIFzToQOAVwEQ
         hSDOyKU6dcVgjgbIiX2xjY+SX6nousdEpmfKP2ehLibBI/6pUbiG54hbcKlCIAivzpR5
         R+V90IwcaN9tZZES6F6jOuji7A4qlgt+LPJcej06ixQafwW0/yeaLfwMfYjzq5Vy6/5O
         O0vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S36TXPD+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id g12si120958iow.3.2020.05.27.01.11.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 01:11:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id x18so8744043pll.6
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 01:11:21 -0700 (PDT)
X-Received: by 2002:a17:90a:7bcb:: with SMTP id d11mr3663001pjl.209.1590567080839;
        Wed, 27 May 2020 01:11:20 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id v127sm1449496pfv.99.2020.05.27.01.11.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 01:11:20 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@netfilter.org>,
	Florian Westphal <fw@strlen.de>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Cc: netfilter-devel@vger.kernel.org,
	coreteam@netfilter.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH net] netfilter: conntrack: Pass value of ctinfo to __nf_conntrack_update
Date: Wed, 27 May 2020 01:10:39 -0700
Message-Id: <20200527081038.3506095-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=S36TXPD+;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns:

net/netfilter/nf_conntrack_core.c:2068:21: warning: variable 'ctinfo' is
uninitialized when used here [-Wuninitialized]
        nf_ct_set(skb, ct, ctinfo);
                           ^~~~~~
net/netfilter/nf_conntrack_core.c:2024:2: note: variable 'ctinfo' is
declared here
        enum ip_conntrack_info ctinfo;
        ^
1 warning generated.

nf_conntrack_update was split up into nf_conntrack_update and
__nf_conntrack_update, where the assignment of ctifno is in
nf_conntrack_update but it is used in __nf_conntrack_update.

Pass the value of ctinfo from nf_conntrack_update to
__nf_conntrack_update so that uninitialized memory is not used
and everything works properly.

Fixes: ee04805ff54a ("netfilter: conntrack: make conntrack userspace helpers work again")
Link: https://github.com/ClangBuiltLinux/linux/issues/1039
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 net/netfilter/nf_conntrack_core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/net/netfilter/nf_conntrack_core.c b/net/netfilter/nf_conntrack_core.c
index 08e0c19f6b39..e3b054a2f796 100644
--- a/net/netfilter/nf_conntrack_core.c
+++ b/net/netfilter/nf_conntrack_core.c
@@ -2017,11 +2017,11 @@ static void nf_conntrack_attach(struct sk_buff *nskb, const struct sk_buff *skb)
 }
 
 static int __nf_conntrack_update(struct net *net, struct sk_buff *skb,
-				 struct nf_conn *ct)
+				 struct nf_conn *ct,
+				 enum ip_conntrack_info ctinfo)
 {
 	struct nf_conntrack_tuple_hash *h;
 	struct nf_conntrack_tuple tuple;
-	enum ip_conntrack_info ctinfo;
 	struct nf_nat_hook *nat_hook;
 	unsigned int status;
 	int dataoff;
@@ -2146,7 +2146,7 @@ static int nf_conntrack_update(struct net *net, struct sk_buff *skb)
 		return 0;
 
 	if (!nf_ct_is_confirmed(ct)) {
-		err = __nf_conntrack_update(net, skb, ct);
+		err = __nf_conntrack_update(net, skb, ct, ctinfo);
 		if (err < 0)
 			return err;
 	}

base-commit: a4976a3ef844c510ae9120290b23e9f3f47d6bce
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527081038.3506095-1-natechancellor%40gmail.com.
