Return-Path: <clang-built-linux+bncBDU5DXUG4MFRB7OXV6CAMGQEJL7MOGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D19C36F96A
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 13:37:33 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id t7-20020a1cc3070000b029014131bbe82esf756595wmf.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 04:37:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619782653; cv=pass;
        d=google.com; s=arc-20160816;
        b=M0epo8e4dBqxL8na5VEP2JdLp6/X3F0RlgWyYDhyoFJ7RGLL0VlDkPIq9ZjXmrcB9f
         n3g34t5oSc/PlpcGVcEGcRtU/FnaqcVsIR6Tpg4uA1SQG7/ImnGEkNtCjwTiuNiJD6mj
         tF8J7coot2RI9OiB71Vl/YjXcH6iCOduqSab6wg/41VZ0811Nh6vkXjeybZvfV8NWS0N
         NXkbNUZdnOvGahOLzLR5xQ6PnWz/11F6l2G45kElALfry12df/YShcHnaAkVWbLNCKhR
         llfIRmhnLl2yJd0OWn2izDJ6p9hXiQXdsW3EBVHRfoTAll3koJ05vGDc1ZnAPqWRLn/7
         tJ9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=h0usKRUflxzD42vrk6/X6H0k6PUhWXz7QnsTN82RT58=;
        b=pPCEM3TQ9U+2KNtIWuOFFWo08KlZss93pj3Q8BJvOHarr2IlYIyl0+TkiSZNV9I+1N
         moSyo8rdKjERd1g1SeAKs1fjpPXtigEQ+nEdPmtKPJxDZZLFXZyP3FzGpKO9tocpEuso
         dkhtO8jIiFfrDZI+G71pbjYVzUMnfSvakTGPgcbO/dcx/tsWhOY3c9RmyjlYT1HJKqfL
         yeIMSGNTw4AKkkBjek5nlkweoXSAMPKrRX7EEDiXLxdpys480/rlzwIq2eM0y/RyWphR
         Z6XZM9H/eyXnweZsWBqqD5H4Hopt0KT5umHYZ8gPR9AWjAe3dG12LYvah8eF6YBrRj0B
         BZmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h0usKRUflxzD42vrk6/X6H0k6PUhWXz7QnsTN82RT58=;
        b=tK3DnuOHStUMLb5yp3oYXjQYw/EtmHHuta8gNNuePu8xPE/nh6TJ1GhxlvFbbCUicp
         2qTlGrsbB3Sq1x0w91O9beyqtCk6Ls2E+QJT+FJ3BTkfQMowQ0IctxF43xCUNBc2JMFB
         pjBv6OgZ4zPnfz5Qvy7zcS49RceEnX/+/HiiVDJxw5csjvukkNE6q5yqOEAIz216jpsA
         oi6c+1SP3F8YaTvqUQUH6YlPvojYssMad2rFEh/8LogAX3jjGwJfcAd/7zp18iSN8kYz
         7dvp7fzDUcwqQmLJprPvhQVbWoJlKHh+JCfYEnIWvzYyknOPmHYAiKIgqiIr7WYA+jea
         qJwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h0usKRUflxzD42vrk6/X6H0k6PUhWXz7QnsTN82RT58=;
        b=nSrcpVo7PLjlM5paw6lvOoBxuzZXD+6tet4I5Wwbo6u3VLwNJQkl2RuWQwa89kjQ13
         p+p8z70zC2IiIKjLANyVqTtHYBZYxZ5eNiOq02eIbLzBirLWSJ5KaUVNQ7aSN+MtXPs8
         wMki6YX5igsT/PhpsrS9Xpo3QBb89KtSULVgKnGXebw77Aed/rRaERoKsKoWlnxjr2GM
         S2YFfjPbDBm+wwARXOAB4s+pc8X9sQbP0w31F/qrjTOwFomaY2292yMJ0zE3t7wE3lQo
         XInM4DbKDScfiTijPJrjyAaRQvMlWnPctmgLVRBQQHgH30+sGFAa39gdMvHrs8iJFBgH
         LOjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531c7ClO9s8j9S572rssjOwaM8MbYRMQYn+GRQf0GAOQgju2drYi
	mNcqe602ShoJMMtVskCKEOU=
X-Google-Smtp-Source: ABdhPJww0fZ5kzCripYcev87ojEaF6OW0NyhDMNalYSbTDT8bXLiARFhfSa8RGymeHtL/PChTLsU2Q==
X-Received: by 2002:a5d:64e1:: with SMTP id g1mr6243622wri.101.1619782653361;
        Fri, 30 Apr 2021 04:37:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4f16:: with SMTP id l22ls5457446wmq.3.canary-gmail;
 Fri, 30 Apr 2021 04:37:32 -0700 (PDT)
X-Received: by 2002:a1c:e345:: with SMTP id a66mr16054078wmh.109.1619782652437;
        Fri, 30 Apr 2021 04:37:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619782652; cv=none;
        d=google.com; s=arc-20160816;
        b=iSVas4ImU2xGxeLteFE8p8YGDcuJA2PF5TliwatXr04lc7ZGSq9e9RutzE3APMGbDx
         pKf+xY6IGg1maqzNVQ4dDT9CuI38Jz7qEk7jGMs+aFjTVzq+/csQEoDwiS2bGkF+LNdv
         7xELc/9Hcrqo7nbaHIwTnOKkvNlHu2fdyPq7w/jAW4oUXD2dKutK1d2G3seLzjuBgN3E
         NFBkxvuFkkKHQOLH0b1XXGB3Ft5RbyKYpoqVidHialdSaOXZiVXt8+BNo9OWykxRChZS
         zuGxmItLAxLYd84IB6HVPyZn3S72ITPXHkNYGl5yGLNqU1VpNbkNgGJMISGoi411Sydz
         lYSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=CBrMhM+tYL6PPkdgNKhJ5ajYsh2J3zqQHrs63OvYQg8=;
        b=ruC9qi/3Ut3holaENV3G6re67ru5IJWDEEYY8tZrXb3pMAiPnSlHgIpiienonRf87g
         X10UGcFdGzTho3DdrKNZHaq7Nkx3t9VajDdSPDpHkL7O4A/+xEFcLcHE+mxOWlthrWjw
         FH72hvV1d5b9yT5jmetyTSgm7IZ87aBMpfVl8XQEqhBm913q22gSmtxtJofA7NXn3KMv
         aYA4qVfA2ftitqKiBi4rADkumM00Cqja6BCn4rHIMSqEi6AcvjnIgBzBfA6BR1l11eZT
         4Nk7h4dWnWmm5Ao/faihMpwj/w0wBOXCPPKFBqHw3WW+HmXvQtm17xUeAihq9H8bws5e
         0T7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id 5si378444wrj.4.2021.04.30.04.37.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Apr 2021 04:37:32 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
	by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.86_2)
	(envelope-from <colin.king@canonical.com>)
	id 1lcRSW-0004rU-TC; Fri, 30 Apr 2021 11:37:24 +0000
From: Colin King <colin.king@canonical.com>
To: James Bottomley <jejb@linux.ibm.com>,
	Jarkko Sakkinen <jarkko@kernel.org>,
	Mimi Zohar <zohar@linux.ibm.com>,
	David Howells <dhowells@redhat.com>,
	James Morris <jmorris@namei.org>,
	"Serge E . Hallyn" <serge@hallyn.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-integrity@vger.kernel.org,
	keyrings@vger.kernel.org,
	linux-security-module@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: kernel-janitors@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] KEYS: trusted: Fix memory leak on object td
Date: Fri, 30 Apr 2021 12:37:24 +0100
Message-Id: <20210430113724.110746-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: colin.king@canonical.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of colin.king@canonical.com
 designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

From: Colin Ian King <colin.king@canonical.com>

Two error return paths are neglecting to free allocated object td,
causing a memory leak. Fix this by returning via the error return
path that securely kfree's td.

Fixes clang scan-build warning:
security/keys/trusted-keys/trusted_tpm1.c:496:10: warning: Potential
memory leak [unix.Malloc]

Fixes: 5df16caada3f ("KEYS: trusted: Fix incorrect handling of tpm_get_random()")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 security/keys/trusted-keys/trusted_tpm1.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/security/keys/trusted-keys/trusted_tpm1.c b/security/keys/trusted-keys/trusted_tpm1.c
index 469394550801..aa108bea6739 100644
--- a/security/keys/trusted-keys/trusted_tpm1.c
+++ b/security/keys/trusted-keys/trusted_tpm1.c
@@ -493,10 +493,12 @@ static int tpm_seal(struct tpm_buf *tb, uint16_t keytype,
 
 	ret = tpm_get_random(chip, td->nonceodd, TPM_NONCE_SIZE);
 	if (ret < 0)
-		return ret;
+		goto out;
 
-	if (ret != TPM_NONCE_SIZE)
-		return -EIO;
+	if (ret != TPM_NONCE_SIZE) {
+		ret = -EIO;
+		goto out;
+	}
 
 	ordinal = htonl(TPM_ORD_SEAL);
 	datsize = htonl(datalen);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210430113724.110746-1-colin.king%40canonical.com.
