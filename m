Return-Path: <clang-built-linux+bncBCX4ZJPL5EPBBXPUSD4AKGQEMTFA4NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B342168BF
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jul 2020 11:03:25 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id j15sf49059685edq.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jul 2020 02:03:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594112605; cv=pass;
        d=google.com; s=arc-20160816;
        b=YjMfGPR7fyz1NZGTpqQ6lnlDtKIfZdSazPhl4xbzhcUQ1ssA1L9dJEglzrILiUi6ti
         6AuklYYVpj0ccR7bytzfFRSpQDR1bpu1WYRrxmcLIOUcHZXHnz2ZEcA6hdJwl3h+Aajs
         T1HxIxx+TitnuiEJHuIQDPgNYW5vhj59NKqdk5LR/Bo6OhMgvGUsQmVMCCQ2MlBKKno6
         4KubK4kRP9m6QSxtmYm4JzGuZzi0QpfgVufGntOQ+rJOuna9easH7YJGcOUS0Mqds+GF
         tBn3T+ATxPz9ChzRfiz/2m5akJST7O56Jyj00ONNszhNSdMiy0xcPEzcbmYWkBwevkdu
         xUTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:reply-to:from:subject:message-id
         :dkim-signature;
        bh=RJueiRdljHiINxp7v18X+4jDFMz46nb5qpezqZUJrxs=;
        b=JwQXOsoRc+qg58PXS4knaG+pzYlb+VZd6ur0fWmrlHyFeM2piV13BPnO6nKkm8GvJI
         N7ufhNnJYNllZhT/hAZ5qFoxw4JascJHWBq/xOfnTwsuwapAc7Pi2ETBbfjZtaFZRf3N
         egZfwCn5ZF4WU5PQ8pAe0IcYw1wmHZeh7JdY/lDEC+/bh/f6R8VEw8qht6LVc4BcA+zA
         bt37GK2orAECUKyTdBTLxvZnV/mQRXTsHsRdHESEhVKorMPwCLfRF1Xao2pZ+dW7ETOj
         cZERqZZaI3IOIdhmqjtLkO5GO4dK2tT2DwKl3ahw1I0UCrjwCCrTeYO1xaAMT/R1TWJm
         Xmpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@googlemail.com header.s=20161025 header.b=DE1fTl6f;
       spf=pass (google.com: domain of chf.fritz@googlemail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=chf.fritz@googlemail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=googlemail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=message-id:subject:from:reply-to:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RJueiRdljHiINxp7v18X+4jDFMz46nb5qpezqZUJrxs=;
        b=BDkx7qAQ+NQWjZRguDt2HPqeut9+idoXDHr3Q/o69b1hzRp6PBfZ/u6RYpZEnhenUH
         u4Cv//VEQ5SbTTO1BzHJMfS/BqMzo3/FGHaRnWpiDV3a9mk8O5lMxd0tGyXXFu4nTgUe
         4ZOAmGjdQc3VEsu55bZhDMvRi6AwsY/NorWDgLRMIYPE7UiFEP95Bv73T6sNIXYzH7uI
         LW8CkJB8ezbV+HnZ4XeM09pWbKFj/T+kOX8FDCgYE3CniA+gcRyABniPuFRjyzg7Wmtt
         ReJym/S0GVCx8nD0m/PIDVq52aSa7XE0oe83ptw6MlbM2DhHh4iQowkLn+dHW5f5ZhLE
         BjwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RJueiRdljHiINxp7v18X+4jDFMz46nb5qpezqZUJrxs=;
        b=LmglTzkngOen+wMigIYD7vCwWQSZ2ZCwCbGsonZTDS3pKSw2mcVeE9sJNjXfEdKE6q
         mJNh1XMjfQWJuX7MNT1Yezw09X0ydxnePaIdd3KCqrV7J8w5Kh9ilMHDYLxVICaz2qRi
         0grgoXhOioi8muakLF+Uol9nTNH84uBKsTHBmrv+K5Pa8PqeUJ5aD3vCmgysftVaymhQ
         Zuq6yw52gJKqjhCKfRMfaI84Cm7tlZ6OiuDnrhSgqc4zoSOgqKVOCkE/qYEJPQPRSnfv
         YVUZafd8Wl+1D15hZeyRQu99aSrTKSbrzB5EM7aX8dhgnVYrDYmVf9oYDdG5liZ1ueIr
         ZKyA==
X-Gm-Message-State: AOAM532qxPz46+QSyF9M1DWH3YLO8oBuGYAQTsQuQrPZaMfbLUu6miPm
	HvAyQkqmCIv9IJdxKuLyPeA=
X-Google-Smtp-Source: ABdhPJxGbv28rfmfv6AgPzYvwx7NNzdCtNjmSvD8qm/j81PAJtH0iooxFaN9fH1evkbEZSaL31qWvg==
X-Received: by 2002:a50:e8c9:: with SMTP id l9mr52778429edn.272.1594112605517;
        Tue, 07 Jul 2020 02:03:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:b2cd:: with SMTP id cf13ls4437419ejb.10.gmail; Tue,
 07 Jul 2020 02:03:24 -0700 (PDT)
X-Received: by 2002:a17:906:7208:: with SMTP id m8mr48688270ejk.544.1594112604912;
        Tue, 07 Jul 2020 02:03:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594112604; cv=none;
        d=google.com; s=arc-20160816;
        b=mXqqV2fCCwDVq/GS24dHwKTbF325dU1UYEeVErPlO+Qi8xWUjtpKk2M3Svpv5VZCC7
         gDSMWcqIfdNMQw3hIiMkJb4K2BvYKlXKlCAky9k7GtLQaONa58TXB9pVA75OykH/85Na
         ISfFNffGbPT4S3B9JtyTUzdwlV4mfpFKa6R/Np4q4TwuhjEoEjP+7/QsY2TU5j/LYITI
         qoVZLg2NhjI1SLJ7C8uXfKKWW2HX3Fx2vTPmmmkj1EnNZCOZfZ9TtFiMTzvS20LPOQn7
         pK1WYDIU36+ghXNsBeihT2dAl2OKDMYE3q6zRuOUAXSaAp/WBT53Sb+5eBqfk3/2QufU
         hitw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:reply-to:from:subject:message-id
         :dkim-signature;
        bh=xwb7Hcke9Nx5o8FCnqrp67esi5SW8u2PZFlfYio7RYs=;
        b=oI5mBrRIuyNkTpWVYnIgc4dwf64y8qmaSZMfvj8jEKV0hS3bBMBfA55MUWd/VrlxUD
         K9cvlnVc4Kslqu4pDGUZQHagHXgbzp6Kpe/O1ZJWlM0GSFcavVsu4HTRgdTrnbFxy58A
         1d8duSI6LJzJ9Ln2MTaB/q1RZwe5+I1XCtiJmKai6VIm/y1pDqh1scLwVTBVE4QuYVFD
         jXwKUqVdMbASLvIOtmj8R0smJD/dI6ks4lfjqHWFlLBB0lybXUuOdiICp0M21iaa2M8k
         WgoSW5WdroXE5cli8vLaWB0jabgaFmk55Ox+gHRpcppHBCS1nC+FC5eQwYlpnO4P58Yn
         GpyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@googlemail.com header.s=20161025 header.b=DE1fTl6f;
       spf=pass (google.com: domain of chf.fritz@googlemail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=chf.fritz@googlemail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=googlemail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q9si1392534ejj.1.2020.07.07.02.03.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jul 2020 02:03:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of chf.fritz@googlemail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id r12so44248811wrj.13
        for <clang-built-linux@googlegroups.com>; Tue, 07 Jul 2020 02:03:24 -0700 (PDT)
X-Received: by 2002:a5d:5642:: with SMTP id j2mr52699860wrw.19.1594112604694;
        Tue, 07 Jul 2020 02:03:24 -0700 (PDT)
Received: from ?IPv6:2a02:8070:bb9:bc00::fc? ([2a02:8070:bb9:bc00::fc])
        by smtp.gmail.com with ESMTPSA id g82sm174900wma.37.2020.07.07.02.03.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2020 02:03:24 -0700 (PDT)
Message-ID: <da3aece9abd23b12837e9abf908ee67f0c2c988c.camel@googlemail.com>
Subject: [PATCH] regulator: fan53880: fix Kconfig dependency
From: "'Christoph Fritz' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Reply-To: chf.fritz@googlemail.com
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, kernel test robot <lkp@intel.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Date: Tue, 07 Jul 2020 11:03:23 +0200
In-Reply-To: <202007071433.Z3bmcgjU%lkp@intel.com>
References: <202007071433.Z3bmcgjU%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1
MIME-Version: 1.0
X-Original-Sender: chf.fritz@googlemail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@googlemail.com header.s=20161025 header.b=DE1fTl6f;       spf=pass
 (google.com: domain of chf.fritz@googlemail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=chf.fritz@googlemail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=googlemail.com
X-Original-From: Christoph Fritz <chf.fritz@googlemail.com>
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

Currently the fan53880 regulator driver needs a device tree to get
probed, this patch provides the necessary dependency.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 drivers/regulator/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index d47055db999d..76ef4b2de2e7 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -338,7 +338,7 @@ config REGULATOR_FAN53555
 
 config REGULATOR_FAN53880
 	tristate "Fairchild FAN53880 Regulator"
-	depends on I2C
+	depends on I2C && OF
 	select REGMAP_I2C
 	help
 	  This driver supports Fairchild (ON Semiconductor) FAN53880
-- 
2.20.1


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/da3aece9abd23b12837e9abf908ee67f0c2c988c.camel%40googlemail.com.
