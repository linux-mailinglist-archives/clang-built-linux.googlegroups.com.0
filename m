Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBH5GUSEQMGQE5I27HEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 967303F9C74
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 18:30:34 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id q13-20020a05620a038d00b003d38f784161sf3745116qkm.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 09:30:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630081823; cv=pass;
        d=google.com; s=arc-20160816;
        b=L+xtznvRWo4sSz/kvt6gIRDh6CY2XzuFEfq8FHlryACz1k5GNN/VwE8GHIFsig3mfs
         QaTXd746/Hqr/B1BlENIICzrJmld+PY9oH2VpXkLn0bEByNTxfhcA8+0tQqRnrBXU5qa
         sZ0ZEFZGXQWeEQRgA0jGu6LjIupFX2KeINFpaGX1IRx5BWhTIaWHGv+6GZCgCxFx9qLn
         EEIBjaogjhC2fHOd4HvjtG13GlxkO517VqNz1I1u9jzz7sWyg7rMtH+u7Fwl6257kaUA
         U1OzS9lkhN9zg7CAgF8d7cfQzX25bH3DTNs92e1J5+GrvA5RtY9wyHv9m1Bv6ouglQki
         fuoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=BmcIj8hIJ+AcmvDCdP9tzEoDgZMY1YUTYE/9ccI+MpQ=;
        b=aCbLjUe26piOmzd1pY4O2RAXBnihmhWvVT0l26/4jlfPVQR6rS/RpifM/8V2k6B3cJ
         HKXA33F8vwMLaRbb+DpcHNDZoZ2tRkyBbLmKzdn9h7DF/pne3KymKz14tbH5RuuV9XBX
         DNvMuGqs/b7AJBIhVBFp5cOXxqHNle4zjD92EX/s88rlRpTRIFPOr1dR7htpdzhdHTAk
         fYnwcSpicWqJzfzRo5B68H9s7BjLD0g/eCmjsBX2eEDCXmeBTtqF+TbZKZT6Peq/+Wub
         R/vbmlK5PxrzZ+8iKX00NfZ1fTZEQpkDeyrE7iaZHVQnyfvicRqUtdRup9c4i8woxsfm
         4rKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="fIXY/HxJ";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BmcIj8hIJ+AcmvDCdP9tzEoDgZMY1YUTYE/9ccI+MpQ=;
        b=a3P228F0xD3gTgMGxzDIApV42ls3qEG4HSfqsD6f7Vto8nzFzFUdcuZbdOCT97a4ju
         sYPrW6IgEd1tIHEqTTXt9R6CiDZlroYITajrknP8FdkI4MGu49XgOBQn/IzTIq+B+vNY
         QPwoJNGU3UKG2kursexpQZ/qPaVIyyQ1spXZbbWl9fBfwyT8qgrRGyzWCM2C/zT9P710
         QzijCh+1xGsBKzAv7dgeRn31tSjeWJZdtHlJS/gzlvu7v3WgRVvG4aR5HBGA63nOpV0B
         zMVj5ivSbFwIjT+ByJpVUM2IjSBnrkG22uB/9tObuLSjyc0AxCbNglNm+jDXff2ayOUr
         0rWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BmcIj8hIJ+AcmvDCdP9tzEoDgZMY1YUTYE/9ccI+MpQ=;
        b=BHQVmM2cPs+p5Z/fH6SRv8xjMnj7fIRb/V9cfwPmAgat2YfuMSMVl8WiIWcwoU6W4S
         Bq4uQcXJ3ubYCFtW8uBnuwmEfBQYYB8WSO41CtEohNIXQhqJoCXS96aCuiV1WSzilHzY
         4HAgyoJRTfWuRqWDx6p2f86WX3oPmwApiN5yXTOBcE5HeujJ2hrijfGZRKV7SQFxZkm/
         YcSb5Au4SMtgT76yyPVlie/AZTnv3gUxbnGuW65ha3/d9pASBnTwX9V+d1cev+w22HSc
         MdYodKpHLI76P8Nc29A4n0Pio8Q7X8fndXaADC+ldkKkioukJ6HhSwdUvdKNVpTbJBXH
         I0RQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Y7YDbVWePSNKj/0f9wgwvQUwgq5yV8NNQ7im6s/hZFVj8SW12
	nR6ob/gvGLErfvenFAAX4lk=
X-Google-Smtp-Source: ABdhPJxy7ofdFvtAIFeTR9l+jboxRqPeNq83feAVKMsWP4qgTdWsFQXaqCvvmP/KIiPP5moCIBdT3w==
X-Received: by 2002:ac8:57c7:: with SMTP id w7mr8980845qta.53.1630081823507;
        Fri, 27 Aug 2021 09:30:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4590:: with SMTP id l16ls4173970qtn.3.gmail; Fri, 27 Aug
 2021 09:30:23 -0700 (PDT)
X-Received: by 2002:ac8:46cd:: with SMTP id h13mr9132053qto.369.1630081823009;
        Fri, 27 Aug 2021 09:30:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630081823; cv=none;
        d=google.com; s=arc-20160816;
        b=buz4bclBKDDmWGVu6KObST/waY2AKQjtGpOvkm/2nyFWkeHA4EtRUaXBDFjnmoAk0Q
         g+RIq0y1jtXwdjMsR5ntcak46ugRGg4/+QFN+5E6TDbvBJwqxPrMZhn2Dxi6b60ycFzR
         OsYmCxgj4KGJ/Xnq31xrOn9yZIEB3p/VhuY+ws/Rt79o81ZRsR+vPF2tzwC1GlLo/BR6
         VDUKNZb4+2tWQ31k5TYtcQKG17Jn5oh7LTbjAtlDH9rpzRuxzX7AU7KEgQ9/tG5J8i2r
         FlIS/fzpY7l+ttBjMLrdoMd+wcl7EH9Ih818HwZSWtueZFevGANDc9EpNiAgPb4LwtOu
         GaBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=d2f+dDNnTafc8SEGH12py3+AmRo8s4UWHPLd9vKPVi0=;
        b=W4MBbT6Imnti2bwBykYoDB/ayyLCAR9nT0GPbuncPp1QS0DK7m7xdynJiqPZZWxqVm
         J+jDzVHjID869eAOTAgTm0aDEhGdLOPV2bLQfDSja06Zz1OlV93UfmAQPAgBvdqlchui
         lGxdjiVUFDCm5kLkHcc+/YuINlUw6axAGhhp62pueLoSbrktPhAja3q5LY/tk8jR98YF
         4+HUNTj6d265urFvqI0Pe9Xjdw2pljzTYn7Q21vkG5HPOoZ/h+S/oQzUJRmmZ00rqPom
         EQkOgmILOA0kqKKU82u8Q8m01FYGFCCbYuYrr6U3cvpOTxM3fUwjuYTuwXJIBvaJ2cdy
         2E+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="fIXY/HxJ";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id d201si541065qkg.4.2021.08.27.09.30.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 09:30:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id 17so6397827pgp.4
        for <clang-built-linux@googlegroups.com>; Fri, 27 Aug 2021 09:30:22 -0700 (PDT)
X-Received: by 2002:a63:480b:: with SMTP id v11mr8619518pga.413.1630081822183;
        Fri, 27 Aug 2021 09:30:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 202sm6965358pfw.150.2021.08.27.09.30.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 09:30:18 -0700 (PDT)
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
Subject: [PATCH v3 0/5] Enable -Warray-bounds and -Wzero-length-bounds
Date: Fri, 27 Aug 2021 09:30:10 -0700
Message-Id: <20210827163015.3141722-1-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2707; h=from:subject; bh=G7lfn/S4lfDuvrMJFt78eLvz2QzX7RSCHJx2EUKfiPQ=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhKRMWb5ISje3C63/e3fG+2iJekwLtKJCE+CTV1ok1 yeprqmiJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSkTFgAKCRCJcvTf3G3AJspaD/ 97UJfbeR3q77gcILqldWph6Xas5R/waooSKUI7B8kcfMWSbIFP2UH37sv3hxoFbCYKw2DG46o4TqT1 gPku/jbqbtN0frzI9RuneJ5qsPkFwTcv0bYIFWc/FollTUbUaCDSCtrUASQWCwaGbxaIsECBHaYJLq bTstrJMOBbPV0pf+booD34qB1pgAF19WHjUX8WrHcps8yC3pw6FEH80FHerA0h84m1GxmsEDrYBH1U 2JLzwundYK1XJmyh9kAaA65m5C/KDmHQKbt1hvv6yipbyZ3ebELzbaMBTP4lPQ37awcDq6h5HKBGCi t4dikQrkFGbq7u4iLCaV9/KbKjECXoUxw2lpGYN5tUFp2vZhNlOOl3ZnXJlNj3+JDEmbpsWpBoBneb Tz+r9jG98tK4qycFdPTYXrMHLN3aQJe918KJiTCqc9SadDGPdMOWrymWJDtjtoxfrfxmDQOYMU+JWZ nupRIg3yV8k2i741PnR7T3F3TtoRJPokce/4CZB0SR+E/wIliNn47zBcHikiQVSowLyUq2pG7uOERw XF65I3T5t20YANDNmwFKEHbm4TXWbm032LJ7VvsbLalEzpAdcrB9goWd+h4Jji+dANzy5+fr/SPeyF ESueU/yE/ndOHFiaqOc0lcsN2e71td7jcWOhA217gmApxZK1TtuPAJSN3Ukg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="fIXY/HxJ";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c
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

v3:
- fix typo in treewide conversion (u8 should have been __u8)
- improve changelog for DECLARE_FLEX_ARRAY patch
- add acks/reviews
v2: https://lore.kernel.org/lkml/20210826050458.1540622-1-keescook@chromium.org/
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
  stddef: Introduce DECLARE_FLEX_ARRAY() helper
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210827163015.3141722-1-keescook%40chromium.org.
