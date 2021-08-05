Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXPJWCEAMGQEAXPGSRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id D91193E1BDF
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 20:58:38 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id a6-20020a25ae060000b0290551bbd99700sf7148754ybj.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 11:58:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628189917; cv=pass;
        d=google.com; s=arc-20160816;
        b=KFNla+Um4+Lcp/VVs74VYNGKDA96EFQiaU2B3x72jOwB81v11xXchQ5pzD38/ZtoRP
         BLnmVPCIguONhr9czjrtZT5FiNDAfTtLmuEHVWYDfv0zwmphs4eiRA7VxExVxMkKNyOR
         jLCbQHyQVsbLhYwTD9+rTpiDiWuja75+xWNyXBvQ7eU30FOgRyS0mP68rCh7cm8GUiNQ
         KzA8ThTBR64GUC+ovnVY0yY3lSw1isLjc/9Z7pWWNueyApP4X6UaJ2xjdKPyNJYjt0IC
         rgpp066ei11q+m0Hra+Wlrv+sKfwO5fSEo/twf/KTdT06npouof1EQ2OvsOIkjYuyzgy
         yR2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=68lWo3WY2WDcq7aZpBIfykZHXc0v7bRi5e+lizGxEvA=;
        b=CRj8hqSLmXnfXJJQbVsfqJZoqO20AeFXwFHt1hF6O0d4uCMB+Yg3CDhh6o3JJu4Rmn
         MyPhCStEsW/9eBBDhhJSiAW68F/NA8CepviJBCAArRuz2PrJb4NZgnfldnUJaeURuhSO
         nbWr9xD3C8ebXBnoF1bXF4BjXHI4aJAgNaRuU3GNt+Z/l6V9a8y2RVOz7JKNVU5szdGp
         CBQlGdwiV7+KzOqysF2yu4vYy/a4NKLhZGyWAX6ivDzk7Jy04sXGk47gkd6BQ7BZCNjj
         UkexxgxLklFvESRvgKmSMlagVSvP2enhgj+v4ZvOLIxMzc+fCJAtXD/dPnbeu4Cl1obe
         V3Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=IFeKCcM9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=68lWo3WY2WDcq7aZpBIfykZHXc0v7bRi5e+lizGxEvA=;
        b=G965CgY9zkOs2BRtmp5Go9TjGbLcvbbKqdag155LV/3HzwJIAEGlUw+Yy2x5gVxbd3
         bxq+zXV5z8cbee1pj8X/A+ztZ1h98U6UbJDhp/PgATUqD/5CkjkDHy6gAxnzei+RrjXr
         mYzwxvrcAQsAh8WrkXGg1WgHS3Kh3QCnIYetZAVQmNRmqHq6dkqSnTBtIxiQ8gUNbp/8
         alZxuncVkNEjzotuet+p+C7bR4cH1vFy5QPMitV9QNqb4OohAIPqo6HEA2cLuSx2HExb
         O5lODJdm0B1A0oH2rzkif3ST8bEK8f+O0//NHEtw9UUa74viQ98wCpFpL0FvyKp5QYZ4
         BCnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=68lWo3WY2WDcq7aZpBIfykZHXc0v7bRi5e+lizGxEvA=;
        b=KDMO3IdzTxtbE/btXjEf/IiUc1dVJQSwaasUHEMMuZyvTxgMolp30aVWM60nX0S6wB
         b47/5fze6j6BYyPRqqScmtRsBmg3iaes91me1jwFaNL85+5JRND3GZYgbQgXllDxleT+
         voEKFd3ip/xAkQpq3OR1G5FAeWSvPpYfYjATAla0vOkT8NsHMiQjgNZUpajPuk2TTfpM
         sH2mnc86xNen5d29wMs0x91wnIUPAdzYVOdUSTOPlYgkEAXvcAiKpV+p8Xqsb5e4Mbwj
         vvYUK+utDUazs08svynXKyOR+b6KS+ZaOpxJ2R9mT5USpMgXuY0Ozusjcdr1WrDFI7nm
         6WtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306L1Qvsb7kcI6sZcpu2LZF8gtzI2quG/OD8LZAGb2LehuiAoVH
	HESh43fZTqcJEKheP8/tT1c=
X-Google-Smtp-Source: ABdhPJx4PJYQyZvewy8wUyL9SAQ1F7YAfyaxxafMdBjorJFaz0KX25wcDqQt9oKSeAH1KgReyYtCNg==
X-Received: by 2002:a25:842:: with SMTP id 63mr7832335ybi.518.1628189917759;
        Thu, 05 Aug 2021 11:58:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2b08:: with SMTP id r8ls3164344ybr.9.gmail; Thu, 05 Aug
 2021 11:58:37 -0700 (PDT)
X-Received: by 2002:a25:2d50:: with SMTP id s16mr136168ybe.469.1628189917337;
        Thu, 05 Aug 2021 11:58:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628189917; cv=none;
        d=google.com; s=arc-20160816;
        b=BmiapK6IjSMdF+DJXlNXJcl7oKsBxV5H5QxExrl3AvD136qsCfq/uXOj3u9tKmJ17d
         shVQcFLXLdHXd5rLVhaTzncN34in6xOjQBIdBYOdlXJUWx7PCP9cJIA/S13rzQxelczu
         +PofhNgcAVewjs5+B5pLcGLZ5Ba4ZbYiZJaC/xwdgwMqnMKD4yWyI8JxR8yIew6OYVsB
         QTfPUOMlkJy9XS6ivYJeUCpzMFPWPmKmi+fU2kvIawwT5V1Ggb3R11aOD04/tS1KdrLj
         3f7S85Xi5RTG1lKdvpdn9EaK9HSdmbyF3T0d9n699ZLo8827BgqdkDEZ5heHFv1FZOFE
         1r/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rffzDI4dnAhv+1cdVrYAZ4pmLZJJjViop0CrGJLqV8o=;
        b=oSw4ywi5fvy/X4Kim5oZlMqs0Ncaavrdc098+t4+onZiyCukW0ti9ktLFtb0hsXJtt
         dt2nYzlI0v3Lr2SoCl39I4q/BFk5MD2j2t3Ci2ztSNuD9oY1dtIFPjgiP5vq51SlUJgG
         iIn3Kg4Rz9RkIV4bFjCMT1sU/AJ74CPn3h4tvu1jkZAsey0QHhLwNUzsxMUOuQAF4q7v
         WD0bS/K9iLOL0Ff44h+5sOikbz89pBMhPXrqZJf6Urc8wPP9eaHwPfNb4zk3ZxG7ltWX
         DapVF9qc9bCA9ruw+S2R8Wtuz2yBQavZbpq+9uA/RBzoZke8xE1Sz5x/axx/n3wEkt9r
         N3FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=IFeKCcM9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u17si461598ybc.5.2021.08.05.11.58.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 11:58:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BF15B60F01;
	Thu,  5 Aug 2021 18:58:34 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Phillip Potter <phil@philpotter.co.uk>,
	Larry Finger <Larry.Finger@lwfinger.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH v2 0/3] staging: r8188eu: Fix clang warnings
Date: Thu,  5 Aug 2021 11:58:04 -0700
Message-Id: <20210805185807.3296077-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc0
In-Reply-To: <20210803223609.1627280-1-nathan@kernel.org>
References: <20210803223609.1627280-1-nathan@kernel.org>
MIME-Version: 1.0
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=IFeKCcM9;       spf=pass
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

This series cleans up all of the clang warnings that I noticed with
x86_64 allmodconfig on the current staging-testing. This has been build
tested with both clang and gcc with x86_64 allmodconfig.

v1 -> v2:

* Rebase on staging-testing and fix conflict in patch 2.

* Drop patch 1 as it has already been fixed with commit 1c10f2b95cc1
  ("staging: r8188eu: Remove all calls to _rtw_spinlock_free()") and
  follow-ups.

* Pick up Nick's reviewed-by tag for patches 1 and 2.

Nathan Chancellor (3):
  staging: r8188eu: Remove unnecessary parentheses
  staging: r8188eu: Remove self assignment in get_rx_power_val_by_reg()
  staging: r8188eu: Remove pointless NULL check in
    rtw_check_join_candidate()

 drivers/staging/r8188eu/core/rtw_mlme.c       | 2 +-
 drivers/staging/r8188eu/core/rtw_pwrctrl.c    | 2 +-
 drivers/staging/r8188eu/core/rtw_security.c   | 4 ++--
 drivers/staging/r8188eu/core/rtw_wlan_util.c  | 2 +-
 drivers/staging/r8188eu/hal/odm.c             | 2 +-
 drivers/staging/r8188eu/hal/rtl8188e_rf6052.c | 2 --
 drivers/staging/r8188eu/hal/usb_halinit.c     | 2 +-
 7 files changed, 7 insertions(+), 9 deletions(-)


base-commit: d48401b8609ff19db0f461759ac6b5210cd81288
-- 
2.33.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210805185807.3296077-1-nathan%40kernel.org.
