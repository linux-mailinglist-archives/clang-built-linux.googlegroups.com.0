Return-Path: <clang-built-linux+bncBAABB3FL6CAAMGQEGBB6X2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CC930F696
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 16:42:37 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id 9sf991441uas.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 07:42:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612453357; cv=pass;
        d=google.com; s=arc-20160816;
        b=vrCVqRlVHfvD/13eqBug9tDUin38QvZ1y+hLLE8XTbSnedlgeEo4N1U8h9gHm7RsZi
         t9lQTEp+fAerWLfXLQJv6by0PHk4m6JVzKhacO9wiLWhE7Va8TCyCbLrnnrJRfqzx8Zn
         Q+vAWGugzN4ZxwpEsUB5fxPGT3x8qqha9SwFDfGQ4W6yzqdbwlP0ZJFuiNohdrmzz7he
         C/bkhZydKqgmnMazwjaLc5pM46tyHtS1dQtVxbEqSaLV8AF5Nuew38GnkoLI/mN/mEYD
         m/str227dJ/lgW1AkJ1Arct53vJ7EI+6sDbf+cH6KuCmjk1iD0/azKi912RYkaJXPyzI
         9JPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=BHj3R1lWr7VW5rcBY+FiT9NaKHYqkL2pQd8SX+XRgL4=;
        b=Cu1oqmPy6zSRJQdbYE9u4ShUK9NmR3nR6OqVXaDPP3EYrCjRoWx/FLhVkgK0eUzFmC
         P1VR5RFPONINujxXzGVGBf6+MsoDDgYMTsqvoXzJyVBZg46+s8Fubgm9G97eaMvE6X3L
         TN7Hv5WYLPKVKYJmyM+YgK3Ib/rllSZwW3SloIv/GRf7d4wsSPw1fNKoM6FxKI/VkhYB
         36m1aMqekWYUhZKxqz/wAsApeEB/aDTemGLg+EoxUjFGZQN0vDsBmNLDsiUtPPsM1Jqw
         QD7Gw1JdsfEuGaiiiNAMVSFqQ6M081KscgRft4gVoNS1IZv16zM88LKNsCxoSiUds2pm
         Jsww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VASP5nnE;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BHj3R1lWr7VW5rcBY+FiT9NaKHYqkL2pQd8SX+XRgL4=;
        b=k61Yuqjs/XxpVpfb9J5NrjGgM1qSXTB9DMur7p4xte3fVFZqgXOyvEpBc6DanefL7F
         wPEtu50+X4iTQwZOpWWVk4r1TACoYKMNlQEQ695tHXhcNcqwDVahkL8n518tUjOKeEMm
         OKQSY3JWyKK6hjLzBwp5CGv+xxw7MRkKwdmB3KW3isrUWHQl9rgYhKouwYqbGoSUIzkw
         qiML6xhJ8TJ9lOz/B4c5IsbLjjo9hNbyofceOVcCeG7ktnlRKktCGl18NQUMSFduvXc3
         e6GzA0oJD3RzogTzrvBfGHE203OBftn5V9steM4mYCjuTmEFGe6Q2kS8fF1zqxO08U31
         EMKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BHj3R1lWr7VW5rcBY+FiT9NaKHYqkL2pQd8SX+XRgL4=;
        b=b1QiMNG42+zDZgpeq3nOPx26HPrlyESeE6UvtXkM8CWl1N1IOwuWb/iOuBKVq9c/tq
         JsfbbLNAw11Phqhgq2g0UOW0JdkTnXVoejEPb1mK7oBhAC9mY9vCz4Zgx3zAuCAxDFVn
         s/E8JUN1eGMv/Mefb7wVLH2+NyCL3Sd+UrjzfX+Fvy4wfnuvQLiwhS06EPhJRLtOiSRp
         cNlISyXgUdof0eAIQFapSgN6yC/FzkvtLqEo43jBk02KrF4l0FdvoobCrXr962bFxYpm
         b2RFOpzYpf4mrP5JyQ2o+NrxPKWaH8Rl2VLaU6bd8rYfnE1eb5F843R7nXIKF6N95S4G
         U98A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MpyX5WsseWAGVLG6/N4zp0U6f5zhk0PS8S43jh3wyLzNnQkLd
	foWf/+DZnVLZT8TUYdJnBrw=
X-Google-Smtp-Source: ABdhPJwLmEQeGP5eH7ARbJrGoyoelihrJDfuufJuVE+9yVisUxlLx+cXXhYXFMqkOg0TecegJ0EAFA==
X-Received: by 2002:a67:fe4a:: with SMTP id m10mr5351544vsr.18.1612453357043;
        Thu, 04 Feb 2021 07:42:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:b409:: with SMTP id d9ls342558vkf.9.gmail; Thu, 04 Feb
 2021 07:42:36 -0800 (PST)
X-Received: by 2002:a1f:9187:: with SMTP id t129mr42513vkd.12.1612453356704;
        Thu, 04 Feb 2021 07:42:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612453356; cv=none;
        d=google.com; s=arc-20160816;
        b=j2cwVd1w+ZLXydokq9TXiQ0JYRlffF5obw65JotV5RBz4e8H3OcyqOz1uYbQnKvG2F
         uPyV3m+Ix5BdnC+AOR2VP24wIkyJfPP8oOxOSzENor4B9mIcdjVLzzGNWKI9hSDOx5Kz
         EZM/eAEOOAcsor9MUi0mPUffpPjM6TjYz3kxiMypbAal9q6IBtk5iXUy+MLRsdDRuH26
         dk6BW7VZGDVzyUJ41XE/YvtQtMp3zyuoPncWjuHa++7bZnMLiwsJ4UHYV+mG76YcNBnp
         01Wen/i2OY6dDIhua+3W2OkPMG5cf+OKLburgMKwTvJrXh/ST5MWB1d8mb4vL2qa9wjz
         ySBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=imT2ksGyGYUSbKECxziM0t8x5y+NReTFaDBpHMDGVSk=;
        b=cKH0WQouDELL6AWGYxjfc+Kib9ZlBcmeqJ3E1EJD4reuMWb1aPKpC2OOIzfexa6mhy
         hg7OMgFBCdMJtacI03ezO24k+oPTGwsZVinLeiaZGIV1qbQD34cw90lP3He+S4uh+BDt
         hGXs+ess/PqjzQBe8qSCM9bGaOOOBT/uvEzkENYK+cuEK+jAx5vz0FNjAP6h3/mJQ8BA
         EAm2ywORLojwj2E2eKYa+PtNDzFacd18jisVi9cuNXwiRmfEs4olFI3DYp2W2aLiFlaK
         CDAZWPbgztG87gGFKIYA8ycb3P6ontSYhPPb2Lo3D7L34AImrBZ+c7LpI6wIvXdwvH+9
         7LDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VASP5nnE;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h123si295476vkg.0.2021.02.04.07.42.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 07:42:36 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 671D664F4D;
	Thu,  4 Feb 2021 15:42:33 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Boris Brezillon <bbrezillon@kernel.org>,
	Arnaud Ebalard <arno@natisbad.org>,
	Srujana Challa <schalla@marvell.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Suheil Chandran <schandran@marvell.com>,
	Lukasz Bartosik <lbartosik@marvell.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 1/2] crypto: octeontx2 - fix -Wpointer-bool-conversion warning
Date: Thu,  4 Feb 2021 16:42:15 +0100
Message-Id: <20210204154230.1702563-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VASP5nnE;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

From: Arnd Bergmann <arnd@arndb.de>

When CONFIG_CPUMASK_OFFSTACK is disabled, clang reports a warning
about a bogus condition:

drivers/crypto/marvell/octeontx2/otx2_cptlf.c:334:21: error: address of array 'lfs->lf[slot].affinity_mask' will always evaluate to 'true' [-Werror,-Wpointer-bool-conversion]
                if (lfs->lf[slot].affinity_mask)
                ~~  ~~~~~~~~~~~~~~^~~~~~~~~~~~~

In this configuration, the free_cpumask_var() function does nothing,
so the condition could be skipped.

When the option is enabled, there is no warning, but the check
is also redundant because free_cpumask_var() falls back to kfree(),
which is documented as ignoring NULL pointers.

Remove the check to avoid the warning.

Fixes: 64506017030d ("crypto: octeontx2 - add LF framework")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/crypto/marvell/octeontx2/otx2_cptlf.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/crypto/marvell/octeontx2/otx2_cptlf.c b/drivers/crypto/marvell/octeontx2/otx2_cptlf.c
index e27ea8909368..823a4571fd67 100644
--- a/drivers/crypto/marvell/octeontx2/otx2_cptlf.c
+++ b/drivers/crypto/marvell/octeontx2/otx2_cptlf.c
@@ -331,8 +331,7 @@ void otx2_cptlf_free_irqs_affinity(struct otx2_cptlfs_info *lfs)
 			irq_set_affinity_hint(pci_irq_vector(lfs->pdev,
 					      lfs->lf[slot].msix_offset +
 					      offs), NULL);
-		if (lfs->lf[slot].affinity_mask)
-			free_cpumask_var(lfs->lf[slot].affinity_mask);
+		free_cpumask_var(lfs->lf[slot].affinity_mask);
 	}
 }
 
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204154230.1702563-1-arnd%40kernel.org.
