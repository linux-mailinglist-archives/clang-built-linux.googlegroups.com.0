Return-Path: <clang-built-linux+bncBD66FMGZA4INRMP4Q4DBUBD6ADKDE@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0233D680D
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 22:19:37 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id q15-20020a25820f0000b029055bb0981111sf15564665ybk.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 13:19:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627330776; cv=pass;
        d=google.com; s=arc-20160816;
        b=wtiaPVjhOq6lHD1JqdJNVSUeFKUL0wdDDGa/OsrCBuB1L4Z+DajVHDUjo7TpbggEy4
         /BpdIDdNY48u1P7G2mAtb/T/gyhjLOJ13QlPXDfKdToplA1yZyBoyTAYiwHgKm0suxJp
         mNErC1FxERkeNMhwcZFAr98s53yjNj8pcc92LtaTgzPfQD/0jjxUwrzTgQc9EkNekosA
         NRXpc6ze7qJ0khKALnpsq+TwddeXOq2Tand3n8OeFk30awNXk+m+UjGA2Y/b2/hzmGmA
         x6zzGFkhADeb6iT0AJ4stBfaMOX4ZHE3cyvepxRth30vbfJeINyvCrCFJbD4kTvBpGF7
         vO1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=WJa6EYlzrM8KhQMm1HvW9zWK0fpgzqe8BoQivycJi6Y=;
        b=Gxl7JegaE4EUDnbudIepNKEP5WEPRM3SOMEqqqUdhqAiobbXTKFRlHxXBlwN/0Eruj
         cBrl1IA1RArcg8LRASwB7cVyKyomnEG0ZoTTeH3/jpjC0zgr0k+EvOtFULKQi9dK3/+Q
         WfbkP/idp2LKeODYfCQvZY91BGf4Qs9iYBudKlyiROJh80KBrCa9j8TV/xZAWmksSMBP
         Z0t7R0uEzCar6gxspc7rPVTBYxh9wSs6D2lFZ2Ab+w/mbzFF2CK6/eHHvNsOQ8hlSD+g
         zoKTw/EiBlagD5Q5idPl2KIha7NTG+1OC2aF3bCnOjOvyExfPx78Qksd/FxNgnMusOZz
         R6vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oQk1seDx;
       spf=pass (google.com: domain of 31xj_yaukerq68bv808805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=31xj_YAUKERQ68Bv808805y.w86w5u70-vE25D-527EH08805y0B8E9C.w86@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WJa6EYlzrM8KhQMm1HvW9zWK0fpgzqe8BoQivycJi6Y=;
        b=sm3TnakxlMThNQOlerliO0H8jBncxfTMjIGe7dziJQ2U0Ro+qTmyhPK08g5IeI2vGf
         X6TCwy5ZkgOEO8aMARZUMStQb9nKiPk09A+BA3P2WWPfRNnRtTwdQZ82i5z4Rs4Phvs8
         Ft6VwTiaa0ELBBlW4CxKTKdirIKhrTjZs9u3dGX6qgeeAE5ZhPxjqrFJ4yDiDJE3rXaD
         P67oXahRbLeNcba3e1PZChLV4eOAQYBHJRT1m8BvDr9wEm2e7kSeP/sek3yzgb9BFxUg
         SxKelM6yCn8E5q/+cXBW72PCtMbVWYFBP9WyDOPOntZ4qZ172dwC7/yWKoAekD1MGYYd
         pPPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WJa6EYlzrM8KhQMm1HvW9zWK0fpgzqe8BoQivycJi6Y=;
        b=Evdn+QSrtVQKcc/E5hiNHCvJbdTV7dC7F3933TC1nmE7/h2I3q+HiRk5fMsqOpSVkf
         bS57TUsopQBCUvv0/duW+Ngh47ZAHp/q1PROR2+C+W+aNlDP4fU58agxsImRxgHBadQJ
         3B+f7VWUkan7T6GYvHHkZwiAVfBFpDbu5hJojJp/uhIAXSYiIX95EWqM7rWcnBTcmsVd
         xcdl0WAuhXXRIoJ44afr/JvpKmNZGaqfS5EwOhe+LOijsdmt7/m+VI8smlODrYnbAePY
         RcDEN5K31Qg6cArtpc79IyHZTKE/Kdd2qSSxBsWGSk34zebikFLNh/SWe6xeVdQbFna1
         qKzQ==
X-Gm-Message-State: AOAM53396mKDxD7ncLQ1tkD6z7d+WG/gDTYSDgLgRxlKS/StsCX64nkS
	jRiHPN4qcMF0IFMu9cdtWAo=
X-Google-Smtp-Source: ABdhPJzuCGuPepmplLLJEUGQ757GzyGRZBu9gAfDU7BUVqUZdM/DBgcb/GckHlh1N+s6CjHlMhqdKg==
X-Received: by 2002:a25:ae42:: with SMTP id g2mr26255427ybe.307.1627330776085;
        Mon, 26 Jul 2021 13:19:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9808:: with SMTP id a8ls1552059ybo.11.gmail; Mon, 26 Jul
 2021 13:19:35 -0700 (PDT)
X-Received: by 2002:a25:d981:: with SMTP id q123mr7674644ybg.35.1627330775656;
        Mon, 26 Jul 2021 13:19:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627330775; cv=none;
        d=google.com; s=arc-20160816;
        b=j0Ob/v8Ly2ns2uJba4XxEHWe66NMtgN5s+6A2HHjVAxceUHNdVLEk2fEcvMCPsV+KJ
         jX50uvp/08bGwMH0VUVMLEiv39SQ6k7xpB1GirvglZ+cfT5lW1yf8t1DS7w+9oZqyv85
         i6xS8IyNac8ufO017KQBfMkZck2ybVsq80s26tyCwExOuqop5XAq1x5LBZlnb+p2YhsD
         qDLrcN0MkeDahFpLYh9q+8EClKOkRD03eT2UKRnR2/k1nhufa/zhDIk87PC2xlAdb9ic
         eB5T1+2Hui0KdQdikduXxmUfZvinj9UdtYASYOqOWb/M7xepIXUS+XEnhEp0oQBlY4h7
         0bMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=YZiRJCULAk0NgZWlw4NhyxwOUxRg8I5AfZi4pSeW7rI=;
        b=FhspIrlrLbHYCv6PifTFxQcT436Uuryciw8zcFrcDy46RlP70/UxZfe4Xf7ixBQQjx
         L+0m6pkXZbdSdJ/JHpnzt+eDJLwxrGS3ezfNMZGVKNiZ4yyeYviFc7ADjGlKjX2SBytl
         UmsyeFETN8S6CbkTFDt54gDxZs2ToH9mJKifhwtbqx2e7HQds0Nd/hH9gLrsmUsr7lpo
         lSzTMvV4tYBBb8NP0OmEyZ5172uIlPJg0l0qfHzWY2GEsADBYULcfl9euJ5zdQqL3IQ/
         7YiXrsTthIE3CbnwSpgcWMD8IHiIWjvrTzXcxqsEizG6ZeHzD4JnVQHvlmYiHxmRAJtz
         Pn4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oQk1seDx;
       spf=pass (google.com: domain of 31xj_yaukerq68bv808805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=31xj_YAUKERQ68Bv808805y.w86w5u70-vE25D-527EH08805y0B8E9C.w86@flex--morbo.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id s17si123664ybk.2.2021.07.26.13.19.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jul 2021 13:19:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 31xj_yaukerq68bv808805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--morbo.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id v7-20020ac874870000b029024e8ccfcd07so5105784qtq.11
        for <clang-built-linux@googlegroups.com>; Mon, 26 Jul 2021 13:19:35 -0700 (PDT)
X-Received: from fawn.svl.corp.google.com ([2620:15c:2cd:202:ccf7:db54:b9d7:814f])
 (user=morbo job=sendgmr) by 2002:a05:6214:10c8:: with SMTP id
 r8mr19696156qvs.28.1627330775317; Mon, 26 Jul 2021 13:19:35 -0700 (PDT)
Date: Mon, 26 Jul 2021 13:19:24 -0700
In-Reply-To: <20210726201924.3202278-1-morbo@google.com>
Message-Id: <20210726201924.3202278-4-morbo@google.com>
Mime-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com>
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
Subject: [PATCH v2 3/3] scsi: qla2xxx: remove unused variable 'status'
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
 header.i=@google.com header.s=20161025 header.b=oQk1seDx;       spf=pass
 (google.com: domain of 31xj_yaukerq68bv808805y.w86w5u70-ve25d-527eh08805y0b8e9c.w86@flex--morbo.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=31xj_YAUKERQ68Bv808805y.w86w5u70-vE25D-527EH08805y0B8E9C.w86@flex--morbo.bounces.google.com;
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
2.32.0.432.gabb21c7263-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210726201924.3202278-4-morbo%40google.com.
