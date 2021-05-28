Return-Path: <clang-built-linux+bncBC53FPW2UIOBBLE4YWCQMGQET2VUPTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1483947CE
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 22:10:20 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id r1-20020a05600c35c1b029018ec2043223sf1361960wmq.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 13:10:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622232620; cv=pass;
        d=google.com; s=arc-20160816;
        b=TGs861vbJ43FQJWEece7CSEjS/xhkU50/tu+tJjLQjQCMFusKl9TZEUgx14SzuNe4B
         TjaxoPQZu6wwW8Kon4yg1mkzEq8Bkc7n9iQEeJYrWWXCp3lfXOU7H1zDfA+NL64gP3Hn
         t6sjllHmFEWlBlLEeoU707wc2DdXipL+g7aPFqxBmQMmDe8hhG5uPZ8C0UCdnorb3Lw3
         As962HXnxQoo1pdVXnagBJeYIy2o4NdV5P4kEG9vRWq1n8k8Q7NnX5Oj6KRATRm5fD7f
         wBRXc8nIevrpNl/TVr8B8LBSryg0D36wTXUwb2PIWC2fsoCQtCJpOsnjFyAzbBuPJZIo
         licw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=QTXS7zymIvickZeNoM45OU6sH+JgYqwrpC2VBEM9Q/Y=;
        b=wbwR9Wi/vY2ubWGS21Bi3ua8cyMqbRJ7BnSdd4RUN2+b8fZRqv3IMJC24Gfngl4tfM
         SwmEZgULY89TPLvlZBfeeV3gLWQN7JWJ36jTVwNefdg7Lm6Kxh2KKk47qQOkovOBGGv1
         IS29EDgeezg/k1z6tuM8VttmKJUQE4Jem2zk1pZQk3Alh87+tpUjiVcYP4RbvoKkUdAp
         WsZ+uhF2IgzpFOF1yXXsBVnTFLxoOV5mSi+IkQY7+Cyy7Fv1M1cLu3fj/eY4AH5DeNcl
         uPRrtYjYIh6cAxMSl3BgbqOVtUJcWMF6vRvBA059KTWbZky8Oacc70mg82MmDRXS4os3
         1JSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CTDR1zgI;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QTXS7zymIvickZeNoM45OU6sH+JgYqwrpC2VBEM9Q/Y=;
        b=tHSHbOO1LPBMCvKyw0IEReEchv331ER+vMGvD3l1g8JJbe+xjmPkKsPhZkgORxo5Ge
         zrkUzuQJj8Ut6lVUMgheBIk0fCZWKLi5IB0GRhlRa3dBHMPf3onz5IsIURPkGjHzYK9C
         VC3cK7ozvo/okPn32isBNoACm0zESoSwJSgoaPbVFujiO9sRn4bQVuE68ERDYirwgZFT
         GJoCEbKWG48PbEqcZ/gXcvWE4jog5ER84aVFMJc6ZUS1wNs7i0mTmpRrrtYE3RBgDYoa
         oIQD+4+wtHfDKjmi1gQqIW5VH1iYcr5kof4J8ozXaUlLJT6WM5rjxCHuFSQ+/9JdsxV9
         3YBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QTXS7zymIvickZeNoM45OU6sH+JgYqwrpC2VBEM9Q/Y=;
        b=BjJm/itmWUQ58BsYDOtfRJjeYIYBjaGPsASatOEFEuSyOd+hpkucgSxxBRGeKBsW9i
         dYnY91eFo2S6NYHO3OghVLYKKVYMnfFrwNpxzwyealqd9ZsKFCJ5XQ0S9HQPsTr4lf8B
         pmUFufa439F5164MNbGzvm9oGGqUhLoqVTf05El0z4nkG+inUHcQGXhOA83LO8TUzK19
         M2km8+oho/wayeRsYrtnPLDDdEDkZxekIrpEe7KO8ik/zOA0OAVHuMCDCLf+7zH388TO
         3oeFVME+IX9AKfrpS6AvDB2s02DJWvBq6Ah5Hwcb8uJjI0/mwY93rrw1QfQ6N4rWvbtA
         19YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QTXS7zymIvickZeNoM45OU6sH+JgYqwrpC2VBEM9Q/Y=;
        b=IeUA3Il/KW5ZNPP8Hv8W73Yn/4blBpx1my7PDIVubCiCvPn+X5dWjdhA2YYiSKJWj6
         knwPg1ze9J+0h4f4z7U/Rg8hfflL9VbibG9ezOoSaR43uqgWJj6fKppUPftSoXYqUmex
         21d8qo2biYLPCAEipUP6y4uJ1/yZDh6RcBn41MND/BdRsH1dtHni3B2OzzywIgOsjTAR
         5qavgy4EMILXTF/dDr9AWNqfrLGc7igp13WU/Bftsm9u/pKIrNcJVh6xM2+70Q3rF/lm
         Q2fhqGzEavB9PIHiMqYBmHvnINk30hP2VIUBkEw0iIufrF9tF4LNkRijdboy/eGJGi9+
         sx7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lvDswgxxOZ4Sx+3SAAVLhjIGM8P2o2jcJdLl5fy3HvhePKLtF
	GFnMjQd8PbA0zk/yiPXKQTQ=
X-Google-Smtp-Source: ABdhPJzSmoQL9/Y0vNZ/aXgFHbSmtmsg/02q4KYk7ByesyuWjRY9Wm/wMjNMt4inaQmhmJd6sQLnbw==
X-Received: by 2002:a05:6000:1848:: with SMTP id c8mr10635973wri.310.1622232620466;
        Fri, 28 May 2021 13:10:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:2a8:: with SMTP id l8ls1194525wry.1.gmail; Fri, 28
 May 2021 13:10:19 -0700 (PDT)
X-Received: by 2002:adf:db4e:: with SMTP id f14mr10177865wrj.48.1622232619494;
        Fri, 28 May 2021 13:10:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622232619; cv=none;
        d=google.com; s=arc-20160816;
        b=p8G67+LyM+DHN8HUmNNzVBZiKD/lXQqhTVixyuqeu0NoX/RUnj2IHeFHc/qYtZM3xa
         c5Xf+uk3GYurGc7VW6NKGE7t/LKuT7Irw6HrLT2qkS3wCYk4gw19yq68TPq/7DHXrJUc
         hEs8SOILD7SDrY4rhJiECGCsMJDG0mKv0kJunhCeKeD0a856zTJo5B3dbdZnqvdjEqAL
         LcNaYV7mQIeQC7LLQQJ2XbM6VR24wVwlZvtD0ApaCY6zn+I033x4LoZWE/LMVOxUKpwH
         G6TjP0jHdxusdhIAVBpk/uXu0yqM8g0kjcSrYzXhYLwCkmSNz+rNfg7Gi9XRpMBuuepB
         K64w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=zRtz6gK/225LmKBawe8JmKSmjRSkTz4Gg05ZHMiOgL8=;
        b=dfEcSMgVVXjuEeGb0kDiCD9zmSjEtKbT+R0lsIdulVVP4WQ3mNXamtq/f703JyXwCQ
         cgS0IQOeta2J1WQm17vt9xWSy40cTr0i6N1Wi+eOG1Nszy2cE/rEmvNe1n6s0YFCq/LV
         0rUnxxqWerbkfUKtuANg8KjJIUU5oSDcGaPFwof570xfn1jqUTHZ++muoIqhnzsvtxbn
         u1r9wAp5u7Cy/cY8VXMjJbjHHhB67EtnwKldGE5V1RnY/jed+CF/OAvCkFkB4Jb+r5qV
         OnxeCuhUjef1+/27WoY1LAiIM6OW6ogRcQX4xiwFUkhvc1WEKxsdtKvXGPIJc/1/Xv3c
         Y47w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CTDR1zgI;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id g18si382542wmc.0.2021.05.28.13.10.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 May 2021 13:10:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id o8so6839032ljp.0
        for <clang-built-linux@googlegroups.com>; Fri, 28 May 2021 13:10:19 -0700 (PDT)
X-Received: by 2002:a05:651c:3c9:: with SMTP id f9mr7842438ljp.403.1622232619293;
        Fri, 28 May 2021 13:10:19 -0700 (PDT)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4yg81q1---xrfn1y-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:bcab:6bff:fe6e:22ea])
        by smtp.gmail.com with ESMTPSA id o14sm549724lfr.94.2021.05.28.13.10.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 May 2021 13:10:19 -0700 (PDT)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: samitolvanen@google.com
Cc: wcw@google.com,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>
Subject: [PATCH 4/6] pgo: modules Enable __llvm_profile_instrument_target() for modules
Date: Fri, 28 May 2021 23:10:06 +0300
Message-Id: <20210528201006.459292-1-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CTDR1zgI;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::22e
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
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

Enable allocate_node() for modules.

Before this patch __llvm_profile_instrument_target() profiled all
code which was instrumented, including modules.
Any module profiling was however effectively disabled by allocate_node()
if llvm_prf_data instance didn't point into core section.

Handle profiling data that orginates from modules by iterating
prf_mod_list and checking in what module the llvm_prf_data instance
points into.
If matching module is found the node is allocated from that module.
Each module has then its own current_node index.
The list iteration is protected by rcu here to avoid extra mutex.

Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
 kernel/pgo/instrument.c | 65 +++++++++++++++++++++++++++++++++--------
 1 file changed, 53 insertions(+), 12 deletions(-)

diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
index 98cfa11a7b76..a95c86d668b5 100644
--- a/kernel/pgo/instrument.c
+++ b/kernel/pgo/instrument.c
@@ -31,7 +31,7 @@
  * ensures that we don't try to serialize data that's only partially updated.
  */
 static DEFINE_SPINLOCK(pgo_lock);
-static int current_node;
+static int current_node = 0;
 
 unsigned long prf_lock(void)
 {
@@ -55,17 +55,58 @@ void prf_unlock(unsigned long flags)
 static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
 						 u32 index, u64 value)
 {
-	if (&__llvm_prf_vnds_start[current_node + 1] >= __llvm_prf_vnds_end)
-		return NULL; /* Out of nodes */
-
-	current_node++;
-
-	/* Make sure the node is entirely within the section */
-	if (&__llvm_prf_vnds_start[current_node] >= __llvm_prf_vnds_end ||
-	    &__llvm_prf_vnds_start[current_node + 1] > __llvm_prf_vnds_end)
-		return NULL;
-
-	return &__llvm_prf_vnds_start[current_node];
+    struct prf_mod_private_data *pmod;
+    struct llvm_prf_data *start = __llvm_prf_data_start;
+    struct llvm_prf_data *end = __llvm_prf_data_end;
+    struct module * mod;
+    struct llvm_prf_value_node * vnds = __llvm_prf_vnds_start;
+    struct llvm_prf_value_node * vnds_end = __llvm_prf_vnds_end;
+
+    if(start <= p && p < end) {
+        /* vmlinux core node */
+        if (&vnds[current_node + 1] >= vnds_end)
+            return NULL; /* Out of nodes */
+
+        current_node++;
+
+        /* Make sure the node is entirely within the section
+         */
+        if (&vnds[current_node] >= vnds_end ||
+            &vnds[current_node + 1] > vnds_end)
+            return NULL;
+
+        return &vnds[current_node];
+
+    } else {
+        /* maybe an module node
+         * find in what module section p points into and
+         * then allocate from that module
+         */
+        rcu_read_lock();
+        list_for_each_entry_rcu(pmod,&prf_mod_list,link) {
+            mod = READ_ONCE(pmod->mod);
+            if(mod) {
+                /* get section bounds */
+                start = mod->prf_data;
+                end = mod->prf_data + mod->prf_data_size;
+                if(start <= p && p < end)
+                {
+                    vnds = mod->prf_vnds;
+                    vnds_end = mod->prf_vnds + mod->prf_vnds_size;
+                    if (&vnds[pmod->current_node + 1] < vnds_end) {
+                        pmod->current_node++;
+
+                        vnds = &vnds[pmod->current_node];
+                        rcu_read_unlock();
+                        return vnds;
+                        break;
+                    }
+                }
+            }
+        }
+        rcu_read_unlock();
+        return NULL; /* Out of nodes */
+    }
 }
 
 /*
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210528201006.459292-1-jarmo.tiitto%40gmail.com.
