Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBT5RYDXAKGQET6ENJZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8D4FED16
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 16:42:09 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id t185sf6659860oif.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Nov 2019 07:42:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573918928; cv=pass;
        d=google.com; s=arc-20160816;
        b=E7S2Kn3so23Vw1L1acZSc2rTFvq4IqTxLC76jcwspDXLJL0bvKkNsFKkfbUStfoits
         gvLQA3VvnktaKZBur3vX0J0kp93LH60ZesryrwiUqCp1Ojga4TW7DHGonJzcJ10LNC8Y
         EGYdv5gPU5P1JvB0hFQXcGxZNxT8HX8O3EDonPVAvoP10c4CwWKnDpBOXmOSGQky+F11
         axCyFKMIhKHxAK40tRrDBuKDchYD6WVhXahCWfonfeHYWyQLDaoq/L1wGGFrxpLP46Rj
         xpll9/SEH4wseeMr8TgVyzQrddh4qb/lMZTVtAiFya4Ey1zt6Ve4nFHX8f/+5sYrOzns
         9g9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=o53rU9lgXSQjNU4Yiz/LqrWVszen6MpBddlJtG1xve8=;
        b=vTc8vo9rvralHm7KuDKMHNINUiQj/rhKE+g1N5DEOE/3V+ANLRKBmL8WUGzfNNASmz
         ei90o/QrO+cJzpUk5l63+/i4c9nCLUDGX26lo4VDqLpRRjMJ7QNCGWhmD6GDt4Oz5EaJ
         UI8eMgqYeyeuj9mM7GjpwDrYkqgXb/1819dzVNZyGqDJH8aK+oGpRKVIjMb8B508FA1U
         0TMLDL7MZBXK3UrQ2qiUymv9iTP3KW42Z42ERw0kLOpKTAZ7fJMXII45Z7ce/IR2wPei
         ylMGETs9vpLoaCu98A3zJK18dhY2z/dEHLtsHMV0EYCs+k53TgTc86vvknO/SJoHOrKh
         PTfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UUKGtUiJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o53rU9lgXSQjNU4Yiz/LqrWVszen6MpBddlJtG1xve8=;
        b=AieJc4R0QbyrKvB1kB2YYmTSbnPFQSTgTnmzKoh6xAwB7WxzApSkZR1dbYMyN4aVh8
         28YK9Uzz+hdbEOjVPXHuh/7kbkhs0sHg9+BahZQX2DRU3Jt5iyXoNjPEQuQyXRqtnEFb
         BH2dtQPtH7yFIvGFAclmMIogS6SgCjB1T5Y3xCgWY14NQ8VfUwCSPAIj9yw1xFRs7GWm
         4GZut9Dyro284qL8nBU33OfXEZZ0gYEh3qA12eLP6ZSVhrEt6AXrHKIYI3NKC17pQP4v
         8wGXhGhEHtdKeqCx8YzNq6J+cLEFq44FD8emUnDKK0Dv3isGaeiq3+qQqpgBqdZobfqO
         RtVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o53rU9lgXSQjNU4Yiz/LqrWVszen6MpBddlJtG1xve8=;
        b=nyj5fyh4yHQeDz8O0qmTX7kJBD2e8jC/1HVNK36aAz5E4gdY101wZ7RaW2A9XBbMDr
         vY6n1StgEKMR9X051XvGJeiA1wmhAwE6GoxIoC+4Cmh0fp5X7FwHZg18qmwvsMS6+CQG
         bcnohyxXeZ67vbd7stK/ZioamrBrIyyzyk7yZPcNTdi8M7lktrN2jlVk9F9DlTnU/yu+
         6mvR3ebydXSDnDQ4yOFuVmTsja05KhFzFHz4KEWo1Q0GXhV7wM+hb2lKCcHIf+++RB/a
         R+5EdrTpifu6D7w0C8ttNf5ShNbVPCY0MJXPLeR1OgUEsVA+Z337YI8X85OXxi4Q9m3k
         LOKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW7DDPWriuuDSxCGUiBNXyuz8CUuhc9D3d6FEPiIzQTAbXm/dbE
	99qCGN5krcjCnNnVK4uYjLE=
X-Google-Smtp-Source: APXvYqzOMLr+9RVi7M5OQkyHuHUwOMdFnvrYL6Y5oZLwNNUDmmQxGra7lNE4YaQnHYLW9IwF79tQFg==
X-Received: by 2002:aca:530c:: with SMTP id h12mr13368607oib.110.1573918928017;
        Sat, 16 Nov 2019 07:42:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4815:: with SMTP id c21ls3359535otf.0.gmail; Sat, 16 Nov
 2019 07:42:07 -0800 (PST)
X-Received: by 2002:a9d:4042:: with SMTP id o2mr16284728oti.22.1573918927624;
        Sat, 16 Nov 2019 07:42:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573918927; cv=none;
        d=google.com; s=arc-20160816;
        b=imwkJL+dCGNQzIW4TIZIYjFR6w2+JJUKVyw5at5oyCcXF1QUsfRRKtErC0Dwd1McTs
         YKNqkR8VWbSgVfWKzmc6xn3yhnaTJFN3ui2fh0XRUEdtfXPrLHglVtc9vCHP7oxpKcDE
         q/31V+/2IoqRdZWsR8fFSvrRyg9qeqZcFNC57dgrz4YuSAr6HWGxnjvxzpxUuglyIDeU
         zMWuGX1+4ENykJGMFTs1hfkkTCv+QgKUOQSEIN5Mf1KioEbFzTnrXMDXLbwJgitY6fLd
         V44ofQLbLRdDFjaZFW/GvILIG+uwGr0PR/cGg5AwNbURN+fFRGPvBvcJ0ba8IF+R5LSA
         qp0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=trSpNwc2nVq5u/nW7p/wgXSmMMtVAl0EaYgB8HBEGo0=;
        b=geOeQP7Z9mpc6uLEEdqGVR94trooL+KHwxS2itowx3OSa/Vrm1MVMwMp1vs9ZLgu3A
         TQzlcfhCUobsUHSVP+IkG6FfmAiMkeDLHM4Mqs1IN1TkuKvCnaNC4bU/ZEijETJH4XZw
         vj4ZSl6YRB2eZ3ItSz5aWjf7vG4hnwnP3kcdExjOr/BYmfNoc1A3jVLZDf6HkMcQBpkY
         r5gsmrOp4GwGbgQNxmMN9Gv3MbXtzSDVuJna8Q/H14TjHIyEz22G/WN+yxXRdETxLUhI
         J2F8JKdlNYYiVaImivXRDWg2HUKPhxjLmGceUuKJygkVIHNkzeJMhqdsNaLKXrn6iGx8
         OilQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UUKGtUiJ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p16si871177ota.3.2019.11.16.07.42.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:42:07 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 854042075E;
	Sat, 16 Nov 2019 15:42:06 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-scsi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 053/237] scsi: bfa: Avoid implicit enum conversion in bfad_im_post_vendor_event
Date: Sat, 16 Nov 2019 10:38:08 -0500
Message-Id: <20191116154113.7417-53-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=UUKGtUiJ;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 761c830ec7b3d0674b3ad89cefd77a692634e305 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/scsi/bfa/bfa_fcs_lport.c:379:26: warning: implicit conversion
from enumeration type 'enum bfa_lport_aen_event' to different
enumeration type 'enum bfa_ioc_aen_event' [-Wenum-conversion]
                                  BFA_AEN_CAT_LPORT, event);
                                                     ^~~~~

The root cause of these warnings is the bfad_im_post_vendor_event
function, which expects a value from enum bfa_ioc_aen_event but there
are multiple instances of values from enums bfa_port_aen_event,
bfa_audit_aen_event, and bfa_lport_aen_event being used in this
function.

Given that this doesn't appear to be a problem since cat helps with
differentiating the events, just change evt's type to int so that no
conversion needs to happen and Clang won't warn. Update aen_type's type
in bfa_aen_entry_s as members that hold enumerated types should be int.

Link: https://github.com/ClangBuiltLinux/linux/issues/147
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/scsi/bfa/bfa_defs_svc.h | 2 +-
 drivers/scsi/bfa/bfad_im.h      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/bfa/bfa_defs_svc.h b/drivers/scsi/bfa/bfa_defs_svc.h
index 3d0c96a5c8735..c19c26e0e405e 100644
--- a/drivers/scsi/bfa/bfa_defs_svc.h
+++ b/drivers/scsi/bfa/bfa_defs_svc.h
@@ -1453,7 +1453,7 @@ union bfa_aen_data_u {
 struct bfa_aen_entry_s {
 	struct list_head	qe;
 	enum bfa_aen_category   aen_category;
-	u32                     aen_type;
+	int                     aen_type;
 	union bfa_aen_data_u    aen_data;
 	u64			aen_tv_sec;
 	u64			aen_tv_usec;
diff --git a/drivers/scsi/bfa/bfad_im.h b/drivers/scsi/bfa/bfad_im.h
index e61ed8dad0b4f..bd4ac187fd8e7 100644
--- a/drivers/scsi/bfa/bfad_im.h
+++ b/drivers/scsi/bfa/bfad_im.h
@@ -143,7 +143,7 @@ struct bfad_im_s {
 static inline void bfad_im_post_vendor_event(struct bfa_aen_entry_s *entry,
 					     struct bfad_s *drv, int cnt,
 					     enum bfa_aen_category cat,
-					     enum bfa_ioc_aen_event evt)
+					     int evt)
 {
 	struct timespec64 ts;
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191116154113.7417-53-sashal%40kernel.org.
