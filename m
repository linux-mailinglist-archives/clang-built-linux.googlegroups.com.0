Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRXPQGEAMGQELM2MWSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C27FD3D811C
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:16:55 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id b20-20020a0cc9940000b0290334628b1005sf513484qvk.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:16:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420615; cv=pass;
        d=google.com; s=arc-20160816;
        b=vLiXr5V9eCYF8kXqszLZd1s0ARr6zcQ+Cvspph1Nw9vHEcptnCuW7rIgMto6EuutLA
         haqftvBuXFUKA6g/lCMoMnUdDF3id8nU24udimu2tD5nYfrJfMNqNZBLF55Jz0qdUzL+
         PMDS4v4XolWhBc0mRSlW1qO1/G3zimL8V5k/1eAyKi+C3MerW3KIL8t0XPG7aY5/vbdw
         JT7i30ckrwt1nzaaMur2J2FEtco2XU//WIP8u2/I1d3X3lwf9pGb7YOF562F6uqG94ui
         TqBcDM6gQ+A0veJR6H0+E5yXQ0msoYfubXhRxicjsrgUENKZb9g3nFC0bIQowOda+dqE
         8cGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=25dWJpmeyMSetbmzj05rXvhfJ5rwKYAGY2OqRgUgMgU=;
        b=hBv6UWk0143wK5n5z+PxEIUtnd4g9UmFFhzcQiP52PbfAIR3h8o/cJUCcTGVEfDhBb
         lsT1nO1wbfztaXMpbUSkVickd/54DieSd75spsXpQbgznB71u9ZV8w7El/GtZyQJ3zsw
         WF86VNKb1LjkrF6x5ttpATmQ8Gf0TnSpLyeOBcf8FLDnKVguEoAY7iMi3JCGZlve2HTo
         IcH+RABFh3U1zLXKj3LskM//Fk7/e8dLJg7aZPPVLplVgdSOP4Vmp1GKFPRAOHXA4vw4
         OdtJaZ6H/eCSIQh+73n4wy94k47rG2XDVtvt0yewDz7df/4Ru+C+O1S33e52G0kmPuvP
         yMRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LCA95eGQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=25dWJpmeyMSetbmzj05rXvhfJ5rwKYAGY2OqRgUgMgU=;
        b=N7j3/8Cda8rNAKGOKg6u+xeMkYANfkOQHKYpY+sB+Ow0bbIprzGjBj+w7QXoIjCDgs
         leR5n/quHJ9f4E2YMyJhXBdSflX7PalqjKT/exHYVxOMX0RUdMCRAw258VYQq/UaZv+g
         wrLsgxVYKiecaLaSL6wbxyxixTZxAv2gk/jRolXhyFKO4hGgjebl4qD0DHnBB6FbPFNZ
         r2jYIrwpepPiEXkVQuriQbwbL8DxmRUNSOlZGXHZOABYdXjaGO6U+LgZ72IskcEF0NTB
         3FxkFHc+BsA+LV/iC+6cxsDdczb6lJNUM/9G9offkLnzPr1c2XXYBc9Fbhyw/QJvfLPP
         d8og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=25dWJpmeyMSetbmzj05rXvhfJ5rwKYAGY2OqRgUgMgU=;
        b=nFn5r+UkLAoAlMWT84nRsl+o772HEfwGtD7JH3JSQKAUAq4sxIVvjWSaF08V7IKNC9
         5kE6cw2VUHLOEnFeaH2k6ymkunqDtpNCCPi0eaLl/IKS2H56NYj50eTEx0vF1W/S8R7C
         fGBCd6PRc4wchJ/Rzue2Rn3efi4v99LDnmpzoIVlg2SbqICdgSnpMH8j3MDLXQ3xmLkt
         3njf57ufJDTG+1bqUUYMGsoLNJsPmnYjJfOs302ZomBEsXJtO8ArIF22R2+VBE2TOGZC
         C8eX9CESCP+IESGfM9vlQs5+5xXo0K2cMA1th8y9WxB0VUs2jc+JZZ9LvIkt9MX/cBh1
         iRqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XnRceopURA9R36eM7XOU39Jdplk2om4W9RpqrGjWS/ckskYg6
	7YiQr67MhVAkiQzu/f6Qk7w=
X-Google-Smtp-Source: ABdhPJx1ir6EtolHCrQIdzIBKZz+OWvfGiACO3aNbzzu2QB0KqqCjnWIkHPgBval+NbceecHhcx3fw==
X-Received: by 2002:a05:620a:1367:: with SMTP id d7mr25068887qkl.243.1627420614910;
        Tue, 27 Jul 2021 14:16:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1002:: with SMTP id z2ls94242qti.0.gmail; Tue, 27 Jul
 2021 14:16:54 -0700 (PDT)
X-Received: by 2002:ac8:6ec1:: with SMTP id f1mr21359023qtv.104.1627420614443;
        Tue, 27 Jul 2021 14:16:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420614; cv=none;
        d=google.com; s=arc-20160816;
        b=FNdc1Zsjg2pUzFU6YR/OzfREcI7a2Mz5QgoNImcVLcx0/vG9g9wCg4t+NwkKZkVb1U
         9jTgd+mzDHgCiSB89358OpoZNNvij6p+7NfvHO5BM3bae3/KphN/ElPeHU+0vwS6n4xy
         0qH65vA3kU/JpcgX8uz+qNKSsuWkdKj8R0kGXEzODb0IUJWD8GFcCJiSznahOsZcR3fS
         2VoqEUb4dCLAj/mIljD5bWD3HufTunPFKx+yRsCNg14SpDuEpp3oKloFTRZDCCcRgQUG
         5XStiCHxHxKxlf603dJJ/vTtAYPvOMC6b2qKOGmXz4B4wQaRocXgLeVWnh8q4mMDw4FP
         7AoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HP4OyANmlGcmztFWqw/dgo2DQckUAHhybqKwZBENvis=;
        b=lZxbzIiNQUNdlixMkSoZ7RENxQDieS0zI3Rxkl2pauX41obHHIXiu+2r1gNwV4Al+E
         QAwJaMUTxpYYeAu97JkTegOyWemhGaZ/iEZHkL8WNcauxpJncyZeYB7nUFy9R+aM5XTJ
         XmGExR0RlbYACez71ydWJ2X0saucUpDjp+cyviZ6dC3UK9miZuU+tc/ge4RxuI7s/sm2
         lY85hwFtpGusMJkn6KeTYgpD5TcOQfXSyoX6mKFX0G0SetAvmNMqsehqZtMXCxCBV1dA
         5KWldthoEJHX1yAALCcJEHO5OgDQeNp7fZGBQbUiqORV33A44jWtwRnWLgGBgbwhYgIT
         IUqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LCA95eGQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id f10si200000qkm.7.2021.07.27.14.16.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:16:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id a20so118335plm.0
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:16:54 -0700 (PDT)
X-Received: by 2002:a17:90a:c902:: with SMTP id v2mr6116581pjt.136.1627420613728;
        Tue, 27 Jul 2021 14:16:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m6sm4511294pfc.151.2021.07.27.14.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:16:50 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 62/64] netlink: Avoid false-positive memcpy() warning
Date: Tue, 27 Jul 2021 13:58:53 -0700
Message-Id: <20210727205855.411487-63-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1678; h=from:subject; bh=vs/nNFIrJxwpI5nY+xgEPX6hqzmriBWLvM3b/eZbMbo=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOOsotWr+xLgDAagynSwACfihlJOnm7qN9/Mu92 bGzCtbGJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzjgAKCRCJcvTf3G3AJj/ZD/ 9ntjJhpq8fBwkjGH+dUg05xTxsNzIOuiH2+WA92AhYmbos7FaDGTm1g+GjbS9tYtH4WO2HSlLQe7LQ FBHmUbu6aiUm0Adb7gUZE3muL85N91x3mnnmxIoo2J/A/2tV0zkQyLUOckCj8VK+SR9BfW61OwCULU 7dXUvxZG2bCfldSz9FFpeTg6B3n38v7ZsFzE0Z+OKqNG5B6gy6nq9hQDiK5eWY7jsHwu6TaCX2KdWP ox3h/ObmvzejD4r5bqMjjhvU16eLjApW1M3mdaJGfxBeiC7Hn4U7R0R/a57zPmDRTbz/MhdWbOOFDp ABNXWuprZfW5V1fn74AOyo4Qdi0fWAhH4ttZZuPFnGp39cUNy/oe1zMgHhD+XjhBS0RMucpc7gNElk gk4SaMhbgnC4Ou6wBhA+yQfDvMUjqtRWUuRYmsFZ5Llmrlr/jWnsbjlt39vSdTBC9vTKSqnxgt1omQ fQi/9qcta+kyf71Lx1H+c1m8ve+vz4yBPxEJ5ztsLmSYk+J3LMojiNObOTsmlTFbCj4ZoDBFSpnQga mYRnTFbLCAQHQtPXM2pa7+qmWPgSz70szWlbF1IDWFBmyv8JppWdlZQu+0ThYGXTdnhi+QLNwm/WxH Zw293JAH5hVEyNiT/+/fkkV4VjclpW+bzGJvvMPBwvfpxzJKDGLjwSx2fyMw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=LCA95eGQ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Add a flexible array member to mark the end of struct nlmsghdr, and
split the memcpy() to avoid false positive memcpy() warning:

memcpy: detected field-spanning write (size 32) of single field (size 16)

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/uapi/linux/netlink.h | 1 +
 net/netlink/af_netlink.c     | 4 +++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/netlink.h b/include/uapi/linux/netlink.h
index 4c0cde075c27..ddeaa748df5e 100644
--- a/include/uapi/linux/netlink.h
+++ b/include/uapi/linux/netlink.h
@@ -47,6 +47,7 @@ struct nlmsghdr {
 	__u16		nlmsg_flags;	/* Additional flags */
 	__u32		nlmsg_seq;	/* Sequence number */
 	__u32		nlmsg_pid;	/* Sending process port ID */
+	__u8		contents[];
 };
 
 /* Flags values */
diff --git a/net/netlink/af_netlink.c b/net/netlink/af_netlink.c
index 24b7cf447bc5..f2dd99e96822 100644
--- a/net/netlink/af_netlink.c
+++ b/net/netlink/af_netlink.c
@@ -2447,7 +2447,9 @@ void netlink_ack(struct sk_buff *in_skb, struct nlmsghdr *nlh, int err,
 			  NLMSG_ERROR, payload, flags);
 	errmsg = nlmsg_data(rep);
 	errmsg->error = err;
-	memcpy(&errmsg->msg, nlh, payload > sizeof(*errmsg) ? nlh->nlmsg_len : sizeof(*nlh));
+	memcpy(&errmsg->msg, nlh, sizeof(*nlh));
+	if (payload > sizeof(*errmsg))
+		memcpy(errmsg->msg.contents, nlh->contents, nlh->nlmsg_len - sizeof(*nlh));
 
 	if (nlk_has_extack && extack) {
 		if (extack->_msg) {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-63-keescook%40chromium.org.
