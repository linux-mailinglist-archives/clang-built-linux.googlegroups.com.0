Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBR4RR2DAMGQEFIM472A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCEE3A45F4
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:01:12 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id e10-20020a4ab14a0000b029020e1573bdb7sf1772394ooo.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:01:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623427271; cv=pass;
        d=google.com; s=arc-20160816;
        b=FtUhrmat9FjCpdGAmacoFB0T/XOKcc5etVg+xw2fZetKZRHsceLBn5YHidXoMAQxw3
         tUnl+xTEERKWXW6yOLdcxENsAGjWG0EfTRTA8kkLm7pXhL/lveCJdvXnB0ySqdntv1mZ
         PmFHfcmfqpFcJfIwZJiTbLr+BFqpWp3xoXCdT5DQHafMe+YARa6xSxaONMIvVv7BNb4t
         Tq6PBq2vvAp0XkGN5LQWuTIZd/iQHzAlUnaseRVRjgyQ4YmEfEEae5VgxDV99C8VTGQl
         PSNBK0/Vq02xEhIuACYmjOhqE8SHm1+032/VI36/MeDMFF1If/feLJUMxoCTypYNAlr7
         edOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=f1XBbsZ1H4QQGi1mhzRZrVji9zIzykCcCLQ5wVdbwac=;
        b=tkf/Ahc9mpOPJ6h+HKRMPAWbfu77Rng5NOFHfyAUppz0o7bXQNBQmvoK4t0YURcWZJ
         lEGC2kN15qvHECjnvOrg905GcZc1FHgltl4T5YFUgaksV+UrVRlVCsCD3xz7gIY1BGER
         QhjBBaaaoKjEXyf5KlYfOJqFAae4vKDjL0G6E/+dwdygO7IeJaP/yScHHsiJlEpWKAWL
         qiXHOHIW4EJW12LwKtj+o1QmAO4jXBKloZ7YOm9jaBAyEICnEJIJEASIU3/w/WWnQIvR
         bi1/E9xG9Y3vYBdOqOQhpmUfeFoPu9WL7f+hlPdreUACaTSzMsZzyH1U1pFr2kF9bdoM
         taXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=owmFMi5f;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f1XBbsZ1H4QQGi1mhzRZrVji9zIzykCcCLQ5wVdbwac=;
        b=prEja04/CKXNSCTlxNYA0X1OeQLf45hPX+UDjOCWWepWy0AKddvAhsrZGHTeFAW4Z2
         MJ1y+fcz26dRZc6kQoC7SXmGYje9zD5VEHBwMHTnXWlKWghezC7VtvbovepdIAfmKKO9
         C3kfGvJm33Ch6MKHPtFw0MhVcPsXfiCsofWZBDqZANJpKAiiZDltq2RV8XausP9JXPi5
         KdoMXpDoRK6wj2EVMZrdobmZMOyw0FdWo47Yc7unNxC6SJGUss74FUeyaHWM1EK5IxFW
         VGtzUl042gOBFDBsNFAC4uIV55JpIj7WhWpZ5iDY6OGlmV/EvEbldL3SDoHkBZucLIer
         enpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f1XBbsZ1H4QQGi1mhzRZrVji9zIzykCcCLQ5wVdbwac=;
        b=lOcTl4mdNf46RcoQYKpmgjYA2ijWcHLpSsTgUPumYU+vImRS3VD/OPNv+thTGrQtUz
         k3jdB0izL5otELpSwdYPtlQxEC/bPoCEEvkCrFRlBIMW20Y3f+vGchwTZZ4QSI4L/8KE
         /aZWr9wtW1uCe1byU5dvq+2MBsANv/t0E8/SIG/YkxL5PtztoLuhzLoBhPIQtXAFFWuA
         /yu2S6/kT6FCROOHwvjktlHLSwnrLbLjpSK2/Eli/Gxoackv1GO4eSqD0aL56p6p26XN
         2I1ctKkDat2Hg8cvMbPnHU0Nooaq1+B7dbvjfCAOZecbVy8B8tv7pfTl/2AIkr6vvS5L
         KGjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oNohFaUI7JaCiOJ96GT6UPy0TkTRBVmRq76xj67C0jdyabAuH
	VduS9yAVBLbaITO4TYFVHmI=
X-Google-Smtp-Source: ABdhPJwAWgxMa8OYLEp/Z6svZ5OuxpGEZUhxo3ykyr92cWvDNY8P+1FoPEl2v4/r7Ov6d9jylYsbQQ==
X-Received: by 2002:a05:6808:8fb:: with SMTP id d27mr9779311oic.115.1623427271300;
        Fri, 11 Jun 2021 09:01:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6242:: with SMTP id i2ls3429853otk.2.gmail; Fri, 11 Jun
 2021 09:01:10 -0700 (PDT)
X-Received: by 2002:a9d:6285:: with SMTP id x5mr3714961otk.278.1623427270881;
        Fri, 11 Jun 2021 09:01:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623427270; cv=none;
        d=google.com; s=arc-20160816;
        b=IxL/88om2+L34bzO+fGesjnmUoVif+hNemrUfGhIpzmRheAQ0IQ7WqeguzIC5IPiVL
         aPS8BbszvSQQG4blC1VWh8U49cWplrsy61QD8BzVqx6ciQ1Vdmrj5LbFLs82l/urW5+z
         lm9Amhz31ti9TbzGLsSneh1cc151DMTdTQN/S0PlSjmAGbbCQ+FdUtqb0/4MwP/sGi8W
         HI2cIttpc+a3MuT1/rd+OxdH536v6UcGqvF5ifEFxTN8DqzXy2DNmSCISSeDZwJnq3+M
         niA6BHVx1eyrqwGVU3awkscWAlywYfnsjiItM8Fi9k/SpTiqfHjGofUXCpOMsbwiyh99
         pRsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5YRFi3zbWNpc831BCBqMaDlsODAnmqAkDSiury9aIVI=;
        b=yf1Q+IyccLnL6XMBAtxOa7eWwhWf8Zuuh+cmSXax345OH8CR4ovzMWvqqNZAkQepEn
         dnENFWyjxmNkUOYL5wDiAqkOFHnglKdH3tBhfWzXjYxg38zmQlN8rLXp94vIyyqa0iL5
         Rbx9YE99N+jhc6bbSdMA5i+6tUeSPRRsGKqMN3+cy7pcdUg47b5jGyWXuHUF0jOn6kW2
         qb9HLs8XKrjEhoRblBI2PiAwXGWVQe9J1UymolJCS+8v+SW24OpmBBf/0JRL2UfSPFUX
         TOBhdiY2g5+aNhf7JCZqLJkTFu83WL5ecgbWyXLG+sWuHWeHk9qjTK+H4DaOMtCZJRhm
         4XLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=owmFMi5f;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u128si852288oif.2.2021.06.11.09.01.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 09:01:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 530E561400;
	Fri, 11 Jun 2021 16:01:09 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: Doug Ledford <dledford@redhat.com>,
	Jason Gunthorpe <jgg@nvidia.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Leon Romanovsky <leonro@nvidia.com>,
	Adit Ranadive <aditr@vmware.com>,
	Ariel Elior <aelior@marvell.com>,
	Christian Benvenuti <benve@cisco.com>,
	clang-built-linux@googlegroups.com,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
	Devesh Sharma <devesh.sharma@broadcom.com>,
	Gal Pressman <galpress@amazon.com>,
	linux-kernel@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	Michal Kalderon <mkalderon@marvell.com>,
	Mike Marciniszyn <mike.marciniszyn@cornelisnetworks.com>,
	Mustafa Ismail <mustafa.ismail@intel.com>,
	Naresh Kumar PBS <nareshkumar.pbs@broadcom.com>,
	Nelson Escobar <neescoba@cisco.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Potnuri Bharat Teja <bharat@chelsio.com>,
	Selvin Xavier <selvin.xavier@broadcom.com>,
	Shiraz Saleem <shiraz.saleem@intel.com>,
	VMware PV-Drivers <pv-drivers@vmware.com>,
	Yishai Hadas <yishaih@nvidia.com>,
	Zhu Yanjun <zyjzyj2000@gmail.com>
Subject: [PATCH rdma-next v2 10/15] RDMA/cm: Use an attribute_group on the ib_port_attribute intead of kobj's
Date: Fri, 11 Jun 2021 19:00:29 +0300
Message-Id: <0d5a7241ee0fe66622de04fcbaafaf6a791d5c7c.1623427137.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623427137.git.leonro@nvidia.com>
References: <cover.1623427137.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=owmFMi5f;       spf=pass
 (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=leon@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Jason Gunthorpe <jgg@nvidia.com>

This code is trying to attach a list of counters grouped into 4 groups to
the ib_port sysfs. Instead of creating a bunch of kobjects simply express
everything naturally as an ib_port_attribute and add a single
attribute_groups list.

Remove all the naked kobject manipulations.

Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 drivers/infiniband/core/cm.c        | 227 ++++++++++++----------------
 drivers/infiniband/core/core_priv.h |   8 +-
 drivers/infiniband/core/sysfs.c     |  50 ++----
 3 files changed, 119 insertions(+), 166 deletions(-)

diff --git a/drivers/infiniband/core/cm.c b/drivers/infiniband/core/cm.c
index 80087e678030..1827118c41e3 100644
--- a/drivers/infiniband/core/cm.c
+++ b/drivers/infiniband/core/cm.c
@@ -25,6 +25,7 @@
 
 #include <rdma/ib_cache.h>
 #include <rdma/ib_cm.h>
+#include <rdma/ib_sysfs.h>
 #include "cm_msgs.h"
 #include "core_priv.h"
 #include "cm_trace.h"
@@ -148,60 +149,17 @@ enum {
 	CM_COUNTER_GROUPS
 };
 
-static char const counter_group_names[CM_COUNTER_GROUPS]
-				     [sizeof("cm_rx_duplicates")] = {
-	"cm_tx_msgs", "cm_tx_retries",
-	"cm_rx_msgs", "cm_rx_duplicates"
-};
-
-struct cm_counter_group {
-	struct kobject obj;
-	atomic_long_t counter[CM_ATTR_COUNT];
-};
-
 struct cm_counter_attribute {
-	struct attribute attr;
-	int index;
-};
-
-#define CM_COUNTER_ATTR(_name, _index) \
-struct cm_counter_attribute cm_##_name##_counter_attr = { \
-	.attr = { .name = __stringify(_name), .mode = 0444 }, \
-	.index = _index \
-}
-
-static CM_COUNTER_ATTR(req, CM_REQ_COUNTER);
-static CM_COUNTER_ATTR(mra, CM_MRA_COUNTER);
-static CM_COUNTER_ATTR(rej, CM_REJ_COUNTER);
-static CM_COUNTER_ATTR(rep, CM_REP_COUNTER);
-static CM_COUNTER_ATTR(rtu, CM_RTU_COUNTER);
-static CM_COUNTER_ATTR(dreq, CM_DREQ_COUNTER);
-static CM_COUNTER_ATTR(drep, CM_DREP_COUNTER);
-static CM_COUNTER_ATTR(sidr_req, CM_SIDR_REQ_COUNTER);
-static CM_COUNTER_ATTR(sidr_rep, CM_SIDR_REP_COUNTER);
-static CM_COUNTER_ATTR(lap, CM_LAP_COUNTER);
-static CM_COUNTER_ATTR(apr, CM_APR_COUNTER);
-
-static struct attribute *cm_counter_default_attrs[] = {
-	&cm_req_counter_attr.attr,
-	&cm_mra_counter_attr.attr,
-	&cm_rej_counter_attr.attr,
-	&cm_rep_counter_attr.attr,
-	&cm_rtu_counter_attr.attr,
-	&cm_dreq_counter_attr.attr,
-	&cm_drep_counter_attr.attr,
-	&cm_sidr_req_counter_attr.attr,
-	&cm_sidr_rep_counter_attr.attr,
-	&cm_lap_counter_attr.attr,
-	&cm_apr_counter_attr.attr,
-	NULL
+	struct ib_port_attribute attr;
+	unsigned short group;
+	unsigned short index;
 };
 
 struct cm_port {
 	struct cm_device *cm_dev;
 	struct ib_mad_agent *mad_agent;
 	u32 port_num;
-	struct cm_counter_group counter_group[CM_COUNTER_GROUPS];
+	atomic_long_t counters[CM_COUNTER_GROUPS][CM_ATTR_COUNT];
 };
 
 struct cm_device {
@@ -1968,8 +1926,8 @@ static void cm_dup_req_handler(struct cm_work *work,
 	struct ib_mad_send_buf *msg = NULL;
 	int ret;
 
-	atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
-			counter[CM_REQ_COUNTER]);
+	atomic_long_inc(
+		&work->port->counters[CM_RECV_DUPLICATES][CM_REQ_COUNTER]);
 
 	/* Quick state check to discard duplicate REQs. */
 	spin_lock_irq(&cm_id_priv->lock);
@@ -2467,8 +2425,8 @@ static void cm_dup_rep_handler(struct cm_work *work)
 	if (!cm_id_priv)
 		return;
 
-	atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
-			counter[CM_REP_COUNTER]);
+	atomic_long_inc(
+		&work->port->counters[CM_RECV_DUPLICATES][CM_REP_COUNTER]);
 	ret = cm_alloc_response_msg(work->port, work->mad_recv_wc, &msg);
 	if (ret)
 		goto deref;
@@ -2645,8 +2603,8 @@ static int cm_rtu_handler(struct cm_work *work)
 	if (cm_id_priv->id.state != IB_CM_REP_SENT &&
 	    cm_id_priv->id.state != IB_CM_MRA_REP_RCVD) {
 		spin_unlock_irq(&cm_id_priv->lock);
-		atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
-				counter[CM_RTU_COUNTER]);
+		atomic_long_inc(&work->port->counters[CM_RECV_DUPLICATES]
+						     [CM_RTU_COUNTER]);
 		goto out;
 	}
 	cm_id_priv->id.state = IB_CM_ESTABLISHED;
@@ -2850,8 +2808,8 @@ static int cm_dreq_handler(struct cm_work *work)
 		cpu_to_be32(IBA_GET(CM_DREQ_REMOTE_COMM_ID, dreq_msg)),
 		cpu_to_be32(IBA_GET(CM_DREQ_LOCAL_COMM_ID, dreq_msg)));
 	if (!cm_id_priv) {
-		atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
-				counter[CM_DREQ_COUNTER]);
+		atomic_long_inc(&work->port->counters[CM_RECV_DUPLICATES]
+						     [CM_DREQ_COUNTER]);
 		cm_issue_drep(work->port, work->mad_recv_wc);
 		trace_icm_no_priv_err(
 			IBA_GET(CM_DREQ_LOCAL_COMM_ID, dreq_msg),
@@ -2880,8 +2838,8 @@ static int cm_dreq_handler(struct cm_work *work)
 	case IB_CM_MRA_REP_RCVD:
 		break;
 	case IB_CM_TIMEWAIT:
-		atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
-				counter[CM_DREQ_COUNTER]);
+		atomic_long_inc(&work->port->counters[CM_RECV_DUPLICATES]
+						     [CM_DREQ_COUNTER]);
 		msg = cm_alloc_response_msg_no_ah(work->port, work->mad_recv_wc);
 		if (IS_ERR(msg))
 			goto unlock;
@@ -2896,8 +2854,8 @@ static int cm_dreq_handler(struct cm_work *work)
 			cm_free_response_msg(msg);
 		goto deref;
 	case IB_CM_DREQ_RCVD:
-		atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
-				counter[CM_DREQ_COUNTER]);
+		atomic_long_inc(&work->port->counters[CM_RECV_DUPLICATES]
+						     [CM_DREQ_COUNTER]);
 		goto unlock;
 	default:
 		trace_icm_dreq_unknown_err(&cm_id_priv->id);
@@ -3248,17 +3206,17 @@ static int cm_mra_handler(struct cm_work *work)
 		    cm_id_priv->id.lap_state != IB_CM_LAP_SENT ||
 		    ib_modify_mad(cm_id_priv->msg, timeout)) {
 			if (cm_id_priv->id.lap_state == IB_CM_MRA_LAP_RCVD)
-				atomic_long_inc(&work->port->
-						counter_group[CM_RECV_DUPLICATES].
-						counter[CM_MRA_COUNTER]);
+				atomic_long_inc(
+					&work->port->counters[CM_RECV_DUPLICATES]
+							     [CM_MRA_COUNTER]);
 			goto out;
 		}
 		cm_id_priv->id.lap_state = IB_CM_MRA_LAP_RCVD;
 		break;
 	case IB_CM_MRA_REQ_RCVD:
 	case IB_CM_MRA_REP_RCVD:
-		atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
-				counter[CM_MRA_COUNTER]);
+		atomic_long_inc(&work->port->counters[CM_RECV_DUPLICATES]
+						     [CM_MRA_COUNTER]);
 		fallthrough;
 	default:
 		trace_icm_mra_unknown_err(&cm_id_priv->id);
@@ -3384,8 +3342,8 @@ static int cm_lap_handler(struct cm_work *work)
 	case IB_CM_LAP_IDLE:
 		break;
 	case IB_CM_MRA_LAP_SENT:
-		atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
-				counter[CM_LAP_COUNTER]);
+		atomic_long_inc(&work->port->counters[CM_RECV_DUPLICATES]
+						     [CM_LAP_COUNTER]);
 		msg = cm_alloc_response_msg_no_ah(work->port, work->mad_recv_wc);
 		if (IS_ERR(msg))
 			goto unlock;
@@ -3402,8 +3360,8 @@ static int cm_lap_handler(struct cm_work *work)
 			cm_free_response_msg(msg);
 		goto deref;
 	case IB_CM_LAP_RCVD:
-		atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
-				counter[CM_LAP_COUNTER]);
+		atomic_long_inc(&work->port->counters[CM_RECV_DUPLICATES]
+						     [CM_LAP_COUNTER]);
 		goto unlock;
 	default:
 		goto unlock;
@@ -3622,8 +3580,8 @@ static int cm_sidr_req_handler(struct cm_work *work)
 	listen_cm_id_priv = cm_insert_remote_sidr(cm_id_priv);
 	if (listen_cm_id_priv) {
 		spin_unlock_irq(&cm.lock);
-		atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
-				counter[CM_SIDR_REQ_COUNTER]);
+		atomic_long_inc(&work->port->counters[CM_RECV_DUPLICATES]
+						     [CM_SIDR_REQ_COUNTER]);
 		goto out; /* Duplicate message. */
 	}
 	cm_id_priv->id.state = IB_CM_SIDR_REQ_RCVD;
@@ -3872,12 +3830,10 @@ static void cm_send_handler(struct ib_mad_agent *mad_agent,
 	if (!cm_id_priv && (attr_index != CM_REJ_COUNTER))
 		msg->retries = 1;
 
-	atomic_long_add(1 + msg->retries,
-			&port->counter_group[CM_XMIT].counter[attr_index]);
+	atomic_long_add(1 + msg->retries, &port->counters[CM_XMIT][attr_index]);
 	if (msg->retries)
 		atomic_long_add(msg->retries,
-				&port->counter_group[CM_XMIT_RETRIES].
-				counter[attr_index]);
+				&port->counters[CM_XMIT_RETRIES][attr_index]);
 
 	if (cm_id_priv)
 		cm_process_send_error(cm_id_priv, msg, state,
@@ -4098,8 +4054,7 @@ static void cm_recv_handler(struct ib_mad_agent *mad_agent,
 	}
 
 	attr_id = be16_to_cpu(mad_recv_wc->recv_buf.mad->mad_hdr.attr_id);
-	atomic_long_inc(&port->counter_group[CM_RECV].
-			counter[attr_id - CM_ATTR_ID_OFFSET]);
+	atomic_long_inc(&port->counters[CM_RECV][attr_id - CM_ATTR_ID_OFFSET]);
 
 	work = kmalloc(struct_size(work, path, paths), GFP_KERNEL);
 	if (!work) {
@@ -4301,59 +4256,74 @@ int ib_cm_init_qp_attr(struct ib_cm_id *cm_id,
 }
 EXPORT_SYMBOL(ib_cm_init_qp_attr);
 
-static ssize_t cm_show_counter(struct kobject *obj, struct attribute *attr,
-			       char *buf)
+static ssize_t cm_show_counter(struct ib_device *ibdev, u32 port_num,
+			       struct ib_port_attribute *attr, char *buf)
 {
-	struct cm_counter_group *group;
-	struct cm_counter_attribute *cm_attr;
+	struct cm_counter_attribute *cm_attr =
+		container_of(attr, struct cm_counter_attribute, attr);
+	struct cm_device *cm_dev = ib_get_client_data(ibdev, &cm_client);
 
-	group = container_of(obj, struct cm_counter_group, obj);
-	cm_attr = container_of(attr, struct cm_counter_attribute, attr);
+	if (WARN_ON(!cm_dev))
+		return -EINVAL;
 
-	return sysfs_emit(buf, "%ld\n",
-			  atomic_long_read(&group->counter[cm_attr->index]));
+	return sysfs_emit(
+		buf, "%ld\n",
+		atomic_long_read(
+			&cm_dev->port[port_num - 1]
+				 ->counters[cm_attr->group][cm_attr->index]));
 }
 
-static const struct sysfs_ops cm_counter_ops = {
-	.show = cm_show_counter
-};
-
-static struct kobj_type cm_counter_obj_type = {
-	.sysfs_ops = &cm_counter_ops,
-	.default_attrs = cm_counter_default_attrs
-};
-
-static int cm_create_port_fs(struct cm_port *port)
-{
-	int i, ret;
-
-	for (i = 0; i < CM_COUNTER_GROUPS; i++) {
-		ret = ib_port_register_module_stat(port->cm_dev->ib_device,
-						   port->port_num,
-						   &port->counter_group[i].obj,
-						   &cm_counter_obj_type,
-						   counter_group_names[i]);
-		if (ret)
-			goto error;
+#define CM_COUNTER_ATTR(_name, _group, _index)                                 \
+	{                                                                      \
+		.attr = __ATTR(_name, 0444, cm_show_counter, NULL),            \
+		.group = _group, .index = _index                               \
 	}
 
-	return 0;
-
-error:
-	while (i--)
-		ib_port_unregister_module_stat(&port->counter_group[i].obj);
-	return ret;
-
-}
-
-static void cm_remove_port_fs(struct cm_port *port)
-{
-	int i;
-
-	for (i = 0; i < CM_COUNTER_GROUPS; i++)
-		ib_port_unregister_module_stat(&port->counter_group[i].obj);
+#define CM_COUNTER_GROUP(_group, _name)                                        \
+	static struct cm_counter_attribute cm_counter_attr_##_group[] = {      \
+		CM_COUNTER_ATTR(req, _group, CM_REQ_COUNTER),                  \
+		CM_COUNTER_ATTR(mra, _group, CM_MRA_COUNTER),                  \
+		CM_COUNTER_ATTR(rej, _group, CM_REJ_COUNTER),                  \
+		CM_COUNTER_ATTR(rep, _group, CM_REP_COUNTER),                  \
+		CM_COUNTER_ATTR(rtu, _group, CM_RTU_COUNTER),                  \
+		CM_COUNTER_ATTR(dreq, _group, CM_DREQ_COUNTER),                \
+		CM_COUNTER_ATTR(drep, _group, CM_DREP_COUNTER),                \
+		CM_COUNTER_ATTR(sidr_req, _group, CM_SIDR_REQ_COUNTER),        \
+		CM_COUNTER_ATTR(sidr_rep, _group, CM_SIDR_REP_COUNTER),        \
+		CM_COUNTER_ATTR(lap, _group, CM_LAP_COUNTER),                  \
+		CM_COUNTER_ATTR(apr, _group, CM_APR_COUNTER),                  \
+	};                                                                     \
+	static struct attribute *cm_counter_attrs_##_group[] = {               \
+		&cm_counter_attr_##_group[0].attr.attr,                        \
+		&cm_counter_attr_##_group[1].attr.attr,                        \
+		&cm_counter_attr_##_group[2].attr.attr,                        \
+		&cm_counter_attr_##_group[3].attr.attr,                        \
+		&cm_counter_attr_##_group[4].attr.attr,                        \
+		&cm_counter_attr_##_group[5].attr.attr,                        \
+		&cm_counter_attr_##_group[6].attr.attr,                        \
+		&cm_counter_attr_##_group[7].attr.attr,                        \
+		&cm_counter_attr_##_group[8].attr.attr,                        \
+		&cm_counter_attr_##_group[9].attr.attr,                        \
+		&cm_counter_attr_##_group[10].attr.attr,                       \
+		NULL,                                                          \
+	};                                                                     \
+	static const struct attribute_group cm_counter_group_##_group = {      \
+		.name = _name,                                                 \
+		.attrs = cm_counter_attrs_##_group,                            \
+	};
 
-}
+CM_COUNTER_GROUP(CM_XMIT, "cm_tx_msgs")
+CM_COUNTER_GROUP(CM_XMIT_RETRIES, "cm_tx_retries")
+CM_COUNTER_GROUP(CM_RECV, "cm_rx_msgs")
+CM_COUNTER_GROUP(CM_RECV_DUPLICATES, "cm_rx_duplicates")
+
+static const struct attribute_group *cm_counter_groups[] = {
+	&cm_counter_group_CM_XMIT,
+	&cm_counter_group_CM_XMIT_RETRIES,
+	&cm_counter_group_CM_RECV,
+	&cm_counter_group_CM_RECV_DUPLICATES,
+	NULL,
+};
 
 static int cm_add_one(struct ib_device *ib_device)
 {
@@ -4382,6 +4352,8 @@ static int cm_add_one(struct ib_device *ib_device)
 	cm_dev->ack_delay = ib_device->attrs.local_ca_ack_delay;
 	cm_dev->going_down = 0;
 
+	ib_set_client_data(ib_device, &cm_client, cm_dev);
+
 	set_bit(IB_MGMT_METHOD_SEND, reg_req.method_mask);
 	rdma_for_each_port (ib_device, i) {
 		if (!rdma_cap_ib_cm(ib_device, i))
@@ -4397,7 +4369,8 @@ static int cm_add_one(struct ib_device *ib_device)
 		port->cm_dev = cm_dev;
 		port->port_num = i;
 
-		ret = cm_create_port_fs(port);
+		ret = ib_port_register_client_groups(ib_device, i,
+						     cm_counter_groups);
 		if (ret)
 			goto error1;
 
@@ -4426,8 +4399,6 @@ static int cm_add_one(struct ib_device *ib_device)
 		goto free;
 	}
 
-	ib_set_client_data(ib_device, &cm_client, cm_dev);
-
 	write_lock_irqsave(&cm.device_lock, flags);
 	list_add_tail(&cm_dev->list, &cm.device_list);
 	write_unlock_irqrestore(&cm.device_lock, flags);
@@ -4436,7 +4407,7 @@ static int cm_add_one(struct ib_device *ib_device)
 error3:
 	ib_unregister_mad_agent(port->mad_agent);
 error2:
-	cm_remove_port_fs(port);
+	ib_port_unregister_client_groups(ib_device, i, cm_counter_groups);
 error1:
 	port_modify.set_port_cap_mask = 0;
 	port_modify.clr_port_cap_mask = IB_PORT_CM_SUP;
@@ -4447,7 +4418,8 @@ static int cm_add_one(struct ib_device *ib_device)
 		port = cm_dev->port[i-1];
 		ib_modify_port(ib_device, port->port_num, 0, &port_modify);
 		ib_unregister_mad_agent(port->mad_agent);
-		cm_remove_port_fs(port);
+		ib_port_unregister_client_groups(ib_device, i,
+						 cm_counter_groups);
 	}
 free:
 	cm_device_put(cm_dev);
@@ -4495,7 +4467,8 @@ static void cm_remove_one(struct ib_device *ib_device, void *client_data)
 		port->mad_agent = NULL;
 		spin_unlock(&cm_dev->mad_agent_lock);
 		ib_unregister_mad_agent(mad_agent);
-		cm_remove_port_fs(port);
+		ib_port_unregister_client_groups(ib_device, i,
+						 cm_counter_groups);
 	}
 
 	cm_device_put(cm_dev);
diff --git a/drivers/infiniband/core/core_priv.h b/drivers/infiniband/core/core_priv.h
index 6066c4b39876..78782cce47a1 100644
--- a/drivers/infiniband/core/core_priv.h
+++ b/drivers/infiniband/core/core_priv.h
@@ -382,10 +382,10 @@ int ib_setup_device_attrs(struct ib_device *ibdev);
 
 int rdma_compatdev_set(u8 enable);
 
-int ib_port_register_module_stat(struct ib_device *device, u32 port_num,
-				 struct kobject *kobj, struct kobj_type *ktype,
-				 const char *name);
-void ib_port_unregister_module_stat(struct kobject *kobj);
+int ib_port_register_client_groups(struct ib_device *ibdev, u32 port_num,
+				   const struct attribute_group **groups);
+void ib_port_unregister_client_groups(struct ib_device *ibdev, u32 port_num,
+				     const struct attribute_group **groups);
 
 int ib_device_set_netns_put(struct sk_buff *skb,
 			    struct ib_device *dev, u32 ns_fd);
diff --git a/drivers/infiniband/core/sysfs.c b/drivers/infiniband/core/sysfs.c
index 3c5541c39bf6..e550a7eb37f6 100644
--- a/drivers/infiniband/core/sysfs.c
+++ b/drivers/infiniband/core/sysfs.c
@@ -1448,46 +1448,26 @@ int ib_setup_port_attrs(struct ib_core_device *coredev)
 }
 
 /**
- * ib_port_register_module_stat - add module counters under relevant port
- *  of IB device.
+ * ib_port_register_client_groups - Add an ib_client's attributes to the port
  *
- * @device: IB device to add counters
+ * @ibdev: IB device to add counters
  * @port_num: valid port number
- * @kobj: pointer to the kobject to initialize
- * @ktype: pointer to the ktype for this kobject.
- * @name: the name of the kobject
+ * @groups: Group list of attributes
+ *
+ * Do not use. Only for legacy sysfs compatibility.
  */
-int ib_port_register_module_stat(struct ib_device *device, u32 port_num,
-				 struct kobject *kobj, struct kobj_type *ktype,
-				 const char *name)
+int ib_port_register_client_groups(struct ib_device *ibdev, u32 port_num,
+				   const struct attribute_group **groups)
 {
-	struct kobject *p, *t;
-	int ret;
-
-	list_for_each_entry_safe(p, t, &device->coredev.port_list, entry) {
-		struct ib_port *port = container_of(p, struct ib_port, kobj);
-
-		if (port->port_num != port_num)
-			continue;
-
-		ret = kobject_init_and_add(kobj, ktype, &port->kobj, "%s",
-					   name);
-		if (ret) {
-			kobject_put(kobj);
-			return ret;
-		}
-	}
-
-	return 0;
+	return sysfs_create_groups(&ibdev->port_data[port_num].sysfs->kobj,
+				   groups);
 }
-EXPORT_SYMBOL(ib_port_register_module_stat);
+EXPORT_SYMBOL(ib_port_register_client_groups);
 
-/**
- * ib_port_unregister_module_stat - release module counters
- * @kobj: pointer to the kobject to release
- */
-void ib_port_unregister_module_stat(struct kobject *kobj)
+void ib_port_unregister_client_groups(struct ib_device *ibdev, u32 port_num,
+				      const struct attribute_group **groups)
 {
-	kobject_put(kobj);
+	return sysfs_remove_groups(&ibdev->port_data[port_num].sysfs->kobj,
+				   groups);
 }
-EXPORT_SYMBOL(ib_port_unregister_module_stat);
+EXPORT_SYMBOL(ib_port_unregister_client_groups);
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0d5a7241ee0fe66622de04fcbaafaf6a791d5c7c.1623427137.git.leonro%40nvidia.com.
