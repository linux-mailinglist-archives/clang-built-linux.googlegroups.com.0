Return-Path: <clang-built-linux+bncBDOLNZMBXEEBBCEJTWEQMGQENNO5RLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id BE25D3F832B
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 09:36:41 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id w28-20020a2e161c000000b001ba14fc0cd4sf774912ljd.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 00:36:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629963401; cv=pass;
        d=google.com; s=arc-20160816;
        b=x2y7yARhtpqLq7BuJ+IcvzR4QREVhCI7Xj8vyg4DXfa1A1355dh7+5BH5qONeXybPo
         5DcO07GSNooePqdMcPICrR98A5C1KkN9PSIBZZjByRSLnSNCk+VzXb2KJ9wM7+uiLJtM
         SCar+JX+0inOFDKQdBIvtBe8OfcbyUtTjzZyHbJ8OLGUMdVJDjoaN0pQP5UBJvXI0idX
         dvIsmQx74tJLG3/74wlXlzmw9UsNMqna9mdTcOwX3fs7TSOGOlP6vyKIULmRgk2DRQO6
         BAU3/+yu9Pzz+jVp9NVfiVDfIvHKspXtOn0hleZ9YAYY1nro/MoREUp+K1TLIQaz3Oju
         GFvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=9Ff4A7OnvPErT81EaTfyl6NIyOKMK6dCv1yLQCd4yCk=;
        b=b6QgOA27xfLR8Xv78Abk/HJj9LsOzgI7YEOBoetQyHtKE70M0HbWtHuv54M7Ua214w
         rhkVl7NfZFyavKcYhYe90TxEyFhTMeUaWnFPZ+nSRYHita5S2pR7p4FDW2XCbz93IhGk
         cRpHFK/t5Rtz3ZYsO1v7ltdAJVOzbnIuWonyn5+XRWYHQF+d1/PCB1xv7Ww7arZlgtKk
         PjAeBzsiVzj2vZFeAOKPTXkAV4BtIYzukd7dt1ZIvkioqkq3EGhNGZFm4KwvYjJ1P24A
         SClyYJNIzhzSBeNVgWSmIrxS9EN5PvM0I3tqsVBpH464c5sRq7rH7FPgp8SApKCqqSLo
         Sg4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincent.mailhol@gmail.com designates 209.85.208.177 as permitted sender) smtp.mailfrom=vincent.mailhol@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Ff4A7OnvPErT81EaTfyl6NIyOKMK6dCv1yLQCd4yCk=;
        b=AGE7IdDwi+a2ug5DkuOMkOWMgYO06iRH5/Stctlaf14hvPTsL1hYGlxJANcMngmQqV
         qoB1cGY12WqyJrjoK2OaXGtVonDgmjDeoh4v93cYcBorQVbF1E6TYZBM9gffXnRp1DrL
         xE0W2MMqJ5f2sOV9B0h+ijpEyvEa4eQb2m7PhUkzvo/ZtJuu0/QYqOLu5XFUUDVngDPL
         gavxj827fdEWUoyG7JVDUyFgRfMgGa6YDSDJ19pa2ARGC6g9VeDW1J/WvuWA7EjahwHh
         KoSMeV7AfnCxukbKN8APthiVOchmS0RE+GEheyGA8j246vttv/gce39QVA3JSync6tfO
         UkAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Ff4A7OnvPErT81EaTfyl6NIyOKMK6dCv1yLQCd4yCk=;
        b=MDOAQJhW8CA/zZswbkWiZDNJZdA6lm4XQXPYQWDxL7bBAzzGOeft3lBIiP0jdaa/LG
         0f/KgJ83JeAohD5CSjOzqFBjcdXQgm2PeZzlqo1fkqqAdfQhYd4M7kuZjwiaSNreDwzQ
         Ze1CSATi8PBJmYCilSxnySrdEfiPsgql2njskgfZjxgJo8UIjOaZvFpNBluEGDITFxI+
         0LThK33qkwW2ZUR/Cb/15yuXsQdzig8X2VyhUqCNryYLFhF/8Z4FIpwWeSc02zN9qIFS
         OfRRGLfgl0J/lQ1ho/lUW/D+NfZ5GQ6vYzQICnV47naXb8ggbbIYl6jGl6+p2qzlzQTs
         FumQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533SosE72RqaIZEpvRQloIyugdsst67ILSyXeZt1Kry/eHnvxN37
	hp2OQ4ioFgCoZ6jrxxifyeU=
X-Google-Smtp-Source: ABdhPJwftIzzSqcYOVnq+S+YQ6Mo3xSb6phxtpAHZKlSS+7H7W/AyNcxRH955UjTGX/I6Xzu7if7jA==
X-Received: by 2002:a2e:585a:: with SMTP id x26mr1869831ljd.132.1629963401246;
        Thu, 26 Aug 2021 00:36:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls911225ljf.7.gmail; Thu, 26 Aug
 2021 00:36:39 -0700 (PDT)
X-Received: by 2002:a2e:b542:: with SMTP id a2mr1893254ljn.322.1629963399879;
        Thu, 26 Aug 2021 00:36:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629963399; cv=none;
        d=google.com; s=arc-20160816;
        b=KnNMJG+BnzXAEEHcdXjoA3LtfDMeg4Xf7j3M6fI6NwC1kyWNQ51A2iXd1XR/3u6H/C
         LmniQIe8BVGRtBTx/m7BU607gjxExODLgsYgCKWj5Tn4EXSeTAEHk8eMcp0kGJNf97SV
         iY57H/fRl4IfxqBPVCZ0H7NBPYn7uLfIv5aeQSvzaczku7sKoUYBVW7Wnw0eC2DhKK6J
         WCcpDINq6LcdmWcFczSVtsj0rA03HOCwfRVjJRdVLsTYZi4hAQ4CxZiZPiEzn3SSDX98
         +bRFDymI5f4VsQz6lhHRdVcmptDR8zFz28p7ypYq2Ik1QhRQb9MglmhuIOhJtcCdlWZF
         AD+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=HnjLxhUNIWZvkLUKzMIl5VOMjiHDtN+g+OZIODPZSWw=;
        b=0w5NoyYktgfpuOhat9Qk1gDq0mwKXbRzSe++Bt9YgoIPTVubTdPgOQVCYB7nQ7QYeJ
         CWMolcg9as6ZFthMlJen58BpKhit79zx1G7zt4yeR77dL1B5h64o0kNDLOEzhCM/+cvZ
         4+WNrzpUPkJzLRdKI+IramLyXeSB3mw5QmJbcSJ6e40h7oAq6Q902QivWBI8RMu+LanY
         Kiu6/qqc9M3MOICwht5kPgB0oh8mbJwUQTFF6zPtIS8cxVCvA14o2XX1N42CUoKeKntt
         Wbq6qO9YVP1/Rdt4e4A8ppAkQRbNqVKDnQ12ANtWjJ1MAV/MryHjqkYlJkRBTMd5SPfs
         F7xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincent.mailhol@gmail.com designates 209.85.208.177 as permitted sender) smtp.mailfrom=vincent.mailhol@gmail.com
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com. [209.85.208.177])
        by gmr-mx.google.com with ESMTPS id y15si83387lfa.13.2021.08.26.00.36.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 00:36:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincent.mailhol@gmail.com designates 209.85.208.177 as permitted sender) client-ip=209.85.208.177;
Received: by mail-lj1-f177.google.com with SMTP id m4so3405054ljq.8
        for <clang-built-linux@googlegroups.com>; Thu, 26 Aug 2021 00:36:39 -0700 (PDT)
X-Received: by 2002:a2e:9999:: with SMTP id w25mr1845833lji.359.1629963399624;
 Thu, 26 Aug 2021 00:36:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210826050458.1540622-1-keescook@chromium.org> <20210826050458.1540622-3-keescook@chromium.org>
In-Reply-To: <20210826050458.1540622-3-keescook@chromium.org>
From: Vincent MAILHOL <mailhol.vincent@wanadoo.fr>
Date: Thu, 26 Aug 2021 16:36:27 +0900
Message-ID: <CAMZ6RqJMWaRCB3sZa-it804Sv6aFyZ9J3aQyAStMY-1GAwR1Jg@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] treewide: Replace open-coded flex arrays in unions
To: Kees Cook <keescook@chromium.org>
Cc: open list <linux-kernel@vger.kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Ayush Sawal <ayush.sawal@chelsio.com>, Vinay Kumar Yadav <vinay.yadav@chelsio.com>, 
	Rohit Maheshwari <rohitm@chelsio.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
	"David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>, 
	Jakub Kicinski <kuba@kernel.org>, Stanislaw Gruszka <stf_xl@wp.pl>, Luca Coelho <luciano.coelho@intel.com>, 
	"James E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Johannes Berg <johannes.berg@intel.com>, 
	Mordechay Goodstein <mordechay.goodstein@intel.com>, Lee Jones <lee.jones@linaro.org>, 
	Wolfgang Grandegger <wg@grandegger.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Arunachalam Santhanam <arunachalam.santhanam@in.bosch.com>, 
	Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>, linux-crypto@vger.kernel.org, 
	ath10k@lists.infradead.org, linux-wireless@vger.kernel.org, 
	netdev <netdev@vger.kernel.org>, linux-scsi@vger.kernel.org, 
	linux-can <linux-can@vger.kernel.org>, bpf@vger.kernel.org, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Keith Packard <keithp@keithp.com>, 
	Dan Williams <dan.j.williams@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>, 
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mailhol.vincent@wanadoo.fr
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincent.mailhol@gmail.com designates 209.85.208.177 as
 permitted sender) smtp.mailfrom=vincent.mailhol@gmail.com
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

On Thu. 26 Aug 2021 at 14:04, Kees Cook <keescook@chromium.org> wrote:
> In support of enabling -Warray-bounds and -Wzero-length-bounds and
> correctly handling run-time memcpy() bounds checking, replace all
> open-coded flexible arrays (i.e. 0-element arrays) in unions with the
> flex_array() helper macro.

Nitpick: the commit description says flex_array() but the code is
actually DECLARE_FLEX_ARRAY() or __DECLARE_FLEX_ARRAY().

> This fixes warnings such as:
>
> fs/hpfs/anode.c: In function 'hpfs_add_sector_to_btree':
> fs/hpfs/anode.c:209:27: warning: array subscript 0 is outside the bounds of an interior zero-length array 'struct bplus_internal_node[0]' [-Wzero-length-bounds]
>   209 |    anode->btree.u.internal[0].down = cpu_to_le32(a);
>       |    ~~~~~~~~~~~~~~~~~~~~~~~^~~
> In file included from fs/hpfs/hpfs_fn.h:26,
>                  from fs/hpfs/anode.c:10:
> fs/hpfs/hpfs.h:412:32: note: while referencing 'internal'
>   412 |     struct bplus_internal_node internal[0]; /* (internal) 2-word entries giving
>       |                                ^~~~~~~~
>
> drivers/net/can/usb/etas_es58x/es58x_fd.c: In function 'es58x_fd_tx_can_msg':
> drivers/net/can/usb/etas_es58x/es58x_fd.c:360:35: warning: array subscript 65535 is outside the bounds of an interior zero-length array 'u8[0]' {aka 'unsigned char[]'} [-Wzero-length-bounds]
>   360 |  tx_can_msg = (typeof(tx_can_msg))&es58x_fd_urb_cmd->raw_msg[msg_len];
>       |                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from drivers/net/can/usb/etas_es58x/es58x_core.h:22,
>                  from drivers/net/can/usb/etas_es58x/es58x_fd.c:17:
> drivers/net/can/usb/etas_es58x/es58x_fd.h:231:6: note: while referencing 'raw_msg'
>   231 |   u8 raw_msg[0];
>       |      ^~~~~~~
>
> Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Ayush Sawal <ayush.sawal@chelsio.com>
> Cc: Vinay Kumar Yadav <vinay.yadav@chelsio.com>
> Cc: Rohit Maheshwari <rohitm@chelsio.com>
> Cc: Herbert Xu <herbert@gondor.apana.org.au>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Stanislaw Gruszka <stf_xl@wp.pl>
> Cc: Luca Coelho <luciano.coelho@intel.com>
> Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
> Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
> Cc: Alexei Starovoitov <ast@kernel.org>
> Cc: Daniel Borkmann <daniel@iogearbox.net>
> Cc: Andrii Nakryiko <andrii@kernel.org>
> Cc: Martin KaFai Lau <kafai@fb.com>
> Cc: Song Liu <songliubraving@fb.com>
> Cc: Yonghong Song <yhs@fb.com>
> Cc: John Fastabend <john.fastabend@gmail.com>
> Cc: KP Singh <kpsingh@kernel.org>
> Cc: Johannes Berg <johannes.berg@intel.com>
> Cc: Mordechay Goodstein <mordechay.goodstein@intel.com>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Wolfgang Grandegger <wg@grandegger.com>
> Cc: Marc Kleine-Budde <mkl@pengutronix.de>
> Cc: Arunachalam Santhanam <arunachalam.santhanam@in.bosch.com>
> Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
> Cc: Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>
> Cc: linux-crypto@vger.kernel.org
> Cc: ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Cc: linux-scsi@vger.kernel.org
> Cc: linux-can@vger.kernel.org
> Cc: bpf@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/crypto/chelsio/chcr_crypto.h              | 14 +++++++++-----
>  drivers/net/can/usb/etas_es58x/es581_4.h          |  2 +-
>  drivers/net/can/usb/etas_es58x/es58x_fd.h         |  2 +-
>  drivers/net/wireless/ath/ath10k/htt.h             |  7 +++++--
>  drivers/net/wireless/intel/iwlegacy/commands.h    |  6 ++++--
>  drivers/net/wireless/intel/iwlwifi/dvm/commands.h |  6 ++++--
>  drivers/net/wireless/intel/iwlwifi/fw/api/tx.h    |  6 ++++--
>  drivers/scsi/aic94xx/aic94xx_sds.c                |  6 ++++--
>  fs/hpfs/hpfs.h                                    |  8 ++++----
>  include/linux/filter.h                            |  6 ++++--
>  include/scsi/sas.h                                | 12 ++++++++----
>  include/uapi/rdma/rdma_user_rxe.h                 |  4 ++--
>  include/uapi/sound/asoc.h                         |  4 ++--
>  13 files changed, 52 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/crypto/chelsio/chcr_crypto.h b/drivers/crypto/chelsio/chcr_crypto.h
> index e89f9e0094b4..c7816c83e324 100644
> --- a/drivers/crypto/chelsio/chcr_crypto.h
> +++ b/drivers/crypto/chelsio/chcr_crypto.h
> @@ -222,8 +222,10 @@ struct chcr_authenc_ctx {
>  };
>
>  struct __aead_ctx {
> -       struct chcr_gcm_ctx gcm[0];
> -       struct chcr_authenc_ctx authenc[];
> +       union {
> +               DECLARE_FLEX_ARRAY(struct chcr_gcm_ctx, gcm);
> +               DECLARE_FLEX_ARRAY(struct chcr_authenc_ctx, authenc);
> +       };
>  };
>
>  struct chcr_aead_ctx {
> @@ -245,9 +247,11 @@ struct hmac_ctx {
>  };
>
>  struct __crypto_ctx {
> -       struct hmac_ctx hmacctx[0];
> -       struct ablk_ctx ablkctx[0];
> -       struct chcr_aead_ctx aeadctx[];
> +       union {
> +               DECLARE_FLEX_ARRAY(struct hmac_ctx, hmacctx);
> +               DECLARE_FLEX_ARRAY(struct ablk_ctx, ablkctx);
> +               DECLARE_FLEX_ARRAY(struct chcr_aead_ctx, aeadctx);
> +       };
>  };
>
>  struct chcr_context {
> diff --git a/drivers/net/can/usb/etas_es58x/es581_4.h b/drivers/net/can/usb/etas_es58x/es581_4.h
> index 4bc60a6df697..667ecb77168c 100644
> --- a/drivers/net/can/usb/etas_es58x/es581_4.h
> +++ b/drivers/net/can/usb/etas_es58x/es581_4.h
> @@ -192,7 +192,7 @@ struct es581_4_urb_cmd {
>                 struct es581_4_rx_cmd_ret rx_cmd_ret;
>                 __le64 timestamp;
>                 u8 rx_cmd_ret_u8;
> -               u8 raw_msg[0];
> +               DECLARE_FLEX_ARRAY(u8, raw_msg);
>         } __packed;
>
>         __le16 reserved_for_crc16_do_not_use;
> diff --git a/drivers/net/can/usb/etas_es58x/es58x_fd.h b/drivers/net/can/usb/etas_es58x/es58x_fd.h
> index ee18a87e40c0..e33003f96e5e 100644
> --- a/drivers/net/can/usb/etas_es58x/es58x_fd.h
> +++ b/drivers/net/can/usb/etas_es58x/es58x_fd.h
> @@ -228,7 +228,7 @@ struct es58x_fd_urb_cmd {
>                 struct es58x_fd_tx_ack_msg tx_ack_msg;
>                 __le64 timestamp;
>                 __le32 rx_cmd_ret_le32;
> -               u8 raw_msg[0];
> +               DECLARE_FLEX_ARRAY(u8, raw_msg);
>         } __packed;
>
>         __le16 reserved_for_crc16_do_not_use;
> diff --git a/drivers/net/wireless/ath/ath10k/htt.h b/drivers/net/wireless/ath/ath10k/htt.h
> index ec689e3ce48a..a6de08d3bf4a 100644
> --- a/drivers/net/wireless/ath/ath10k/htt.h
> +++ b/drivers/net/wireless/ath/ath10k/htt.h
> @@ -1674,8 +1674,11 @@ struct htt_tx_fetch_ind {
>         __le32 token;
>         __le16 num_resp_ids;
>         __le16 num_records;
> -       __le32 resp_ids[0]; /* ath10k_htt_get_tx_fetch_ind_resp_ids() */
> -       struct htt_tx_fetch_record records[];
> +       union {
> +               /* ath10k_htt_get_tx_fetch_ind_resp_ids() */
> +               DECLARE_FLEX_ARRAY(__le32, resp_ids);
> +               DECLARE_FLEX_ARRAY(struct htt_tx_fetch_record, records);
> +       };
>  } __packed;
>
>  static inline void *
> diff --git a/drivers/net/wireless/intel/iwlegacy/commands.h b/drivers/net/wireless/intel/iwlegacy/commands.h
> index 89c6671b32bc..4a97310f8fee 100644
> --- a/drivers/net/wireless/intel/iwlegacy/commands.h
> +++ b/drivers/net/wireless/intel/iwlegacy/commands.h
> @@ -1408,8 +1408,10 @@ struct il3945_tx_cmd {
>          * MAC header goes here, followed by 2 bytes padding if MAC header
>          * length is 26 or 30 bytes, followed by payload data
>          */
> -       u8 payload[0];
> -       struct ieee80211_hdr hdr[];
> +       union {
> +               DECLARE_FLEX_ARRAY(u8, payload);
> +               DECLARE_FLEX_ARRAY(struct ieee80211_hdr, hdr);
> +       };
>  } __packed;
>
>  /*
> diff --git a/drivers/net/wireless/intel/iwlwifi/dvm/commands.h b/drivers/net/wireless/intel/iwlwifi/dvm/commands.h
> index 235c7a2e3483..75a4b8e26232 100644
> --- a/drivers/net/wireless/intel/iwlwifi/dvm/commands.h
> +++ b/drivers/net/wireless/intel/iwlwifi/dvm/commands.h
> @@ -1251,8 +1251,10 @@ struct iwl_tx_cmd {
>          * MAC header goes here, followed by 2 bytes padding if MAC header
>          * length is 26 or 30 bytes, followed by payload data
>          */
> -       u8 payload[0];
> -       struct ieee80211_hdr hdr[];
> +       union {
> +               DECLARE_FLEX_ARRAY(u8, payload);
> +               DECLARE_FLEX_ARRAY(struct ieee80211_hdr, hdr);
> +       };
>  } __packed;
>
>  /*
> diff --git a/drivers/net/wireless/intel/iwlwifi/fw/api/tx.h b/drivers/net/wireless/intel/iwlwifi/fw/api/tx.h
> index 24e4a82a55da..66c5487e857e 100644
> --- a/drivers/net/wireless/intel/iwlwifi/fw/api/tx.h
> +++ b/drivers/net/wireless/intel/iwlwifi/fw/api/tx.h
> @@ -713,8 +713,10 @@ struct iwl_mvm_compressed_ba_notif {
>         __le32 tx_rate;
>         __le16 tfd_cnt;
>         __le16 ra_tid_cnt;
> -       struct iwl_mvm_compressed_ba_ratid ra_tid[0];
> -       struct iwl_mvm_compressed_ba_tfd tfd[];
> +       union {
> +               DECLARE_FLEX_ARRAY(struct iwl_mvm_compressed_ba_ratid, ra_tid);
> +               DECLARE_FLEX_ARRAY(struct iwl_mvm_compressed_ba_tfd, tfd);
> +       };
>  } __packed; /* COMPRESSED_BA_RES_API_S_VER_4 */
>
>  /**
> diff --git a/drivers/scsi/aic94xx/aic94xx_sds.c b/drivers/scsi/aic94xx/aic94xx_sds.c
> index 46815e65f7a4..5def83c88f13 100644
> --- a/drivers/scsi/aic94xx/aic94xx_sds.c
> +++ b/drivers/scsi/aic94xx/aic94xx_sds.c
> @@ -517,8 +517,10 @@ struct asd_ms_conn_map {
>         u8    num_nodes;
>         u8    usage_model_id;
>         u32   _resvd;
> -       struct asd_ms_conn_desc conn_desc[0];
> -       struct asd_ms_node_desc node_desc[];
> +       union {
> +               DECLARE_FLEX_ARRAY(struct asd_ms_conn_desc, conn_desc);
> +               DECLARE_FLEX_ARRAY(struct asd_ms_node_desc, node_desc);
> +       };
>  } __attribute__ ((packed));
>
>  struct asd_ctrla_phy_entry {
> diff --git a/fs/hpfs/hpfs.h b/fs/hpfs/hpfs.h
> index d92c4af3e1b4..281dec8f636b 100644
> --- a/fs/hpfs/hpfs.h
> +++ b/fs/hpfs/hpfs.h
> @@ -409,10 +409,10 @@ struct bplus_header
>    __le16 first_free;                   /* offset from start of header to
>                                            first free node in array */
>    union {
> -    struct bplus_internal_node internal[0]; /* (internal) 2-word entries giving
> -                                              subtree pointers */
> -    struct bplus_leaf_node external[0];            /* (external) 3-word entries giving
> -                                              sector runs */
> +       /* (internal) 2-word entries giving subtree pointers */
> +       DECLARE_FLEX_ARRAY(struct bplus_internal_node, internal);
> +       /* (external) 3-word entries giving sector runs */
> +       DECLARE_FLEX_ARRAY(struct bplus_leaf_node, external);
>    } u;
>  };
>
> diff --git a/include/linux/filter.h b/include/linux/filter.h
> index 472f97074da0..5ca52bfa5868 100644
> --- a/include/linux/filter.h
> +++ b/include/linux/filter.h
> @@ -572,8 +572,10 @@ struct bpf_prog {
>         struct bpf_prog_aux     *aux;           /* Auxiliary fields */
>         struct sock_fprog_kern  *orig_prog;     /* Original BPF program */
>         /* Instructions for interpreter */
> -       struct sock_filter      insns[0];
> -       struct bpf_insn         insnsi[];
> +       union {
> +               DECLARE_FLEX_ARRAY(struct sock_filter, insns);
> +               DECLARE_FLEX_ARRAY(struct bpf_insn, insnsi);
> +       };
>  };
>
>  struct sk_filter {
> diff --git a/include/scsi/sas.h b/include/scsi/sas.h
> index 4726c1bbec65..64154c1fed02 100644
> --- a/include/scsi/sas.h
> +++ b/include/scsi/sas.h
> @@ -323,8 +323,10 @@ struct ssp_response_iu {
>         __be32 sense_data_len;
>         __be32 response_data_len;
>
> -       u8     resp_data[0];
> -       u8     sense_data[];
> +       union {
> +               DECLARE_FLEX_ARRAY(u8, resp_data);
> +               DECLARE_FLEX_ARRAY(u8, sense_data);
> +       };
>  } __attribute__ ((packed));
>
>  struct ssp_command_iu {
> @@ -554,8 +556,10 @@ struct ssp_response_iu {
>         __be32 sense_data_len;
>         __be32 response_data_len;
>
> -       u8     resp_data[0];
> -       u8     sense_data[];
> +       union {
> +               DECLARE_FLEX_ARRAY(u8, resp_data);
> +               DECLARE_FLEX_ARRAY(u8, sense_data);
> +       };
>  } __attribute__ ((packed));
>
>  struct ssp_command_iu {
> diff --git a/include/uapi/rdma/rdma_user_rxe.h b/include/uapi/rdma/rdma_user_rxe.h
> index e283c2220aba..040752c99ec9 100644
> --- a/include/uapi/rdma/rdma_user_rxe.h
> +++ b/include/uapi/rdma/rdma_user_rxe.h
> @@ -141,8 +141,8 @@ struct rxe_dma_info {
>         __u32                   sge_offset;
>         __u32                   reserved;
>         union {
> -               __u8            inline_data[0];
> -               struct rxe_sge  sge[0];
> +               __DECLARE_FLEX_ARRAY(u8, inline_data);
> +               __DECLARE_FLEX_ARRAY(struct rxe_sge, sge);
>         };
>  };
>
> diff --git a/include/uapi/sound/asoc.h b/include/uapi/sound/asoc.h
> index da61398b1f8f..053949287ce8 100644
> --- a/include/uapi/sound/asoc.h
> +++ b/include/uapi/sound/asoc.h
> @@ -240,8 +240,8 @@ struct snd_soc_tplg_vendor_array {
>  struct snd_soc_tplg_private {
>         __le32 size;    /* in bytes of private data */
>         union {
> -               char data[0];
> -               struct snd_soc_tplg_vendor_array array[0];
> +               __DECLARE_FLEX_ARRAY(char, data);
> +               __DECLARE_FLEX_ARRAY(struct snd_soc_tplg_vendor_array, array);
>         };
>  } __attribute__((packed));
>
> --
> 2.30.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMZ6RqJMWaRCB3sZa-it804Sv6aFyZ9J3aQyAStMY-1GAwR1Jg%40mail.gmail.com.
