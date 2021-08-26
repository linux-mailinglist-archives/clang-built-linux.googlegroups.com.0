Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7WBTSEQMGQE55T6ZPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C563F81D6
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 07:05:03 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id z30-20020a67d29e000000b002c35475ec63sf441494vsi.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 22:05:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629954302; cv=pass;
        d=google.com; s=arc-20160816;
        b=x6jSk61H80u7UAT8RSE7Pcl4pa9LQcXOuW0FRHKJboMgB1Az7aaTdAz4MQq4E+pe98
         Lyof4CWKmA4pEJJsv0aGDlQFg0upI8fBMx3e9En8rYlDvPlwgdWdn+LC/TDwxc6cEYIk
         KYFrgc4xuio+aDdEwFGQSRuAMYR8saHf6UiyFNXQY26uzR3M+ghmzBbCE7pOpHBbnE9A
         5vlr8H+3DOSkyUWD8nu7H24yMN0oo6xg6hd+jbsehMdgBv/vIET0kF/kSWGb4FlJR+oN
         oNpcTBe3tZBxm2psZJ3tkZ8GWnGl+pZ94waOb1mXLoTBcyWbAyhPeXy4ZKW53Idmnuav
         1Dhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=+FMcA+i9fwFCeVT1BNYu17Z+nKLT/wi3o96iIGOaEjU=;
        b=QzISMrt+mJ7c9R/5v0yzrbzvxCmNshINRlVVD328hewJLCHxfPpKMRDhO5a9MW6iPn
         Q1Kk1oUQ66bolOjinCfKVEl7db5fLPTXEjvMc/VpSBdpBxmrOgJGpDgb0zeXbW8EQ1rN
         5tw9w7798MuC2PsxNrc1ClMa4oKQu1SNLQEpKGTTfqQrjO0SyKOfcV2DbFzFAyyWiJoZ
         2fvhAx+qBquyLpydvZ+aHc2w/AWfJbW3SCHEeU9StgzlzCVQIOIxo4JYVMHhKOo0c5Hh
         5PowcwpbfBKzvF1qVES6KysAGkM/jhx0H6BagBQ6jIjhQpZBZ2WkJm8c/yfhf88+LTUr
         2LwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GR2qZqvO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+FMcA+i9fwFCeVT1BNYu17Z+nKLT/wi3o96iIGOaEjU=;
        b=kZkMQTAJeZRK8E682pkg3AMPVis50EpXskOpkOCEdKX+id2ZwBXxLG9GgNskP6WwPl
         Bm+2nBVk1uAVV0e3rQ6R3K4iiCSVrlqlwbDC8nor0PzQrBSDWZiIpoSJ9aQ8KSDGRC3n
         OATHBuqvVIf6R+PtclbCSoXMRC+eASVeGO11J/WgG8IQwOLnpYzEH8kYkwB4F/GtoCHf
         vNimwo3BCf4ByT1UQBl7HMrzpbSf3AAmV6buMLLFOoqB/LCTP5B7I+pnBHZ2L53iV40k
         3OAL4Urlg/tq3DDUpybyTK/nt9JlFV2tKot50YBQYe3YwRutuO5HZUL4ONFEAKDaCB5J
         bUnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+FMcA+i9fwFCeVT1BNYu17Z+nKLT/wi3o96iIGOaEjU=;
        b=V3zXwhVVDF8GlRJ6gEEYcNowoou7uIeUU3tvSofewCsELSNeOkLEz60p2jYzOuu/I4
         9GN4AXWUkmACuULZmYSU/e2+vjJwg24BVf3/5SLSz1LSF8PKubrWib8IQ6xrnryDuemR
         66DZuNGr66IVCzh7wdbnOBpdDED/cCTT5mEco/TfqMQ98VL6xoNOYashHq21w/OQFfxG
         SX7kEV2yWF7jIkC/5oNFnRan+ctD1PE4XMJ2tKzLE8wQHyF91+PcTPlrVd/hgfmPszzE
         lEgQ2nL836QAE7ubMOlo6blKCDLyI6z9kK7KXTlGE28FS6Mqe35lIg6kdqH5TI8UHf9R
         iHDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530PxIvIOojTPo6MsBiVvUQGWCJ2BkSwT6VzNInXkEsT2RvNbeJw
	HCo6WEg46bgVxQzevt6+RqU=
X-Google-Smtp-Source: ABdhPJwiAi9wloE1MOs9pVpzCjHUBwyio4hawaqpgJr0/L7hXcotrZm18Gz9tmbWVw5mkGnFI1QzXA==
X-Received: by 2002:a05:6102:6d0:: with SMTP id m16mr995081vsg.55.1629954302422;
        Wed, 25 Aug 2021 22:05:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e24e:: with SMTP id w14ls822699vse.6.gmail; Wed, 25 Aug
 2021 22:05:01 -0700 (PDT)
X-Received: by 2002:a67:ea4f:: with SMTP id r15mr1215804vso.26.1629954301941;
        Wed, 25 Aug 2021 22:05:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629954301; cv=none;
        d=google.com; s=arc-20160816;
        b=k+n0I+gDIDYXO7LtJTcJfw3KFebywh6aJTVYnKoMA8weuwSwIkdfhrzmsn+AcwXZMz
         f2sYTSv0LmknC58pKl2HrqQeJKu/emTK5aBjk8YIy2UnaHgaq42f6R4BgPsDCNiZKPPS
         bBTb58Odb8biGDWz735RzJ5FGU5hxGJsWwIRHlboCXjBsrCO6+qaP4lN3w3tfW2zzRqL
         1lSCYa69+IhtQNAr4Z113Rpqh+PLrKs5kClNkNeghl4h0bEMubxAg6ETe202L7fUbdP1
         Yge4CSMwEtKfF+2b+8ivhJRi6Q5IkJMjBRHungLlInOjpWPg6AeQomx7wxle8JKuSrFy
         BUeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=3i6KrEuw8h/peN0IKoJcpFVyDg8pYoLtD7AuzkMA7e0=;
        b=SuU11JbX73T+ag3k+eXeBieK41UsYPKL/iYeZ5vKp7VKoojXrA8WOFp3sl2B3haNVX
         LgCaXOpBqP9MfTJcXFVaNTkAqu9sC+MoPu0Ecie+NQPyZ854QOaa63K2ur3ZIpvetkhc
         Wfh2J4U22Jx9soiGxou4aai2P7z434hk8zA5PUoduwn6T6p0KVFVA9MKlqn/c4JTZCgv
         UML3P5IpGhR+M3V9bsXXOJ0nAT555YPQNYZvkWY9WKYz7nuxLee5olgCJ9UK7vEzb4xw
         uMaXyfaNuAs9OLFZCYqm7+P97d7xYoVgKh3ko6VdQlVU4uizcblXtKXwdLupOoqt8NRV
         9TzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GR2qZqvO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id m19si74809vsr.1.2021.08.25.22.05.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 22:05:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id fz10so1427528pjb.0
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 22:05:01 -0700 (PDT)
X-Received: by 2002:a17:90a:4e:: with SMTP id 14mr7628062pjb.180.1629954301543;
        Wed, 25 Aug 2021 22:05:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j4sm1053437pjc.46.2021.08.25.22.05.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 22:05:00 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Arnd Bergmann <arnd@arndb.de>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 0/5] Enable -Warray-bounds and -Wzero-length-bounds
Date: Wed, 25 Aug 2021 22:04:53 -0700
Message-Id: <20210826050458.1540622-1-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2649; h=from:subject; bh=o7TIWnomune4Ws+iBo2usi7oveKXrsEW70VtvNJKH6E=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhJyD49pr63WOG14n7u9Nv6gB4HAdHH/eZ+4L58ymK 6i6X+PKJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYScg+AAKCRCJcvTf3G3AJm9sD/ wP1xeYSoDkz6OHHs1AZ8bLJAFBNcvq7/HqNNu2d8FS649foInCIJgrj2yPgkBbYLVrF2l7r/0+ujAR xuCHPUUUQBVSWgXs8wogZczPqWEg4E/MoB+UzEeFhEhHkTOJ1ZrrLZA/9DhKL9Y1tZT6kllGZBmrjn xEyhqmZxBemIQA4HaluuJNlERn8WWf/1F/BzwxTQGZHip5bFxG62+Vh3PHFpY2gUZ1M5ySlbDxeZZV MZO8a3E139AamKiYVRr06/8nh+lKCubv35uhbdHdFWTZkVJ5jks+M7tScpnIPNCfd7i+qsusD8Rtin 3gZ7LGUZOfRL6+BH05pvBUeEDwo/mSmsgEbfNnoIrDry+AvlppSE+JZfVe5A9YKQs4D1q3TSQVj2G1 UqutmhlnQmW8QmfS6XdKXVCIiTkEBLZupxhCQqFzXR51jNAj254IaH4rGZ4T0tx4mDhk6rQv+fa8mq O0UGVoJQlCbh+945iFJbck86t8LnqA58DiSSFgov3Ya8IY0+bBCmH/FasPoQ7oh9z298CXpURzaEuV 0WdquMzeg+R4RDuT46G3JEjb4F3woT27AxGlJBMsZuuLVdssbXvjVbSB7ciZuqiAxrw3Wtc6EaB6nu vYUkMn1xQ0tKlckECwgF6fQP7jYs8sPwnutBxZWJBV/QUWWQG7I1i51asEmQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GR2qZqvO;       spf=pass
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

v2:
- rename flex array helper
- split flex array helper arguments to be more DECLARE_*-like
- added knowledge of flex array helper to kernel-doc
- added reviews
v1: https://lore.kernel.org/lkml/20210818081118.1667663-1-keescook@chromium.org/

Hi,

In support of the improved buffer overflow detection for memcpy(),
this enables -Warray-bounds and -Wzero-length-bounds globally. Mostly
it involves some struct member tricks with the new DECLARE_FLEX_ARRAY()
macro. Everything else is just replacing stacked 0-element arrays
with actual unions in two related treewide patches. There is one set of
special cases that were fixed separately[1] and are needed as well.

I'm expecting to carry this series with the memcpy() series in my
"overflow" tree. Reviews appreciated! :)

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
 drivers/crypto/chelsio/chcr_crypto.h          | 14 +++++----
 drivers/net/can/usb/etas_es58x/es581_4.h      |  2 +-
 drivers/net/can/usb/etas_es58x/es58x_fd.h     |  2 +-
 drivers/net/wireless/ath/ath10k/bmi.h         | 10 +++----
 drivers/net/wireless/ath/ath10k/htt.h         |  7 +++--
 .../net/wireless/intel/iwlegacy/commands.h    |  6 ++--
 .../net/wireless/intel/iwlwifi/dvm/commands.h |  6 ++--
 .../net/wireless/intel/iwlwifi/fw/api/tx.h    |  6 ++--
 drivers/scsi/aic94xx/aic94xx_sds.c            |  6 ++--
 drivers/scsi/qla4xxx/ql4_def.h                |  4 +--
 drivers/staging/rtl8188eu/include/ieee80211.h |  6 ++--
 drivers/staging/rtl8712/ieee80211.h           |  4 +--
 drivers/staging/rtl8723bs/include/ieee80211.h |  6 ++--
 fs/hpfs/hpfs.h                                |  8 ++---
 include/linux/filter.h                        |  6 ++--
 include/linux/ieee80211.h                     | 30 +++++++++----------
 include/linux/stddef.h                        | 13 ++++++++
 include/scsi/sas.h                            | 12 +++++---
 include/uapi/linux/dlm_device.h               |  4 +--
 include/uapi/linux/stddef.h                   | 16 ++++++++++
 include/uapi/rdma/rdma_user_rxe.h             |  4 +--
 include/uapi/sound/asoc.h                     |  4 +--
 scripts/kernel-doc                            |  2 ++
 24 files changed, 115 insertions(+), 65 deletions(-)

-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210826050458.1540622-1-keescook%40chromium.org.
