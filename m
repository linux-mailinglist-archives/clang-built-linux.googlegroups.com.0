Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAUERCEQMGQEQN5QZHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B243F3E61
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:51:36 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id t18-20020a05620a0b1200b003f8729fdd04sf1382361qkg.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:51:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629618690; cv=pass;
        d=google.com; s=arc-20160816;
        b=d0nlvWq+d95lk+x061Zi0YP2B2ZYU1iD3r1InHtbllFFPNY/mJnpPjZzXeZ+qASu1H
         EHilGoxifxSXS2C/QSjqSfOp4+Lc5WQKuO0zTm5N0Hw8EhFjb32K9qdD1zskPXCC+lyU
         CYxA9Ecz+7YZIU2sk58KueKVOvbpPsdXFdLrjndS0wZsWPd1CHBKlk3oDdiFs/iyEbVb
         qEaatTUqvLg+Ii4Eq7G2lvYc/aKeGGwm0STLa/3KC+ZFxn0b5UaTr5KOb+57bTaogH3m
         6gQ7kVsnSglLZw+lDdJyF7a1tn98yfKZPVSdmKgF1DCcohndmXdHBzB3ZYttMpG7pclO
         QYDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JLy5iZPWirYpbkdv2QJYZE836D+9ZQfErQqBDEhG1Zc=;
        b=t+t5KT68Dr29WJ0W5cGY/gHqx9PnS/CMJyHJRhkYoPlu6RTeb7TZTqiRm6pzb1uVLP
         9FXkF98CnlPoqk2UrfviIA/3veGI23um8Ckhj3liGQ+F/vzCu8cjY/Z1y2Co9Z1w8ddg
         aHcY8ANEDlcCwFJMv4PVgaoa4QJfgcdJ+vlxro+GQ3xc726W6lb13rC+yTPNAYC/F2mM
         L/OJVkQAO58ilQjaN96uMEckZibYi9NkugtIISbDGCY7RaSfMsOy1fy/ahCfKbMBFzCc
         BkUJ4ADotY3nhda68hQGtbfJQlwHyVZjUdAavQFL2CU4/fAsBGorY/z6zcmfxSZbznQl
         FSrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VJB3FTt5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JLy5iZPWirYpbkdv2QJYZE836D+9ZQfErQqBDEhG1Zc=;
        b=RJrFMD7eZ0/MfOg7AfkHMnR1ky6h8u4x9MNChC7BFlTrr/56NN3lsfB98g/U0u8cMW
         A6CQeMGd3PSDB6k64CQ9Sd2cHx8e7UlJe2IOu/NMbEfQnvOGxlFay4Y4V/QKIf2wGSUl
         vPMylO6PGESit95ZgqEzVrmNMX59qc1OQu8QlHiudvK6POcH4FjWOyyDjnP0NW3FplOh
         wjZMW7b4NxoZzv4nEUg5ASlnjHez7os6RBHPwLTt7fco2qQhYCuDDgPjtaL/x9Zk/lmC
         hkDSLJmezvzqwZmBEkrjM7rAYxFbYOGpFHWCSLRj/+Vv6IxQDi84WfvhpmfEckhvpG0G
         si5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JLy5iZPWirYpbkdv2QJYZE836D+9ZQfErQqBDEhG1Zc=;
        b=LBMsKAs2sfxa/zWOB2ypbPpf7r9eV1tjBS7z3+CsgVe3riaBXelO52WPjH13uyBoNY
         UXpw0cwgtJn10f5vKhHI0DxdE9vF5jG4OghjkKwC6f2gO7txCszfunvenWbsBZWrCuRe
         OR0PanBg94yMaU76ym05qJAN0sZfuezdspbIBdPPp62JyJ2MAys2arSjvO8Eo+dOuOn2
         /fRAOHqSILClfAKRXKis32VwnYREDrbsEZG/MuQYjhUXBE1luyYB6HoiqFw5cfWCJyyF
         l87X+dKGKQeuHrCtw4LN5wTkdMpAoAKSIV9vRCPVNDtFWuWECGzASFOSuCRupm77olq9
         B0ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324Dlmt28KTRNqJnhi3X+8Xd9k6P2+u1a6AMUWH/7FrUzkDQPQr
	tuG+bmhTVR/fWQuYB8JxLZA=
X-Google-Smtp-Source: ABdhPJzGc4y5gCp6NhsfHmkHNGFNqnC0TBV6Mk+21YAJPyFzpqQeDKY64c3mZPCD6oYNNTN/0qxpTQ==
X-Received: by 2002:a37:b56:: with SMTP id 83mr16049883qkl.360.1629618690460;
        Sun, 22 Aug 2021 00:51:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:153:: with SMTP id f19ls4592796qtg.5.gmail; Sun, 22 Aug
 2021 00:51:30 -0700 (PDT)
X-Received: by 2002:ac8:7ca3:: with SMTP id z3mr9950155qtv.109.1629618690058;
        Sun, 22 Aug 2021 00:51:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629618690; cv=none;
        d=google.com; s=arc-20160816;
        b=Ing08VmXeFjJRbjQiMtuomt7lhzwvbyFLPIsZbI0XlXBpp/Rup+/17cnNRmJiKDydM
         Gb59utDv52TepywA1Crw50HWDlvSc1j3ygRSMm2/V365AN5tQcBqOZUuFXNyG5Hh+sdY
         dLfwj8Zvjn1E3BqqwcjIfGA7B9cTmhcTT+tr5nTjEkRA7To7VBfnWjopnOov16+CCIqR
         Tv/bU9a+bckhwFsnOCArlMoTKIboRIj+TkRACbgO4DI3ZEB7KDNer5RDvTM+q0I5p/Yh
         kgVGf0N2quZEzY01yVRiyjUw9xwNPFCexTmasQxxoueHCb7bLi+AgXYzNOhC/XkG+5AS
         nb/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kwHDlRYGw2pe2VpozCEASD85dDS6sHxCPa/xDSIICvM=;
        b=OOBENvP0p7ykxMKBzE1NYR+uWBwCyVsrI48WKonzqnQYljr5aN8DAxxLd3geO1nw5s
         rtWiexERZdceDvb5p99aUwgA4grDxJh6rJKauv3IfrOjk5cv/xKv/glqsFX4XpGUsoAG
         HDN/haks1qLXj/S5V8PDtkjoNnjNGcjEo0tTdsEpY0UhsWcLKdYSqXkTBLWbZ81S8mPZ
         oywFIabH4sowlpWsZbMGvQN44Cm2K8aukXswguXZXef6ig803A9pD1XTxoE5o8wcDZy3
         BJHw827a1cuS4EODT27/7bmtwr5iEiYNTjvtc6d+aV1QX56QstQZY+0n7dpobTpuKock
         a9SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VJB3FTt5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id b125si30142qkf.0.2021.08.22.00.51.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:51:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id d17so8343093plr.12
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:51:30 -0700 (PDT)
X-Received: by 2002:a17:90a:1f09:: with SMTP id u9mr13451822pja.206.1629618689283;
        Sun, 22 Aug 2021 00:51:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j5sm16177432pjv.56.2021.08.22.00.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:51:27 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	linux-scsi@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 01/25] scsi: ibmvscsi: Avoid multi-field memset() overflow by aiming at srp
Date: Sun, 22 Aug 2021 00:50:58 -0700
Message-Id: <20210822075122.864511-2-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1793; h=from:subject; bh=ug7KtAnqHA97F0XIHxj84B1vcjl5KTaHRbDt5BL2iJc=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH029iMytTOfEkySdRelPdaDhR6VhLaGeRkdoDa 4ABOm4yJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB9AAKCRCJcvTf3G3AJjv2D/ 48Fr/XBXtchVss+4cH6PQaHpgRQzDXtB1e3n+pg90FdtK9Gu2IOW5Eeo4HeRN99/sieQG+UcSe490f qdjzZblkN7rCOZs5uC7Qv2WpSpX0BBhVlJiGfxEbCTMtN/McHWDMfDGmctuVYCjiFd7y7Qpjh/L95Y m7MEuz01lgiYVwA7kXYcrKV101D+aRlU+gawH0a187wiLOGq8y3BJAooZKrFbYl1355a2kJZCjPGoC hfz0Zlx7XRVAVlQj2eCSdwACSCDiDmZx+gKHkVGAa0CtgE0F32xohvWP2x4Yt3yFRHQZDV+m2xqDvg jdu7NtA6bQe03uJ61mDeZEZmxbYOgkiliI38njvH83Gv+Oio1sCmUJjxyDGm325T/wynBN5hbw25If e7zPYndMKDwfXXY+dtyCHCMOh0rwCnS8C5qg3Z+ez6sc/fc1H3oGeSo4BsvngOPFd0iFMrdzhmT9Y4 eXJZW8YHVV7l2UMynV+iVHszGnG5p93QrqnK5KN++aRu+Vr8WKiP9AlwHb8ALA+9vT6sy4fojF/6p1 yL/9kO9S1YrHvKzdaJA1a0FZiq0azd5ExdJrqy3oB43u2iZm/iUYWiea6jYZ0NIrVuHaNcIy9Dn8By CUJjki1mhqlzaYinYiWB2xUvQmLUuuYrVcDc6adS96luBv0lQeyKTVjBPPdw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VJB3FTt5;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Instead of writing beyond the end of evt_struct->iu.srp.cmd, target the
upper union (evt_struct->iu.srp) instead, as that's what is being wiped.

Cc: Tyrel Datwyler <tyreld@linux.ibm.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: linux-scsi@vger.kernel.org
Cc: linuxppc-dev@lists.ozlabs.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Martin K. Petersen <martin.petersen@oracle.com>
Link: https://lore.kernel.org/lkml/yq135rzp79c.fsf@ca-mkp.ca.oracle.com
Acked-by: Tyrel Datwyler <tyreld@linux.ibm.com>
Link: https://lore.kernel.org/lkml/6eae8434-e9a7-aa74-628b-b515b3695359@linux.ibm.com
---
 drivers/scsi/ibmvscsi/ibmvscsi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/ibmvscsi/ibmvscsi.c b/drivers/scsi/ibmvscsi/ibmvscsi.c
index e6a3eaaa57d9..3bd3a0124123 100644
--- a/drivers/scsi/ibmvscsi/ibmvscsi.c
+++ b/drivers/scsi/ibmvscsi/ibmvscsi.c
@@ -1055,8 +1055,9 @@ static int ibmvscsi_queuecommand_lck(struct scsi_cmnd *cmnd,
 		return SCSI_MLQUEUE_HOST_BUSY;
 
 	/* Set up the actual SRP IU */
+	BUILD_BUG_ON(sizeof(evt_struct->iu.srp) != SRP_MAX_IU_LEN);
+	memset(&evt_struct->iu.srp, 0x00, sizeof(evt_struct->iu.srp));
 	srp_cmd = &evt_struct->iu.srp.cmd;
-	memset(srp_cmd, 0x00, SRP_MAX_IU_LEN);
 	srp_cmd->opcode = SRP_CMD;
 	memcpy(srp_cmd->cdb, cmnd->cmnd, sizeof(srp_cmd->cdb));
 	int_to_scsilun(lun, &srp_cmd->lun);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-2-keescook%40chromium.org.
