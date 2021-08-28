Return-Path: <clang-built-linux+bncBDOLNZMBXEEBBT6MU6EQMGQERK2ROHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D503FA44B
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Aug 2021 09:31:33 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id l3-20020a056214104300b00366988901acsf6073489qvr.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Aug 2021 00:31:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630135887; cv=pass;
        d=google.com; s=arc-20160816;
        b=YAPfLTW59BUe7Xlnm/Aio9YMaF3La4fN3u4q9HNgrru7x7NK1ti8M5GS6nCKwzT7nC
         67FV1Ys6Kc2KO/V/fdM0I6qJsecKtZCRnvEDhyJ4G1mrdpCqA9H2oVpV5wEkpkFnBRnv
         gSVTaLmU1kDhFqP2hClNT+ZG9TVYno5DFFPSqJh3VT6BUf82fCXpyF1k7c9s+HvC4qDW
         Hd1PJmM7U7JFRVvFrtWRob4cANyK0R2uDgnPq3ROgZ/yp2qAgtUmv3f7rPHVcW5ejgMs
         I/8mXeLqhWokhZHrZDR/7ISuh1lW6GDDk9zFPxFa5oxC7n4Jjeq5Gm6vGfPVSJHavhd/
         sLHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=yeYiU1hI/0+rk+v2uZYpC8Bhv4R/EHW8yropA/xJvYo=;
        b=B1nMP9/qJXH3W1/y9BZWKu5Ut/tZ4Sv6pFp7SoKfHK1UuV6ifwq0tLgFHylV1MSauE
         ACyAA9HohBuTIgXeelaRTVy9M51HHVpJ0tOjXkCzmS89x4TulLzBMIao7opOmFOQ3MxH
         1MBE45Xy0Ebt4u3reNR5N7Iz/nFhWNao4BTjJgYdLHrRDD5qBskysC1YC7R6lRrjCXVY
         G0cBCwMqMh75A1/Fp4GmOyDI3rwysbDJCJxKw2PjgsWTzlRSrRbR8WtIcbZdTDWylb+d
         1znOPWD7+bmcM1YlNJi0lEHg4LS6XtM7qhzWhFGnisYwtLahdkvyp/Jy7jO9CVYbaP1T
         QVyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincent.mailhol@gmail.com designates 209.85.216.49 as permitted sender) smtp.mailfrom=vincent.mailhol@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yeYiU1hI/0+rk+v2uZYpC8Bhv4R/EHW8yropA/xJvYo=;
        b=tTehQK6+jmHUcvqweAt8rppuW7O5O2lqfMh12lzRtPXFqi5nRI81pdZWCS/BrEczTj
         T4Qiw7PMUGFIZAc6egZNd55a8voHzgyACVvaM3/c9KnBsVC3pGhzd2P4FlYDdO8oFVqL
         NhhlOs7QvydzVjskSiDVXxhVgWgBV4fxglt1K2nlYzd79l4IX7WubHEOEzTPfyOIieiu
         nhxScOUEn47cOIb0IpLKPSOIFW1ZJrgwLvDiaRtc2EtalxTOo2Ikla0154/JGNu0TpnX
         NTRAGZq3vyRtTXCK4I5OX5t9usB4ViYBjdJbcFuV8WnhiUWOPE148Y9u0pYhT3OwRpoC
         3aAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yeYiU1hI/0+rk+v2uZYpC8Bhv4R/EHW8yropA/xJvYo=;
        b=kXGGT2c0mJrz0mvtr+1Oq2xw+am0TcExlYUGaZXFfElWGig+dkQGTuBpkQTjtqzzdF
         DqkcmvUfQlJf45S/3IM4Fxibipc1xNBOxRzGPYOSJcMyBHbQeZqTYazJToSKEFfmfRDF
         1Lz2lGvQwMhElddKd4Zn0pERxFVIBiNaKDfku92+QTwCCrCpgNwb/312CX5jOQLslcWC
         q9mEb50nguemXKHloQ6NJxLqgkaFpY4hV10mYX+hr0qIyFRNTrp5e3AP/x9/ipG0xdB/
         +lvGTRmP2MwgMsYGdW20yvGX7WIrZ4k2Ws7KoHWnmRJOLWDAAcf+s6Zc+MB/bMCmgxH+
         HKTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Eb45gV3lng94BM4ld5DXOn+tBOcF28J2cd5pPFem+F4ptDALl
	/8sNGZkCvqJd3Zd/Y7D3cVI=
X-Google-Smtp-Source: ABdhPJxrLT7BNRowzsLfndXRIn214HAM/KWuhHPVz+Vd4bEAXymtUBAT3uuj/6IvrogSC8Hi8woYfg==
X-Received: by 2002:a05:6214:23cc:: with SMTP id hr12mr13769414qvb.56.1630135887148;
        Sat, 28 Aug 2021 00:31:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2699:: with SMTP id c25ls6880662qkp.0.gmail; Sat,
 28 Aug 2021 00:31:26 -0700 (PDT)
X-Received: by 2002:ae9:f70e:: with SMTP id s14mr13513956qkg.38.1630135886684;
        Sat, 28 Aug 2021 00:31:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630135886; cv=none;
        d=google.com; s=arc-20160816;
        b=k1dl0f2P8V7o3fMng7u+fwg23iUrMQL2UJSJosbfUF7hVftAsmY7zazicHflDCbLfu
         PEXSQv9SNcedoWfFRltft9uH1VN4HdBXfZDpROIAd1jPNldwpHfn7kiGYhTYDQNxPRcb
         YOl2tszGnfetKcoB2GOXhD/CcsCPEzftAgtXapK6F0erh8B+citRQB4KQc5Imn8g3DM+
         GqoczJKbS9WQSnz2ZOzlAdgy4LKx3pvURUyUtHeHITzCc8fgFNtloWcoH4bpEXlPCWxs
         m2GtAwLsvrX9ObVXKzbDr0miy6ODbMa+OzXPoVxIZOUDD2cHQw/afWG72tNUyS5oY5w7
         1lJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=72FGwkr2cgYiG2mCqnRFPrgyEIFWlTQT13Q2rpcWR6c=;
        b=QevkCQXJ91F2yUNPwWchBOsqFS3jH78Abj9QfVIawgqCO62IJLCJ1zPD0RjLrgsmdM
         AddhFOzcyt+rFtnax3di/WhP8/qx2qq+BNWP0nP2H4h1zhw/8hrWC85l+BV74V2UwXq4
         yCjlSoGZ9omLiYyD5TUjAMl5IYXSYDrD5PtpcBchyC4FiiLVfI/WYt0e6uYAUM6O4WBo
         J04M7odxHs2fUJaJ4U3ykkwEOP+40W1wg+ZgKmbNJoMOMFTwsvlKkZPe1JcLRfCy/24E
         u9jedePcykI8nry21aBXa34Uzkrm8R21lRWvlBxwIwB7qzFcxKfhg2odJGEFaezIdeJ/
         F7QQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincent.mailhol@gmail.com designates 209.85.216.49 as permitted sender) smtp.mailfrom=vincent.mailhol@gmail.com
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com. [209.85.216.49])
        by gmr-mx.google.com with ESMTPS id b1si582865qtq.3.2021.08.28.00.31.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Aug 2021 00:31:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincent.mailhol@gmail.com designates 209.85.216.49 as permitted sender) client-ip=209.85.216.49;
Received: by mail-pj1-f49.google.com with SMTP id g13-20020a17090a3c8d00b00196286963b9so3520345pjc.3
        for <clang-built-linux@googlegroups.com>; Sat, 28 Aug 2021 00:31:26 -0700 (PDT)
X-Received: by 2002:a17:902:9b89:b0:12d:7f02:f6a5 with SMTP id
 y9-20020a1709029b8900b0012d7f02f6a5mr12373883plp.39.1630135885761; Sat, 28
 Aug 2021 00:31:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210826050458.1540622-1-keescook@chromium.org>
 <20210826050458.1540622-3-keescook@chromium.org> <20210826062452.jekmoo43f4xu5jxk@pengutronix.de>
 <202108270915.B4DD070AF@keescook>
In-Reply-To: <202108270915.B4DD070AF@keescook>
From: Vincent MAILHOL <mailhol.vincent@wanadoo.fr>
Date: Sat, 28 Aug 2021 16:31:14 +0900
Message-ID: <CAMZ6Rq+b1wy3miNvXyeM5Cbp16CH78RKRf2WxUSL4s4w5=+aYg@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] treewide: Replace open-coded flex arrays in unions
To: Kees Cook <keescook@chromium.org>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, open list <linux-kernel@vger.kernel.org>, 
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
	Wolfgang Grandegger <wg@grandegger.com>, 
	Arunachalam Santhanam <arunachalam.santhanam@in.bosch.com>, 
	Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>, linux-crypto@vger.kernel.org, 
	ath10k@lists.infradead.org, linux-wireless@vger.kernel.org, 
	netdev <netdev@vger.kernel.org>, linux-scsi@vger.kernel.org, 
	linux-can <linux-can@vger.kernel.org>, bpf@vger.kernel.org, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Keith Packard <keithp@keithp.com>, 
	Dan Williams <dan.j.williams@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>, 
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mailhol.vincent@wanadoo.fr
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincent.mailhol@gmail.com designates 209.85.216.49 as
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

Le sam. 28 ao=C3=BBt 2021 =C3=A0 01:17, Kees Cook <keescook@chromium.org> a=
 =C3=A9crit :
>
> On Thu, Aug 26, 2021 at 08:24:52AM +0200, Marc Kleine-Budde wrote:
> > [...]
> > BTW: Is there opportunity for conversion, too?
> >
> > | drivers/net/can/peak_canfd/peak_pciefd_main.c:146:32: warning: array =
of flexible structures
>
> Untested potential solution:
>
> diff --git a/drivers/net/can/peak_canfd/peak_pciefd_main.c b/drivers/net/=
can/peak_canfd/peak_pciefd_main.c
> index 1df3c4b54f03..efa2b5a52bd7 100644
> --- a/drivers/net/can/peak_canfd/peak_pciefd_main.c
> +++ b/drivers/net/can/peak_canfd/peak_pciefd_main.c
> @@ -143,7 +143,11 @@ struct pciefd_rx_dma {
>         __le32 irq_status;
>         __le32 sys_time_low;
>         __le32 sys_time_high;
> -       struct pucan_rx_msg msg[];
> +       /*
> +        * with "msg" being pciefd_irq_rx_cnt(priv->irq_status)-many
> +        * variable-sized struct pucan_rx_msg following.
> +        */
> +       __le32 msg[];

Isn't u8 msg[] preferable here?

>  } __packed __aligned(4);
>
>  /* Tx Link record */
> @@ -327,7 +331,7 @@ static irqreturn_t pciefd_irq_handler(int irq, void *=
arg)
>
>         /* handle rx messages (if any) */
>         peak_canfd_handle_msgs_list(&priv->ucan,
> -                                   rx_dma->msg,
> +                                   (struct pucan_rx_msg *)rx_dma->msg,
>                                     pciefd_irq_rx_cnt(priv->irq_status));
>
>         /* handle tx link interrupt (if any) */
>
>
> It's not great, but it's also not strictly a flex array, in the sense
> that since struct pucan_rx_msg is a variable size, the compiler cannot
> reason about the size of struct pciefd_rx_dma based only on the
> irq_status encoding...

In the same spirit, it is a bit cleaner to change the prototype of
handle_msgs_list().

Like that:


diff --git a/drivers/net/can/peak_canfd/peak_canfd.c b/drivers/net/can/peak=
_canf
d/peak_canfd.c
index d08718e98e11..81a9faa6193f 100644
--- a/drivers/net/can/peak_canfd/peak_canfd.c
+++ b/drivers/net/can/peak_canfd/peak_canfd.c
@@ -484,9 +484,8 @@ int peak_canfd_handle_msg(struct peak_canfd_priv *priv,

 /* handle a list of rx_count messages from rx_msg memory address */
 int peak_canfd_handle_msgs_list(struct peak_canfd_priv *priv,
-                               struct pucan_rx_msg *msg_list, int msg_coun=
t)
+                               void *msg_ptr, int msg_count)
 {
-       void *msg_ptr =3D msg_list;
        int i, msg_size =3D 0;

        for (i =3D 0; i < msg_count; i++) {
diff --git a/drivers/net/can/peak_canfd/peak_canfd_user.h b/drivers/net/can=
/peak
_canfd/peak_canfd_user.h
index a72719dc3b74..ef91f92e70c3 100644
--- a/drivers/net/can/peak_canfd/peak_canfd_user.h
+++ b/drivers/net/can/peak_canfd/peak_canfd_user.h
@@ -42,5 +42,5 @@ struct net_device *alloc_peak_canfd_dev(int
sizeof_priv, int index,
 int peak_canfd_handle_msg(struct peak_canfd_priv *priv,
                          struct pucan_rx_msg *msg);
 int peak_canfd_handle_msgs_list(struct peak_canfd_priv *priv,
-                               struct pucan_rx_msg *rx_msg, int rx_count);
+                               void *msg_ptr, int rx_count);
 #endif
diff --git a/drivers/net/can/peak_canfd/peak_pciefd_main.c
b/drivers/net/can/peak_canfd/peak_pciefd_main.c
index 1df3c4b54f03..c1de1e3dc4bc 100644
--- a/drivers/net/can/peak_canfd/peak_pciefd_main.c
+++ b/drivers/net/can/peak_canfd/peak_pciefd_main.c
@@ -143,7 +143,11 @@ struct pciefd_rx_dma {
        __le32 irq_status;
        __le32 sys_time_low;
        __le32 sys_time_high;
-       struct pucan_rx_msg msg[];
+       /*
+        * with "msg" being pciefd_irq_rx_cnt(priv->irq_status)-many
+        * variable-sized struct pucan_rx_msg following.
+        */
+       u8 msg[];
 } __packed __aligned(4);

 /* Tx Link record */


Another solution would be to declare a maximum length for struct
pucan_rx_msg::d. Because these are CAN FD messages, I suppose
that maximum length would be CANFD_MAX_DLEN. struct canfd_frame
from the UAPI uses the same pattern.

N.B. This solution is not exclusive from the above one (actually,
I think that using both would be the best solution).

diff --git a/include/linux/can/dev/peak_canfd.h
b/include/linux/can/dev/peak_canfd.h
index f38772fd0c07..a048359db430 100644
--- a/include/linux/can/dev/peak_canfd.h
+++ b/include/linux/can/dev/peak_canfd.h
@@ -189,7 +189,7 @@ struct __packed pucan_rx_msg {
        u8      client;
        __le16  flags;
        __le32  can_id;
-       u8      d[];
+       u8      d[CANFD_MAX_DLEN];
 };

 /* uCAN error types */



I only tested for compilation.

Yours sincerely,
Vincent

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMZ6Rq%2Bb1wy3miNvXyeM5Cbp16CH78RKRf2WxUSL4s4w5%3D%2BaYg=
%40mail.gmail.com.
