Return-Path: <clang-built-linux+bncBCQ45GVI5EFBBDV6WWCQMGQET3NTRUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E298390A82
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 22:33:19 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id h67-20020a25d0460000b0290517e5f14ba4sf24826928ybg.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 13:33:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621974798; cv=pass;
        d=google.com; s=arc-20160816;
        b=VgSBAqkSjHmoeQAUWDiOl8XHXU4xp/wmhdoa7ZXxMEw5ps4Jv767kmoWq20EK4bHsD
         fsxXV4K6Dlkn9hxReTL13dpC18ghZKIv4jrQ5Rsz711txoaBvYbWjqBn5M5vyqj+v3FE
         EQ/bD6Dp2/Ba3nDhpx84UtfPKJ6EOIGcNpETDXWeWT/MBpOEtgSC5fhry4OKWnIyRa/Z
         heSQEz4qwCsnKW93S7wF6cawtra5Zo3Z8TzGCW0n6FxZRrlxnM0WEFGeWJ31gYTK3U/O
         0v8ZwLBaIABJK+8wBBj2jv3M2NL36SjP/MRBlzgpL+yKhwtN/L//mBHui1NPYqBKlhvJ
         hhBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=WUKSuZ9fnv2gnWxdsBAyqrHAXkeSmmwKtlD3L9jbFWI=;
        b=tqac3ijJX4dpK9mqMsGwkHp6j5VFbZw6CIrMiyI8Ux6Lf2c12rM8qE8C8cINjcCo1h
         05IMX5e/GbVlLWZk78gfc1BljFPuOQ1uIl6E5qjPfGcrecU0cuA6G/uXrMYPfUI+LBDP
         /OZITLNARGudSRLZr4Z5iMNNFDffzRkN7GIwQHzwA6eaMpnJo5qFk+AAWPh/S5UNeQU5
         roA9+mIh70tdySEQd9GhG4bVOEgh+LXkH11Ayw9juq6qzyzOjPILEJSy7W5mYRMnqtwG
         8RfQm2uHGLktz4x/offZcNEzys5PgTYv8pR0L2OJ8MeBGsT2j3xqSleb698sypvCjSE9
         +2bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L1KClaDK;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WUKSuZ9fnv2gnWxdsBAyqrHAXkeSmmwKtlD3L9jbFWI=;
        b=dWFwC+QDFkqzmlOBH7v8AAHiESxGeqqTvzQ2H8ILHrnogJ3ZkDzQ6USAE85vAnLCtE
         cA9pKX6tEg6MESRxlMphFO/A/clAZJgknLitd6jtMvVdRSxJtwlHvvCdd2GYTvEf+ZMx
         HPdhx00vhG+8tHkuB8zHCbMWWa2/sixmeHJ71e3dhhXQFDiHnPtYgyqRsvn2Za+++vvO
         5jru+XzesOCimVSER454fD58bSoUUqkQJPqLO7i+BjTRBOuIKgNbBI9qT2K7Fj7eJeJ5
         Lri6gD1J/zGYZJL11UDMfHLzAmTg5iUaiRFVJut2PEE9Mp0iWq7/NszvqMjcPPzUX00L
         2t+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WUKSuZ9fnv2gnWxdsBAyqrHAXkeSmmwKtlD3L9jbFWI=;
        b=kFbunEX5a6Dm+sOwo6eu7DUa31AL14rNaH22z2/W9C1Umtv843RNeRUms9Z3EY9o86
         QvaDm3qcqLkVwiQJ3L9RisN+WfiCEu67nIt84T1C0NaQrF3/k81dofA6v3bb3JmOSimb
         ybnQ86FzHR5f6rJbK2htVZxEmpodCdhXjFZcVrycVB3yL8D+uStbBqi/EMC+OvPBuZX9
         /IIsmsQaERlxRZaChNW/cIaqTqO8/Ju2w1zJGlIZ+R0Cil0Q7+bX6O7pMmWMej7qC5h4
         taDiYm2oraWzqJX8esRHhV7rIeY1LrOkVJeIcNlDTAUo3X9SUSNsWgtoIGRp/ql91oDU
         YuFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WUKSuZ9fnv2gnWxdsBAyqrHAXkeSmmwKtlD3L9jbFWI=;
        b=EXYbZCSg2iHPRXbtWw3IsIpqeRRpSV5X9gC3M8kw70lqcGeyhWh12wjr5inCzx3gQi
         IxawW9XVWA8vqpVY+AVkjDnHMYYs0e0ZeeOmYPNc7y3x3oh+8cP1iCLM8GO9aqHhU9Zm
         5qhfn4KtTddzEvpAVXzbVHBN53cgHlwf10jHqEwa6AoZT/ulsfzc34O7K4wdQpNDMkbJ
         PDxMzu820vGn1olmaHVILms0sYA4QazL4lTiq8bntSLy9AcSSz/3jbzHAzXPsAnyNoYh
         orF5LsTagctvof1ymLynuVwVVPxGxLdcqzvLQxl92GtUIrOKFdPHrP3GA8ho8+mOP3ad
         RidA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531z/4VYhqKVzFz8v+nNDnGBbma2nZUfzpD23qvGRtuDyHa3mDwu
	DZgwX73P8jyarfD/jM6LCNk=
X-Google-Smtp-Source: ABdhPJzv3jaiTjM7hlK3SD1uTxIVfH/sbSWCfYX1xhjjpeJyCTckk7Yrym53aINgIC7U6p7seWfqow==
X-Received: by 2002:a25:7b82:: with SMTP id w124mr22232262ybc.468.1621974798618;
        Tue, 25 May 2021 13:33:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:702:: with SMTP id 2ls6420380ybh.3.gmail; Tue, 25 May
 2021 13:33:18 -0700 (PDT)
X-Received: by 2002:a25:becf:: with SMTP id k15mr43116747ybm.186.1621974798166;
        Tue, 25 May 2021 13:33:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621974798; cv=none;
        d=google.com; s=arc-20160816;
        b=N9DYr+plQpKYm1z5qL2G+PvIp4xVHYLDSs1GBeEh1e0TgXPYW1NoyAF3fNdXJF3jGj
         08vo/4zouXPlTyM9JDDb0FSk6QmiXTEG9dq/GLFnrTNYSRJzSf4zILlPV3YNFhtkFCmt
         xTuGsPtkE37KWExdbmtKlacu8IKbHoGWpbReJjf+D72SqcfUjKOM5gnOU1Tav/m6LlJz
         c4PVEA7I1fJZ6K39WAZ2rsLDf5Gcz5uGLDZdqETOeE3d9Ecn1c+hZwacXNwcmujYI1Sj
         iu6ayLbBcBE70VSjDG81qeEFF+oPofEr/GDXnMCBu8VX9dg92wahn/Xjy1hV48gV9sSf
         74wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=9qilWmNlzfl6fvjkh4Q/jQnzzgBrCqLLxE6DcLSuqOc=;
        b=QASygcdaLcMWQNinb5PHkjiO8IJt1QH22O/z9z9jGuMrq3LBh7KrCiAdUXz+7CPdiT
         X8Gv6hJp1WxxKyY1C0Cc+aRErS4O6p/gurUKUpqX3TTNBmzpr0nd1kSjGRIkKRWazWmC
         XZ6/mDUxHJqaiDj3qO6XS8m/YnY2xz4UwxLlV/QhyzyzOPDkGU+d2gmmidRF4TgyYv6Y
         j69R42SYSo7RLGEiEfyMIMxgnd294F0mzxiXVhm1WDtM5chOQlz64ecEefjQ0hJyrTEx
         8UoyJcUb/UL89undlcoYbr+iZoHJ4orx4Zvxh27CTE/ZLsT7vINwrIKA+g8Y+rT3Q8fa
         xQUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L1KClaDK;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com. [2607:f8b0:4864:20::730])
        by gmr-mx.google.com with ESMTPS id r9si2530698ybb.1.2021.05.25.13.33.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 13:33:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) client-ip=2607:f8b0:4864:20::730;
Received: by mail-qk1-x730.google.com with SMTP id o27so31782990qkj.9
        for <clang-built-linux@googlegroups.com>; Tue, 25 May 2021 13:33:18 -0700 (PDT)
X-Received: by 2002:a37:c4d:: with SMTP id 74mr37056735qkm.264.1621974797856;
        Tue, 25 May 2021 13:33:17 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:a465:c799:7794:b233])
        by smtp.gmail.com with ESMTPSA id g4sm159312qtg.86.2021.05.25.13.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 May 2021 13:33:17 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH v2 0/2] fixes for yt8511 phy driver
Date: Tue, 25 May 2021 16:33:12 -0400
Message-Id: <20210525203314.14681-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: pgwipeout@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=L1KClaDK;       spf=pass
 (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::730
 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

The Intel clang bot caught a few uninitialized variables in the new
Motorcomm driver. While investigating the issue, it was found that the
driver would have unintended effects when used in an unsupported mode.

Fixed the uninitialized ret variable and abort loading the driver in
unsupported modes.

Thank you to the Intel clang bot for catching these.

Changelog:
V2:
- fix variable order
- add Andrew Lunn's reviewed-by tags

Peter Geis (2):
  net: phy: fix yt8511 clang uninitialized variable warning
  net: phy: abort loading yt8511 driver in unsupported modes

 drivers/net/phy/motorcomm.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210525203314.14681-1-pgwipeout%40gmail.com.
