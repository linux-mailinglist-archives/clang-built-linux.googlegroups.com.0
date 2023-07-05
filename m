Return-Path: <clang-built-linux+bncBAABBDVESSSQMGQELGH3KQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oa1-x3b.google.com (mail-oa1-x3b.google.com [IPv6:2001:4860:4864:20::3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5F2747D42
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Jul 2023 08:47:44 +0200 (CEST)
Received: by mail-oa1-x3b.google.com with SMTP id 586e51a60fabf-1b393e5fd7fsf286389fac.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Jul 2023 23:47:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1688539663; cv=pass;
        d=google.com; s=arc-20160816;
        b=bat8qHfGkVowIBNNk52Js93ErPVRJhQeI0wYDr/vYb9AUUfsuFX9BezUmAc+PD1fDl
         ntw55dNfnMRydpE5FEn1Hqi77jrjGpkSzBXFGiqFnoTc93Wc4bMUgRnZJ69wi3sY+Rhj
         nVnRy+qoYW2Xwq1/V605ggc/M4dorQT+GyuvpXW0acnEcEhCnyJdcXpvTYClLpcxDUGX
         9QXkGEqjO2DMIInlq7CjNsgoTeE3I+bFCk12RzgzGamuCzWLR0o6IHe9ZYGTRGqEvVVz
         Od11JSRqwfh9EvzyPTRN7wyaBWr+qgpOgp7g4b0XFrXAAeKJPYxj7uexQN0KW6v+tiA4
         BKVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Jqu3LVgqbovaL55dGAtkRLk50E3dV0zyEd6+ImaE0cU=;
        fh=0aO6IHdmIGEeyblc5BGLyqLApWOzZ3sYXY88uRTc9UQ=;
        b=Vno2uaaC4Xf26bVSuGXapDRY1TS5OFZQ5WvE8LZ4H9FBmduuoilRnHO3h3bCfyLT6D
         YwqRHgj3/ZCylCOJP5wloeaISZCgY6YdKLKPMbNOb2U4KmVrfVZVHarBvdeotVIYLhs7
         jzZwVOPBuMCp4Rz8eGxQyz8JpoeWOrb/k1Im2ykR5T3TdOw4eeOq+27mGoWY9Gc7LKa3
         ZKE77DCxTiKWpbq3fMwII330pqatY8ug0T7t6PO/4zZTpaMis8b2s2a0Was+tFb2DoGY
         PjYWvz1XqUL//dmU2ru6UUzFNVT6xjk+usgWCxBrDGgrqs1lMQNkG4qKFxi7pUa0jDOZ
         SPEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1688539663; x=1691131663;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Jqu3LVgqbovaL55dGAtkRLk50E3dV0zyEd6+ImaE0cU=;
        b=CrkMFsAfU6WAYoY9YRudKQQQ7Glzvr6cYJ3e4V7CqnctNjb4qJOqhR1eIae4dBiwkD
         Da9PUJzaQkTh9qjd8/bm6K4iHxmE1eVRAQkInvJK2l4jK1rvpWrw8jVu1vuPN50Rr7We
         lcj4SZ8gXEc+A14R3v8C7kos0NK8QvX8IOJslV5j9FqM/dCkecmfs1e+kuYZT9wDRyWA
         F+mNQ6LpyLYyyEI0vn4+yAnAscjiUu+3R3e6a3aDlIaAikvWfqZLGn6tAXcEUqgYex6j
         636Hf3Dst+NmQGYxJzKdgZkP/Mrl8uIIcUrR3NtRp81+VjclbB6QUvlMqarQWJj2vC1B
         xBSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688539663; x=1691131663;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jqu3LVgqbovaL55dGAtkRLk50E3dV0zyEd6+ImaE0cU=;
        b=CU9cMBRtw1AJB02hGdvIU/D7866NOw3G32yOvD503G8Xu2zWnzPnfscw/lBxKsvzO/
         kWtlA556TD+p18Jv2uA1SlO2yZP1AqtlsHwc31AgE7xSCLgBHgTZAQ9yHlnl4MkqZf7a
         ie4IGNo/GZQ9xNYr0xWvNf/TWHmezdUNYTAUuP0LNFuUK4oyOMCIctEDYYY/9Kz3uPHy
         5EKy9Nmzh6oIsqahpr/yKRC1wq6OhbJA4YUl8FF/D3YhFp6WyKvhp0Hoz0GWKhHlHtgN
         x4ZWlZardsgBWQFBbRAN3QptDrwVGnM1tjbLOGhVrDdVKEjVFKMvdmgkWWeLBpm7pp51
         TAew==
X-Gm-Message-State: ABy/qLbzGQimhu5OO3G/tE8S4vMneW/YAeF0YVeduURm4ryhCOpe1q8l
	3sgVA22+Q9QoNzI7t/3b81k=
X-Google-Smtp-Source: APBJJlFZoFDI+p/RunwORjPzZ0HIT5XfNPbBVWLUzOUqvFxo0kREmbHGQTg/Nmn26X3JO/7vxP89SQ==
X-Received: by 2002:a05:6870:414f:b0:1b0:738f:712d with SMTP id r15-20020a056870414f00b001b0738f712dmr13013693oad.5.1688539663060;
        Tue, 04 Jul 2023 23:47:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6870:d1c8:b0:1ad:11bf:6d1a with SMTP id
 b8-20020a056870d1c800b001ad11bf6d1als64142oac.2.-pod-prod-04-us; Tue, 04 Jul
 2023 23:47:42 -0700 (PDT)
X-Received: by 2002:a05:6808:11cc:b0:39c:767e:bfc6 with SMTP id p12-20020a05680811cc00b0039c767ebfc6mr18027676oiv.10.1688539662609;
        Tue, 04 Jul 2023 23:47:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1688539662; cv=none;
        d=google.com; s=arc-20160816;
        b=dkraQZi3mT5DijeGkXNkDs2P9sRUziBRQd82H0ztTTYlxMjrgtEcXPL50kHaYn5Nl5
         Q99N691RxwOGpHPqg4CK80sYK5uY6xZQ0RkNCI1FztEYYcSUAM+rmQXMxIskGa7v8WfK
         LTzQfxrm+q2V2FvUPeUXk2L5Shkt9OR4ye8NBI4tsSSAuy0BjeZJty7/wXbUcIz2YwlS
         9UpJuiUQbBRD/n9SvJzXRmufl6Xgaxvj2eJpMpij2ka+VG7Nl/AV/HK6Vjw4jk+FHoG5
         ev4wPT/9jQ5eL4OBtCCPItKy39mUBSMq4PevZkBdny6bOATSIKVo+i0weNz92W9P/k7Y
         IWZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=/bytAk0q6Mve9yJnpwK1MGbE1CsIhEqiFUc6OmrHnFE=;
        fh=Gx/Xd3SuR7wfzTJCm4fH9mYLv4JUXxtCS0BsHUQzeiY=;
        b=Us966Sq1uKIk1NlxuuFAJKJIfJtCtxRPQN3mlFb4pkG2dU5/gAwDV1Up15g7jcMRGe
         IOtiS7H+E5WDHqqocn0tx7A+iAu1dIq1pI0P4u5qC4qIEnMN9dOOKWaI1shr0JcxXAnL
         O5PCerUhyN+mSALrvG4o5wzXu/csewN+5q329oJlEejsj/oancNMB34E+c2kX6UysU1X
         bOzLnuuNwsLPCVw6FxLuVEGlJ46lwd2AdtwU2we0qingj42iJbYFiDWnL3tOS20j8c60
         5bN3zWNzNr5FvwmJ3C+fFyoaoZC6IAlBLhB3j4kyqJSodtT4Z9kiEUPDZoHNYX8s3NAB
         9R7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as permitted sender) smtp.mailfrom=lihuafei1@huawei.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com. [45.249.212.188])
        by gmr-mx.google.com with ESMTPS id q24-20020a63f958000000b005289dd0b142si1649081pgk.3.2023.07.04.23.47.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jul 2023 23:47:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as permitted sender) client-ip=45.249.212.188;
Received: from kwepemi500019.china.huawei.com (unknown [172.30.72.57])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Qwqrp5zQdzMq8t;
	Wed,  5 Jul 2023 14:44:26 +0800 (CST)
Received: from ubuntu1804.huawei.com (10.67.174.174) by
 kwepemi500019.china.huawei.com (7.221.188.117) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 5 Jul 2023 14:47:40 +0800
From: "'Li Huafei' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <stable@vger.kernel.org>
CC: <gregkh@linuxfoundation.org>, <mhiramat@kernel.org>, <tglx@linutronix.de>,
	<mingo@redhat.com>, <bp@alien8.de>, <x86@kernel.org>, <hpa@zytor.com>,
	<sashal@kernel.org>, <peterz@infradead.org>, <linux-kernel@vger.kernel.org>,
	<xukuohai@huawei.com>, <natechancellor@gmail.com>, <ndesaulniers@google.com>,
	<rostedt@goodmis.org>, <weiyongjun1@huawei.com>, <gustavoars@kernel.org>,
	<namit@vmware.com>, <laijs@linux.alibaba.com>,
	<clang-built-linux@googlegroups.com>, <lihuafei1@huawei.com>
Subject: [PATCH 5.10 1/9] kprobes/x86: Fix fall-through warnings for Clang
Date: Wed, 5 Jul 2023 14:46:45 +0800
Message-ID: <20230705064653.226811-2-lihuafei1@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230705064653.226811-1-lihuafei1@huawei.com>
References: <20230705064653.226811-1-lihuafei1@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.67.174.174]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemi500019.china.huawei.com (7.221.188.117)
X-CFilter-Loop: Reflected
X-Original-Sender: lihuafei1@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lihuafei1@huawei.com designates 45.249.212.188 as
 permitted sender) smtp.mailfrom=lihuafei1@huawei.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=huawei.com
X-Original-From: Li Huafei <lihuafei1@huawei.com>
Reply-To: Li Huafei <lihuafei1@huawei.com>
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

From: "Gustavo A. R. Silva" <gustavoars@kernel.org>

[ Upstream commit e689b300c99ca2dd80d3f662e19499bba27cda09 ]

In preparation to enable -Wimplicit-fallthrough for Clang, fix a warning
by explicitly adding a break statement instead of just letting the code
fall through to the next case.

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Link: https://github.com/KSPP/linux/issues/115
Signed-off-by: Li Huafei <lihuafei1@huawei.com>
---
 arch/x86/kernel/kprobes/core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/kernel/kprobes/core.c b/arch/x86/kernel/kprobes/core.c
index 5de757099186..ed9a4fb87168 100644
--- a/arch/x86/kernel/kprobes/core.c
+++ b/arch/x86/kernel/kprobes/core.c
@@ -880,6 +880,7 @@ static void resume_execution(struct kprobe *p, struct pt_regs *regs,
 			p->ainsn.boostable = true;
 			goto no_change;
 		}
+		break;
 	default:
 		break;
 	}
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20230705064653.226811-2-lihuafei1%40huawei.com.
