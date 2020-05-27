Return-Path: <clang-built-linux+bncBCX4NXWA6APRBXGRXD3AKGQEGU4ZOTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F841E3C76
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 10:46:21 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id x74sf2844412vke.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 01:46:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590569180; cv=pass;
        d=google.com; s=arc-20160816;
        b=yDmLIcGQoM1L4zjHYxEuXWsLYB9oi4sMuG/EdNjHYw4nuzJ+7XOGtr9a08WowcXP/T
         7xi0bXs8UddVkffaJ1g9Fngu2VRKR6RcDIMk4NbTvm1NKW3WocMccMoNvsIs4eGjb6YH
         mGGRHn1QtCBTGbBvjZ2WbzP6hT4oYuqR/53jvXmXZyQ9j4dYl1mLQ8pdIKNYT+cpeGsp
         TqHNwIsrWjoaWb/0jOPldixo3eEfartDmOoTbDRanTO1P/3J+j8MRgAktUwpQ+ahWqO9
         rjKFesrlK5o01jMpF8XcBGUpZmN3blow0nG7jMMnB/qqPpwGjEset6tn7r+tLmyXMDeD
         bbAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=I9qBjAZyMUBy8JvQZsttMfCZhU17iI8i5yGn8ck0Skc=;
        b=AJYFGpVnhwQ458tICuyoUzi6Bd5UMMlsopniKK7+l5kc1Kq0GuVw8k7YWh0D3buYhK
         dGcalKXdSWs6g5g9LjScn1fl6zRLJhdwLEECpSbRV+ufGl4EMbLDjWWWQqDBUCM6IFAE
         G0YmCnXuVP/JzqMTVvUSTwQaFjfgWmJtfwjU9SL0bSCqtK65eJ5Sw+oWkl+d/HLDo7V1
         5giv+V0lstYf45GXb9jykvKs+j7/ch9y7xhoxLnb9Rmu8CNcckPvs8ajCgpwtMzwnUSq
         WBeXWYjP8ZyEroh8EpmOj72L1kQWlBufQpYlJownijcNmx991u+khnuM855Ujo43CLQQ
         adqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@bgdev-pl.20150623.gappssmtp.com header.s=20150623 header.b=GxKyCH66;
       spf=neutral (google.com: 2607:f8b0:4864:20::d41 is neither permitted nor denied by best guess record for domain of brgl@bgdev.pl) smtp.mailfrom=brgl@bgdev.pl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I9qBjAZyMUBy8JvQZsttMfCZhU17iI8i5yGn8ck0Skc=;
        b=Khu1PgDFrU6gOJV/N/S2hJKWqk0Sf4SRv5ZS8X3cUD7Qeg7Zo1qcmLbKTdCHWUy4qT
         lFcnhEGHSCTkHUAnsgaluUYQbUhmaDw1XiuobHeZBU10woqLqeUAKnnWEOFXbriA87wh
         JZ0euRNr8Kepau6kH5WRT2vIP92F38VCXJrL61qnOLQc25ZT4/vpaaHV0O35pYQ3NpwO
         GnGX8vPg2JPBjiRpEHAiTrDY6xMjdBJgPhffTOWUfc37gLNDJWEDhJ/zhvAFsdsaDfGp
         WdbLKbSzP+CQJ3JSJUxx2luWzLQhx047JLMAttTx963DJVQ5o2aDA0+bFmo58hD1PThY
         kMHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I9qBjAZyMUBy8JvQZsttMfCZhU17iI8i5yGn8ck0Skc=;
        b=ZsS/VLo4M6uljeu6rHrnqY6UjpmciIYCabUCPwK+OHhNL+0QHYHE7428pOHa3wE1sY
         Dy8vWZpVoBBNaWtz3xGCwrvKaPsBeHkQND1yI5B+24AgQLfCaLgFX4q9ngc/ITCNq/hB
         c1mpx7+LTDExga8i62U4IZPQ0HEOycgstlqtQdHtX09HRPN1III8Sq1DH8voD5eTXaj+
         2q/zRhzSeW4e7jnd7627Osq2tXh7wO/qZtgj3EfAZiSRJ9FIhZBTHsP62OgwPzxB+HGZ
         qmale3/rBJ4vPdpgqkjxUGTcL7qOJTJcjC+gydAiAtePqnqMtqbmWRiCas8VLh+lrcSS
         Gpyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AuTMv0KKJdtMvBx19NIIqNEk6JtzJTTxG08cbf1C6UGdXV2RS
	M8sOXwFWoTfBK8XZEUUNVZU=
X-Google-Smtp-Source: ABdhPJyuirO9quOZU2sOrXKisJMzlO4UeDkU7PUgfrogPXbuzxzs5ZIU3eTrdKtjNpwPeoXY7WWQcA==
X-Received: by 2002:ab0:2981:: with SMTP id u1mr3987999uap.137.1590569180494;
        Wed, 27 May 2020 01:46:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2d99:: with SMTP id v25ls923349uaj.10.gmail; Wed, 27 May
 2020 01:46:20 -0700 (PDT)
X-Received: by 2002:a9f:28c6:: with SMTP id d64mr3704135uad.61.1590569180119;
        Wed, 27 May 2020 01:46:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590569180; cv=none;
        d=google.com; s=arc-20160816;
        b=xTk+4O4dK5wKWBIqYCDAassYvAx2EUeDtdjSmT5ZmHRnqevHWnF8YgSToFlgeQulTg
         Aqb2adBqdi25kCW4tzkgTQodqyvU9SlClpdF+/AL1DfeCUmsw7AXK6mbkRd485pWeKhG
         eyRCvKk4KtqpVMfqRjHpqLCeqfAbxUshVTwnDhzTHa2bTgRopW9w+RT44qE1PHw86T5v
         i5xB7jQhacQUNlqb702hBY79qriDO6QOc0Iiu+oiukncDDfDNALpOTQ+wKpc3i2ZQCvH
         hmGWq1iqKOivv+JScW+797gRouUxKAV4PhhpZ8SQcDFhdoxjy195hsEiWhdV5Ql33anU
         kdSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=cpwITzrftWrJAY0LVaSeu6jYTmkJe1PVewzQjLawjdA=;
        b=fBkvLAFkOiGaVxtO+S9m6lmzEU3eBfJacOBuPa1Yf0HcUh53c7OcNi6ZswwRswFOOc
         Dd5Ic0pnBaG71LN+XfLLRuURNPfwm+Puwi50TCPy+AJ47qi56cew6X0dVMQzZmhLRcJN
         tbS3z4vuHrQYOoRMb7hc269UluKzZ2kNdrd6w+Y++ML8iyG964W4wloCIln9hVYxaE+8
         P1u20YjAyThuPoPTFht8fxlE3VvVMZWjHJ9lDTf8Bm+tu34ltxTu2pP+DFE1sQE4B+ol
         9ccekYyabh98QrL74lN6GgjAa0p7N8MApt/KGNr40tr85IpEQAg+7s0yJ3n9iM90Vdqu
         OAZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@bgdev-pl.20150623.gappssmtp.com header.s=20150623 header.b=GxKyCH66;
       spf=neutral (google.com: 2607:f8b0:4864:20::d41 is neither permitted nor denied by best guess record for domain of brgl@bgdev.pl) smtp.mailfrom=brgl@bgdev.pl
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id d84si193209vsc.0.2020.05.27.01.46.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 01:46:19 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::d41 is neither permitted nor denied by best guess record for domain of brgl@bgdev.pl) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id k18so25131117ion.0
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 01:46:19 -0700 (PDT)
X-Received: by 2002:a02:3e06:: with SMTP id s6mr4481666jas.57.1590569179357;
 Wed, 27 May 2020 01:46:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200522120700.838-1-brgl@bgdev.pl> <20200522120700.838-7-brgl@bgdev.pl>
 <20200527073150.GA3384158@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200527073150.GA3384158@ubuntu-s3-xlarge-x86>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 27 May 2020 10:46:08 +0200
Message-ID: <CAMRc=MevVsYZFDQif+8Zyv41sSkbS8XqWbKGdCvHooneXz88hg@mail.gmail.com>
Subject: Re: [PATCH v5 06/11] net: ethernet: mtk-star-emac: new driver
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>, 
	Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>, 
	Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Fabien Parent <fparent@baylibre.com>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Edwin Peer <edwin.peer@broadcom.com>, 
	devicetree <devicetree@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, netdev <netdev@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>, 
	Stephane Le Provost <stephane.leprovost@mediatek.com>, Pedro Tsai <pedro.tsai@mediatek.com>, 
	Andrew Perepech <andrew.perepech@mediatek.com>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: brgl@bgdev.pl
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@bgdev-pl.20150623.gappssmtp.com header.s=20150623
 header.b=GxKyCH66;       spf=neutral (google.com: 2607:f8b0:4864:20::d41 is
 neither permitted nor denied by best guess record for domain of
 brgl@bgdev.pl) smtp.mailfrom=brgl@bgdev.pl
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

=C5=9Br., 27 maj 2020 o 09:31 Nathan Chancellor <natechancellor@gmail.com>
napisa=C5=82(a):
>
> On Fri, May 22, 2020 at 02:06:55PM +0200, Bartosz Golaszewski wrote:
>
> <snip>
>
> > diff --git a/drivers/net/ethernet/mediatek/mtk_star_emac.c b/drivers/ne=
t/ethernet/mediatek/mtk_star_emac.c
> > new file mode 100644
> > index 000000000000..789c77af501f
> > --- /dev/null
> > +++ b/drivers/net/ethernet/mediatek/mtk_star_emac.c
> > @@ -0,0 +1,1678 @@
>
> <snip>
>
> I've searched netdev and I cannot find any reports from others but this
> function introduces a clang warning:
>
> drivers/net/ethernet/mediatek/mtk_star_emac.c:1296:6: warning: variable '=
new_dma_addr' is used uninitialized whenever 'if' condition is true [-Wsome=
times-uninitialized]
>         if (!new_skb) {
>             ^~~~~~~~
> drivers/net/ethernet/mediatek/mtk_star_emac.c:1321:23: note: uninitialize=
d use occurs here
>         desc_data.dma_addr =3D new_dma_addr;
>                              ^~~~~~~~~~~~
> drivers/net/ethernet/mediatek/mtk_star_emac.c:1296:2: note: remove the 'i=
f' if its condition is always false
>         if (!new_skb) {
>         ^~~~~~~~~~~~~~~
> drivers/net/ethernet/mediatek/mtk_star_emac.c:1285:6: warning: variable '=
new_dma_addr' is used uninitialized whenever 'if' condition is true [-Wsome=
times-uninitialized]
>         if ((desc_data.flags & MTK_STAR_DESC_BIT_RX_CRCE) ||
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/mediatek/mtk_star_emac.c:1321:23: note: uninitialize=
d use occurs here
>         desc_data.dma_addr =3D new_dma_addr;
>                              ^~~~~~~~~~~~
> drivers/net/ethernet/mediatek/mtk_star_emac.c:1285:2: note: remove the 'i=
f' if its condition is always false
>         if ((desc_data.flags & MTK_STAR_DESC_BIT_RX_CRCE) ||
>         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/mediatek/mtk_star_emac.c:1285:6: warning: variable '=
new_dma_addr' is used uninitialized whenever '||' condition is true [-Wsome=
times-uninitialized]
>         if ((desc_data.flags & MTK_STAR_DESC_BIT_RX_CRCE) ||
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/mediatek/mtk_star_emac.c:1321:23: note: uninitialize=
d use occurs here
>         desc_data.dma_addr =3D new_dma_addr;
>                              ^~~~~~~~~~~~
> drivers/net/ethernet/mediatek/mtk_star_emac.c:1285:6: note: remove the '|=
|' if its condition is always false
>         if ((desc_data.flags & MTK_STAR_DESC_BIT_RX_CRCE) ||
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/mediatek/mtk_star_emac.c:1274:25: note: initialize t=
he variable 'new_dma_addr' to silence this warning
>         dma_addr_t new_dma_addr;
>                                ^
>                                 =3D 0
> 3 warnings generated.
>
> > +static int mtk_star_receive_packet(struct mtk_star_priv *priv)
> > +{
> > +     struct mtk_star_ring *ring =3D &priv->rx_ring;
> > +     struct device *dev =3D mtk_star_get_dev(priv);
> > +     struct mtk_star_ring_desc_data desc_data;
> > +     struct net_device *ndev =3D priv->ndev;
> > +     struct sk_buff *curr_skb, *new_skb;
> > +     dma_addr_t new_dma_addr;
>
> Uninitialized here
>
> > +     int ret;
> > +
> > +     spin_lock(&priv->lock);
> > +     ret =3D mtk_star_ring_pop_tail(ring, &desc_data);
> > +     spin_unlock(&priv->lock);
> > +     if (ret)
> > +             return -1;
> > +
> > +     curr_skb =3D desc_data.skb;
> > +
> > +     if ((desc_data.flags & MTK_STAR_DESC_BIT_RX_CRCE) ||
> > +         (desc_data.flags & MTK_STAR_DESC_BIT_RX_OSIZE)) {
> > +             /* Error packet -> drop and reuse skb. */
> > +             new_skb =3D curr_skb;
> > +             goto push_new_skb;
>
> this goto
>
> > +     }
> > +
> > +     /* Prepare new skb before receiving the current one. Reuse the cu=
rrent
> > +      * skb if we fail at any point.
> > +      */
> > +     new_skb =3D mtk_star_alloc_skb(ndev);
> > +     if (!new_skb) {
> > +             ndev->stats.rx_dropped++;
> > +             new_skb =3D curr_skb;
> > +             goto push_new_skb;
>
> and this goto
>
> > +     }
> > +
> > +     new_dma_addr =3D mtk_star_dma_map_rx(priv, new_skb);
> > +     if (dma_mapping_error(dev, new_dma_addr)) {
> > +             ndev->stats.rx_dropped++;
> > +             dev_kfree_skb(new_skb);
> > +             new_skb =3D curr_skb;
> > +             netdev_err(ndev, "DMA mapping error of RX descriptor\n");
> > +             goto push_new_skb;
> > +     }
> > +
> > +     /* We can't fail anymore at this point: it's safe to unmap the sk=
b. */
> > +     mtk_star_dma_unmap_rx(priv, &desc_data);
> > +
> > +     skb_put(desc_data.skb, desc_data.len);
> > +     desc_data.skb->ip_summed =3D CHECKSUM_NONE;
> > +     desc_data.skb->protocol =3D eth_type_trans(desc_data.skb, ndev);
> > +     desc_data.skb->dev =3D ndev;
> > +     netif_receive_skb(desc_data.skb);
> > +
> > +push_new_skb:
> > +     desc_data.dma_addr =3D new_dma_addr;
>
> assign it uninitialized here.
>
> > +     desc_data.len =3D skb_tailroom(new_skb);
> > +     desc_data.skb =3D new_skb;
> > +
> > +     spin_lock(&priv->lock);
> > +     mtk_star_ring_push_head_rx(ring, &desc_data);
> > +     spin_unlock(&priv->lock);
> > +
> > +     return 0;
> > +}
>
> I don't know if there should be a new label that excludes that
> assignment for those particular gotos or if new_dma_addr should
> be initialized to something at the top. Please take a look at
> addressing this when you get a chance.
>
> Cheers,
> Nathan

Hi Nathan,

Thanks for reporting this! I have a fix ready and will send it shortly.

Bartosz

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMRc%3DMevVsYZFDQif%2B8Zyv41sSkbS8XqWbKGdCvHooneXz88hg%4=
0mail.gmail.com.
