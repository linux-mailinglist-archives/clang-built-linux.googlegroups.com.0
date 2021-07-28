Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBINZQ2EAMGQEFHQLITQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6610E3D94F8
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 20:06:26 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id x47-20020a056830246fb0290451891192f0sf1206537otr.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 11:06:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627495585; cv=pass;
        d=google.com; s=arc-20160816;
        b=eFqnKYwcU9Fy7oYyqbaWaS6puMyd17xrDPf0Nyoyx4bsGtyWREn2TfkKiuNzjsihVA
         b6a7JP7Tep93xnnNGEkRu3lmHe/PLlL6WOjoGBLH+4UzMHuuO0XJ65Ra6tA3Tl51SqK7
         nwcGQ8Vaf0tYdruPZAnnY7xoQ+U3G67Rjk6YvC+JCYtKDIv/CGf42x7D0fSs0wif7la/
         pMoP+iVBCOmqEF5SDRo43aCxokRnB2rXg0/MKSFLJCIv+Ux7s/1VDKfhF5v1NI50RdkC
         mC+z+rN3t/VMFCZbJsoMIPVZsabewhdSmW+08SUYLyYqRn/t1bwqlNKpzUGTne9n8/h+
         D5fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :date:from:cc:to:subject:sender:dkim-signature;
        bh=SK5leOhG4YRmBPgFLEbzMR7JZq7GPpMUQ0YPTwXZpy4=;
        b=QF3iILi0e6VyDYO2GY4lrR7SRXreSD5grIRFohodsucLPMnWtwyx3Pc26Ejo7QMv8i
         jmeZwiebimo19buTLKfD2y8jBvTwpoAMjiXp3FTodtbE4ywRQ8MST50msLCoNf85YKNh
         ZG1MzfrnGjO0RW18pvrAlzVR4lwL+MRTAq2c6fLMVXPF52vxkzWllJP8YVTQYTsVObX2
         MlZwrIsVsC8PquSa4vZjSv9iyEh8eAu+4q9b08Iz+eL/E4g+V6+7uUdTwvRrUrD6IiWV
         I7RWERwnHMRGKvaw69VlbB/bTZh+tLN9uHwZ8vbjQxI0yPuBWBByhJ+nKTWJh7YZ7gZC
         9Mgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=buJha3UC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:from:date:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SK5leOhG4YRmBPgFLEbzMR7JZq7GPpMUQ0YPTwXZpy4=;
        b=qcacdfTAibhaTYAhpYBF4frHhaxPLkLOTeHxokXCDMOketCKCtUq2UH7zcGMQ3SRfd
         NFkZaZst15UBC/MwolqAPAEZ0F1pDm7HYyPx+YnxdJlL/bNsJAahoeFckZXrosCWbWQG
         rnKMYsJ0gWIW0EEnqt6PCEx66ofz8u410D/fYGusWCAMu5O4DRiFJGrWDdWe0d8qGmI4
         r2QwtIeF2bxiNk8wH1sryGo7oIVf/HwxUGOh2Q1NhAyqSN4TEtgZstQ/02JrI1D38eHD
         t5CiHxZE6YqiAefum0UZMrUYHLp01KbFKuL2Gh3JBh5hSRpIYr8jslV1kiFll/mkKXuC
         GMFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:from:date:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SK5leOhG4YRmBPgFLEbzMR7JZq7GPpMUQ0YPTwXZpy4=;
        b=P3736iykED2QBLwWEnM28vi13q98rSFakgrnIA/RzV7R2KsTR1PCEoB5Jfmlyhmczo
         afWP44zAwW1pqrrG+2JdtcHY8ZfsZuKjQidEG8tqLWwkD9wtFUbb8CTSyox6Mjavy8QX
         uK0itBxZmnMlvfnyb3sYNe8WW2lwcj2nxPDiaoeJDQue2iayE19dZ385uaw6TVMam1VH
         DGsdtoU0qn+jQCmAKuDWg7M+eZeTlF3a3JhB/4ovS36TF7RTOp+WK6+Leg0wSE+X9obu
         L5u8OuZkdesU5mTZOrhdcaVThodT0w6ofS+/rThTFzhYFPoAc1S1wyqS/xumru4ksP5P
         pSzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QQF0RCF2Hg53ORM4umvE+WM2OgRQB3KKxD4BxDpV2382VuHQY
	BtrOxirvnH5UI9bPKGmJ29Q=
X-Google-Smtp-Source: ABdhPJx8j+c/tSrLwj3WNwRFwVq80qded2gMy2djuGmph0aXNz+HRFWmZxbpenSSTsTdMACQhM8b+Q==
X-Received: by 2002:a05:6808:24d:: with SMTP id m13mr7516449oie.137.1627495585318;
        Wed, 28 Jul 2021 11:06:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:649a:: with SMTP id g26ls808784otl.1.gmail; Wed, 28 Jul
 2021 11:06:24 -0700 (PDT)
X-Received: by 2002:a05:6830:1290:: with SMTP id z16mr914774otp.28.1627495584876;
        Wed, 28 Jul 2021 11:06:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627495584; cv=none;
        d=google.com; s=arc-20160816;
        b=rV9yeeFZFDBw+tW21ja7eV7h62KAGdMngHQe7WNwgS/mbfYglU+aQ/A2uM9NCPJr5O
         LKKMp+DC+9R/f1ord7UIm8g56sFvVusTuqxckpmq6/7/WfR/czvXqw9gnbCs6lLqIWtr
         VRLDdYn7lji/HVkwKAp+CW1Kd9feO0XnT2kc86wYu/WYLi+weuPX5U/GYwBplG5NMPKV
         Kj+zQdcBUG8E/dBD6RFFA7xoROU/x6CtKbA8wccRbWJRF77H7xvX8dDWTQAEyoOc5dTr
         efFbHkOUrespkvi33NTEZfmnrLyJ0iKsThqSkP+Y77+Ljkelvw9FEgTO+tyaHSLI3uVQ
         ah+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :from:cc:to:subject:dkim-signature;
        bh=8QtJWjzZrTzDdSD7OgVPX9MS3vUYu+baVYPTvGILMgo=;
        b=F5y5hhmei87RkPYIyJYKH/oyN3XpUO6vpkxjttgJ3DqgtVV0EODLmytNQE+ZpX4r4u
         YV60sLjBvDdUGDau6FHqoLqbJU+i53LVunJ3/JPurcat8/CbFxbnae/Zr+p/ZmIC7X1p
         FO6sknAXoNeDckk1Vzc1CApifx1Hpb25aXFk5uNE6AKIzjPGzouTVW+5i8zz+B4IxL9Y
         hkT+avC45ei28SJAAWuIDu+eq0sxSN4oeexDE3HFa1sd1dR5IM5Ow4xYFvlrmf14O2Gh
         ENqcPLRNTo+UGYPwpsHUPG7umstwjpNmYhHkzx68qo8R6/JBWGUR+17WsyRwtS05x7RT
         Bobw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=buJha3UC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c20si42950ots.0.2021.07.28.11.06.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Jul 2021 11:06:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AA5AC60F00;
	Wed, 28 Jul 2021 18:06:23 +0000 (UTC)
Subject: Patch "tipc: Fix backport of b77413446408fdd256599daf00d5be72b5f3e7c6" has been added to the 4.9-stable tree
To: clang-built-linux@googlegroups.com,gregkh@linuxfoundation.org,hoang.h.le@dektech.com.au,jon.maloy@ericsson.com,lkp@intel.com,nathan@kernel.org,sashal@kernel.org,ying.xue@windriver.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Wed, 28 Jul 2021 20:06:14 +0200
In-Reply-To: <20210727225650.726875-2-nathan@kernel.org>
Message-ID: <162749557420677@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=buJha3UC;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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


This is a note to let you know that I've just added the patch titled

    tipc: Fix backport of b77413446408fdd256599daf00d5be72b5f3e7c6

to the 4.9-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     tipc-fix-backport-of-b77413446408fdd256599daf00d5be72b5f3e7c6.patch
and it can be found in the queue-4.9 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From nathan@kernel.org  Wed Jul 28 20:04:22 2021
From: Nathan Chancellor <nathan@kernel.org>
Date: Tue, 27 Jul 2021 15:56:50 -0700
Subject: tipc: Fix backport of b77413446408fdd256599daf00d5be72b5f3e7c6
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>
Cc: stable@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan Chancellor <nathan@kernel.org>, Hoang Le <hoang.h.le@dektech.com.au>, Jon Maloy <jon.maloy@ericsson.com>, Ying Xue <ying.xue@windriver.com>, kernel test robot <lkp@intel.com>
Message-ID: <20210727225650.726875-2-nathan@kernel.org>

From: Nathan Chancellor <nathan@kernel.org>

Clang warns:

net/tipc/link.c:896:23: warning: variable 'hdr' is uninitialized when
used here [-Wuninitialized]
        imp = msg_importance(hdr);
                             ^~~
net/tipc/link.c:890:22: note: initialize the variable 'hdr' to silence
this warning
        struct tipc_msg *hdr;
                            ^
                             = NULL
1 warning generated.

The backport of commit b77413446408 ("tipc: fix NULL deref in
tipc_link_xmit()") to 4.9 as commit 310014f572a5 ("tipc: fix NULL deref
in tipc_link_xmit()") added the hdr initialization above the

    if (unlikely(msg_size(hdr) > mtu)) {

like in the upstream commit; however, in 4.9, that check is below imp's
first use because commit 365ad353c256 ("tipc: reduce risk of user
starvation during link congestion") is not present. This results in hdr
being used uninitialized.

Fix this by moving hdr's initialization before imp and after the if
check like the original backport did.

Cc: Hoang Le <hoang.h.le@dektech.com.au>
Cc: Jon Maloy <jon.maloy@ericsson.com>
Cc: Ying Xue <ying.xue@windriver.com>
Fixes: 310014f572a5 ("tipc: fix NULL deref in tipc_link_xmit()")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 net/tipc/link.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/net/tipc/link.c
+++ b/net/tipc/link.c
@@ -893,6 +893,7 @@ int tipc_link_xmit(struct tipc_link *l,
 	if (pkt_cnt <= 0)
 		return 0;
 
+	hdr = buf_msg(skb_peek(list));
 	imp = msg_importance(hdr);
 	/* Match msg importance against this and all higher backlog limits: */
 	if (!skb_queue_empty(backlogq)) {
@@ -902,7 +903,6 @@ int tipc_link_xmit(struct tipc_link *l,
 		}
 	}
 
-	hdr = buf_msg(skb_peek(list));
 	if (unlikely(msg_size(hdr) > mtu)) {
 		skb_queue_purge(list);
 		return -EMSGSIZE;


Patches currently in stable-queue which might be from nathan@kernel.org are

queue-4.9/iommu-amd-fix-backport-of-140456f994195b568ecd7fc2287a34eadffef3ca.patch
queue-4.9/tipc-fix-backport-of-b77413446408fdd256599daf00d5be72b5f3e7c6.patch

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162749557420677%40kroah.com.
