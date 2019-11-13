Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBDWIVXXAKGQELH43F2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD49FA203
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 03:01:52 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id m1sf367698pfh.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:01:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610511; cv=pass;
        d=google.com; s=arc-20160816;
        b=Iq7SK+gYaXYA4otygcHaOlq3tjHorpqhmwZfmHjSyV6uia1TVxwMz7JXKVCeuU3COF
         9v+2o7kgSDhUD+fIIU04+TgZsjKDqZgduWC8IkJuFT/3UM/SstLnbLWJgDUosY+O5FfU
         DKBiWFFN24wBSPi2DJ8eQZrdDT6+c+8cWa+ekXW5/JOsQCs65WCRHnZvQJFVmTTSGbqX
         AkbEuOTYyNr+Uk9eGVkvX9glKT8tyXKbkU5yDuTGJgg4Bj/SJD6sU2vtaS3vqFiQpXdA
         5YuKdCYCfQSbDGI1qZjyyzqIZCg0DokxMsLWyz0l1ovx7JHLNtWVtKB3rBj9PaupQubX
         zQNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=YwbhSerx1EJwSjMrHoD9hKEw98yNJ1/XXDqf/ec0nDU=;
        b=PfKpoKUb7vb+eGvp3k4HV66Jk9Ip1SyWpGUbd3VCjZyjsPwsEs21ARmLWiou3c46co
         xYjO9OR3UgmdMW7JMNqrfgRNKJrK3ZFTZrfL45GdA904dBTO7W9JeBru4g/nZFrdAkUF
         w/OhOsWuLD1nX/sb4cNosd1mjlqD9NmHxzawd17NtmgrfS076jQYlz6S2YkZhmSdAQey
         txq0xSNNOUkPcB0xWopGoFtGN6ndFfWexFniXuWNPYLRklysEB2c/gGYZmjC2+Hd9HNF
         SKi9RB0XX9KuScroTGeJ5VH9flvT8W11ch+8pljx2/HsAwf3m8XrC08RcL8FWng2wxed
         sftA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZX00EYen;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YwbhSerx1EJwSjMrHoD9hKEw98yNJ1/XXDqf/ec0nDU=;
        b=cucEWQv75wBQ5f/rerElIIFNRc72OG3zUaC7pZ1zMb8Ns9xXiGrbo8ua1LD5QE5Gkz
         C70W9VWq8nbLYjm2MqUn/2nlSIgErk6U7CI0SZp1gcD+kpiHoSeq5k4s+9E4n0qvfAba
         3JMrTVTyeA4Ftz7b2d5rB7NCzocOFKiugs0wOuTfB2wZFQApIfaHfVu21dMoo4wklJis
         OAeLl6vyAVyCXSbn7WilmijOWoUagHzXW+mnyslfz+9cFXIcQZHM+Ei+MncngRQhnIby
         rLUUGvfo8z1t+2w/KbvYEiBs+0x2ptDJ7amAfRUHX1kX22CzZdQg7+7kUAdxMokefxJM
         kv4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YwbhSerx1EJwSjMrHoD9hKEw98yNJ1/XXDqf/ec0nDU=;
        b=SmUAfWCATuub1PHRC6VcptYYmY8oMLbJQKiXsu8OkmXRfhzgIgedtB7mSSm1HQz80w
         Q0noqePFVy3if3mAIHk3fIR/Zjha3aPNfRAijp6jqqyECdTdqUyESy9AxaC8m7x2sK5U
         mgvKVTWX4JuWfYFz5yuMCKWKswQXozJSYsrJvu5zhgV19tz8AYIb9C1dOpRPciCcPET5
         V+AJSw/3yryIQFNHdTz7ALpgD7kzRfLcvMIw/Vn5kU63mvMvTQhI2MkqDYvlxyCh7sYB
         4Nuy5jssLZdZzku1rXI3+KqTUXDkhCWnWY4QCf0OtNJ+i7ICUzcsq4Y0+pdHV2MTgX//
         3Kpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVz3n8JUqPstsYs8VjUFN4i6O/Eg3uNRgib81GL+qUCSdqOB6TY
	1EPEtMrtO31484nJWDCYcMQ=
X-Google-Smtp-Source: APXvYqzkAUbwTPCoJwZmgC6uM9Uyr/tI0NcV3eKvzDh1uYzfqLePrrKJhtDpxretdKFZBc7MFykV4g==
X-Received: by 2002:a63:5417:: with SMTP id i23mr725470pgb.305.1573610510822;
        Tue, 12 Nov 2019 18:01:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c78b:: with SMTP id gn11ls187881pjb.3.gmail; Tue, 12
 Nov 2019 18:01:50 -0800 (PST)
X-Received: by 2002:a17:902:b60d:: with SMTP id b13mr1017378pls.145.1573610510457;
        Tue, 12 Nov 2019 18:01:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610510; cv=none;
        d=google.com; s=arc-20160816;
        b=Lkf2W9O0pD35dphIkxKFFBSaMUeCYyuHWWAFxg4g5xuzzRLaJRyYtaCJW4SNXpzeUc
         h2/vbSMRL5jmkpilElaQSFxRF58W0mPM1tXwyrYj61Hbal1Mxx8s7SOvIDnIIfsuhw0B
         RKIdjzT84wbfVRbVILLfoKs/tqcKCY+OvfUeYYbYts+pFvHq4BZGeCf1JX+PEIB0bMSk
         CuPJ7inIiNGkLXiVolsWeEJTMK9yJ6CPrq11dtJ/nDdpEU57h59cR9viyjkGKEHxNnyZ
         nQAo90UBlzaNIG8YvJPAOzjmugwNvNEOkwgPZNKQ6yEQ/B4tDpnXDy2/3/0MEmVO+Yot
         PPZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nyMmjKiu9BADbqIdgXMXLzjDtNwexhHKxpcBpEOYJbg=;
        b=DKS33Ir4dl8ngtMZe9mWmIUdN0R28yihzObJILKP3ncj4MPDvmsmstH62VDRUodQnZ
         Z3YfLnChNLzJWwsd2HGsGut8QKG5O0vp5osOnAeMtFl9+y+/wOlTKQ+JXPP1FbEIyOgP
         MSvs/67CdgOCzHTZ8wWRw8l2iz8tQTjfRtkcELMRVeKXT7EDWYVHOkBhoEQ+gUFAlEaV
         QAaO8sbXixNn59aJUpJPGNHZosI9i7SKJlPRzFh4BmnjkT7/Rt1Y8v4fULMie4kBWem4
         bgPKpzFMNPSwjfBU3/8TiX+Tb9hX51P7peZcaZO2GwXyCSTDwRpXaNQAD5Eh6/j194cu
         UnKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZX00EYen;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f17si20842pgk.3.2019.11.12.18.01.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:01:50 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6153321783;
	Wed, 13 Nov 2019 02:01:49 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 12/48] cxgb4: Use proper enum in cxgb4_dcb_handle_fw_update
Date: Tue, 12 Nov 2019 21:00:55 -0500
Message-Id: <20191113020131.13356-12-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113020131.13356-1-sashal@kernel.org>
References: <20191113020131.13356-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ZX00EYen;       spf=pass
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

[ Upstream commit 3b0b8f0d9a259f6a428af63e7a77547325f8e081 ]

Clang warns when one enumerated type is implicitly converted to another.

drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c:303:7: warning: implicit
conversion from enumeration type 'enum cxgb4_dcb_state' to different
enumeration type 'enum cxgb4_dcb_state_input' [-Wenum-conversion]
                         ? CXGB4_DCB_STATE_FW_ALLSYNCED
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c:304:7: warning: implicit
conversion from enumeration type 'enum cxgb4_dcb_state' to different
enumeration type 'enum cxgb4_dcb_state_input' [-Wenum-conversion]
                         : CXGB4_DCB_STATE_FW_INCOMPLETE);
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
2 warnings generated.

Use the equivalent value of the expected type to silence Clang while
resulting in no functional change.

CXGB4_DCB_STATE_FW_INCOMPLETE = CXGB4_DCB_INPUT_FW_INCOMPLETE = 2
CXGB4_DCB_STATE_FW_ALLSYNCED = CXGB4_DCB_INPUT_FW_ALLSYNCED = 3

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c
index 052c660aca80a..658609c1bdabe 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_dcb.c
@@ -266,8 +266,8 @@ void cxgb4_dcb_handle_fw_update(struct adapter *adap,
 		enum cxgb4_dcb_state_input input =
 			((pcmd->u.dcb.control.all_syncd_pkd &
 			  FW_PORT_CMD_ALL_SYNCD_F)
-			 ? CXGB4_DCB_STATE_FW_ALLSYNCED
-			 : CXGB4_DCB_STATE_FW_INCOMPLETE);
+			 ? CXGB4_DCB_INPUT_FW_ALLSYNCED
+			 : CXGB4_DCB_INPUT_FW_INCOMPLETE);
 
 		if (dcb->dcb_version != FW_PORT_DCB_VER_UNKNOWN) {
 			dcb_running_version = FW_PORT_CMD_DCB_VERSION_G(
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113020131.13356-12-sashal%40kernel.org.
