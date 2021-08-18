Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRGG6KEAMGQEKQVWBPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D48E3EFA97
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:05:58 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id o3-20020a2541030000b0290557cf3415f8sf1822891yba.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:05:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266757; cv=pass;
        d=google.com; s=arc-20160816;
        b=IZpoTZyHvxpFe25QGoj6lENHjgMonnXUKYJCcScH2Nt2AiDsBncviGk3Nj5yIYXRiH
         VaOmRsO9WOGWAHMF3CSapTvcOLVPndi9t/p0Hwh17uMhEhvzbhhVdBde5jBn59HBv3bs
         /UDHoK0datbkWVqO85cYV5K9xIYhpBqjFJDsAer8ENps0ilOCZ6I69gLiODefM88NviP
         glfCVHaDaktucO98ZuC4WMY7DAkm/9/dG8IOKOrGmT+xNyZcMvRIh222xnSsq5Ah68ei
         ZUYo3sZufdfALesrCj3lrIrD3fXk2vdgENQGvCoGYHQW1uVT7n49Lp4VQvcjfo5a+t9v
         RSiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hqNUtcBMJqHcbbRMI+1Gb94HAj/AHBbx9qyMFbpjTX4=;
        b=0tKFr7JTOVgPvKVQWTSkHBHH0uq3EnxWQKSmMQA8Lvqxr8IZpvsG14omUEoi1E7+JI
         7un2YsKhd4tlZGIn3u0SGA+VCb1JG5tUVgl4VwtFdw2Jh59n065xwXJr1XgCbA/nLVaI
         N7ESLvrbrNurSbiUX4aIVFOwutas7iriqayvUvh8TQCRsD7kvzJnTl19drIHQNz6gFeZ
         yLarToBhvTvaVddIClu9SZquoyMsZ/0/tEX6+AvjQrWobDtn4yWdRGQbF4eyFfXxPcu8
         cY+nSsjgjrkjQmQrfNzzfSQkJfv+Ul3gGOhTgvbApqJ42cI4ZRyZa8ymRcqDtDbzSR0N
         VbBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PFR7uYpP;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hqNUtcBMJqHcbbRMI+1Gb94HAj/AHBbx9qyMFbpjTX4=;
        b=U9UgV3OvHLWFeQPTDU6ScZOC0v9s3QUw0bUZ+K186/kR8L+4e6xIlBQFRXTahtc/zg
         zCv1yVIrSzCLb1LyrTRK3BhsTkpLmltahQUg/7n5FBC/dlEda+TkX67pGWxuVJc6A+i8
         Dhf2+HzIuMz7fPyPP333oJiiQ2MLapBzwQxYg5v6ujPsXzAfllsBIA7IchgaG1hWVSDh
         d+VsFDoRc/n25FYWU+05Aq/874xRyz1Kg/FLoh0MqaFA8HLHU/VXxK/apI3C5oOTHIjE
         1vYEtZ3jW/gcK7hkGkxa/e8pbASZNotKeHAkV98Q3/PQv+nq0pownjrIaAgbVRpgaNmY
         /NbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hqNUtcBMJqHcbbRMI+1Gb94HAj/AHBbx9qyMFbpjTX4=;
        b=iTfCLsDRdNFU/C6D4k0MymfdUxKhGyKTBh07KNd9phkLycD8IQRB/EGYEsQv3KIXTc
         EKL+i+h0c1miWCW2sXp+2Wnx2rz3FmXvDWEaqt1pNaRbKokDrGqq4QtH7c3FvKJp/veO
         kFngx+hkuriHrYeVceUzIylvSfULX6T6vijun4VbZ9FsyBJvvSWSijHIrAyJWYhp/JY1
         1d7zxPJOSwqt4Kl0GQpEX0wnQFpJlsGA3LOPKMnUt0jBUKclyf0nJwsOXW2mlhOasfAs
         n4iqZcTrJkddkErjQMLWBV30urQ3D2zHYInXP/izGu1yVawiYhc9SLv45DpZlxF3I8Tx
         FThw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xDDUM7Ru0sp2NgNX4LnvTh6K/do9Sl/MEPBBEyYq5Cu/Zjo33
	xW6kFgdgzE663cjBXoKXT9c=
X-Google-Smtp-Source: ABdhPJzp/m7ReVWgDvWwX+xzbfgR/6droOaj2pt7HOPK6/5iOmhULBgoL6hYyWn0ICAWy+hpTBaVNQ==
X-Received: by 2002:a25:7a04:: with SMTP id v4mr8925998ybc.261.1629266756842;
        Tue, 17 Aug 2021 23:05:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9307:: with SMTP id f7ls579890ybo.10.gmail; Tue, 17 Aug
 2021 23:05:56 -0700 (PDT)
X-Received: by 2002:a25:6ed4:: with SMTP id j203mr8598631ybc.429.1629266756331;
        Tue, 17 Aug 2021 23:05:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266756; cv=none;
        d=google.com; s=arc-20160816;
        b=O8ZX2Yqo8GKDKvu2XkYwGFW3veH79GHmwTWDgxpcOGEVzAsRFyhNuzYjHzKa0qfz4L
         SDYT/Td+6AuM1LWr5b4+F3rBq5xdgnzaGG382pCD6cARMVrx0rsTwmdoWQDrOYFpQTBL
         9g9ywLGVmVuLyzZa2yyA9jhdIakYjvJy4HX8slnlJa0YTb6Oy72jStCQBbKxucLtRNF/
         V1XPpYXD/v8ByBUsgJ3i+m+l1GrFf1Evwj1x6Dc5qCXM4O/zoUvZZ8n4CnoWu21vrfuF
         +k969aSbhwND2TOGthi4jJQWzbkcIriQHauxq69hj7yeTwdlDqKDsK4xsiOlrEmsclkm
         OTjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gUjXHriNI60ZMiX98O41J0RBUaJAOzuxCN136yOtJx8=;
        b=xz/2bJNtLu+h7X4zYlfiPIQ0+5NHN6SqNCZiEETA6QC1xZ2szBvuYryKCXKZu4lGbl
         xE5jhVo9BkmElYbM7ldLQPAZ9CkvH6mhk4D/1O+7k/xy8Fpw38WWCnbDju1r49RGdh1G
         m0aUkrFZww7Ro4w64oAMolo8HQjroTT0XM66Swh2L+v+wnKU7cffuCZZrVefe40YtqQM
         UvoTMMQ5Yr7HI92wlZ9/SeZwBiJXipniUGUUPf5lQRs410CVQ+520ncSDCo3CIFUyamC
         TQTwrWIIOe4xIXwr0qzH7zfP18l4amEbQ7ea2QIf06JCLAfMJxRVsIrcdr9QxRh0gmzR
         i2qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PFR7uYpP;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id d10si291699ybq.1.2021.08.17.23.05.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:05:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id nt11so1954892pjb.2
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:05:56 -0700 (PDT)
X-Received: by 2002:a17:90b:11c2:: with SMTP id gv2mr3328920pjb.227.1629266755654;
        Tue, 17 Aug 2021 23:05:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p34sm4534140pfh.172.2021.08.17.23.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:53 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Michael Chan <michael.chan@broadcom.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 08/63] bnxt_en: Use struct_group_attr() for memcpy() region
Date: Tue, 17 Aug 2021 23:04:38 -0700
Message-Id: <20210818060533.3569517-9-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2801; h=from:subject; bh=TrncHbsmiWtnPjfAh2YkxN9s4bIlTDfFJMFZjUYKPP8=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMfghAlM5KHg2hODEFSil5MEnhHr6UFtvkVIcLZ UTb+yCiJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjHwAKCRCJcvTf3G3AJrOJD/ 9hJH7jjz6tTkXVy3qRA527RgZiJeLECLzI6DoacBsPBfgyoKgz38PgicK9SwNgGvknQLWXJVluWAP3 E6rfbFiFlaM+Ah7i9TxwUplp60bQ8YQ6iLUK1jH7hES5/9GBkUaUVkVD3QjkV+GFMjzQAoawZjdUpr bE2gauE7tXilXaSUlWcyJfI07eT+K1XAEXoEY25zZpgxMGLL9yt/EbtvJcI+IrQuzSk/npjqhtQ2T3 d1nN9lTpRoS2zYNWrlVJJwNxvF1D1OBofuImaHDiDSNHXNKeThXLcbj1UYQqw/Ysgyk3p6pUd21lZB EuXd1zc9Yz9IEs6aPE6YEdm0AdAKR4pu8NCfI2LOYoDFMavYA+UDx+3rb/38ISxKIokoPZG0aHpP4c ezu4gtgECYTqz+PxbA2YWRttoBtOT9wi+rXSXOrtuHdJ9I1SuKBFQ8dMZXVFk0b2j6eA/u33kPuF+X I7KNJW1I+qU7lmi4iGjzDA1ALhfCCbWN78KpBUzwnIJbehj6BXZr2B04FaSAWa5Qe1BlLaaCW2szcx ScEByKBugc990sVUSUI2bY2JLlU8S6kgDfe8tUa7onXMNbGcnY2eexNnUsFBVySVYvcIQmVaSDF/u/ corCu6p0SQZQCPWdEE3UyQoxqtTSfoiIghXXJkxUfXrbaG5HgaIbs8lXLpJA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=PFR7uYpP;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033
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
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Use struct_group() around members queue_id, min_bw, max_bw, tsa, pri_lvl,
and bw_weight so they can be referenced together. This will allow memcpy()
and sizeof() to more easily reason about sizes, improve readability,
and avoid future warnings about writing beyond the end of queue_id.

"pahole" shows no size nor member offset changes to struct bnxt_cos2bw_cfg.
"objdump -d" shows no meaningful object code changes (i.e. only source
line number induced differences and optimizations).

Cc: Michael Chan <michael.chan@broadcom.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Michael Chan <michael.chan@broadcom.com>
Link: https://lore.kernel.org/lkml/CACKFLinDc6Y+P8eZ=450yA1nMC7swTURLtcdyiNR=9J6dfFyBg@mail.gmail.com
Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Link: https://lore.kernel.org/lkml/20210728044517.GE35706@embeddedor
---
 drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c |  4 ++--
 drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h | 14 ++++++++------
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c
index 8a68df4d9e59..95c636f89329 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c
@@ -148,10 +148,10 @@ static int bnxt_hwrm_queue_cos2bw_qcfg(struct bnxt *bp, struct ieee_ets *ets)
 	}
 
 	data = &resp->queue_id0 + offsetof(struct bnxt_cos2bw_cfg, queue_id);
-	for (i = 0; i < bp->max_tc; i++, data += sizeof(cos2bw) - 4) {
+	for (i = 0; i < bp->max_tc; i++, data += sizeof(cos2bw.cfg)) {
 		int tc;
 
-		memcpy(&cos2bw.queue_id, data, sizeof(cos2bw) - 4);
+		memcpy(&cos2bw.cfg, data, sizeof(cos2bw.cfg));
 		if (i == 0)
 			cos2bw.queue_id = resp->queue_id0;
 
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h b/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h
index 6eed231de565..716742522161 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h
@@ -23,13 +23,15 @@ struct bnxt_dcb {
 
 struct bnxt_cos2bw_cfg {
 	u8			pad[3];
-	u8			queue_id;
-	__le32			min_bw;
-	__le32			max_bw;
+	struct_group_attr(cfg, __packed,
+		u8		queue_id;
+		__le32		min_bw;
+		__le32		max_bw;
 #define BW_VALUE_UNIT_PERCENT1_100		(0x1UL << 29)
-	u8			tsa;
-	u8			pri_lvl;
-	u8			bw_weight;
+		u8		tsa;
+		u8		pri_lvl;
+		u8		bw_weight;
+	);
 	u8			unused;
 };
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-9-keescook%40chromium.org.
