Return-Path: <clang-built-linux+bncBAABBV4L4KBAMGQEZMG3UPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 00949344038
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 12:56:09 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id v20sf39416719ile.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 04:56:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616414168; cv=pass;
        d=google.com; s=arc-20160816;
        b=dUS9iWASGrEyhq7Q3utwVtAKZhu0/XScUWIU3K6529D9mvSoSaufHsgzGFoScvrze0
         fHf1ERl9MVKwlTxCVO+ylP2+OP/Fvt2TYjnPUOkq6uNDGesi0PhMsiVcMM/BjGoQsaM+
         J3Xj06sPdhsnWDcYUzrHvP0yANhmRM894GDBQ3LY9dFEPYtrb08kq6h6Jz4WtQ/RO8tH
         G7qH+LM7W3NgEixc+o2rA/ClWpyEDAgHiiwysxY90WyoWB+sUljWgYBAQ5e+6JstBHEY
         YJAnGKNmv6rrDnTm5CU1XVWpttD6+NDzMr2/aIZUJZfrar8Ahr/G8GW0mjihzLkKWB3C
         h2HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=QAZRVW9qiwfXCsGPx52uYuiO1QxfzjE59ublBg9L85M=;
        b=Y5F7zLfXhoCFREFmwYhtP1A+gP1mpnCoFhuvBVgVx0DgA0gPUObKSwH/IInv2GJOER
         3UqPVezusvdcLuCcK8Rii25yzY0WwSafm62Fc5euHUIYNgS16H7JHUTj78sTxqPk2gU+
         JoPxHSh81VTaYomVfrxwwnT+jpf6jIiTEp4KATgZPzwl/vl44GSlEe9X74bYSx5MOm24
         MAyx2Ioqcv9TjJRIwYvj5feZjDAXVIsj0eQZJtbhmA5a9z7sd3nY9jmoAbWNyfBDs3uQ
         U1KXnlj6PEm4D1VuhiXaMGpbemDI9gZ1lNnRW9roeUYyLZXTgZ47n7YNfNJ0UNzK+9tq
         RcYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HhEl8R7w;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QAZRVW9qiwfXCsGPx52uYuiO1QxfzjE59ublBg9L85M=;
        b=VHPV093TP67sscgGLt8sIuDr+JmM4ES544c8LA6NyS8FfUpzgOQw79d/qIb+qB4HcU
         PLUuIkT3VvcZlO9iKXx/hUahqvTC7UW6rBX7IkthyW31PcIC2RKKCHpokRj9kFttvl8v
         +rAglGaHy11Do7hhl+kMmrly1cJEnlHIKBBrAFj2kWpmnHegfRPg2Im7vGTmFoA4CoYs
         4tE2q4FwnjnHKWudwgh1W6SqX2VKn4jOZIojc3NRyN9IpWTAx8oKHKBOiwA73yHwGOGW
         +67/1mFH7TS25oPifwjrxZeG3c446mOJG47lL6+pjU81oh3KLcCzHRvU+PYvjuxEfxPs
         391w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QAZRVW9qiwfXCsGPx52uYuiO1QxfzjE59ublBg9L85M=;
        b=NJxW7zuF5vtJ5dVEjMek07gNXIUBuz74CKta9nyQZjqf26pJ37yZdXDDfTQHANHxAX
         5FbdmXdO50JBzCnvTpIgshJ04uKHN63mB9atyc2/nL/Ol/RdQElhcuLdK7jvhAx8X0bc
         DZQDZrs6/ApjKIkPKoR76WjdUny8wpkQ2m7BIscrtZYiZiH3kraB0vqQNnHa0KeS85IB
         TYNiLxtthsl1J4pUsv2uUGU3L73WTaAApa7ptbzUPLWEodbpbVb8c20X6X4vaB3Wu7+T
         hkD+2/ZVD4aELOftmcvQjC1PVR/Dfr6+Rl9P84jhuy4v8x67P2T1YO934j3UXgPMtWMW
         prGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531iFuab0RusZBPeAIC2rJkN5QpXUbspV9DNa7MMqaTDdqZKmQOS
	Y+JcKNe1/TwEBQpbIVBtGu4=
X-Google-Smtp-Source: ABdhPJwPBtM9yAdYDmhY4uZmCJU5PMvJftmPzLfoGVlnkMkkmHPaus2ZSnjWY/VX6dUakw2Lq4x4aQ==
X-Received: by 2002:a02:289:: with SMTP id 131mr10540143jau.99.1616414168041;
        Mon, 22 Mar 2021 04:56:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:2184:: with SMTP id j4ls604900ila.8.gmail; Mon, 22
 Mar 2021 04:56:07 -0700 (PDT)
X-Received: by 2002:a92:da90:: with SMTP id u16mr11292806iln.275.1616414167714;
        Mon, 22 Mar 2021 04:56:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616414167; cv=none;
        d=google.com; s=arc-20160816;
        b=BpksMV5+ywrpwSVpPLvHX3PGhzuwUAmj4gTJACQv8LxO13mh9Cv8qKnp9INu7xmW6J
         dpym77rrtY7VhUXbmbxyIN/EJoB9c+k4VAY/YWrkSCimUMJCqQL4+61Ys9YmXm8daSX0
         QXjHME0NyJO4uFoNhI6T+fErvtJwrWVLLF0uNjgVs//PQW7otQIrBAUidUcMNxiUMfry
         hqBejQCJIT6MeVscil2nbYaSNC+586i4RgAe0yP21fkOxif+yvX3OL4zKP3jJIUHl3Cd
         3meJ2kT3TqbbEwriIrzuvH4poOBcp+R5Ya2tnTjl55OFg7gTm9AbyZkBT1YTP7I3AKsM
         Qs1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=QwLCVXBEzBLAxYbiViTBKzfYDmQ3nnX7veqFFad06X0=;
        b=nO8xERJMjDAC/MJfOpP7E8IkBDSm+ZBIBj7a6IJmm7hEMVVkgAR8lBV9iPRHxyEwsP
         nJBMwYvfF9BrzbGsxPvqN6hXYba9F6QAxI0i+mUlsASZo1Yb96L/BubUm6TuT7Nta1Ns
         PfQBuMBPfEK1gMga9a41pgqCGuZ8ooeOP5B2TGWn/daOYYCy4PKdV5sfE3WqhBtGTssx
         9xHRRzkYAChBuEhpwdZhWmJVcTvRVywZzU3rqPx219XhnJuvX8u/0MkMNPXuS7I704eH
         gL53O3zJkjq0c4MbNT4bGO3/Uod4VnMoVhJAZ4TMjvTBKfg8WG+nst7ve/fc5BIXIdAu
         kr0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HhEl8R7w;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v81si506951iod.4.2021.03.22.04.56.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Mar 2021 04:56:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5740D61993;
	Mon, 22 Mar 2021 11:56:04 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Benson Leung <bleung@chromium.org>,
	Enric Balletbo i Serra <enric.balletbo@collabora.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Prashant Malani <pmalani@chromium.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Guenter Roeck <groeck@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Azhar Shaikh <azhar.shaikh@intel.com>,
	Utkarsh Patel <utkarsh.h.patel@intel.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] platform/chrome: cros_ec_typec: fix clang -Wformat warning
Date: Mon, 22 Mar 2021 12:55:55 +0100
Message-Id: <20210322115602.4003221-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HhEl8R7w;       spf=pass
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

Clang warns about using the %h format modifier to truncate an
integer:

drivers/platform/chrome/cros_ec_typec.c:1031:3: error: format specifies type 'unsigned char' but the argument has type 'unsigned int' [-Werror,-Wformat]
                typec->pd_ctrl_ver);
                ^~~~~~~~~~~~~~~~~~
include/linux/dev_printk.h:131:47: note: expanded from macro 'dev_dbg'
                dev_printk(KERN_DEBUG, dev, dev_fmt(fmt), ##__VA_ARGS__); \
                                                    ~~~     ^~~~~~~~~~~

Use an explicit bit mask to limit the number to its lower eight bits
instead.

Fixes: ad7c0510c99e ("platform/chrome: cros_ec_typec: Update port info from EC")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/platform/chrome/cros_ec_typec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/platform/chrome/cros_ec_typec.c b/drivers/platform/chrome/cros_ec_typec.c
index 0811562deecc..f07b7e946560 100644
--- a/drivers/platform/chrome/cros_ec_typec.c
+++ b/drivers/platform/chrome/cros_ec_typec.c
@@ -1027,8 +1027,8 @@ static int cros_typec_get_cmd_version(struct cros_typec_data *typec)
 	else
 		typec->pd_ctrl_ver = 0;
 
-	dev_dbg(typec->dev, "PD Control has version mask 0x%hhx\n",
-		typec->pd_ctrl_ver);
+	dev_dbg(typec->dev, "PD Control has version mask 0x%02x\n",
+		typec->pd_ctrl_ver & 0xff);
 
 	return 0;
 }
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210322115602.4003221-1-arnd%40kernel.org.
