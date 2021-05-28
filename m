Return-Path: <clang-built-linux+bncBC53FPW2UIOBBJE5YWCQMGQECRGQGII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A213947D2
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 22:12:21 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id d8-20020a0564020008b0290387d38e3ce0sf2685434edu.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 13:12:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622232740; cv=pass;
        d=google.com; s=arc-20160816;
        b=G6gCQ+FbzjPHQkxHMHCqJHRx7LgHSkXj3R01fxtPP9jCGIzCIb8ZA3GCOuaJ25eqUp
         xreINufKBF/5N9EEI4rAcAqzNAtjqIRCu8D/L8segZkUOVk71UcV2JGMWpUaXEDtVyNb
         6SnMuADzmPpsO0FiEmnULeM1gouTGOPvU0p9NkDOuHDSikUzwJdNyv55f84Z2XGBwyal
         iYwPyI5y7uG+iOdHpi+erNKEyynTIj90sD9P693aVq2JVpFob3u9jCsK2OBfkAJPK49R
         3VvqYObf5gmEJJ+h79rnRatWbD8AL7c36U7PRPEnugVPDnIgVCivFprOKDrd5AuQdW3M
         2uRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=eYZQTI9RXW2ZtkJb+b3LuOsDlWeiIbhncD77cfiNy5g=;
        b=TtyBLO9fmCx4uL7d/XYM+ynylAdhqckVOzajxqQciiRkwae6NAeAz57DDReD4dpavW
         WDueav3oAfJ1JdN7bXX1hvzqetdbppXCscWQU/JLZYNIJbkVfx8ESyJi2PZs4HHZsCHl
         GGMOwhZMgM+/NYOvW2RNnVqVDtDTo+tszNvxX4br0gNcR6EKXwhtADIhtx7hivZ0lsIw
         yWBMUYYOwASniaKkrbLaIRXkqRorwPqqf010T/NCLFKJNC7ojfw/5/y1J9eIe7D4Qi47
         Yc4eL/jb+8LcYOcU4WGwLWZeMknEJIl1u6rbvK5hzLUEj5k2dn2TJTigqRlSelVh50Xb
         0PUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BQ50Ftej;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eYZQTI9RXW2ZtkJb+b3LuOsDlWeiIbhncD77cfiNy5g=;
        b=tkm9px0iD21bM8PZkfEfDeyw6inz4FXUeyfWIWfjbl5Dnxc56deTFw0am+QK1s8cBG
         B5CTv+arfKVFDK88NyJAhamtX6WO+DY6LdBp+KnmXcf7OxTZNF3anywe762Tzpp/K0sf
         F5qE5kn0pNJIjI0XtGvVD52Hut73IZYBT3U39lmSc4TL1v0qeTP0E8gxbqgdAM6VsTIn
         LXWUqXAEKHXJhrqXpDc+8fjRqdK7c+mSlPjqDrsiY7kjiZN4a5FmkkRNfgfUWG52YLju
         uO2dF2+hAvJ5PLJ+UlKNyZtnKE4+ILE401sdPK+EpPLhPLGhxTDZIxbF9Or7w+6p0+0k
         GhMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eYZQTI9RXW2ZtkJb+b3LuOsDlWeiIbhncD77cfiNy5g=;
        b=Z6vb5xjsCWFD9PFZ59WG/dQQpP7cJqjGVOLTBjQ09fnLOBvcvsX8ezpLqJG6BdaEQv
         F9TppMawzDAkg6uBHtm7Gr49a/5GKc7kbJrYj/PPk5IiYRJ7Z1O+Fi2GNdWOfYrbwMVJ
         wVzYFpkCeUhdzI1H3GmGgqvL482Sm2MSQePoa+6Y3Tf5A6nqONJnPvGzSXOCY4DmCXaW
         TrH2Sed19FVq+6JxQMzfgK/oLRyH65kkZQzk6YyvjxFn71IB00eu/XcQ3ezFCGc8xFJY
         7XRFC68Soch2ofznr3J8h+UOhnmUTXzKG/8LKImETkrWXJ5yEt5zyBVcW33h15KgyvTD
         ylBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eYZQTI9RXW2ZtkJb+b3LuOsDlWeiIbhncD77cfiNy5g=;
        b=U11XOS54uHSfdVniG0ZAKs3QwkJvt6aexTZLSAs6tHoGbfjhISxamlnZp0Xf5FxFGG
         HbHA8qw3SM8EVoaHcq1keS3lY9JsmBcnn5sqKICgiAOUZobw8+crTtT4FugMl9g/6kfL
         bzirPzaQ2dsI/ecKoxmleXa5ucWBr/L4X53MoL4wy2dkEZc/VX5svWedPM6KvDmOh90v
         raaFPmx4kz7nDgQs3+cuEn586St5aQcw12Muid4HDjUcU115Lc88ZKXjklGbnLSCPoGT
         1kuz5kMNQtMozpy7o7qFIr9vmJc9qKaCesOlIonlwZfkqqTLDXqAnh2nqawXuKgieAej
         U4Hg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532mbMgIckGbNhkqFwQ64exnYVeBSji5MTV8Jr85UnX1gTCL7slL
	uTssuXDn0FIphyYeL3LudZg=
X-Google-Smtp-Source: ABdhPJzoa0jawlj1YmGLHqq5gdRMkoiWILHSE2mZXoXq5qRZC9fgOpWB3WOC7aDsWEoA+pVP3UuIlw==
X-Received: by 2002:a17:906:2854:: with SMTP id s20mr10650305ejc.335.1622232740761;
        Fri, 28 May 2021 13:12:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1c97:: with SMTP id cy23ls1178781edb.0.gmail; Fri,
 28 May 2021 13:12:19 -0700 (PDT)
X-Received: by 2002:a05:6402:128e:: with SMTP id w14mr11792897edv.99.1622232739857;
        Fri, 28 May 2021 13:12:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622232739; cv=none;
        d=google.com; s=arc-20160816;
        b=vTm7lT0zW9csI/Mx++y7apNlahNFyzAUS/aTtxOtY3urRweW2hTlcysHFOhjqLBaQn
         2NIptxrMFute2GXygxDFjwbjYFEHb8Ygdyaf6hRFOJC0c6Mz047iPBrX5vjGhiERrV9c
         ZvldDgpKZvOgQQWWUYzN5RPTCDXPPKLCT6Bf7Qm/xoBj55u/7umVVyc7AYIsXqqmYFyD
         /5rxTTCsd7PClbjUZUOah677oENqtEtEWQikHgfPCVVLV+aOOvPPFgQ+F/qCbsgusyLc
         iGF4zyeewWekErYTPdp3rcUom/6PvP15lQRAkpYHS3s/FYpsCym9ypZ+xidYcgvzX3a3
         D45w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=730RyWLlIkS/afgq41VA6uiOuJV1jg//1PGLIJFflks=;
        b=fZ2xEtdIwDVcQZq586CILNKgJqVSW5eKvAiV+wPWMTMviM31iMjYyaultHngOopio+
         nsponq6gZNzd9dh8pE2oHDXYVQSej82WvoahvZ/s3+kFI4JhgsiOMarVNHBwLnTqXIiJ
         lvNDDn63Gml7nh7CS15S70lW0u0yRekZ6+9sAGkY9bvSDOwrhAn9rU9XMsQ4691dmYET
         b2nZ9JdMiyEOe+SE36ycNRhXLs3zzjGlNOKPKL7+9uhKaOJAUW+ozAawwc+thuAWJRYd
         ZyHM/tfmqpV+ZyJ57TLeM1B8UQd5M7WVnHuJzKvgfYrMCDNWHjkjsap/VFqT3mudsZeW
         QwIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BQ50Ftej;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::231 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com. [2a00:1450:4864:20::231])
        by gmr-mx.google.com with ESMTPS id cc21si391289edb.2.2021.05.28.13.12.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 May 2021 13:12:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::231 as permitted sender) client-ip=2a00:1450:4864:20::231;
Received: by mail-lj1-x231.google.com with SMTP id y7so1170568ljd.7
        for <clang-built-linux@googlegroups.com>; Fri, 28 May 2021 13:12:19 -0700 (PDT)
X-Received: by 2002:a2e:b4f3:: with SMTP id s19mr7781563ljm.10.1622232739678;
        Fri, 28 May 2021 13:12:19 -0700 (PDT)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4yg81q1---xrfn1y-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:bcab:6bff:fe6e:22ea])
        by smtp.gmail.com with ESMTPSA id u16sm550980lfl.83.2021.05.28.13.12.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 May 2021 13:12:19 -0700 (PDT)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: samitolvanen@google.com
Cc: wcw@google.com,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>
Subject: [PATCH 6/6] pgo: Fixup code style issues.
Date: Fri, 28 May 2021 23:12:13 +0300
Message-Id: <20210528201213.459483-1-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BQ50Ftej;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::231
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

Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
 kernel/pgo/instrument.c | 106 ++++++++++++++++++++--------------------
 1 file changed, 53 insertions(+), 53 deletions(-)

diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
index a95c86d668b5..b30104411879 100644
--- a/kernel/pgo/instrument.c
+++ b/kernel/pgo/instrument.c
@@ -31,7 +31,7 @@
  * ensures that we don't try to serialize data that's only partially updated.
  */
 static DEFINE_SPINLOCK(pgo_lock);
-static int current_node = 0;
+static int current_node;
 
 unsigned long prf_lock(void)
 {
@@ -55,58 +55,58 @@ void prf_unlock(unsigned long flags)
 static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
 						 u32 index, u64 value)
 {
-    struct prf_mod_private_data *pmod;
-    struct llvm_prf_data *start = __llvm_prf_data_start;
-    struct llvm_prf_data *end = __llvm_prf_data_end;
-    struct module * mod;
-    struct llvm_prf_value_node * vnds = __llvm_prf_vnds_start;
-    struct llvm_prf_value_node * vnds_end = __llvm_prf_vnds_end;
-
-    if(start <= p && p < end) {
-        /* vmlinux core node */
-        if (&vnds[current_node + 1] >= vnds_end)
-            return NULL; /* Out of nodes */
-
-        current_node++;
-
-        /* Make sure the node is entirely within the section
-         */
-        if (&vnds[current_node] >= vnds_end ||
-            &vnds[current_node + 1] > vnds_end)
-            return NULL;
-
-        return &vnds[current_node];
-
-    } else {
-        /* maybe an module node
-         * find in what module section p points into and
-         * then allocate from that module
-         */
-        rcu_read_lock();
-        list_for_each_entry_rcu(pmod,&prf_mod_list,link) {
-            mod = READ_ONCE(pmod->mod);
-            if(mod) {
-                /* get section bounds */
-                start = mod->prf_data;
-                end = mod->prf_data + mod->prf_data_size;
-                if(start <= p && p < end)
-                {
-                    vnds = mod->prf_vnds;
-                    vnds_end = mod->prf_vnds + mod->prf_vnds_size;
-                    if (&vnds[pmod->current_node + 1] < vnds_end) {
-                        pmod->current_node++;
-
-                        vnds = &vnds[pmod->current_node];
-                        rcu_read_unlock();
-                        return vnds;
-                        break;
-                    }
-                }
-            }
-        }
-        rcu_read_unlock();
-        return NULL; /* Out of nodes */
-    }
+	struct prf_mod_private_data *pmod;
+	struct llvm_prf_data *start = __llvm_prf_data_start;
+	struct llvm_prf_data *end = __llvm_prf_data_end;
+	struct module *mod;
+	struct llvm_prf_value_node *vnds = __llvm_prf_vnds_start;
+	struct llvm_prf_value_node *vnds_end = __llvm_prf_vnds_end;
+
+	if (start <= p && p < end) {
+		/* vmlinux core node */
+		if (&vnds[current_node + 1] >= vnds_end)
+			return NULL; /* Out of nodes */
+
+		current_node++;
+
+		/* Make sure the node is entirely within the section
+		 */
+		if (&vnds[current_node] >= vnds_end ||
+			&vnds[current_node + 1] > vnds_end)
+			return NULL;
+
+		return &vnds[current_node];
+
+	} else {
+		/* maybe an module node
+		 * find in what module section p points into and
+		 * then allocate from that module
+		 */
+		rcu_read_lock();
+		list_for_each_entry_rcu(pmod, &prf_mod_list, link) {
+			mod = READ_ONCE(pmod->mod);
+			if (mod) {
+				/* get section bounds */
+				start = mod->prf_data;
+				end = mod->prf_data + mod->prf_data_size;
+
+				if (start <= p && p < end) {
+					vnds = mod->prf_vnds;
+					vnds_end = mod->prf_vnds + mod->prf_vnds_size;
+
+					if (&vnds[pmod->current_node + 1] < vnds_end) {
+						pmod->current_node++;
+
+						vnds = &vnds[pmod->current_node];
+						rcu_read_unlock();
+						return vnds;
+					}
+				}
+			}
+		}
+		rcu_read_unlock();
+		return NULL; /* Out of nodes */
+	}
 }
 
 /*
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210528201213.459483-1-jarmo.tiitto%40gmail.com.
