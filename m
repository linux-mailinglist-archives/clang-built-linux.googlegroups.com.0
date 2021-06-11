Return-Path: <clang-built-linux+bncBAABB6HPRSDAMGQEMUNUVSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F3A3A3FFD
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 12:16:25 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id 35-20020a9d03260000b029040539236725sf612687otv.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 03:16:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623406584; cv=pass;
        d=google.com; s=arc-20160816;
        b=I02XvZlxFiGoaqCs8dXxIVgCxJuaLL2dCTAED0TMDOXta7MD6eh9/890ZJlHkcAB92
         YR8IrUovb4DmwChu7VAOPFIkif+FgJ8biZ+/6b9XH3lZs/NuX5CoBN7/ANzfTQbndDpK
         nBy32qPz4RFkSpyj9cgvc0gIolAwKfAvnZWC4C+uy29dyBGggPq42awp80tQvVCqRFjJ
         8m940SkkVgo5nEEUU7lR9tlABBqlG+A2BHMkxIqbuHfwP8lhKhw4sUrG5qgqk7Mpp4M5
         gJtLrFfy2n+6KaLMMEaN5hzEYDDlyCF1qpgy1RPBpY2VReDGPCBeyZWqG4ktW0OYtvxk
         7uow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=wZFNDO6As0c4SH6477+4xW2H/iFWxz9dMg1g2Bui53M=;
        b=WlL117bqNVbjN6IOcMkQVqnIU1ZD0miUlK0VuSjqtKxqPPpngk/Bv8cXDoJJG5hW1x
         b6MEnCVUHzHSu8kJShRUS7FcDRlLPFabalkt4MvuEgpdAA/p4RGvD+jf8ZURx76aVm2l
         NAhdhwexY4/qwUc1GaOCLwK0D/WQYPxMjTF0QPaLypWbr0QawXiUAo7Vlk43a4PXqgnB
         gdMHNKocUXy9Gorx0G2zZmbMIIMgKycfVOcqy54pXvKNuLJA2n/+67vOjquV2bnsG4ia
         Qp8f4JGUu0YoZ2CrXVsEcDXlKYoBsiCc/N8+sRlvTWUn7dLAAjJCNTYKhfaZfcu6cZZ1
         86dQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wZFNDO6As0c4SH6477+4xW2H/iFWxz9dMg1g2Bui53M=;
        b=r5jbnZI2uokal/v4hu4m99b+5yW3sWxazELuE6MkB3HZxHDCnIH+uP69/fm55B29h+
         He0NhmqNRhaWimq1gZygOtajKseC1FyG12BFm9EizML7OmY35sroolnwjl4os8JdLHzv
         SoxJvnqz1XBQswFrKTGWOwmE0mTs2fBkx9LDd82jV2TpMOM2HxBFed/ig7qgova2Q/ts
         4rf691u3YiRdgNl5BZQ6AFzizbyz4Ba/DBQDWUVDLG1uQK5KG+i1fbUlLBNAqwdX167i
         S+XMQqEzj0vxnbSCcOruhrsJJJwWU0Z2KVZCV6Jp4vTYeMtizWo0VFEV3s5fYxfnIpw3
         W1JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wZFNDO6As0c4SH6477+4xW2H/iFWxz9dMg1g2Bui53M=;
        b=UCuFWjTVLezahswUGxPqCgPB1BDqotBfaT87MgZ0lc6jXK8oFV4fRjKG554qOodCMG
         ACK80ROr2SIrGXberDFMeb1QSfCPoAbz6TedaDJ1dcnppAgnZVA8TOibkYcDmzasZUr3
         VgYKqxUT10uavtnfta8WxwhyMo63UHPCbildpUu7Tgqxi0SYtFQujyChTk8ESnSAU3Df
         JNYILLHmscarq3qNQo+c6aO5iBXaQ57QQnh0d4r4aDQIzCmakuaYJ3aCW+SC5tdhZu7A
         wEU9yW8D1cybpMbZp6/Zrv9XL9zIwTdEp1B9wRlzl+JkOBmXxYyF/y6SLnpkkytdA6cQ
         Skjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xsUt/SV8ULMctl+Yb7jtIFuFN+eqKuAs8+E0+k11qBTuf9j+i
	hZPWIwTHccdhf9T68Oz9kFc=
X-Google-Smtp-Source: ABdhPJyW+NIrvnbZkRcJK79cmcScH87VqYFSjcP/QOOS3ZZ9dHImMNiQvB3sX6CJpF0iUrxTXoR+4Q==
X-Received: by 2002:a4a:d442:: with SMTP id p2mr2431962oos.89.1623406584076;
        Fri, 11 Jun 2021 03:16:24 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b102:: with SMTP id a2ls2709997oif.5.gmail; Fri, 11 Jun
 2021 03:16:23 -0700 (PDT)
X-Received: by 2002:aca:4d04:: with SMTP id a4mr1915076oib.22.1623406583728;
        Fri, 11 Jun 2021 03:16:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623406583; cv=none;
        d=google.com; s=arc-20160816;
        b=a9mt86paIDe0xDCGrU+fdpJ1IuY4MToVKEv4ZnV9Tmq66cQNBv9Li0oXj7hUqrYsjO
         u3e1n4H86tIJGJnMw89djEizocZXvm4dS/BplvZFyUMNpCFF4UL5H/r0IzruHZW30ETd
         APnGCnMx3xp3uAK0yQTYChaEyS9YSUtLfcMhG/rq8hEfZjDglIbOmSVCKY9npKX2bmhe
         xOdQosG+bPGys++tVLp5cOWqP5xcPPcTkxt8ET3jeN8KfvjxSctbO+VT4A+qxpA/ROcO
         wtIJACYpPjRF/lqC54E+OxovGXcKvg4ddxtrugJThiz5lH1c5F/TTc9Xy9AY4kkCBqam
         zcng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=koo5fNbzo3NrfKjqA+o9jME10lsFEiQkp6PTL2DyyXY=;
        b=RL6HpVY/F/Sl5PS9r4I0zygCer8erooa1FqltnSXBxBYnX81Y/C4gU1Hs9tow6wpxS
         mqUjj34NvbeRVDHtSL9basNsMmwyEQVmbY0uXbLkV8ay0k8YtPfaai7ERP8/C9dyiEja
         mS7A44Anj8GqkcaoI6MulS9RGK7abNiF8UTXap6oT9MLRmC8EhQW/7BBXdr8cDJ1a9Mu
         PG2YmVqrdu+5DonbkuRouKzA/EG4Kt8zTYWLRgFRGyPfzMhm4OAJs4NAc6MEkBq3xCT8
         aB/v9IOSxjyR/D87XRjy9TWYZKLCheU06GGhWldSD2NVkckUGJ/PAEQdOMoMjVXc65zs
         lrcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-56.freemail.mail.aliyun.com (out30-56.freemail.mail.aliyun.com. [115.124.30.56])
        by gmr-mx.google.com with ESMTPS id d13si804547oti.0.2021.06.11.03.16.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 03:16:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as permitted sender) client-ip=115.124.30.56;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R811e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04423;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=9;SR=0;TI=SMTPD_---0Uc2UO4S_1623406576;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0Uc2UO4S_1623406576)
          by smtp.aliyun-inc.com(127.0.0.1);
          Fri, 11 Jun 2021 18:16:18 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: paul@paul-moore.com
Cc: stephen.smalley.work@gmail.com,
	eparis@parisplace.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	selinux@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH -next v2] selinux: Fix kernel-doc
Date: Fri, 11 Jun 2021 18:16:07 +0800
Message-Id: <1623406567-51427-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as
 permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Fix function name and add comment for parameter state in ss/services.c 
kernel-doc to remove some warnings found by running make W=1 LLVM=1.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---

Change in v2
--Add comment for parameter state

 security/selinux/ss/services.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/security/selinux/ss/services.c b/security/selinux/ss/services.c
index 3658488..d84c77f 100644
--- a/security/selinux/ss/services.c
+++ b/security/selinux/ss/services.c
@@ -859,6 +859,7 @@ int security_validate_transition(struct selinux_state *state,
  * It returns 0, if @newsid is bounded by @oldsid.
  * Otherwise, it returns error code.
  *
+ * @state: SELinux state
  * @oldsid : current security identifier
  * @newsid : destinated security identifier
  */
@@ -1098,6 +1099,7 @@ void security_compute_xperms_decision(struct selinux_state *state,
 
 /**
  * security_compute_av - Compute access vector decisions.
+ * @state: SELinux state
  * @ssid: source security identifier
  * @tsid: target security identifier
  * @tclass: target security class
@@ -1386,6 +1388,7 @@ static int security_sid_to_context_core(struct selinux_state *state,
 
 /**
  * security_sid_to_context - Obtain a context for a given SID.
+ * @state: SELinux state
  * @sid: security identifier, SID
  * @scontext: security context
  * @scontext_len: length in bytes
@@ -1411,6 +1414,7 @@ int security_sid_to_context_force(struct selinux_state *state, u32 sid,
 /**
  * security_sid_to_context_inval - Obtain a context for a given SID if it
  *                                 is invalid.
+ * @state: SELinux state
  * @sid: security identifier, SID
  * @scontext: security context
  * @scontext_len: length in bytes
@@ -1587,6 +1591,7 @@ static int security_context_to_sid_core(struct selinux_state *state,
 
 /**
  * security_context_to_sid - Obtain a SID for a given security context.
+ * @state: SELinux state
  * @scontext: security context
  * @scontext_len: length in bytes
  * @sid: security identifier, SID
@@ -1616,6 +1621,7 @@ int security_context_str_to_sid(struct selinux_state *state,
  * security_context_to_sid_default - Obtain a SID for a given security context,
  * falling back to specified default if needed.
  *
+ * @state: SELinux state
  * @scontext: security context
  * @scontext_len: length in bytes
  * @sid: security identifier, SID
@@ -1907,6 +1913,7 @@ static int security_compute_sid(struct selinux_state *state,
 
 /**
  * security_transition_sid - Compute the SID for a new subject/object.
+ * @state: SELinux state
  * @ssid: source security identifier
  * @tsid: target security identifier
  * @tclass: target security class
@@ -1962,6 +1969,7 @@ int security_member_sid(struct selinux_state *state,
 
 /**
  * security_change_sid - Compute the SID for object relabeling.
+ * @state: SELinux state
  * @ssid: source security identifier
  * @tsid: target security identifier
  * @tclass: target security class
@@ -2260,6 +2268,7 @@ void selinux_policy_commit(struct selinux_state *state,
 
 /**
  * security_load_policy - Load a security policy configuration.
+ * @state: SELinux state
  * @data: binary policy data
  * @len: length of data in bytes
  *
@@ -2367,6 +2376,7 @@ int security_load_policy(struct selinux_state *state, void *data, size_t len,
 
 /**
  * security_port_sid - Obtain the SID for a port.
+ * @state: SELinux state
  * @protocol: protocol number
  * @port: port number
  * @out_sid: security identifier
@@ -2423,7 +2433,8 @@ int security_port_sid(struct selinux_state *state,
 }
 
 /**
- * security_pkey_sid - Obtain the SID for a pkey.
+ * security_ib_pkey_sid - Obtain the SID for a pkey.
+ * @state: SELinux state
  * @subnet_prefix: Subnet Prefix
  * @pkey_num: pkey number
  * @out_sid: security identifier
@@ -2482,6 +2493,7 @@ int security_ib_pkey_sid(struct selinux_state *state,
 
 /**
  * security_ib_endport_sid - Obtain the SID for a subnet management interface.
+ * @state: SELinux state
  * @dev_name: device name
  * @port: port number
  * @out_sid: security identifier
@@ -2540,6 +2552,7 @@ int security_ib_endport_sid(struct selinux_state *state,
 
 /**
  * security_netif_sid - Obtain the SID for a network interface.
+ * @state: SELinux state
  * @name: interface name
  * @if_sid: interface SID
  */
@@ -2614,6 +2627,7 @@ static int match_ipv6_addrmask(u32 *input, u32 *addr, u32 *mask)
 
 /**
  * security_node_sid - Obtain the SID for a node (host).
+ * @state: SELinux state
  * @domain: communication domain aka address family
  * @addrp: address
  * @addrlen: address length in bytes
@@ -2707,6 +2721,7 @@ int security_node_sid(struct selinux_state *state,
 
 /**
  * security_get_user_sids - Obtain reachable SIDs for a user.
+ * @state: SELinux state
  * @fromsid: starting SID
  * @username: username
  * @sids: array of reachable SIDs for user
@@ -2899,6 +2914,7 @@ static inline int __security_genfs_sid(struct selinux_policy *policy,
 
 /**
  * security_genfs_sid - Obtain a SID for a file in a filesystem
+ * @state: SELinux state
  * @fstype: filesystem type
  * @path: path from root of mount
  * @sclass: file security class
@@ -2943,6 +2959,7 @@ int selinux_policy_genfs_sid(struct selinux_policy *policy,
 
 /**
  * security_fs_use - Determine how to handle labeling for a filesystem.
+ * @state: SELinux state
  * @sb: superblock in question
  */
 int security_fs_use(struct selinux_state *state, struct super_block *sb)
@@ -3282,6 +3299,7 @@ int security_sid_mls_copy(struct selinux_state *state,
 
 /**
  * security_net_peersid_resolve - Compare and resolve two network peer SIDs
+ * @state: SELinux state
  * @nlbl_sid: NetLabel SID
  * @nlbl_type: NetLabel labeling protocol type
  * @xfrm_sid: XFRM SID
@@ -3506,6 +3524,7 @@ int security_get_allow_unknown(struct selinux_state *state)
 
 /**
  * security_policycap_supported - Check for a specific policy capability
+ * @state: SELinux state
  * @req_cap: capability
  *
  * Description:
@@ -3840,6 +3859,7 @@ static void security_netlbl_cache_add(struct netlbl_lsm_secattr *secattr,
 
 /**
  * security_netlbl_secattr_to_sid - Convert a NetLabel secattr to a SELinux SID
+ * @state: SELinux state
  * @secattr: the NetLabel packet security attributes
  * @sid: the SELinux SID
  *
@@ -3922,6 +3942,7 @@ int security_netlbl_secattr_to_sid(struct selinux_state *state,
 
 /**
  * security_netlbl_sid_to_secattr - Convert a SELinux SID to a NetLabel secattr
+ * @state: SELinux state
  * @sid: the SELinux SID
  * @secattr: the NetLabel packet security attributes
  *
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1623406567-51427-1-git-send-email-yang.lee%40linux.alibaba.com.
