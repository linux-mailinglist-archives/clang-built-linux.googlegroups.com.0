Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTGG6KEAMGQEH3DR6JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 297E33EFAB3
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:05 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id g2-20020ab028c2000000b002abd2e70309sf364868uaq.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266764; cv=pass;
        d=google.com; s=arc-20160816;
        b=dBhW5UZ0EDLCXrk3B7FSvmHpbGvWBumU+ejKTMGv9SX5rg6WOLF5yNYJkx52S39G/t
         NsB5R+kJiJdymunZsJ0h+n+AmNyrUqilmO3gaicGw0QtxojHr6LSiJvfTGST1Vot6QXO
         lF6lyiqxJXvOdwmiei79NwVWu5wqK6cdCiYmHk4O8GYulQ0OveCKX6AMXPl3LGue+P1a
         o92+akTsFrDHWRJmJOvUHRGq0kdXirjesYq+tSJQfTAzqjp9yp3Kw/MZrNl3S5yW3w3B
         61/c6y4a0nC6M3udn9LtMsaW+9g2KMrfwP/awmcugiG/o/zMsRqs4/UnFsaDQMWgrzFc
         e4fA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WIg/3jaG9+8JBz51xHIFWcNDCsErwVvCzOSbV0S+nTM=;
        b=Q5zub+ZDSaJSu7iqWnM0y+PBzgf+sEHQMnsOCBe307T7YAdAgq0G79udZpJn2nGlvk
         earVGyiPChaHDGsZQwTtg+wXschn7rUqSLwI2iE8KbezYhfowpqh2zFsmXZYCifDXPEV
         oQ3zFh4fcfl5XEIeWnnJ3rBH/zK7YXC78EKr4wa1qnhvNTQRZuYjQJ7i3kqmtvCGa38H
         1CRLpFWYH6BLSS9CIkD2HdWkoxymLF4uog0EMGOyLTHFOkpZgPWfUK8AsLVa30qn6yL6
         6kEkyRUuyrfQduYQPfhvV8wWbS+5tkXebRuVfALAuJjfFm6VymXl5JzrH7F53o2iqpXW
         +GSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AA8Dm35a;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WIg/3jaG9+8JBz51xHIFWcNDCsErwVvCzOSbV0S+nTM=;
        b=bbd5n+3R6l2lix8lSQPVZ3ZftD3HzxEb31nJ9SDHKYj/5XNnD/BS0bD/CjnE5g6/H/
         kSO8HEPh49wvS52CEKe6dKbEiLifqqKrWRiYOIe8Bu2zmHLK7itoRj5QaQlqTHeKZfof
         2NXYsLiO+wXuFtGdhGkaVTO3wLPQdLOAuZxbdziuJF13pHpd1CdbKWH+dJoCDA43P8Hj
         Fo2/qIfqADMJ6TPZqBJlvnu3+n0bG8Fq0lRWxEGkx3ZDRZAug4N+pvq17EyoG8A0SAwU
         PDz3jsnws9urHiph6+k4ADIkMUbTHlP3W8u7g7ZOKiwy1LvtVec736+RgU3GkzEwAnOo
         S+HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WIg/3jaG9+8JBz51xHIFWcNDCsErwVvCzOSbV0S+nTM=;
        b=qDz9YxLTVI5G9G/p/cN5ZCeM2sV8XIvKHNXqYzpg2e1A6lN85cgljoX5OztPokiek9
         PUOp+Z7YWYcE0+xIS9rkAcHtUl/eS/l5ZBBtX2YK5olASej1X5BhYDhjmoLbsYn48kyY
         MO63ulP8ScYzMSP9f6eyyRkP3M2GODx2JSLqzveWfXGp26V4Y/fktQ39LAlo2Cx7apCy
         scZ9aoZCRe2iGEyMRXCzPTp2z4SUBZXybEAe0dmanFAUs2aqPue6e5j741HvPY/TbZjo
         AJDoIMs4a7rHetY/DWPLEvEUymF5xXdzHrrYCkZsdFYtwGbO5/DKdeekTJspmDzifP5x
         txwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302l7XyzzNsh7jknvXNw3K4iZndSpndtp96AGNo8I3bSNZW6fIp
	w+JXeTUxogWSyen14i4xKVw=
X-Google-Smtp-Source: ABdhPJwcBFrsi0DplMt5ZHbwQvbLymhkman4j2CY9dlO81MBqE+lIryB2PVSRrhAFwgD6K0WSBu5Kw==
X-Received: by 2002:a67:e8d0:: with SMTP id y16mr6069292vsn.51.1629266764214;
        Tue, 17 Aug 2021 23:06:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2f87:: with SMTP id v129ls69265vkv.6.gmail; Tue, 17 Aug
 2021 23:06:03 -0700 (PDT)
X-Received: by 2002:a1f:9b0f:: with SMTP id d15mr5423792vke.23.1629266763765;
        Tue, 17 Aug 2021 23:06:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266763; cv=none;
        d=google.com; s=arc-20160816;
        b=vYA3e6ZfMtzusc3EYZHfmAmTkdb9bij4VR3DGcTGBTtEJqD6UaU3wrrHUAJ4Ut7XyL
         Q13A8KTkH3N78nz86Wk+WF7xXPFXLYyQuP9URi7yorlNqhHRVkDioNl5I2ujcD9acEjL
         I7UxyiHknRcpS+Idti/yLV6irK/pR370RCRzEXj/anOE4hDippqimJrW2MGXQmzYo/3L
         a/KjMdkFWhIkzUUkart1EKJN7lQwxxOS3bj1k49eSek2gg1Pe/LgHkNBhyouXw4m49Qu
         gdLAvogcWvBSBbz+Ib7r7G+Hfbq7/Wfqu1Z2fes6pLIyWFqwNTHtYz3+LXgRZUpXQibp
         CimA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NbUwFOYf9QoLFM9o1nAVztc6nEJjeod+Gi+09Yoftqs=;
        b=Q2K06D2bbSXPr+U5iHSptg2ni11EOcikihGlbP+fAOfq3INwcQkHQZ+bWx0DVnC/1n
         aeTV/3SXzmy/MbVJEIoEl42JBtmoWjqNK69gghcCaYEyNq1q7M/HgJMmzChzhxLewOEG
         4oHV6B0vjo4iRrkC0XP1mUYXyNXtnfFR1P++5iiEG+651Ei+yKiSh7RYFKvRsdnrYGj8
         YDlU9JEcaATicBJAhcSpMnyRPzkUg4xJ9GWXyp6k/GIxlJnu6mjjokxfM9Wl2f6pkZvZ
         +JYXmTYG4Jd+LqiYF9+oYmNklJ/uDlyZWfO0ApfhE9UmcFfamLeSCYQ/MmmfvZ23Eg0V
         9v2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AA8Dm35a;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id x4si282755vso.2.2021.08.17.23.06.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:06:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id c17so1160610plz.2
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:06:03 -0700 (PDT)
X-Received: by 2002:a17:902:d2c3:b0:12d:8ce5:5b7d with SMTP id n3-20020a170902d2c300b0012d8ce55b7dmr6022538plc.67.1629266762932;
        Tue, 17 Aug 2021 23:06:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 20sm4769310pfi.170.2021.08.17.23.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:06:02 -0700 (PDT)
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
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 36/63] scsi: ibmvscsi: Avoid multi-field memset() overflow by aiming at srp
Date: Tue, 17 Aug 2021 23:05:06 -0700
Message-Id: <20210818060533.3569517-37-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1793; h=from:subject; bh=5Fef3h9MfV87icL3aKSaHfIze5Oq4yInxr2gg/s9eAg=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMm17KLki3rqBaWpe95fASVBBQIIBI5vmXQYfcS JgzP+3CJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjJgAKCRCJcvTf3G3AJn/GEA C0g1tF3vBSATxFlt9g2MNVHox82GGsf3qtgn9DL9516BujVpZ6kxxymzVqHQLiePOpV9iTyZhh8bJP WPrCjTBFFiAdb9Faz4yuO9NudbXOZ+FexNaG3BvwuZOEhhxFRk3UBhjg0yj+oUvaQFJI+eTXM87IiX XGBr1KfDdlwjfoNhrhvn+4x2NL1tTH2qiRtqPMKANljnd20L8dSa0Zf11kG3d+/5Pg3jlBdf5oFQ4U LAOUjEVvApr+/BCqpBDdWYLpXpnN6wBAOl/UKC2lE4+Bma8jAela+AXthAZ4+UkXlllUyJC7CYFuYC nNiMaWOxnlHpbs9rLdSPcik2ntQ+SzdHUvwQ6D98tTmN5hOsvVqKypYT3ih1P0V3tx5tnqBrY3146X db+XSYqsKceUuA6bnZUACjEVi2zDnJZN/ekJ/ihxxqVKhs9MGGBJk2lEf1aYuZL0wluSpQwGxJSRs+ 3TlPDK7rkiGCZ7rOUhBMieRFjYzAx2KdDP5B2vjJOI/xopH9WIrkKC46i/Nbijs4Tk/P6zfRhrnq3h VCi/Zuk8ZQvxwMdoc18EPHLm7+Q+Sti54Kj1u5YIGU/ibkC2dYtnH1OTLV3w/X4I14RtR5sSFhYudo sHSg/VA5WHaBn3O1xg6slKTE5ifCxA4C+jndEj5364mN8eVDW0pyOK+Bp0vw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=AA8Dm35a;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c
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
index 50df7dd9cb91..ea8e01f49cba 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-37-keescook%40chromium.org.
