Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBEFP4X6AKGQE3EMFMSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5457B29CFB9
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 12:35:45 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id r15sf2162966ljn.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 04:35:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603884945; cv=pass;
        d=google.com; s=arc-20160816;
        b=oWoCRW0qpfhJFz+i32gBHf5maVZ9fakYLcsZwsrhh0iCzENf51kvRViRAC197TeXj5
         qc22h3AVea9VRvOLprNe5rowVd7zbxJUHcHEMcYtsSfOzNPu2p7hd8mcdUbwjX+XYYsN
         UJaAFXkbMvCVU2lRdNrsYyDYAXDaZjSpPSr1f25YX5hgcev2/frQpHU956wnRkosNIv7
         LicaGsSGKjQFbhvtxg8CiMagZcYR+BEqrWLZcy7YnRtY3istay4GarRugTSBb0brQ7+0
         6B2kGZyOke5LUDXERo9oTcGzR+r88HDDuWRXFAP0K6QYUt4sNfmLTQhReEW8H6ciztYX
         JwVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=+RaWFz/n2zr/To0cHqVsJr9W+HVQ6GaBV3yKsgjHcRU=;
        b=pW7IksCUsr0k6Mr2Jqu3Uw0RlT0o0Fdg9hDjX4rRqHFx5s5RQdKl0SxzGvb4JUCLT1
         m1JLR6HKjzk5HPwuD66WhU+Kyc93/E/rsCmSkqgPKT4x0tkG7F0G8odrNzcSfLH34QKo
         zZohxmSOf5F7naQrjxXvW/tXNd2f96A+CocQju8X+zWKRbdZQVrlhoyhyxMKusb25Bzy
         ENI3dRGsVK1Gs68ecO4FdDtgHeLv7Mj2IQum9rH9AtU1FZr4Whwes16VU0qAKCF6KEVL
         xRlD9oWEGdvVngd8oWf21fppnLLLVNcN2CA2ZOMRPTMeEncYen6lxR0p4Ri1fO3BXHm/
         uzdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="iA5zf/Fl";
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+RaWFz/n2zr/To0cHqVsJr9W+HVQ6GaBV3yKsgjHcRU=;
        b=ocqx4G6hvNURi/tkakqjIQUEAM2GAs4wrH08zvRjsWQeF4P6Ag4eEvyo2iSOe04pSM
         dTxQ8SjCrNfDm6Kx6ZMSzrwS7E5aiuXDe0W0p6RyhQGVw+MPmDgFDnf40mh5vJ/imoTQ
         5ByaM3xlCQ7eCf1ji9Z3S85qEQLONMOSSlEqXov2Z+S513agA4XJXtjI/qwa6k9tVY95
         L0Ry8b3Ct0GZEWgvIbF/cHgMRLI0kyPyq/wRKSLec38kgQpBrKKmAvYmZ+JVMbl32TBi
         LTIeriDR8F78kgBy2rOC67vJNKI4Od6+ml0N4BevobOm+Jld+q2BiK+BDqBo5JKDk8ox
         2Njg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+RaWFz/n2zr/To0cHqVsJr9W+HVQ6GaBV3yKsgjHcRU=;
        b=F9+YXo4doEW86qzv84X09DrNYxwVxhHFKCo8TXrDBD2U6sNYKueZlHBYaOcjSTI9bU
         I4duZlNnJn0V/QLy1+X2TCbEWrylxrQBBQTjSczfG8HblRi+RYJX8A+6ilMJ6d8cDCfX
         z+9hVXCrlrXr4VKBYLwrKW9plF/wfvpSqQBZkrMs/eJvDlhdmkvGGWISnLTPP8s+Gp5F
         ho9jnWA4KlUfGXSw71fQhacP6nxqC2unR/oxbytTwojgdwyKNzDZ8V26qVEjK9vGEtmC
         ykmun8RH4hccfPx4w0KNNpBgTJ63txxVfzcBqAy2Sk2iuMM68ZEPA4RxRRc+eXitfmKq
         dZ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+RaWFz/n2zr/To0cHqVsJr9W+HVQ6GaBV3yKsgjHcRU=;
        b=qnYMJ2q6SFp6DZNcxhUV8eDsJAtxlCY889PReTd/vO3R17/E8rK8BnfQEeKFe+iu38
         cALnzZEEy6ED/wT9TRIm0pGijAn55nIad7xE4MhGZQnmLXB3Zc5dL31StKamDnaF9tS9
         fCkMc9+1w/H1FHPSXyBN+TBvdEUt/o0Bm/YYl54pMucJXDBmwjGqCXhFX9thFRU+VE8A
         MO24atG0F3rj8qYi/ZviROuwxGiOTVLrVXEqhNxAhbzvOkATTzpn87jX/rPUPd8NJ6SZ
         qtnodOaDDzzIGd0APE0NbOLoMY7jgw0OMFJXkFKA1QMOW+6AJZ8Yt8TIIygBOZYtROag
         rpCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530e22h6z29jlJxqB2+1dAwJjyCgHXq7pqSIXoaC/mo9MzUdCua6
	i6yo/HycEcGzjdvmoCVUcbU=
X-Google-Smtp-Source: ABdhPJye2NZ8BkkigAr4fkHuLAeFKHLG4YhlrrW0vcIN70aG0T2Z0T5wEJH79Zl/CzOoPojmFNBqYg==
X-Received: by 2002:a19:ee12:: with SMTP id g18mr2779999lfb.515.1603884944853;
        Wed, 28 Oct 2020 04:35:44 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5e61:: with SMTP id a1ls307115lfr.2.gmail; Wed, 28 Oct
 2020 04:35:43 -0700 (PDT)
X-Received: by 2002:a19:241:: with SMTP id 62mr2751935lfc.165.1603884943612;
        Wed, 28 Oct 2020 04:35:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603884943; cv=none;
        d=google.com; s=arc-20160816;
        b=dAqBxo2FplrrA5KnqZ8TZpUpF+hTWF7cAHfsBk7Ln4OPulxfr6AyAEbahh1CFE3dU/
         Fs4u1oyUhhhq61T0de46TUtUBoEYUPdeAtxKqHiuj8Gxpr+twprLVf23LIMz1jiLgWmw
         5qyjkcy7T7BrfqtT3k1gyyy0rxujCQ0OVesDE/HEvNejE/XAeZ+VsRWvO9/2axdFkl8n
         98JxfqCfMCma6MaHvM/IKvks6dG7H/02ReFYtf53yxDzzB3o07TVlVSli1hKHRfQYDoA
         CXfl1E7JLY74qDMD0ND5mGQlh9iJB3qxPIIjsHPVaMaem8xl2vT37t+1BNJccPoBWit4
         w1AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=vjJC6dKOMFG4vb3AckKIuCP1t5bMO9lbc9KLXiwHlCo=;
        b=rCCYahHdCHu2BFTn3tGjZ7R+ZNFxW8euY0ErQiqc5uf3faBb/KNbDvmmg16JekDLUL
         G/Nia8J0ImBajN9yE095G/GhKhUCWP0rn34LA4X1/psYli0trTuKOXtBsVuQl5qwq/n4
         ggqMt7fRQxlz1vpwdltZiAWajrZDX/jqRP/rBfTruYewnuTQdTYsD9bv49k012VSceCz
         ifzMQjW870uPx8W9HSV/E5AvEb3JaQGwgXCBZf0Wj8qj99kLwmI+KWl8FrmbQ0ZiCGi+
         06wDId0f29GzwtOjV+I9nWKpAMlIZsDDOwOY4mnA8Aiexsqeuq4kasKpp5ojLwcDwK4K
         RFrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="iA5zf/Fl";
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id p1si100222ljc.0.2020.10.28.04.35.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 04:35:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id h22so4436106wmb.0
        for <clang-built-linux@googlegroups.com>; Wed, 28 Oct 2020 04:35:43 -0700 (PDT)
X-Received: by 2002:a1c:f604:: with SMTP id w4mr7798630wmc.87.1603884943015;
        Wed, 28 Oct 2020 04:35:43 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2d7a:200:a915:6596:e9b0:4f60])
        by smtp.gmail.com with ESMTPSA id s11sm6579979wrm.56.2020.10.28.04.35.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 04:35:42 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Jamal Hadi Salim <jhs@mojatatu.com>,
	Cong Wang <xiyou.wangcong@gmail.com>,
	Jiri Pirko <jiri@resnulli.us>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tom Rix <trix@redhat.com>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] net: cls_api: remove unneeded local variable in tc_dump_chain()
Date: Wed, 28 Oct 2020 12:35:33 +0100
Message-Id: <20201028113533.26160-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="iA5zf/Fl";       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

make clang-analyzer on x86_64 defconfig caught my attention with:

net/sched/cls_api.c:2964:3: warning: Value stored to 'parent' is never read
  [clang-analyzer-deadcode.DeadStores]
                parent = 0;
                ^

net/sched/cls_api.c:2977:4: warning: Value stored to 'parent' is never read
  [clang-analyzer-deadcode.DeadStores]
                        parent = q->handle;
                        ^

Commit 32a4f5ecd738 ("net: sched: introduce chain object to uapi")
introduced tc_dump_chain() and this initial implementation already
contained these unneeded dead stores.

Simplify the code to make clang-analyzer happy.

As compilers will detect these unneeded assignments and optimize this
anyway, the resulting binary is identical before and after this change.

No functional change. No change in object code.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201028

Jamal, Cong, Jiri, please ack.
David, Jakub, please pick this minor non-urgent clean-up patch.

 net/sched/cls_api.c | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/net/sched/cls_api.c b/net/sched/cls_api.c
index faeabff283a2..8ce830ca5f92 100644
--- a/net/sched/cls_api.c
+++ b/net/sched/cls_api.c
@@ -2940,7 +2940,6 @@ static int tc_dump_chain(struct sk_buff *skb, struct netlink_callback *cb)
 	struct tcf_chain *chain;
 	long index_start;
 	long index;
-	u32 parent;
 	int err;
 
 	if (nlmsg_len(cb->nlh) < sizeof(*tcm))
@@ -2955,13 +2954,6 @@ static int tc_dump_chain(struct sk_buff *skb, struct netlink_callback *cb)
 		block = tcf_block_refcnt_get(net, tcm->tcm_block_index);
 		if (!block)
 			goto out;
-		/* If we work with block index, q is NULL and parent value
-		 * will never be used in the following code. The check
-		 * in tcf_fill_node prevents it. However, compiler does not
-		 * see that far, so set parent to zero to silence the warning
-		 * about parent being uninitialized.
-		 */
-		parent = 0;
 	} else {
 		const struct Qdisc_class_ops *cops;
 		struct net_device *dev;
@@ -2971,13 +2963,11 @@ static int tc_dump_chain(struct sk_buff *skb, struct netlink_callback *cb)
 		if (!dev)
 			return skb->len;
 
-		parent = tcm->tcm_parent;
-		if (!parent) {
+		if (!tcm->tcm_parent)
 			q = dev->qdisc;
-			parent = q->handle;
-		} else {
+		else
 			q = qdisc_lookup(dev, TC_H_MAJ(tcm->tcm_parent));
-		}
+
 		if (!q)
 			goto out;
 		cops = q->ops->cl_ops;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201028113533.26160-1-lukas.bulwahn%40gmail.com.
