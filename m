Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBGXBW7UQKGQEYISQGUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDE46AC1D
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 17:43:24 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id o6sf10372770plk.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 08:43:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563291802; cv=pass;
        d=google.com; s=arc-20160816;
        b=bfgmNq93WqzRihpBF+JeUBaHVjbx4zIEagS32ohtLpXo0Df45GQo1l4FzDcdNa2BGy
         itvBZf2x6Kuee7ivTV3emGKtnyDzHOGiMQss78/og+fp+s0EOK22U0pEzzJTqrtKf6Px
         xxrwCC4EVAPnaNFUkSejEXSrllx14arcIePp5FUUcHR2w2YvnVUf4EYj4X8KGsW23G1z
         nShjPl1szLd6XadBMyQl3qN7HdMK+gsA6jjnU7CrjcxhoPfCIqDa9Ph1h/B93bCa+gaF
         36DukxI7TbD0pGtJisUDhXKUKaQm2N3abC2LUX2SKcWcd+43zVJ48ewC8pGgvFrkXn3+
         YCnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=4/qLds6a+rFLcKYGPInihUwTET8nYLtExS5LsgmTUkA=;
        b=KHAxeaDQGvX72RBxPoUKtLGBHuaUx+0gfjaEtUgmSgb9yS+LKG8nSMjCKr97gbh//Q
         TE2HXKbcaf2IUBgMvT8UM0RskQiwIehW83aArk1RRRQ1EL3e1k585DoQDmjYckCdjpnX
         DkeQ2M1I7njH93Aji2u/K8+lOwJj3iLV+sU+hR6MhiNPrAL6D0Z8OPSJQzc/Apa2inke
         hURa0S1CSc2xBOHSfXIbzkog4PCraAT522/OIRMSK/Givzln0pP7lbqld95VIVHZcktc
         xyDr5aDbSNbNCv6c/ddPWzrolCycXYkpsqks4kQLVVG6qoIczcVkQ/WAbOv9GDThyxbQ
         6CeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b="D/eG7DaM";
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4/qLds6a+rFLcKYGPInihUwTET8nYLtExS5LsgmTUkA=;
        b=lMd6ZrE/K7Y2AKm8QFJZCubhKj2Lxz6GxA/T68OAiMLuxemgbJ+NdmrxVRmclqVIa/
         1udAQ2zWB/kbyXTXHUACXjsO4XsN2c1HxLa1MFHH2xJX3MfVeLbQPM2uafidnIHsWDdn
         7x4628msjs9ze0TvFIIY7of+hCyTIIY0uhuMjTE2bwJW76Xi73WFMrFNQDgIYsqtOfLa
         5vjUpeGBoMU0gvVbKx5tnKx0Pu43dqF1VSlhHxwGUSsfH+prhnFT0Agv3dx883EMdUGr
         W2QShiDQDm9SlTmluxBnFbiT4AX6VnFgcAb2olNiiqQ3zlqaINmSQG/a+im1w0tLEp8V
         85rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4/qLds6a+rFLcKYGPInihUwTET8nYLtExS5LsgmTUkA=;
        b=RtK4wAGosEKgmexQ241WQ+EvwbrgC/lQ/+1q1dBD9CxbE0UeCYGUg17t5qtMRQZpKL
         d2od12c6PCAdpTamWO+BViSCwBj5dO/bpRJoufHEB4L/U7F3xAca8QruImVNx52JXBgp
         jxnLOV44T84JRfesC3NNjwThGmDazvy7g79JL//zPRCh6Sk6w5EfRqgiROal/e+IyWMJ
         Co/3daI0g4m9MD1SAIpe3QzDmSn8r7YQaHwkDCFLSd8vQ5yVr52SDDrWMpn+fBImhbXu
         iMmQJyN/AjLIZ2mZMhpvINqM17gAnz1ivUGRGEbSQ4zvwPDc+ajqgmWkBbi9+tcbqE7a
         Wp+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVZETzBAUhq084XXc5RX1qfSLH9U0jx4WGmtl8UhMWL21BE/jU8
	iMFe2sbDOxtmoWZjY87v9o8=
X-Google-Smtp-Source: APXvYqyFoNOCBuuX2kmKKwUsnlS25QsMnb5py4mDrNuVz4tFpfQefBG6JSJc2KrqSzy2GpXLnLzI4g==
X-Received: by 2002:a17:902:381:: with SMTP id d1mr35726774pld.331.1563291802697;
        Tue, 16 Jul 2019 08:43:22 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:52d2:: with SMTP id g201ls3581052pfb.9.gmail; Tue, 16
 Jul 2019 08:43:22 -0700 (PDT)
X-Received: by 2002:a63:f953:: with SMTP id q19mr34580306pgk.367.1563291802266;
        Tue, 16 Jul 2019 08:43:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563291802; cv=none;
        d=google.com; s=arc-20160816;
        b=iMEbCyiw34jRdKPNZjzVUBK29l/v0yBdOXZHr33EFJd+namYiECQ0H0XyPGnYnWgCJ
         9ARebg2S+jz/NNaYqgSG64BLWqYk0Mi8I0y0CjajMtBaFjlyeAvxQQhfoS4YH5HSEqeH
         ECK5Bxms0HWJsiIbvJPsmbju3FkBpTbHJhAdFjCzRWn5nao1+xsVjIbWVQbrq8K25rC/
         ECB4PJoZEOKtbaCkoM03/SLoakUWr9UpbBbPlXXuc+4GW2DEjhyeiUBBrvu+Tx1GhsKj
         AbFdLunExAkF6KShxXC8FsLPtbSYiPYqom/BdDQ9GuAPsvJZuw8WcNp+1MG9H4Hy4WH9
         HQ2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=HUkhdlpY8O9DhVB5JjD9+mrau6suzYr7ThtC/VAQnfg=;
        b=koQDXm+LGe8lXN8Y6ce3/ogMwRW6AcBEY6YQtDsgs81RN09s0444RpeaNODDNxZTFf
         O7QggwzznJJvYVpBaHMMVS59OLoQizC3fB8ukTmn4j8OCzgYNUWUJpJo59IUFmlGoZux
         5dR7xWGEJJMg4/6K4c5DoOd611UIwONLciagjuu1qITV9YnXPj3A58epybr6PHU4oJEe
         t2021LTE9gDmb7QEdLcBaNeXRr4ppz3/rmCgVCJ4//G9PZFaHZa1z6idYJY+j5eNmUbN
         7u5tDlU5G46ErI6nJdYQ9VV1O/Qo7eWk8mmD7sO+rHHPOQ1/azptnAAGq1cHOFMg2wob
         Ewwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b="D/eG7DaM";
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id w190si687930pgd.2.2019.07.16.08.43.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 08:43:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id w17so20026605qto.10
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jul 2019 08:43:22 -0700 (PDT)
X-Received: by 2002:ac8:275a:: with SMTP id h26mr23194639qth.345.1563291801305;
        Tue, 16 Jul 2019 08:43:21 -0700 (PDT)
Received: from qcai.nay.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id r5sm9623617qkc.42.2019.07.16.08.43.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 08:43:20 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: davem@davemloft.net
Cc: willemb@google.com,
	joe@perches.com,
	clang-built-linux@googlegroups.com,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Qian Cai <cai@lca.pw>
Subject: [PATCH net v2] skbuff: fix compilation warnings in skb_dump()
Date: Tue, 16 Jul 2019 11:43:05 -0400
Message-Id: <1563291785-6545-1-git-send-email-cai@lca.pw>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b="D/eG7DaM";       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::841 as
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

Fix them by using the proper types.

Fixes: 6413139dfc64 ("skbuff: increase verbosity when dumping skb data")
Signed-off-by: Qian Cai <cai@lca.pw>
---

v2: Drop the checkpatch fix as it seems a bit more involved that it does not
    even like passing a variable to it, i.e., printk(level "msg"). Also,
    print_hex_dump() seems need a fix to be complete which can probably be done
    later.

 net/core/skbuff.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/core/skbuff.c b/net/core/skbuff.c
index 6f1e31f674a3..0338820ee0ec 100644
--- a/net/core/skbuff.c
+++ b/net/core/skbuff.c
@@ -762,7 +762,7 @@ void skb_dump(const char *level, const struct sk_buff *skb, bool full_pkt)
 		printk("%sdev name=%s feat=0x%pNF\n",
 		       level, dev->name, &dev->features);
 	if (sk)
-		printk("%ssk family=%hu type=%hu proto=%hu\n",
+		printk("%ssk family=%hu type=%u proto=%u\n",
 		       level, sk->sk_family, sk->sk_type, sk->sk_protocol);
 
 	if (full_pkt && headroom)
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1563291785-6545-1-git-send-email-cai%40lca.pw.
