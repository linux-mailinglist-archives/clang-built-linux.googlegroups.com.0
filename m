Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBLEB6OEAMGQE2P2FXTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BA63EFECF
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 10:11:25 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id y6-20020a0568302a0600b00518b08df4d2sf600631otu.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 01:11:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629274284; cv=pass;
        d=google.com; s=arc-20160816;
        b=U+rQasy4O8vLz0Ja/4bne2bRybHQu19mLwBp6nh/mcap5hJ2D+KUkOYreo9aHcv6DD
         /ISrgCxL3V5/PC8a509bezyKReE8OmoAIpepDDjOERBELzVn9QVwS1jfQM3TpCxlhnGh
         W/RFSE3+0S4bu9sVi9gZ9w84pHbFlhEg90oZo0QUwoNR/Sz7PPgdpkx3OFqUbowY4mfe
         /Gv4966HtXCbOF9wEnb0rUZ8tlKPK6716KwefqiBUQsBSunMeP3SncsStnlIc6vIPXJv
         r8lCltrhYfEhUDreF2zdg2PLIiiBcJ8O/+L1rj+y5UD79OGWd/b0D/z8Z+8dJr+0jmNt
         iScw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cTV1MXt13xnQTi7AgmZfRq+nALW2VPkvUm9S3qZRDEo=;
        b=a7GJ1ngWb4n2r7Q+aAWhWNomW+ZPxbxvoabdaZg+LH8nbtiZrIN/BvICja8P7OeIEp
         syXdpInkAjQa8XciacUXWcpVWoPUQNahOoaU8YE4BVIG6/wIPCy1aNXaRelkvaIwD5Rh
         gl24OGx4atbIBRJ9OokHBOBQLKgtY14g+aJh4J+pjrdO3AmP0eOGLV0VhPbfZ0T+yudi
         6tWD42K5rg9jpvD5hV3sdXDJts66M3SasxQIirK6qPnAZNzo6z8W2cDUKxmYjs32YlZy
         c9MPTsoOtrrcOuwMr40DdAeUH4OaPIa2P1WXbU4au30Sf/4RyrvDC9vdDoJ+qvDqnevn
         PDkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WvNev3Oy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cTV1MXt13xnQTi7AgmZfRq+nALW2VPkvUm9S3qZRDEo=;
        b=A1Z2uDhPgyRDruPFVLufiTB4whAkXnChi7Dl7N1xzKg/nQGpPPyYhGf7Wrzf+vEVTp
         RLOehdic0UmBcri0pbJ+guXNbRMk3IsRbQ/uLLgvsz51E0O+Ar6r1PQ7T+14uIFI4lXU
         jJ01fMBaI0Rp41A+WvUo9eydFcuntOIiLhzamYj+lR9iQzBLZzSCXDRzo6VVbB1sL5dP
         OW+buHklFLQU3upNVHgkyVGuxmxWY2Wu+xBMPMTuQOlhgHrTVgmRZdNY+tEOB5J6e21n
         uf0hI69SbQ486GjuXlT4qjWjOp5jsVYDPShMvdMsuwB1/xZQIItDqD3PkhAqOR0yuWec
         BWyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cTV1MXt13xnQTi7AgmZfRq+nALW2VPkvUm9S3qZRDEo=;
        b=UbWaxhozGngR/IGwB4LM8EFVkt/I59FeiEYpErwmDv0K+paXrmOd5nHVyZplJS+nwg
         w4DLfykgtpMdvtqs0ItFPWOXZI5aoZifJS0j6g5FIxzdfK00yfTV7O6XugchCwlf9EJq
         MQpZOisPe8THkHFDdJ/yMIUYxKZPLc1H9uAgD/mAt5fYULScEiJY0PGL4V4TgZWfaIZ9
         v3wSUJhCidf6w7IRI1JEPo/7edgbGyn4v60E49PoLjwLHxiU0v1T8He1qKB5nY67Wqbx
         vFSzAx8ZwoGJRcwMCVs8r+1WzvYScoYZPSIDeOdZH26hhB31n/6zjc2a0OLncmbEteu5
         ytvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XbZ8+W6ZVJp+wwcbJfkYG+9eSzVs+wOTkXssbU8E0qU7xHtCB
	lxaEf+Lva5Ra+/RRXnESAbk=
X-Google-Smtp-Source: ABdhPJxXmFCOyjgv4UM59hZbvw1TmaIYx2poC0xGiSabAAishYv6qoLrqC6JAQMJQ4TbCM2NkAuveQ==
X-Received: by 2002:aca:4b49:: with SMTP id y70mr5928582oia.16.1629274284712;
        Wed, 18 Aug 2021 01:11:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d35a:: with SMTP id d26ls95512oos.9.gmail; Wed, 18 Aug
 2021 01:11:24 -0700 (PDT)
X-Received: by 2002:a05:6820:502:: with SMTP id m2mr5736097ooj.47.1629274283949;
        Wed, 18 Aug 2021 01:11:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629274283; cv=none;
        d=google.com; s=arc-20160816;
        b=Cv2lOtF9OCJ90Y8VtRfzGtTbPBMuEP8yDGz5oF8wZVUeiW3qX+lPYrv0rPkTI46e8Q
         yTuhKYQeAJckW/jVIwCUNPF8fl+zuRdhts21ZkhLUCd4PdMJboTRY8DpzeiJsCYRTJyS
         Jv5pwN4Pj6mOUPe0xkzx3zmy+d6nwlFtI6E1u20uQSkN1JDpT7+E5MtrUx1/J+c9fzyn
         ySlDtwwB2ejfTf99AfXDGsXNNC4owS0cmB6O6DOBgjw9fuUlf1WtmYSbLoxulyAQ5wb8
         LpZ21qi+xtm5dm/X4KkHa15lRAheWBlFUwBeriWFCXSoriqlcPmv0ec/KNflIefprH2q
         kOFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GpF0E/FgRi6qGX/LhpbMUwPUICr1VhVyZ7DJ8GUlvVk=;
        b=Nm0dLq4Z3F008os/M/ieW5tvFzpEZrOo9HyoyhUQ7tj4Se4/QgRzUSUKICSkzdVZYO
         oCiCGwkTRRSYFv6x5OP6PZjDNMi0A7SWXHXlTfDH8DssWEqp37RcFtR68Prn1bWm4I6Z
         PPcf30txC6GamcYBDtwvSjYPDIThqBWhtTb954SVhjVcLdaL0ogA9lmf2SOmtf7ipBTB
         fOHHPEz3zxXAfCIkBPbV0I8pU8dJ8K3By3Mf4P/0RNWOYlnclJfpmiiDfe15/ix+abb4
         +pzSMjcMVwD7FiL3Wce93nteS9rrT11z1GO4zXyajzve7MAIV0a52QOPkWcyNmoI0t1g
         oTqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WvNev3Oy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id bf14si362420oib.0.2021.08.18.01.11.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 01:11:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id m24-20020a17090a7f98b0290178b1a81700so1789142pjl.4
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 01:11:23 -0700 (PDT)
X-Received: by 2002:a17:902:d114:b029:12d:4202:655a with SMTP id w20-20020a170902d114b029012d4202655amr6377479plw.0.1629274283306;
        Wed, 18 Aug 2021 01:11:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c133sm5360276pfb.39.2021.08.18.01.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 01:11:21 -0700 (PDT)
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
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH 2/5] treewide: Replace open-coded flex arrays in unions
Date: Wed, 18 Aug 2021 01:11:15 -0700
Message-Id: <20210818081118.1667663-3-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818081118.1667663-1-keescook@chromium.org>
References: <20210818081118.1667663-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=12062; h=from:subject; bh=0CCkznI664JYVvRMoE3qzwUtrImx1HNe0LKH8ibyfWs=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHMCkRUrXEgtkRNrsSMCJSduhfGiaBzyFF1NfkOz5 1sgSW+CJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRzApAAKCRCJcvTf3G3AJjS0D/ 0b1LwVuUqze95mS2bSnJ7AH4aPgzU1OO2ZMuzSJFdp54NANtgs8l78GnvlaKS2+1Ucg+9SQedab8yy euPrypenPhGxTSyPMT/BKLX4a7OIafCIZRczkVbcnJs512dcNHXVnwxS+53StYdCJ/utKT9M+ljmPc zSzT3rZfunCmfYjnj0CAZ89VQD43HOQwB7OXXxnsX/Aap/kJkCVs+2vZJEsuXVMD9q2tE/xxXAMpjQ YQY2aKPlJ22s20dcW5jeOlG2uK/ReD6K1+++LZVuzl4L6nd5RKa0BuxfPwr3eGMd4nrVQ5hZzaIOCy H4hhv6MgoNJlTIWKFx8fpsBFYgvzf5xLdi8AoGExlkbYlF4wux4PBJP5NHYYQx1+npbK4+8R42Au1I Q4tBLdisBCZYCoQC9/28MjZOEjQJIKes+scxMlO7PjqQez4p+Bc4zriVjRY6jabxsVBLZnCTcojjVN OzyO87Y9aOvuJf8omcP/8KGnNDzJ7acs5VKkD+fCrj+UEim0wgCof8IdtNtt/dBWEFCOPkCIwAzClV rPM9sLwD1J7Pkck/Q4oBpil6tAoTL2OJ28j4JrFP4tF6IWHCds9bLtt1tgzp+o8uyDjFVR3NvvRNpx ZQsS9C9S0z3P7LvltwiuKbf3UzDoltBxV4HvPDQRGG0MEziUOwhNtB7FxYPQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=WvNev3Oy;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035
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
 include/uapi/rdma/rdma_user_rxe.h                 |  6 ++++--
 include/uapi/sound/asoc.h                         |  6 ++++--
 13 files changed, 56 insertions(+), 31 deletions(-)

diff --git a/drivers/crypto/chelsio/chcr_crypto.h b/drivers/crypto/chelsio/chcr_crypto.h
index e89f9e0094b4..1cadc231c6b0 100644
--- a/drivers/crypto/chelsio/chcr_crypto.h
+++ b/drivers/crypto/chelsio/chcr_crypto.h
@@ -222,8 +222,10 @@ struct chcr_authenc_ctx {
 };
 
 struct __aead_ctx {
-	struct chcr_gcm_ctx gcm[0];
-	struct chcr_authenc_ctx authenc[];
+	union {
+		flex_array(struct chcr_gcm_ctx gcm[]);
+		flex_array(struct chcr_authenc_ctx authenc[]);
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
+		flex_array(struct hmac_ctx hmacctx[]);
+		flex_array(struct ablk_ctx ablkctx[]);
+		flex_array(struct chcr_aead_ctx aeadctx[]);
+	};
 };
 
 struct chcr_context {
diff --git a/drivers/net/can/usb/etas_es58x/es581_4.h b/drivers/net/can/usb/etas_es58x/es581_4.h
index 4bc60a6df697..8657145dc2a9 100644
--- a/drivers/net/can/usb/etas_es58x/es581_4.h
+++ b/drivers/net/can/usb/etas_es58x/es581_4.h
@@ -192,7 +192,7 @@ struct es581_4_urb_cmd {
 		struct es581_4_rx_cmd_ret rx_cmd_ret;
 		__le64 timestamp;
 		u8 rx_cmd_ret_u8;
-		u8 raw_msg[0];
+		flex_array(u8 raw_msg);
 	} __packed;
 
 	__le16 reserved_for_crc16_do_not_use;
diff --git a/drivers/net/can/usb/etas_es58x/es58x_fd.h b/drivers/net/can/usb/etas_es58x/es58x_fd.h
index ee18a87e40c0..3053e0958132 100644
--- a/drivers/net/can/usb/etas_es58x/es58x_fd.h
+++ b/drivers/net/can/usb/etas_es58x/es58x_fd.h
@@ -228,7 +228,7 @@ struct es58x_fd_urb_cmd {
 		struct es58x_fd_tx_ack_msg tx_ack_msg;
 		__le64 timestamp;
 		__le32 rx_cmd_ret_le32;
-		u8 raw_msg[0];
+		flex_array(u8 raw_msg[]);
 	} __packed;
 
 	__le16 reserved_for_crc16_do_not_use;
diff --git a/drivers/net/wireless/ath/ath10k/htt.h b/drivers/net/wireless/ath/ath10k/htt.h
index ec689e3ce48a..c0729f882556 100644
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
+		flex_array(__le32 resp_ids[]);
+		flex_array(struct htt_tx_fetch_record records[]);
+	};
 } __packed;
 
 static inline void *
diff --git a/drivers/net/wireless/intel/iwlegacy/commands.h b/drivers/net/wireless/intel/iwlegacy/commands.h
index 89c6671b32bc..ec0bc534c503 100644
--- a/drivers/net/wireless/intel/iwlegacy/commands.h
+++ b/drivers/net/wireless/intel/iwlegacy/commands.h
@@ -1408,8 +1408,10 @@ struct il3945_tx_cmd {
 	 * MAC header goes here, followed by 2 bytes padding if MAC header
 	 * length is 26 or 30 bytes, followed by payload data
 	 */
-	u8 payload[0];
-	struct ieee80211_hdr hdr[];
+	union {
+		flex_array(u8 payload[]);
+		flex_array(struct ieee80211_hdr hdr[]);
+	};
 } __packed;
 
 /*
diff --git a/drivers/net/wireless/intel/iwlwifi/dvm/commands.h b/drivers/net/wireless/intel/iwlwifi/dvm/commands.h
index 235c7a2e3483..efe205929a21 100644
--- a/drivers/net/wireless/intel/iwlwifi/dvm/commands.h
+++ b/drivers/net/wireless/intel/iwlwifi/dvm/commands.h
@@ -1251,8 +1251,10 @@ struct iwl_tx_cmd {
 	 * MAC header goes here, followed by 2 bytes padding if MAC header
 	 * length is 26 or 30 bytes, followed by payload data
 	 */
-	u8 payload[0];
-	struct ieee80211_hdr hdr[];
+	union {
+		flex_array(u8 payload[]);
+		flex_array(struct ieee80211_hdr hdr[]);
+	};
 } __packed;
 
 /*
diff --git a/drivers/net/wireless/intel/iwlwifi/fw/api/tx.h b/drivers/net/wireless/intel/iwlwifi/fw/api/tx.h
index 24e4a82a55da..d183f4856220 100644
--- a/drivers/net/wireless/intel/iwlwifi/fw/api/tx.h
+++ b/drivers/net/wireless/intel/iwlwifi/fw/api/tx.h
@@ -713,8 +713,10 @@ struct iwl_mvm_compressed_ba_notif {
 	__le32 tx_rate;
 	__le16 tfd_cnt;
 	__le16 ra_tid_cnt;
-	struct iwl_mvm_compressed_ba_ratid ra_tid[0];
-	struct iwl_mvm_compressed_ba_tfd tfd[];
+	union {
+		flex_array(struct iwl_mvm_compressed_ba_ratid ra_tid[]);
+		flex_array(struct iwl_mvm_compressed_ba_tfd tfd[]);
+	};
 } __packed; /* COMPRESSED_BA_RES_API_S_VER_4 */
 
 /**
diff --git a/drivers/scsi/aic94xx/aic94xx_sds.c b/drivers/scsi/aic94xx/aic94xx_sds.c
index 46815e65f7a4..ae20b855d449 100644
--- a/drivers/scsi/aic94xx/aic94xx_sds.c
+++ b/drivers/scsi/aic94xx/aic94xx_sds.c
@@ -517,8 +517,10 @@ struct asd_ms_conn_map {
 	u8    num_nodes;
 	u8    usage_model_id;
 	u32   _resvd;
-	struct asd_ms_conn_desc conn_desc[0];
-	struct asd_ms_node_desc node_desc[];
+	union {
+		flex_array(struct asd_ms_conn_desc conn_desc[]);
+		flex_array(struct asd_ms_node_desc node_desc[]);
+	};
 } __attribute__ ((packed));
 
 struct asd_ctrla_phy_entry {
diff --git a/fs/hpfs/hpfs.h b/fs/hpfs/hpfs.h
index d92c4af3e1b4..ee26c85d57a7 100644
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
+	flex_array(struct bplus_internal_node internal[]);
+	/* (external) 3-word entries giving sector runs */
+	flex_array(struct bplus_leaf_node external[]);
   } u;
 };
 
diff --git a/include/linux/filter.h b/include/linux/filter.h
index 1797e8506929..6c41c03b791c 100644
--- a/include/linux/filter.h
+++ b/include/linux/filter.h
@@ -588,8 +588,10 @@ struct bpf_prog {
 	struct bpf_prog_aux	*aux;		/* Auxiliary fields */
 	struct sock_fprog_kern	*orig_prog;	/* Original BPF program */
 	/* Instructions for interpreter */
-	struct sock_filter	insns[0];
-	struct bpf_insn		insnsi[];
+	union {
+		flex_array(struct sock_filter	insns[]);
+		flex_array(struct bpf_insn	insnsi[]);
+	};
 };
 
 struct sk_filter {
diff --git a/include/scsi/sas.h b/include/scsi/sas.h
index 4726c1bbec65..67c63a87602f 100644
--- a/include/scsi/sas.h
+++ b/include/scsi/sas.h
@@ -323,8 +323,10 @@ struct ssp_response_iu {
 	__be32 sense_data_len;
 	__be32 response_data_len;
 
-	u8     resp_data[0];
-	u8     sense_data[];
+	union {
+		flex_array(u8     resp_data[]);
+		flex_array(u8     sense_data[]);
+	};
 } __attribute__ ((packed));
 
 struct ssp_command_iu {
@@ -554,8 +556,10 @@ struct ssp_response_iu {
 	__be32 sense_data_len;
 	__be32 response_data_len;
 
-	u8     resp_data[0];
-	u8     sense_data[];
+	union {
+		flex_array(u8     resp_data[]);
+		flex_array(u8     sense_data[]);
+	};
 } __attribute__ ((packed));
 
 struct ssp_command_iu {
diff --git a/include/uapi/rdma/rdma_user_rxe.h b/include/uapi/rdma/rdma_user_rxe.h
index e283c2220aba..fb63de88423b 100644
--- a/include/uapi/rdma/rdma_user_rxe.h
+++ b/include/uapi/rdma/rdma_user_rxe.h
@@ -141,8 +141,10 @@ struct rxe_dma_info {
 	__u32			sge_offset;
 	__u32			reserved;
 	union {
-		__u8		inline_data[0];
-		struct rxe_sge	sge[0];
+		__flex_array(__fa1,
+			     __u8 inline_data[]);
+		__flex_array(__fa2,
+			     struct rxe_sge sge[]);
 	};
 };
 
diff --git a/include/uapi/sound/asoc.h b/include/uapi/sound/asoc.h
index da61398b1f8f..aa4e9dd94d29 100644
--- a/include/uapi/sound/asoc.h
+++ b/include/uapi/sound/asoc.h
@@ -240,8 +240,10 @@ struct snd_soc_tplg_vendor_array {
 struct snd_soc_tplg_private {
 	__le32 size;	/* in bytes of private data */
 	union {
-		char data[0];
-		struct snd_soc_tplg_vendor_array array[0];
+		__flex_array(__fa1,
+			     char data[]);
+		__flex_array(__fa2,
+			     struct snd_soc_tplg_vendor_array array[]);
 	};
 } __attribute__((packed));
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818081118.1667663-3-keescook%40chromium.org.
