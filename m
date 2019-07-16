Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBIWKW7UQKGQEEVC3Y3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D8C6AB09
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 16:54:27 +0200 (CEST)
Received: by mail-yw1-xc38.google.com with SMTP id l141sf16259717ywc.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 07:54:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563288866; cv=pass;
        d=google.com; s=arc-20160816;
        b=kPLwTdXQqWIMw9hWznyeRVEnKmMYtDXoC5SMeOUX4ueUxQa44MMGu/Lbi4kBkPULsY
         4+Sgr/niMt6RY0929r8tTtXjU1tWF7jhIUHdCCOefzfmIOFZ1Pj2TquhBARucMe+rpfM
         CkqcdOPeGQs2plOHAa1yu6U/GArH2kLXYnSFvGk0SV0ZyY9kbT4fLQqMIZYWevfoCMLO
         GlxtYFoswt4q+MgkIHg6TaeVigzwk42gE7Temkmgi12UghMpb6R7ab/a1uoUjYqpH3aU
         WzAvkQVhBHdyRAVjkLnj/U2DqyEjrFRjz/MMl2nnIe2iEiDBmlKZZ8NaTiF0Qa0TJzpw
         phWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=aEJODHC50RamSanRR81b35jkO50gGMNVFm61zBRG3Aw=;
        b=mxxIF4LYXorTrpXYlbV5ziKHW1Jn8TzxCCSH2B246ktHnI52Wa8Hthm5QChP2zZWad
         BeWo7OAbeyvE1bCCwmavxSNZg5ac9X9RnYEbQqzhaoelIgqysxNXtsXYRrhZIcjwBUrF
         EMNzhepma9oT2oLU3z4ZeXcGmliBW4+ZUBbBg2eQHWb9H4/zKjSPN6C8KwfA84o4t8wj
         PGu/DWCeLcZeKoPDOaJWQZw6DHWNBjL1gR8TAvS7SGUs884XbEj1QrB81a/AqHqp6GVm
         YmgJNh2ecrsC8rxw2Qi+KBLJnlFK90mvPc8BRbiqFxPrANldEbgzcWYpgSAYwS/eqYZv
         Ev7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b="p755n/nX";
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aEJODHC50RamSanRR81b35jkO50gGMNVFm61zBRG3Aw=;
        b=L3QmbSz5mAjv3BJ2WOnRWqv3rYdvi5F0B3JE0ROFN2MMBeGQ6TiaOzX8zz4hOeStoD
         PsEYDGtCj9DByVBrQa632uhJGNEOxVg/rU5pUvKIGAbY0R9rOBUS7Jc3f1S96LqbeLEl
         n0Lhdo9h+NO4J6VBemAHP87elPGv5s5mQg3M643iF5TTNPcMgVUFVzomodTPhXrWl8K3
         pymnya0oawej/nNjb9zBfUpEqriGZ78UTuoAoRIH4dTsiIOgdWxU/cGTcxjUQZRxfFqV
         dJT8/Y2HovdKC1m9yNHX8Fui5nS+xKzJksXWHcRdvMb+lvJop06wB4ufdIH3AHmfdz7J
         jwRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aEJODHC50RamSanRR81b35jkO50gGMNVFm61zBRG3Aw=;
        b=Dg6fE93PCAO+GwAzSO4gGZAisaG8t3SuTQ096tOsVcTcfhtDgnb5VRTax555KE/Qat
         ZdDA5D7Q90Wk3b4VfQdW/fTfI4RN6gyY6yRJ0hQ4VEeGJ/MoJN093lpQKUViZEYqoKfA
         iOqE3AnB6HRGo0uir8xJDBiczmwFzl6EAeWEVGw5nq5SlPek7xYgZ6TwUSNxDnrK0SZp
         Kk059AWZnshxRbDSMfW1A3IudqZsXtpgAf95gvqChEC8iaFUk6tCeejWhp9GrG1/Smt7
         cYKF8vRhAHWt5KiGF1O4/ElPCm0OkU453ldYFO1lAhhIwLOwnZo5KT5am1SDTPEttdPJ
         +FCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW38vR0Oy1H2udbfPs9Hwbr93gSp6R8C45PWR0cAYFZKd3LgfSt
	9FK5cseO6RtTJq6y11cUXEM=
X-Google-Smtp-Source: APXvYqzZAKEo2/cjf5WXYKMftae3Osd8Dy2a/zZoLRuZfADI9IEzFBoiWihew0q/GvQwH9SkfHzmvQ==
X-Received: by 2002:a81:1bcb:: with SMTP id b194mr20369920ywb.321.1563288866164;
        Tue, 16 Jul 2019 07:54:26 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7204:: with SMTP id n4ls2817766ybc.1.gmail; Tue, 16 Jul
 2019 07:54:25 -0700 (PDT)
X-Received: by 2002:a25:1c07:: with SMTP id c7mr20664145ybc.156.1563288865210;
        Tue, 16 Jul 2019 07:54:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563288865; cv=none;
        d=google.com; s=arc-20160816;
        b=LpZ3kkoRx4bJl5oW/edaHLoOYfpzSgM9sgnQAsj6qaAfk9Fu9hPaJzR9M7GEWS8O+/
         BsivU2Sd4Jf4DjKS1kSKdWru7XeWBoL2cqtnW6v2f9To5jZXTq4DZJ/1FBEFgirSJpUq
         kZR56aVObXk+sxIBQ6Awcha8UH6GjGf55xhuErAF0h91zGeK3NJl43WtaBvy9ZOr1bJa
         1aw+r+nkHtm504Y5ivRktnuEjl5VqNLUPuNjByLZS18NfipYOWQ/Xy6gaf28iZPDjUjx
         gGuACPxVa2D+QYlQH+dUZtNNyeB4hgWqcFm4605TFDI6FRqzWc3K9zu2wAlgGwYXTAlY
         MggQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=efDi+xP5INucJ72Ory5WSWKAWY28AH8aBSxZ1vzGwHc=;
        b=RWsX+l7z7QQS1SI9WbBHdJNTU97TIcAtS9QyDhDwsh/3mpSEbfc+8z0HpKE13CgRGd
         mVCWPMJDCOP3g0jKF1jBvFSdUUHhP1QSBa8BQyKNPImtsEZvVG0Q4VQqshR3hzHvUsNV
         BiuwH5Ejffy27RpdjFnPonoLdqpBAiM/oR1F1vTOUc+RRIC/UwXVzggZR9IYL9MFGs6R
         0E9yjsi5d7pT35J6y2OpGXnceWJBPV3Eap72UQPX+DeTr7a/yGYhBqKGjFf4KkVxAKZ0
         41uILdFN4YyKMFvyIsiR3y3LQdPVX8SmV/yN0y0vI3I0wdEB54cI9Wspr+o42c9ClELi
         p/VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b="p755n/nX";
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id g15si1052407ybq.0.2019.07.16.07.54.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 07:54:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id 201so14782671qkm.9
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jul 2019 07:54:25 -0700 (PDT)
X-Received: by 2002:a37:dc42:: with SMTP id v63mr8083647qki.488.1563288864804;
        Tue, 16 Jul 2019 07:54:24 -0700 (PDT)
Received: from qcai.nay.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id p13sm8008218qkj.4.2019.07.16.07.54.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 07:54:24 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: davem@davemloft.net
Cc: willemb@google.com,
	clang-built-linux@googlegroups.com,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Qian Cai <cai@lca.pw>
Subject: [PATCH] skbuff: fix compilation warnings in skb_dump()
Date: Tue, 16 Jul 2019 10:54:00 -0400
Message-Id: <1563288840-1913-1-git-send-email-cai@lca.pw>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b="p755n/nX";       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::743 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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

The commit 6413139dfc64 ("skbuff: increase verbosity when dumping skb
data") introduced a few compilation warnings.

net/core/skbuff.c:766:32: warning: format specifies type 'unsigned
short' but the argument has type 'unsigned int' [-Wformat]
                       level, sk->sk_family, sk->sk_type,
sk->sk_protocol);
                                             ^~~~~~~~~~~
net/core/skbuff.c:766:45: warning: format specifies type 'unsigned
short' but the argument has type 'unsigned int' [-Wformat]
                       level, sk->sk_family, sk->sk_type,
sk->sk_protocol);
^~~~~~~~~~~~~~~

Fix them by using the proper types, and also fix some checkpatch
warnings by using pr_info().

WARNING: printk() should include KERN_<LEVEL> facility level
+		printk("%ssk family=%hu type=%u proto=%u\n",

Fixes: 6413139dfc64 ("skbuff: increase verbosity when dumping skb data")
Signed-off-by: Qian Cai <cai@lca.pw>
---
 net/core/skbuff.c | 44 ++++++++++++++++++++++----------------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/net/core/skbuff.c b/net/core/skbuff.c
index 6f1e31f674a3..fa1e78f7bb96 100644
--- a/net/core/skbuff.c
+++ b/net/core/skbuff.c
@@ -740,30 +740,30 @@ void skb_dump(const char *level, const struct sk_buff *skb, bool full_pkt)
 	has_mac = skb_mac_header_was_set(skb);
 	has_trans = skb_transport_header_was_set(skb);
 
-	printk("%sskb len=%u headroom=%u headlen=%u tailroom=%u\n"
-	       "mac=(%d,%d) net=(%d,%d) trans=%d\n"
-	       "shinfo(txflags=%u nr_frags=%u gso(size=%hu type=%u segs=%hu))\n"
-	       "csum(0x%x ip_summed=%u complete_sw=%u valid=%u level=%u)\n"
-	       "hash(0x%x sw=%u l4=%u) proto=0x%04x pkttype=%u iif=%d\n",
-	       level, skb->len, headroom, skb_headlen(skb), tailroom,
-	       has_mac ? skb->mac_header : -1,
-	       has_mac ? skb_mac_header_len(skb) : -1,
-	       skb->network_header,
-	       has_trans ? skb_network_header_len(skb) : -1,
-	       has_trans ? skb->transport_header : -1,
-	       sh->tx_flags, sh->nr_frags,
-	       sh->gso_size, sh->gso_type, sh->gso_segs,
-	       skb->csum, skb->ip_summed, skb->csum_complete_sw,
-	       skb->csum_valid, skb->csum_level,
-	       skb->hash, skb->sw_hash, skb->l4_hash,
-	       ntohs(skb->protocol), skb->pkt_type, skb->skb_iif);
+	pr_info("%sskb len=%u headroom=%u headlen=%u tailroom=%u\n"
+		"mac=(%d,%d) net=(%d,%d) trans=%d\n"
+		"shinfo(txflags=%u nr_frags=%u gso(size=%hu type=%u segs=%hu))\n"
+		"csum(0x%x ip_summed=%u complete_sw=%u valid=%u level=%u)\n"
+		"hash(0x%x sw=%u l4=%u) proto=0x%04x pkttype=%u iif=%d\n",
+		level, skb->len, headroom, skb_headlen(skb), tailroom,
+		has_mac ? skb->mac_header : -1,
+		has_mac ? skb_mac_header_len(skb) : -1,
+		skb->network_header,
+		has_trans ? skb_network_header_len(skb) : -1,
+		has_trans ? skb->transport_header : -1,
+		sh->tx_flags, sh->nr_frags,
+		sh->gso_size, sh->gso_type, sh->gso_segs,
+		skb->csum, skb->ip_summed, skb->csum_complete_sw,
+		skb->csum_valid, skb->csum_level,
+		skb->hash, skb->sw_hash, skb->l4_hash,
+		ntohs(skb->protocol), skb->pkt_type, skb->skb_iif);
 
 	if (dev)
-		printk("%sdev name=%s feat=0x%pNF\n",
-		       level, dev->name, &dev->features);
+		pr_info("%sdev name=%s feat=0x%pNF\n",
+			level, dev->name, &dev->features);
 	if (sk)
-		printk("%ssk family=%hu type=%hu proto=%hu\n",
-		       level, sk->sk_family, sk->sk_type, sk->sk_protocol);
+		pr_info("%ssk family=%hu type=%u proto=%u\n",
+			level, sk->sk_family, sk->sk_type, sk->sk_protocol);
 
 	if (full_pkt && headroom)
 		print_hex_dump(level, "skb headroom: ", DUMP_PREFIX_OFFSET,
@@ -801,7 +801,7 @@ void skb_dump(const char *level, const struct sk_buff *skb, bool full_pkt)
 	}
 
 	if (full_pkt && skb_has_frag_list(skb)) {
-		printk("skb fraglist:\n");
+		pr_info("skb fraglist:\n");
 		skb_walk_frags(skb, list_skb)
 			skb_dump(level, list_skb, true);
 	}
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1563288840-1913-1-git-send-email-cai%40lca.pw.
