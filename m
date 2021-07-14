Return-Path: <clang-built-linux+bncBD66FMGZA4IM7V52Q4DBUBHYNJNG2@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 837D23C814E
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 11:18:08 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id k32-20020a25b2a00000b0290557cf3415f8sf1868422ybj.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 02:18:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626254287; cv=pass;
        d=google.com; s=arc-20160816;
        b=hac7JLjRPjQWrg0HeZIsjU67vqlVejuqpN8zQLiUiSLmn8NhemMiYs7VnQU93Serio
         oLgvFRavhvveYBE8RUZ25yVmX7RqWW/3AjM8JH57RcZ9npshN1Gs3Ig7jcgkjxd8kQu4
         PekaOww1gegkJSg96IxkRP+FH+RJlSKzpBVGgMv/VFZMNmknM+BonfPWxfQ2fpRMRgvY
         pJ7TRab1wrA9KNxx+QvSd/GjULbbDm+hJyUyB5aUl4ZsYhdcViXnnJnvPS0z9uIynEYz
         3imx2rVhGvjR2bW69ZfX6/YnqcYKhN8aSH86Jxo1fBTOHrYHoIotfjDUcw9bHu1XFBs8
         tMXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=87vqvPBa/+HwXkCVzuW4Mqmp+IzUdYDZ2F4tNDrpKqs=;
        b=rvu4gMOcXP18T2vCQkCGTZ74YyaQ12Yiyun6xawqV69Q0Y423firG+7D4oiNj2fvem
         XaK1Sv2Esqv4+SPjDIr51xBX9yy7qX/sfnAVWvza9i1O3HEfGjbeeTrbE5DhnwPZ3hQ8
         bgDPGIjN/T1nuOh61IHHW3p+6PMwy6bn/o+ePcNk5v23QagSn/httVkFfDDomrhhOVDV
         DMIiQlYGuaSK74HMnh5Vis4G7LvjxycByviHam9w0W7+JU2h1ATJs1GvTChz5v7ieEnU
         J9zQiklo8rT+/xvRvy684/Mtg1DAgecpOuIRvnk7ugXuidnILx3iflbBfpjG+41UoVSh
         CJXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TNW6CpKu;
       spf=pass (google.com: domain of 3zqvuyaukee0bdgqdvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3zqvuYAUKEe0bdgQdVddVaT.RdbRaPcV-QjXai-aXcjmVddVaTVgdjeh.Rdb@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=87vqvPBa/+HwXkCVzuW4Mqmp+IzUdYDZ2F4tNDrpKqs=;
        b=PQNTVFohVnS6mKX1X70EzC8X7WtrpMpBAg/XB4KE0qseuEndUJljmLnCD3gTbXgIEW
         nUhAGjDQT3/H+kqOiu9t1yvbBeYhynnS57sP4g2QN+7oNBtncGy3HOgdUsqg3Mf1WzcJ
         n9WaBa2GgjHKVqs/SM81CRMKq0XyZKWBTNlxY45fTQ4XamqHSG9e0+zXRab6e6P2FQy9
         Qnir+O/4usXBzRvRiKeiLO5UiANYe8UuKXuHU+tqczYKSrqMs7xcTBKQwF+xjz/h9VZW
         jKtzmfmoYsUfefGj3ANearXACSlHMt0HPz9Fx8oaxb54q+rNeNAOPdDKsAn3Ll4ZPv3y
         4MVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=87vqvPBa/+HwXkCVzuW4Mqmp+IzUdYDZ2F4tNDrpKqs=;
        b=Kn6dmIKi0PWQ4pu5yOlo7dsSiCq+jA1VMv+5Ur7VqBZkIiDOLa2GPNcWOublzZf5XF
         EejJXhUqp3Eno4Orog/POLggIv3NT6ggQqFSZSWuwotQZ3461YX4FTlexoxK1F/nIkAk
         FXg7IdKgM9y/1hmFbsyK7CPnZTS2oiuQs44D65BhLttiSN5NdFKsNLwBcV/XPvadSl8O
         GwtWQfdaNOMs71OI8vyEmeU1CFKtBvMIuiE8sGb1rRT5pamn5p9C9PtXRWdlpe7oPj9L
         dNMBtNPOjNMqI7QmQlveHkcU5nuTM5Z7afgv78rp/RNo2BPaCBFeUsHhdcMBFVWQUeWr
         dS6A==
X-Gm-Message-State: AOAM531HuJpkZxUw4l8aboVfwDnsZkPVqLD15hR9wyYJ/MM3YfVEOUv4
	ZBq1LnF6Gzbjp7dj9DdlqlE=
X-Google-Smtp-Source: ABdhPJyk9ShF+UpEIEHybwc0RqH4vYmZMLCgK/aimojxhgMJTPrhGCsYT5Cw3RTTMxMdfMAow6CG1A==
X-Received: by 2002:a25:73c6:: with SMTP id o189mr12814302ybc.61.1626254287680;
        Wed, 14 Jul 2021 02:18:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:a4c7:: with SMTP id g65ls999075ybi.8.gmail; Wed, 14 Jul
 2021 02:18:07 -0700 (PDT)
X-Received: by 2002:a25:690e:: with SMTP id e14mr11828301ybc.277.1626254287267;
        Wed, 14 Jul 2021 02:18:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626254287; cv=none;
        d=google.com; s=arc-20160816;
        b=YDQXk7OJadlHye3M2pGGpNsp8rTr5IZ/uldtQ/lFDI4hF0Y83MB8Oz75cVwsq+Gn3V
         ESvIdkPq7jM2L3vBt0PHN1v5GAYISQXA+9+116h5jZzQEeuKJP67c4qNt7bbt8DNwsqg
         ldunRN56ybC54sKCH4/lAhz1kIqLYKAw7onnTttBwIPu3zmjjN9+cZiva0xJH8QrwTRo
         WUmn3+zCcwYrUruGhvvJhuDBTXBmKFXm1dxZPvOnDxlvNpZJUQjHkkbg6g6KOn5E/Z3t
         BED/3hngTP21/hQXrq+uxGJwbwq/mtWS9rt8C9ajYnt552IsIqX4j7elUrt6KlJFgpn3
         SSXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=FcI/RIY6fqkfvACcmmOBOBRj9VFnw/wDoj5wb2ryU84=;
        b=X0vaiyjDQ4R1tsArsxWTxjbrct6eaVUzk5frB5WUzkfcqvOO4K3NtKmNaEHAZw0A73
         YsAYjgOfK6XpmuFX86ZIfpEBsjXmu9MQQ6mZoF2hq++szBriKuGfsHPdlX8ySz/rKGt7
         UOFswuVk2ceYYsiLKR21+77M1upEGfAv1Wdj951SES67O237IgvrdQkAy5iyLk9tXJ2+
         LUG8oYsrC04uB0Hu1utIxjUkxwx0adHvs0Jud778uCgQYVX7ewTP+yZOjZzcejz9vZUP
         fCrqNiHlRdY/3bliNeEQAgy7jhvsJjCgt5ynfRmIuJ7P0iTZZgZzU4DKTkckeUDZpYg5
         pkvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TNW6CpKu;
       spf=pass (google.com: domain of 3zqvuyaukee0bdgqdvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3zqvuYAUKEe0bdgQdVddVaT.RdbRaPcV-QjXai-aXcjmVddVaTVgdjeh.Rdb@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id q62si247459ybc.4.2021.07.14.02.18.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jul 2021 02:18:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zqvuyaukee0bdgqdvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id k32-20020a25b2a00000b0290557cf3415f8so1868404ybj.1
        for <clang-built-linux@googlegroups.com>; Wed, 14 Jul 2021 02:18:07 -0700 (PDT)
X-Received: from fawn.svl.corp.google.com ([2620:15c:2cd:202:c569:463c:c488:ac2])
 (user=morbo job=sendgmr) by 2002:a25:7355:: with SMTP id o82mr11572449ybc.471.1626254286988;
 Wed, 14 Jul 2021 02:18:06 -0700 (PDT)
Date: Wed, 14 Jul 2021 02:17:47 -0700
In-Reply-To: <20210714091747.2814370-1-morbo@google.com>
Message-Id: <20210714091747.2814370-4-morbo@google.com>
Mime-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com>
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [PATCH 3/3] scsi: qla2xxx: remove unused variable 'status'
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	linux-scsi@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Ariel Elior <aelior@marvell.com>, Sudarsana Kalluru <skalluru@marvell.com>, 
	GR-everest-linux-l2@marvell.com, "David S . Miller" <davem@davemloft.net>, 
	Nilesh Javali <njavali@marvell.com>, GR-QLogic-Storage-Upstream@marvell.com, 
	"James E . J . Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen" <martin.petersen@oracle.com>
Cc: Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TNW6CpKu;       spf=pass
 (google.com: domain of 3zqvuyaukee0bdgqdvddvat.rdbrapcv-qjxai-axcjmvddvatvgdjeh.rdb@flex--morbo.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3zqvuYAUKEe0bdgQdVddVaT.RdbRaPcV-QjXai-aXcjmVddVaTVgdjeh.Rdb@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

Fix the clang build warning:

  drivers/scsi/qla2xxx/qla_nx.c:2209:6: error: variable 'status' set but not used [-Werror,-Wunused-but-set-variable]
        int status = 0;

Signed-off-by: Bill Wendling <morbo@google.com>
---
 drivers/scsi/qla2xxx/qla_nx.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/scsi/qla2xxx/qla_nx.c b/drivers/scsi/qla2xxx/qla_nx.c
index 615e44af1ca6..11aad97dfca8 100644
--- a/drivers/scsi/qla2xxx/qla_nx.c
+++ b/drivers/scsi/qla2xxx/qla_nx.c
@@ -2166,7 +2166,6 @@ qla82xx_poll(int irq, void *dev_id)
 	struct qla_hw_data *ha;
 	struct rsp_que *rsp;
 	struct device_reg_82xx __iomem *reg;
-	int status = 0;
 	uint32_t stat;
 	uint32_t host_int = 0;
 	uint16_t mb[8];
@@ -2195,7 +2194,6 @@ qla82xx_poll(int irq, void *dev_id)
 		case 0x10:
 		case 0x11:
 			qla82xx_mbx_completion(vha, MSW(stat));
-			status |= MBX_INTERRUPT;
 			break;
 		case 0x12:
 			mb[0] = MSW(stat);
-- 
2.32.0.93.g670b81a890-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210714091747.2814370-4-morbo%40google.com.
