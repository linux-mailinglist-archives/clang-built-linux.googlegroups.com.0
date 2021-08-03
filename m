Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBUKU6EAMGQECTMLHLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA9A3DF7FA
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 00:36:56 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id o23-20020a17090a4217b02901774c248202sf4310458pjg.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 15:36:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628030215; cv=pass;
        d=google.com; s=arc-20160816;
        b=Eb03Exg64Guocz7AdY5GEhqgZIA1CF1Wkj48TEXDs69HJeyfo1GTq590iLDthpN05Q
         4qrdWqAhKE0OLIhdRMu2U4NjLZwcXVtokC6lwyqEpX9Njywi4vV0r0uwXfyh8cOHvhYe
         /1OwsTKnS0AQsz3vDoPHZA9aDKm/LbzqzMku61dUjaOCBs7SBK5bAgOwm40J4VpST/Xp
         BvsbAsYeDWc9TErPj2ZTRhmezdVamAJo6RlhaGLZdk1S3vbhQSp5NvR1LTHGU6/Vl3Ti
         6wurMZbTbtS0HODi4btXdjqItN/ujb0qfzCdE6EoPzwndWp3BxSsIB39YUuBpVSqudAh
         6mmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Bt8t9SB8iEmOhk83ZBhZaUfaWqlG+/GoKX44otDeF+A=;
        b=Az2U1G+qaU44N6AEgNO/yL0ex/jye8NqveQmWWujp1Eb8aB2rWDm7j3eUMvZAQuUYb
         S0IZDs0FRH7mSLMjqTZEDC8JmvjY5mSn+YeqS+fIcqVQuhj3b5QsiSFYMDhruQcsGKeF
         AHrCTbIDcoSNZqZkwKc5a/f0fDUx90c2xI3DEZysfaa2StxjCgNnuXfwgz/39PNqXsmi
         vr5axm3gya3zFQNquvmgdJOomHxTk8PKMqDft7KbaL24AULddWwo86sCrSPdan5GuQvz
         rWSHgoJBoWKE8dyiPwubddk8xUyDHS2wCYzasB4yyPLli9IIMQl5YQluk1IMoAq7N9bt
         KbhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Kxfn2O7i;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bt8t9SB8iEmOhk83ZBhZaUfaWqlG+/GoKX44otDeF+A=;
        b=Uyjj5pBXYxrqluGIGlGCFgZx4kZOc7vELsZCXeoIxQclyCRbiQ8hE6ixHlblq0+K/i
         rZCeYVvmvRiU2sfb9GczXYVyyOPhWARIHt4WfIx/HDuKrkaEcqsheoQ4sG95Jy8Bnshs
         BRi8lStPMzyYmKMUkysZwiPvEN91bb3ArA6fnifjEhUZvNgvEv952i3yXyjqf5d5Uo1E
         NWjP2gAqwX88JjAZL+TKhDop5ai+hYPkUSsrvNENTvE8b43xvp19OY7Hvw41T4OF39y/
         5F+BqaGBNZchKYYXfelljE0XobSJftL+K7H8amRw88eAKqmSDHpJWMOalFbD9nFYm2CH
         cvzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bt8t9SB8iEmOhk83ZBhZaUfaWqlG+/GoKX44otDeF+A=;
        b=k/NU5CweitUEuLLuhJzNu9hzXNY4TAIpbpe9frDLdDYfnuG78ZNNuKuGQcF4rf87QA
         EXKc+rfm3SOzJXVvdMO68X8W1LneRq7SnSWkpbjMV2KDYbkuMShEb+miS/Tg04f86ay7
         DYcTZ4vQao3T6OkMriZj+FKKcLCf5AmtVMcdU78eqw6ygvv6BwBgMKc5BcYi4k4a8KVP
         nCb8RzYlXEr4GXkVp5wBP08FVgh8eJhVM5udCh7r6atj0dwJKmnJQ2Kp5Yu2ghIOi14u
         ZvRoCYVkwxwP4cFzDdFQNI5024m63uDsQ6IuQQ1MZl4yv4ylZUcSIiRS/ks3Mt2Ix2o2
         MQsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jZkEJg4Y5TEgpE+us2177gU/IGhzmPq/Nl5OcZ1KAzZjCK0OI
	8IXCi/n4jbWNI6oTmOnd6lQ=
X-Google-Smtp-Source: ABdhPJzJDisPIzEiRTezLluSbK5fF0sdf2u3qAtUDE2yvzYyncBD9wI1HE/fvsQf1oRm4HO+MwUiEg==
X-Received: by 2002:a05:6a00:a8a:b029:356:be61:7f18 with SMTP id b10-20020a056a000a8ab0290356be617f18mr24091086pfl.29.1628030214977;
        Tue, 03 Aug 2021 15:36:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5b46:: with SMTP id l6ls70335pgm.0.gmail; Tue, 03 Aug
 2021 15:36:54 -0700 (PDT)
X-Received: by 2002:a65:64d2:: with SMTP id t18mr90509pgv.131.1628030214449;
        Tue, 03 Aug 2021 15:36:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628030214; cv=none;
        d=google.com; s=arc-20160816;
        b=jYHX4Gw/2rYSIs10L6Rt5PvtA8DtseLdj+cabWacyhW8MKnv5/jKjsMXHxN3NeMaMd
         YDnwyPcmOjehS9uB9K39aPoBc/ajdLXTs56AcPQL6gWhI5Nx2bSB0PlFd8YHWU0E6C9Q
         5mK9hhVR5q1wUKsmM9ZvsIC/So0nKYQjRN7+V6/4n1ZbMVYo1p/wFJnte4QdQc7QDgsf
         rFyHTpLF66iwoLLpQRM6Kx4v558aAmrcKS23vOAr4mqkpX3i6Vnxc61km+cFT771al7t
         eleeXYNlTpeS1PgDVXYYvPIWBReUHUiHvb2OPFjJZi3CE45N1OCRnEkrczAkt+kFg4L1
         m+fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zzfUvxj7TjLOmFGZdqOgqP68RBLH+lGG7aM5bN5r1ak=;
        b=M19r6+uKZQ2A6t8ZBcDTZfEEAvmRpisKQB9svHNcNv2JrMLWCu6m060BCfKyKh+FdW
         DZyMz5wD6OiIFPQ6mFnZFbU4k6oizOed4mkT4IEQkNxfuLtg6nNX1gro3oj+uq2RWg6A
         6Xpo9hWJBld2i1DaerEPXNIYlEnkzmLbSmJVjO2rsg/0MyMCLsHagWEErsZREj1qQzqL
         S44r1zrNa3iwEG7Sg3Qek/js34Xm8sZGPVZqCNgLXeRoYqPrgfW/UD61TibL/Z/CM3si
         hsuTo2Q8W0P10Axw3AutM0SdztJ5AdG8qs+t6QtdyjIH0aY7J+HqBKZb34PrTnZOQc7v
         XHrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Kxfn2O7i;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c9si19912pfr.5.2021.08.03.15.36.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Aug 2021 15:36:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B829E60EBB;
	Tue,  3 Aug 2021 22:36:52 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Phillip Potter <phil@philpotter.co.uk>,
	Larry Finger <Larry.Finger@lwfinger.net>
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 3/4] staging: r8188eu: Remove self assignment in get_rx_power_val_by_reg()
Date: Tue,  3 Aug 2021 15:36:08 -0700
Message-Id: <20210803223609.1627280-4-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc0
In-Reply-To: <20210803223609.1627280-1-nathan@kernel.org>
References: <20210803223609.1627280-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Kxfn2O7i;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

Clang warns:

drivers/staging/r8188eu/hal/rtl8188e_rf6052.c:344:13: warning:
explicitly assigning value of variable of type 'u32' (aka 'unsigned
int') to itself [-Wself-assign]
                        writeVal = writeVal;
                        ~~~~~~~~ ^ ~~~~~~~~
1 warning generated.

Remove this branch as it is useless.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/staging/r8188eu/hal/rtl8188e_rf6052.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/r8188eu/hal/rtl8188e_rf6052.c b/drivers/staging/r8188eu/hal/rtl8188e_rf6052.c
index 335b120ce603..77889dc05858 100644
--- a/drivers/staging/r8188eu/hal/rtl8188e_rf6052.c
+++ b/drivers/staging/r8188eu/hal/rtl8188e_rf6052.c
@@ -340,8 +340,6 @@ static void get_rx_power_val_by_reg(struct adapter *Adapter, u8 Channel,
 		/*  This mechanism is only applied when Driver-Highpower-Mechanism is OFF. */
 		if (pdmpriv->DynamicTxHighPowerLvl == TxHighPwrLevel_BT1)
 			writeVal = writeVal - 0x06060606;
-		else if (pdmpriv->DynamicTxHighPowerLvl == TxHighPwrLevel_BT2)
-			writeVal = writeVal;
 		*(pOutWriteVal+rf) = writeVal;
 	}
 }
-- 
2.33.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210803223609.1627280-4-nathan%40kernel.org.
