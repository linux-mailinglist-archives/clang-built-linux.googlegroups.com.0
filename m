Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAGCTSEQMGQEEO4YMUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9126C3F81DA
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 07:05:05 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id h135-20020a379e8d000000b003f64b0f4865sf1201028qke.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 22:05:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629954304; cv=pass;
        d=google.com; s=arc-20160816;
        b=lrLHuP4UdBkoEqS2/VTEbni66KEPbjlwXwn8wkTVLMUc3ayJNLOvE+4pBPWwSgwupg
         I4C4twRH9lMW1ELBfa6UsmsFXGI0dJB6KS5d/ki+kArIGFDBKi2I66foeZXvsKuh0tnA
         0xtURBIWAJ/+itITQOhhe6xFLEcdU8fDgmDkNYvSOs2fc5u0dDycs/Iy+TZGYsZqHvk1
         Gtk0ryzsFQjekka3XhOAQKgizYbwD1ZLAXBSG6Ux2pZFaIinubOUScJMiD+aQmKgXunJ
         Na/rRJyTagbDO5lAlbkvA8VRfoRmvw94vsIOvDLMs+zQHgtmZsKjN7HBEYtE543zauEF
         GXLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6e5qpDl1hlCdCzGEpbIR/jKSoCMPNMh8EV8kTJalka8=;
        b=bCq9F1TzW1pXQjHOXVrkIIrAEVwYjvWf+5gKxPNOA7AyuN1REvTz37rk3SJMkS6e+S
         WFOUvmroy2qe2ZK5X357O0OcJCBH9lUyvBP2wZtNL3nJGRjHbvMQJY+F1IzyHSmL9eed
         +gVnPzKVETmEZyKvlIO/9/ydjHlKhzABa2HlCogHC59wuQsHQaxcIpvUGMkr1XSoub2B
         iOIYTgF57Jj3uTzWdqLzCr0nU2AcufHBdDPvUHUZwmqczSIHtrp3PgrzDnPDdvT4w9Yp
         th7e2shf2wIB4CAdKGhxm2/WgcURiMsH20grJbBkGJEmK7YSaZGhbSjgOb30bqApADnI
         m19A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Jaa0OsO5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6e5qpDl1hlCdCzGEpbIR/jKSoCMPNMh8EV8kTJalka8=;
        b=VXpEKATVz05iVNPMKWxpKSh4QxpXRUU47U0Qu1aQwwCj9be2joFUIS1PEnLvseXRiP
         A3RrqT3N2rsCtvkDC5yidy0p6c70d5+Px7LNYH+hneMpUeAn7LMjjRixuhSq7PL9FTZx
         8LegYEipg7dPOHtAkMRT/wyt4NW/33mT6GZ1431ucJdCS8mlxTWLGrANswyGpi9D+FEv
         km5dMU4TL8+QRSf5Sz2nHz2p9rK4xAt6DJFIuYjYEDan6OmJSH7ErEYpiKGVbfv7Uauz
         v+i2LAvbvwgwYhWOrbmtYocc9UGj5bBsDzzJFG7FPQfORJ7PHfEbOK4Kcfmaqfe3VT4Q
         4+cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6e5qpDl1hlCdCzGEpbIR/jKSoCMPNMh8EV8kTJalka8=;
        b=XNylZBqGTGkJILBEWe5T3LkBWKSJXrW2rB3SJdNR5hLL6sFIrXs7Q6Jdnd0XPhF5Y3
         q2/ynBGG8iQYdQr6Nb2URlkxicKTE2pyr8vxPSnVKanEdYb7WPdz3e0UZpTVIZITaZhd
         VEYSVPKiKX3McR2N8zsZuAWDjIyK7F6G6wU7ZTy0UssAFhk8cEKYG2nCydpjnkFodJUW
         O7tynbr4QLtV0zw+DkmIkd4vg8z671ShZhS0AJzFxPHN7Ii7TAS1K0MoA7GdDyjDNUYj
         USFY6drOpY9oHNxXGwT78hUqO7GZAY17ZAMAgYtJnXk40wuXWKlGDfWjezr4MNVTaKV+
         t3LA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GAJk7WzDgLFiPJbZ5YRU473venZgNd6VHYOwHQm8X+oohHmfP
	dH2fYJ7D9n9wXVQjlI+QLVw=
X-Google-Smtp-Source: ABdhPJxKUyrfYB5FpplRnXQLJ3QVF8i7DFvgJjVMbiCfbwcN6eViHw3+HYRsPJX96H+7n/Hm4S4fow==
X-Received: by 2002:ad4:4f32:: with SMTP id fc18mr2161305qvb.3.1629954304679;
        Wed, 25 Aug 2021 22:05:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:20e5:: with SMTP id 5ls1370717qvk.10.gmail; Wed, 25
 Aug 2021 22:05:04 -0700 (PDT)
X-Received: by 2002:a0c:e2d1:: with SMTP id t17mr2297860qvl.56.1629954304259;
        Wed, 25 Aug 2021 22:05:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629954304; cv=none;
        d=google.com; s=arc-20160816;
        b=D18prihjovFP54Oiib0btRPs9HnRCt4gAZSRew2J1L4a535EvHGnLkj0YyoPlr64mu
         C+wgGCkGGBPSPnAM44twTWJ+CFx4nQguS1dyN4JU3q/xl/IOY9BoE0qkgl3DAI9HcBYT
         3Bv7crMebMump9USZR5bwGVY800cgfq4rx18ypWvSvekMnuWxvyyRFBZx29Bxeo3ZSVG
         weqqH9XcZr7aTnYz7aQfmGvDBX6k8icmunn0cQUsXIUhOLcLtJQVxi9biUYbZyp1SX/3
         LTWmd+X5X8EuCvjeDeLzPu1SGls/OHqaeKjscGEUXH8Z9UKroo5Lv5pYbBM635DvF/je
         Uhuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZSgFy57aU31YAE4YjuonHLTOTN+opVUhkqzU115GN7k=;
        b=n2ew/LE6bPwJnA+YXTiY6D2uD99qAfGSjknGryergDoe8OkOlWY9DkAxqCKO7ooEB2
         iBX7plnswA0ZWOX1n5SgtwLw2odxEeQHXqVeQTc9/gp0SsnUNKVnsFhvLzeX3OB98DyF
         62/+AIlDW+wxuzgzeKeeR/fU1GG5WO45i0M4dtzyTuggLainNZeacYKT0zS69WpHPwJk
         LQpjbm6uExzVwGEEdyYFIYaV+fKa/qNT5RJ/qjq4rtHjn4k83UoFP2ojhVnmuG8I6xpt
         YmKIOT6qd3g6gc3URGsABs4tNzNWKQ825ZyzhvOzxxz17qm+17trNBJo+YyqOzsUcvDG
         82NQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Jaa0OsO5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id d201si127071qkg.4.2021.08.25.22.05.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 22:05:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Received: by mail-pg1-x52f.google.com with SMTP id q68so2049019pga.9
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 22:05:04 -0700 (PDT)
X-Received: by 2002:a63:ed50:: with SMTP id m16mr1716378pgk.231.1629954303366;
        Wed, 25 Aug 2021 22:05:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g14sm1330326pfr.31.2021.08.25.22.05.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 22:05:00 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Ayush Sawal <ayush.sawal@chelsio.com>,
	Vinay Kumar Yadav <vinay.yadav@chelsio.com>,
	Rohit Maheshwari <rohitm@chelsio.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Kalle Valo <kvalo@codeaurora.org>,
	Jakub Kicinski <kuba@kernel.org>,
	Stanislaw Gruszka <stf_xl@wp.pl>,
	Luca Coelho <luciano.coelho@intel.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Johannes Berg <johannes.berg@intel.com>,
	Mordechay Goodstein <mordechay.goodstein@intel.com>,
	Lee Jones <lee.jones@linaro.org>,
	Wolfgang Grandegger <wg@grandegger.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Arunachalam Santhanam <arunachalam.santhanam@in.bosch.com>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
	linux-crypto@vger.kernel.org,
	ath10k@lists.infradead.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-can@vger.kernel.org,
	bpf@vger.kernel.org,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 2/5] treewide: Replace open-coded flex arrays in unions
Date: Wed, 25 Aug 2021 22:04:55 -0700
Message-Id: <20210826050458.1540622-3-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210826050458.1540622-1-keescook@chromium.org>
References: <20210826050458.1540622-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=12175; h=from:subject; bh=8yrZikuHYRUCJy7aFbsFeoitUA6PG80HcXIsUEETpA0=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhJyD5HYHBqTFRtgMP92ux+bJ3ZZ3k5eNX2+Qj2FAM kHlY8AqJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYScg+QAKCRCJcvTf3G3AJjuQEA CtEauy4ZDh80JsPAya4mLNjdFzLZWYCR9RimW/Z8oniFQ9T8iG+nLmrYdtIzut03o6dJFTEyPIrw9J gerKm0uFi5AS1HPVoldFywhjEpjE/X+RXg6Fa5F1aFkzPKD+2TzbEHAA9YyZJEHfQbgkSOg+ldQhxA 5omNx7q/Eho7+bXC5DNYQXo3u/lf1xoxy7YbtEZSJP3JQeS7zTi2e+5acYDyb8ZarRLPAVcXEeGSo2 Y2RH2r8nw1l87B/Bomi7buM+WWs5ng6xk3/zDFNvei6ZHjxSpzhlg2aoYuZ2BTUEY8A3abrtOqVe4g z5oIQfcjXDekjtrD6Uw9n66iIwkl2FXQ9mY1hp/0Cqh7Ma0gcFZKSUtx6LjGxbnXekgx2Ub8l8RRRt b4IIsYHhzgKV8Y12zdD12tY7KInEVRqJ1DRQep8j43qEq/LFuIIAg8TIBueMiEvnRUWUYm1MfOJePv GfAQvTNhr8lK+U0GHkdWEN4qscV4M99BJ6lR8ogbi7Yxzyk7PQCLqnuN9e/oeptt/NuuE0iBmB5Sqq 3+VVfB+JFQayZq5yatctWiKohRhU0GSHBzFLkx8WZezSYcamJmnl4OAiC4qu8hfyGC3BHGmhNIOFc9 Q0WjeM7VmIZxZCE06me6i5wXlJBAkk+E1Ce4Os0AUkssDmYdWi4hS4F96KGg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Jaa0OsO5;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f
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

In support of enabling -Warray-bounds and -Wzero-length-bounds and
correctly handling run-time memcpy() bounds checking, replace all
open-coded flexible arrays (i.e. 0-element arrays) in unions with the
flex_array() helper macro.

This fixes warnings such as:

fs/hpfs/anode.c: In function 'hpfs_add_sector_to_btree':
fs/hpfs/anode.c:209:27: warning: array subscript 0 is outside the bounds of an interior zero-length array 'struct bplus_internal_node[0]' [-Wzero-length-bounds]
  209 |    anode->btree.u.internal[0].down = cpu_to_le32(a);
      |    ~~~~~~~~~~~~~~~~~~~~~~~^~~
In file included from fs/hpfs/hpfs_fn.h:26,
                 from fs/hpfs/anode.c:10:
fs/hpfs/hpfs.h:412:32: note: while referencing 'internal'
  412 |     struct bplus_internal_node internal[0]; /* (internal) 2-word entries giving
      |                                ^~~~~~~~

drivers/net/can/usb/etas_es58x/es58x_fd.c: In function 'es58x_fd_tx_can_msg':
drivers/net/can/usb/etas_es58x/es58x_fd.c:360:35: warning: array subscript 65535 is outside the bounds of an interior zero-length array 'u8[0]' {aka 'unsigned char[]'} [-Wzero-length-bounds]
  360 |  tx_can_msg = (typeof(tx_can_msg))&es58x_fd_urb_cmd->raw_msg[msg_len];
      |                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from drivers/net/can/usb/etas_es58x/es58x_core.h:22,
                 from drivers/net/can/usb/etas_es58x/es58x_fd.c:17:
drivers/net/can/usb/etas_es58x/es58x_fd.h:231:6: note: while referencing 'raw_msg'
  231 |   u8 raw_msg[0];
      |      ^~~~~~~

Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Ayush Sawal <ayush.sawal@chelsio.com>
Cc: Vinay Kumar Yadav <vinay.yadav@chelsio.com>
Cc: Rohit Maheshwari <rohitm@chelsio.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Stanislaw Gruszka <stf_xl@wp.pl>
Cc: Luca Coelho <luciano.coelho@intel.com>
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Daniel Borkmann <daniel@iogearbox.net>
Cc: Andrii Nakryiko <andrii@kernel.org>
Cc: Martin KaFai Lau <kafai@fb.com>
Cc: Song Liu <songliubraving@fb.com>
Cc: Yonghong Song <yhs@fb.com>
Cc: John Fastabend <john.fastabend@gmail.com>
Cc: KP Singh <kpsingh@kernel.org>
Cc: Johannes Berg <johannes.berg@intel.com>
Cc: Mordechay Goodstein <mordechay.goodstein@intel.com>
Cc: Lee Jones <lee.jones@linaro.org>
Cc: Wolfgang Grandegger <wg@grandegger.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Arunachalam Santhanam <arunachalam.santhanam@in.bosch.com>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Cc: Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>
Cc: linux-crypto@vger.kernel.org
Cc: ath10k@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
Cc: netdev@vger.kernel.org
Cc: linux-scsi@vger.kernel.org
Cc: linux-can@vger.kernel.org
Cc: bpf@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/crypto/chelsio/chcr_crypto.h              | 14 +++++++++-----
 drivers/net/can/usb/etas_es58x/es581_4.h          |  2 +-
 drivers/net/can/usb/etas_es58x/es58x_fd.h         |  2 +-
 drivers/net/wireless/ath/ath10k/htt.h             |  7 +++++--
 drivers/net/wireless/intel/iwlegacy/commands.h    |  6 ++++--
 drivers/net/wireless/intel/iwlwifi/dvm/commands.h |  6 ++++--
 drivers/net/wireless/intel/iwlwifi/fw/api/tx.h    |  6 ++++--
 drivers/scsi/aic94xx/aic94xx_sds.c                |  6 ++++--
 fs/hpfs/hpfs.h                                    |  8 ++++----
 include/linux/filter.h                            |  6 ++++--
 include/scsi/sas.h                                | 12 ++++++++----
 include/uapi/rdma/rdma_user_rxe.h                 |  4 ++--
 include/uapi/sound/asoc.h                         |  4 ++--
 13 files changed, 52 insertions(+), 31 deletions(-)

diff --git a/drivers/crypto/chelsio/chcr_crypto.h b/drivers/crypto/chelsio/chcr_crypto.h
index e89f9e0094b4..c7816c83e324 100644
--- a/drivers/crypto/chelsio/chcr_crypto.h
+++ b/drivers/crypto/chelsio/chcr_crypto.h
@@ -222,8 +222,10 @@ struct chcr_authenc_ctx {
 };
 
 struct __aead_ctx {
-	struct chcr_gcm_ctx gcm[0];
-	struct chcr_authenc_ctx authenc[];
+	union {
+		DECLARE_FLEX_ARRAY(struct chcr_gcm_ctx, gcm);
+		DECLARE_FLEX_ARRAY(struct chcr_authenc_ctx, authenc);
+	};
 };
 
 struct chcr_aead_ctx {
@@ -245,9 +247,11 @@ struct hmac_ctx {
 };
 
 struct __crypto_ctx {
-	struct hmac_ctx hmacctx[0];
-	struct ablk_ctx ablkctx[0];
-	struct chcr_aead_ctx aeadctx[];
+	union {
+		DECLARE_FLEX_ARRAY(struct hmac_ctx, hmacctx);
+		DECLARE_FLEX_ARRAY(struct ablk_ctx, ablkctx);
+		DECLARE_FLEX_ARRAY(struct chcr_aead_ctx, aeadctx);
+	};
 };
 
 struct chcr_context {
diff --git a/drivers/net/can/usb/etas_es58x/es581_4.h b/drivers/net/can/usb/etas_es58x/es581_4.h
index 4bc60a6df697..667ecb77168c 100644
--- a/drivers/net/can/usb/etas_es58x/es581_4.h
+++ b/drivers/net/can/usb/etas_es58x/es581_4.h
@@ -192,7 +192,7 @@ struct es581_4_urb_cmd {
 		struct es581_4_rx_cmd_ret rx_cmd_ret;
 		__le64 timestamp;
 		u8 rx_cmd_ret_u8;
-		u8 raw_msg[0];
+		DECLARE_FLEX_ARRAY(u8, raw_msg);
 	} __packed;
 
 	__le16 reserved_for_crc16_do_not_use;
diff --git a/drivers/net/can/usb/etas_es58x/es58x_fd.h b/drivers/net/can/usb/etas_es58x/es58x_fd.h
index ee18a87e40c0..e33003f96e5e 100644
--- a/drivers/net/can/usb/etas_es58x/es58x_fd.h
+++ b/drivers/net/can/usb/etas_es58x/es58x_fd.h
@@ -228,7 +228,7 @@ struct es58x_fd_urb_cmd {
 		struct es58x_fd_tx_ack_msg tx_ack_msg;
 		__le64 timestamp;
 		__le32 rx_cmd_ret_le32;
-		u8 raw_msg[0];
+		DECLARE_FLEX_ARRAY(u8, raw_msg);
 	} __packed;
 
 	__le16 reserved_for_crc16_do_not_use;
diff --git a/drivers/net/wireless/ath/ath10k/htt.h b/drivers/net/wireless/ath/ath10k/htt.h
index ec689e3ce48a..a6de08d3bf4a 100644
--- a/drivers/net/wireless/ath/ath10k/htt.h
+++ b/drivers/net/wireless/ath/ath10k/htt.h
@@ -1674,8 +1674,11 @@ struct htt_tx_fetch_ind {
 	__le32 token;
 	__le16 num_resp_ids;
 	__le16 num_records;
-	__le32 resp_ids[0]; /* ath10k_htt_get_tx_fetch_ind_resp_ids() */
-	struct htt_tx_fetch_record records[];
+	union {
+		/* ath10k_htt_get_tx_fetch_ind_resp_ids() */
+		DECLARE_FLEX_ARRAY(__le32, resp_ids);
+		DECLARE_FLEX_ARRAY(struct htt_tx_fetch_record, records);
+	};
 } __packed;
 
 static inline void *
diff --git a/drivers/net/wireless/intel/iwlegacy/commands.h b/drivers/net/wireless/intel/iwlegacy/commands.h
index 89c6671b32bc..4a97310f8fee 100644
--- a/drivers/net/wireless/intel/iwlegacy/commands.h
+++ b/drivers/net/wireless/intel/iwlegacy/commands.h
@@ -1408,8 +1408,10 @@ struct il3945_tx_cmd {
 	 * MAC header goes here, followed by 2 bytes padding if MAC header
 	 * length is 26 or 30 bytes, followed by payload data
 	 */
-	u8 payload[0];
-	struct ieee80211_hdr hdr[];
+	union {
+		DECLARE_FLEX_ARRAY(u8, payload);
+		DECLARE_FLEX_ARRAY(struct ieee80211_hdr, hdr);
+	};
 } __packed;
 
 /*
diff --git a/drivers/net/wireless/intel/iwlwifi/dvm/commands.h b/drivers/net/wireless/intel/iwlwifi/dvm/commands.h
index 235c7a2e3483..75a4b8e26232 100644
--- a/drivers/net/wireless/intel/iwlwifi/dvm/commands.h
+++ b/drivers/net/wireless/intel/iwlwifi/dvm/commands.h
@@ -1251,8 +1251,10 @@ struct iwl_tx_cmd {
 	 * MAC header goes here, followed by 2 bytes padding if MAC header
 	 * length is 26 or 30 bytes, followed by payload data
 	 */
-	u8 payload[0];
-	struct ieee80211_hdr hdr[];
+	union {
+		DECLARE_FLEX_ARRAY(u8, payload);
+		DECLARE_FLEX_ARRAY(struct ieee80211_hdr, hdr);
+	};
 } __packed;
 
 /*
diff --git a/drivers/net/wireless/intel/iwlwifi/fw/api/tx.h b/drivers/net/wireless/intel/iwlwifi/fw/api/tx.h
index 24e4a82a55da..66c5487e857e 100644
--- a/drivers/net/wireless/intel/iwlwifi/fw/api/tx.h
+++ b/drivers/net/wireless/intel/iwlwifi/fw/api/tx.h
@@ -713,8 +713,10 @@ struct iwl_mvm_compressed_ba_notif {
 	__le32 tx_rate;
 	__le16 tfd_cnt;
 	__le16 ra_tid_cnt;
-	struct iwl_mvm_compressed_ba_ratid ra_tid[0];
-	struct iwl_mvm_compressed_ba_tfd tfd[];
+	union {
+		DECLARE_FLEX_ARRAY(struct iwl_mvm_compressed_ba_ratid, ra_tid);
+		DECLARE_FLEX_ARRAY(struct iwl_mvm_compressed_ba_tfd, tfd);
+	};
 } __packed; /* COMPRESSED_BA_RES_API_S_VER_4 */
 
 /**
diff --git a/drivers/scsi/aic94xx/aic94xx_sds.c b/drivers/scsi/aic94xx/aic94xx_sds.c
index 46815e65f7a4..5def83c88f13 100644
--- a/drivers/scsi/aic94xx/aic94xx_sds.c
+++ b/drivers/scsi/aic94xx/aic94xx_sds.c
@@ -517,8 +517,10 @@ struct asd_ms_conn_map {
 	u8    num_nodes;
 	u8    usage_model_id;
 	u32   _resvd;
-	struct asd_ms_conn_desc conn_desc[0];
-	struct asd_ms_node_desc node_desc[];
+	union {
+		DECLARE_FLEX_ARRAY(struct asd_ms_conn_desc, conn_desc);
+		DECLARE_FLEX_ARRAY(struct asd_ms_node_desc, node_desc);
+	};
 } __attribute__ ((packed));
 
 struct asd_ctrla_phy_entry {
diff --git a/fs/hpfs/hpfs.h b/fs/hpfs/hpfs.h
index d92c4af3e1b4..281dec8f636b 100644
--- a/fs/hpfs/hpfs.h
+++ b/fs/hpfs/hpfs.h
@@ -409,10 +409,10 @@ struct bplus_header
   __le16 first_free;			/* offset from start of header to
 					   first free node in array */
   union {
-    struct bplus_internal_node internal[0]; /* (internal) 2-word entries giving
-					       subtree pointers */
-    struct bplus_leaf_node external[0];	    /* (external) 3-word entries giving
-					       sector runs */
+	/* (internal) 2-word entries giving subtree pointers */
+	DECLARE_FLEX_ARRAY(struct bplus_internal_node, internal);
+	/* (external) 3-word entries giving sector runs */
+	DECLARE_FLEX_ARRAY(struct bplus_leaf_node, external);
   } u;
 };
 
diff --git a/include/linux/filter.h b/include/linux/filter.h
index 472f97074da0..5ca52bfa5868 100644
--- a/include/linux/filter.h
+++ b/include/linux/filter.h
@@ -572,8 +572,10 @@ struct bpf_prog {
 	struct bpf_prog_aux	*aux;		/* Auxiliary fields */
 	struct sock_fprog_kern	*orig_prog;	/* Original BPF program */
 	/* Instructions for interpreter */
-	struct sock_filter	insns[0];
-	struct bpf_insn		insnsi[];
+	union {
+		DECLARE_FLEX_ARRAY(struct sock_filter, insns);
+		DECLARE_FLEX_ARRAY(struct bpf_insn, insnsi);
+	};
 };
 
 struct sk_filter {
diff --git a/include/scsi/sas.h b/include/scsi/sas.h
index 4726c1bbec65..64154c1fed02 100644
--- a/include/scsi/sas.h
+++ b/include/scsi/sas.h
@@ -323,8 +323,10 @@ struct ssp_response_iu {
 	__be32 sense_data_len;
 	__be32 response_data_len;
 
-	u8     resp_data[0];
-	u8     sense_data[];
+	union {
+		DECLARE_FLEX_ARRAY(u8, resp_data);
+		DECLARE_FLEX_ARRAY(u8, sense_data);
+	};
 } __attribute__ ((packed));
 
 struct ssp_command_iu {
@@ -554,8 +556,10 @@ struct ssp_response_iu {
 	__be32 sense_data_len;
 	__be32 response_data_len;
 
-	u8     resp_data[0];
-	u8     sense_data[];
+	union {
+		DECLARE_FLEX_ARRAY(u8, resp_data);
+		DECLARE_FLEX_ARRAY(u8, sense_data);
+	};
 } __attribute__ ((packed));
 
 struct ssp_command_iu {
diff --git a/include/uapi/rdma/rdma_user_rxe.h b/include/uapi/rdma/rdma_user_rxe.h
index e283c2220aba..040752c99ec9 100644
--- a/include/uapi/rdma/rdma_user_rxe.h
+++ b/include/uapi/rdma/rdma_user_rxe.h
@@ -141,8 +141,8 @@ struct rxe_dma_info {
 	__u32			sge_offset;
 	__u32			reserved;
 	union {
-		__u8		inline_data[0];
-		struct rxe_sge	sge[0];
+		__DECLARE_FLEX_ARRAY(u8, inline_data);
+		__DECLARE_FLEX_ARRAY(struct rxe_sge, sge);
 	};
 };
 
diff --git a/include/uapi/sound/asoc.h b/include/uapi/sound/asoc.h
index da61398b1f8f..053949287ce8 100644
--- a/include/uapi/sound/asoc.h
+++ b/include/uapi/sound/asoc.h
@@ -240,8 +240,8 @@ struct snd_soc_tplg_vendor_array {
 struct snd_soc_tplg_private {
 	__le32 size;	/* in bytes of private data */
 	union {
-		char data[0];
-		struct snd_soc_tplg_vendor_array array[0];
+		__DECLARE_FLEX_ARRAY(char, data);
+		__DECLARE_FLEX_ARRAY(struct snd_soc_tplg_vendor_array, array);
 	};
 } __attribute__((packed));
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210826050458.1540622-3-keescook%40chromium.org.
