Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBC4727UQKGQE23V4NCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 65363702E4
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 17:00:28 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id o9sf8626264ljg.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 08:00:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563807628; cv=pass;
        d=google.com; s=arc-20160816;
        b=xgFugSkpz50vCT+a7RdjushCCNXexqsHG4YCp2qt/sYGkB+4RhnW7GjDHE9EEJS2q/
         u47347Z3Iq/rGwXFbNcpN46m7N5wj5L76H9rNDeTxTp0LsIOMhZ9I3JrnZvwQxPvWWlO
         6OK2TTJ4G0IPnP5pWmEpMidXBfoXjv0cuQVzF37/PoTgiQHpxe+uLI7PO+XaHQM+zIjG
         8LVuMZpryz+IqTxdNi5jlpNhwb+icIfO/T6yMAgb1kz21aF22S283V9UkjHrixqG4E3A
         y9ij1K+VkqKa8i6SHBfn5NJLiIUk5JLv6jrCNuRF6hOOwBaN3kSQ3koa0Ppk+qPNiami
         KX8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=aX4RH6WTm0RICUDRt+aJ63QS1qD/tAfWJnGQFLkCr6w=;
        b=G88eSrdiqgbtHqkI/sVrLUWGGTxNGKhT5U5TzmOeTBWmpABlpFsYOST/RPzUArFfzm
         GW3qzswS3kEB6vnSPz9Jg3RRmKYDO/hwsA7VPLiwr5UZ4fbnE6ZZdaSdR2g1F5OzNBoE
         SgftsZXK7vRkYN+wDAVHV4ZjlWgsHdfNENfhyGB1QdsHB0ca1gnJsQZQRK9rELxwyMGp
         5VBcNuNqQNnMZ+20kFmaBBRIDvg2USRUexum8AvibYreIJvzFi/2HlpqeKFjoyCunb3A
         miWmgcYRDCTnTgAjlf00gA9eHIBSLTzFpf6Bb3PvI7A9Ghj7jv6dWbralG1VvnBaatGy
         5xig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aX4RH6WTm0RICUDRt+aJ63QS1qD/tAfWJnGQFLkCr6w=;
        b=iXZjWmn/Zx4UquyZSv9WHe1fxRwCWgKx2Z1Wfac+cmfrxVC0wRkEAVo6FqEmtoNFHe
         JfC25hmVZsmuNXAui2Unyz5trzn4krkMn1vr3ba8gdCFW9GNN8UI2pXRRhNcctYX4Opf
         AFAiveL0s0aDluCyzZ0W2sCoD2Rh8DNvNMn5P+5sCYOpOK4U0UOkEYoEveDpm43/2LKJ
         /rlL/RcSXGPcDhtGU73kVx4zRyA5SV3UihHfosAxOXrbjKjdR9dRbgzGmCreF6FfJ1Nd
         9YS4Rl5HzWFN763c/ohmsOIweBIFWgnbLaVVxdixMIUblEDjp4hzDMwwPVMaK53hG83k
         yh9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aX4RH6WTm0RICUDRt+aJ63QS1qD/tAfWJnGQFLkCr6w=;
        b=mGghNWUIjwPaZXrVUV0qJnlLmrH87HY0GRFt+qEuHa/PUrgoLeVmH65A06PWYzGtTt
         q9Eam1ZoF5ficefWOvk9lf7T3OghgerJEn1tQCfJb+hSkMlYOToUa8pWyEb2oDTy4kC6
         1Is2t+rzdq7uNJU3umdbfLg4Fw/Ir7X9pUAN542Yk7GCsttwFJckZpz1UrFVjY1qprMF
         vJeNqKwRraaHzWR4EKHzJ9T50CZ0eGXrvcNXxGNMBk+mXROIJ/GXiG3A3CELv/rU0IaV
         j3uVXk7hGkC9kPIbKZ6y/gzsFR7yzNDHzWVJzruD0P9mToZiTp3jCP4Bwo+dsv4KqM1Q
         eYWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUJnsmDysAfvoTDYRzRgGhv5Jvf2eC+XHmfB2A7zFEdpSFo2ecd
	XA0NbttOdsLwMR+7fbROVCo=
X-Google-Smtp-Source: APXvYqwVUbrzzzm2CgvvFtWnvaPizy+nIZ6pJAYE+muRjrcyBe2Nwut7i/PLjiLBi0bA5HdvWx7rlA==
X-Received: by 2002:a2e:2411:: with SMTP id k17mr37283393ljk.136.1563807627974;
        Mon, 22 Jul 2019 08:00:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c317:: with SMTP id t23ls2258176lff.16.gmail; Mon, 22
 Jul 2019 08:00:27 -0700 (PDT)
X-Received: by 2002:ac2:484f:: with SMTP id 15mr32194914lfy.51.1563807627460;
        Mon, 22 Jul 2019 08:00:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563807627; cv=none;
        d=google.com; s=arc-20160816;
        b=OpBMCGmHjvF3NTFO4tjjSlv96/xom0JPuddZZMxLMeNInWLpZoDbf5N1lEES4puq6G
         Y4zzjzuDOV3zKgBg9cwtXLu4oP/U0RyzUGe+7VqasaHkMJwv4R2KMNDx+vI4+GKtpR4g
         v2lMghq1qphpTp5k0DbESCNinGkGtE/PBTVW4O7uzuJW4N2OPUfioVGEVey5wlV1LxGg
         P0g56jcCGnylSHvKKDKUwAKLOegbT9wtWO1YXs9fFiQ7j2mnu9qozrY4wFXi7BurbPcd
         mb4GMvdgLnm+aV37UvZI054KHY6l0aggtfW2j74ajvbBDNzmL/FXR9R8D2ZZ5/hiGpRa
         irUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=bkwBHNPXcXAFXH5pYbkdiByZR7O4O5XYv/RgINQz6jA=;
        b=QzAhoyOx8HY0FwFgz8Czb7vBCLzw0vtDNiSZ6kXEtyezwhQfslJTnMuzLRgS9AtQ59
         d4athcFaao5kusvBXBN29HRRErIsBj5uR60AdvRENSMYJehlneH3RfPBMLucg778HiNj
         fNJlWl1AcjzxZpa+jKZPesu9fSMR4c8zKKmu9a8D/cK1v8IIyNiRkR2opy1NS9fxNq8u
         jRfgrBcOWIcJ6+bTXi4coTpxn4x4bLMhwrOVH4T02cF69vhsADvjfNtXRPgqlLSB5/vw
         ydLmToWUA69vDko7/RnWkdIUHcsu2AEE2mt69rg/9ht+bNY5c9WfGqxnOgUT0D5jIGEy
         0s6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id q11si1924115ljg.2.2019.07.22.08.00.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 08:00:27 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Mn2Jj-1iF2Sg2Z0h-00k8ux; Mon, 22 Jul 2019 17:00:21 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Pravin B Shelar <pshelar@ovn.org>,
	"David S. Miller" <davem@davemloft.net>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Tonghao Zhang <xiangxia.m.yue@gmail.com>,
	Johannes Berg <johannes.berg@intel.com>,
	Kangjie Lu <kjlu@umn.edu>,
	netdev@vger.kernel.org,
	dev@openvswitch.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ovs: datapath: hide clang frame-overflow warnings
Date: Mon, 22 Jul 2019 17:00:01 +0200
Message-Id: <20190722150018.1156794-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:n38BZKXQeU4NCOj2u3jNETtHaDR3crTUgKISheti+Q/vGZ4iOf9
 CEdgitQaFx19lylhbtU4GNob2+pIJoGxqHzfM/c0Y510k2PvKqagKwo4wxgp/wFzvEnZRAr
 2qeqnFJWkAh9FMW6vYDyHXBJNcfl7PNO94jSWeEaAbMwbH+nN2KT/eYVXpX++zZrxMCIB6M
 51tSASVvAUVMs9JjoCWzg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BIxhja8daZY=:a3r2BQT8oflr6GgXt6Jes2
 W45PjZlPErn72wTTrP4kq3o2NkWZx3eYlFz/FqMAlX1sEvyBzuIWG6sZ7I79ivukuKeDqt1Av
 A86XaIJYB7L31S6LtCZVKbtFdi+PWSoyH+ZESd5Kmr5XYPBynuYAZM6xraW/LYqJvNtLWtwmg
 Rc6jbSFKK0dGq0cFDK+ep7eUzrdRSTiHNhhDXzYH+CEnRxxgAlEgV9rCUFXjNVuyjTkkVSheg
 c4/INjS1MBkLRutGKrPt0lAIqjUpMAQCk4Dpr0IGcCkEEQ7+JXlJanSpGiADdniVWM1NgEMrG
 xLvDGBpVJO8TSRVS0O5bZTeB+WmDYauLUKaLYh6S7IYg/xrdb/bLOdkdohsQA/yFc7iiQv2HO
 abpRQTVBawt6wp0uxxFjSmmUGwrQxeQ2QMg8SDDnZ1QbVLTavQTztwWawywRiwf20XEHNMIdv
 2qLG6QrhmQ+XgbY1UZqgxWznoLOe4dIeRglEJcXBTWj0nU310DWAcsSGhIJZlUlmYBohJGer0
 HGRB8KD5gKnJEp0DAwUs0LmcD8SbfoKlWCswinBVQEUE3Fa81aVAaRY/r4BY62EG6zARO5OCO
 U90PkOFax25c9cZ6DjGbqVbx86vJRLD2r8Rpr0XyDwUHkD8UJzW1m5iBu5Xjb4VwrMsfH8Z7i
 M23qg4QUtWCPXitysMNbfZJV1LcBQ1s/KvA7UYDFJLxRZTEawnf+640BFZ59wprwt8OcDiKre
 Qj6/B5iDFVB8GZdhrAtwY8eWJWrJG2Qxng66jw==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.130 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

Some functions in the datapath code are factored out so that each
one has a stack frame smaller than 1024 bytes with gcc. However,
when compiling with clang, the functions are inlined more aggressively
and combined again so we get

net/openvswitch/datapath.c:1124:12: error: stack frame size of 1528 bytes in function 'ovs_flow_cmd_set' [-Werror,-Wframe-larger-than=]

Marking both get_flow_actions() and ovs_nla_init_match_and_action()
as 'noinline_for_stack' gives us the same behavior that we see with
gcc, and no warning. Note that this does not mean we actually use
less stack, as the functions call each other, and we still get
three copies of the large 'struct sw_flow_key' type on the stack.

The comment tells us that this was previously considered safe,
presumably since the netlink parsing functions are called with
a known backchain that does not also use a lot of stack space.

Fixes: 9cc9a5cb176c ("datapath: Avoid using stack larger than 1024.")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 net/openvswitch/datapath.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/net/openvswitch/datapath.c b/net/openvswitch/datapath.c
index 892287d06c17..d01410e52097 100644
--- a/net/openvswitch/datapath.c
+++ b/net/openvswitch/datapath.c
@@ -1047,7 +1047,7 @@ static int ovs_flow_cmd_new(struct sk_buff *skb, struct genl_info *info)
 }
 
 /* Factor out action copy to avoid "Wframe-larger-than=1024" warning. */
-static struct sw_flow_actions *get_flow_actions(struct net *net,
+static noinline_for_stack struct sw_flow_actions *get_flow_actions(struct net *net,
 						const struct nlattr *a,
 						const struct sw_flow_key *key,
 						const struct sw_flow_mask *mask,
@@ -1081,12 +1081,13 @@ static struct sw_flow_actions *get_flow_actions(struct net *net,
  * we should not to return match object with dangling reference
  * to mask.
  * */
-static int ovs_nla_init_match_and_action(struct net *net,
-					 struct sw_flow_match *match,
-					 struct sw_flow_key *key,
-					 struct nlattr **a,
-					 struct sw_flow_actions **acts,
-					 bool log)
+static noinline_for_stack int
+ovs_nla_init_match_and_action(struct net *net,
+			      struct sw_flow_match *match,
+			      struct sw_flow_key *key,
+			      struct nlattr **a,
+			      struct sw_flow_actions **acts,
+			      bool log)
 {
 	struct sw_flow_mask mask;
 	int error = 0;
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722150018.1156794-1-arnd%40arndb.de.
