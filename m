Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBKUB6OEAMGQEIYEWT5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D9A3EFECE
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 10:11:24 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id k11-20020a6568cb0000b029023d00ca7bbcsf987626pgt.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 01:11:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629274282; cv=pass;
        d=google.com; s=arc-20160816;
        b=sN4p87e3oSK9I8Q6alHRiEI5aE2fmnZr3COaa0xTrp/bIQY9+bPPHx7bOkZokm3DS4
         iSAYEit8yoa+sBVOgpEFJgCutJ3+g04WQ/uvV1BG8MUEwmAFqG1mrSFeyjc10Kklu0I7
         vwJOSObAs4D0h7lgI/8F7KqLjRTlBaQ4zqEplAJOcvQS0L+8I7ad6yydsloM3GxlfH9O
         xhLCzWY4gKKuXIeh762Tphrw93xu1xXNLKycFYZyOL6xtMmrMDd/ZU5If4gbxaXfU8JP
         imHOq1EIxqpP1X+q7GW0t4U6Tt33stWBCkdqjso3Mv79PVARwyZAg0haVTFsIA2taYaR
         tlyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=rZZKvzFVTD1zpVYWSl4j50E7KK8NEeiNw5agYebe530=;
        b=egbEnTC3dkj9ERqVk4u/0YWDVvqVQRQO+qRu+bbu7/htUNIa8jt6LDo/erjMJn7F1l
         SEUkjQv5BsNeGtzLskAh6HJVfQD8UFpcN1FmsTjJhoz/97t4I4PSaMUvkScBsazuOL7R
         uYASFmdRqmkOlNMGx3dJwjrYr2ufiKRRiMlWRjW9ClsGM2P2GJe6qtmgTgUezdhSIfmx
         DCFKdk/XU89+pSFW1RFc3B8oGasD+8mLBfrV/X6gFvSmCHw4j10mwWesKohOg4vjt0VN
         9mxpPhZ7U5Hab1sTlHLJE1zfuRCFkxa0QLZ3ID2fpGpsqXZQPPDMsLAgH6t0L0vF6sNS
         N9Uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YHDlqivs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rZZKvzFVTD1zpVYWSl4j50E7KK8NEeiNw5agYebe530=;
        b=J8A8D1+Ax75m2WalBFqsbrKtOLA8mq90Es7Tse+34W/WYun+NZL4rCMBdYAI9AyAik
         +ckWtjLf5aqk380yB2aPz7Q3JM5UnftpLIUPEgsL9MhWiA+D0cPPE548A69XX61WB2+p
         7PspQ/hPzhBAhl5GUh8Z13hjpbGPymUa/giYG0n6/7pEjNs9fHblt8Rpif3zfsidzIty
         jY/uTM59ECOtu9ag5Z64cP9iwIEN8QKdda6BwrT5mSFiIvf0fDHdet/24t1i/MzTA0KT
         trB2+jmtVWrrWTqBrvct/+rMfkmczq9yJ/+aUnscH7ZEghoNvjWU6i9CLATF2potmbg6
         21pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rZZKvzFVTD1zpVYWSl4j50E7KK8NEeiNw5agYebe530=;
        b=ORM6t3k5VjRNXtN72XupjxN9wqx5HFo4kk+2Z1HH/ucfbutUpZlIiaXQtp9xcJ4mn7
         MJRocF60xMziUNig6RVnsGQc82qi0JtuXy/UzZnm8/wIiuUQaYnKa0sI5Ddg1CKU8tEV
         h2IC4JTpCyOItrQzdTHmiYzFia/E6CxFUM/6b4wriKgtWwlTlzz7N7WXgRTru0qL1uns
         txXOqICwRoQ1nK1fZ+805S1ZoNH4nC90xtpH1RKu5cHXNCRERGciy3wZrr1OLMweiciW
         BYzsLLtLs/K7NiFM5LeNWR7Gi10tHXtrD0J7dz1czaHyP3p51o2/19JqEtvMauHaA/Ld
         yQGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jS4wF5Nspa9PZCe8U6Bx8f5xeYPxH3OrZCVRXMuhaKWaC5NiB
	GhdOesv0xjaUpmsWkX44ARA=
X-Google-Smtp-Source: ABdhPJx5jl8o18oiSu4y0I+XbKfpc/pF8yqVA6UHAS2yW4nSupWiuQ+pl+C493++F3jsmjDEo739Cw==
X-Received: by 2002:a63:164e:: with SMTP id 14mr7636937pgw.246.1629274282639;
        Wed, 18 Aug 2021 01:11:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3154:: with SMTP id x81ls812526pgx.2.gmail; Wed, 18 Aug
 2021 01:11:22 -0700 (PDT)
X-Received: by 2002:a62:6307:0:b029:3ca:f9cc:b1b8 with SMTP id x7-20020a6263070000b02903caf9ccb1b8mr7949478pfb.39.1629274282022;
        Wed, 18 Aug 2021 01:11:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629274282; cv=none;
        d=google.com; s=arc-20160816;
        b=SRTp4Zv/rZXKde2lEx9euILr1c1HM7m4WgfzquUbko73YmNrrP0HWMzAeko2D39iW1
         9drYoE/EEzR5AyxzhMuQQvyOdCa3ww2EXH7d6dpKDHw7j2Eo6JZImXZ2V6F7fIrEgV1K
         6YpJREWTaE3DsA8F/aSlhHmz7ca7AXRiPK/Pf5FwK3dBiHNSRmqmhwvgptxAPMj2HGZg
         dmjHR19oqwtcr2PWCnU7MNEVqkombE/jGVhw0xCz1OFdyEoSXodejtGLYmpOICKdTIQa
         N8hOVPe4sGG5woD0JNSBS6w6rkz8rwOUb0bDEXtiABs2frEB2lnYcuU4P1rKgDFePWkU
         RWyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=MY8Vy2Gwyp/6ClqTLbufHKX/EBwR8IarJAz8L3RIxlc=;
        b=vR168RrOYhgXZx5pvlb+BzPfBtbxRP3igExHyFLkEe+NYOTjwiqvCM599LWlNqswMA
         6wqUMk8D+sk8B3Xn1owzGCdQwuUly1FyF1p8zYrRiXtkApK4f4uIc7CXd6hc90QHZb9u
         BpJZUSKB29WMQcBF+aI4j1I3lyCyitlSK6oQlgMITwomp7wvgmfr6iNrV0LGjV+q5Ne7
         DEwL0Qt0rSNbsu85axfgnRGVwFK6EsIcC0fuAf6v2b4VpOyFGN0dfh4cwU+PT70Hl/Qk
         hvRlZAnRaXZnPYjjbFyMGTKZSJKkDM9W6E8GdABVrp3fOru6zHt1wQU+O+uPTsbt6SnA
         cBFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YHDlqivs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id e1si244778pjs.3.2021.08.18.01.11.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 01:11:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id q2so1450911pgt.6
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 01:11:21 -0700 (PDT)
X-Received: by 2002:a05:6a00:a8a:b029:356:be61:7f18 with SMTP id b10-20020a056a000a8ab0290356be617f18mr8090194pfl.29.1629274281741;
        Wed, 18 Aug 2021 01:11:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y64sm6025462pgy.32.2021.08.18.01.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 01:11:21 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Arnd Bergmann <arnd@arndb.de>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH 0/5] Enable -Warray-bounds and -Wzero-length-bounds
Date: Wed, 18 Aug 2021 01:11:13 -0700
Message-Id: <20210818081118.1667663-1-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2304; h=from:subject; bh=+3PbFLzhuXuKeiP367B9yvw5C8+1fj6n3ISBhfoxQDs=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHMCkSUiloWdfwIMtIoPfyPuaMV2HH6ioubUcVTij 9T1WEYmJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRzApAAKCRCJcvTf3G3AJqm0EA ChSv0Nffl6FINd190zgIqcanz0y9aCYtQjW/WBWmWoBHBtLl5zrJmrWacWwc5ocQAkJjaNeIGAxuY/ QHS/tN0fPkWSc2hToXFjHIdJZO1ktvd7QgT8mUfwFqe4Eaz2qZ3XzxGgqB2YzMbL2FYNGvlcniCU/D c3xjyFdgptWVtq5FRm2Dm0/XkDSB6QHlGiy3CmwAX6My8J3cofejb2UiypApunOhy8z9b2O+lZ9QOD Dhzqjex3OvFlJ2Jzyuv1Abo/2QojMbdJghlPzywS9j9ex+gcLxW5GDnguz+ccucqhETH6xC/epZI5h SMYB/DGuWABAN5qGYDTgaJJZpv9KOlSPB5y8VMBbBvaL9FcCc2/wDnzNFYwJf/XjOsC5NXDSTbazmi Ao3IgNbmpJoyX5ZdNLywMf/aaG+PiHVI4wyaJZ9KZeLaK99SofVDXl1cIS/GV9ZG+tUnM9TMw+y8UD cLO8aujcSG+nndIvYgcE4CWJFMAG2gduJ/bA1shlWcQlFPKevKg8mufGF/woJLAMBg5VqIgsc1aCyD bx+5hRr/EINK9i6JNUR4Z0gjmKByzxnfjZhRDipz4KCYd5oA2GJl+VGktm/tdYPXDhzlk0c8TfeVBd BEKphz8q+u/33EhssPDlx4YX5cJyBRvfp5ZIUbBO205h1nFGhvu/LF85Majw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=YHDlqivs;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a
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

Hi,

In support of the improved buffer overflow detection for memcpy(),
this enables -Warray-bounds and -Wzero-length-bounds globally. Mostly
it involves some struct member tricks with the new flex_array() macro.
Everything else is just replacing stacked 0-element arrays with actual
unions in two related treewide patches. There is one set of special
cases that were fixed separately[1] and are needed as well.

I'm expecting to carry this series with the memcpy() series in my
"overflow" tree.

Thanks!

-Kees

[1] https://lore.kernel.org/lkml/20210818043035.1308062-1-keescook@chromium.org/

Kees Cook (5):
  stddef: Add flexible array union helper
  treewide: Replace open-coded flex arrays in unions
  treewide: Replace 0-element memcpy() destinations with flexible arrays
  Makefile: Enable -Warray-bounds
  Makefile: Enable -Wzero-length-bounds

 Makefile                                      |  2 --
 drivers/crypto/chelsio/chcr_crypto.h          | 14 +++++---
 drivers/net/can/usb/etas_es58x/es581_4.h      |  2 +-
 drivers/net/can/usb/etas_es58x/es58x_fd.h     |  2 +-
 drivers/net/wireless/ath/ath10k/bmi.h         | 12 +++----
 drivers/net/wireless/ath/ath10k/htt.h         |  7 ++--
 .../net/wireless/intel/iwlegacy/commands.h    |  6 ++--
 .../net/wireless/intel/iwlwifi/dvm/commands.h |  6 ++--
 .../net/wireless/intel/iwlwifi/fw/api/tx.h    |  6 ++--
 drivers/scsi/aic94xx/aic94xx_sds.c            |  6 ++--
 drivers/scsi/qla4xxx/ql4_def.h                |  4 +--
 drivers/staging/r8188eu/include/ieee80211.h   |  6 ++--
 drivers/staging/rtl8712/ieee80211.h           |  4 +--
 drivers/staging/rtl8723bs/include/ieee80211.h |  6 ++--
 fs/hpfs/hpfs.h                                |  8 ++---
 include/linux/filter.h                        |  6 ++--
 include/linux/ieee80211.h                     | 34 +++++++++----------
 include/linux/stddef.h                        | 10 ++++++
 include/scsi/sas.h                            | 12 ++++---
 include/uapi/linux/dlm_device.h               |  4 +--
 include/uapi/linux/stddef.h                   | 13 +++++++
 include/uapi/rdma/rdma_user_rxe.h             |  6 ++--
 include/uapi/sound/asoc.h                     |  6 ++--
 23 files changed, 112 insertions(+), 70 deletions(-)

-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818081118.1667663-1-keescook%40chromium.org.
