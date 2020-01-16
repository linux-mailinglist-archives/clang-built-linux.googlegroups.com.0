Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB4FRQLYQKGQE6ZL2HLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3FA13E4AD
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:10:09 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id u10sf2281792pjy.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:10:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194608; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ow62BzW3gOUAFbIQnhi+r+etSFxWzEiKpxVe7BxiuPW4qELxayZyvbE0Tol65XmQax
         ahRj9M86bp/SbFMObYirjlRTVEjyT9n3ijGmdnvNhedzTFaylEnFwC4g5+f4vEGYU8if
         JpNqRNXzlKQ0h1j8I5EtPsKOFzFmx8muCnCLmxsbyPPLG6O8tN4CUieXO1kBXlTl1JIl
         GQp7ZZBRGlyggNySbQMZjMwWHhxjlprRFbsCob2mbuuIWoKoR0j/3lC0yuMVdFXHoArQ
         +VFVua+N88jxrJyBIh6f3hwzTxZZSbZ+J9Y4Iw3qwmpCT64+Rr/sb17j7CbKoR/XCkfh
         zo9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QpGMqANy60aEOyjNctlCDR2XIHGeOi5ey/OwXWCYKiE=;
        b=VGq4W9kiTqNGZzsy0r0JBCL1SSITqHKiZoA5IDg25y5JCfq9k6OCjQjsr9q7+1eaBM
         Iq+rE0IrvXOAtU+ns3xlJGC2g6ZSBYmXHaVKhjGEfjEHcQQGNN0vUiEk5meec0kStSQI
         PpR241G3pbYy/qET6l/pvjTwhuQUXLV75c65dGpRG69l8NTK4hAl4sm0l/ST+eN/8hmF
         h20HQ5xCBB99QH7kkBYBfcTVv06pkUz+bh4XiIcF84cCkNMWnfFti2zg3JmR0GpSD83H
         M1EdEId1dH7ZP8aoLaZZS7gSRNjma1HINS46GJKt5053IuSqDy2ipZIDNfWbAx6p/uTU
         XUyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HwkOcHM5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QpGMqANy60aEOyjNctlCDR2XIHGeOi5ey/OwXWCYKiE=;
        b=iPxzoxYsb7gJJ8BZiWwn715j5lsTKTlI5HOEBxYbg5ehoFGMF0ERHr+Yq3zcKq3dAD
         PmNR42cTCeQt1N6dpGXBGcJSqHkDmkvqv1cO6sWPKBJO/5WtjzPJ+orkVg31OAn7MAw6
         Y3Y/j6nVuS3oHfPm/1TYyHYKXJT+1jGVynhaO820C/QcDID9pGx3BqkvZWV0cwRylcI2
         rP+IDoKzhzP+jUpKBrpnF56x5z87HF7WFMAb9jAZbz1ZoMW0NTCRILPSIyvHSiARVtLb
         oZ9g/4NeUoYq8JhszWX/cxz/ipReGddXCOHePD3gpprdm1ztGSO9WyZxMrreH9DH5T0+
         m/Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QpGMqANy60aEOyjNctlCDR2XIHGeOi5ey/OwXWCYKiE=;
        b=ZR7sGOGZk18oQPZAevnC5iS4b4R3mI5eFd15ApsXduix9hA0V9R82c+vAESmgGjrfH
         Ik+BLjqkmplsM1Q2eU8lzfoJaGBAlojevyvxEzOT4vHhPzdniaxLxV4aVACN0FS+iQ/D
         ucS4tFpxm7HozMEMmspNRb4gbL7lyULcyHNgH935LmT6/dQaYvdSWQkxqxqL6zeSMxpZ
         vTNsa0CSI1lrceh08KHK4b3jnvH7BcbqHqfkNUq3ZzlnzTuGn26iRPaoKCgukV7939c4
         8sQp0SG0mZRR17hSIhTSC8/KmMQWKlc3QxXimeU3duZJ/D9Lno2XYsBAoqjnG9y3HDp3
         FJbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVfP6XnTaSbATGeBSmzHmOV19rDc30mk8W+yJPLDTsSUxNxHhH3
	pVL4XdouQIwqP4j+jwydFUc=
X-Google-Smtp-Source: APXvYqwxNo8CctY2sLxhOnmwuQhtHIPwsEYTp7y/zK71P18K/rdZ5LPIaqfCBbjEFIKBXXneRqEc3g==
X-Received: by 2002:a63:4f05:: with SMTP id d5mr39514139pgb.341.1579194608555;
        Thu, 16 Jan 2020 09:10:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d007:: with SMTP id z7ls6115608pgf.9.gmail; Thu, 16 Jan
 2020 09:10:08 -0800 (PST)
X-Received: by 2002:a63:b64a:: with SMTP id v10mr41448905pgt.145.1579194608147;
        Thu, 16 Jan 2020 09:10:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194608; cv=none;
        d=google.com; s=arc-20160816;
        b=n8qo4PerBTnT8lCo6WtCm3kVcUM5FZiP6ic4xtxuzaNkgi4d2ZZRuHeyofdDwDmdXD
         Ei+yyYSAR/SQeL3/2E7dhoJyFfa28SBzV2aFY9vq2t3OORVGy5coFpARmgdrl7TYfP73
         JxrqY8Z+iW2f7XuofdKShQQfaw0FbtMBnmwm8tUwO3RWePJTk66FpkgST/QCX2cgaTdk
         KcfHSQfCXV5diCMRjLY2ulkeGeLvbiqHX/SbYKiD/1Ua2jzdvRra3JZCPyBAzonbDXN4
         4pXZRKvTfZN5Hd8DjwJyU/E1YttQFRCufjzg8fPAQKb2aUva3SoL/8dJT5tlJxTsjC9N
         kl+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rAWEeOxHQ9jiwuGpyW3MTuoVN8XOtXz90B8hmgMLOZY=;
        b=Nc2+PVT5aQ9JPoKXkVvlCMdSiUQcfrjyFHfAuwiINzQ/zu5DVM1TOpFU9znmUvnEIK
         LAWaFk46VzYHV5e9OhmJFz0JM5HaUN9pxOAE7Ja8FS4bXy0RO7v04hKc6+g7ySHIlD4T
         E2WlnQaVH04hdGDMn3jMmGHJf4xouJC9W9RhdXdjO2bZ7vLGZa8BPa+l6VRVeL5A1DyH
         wNwBwHSjAd/C8iJMawF65ajvQq1M+XI6rXoRc/yQr2TlkXiuYxmxKvcnJD0AqJuLiZVC
         4OJqPOrBYYdfL3OBqbiiaiLN+P7muOs/gv1BRk7F2tnu8VFUHKXagjM99Uw/jn5E4n2b
         WbNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HwkOcHM5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d12si469172pjv.0.2020.01.16.09.10.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:10:08 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0B92724689;
	Thu, 16 Jan 2020 17:10:06 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 474/671] crypto: ccp - Reduce maximum stack usage
Date: Thu, 16 Jan 2020 12:01:52 -0500
Message-Id: <20200116170509.12787-211-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HwkOcHM5;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 72c8117adfced37df101c8c0b3f363e0906f83f0 ]

Each of the operations in ccp_run_cmd() needs several hundred
bytes of kernel stack. Depending on the inlining, these may
need separate stack slots that add up to more than the warning
limit, as shown in this clang based build:

drivers/crypto/ccp/ccp-ops.c:871:12: error: stack frame size of 1164 bytes in function 'ccp_run_aes_cmd' [-Werror,-Wframe-larger-than=]
static int ccp_run_aes_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)

The problem may also happen when there is no warning, e.g. in the
ccp_run_cmd()->ccp_run_aes_cmd()->ccp_run_aes_gcm_cmd() call chain with
over 2000 bytes.

Mark each individual function as 'noinline_for_stack' to prevent
this from happening, and move the calls to the two special cases for aes
into the top-level function. This will keep the actual combined stack
usage to the mimimum: 828 bytes for ccp_run_aes_gcm_cmd() and
at most 524 bytes for each of the other cases.

Fixes: 63b945091a07 ("crypto: ccp - CCP device driver and interface support")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/ccp/ccp-ops.c | 52 +++++++++++++++++++++---------------
 1 file changed, 31 insertions(+), 21 deletions(-)

diff --git a/drivers/crypto/ccp/ccp-ops.c b/drivers/crypto/ccp/ccp-ops.c
index 4b48b8523a40..330853a2702f 100644
--- a/drivers/crypto/ccp/ccp-ops.c
+++ b/drivers/crypto/ccp/ccp-ops.c
@@ -458,8 +458,8 @@ static int ccp_copy_from_sb(struct ccp_cmd_queue *cmd_q,
 	return ccp_copy_to_from_sb(cmd_q, wa, jobid, sb, byte_swap, true);
 }
 
-static int ccp_run_aes_cmac_cmd(struct ccp_cmd_queue *cmd_q,
-				struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_aes_cmac_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_aes_engine *aes = &cmd->u.aes;
 	struct ccp_dm_workarea key, ctx;
@@ -614,8 +614,8 @@ static int ccp_run_aes_cmac_cmd(struct ccp_cmd_queue *cmd_q,
 	return ret;
 }
 
-static int ccp_run_aes_gcm_cmd(struct ccp_cmd_queue *cmd_q,
-			       struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_aes_gcm_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_aes_engine *aes = &cmd->u.aes;
 	struct ccp_dm_workarea key, ctx, final_wa, tag;
@@ -897,7 +897,8 @@ static int ccp_run_aes_gcm_cmd(struct ccp_cmd_queue *cmd_q,
 	return ret;
 }
 
-static int ccp_run_aes_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_aes_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_aes_engine *aes = &cmd->u.aes;
 	struct ccp_dm_workarea key, ctx;
@@ -907,12 +908,6 @@ static int ccp_run_aes_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 	bool in_place = false;
 	int ret;
 
-	if (aes->mode == CCP_AES_MODE_CMAC)
-		return ccp_run_aes_cmac_cmd(cmd_q, cmd);
-
-	if (aes->mode == CCP_AES_MODE_GCM)
-		return ccp_run_aes_gcm_cmd(cmd_q, cmd);
-
 	if (!((aes->key_len == AES_KEYSIZE_128) ||
 	      (aes->key_len == AES_KEYSIZE_192) ||
 	      (aes->key_len == AES_KEYSIZE_256)))
@@ -1080,8 +1075,8 @@ static int ccp_run_aes_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 	return ret;
 }
 
-static int ccp_run_xts_aes_cmd(struct ccp_cmd_queue *cmd_q,
-			       struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_xts_aes_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_xts_aes_engine *xts = &cmd->u.xts;
 	struct ccp_dm_workarea key, ctx;
@@ -1280,7 +1275,8 @@ static int ccp_run_xts_aes_cmd(struct ccp_cmd_queue *cmd_q,
 	return ret;
 }
 
-static int ccp_run_des3_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_des3_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_des3_engine *des3 = &cmd->u.des3;
 
@@ -1476,7 +1472,8 @@ static int ccp_run_des3_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 	return ret;
 }
 
-static int ccp_run_sha_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_sha_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_sha_engine *sha = &cmd->u.sha;
 	struct ccp_dm_workarea ctx;
@@ -1820,7 +1817,8 @@ static int ccp_run_sha_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 	return ret;
 }
 
-static int ccp_run_rsa_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_rsa_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_rsa_engine *rsa = &cmd->u.rsa;
 	struct ccp_dm_workarea exp, src, dst;
@@ -1951,8 +1949,8 @@ static int ccp_run_rsa_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 	return ret;
 }
 
-static int ccp_run_passthru_cmd(struct ccp_cmd_queue *cmd_q,
-				struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_passthru_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_passthru_engine *pt = &cmd->u.passthru;
 	struct ccp_dm_workarea mask;
@@ -2083,7 +2081,8 @@ static int ccp_run_passthru_cmd(struct ccp_cmd_queue *cmd_q,
 	return ret;
 }
 
-static int ccp_run_passthru_nomap_cmd(struct ccp_cmd_queue *cmd_q,
+static noinline_for_stack int
+ccp_run_passthru_nomap_cmd(struct ccp_cmd_queue *cmd_q,
 				      struct ccp_cmd *cmd)
 {
 	struct ccp_passthru_nomap_engine *pt = &cmd->u.passthru_nomap;
@@ -2424,7 +2423,8 @@ static int ccp_run_ecc_pm_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 	return ret;
 }
 
-static int ccp_run_ecc_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
+static noinline_for_stack int
+ccp_run_ecc_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 {
 	struct ccp_ecc_engine *ecc = &cmd->u.ecc;
 
@@ -2461,7 +2461,17 @@ int ccp_run_cmd(struct ccp_cmd_queue *cmd_q, struct ccp_cmd *cmd)
 
 	switch (cmd->engine) {
 	case CCP_ENGINE_AES:
-		ret = ccp_run_aes_cmd(cmd_q, cmd);
+		switch (cmd->u.aes.mode) {
+		case CCP_AES_MODE_CMAC:
+			ret = ccp_run_aes_cmac_cmd(cmd_q, cmd);
+			break;
+		case CCP_AES_MODE_GCM:
+			ret = ccp_run_aes_gcm_cmd(cmd_q, cmd);
+			break;
+		default:
+			ret = ccp_run_aes_cmd(cmd_q, cmd);
+			break;
+		}
 		break;
 	case CCP_ENGINE_XTS_AES_128:
 		ret = ccp_run_xts_aes_cmd(cmd_q, cmd);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116170509.12787-211-sashal%40kernel.org.
