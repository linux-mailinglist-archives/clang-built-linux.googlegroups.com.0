Return-Path: <clang-built-linux+bncBCU77JVZ7MCBBCG5277QKGQEYXWW47I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id EECF12EC1C1
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 18:08:24 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id s185sf368006wme.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 09:08:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609952904; cv=pass;
        d=google.com; s=arc-20160816;
        b=BBoI/AQ4i5oXSE38z1Jf57ZXIwTvGRA4irQnJA/tUkutF1/q6dpDoRrjfUuK3lzoEY
         h7To0w3K3N2Wk8NO866+E5Ue8cEaWVoMJyxdcdzEHtegHZLZQa/Qrn+oLPbXne/RBGhy
         bn+WSPBUqhCHhYbQuFohbqW6ti3+e2Ip3srBBIOiRuN6edxIU3W2Her7LRkS5rfF6toI
         bMkH6VBPepcQYVpomkWL1b/wBNYsDuviuUjcN3TLBxwB7pVJoFxo8tkGal2p59e7XB8a
         jJ+7d1RFqd7ZdpaAB3e1/dyC3A/WTMyc6OgWzn4MAzRovDDNjCnIWp5Lc9Akw6BK0X7B
         xhQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=5N13uGdt2zm/u4+7VL26HwKlpfiSVbRvnw/bYiupvbs=;
        b=GEqBLd09LoUp2r4xWfSTrRujWd9fw15/SV/Z/A7yy2AsIx9OoBKMbOD+2ILo5TcFKF
         U7fPIegrmwd9IwtXyANYy3vEXQT1fP4J3oz+zyGkxoq0WaBw8ZjUGEXt3g+71SaYGA5z
         aIGZo86dc7bLKBeBzK7v5nSoPTYQb8ZlVu/mJAbsonld4Ajid7VMzlR/8O/h163JjGhT
         kkaamGWBuvY18XShA8Z2bHKRQZdnVq+43EgKEOl0K2WmX8nXDYe7d5VJbchrNUvDmW5o
         sDkNS2LBvwDgvVUDZPrwXd2rkRRFhMCupE/71WmfOo5b+Gvw6V33KjfaSxTMbs957hxU
         x9gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SIVLZEBO;
       spf=pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=olteanv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5N13uGdt2zm/u4+7VL26HwKlpfiSVbRvnw/bYiupvbs=;
        b=U7ouomef/LpelXj074EGxAI/8s+M5Sm2MHuvbX/KAcL65AuKOw3nDs2ee3TWDgv3HF
         /7/FFdS6WlEwu5gpp/JPG27R6rAf8wzckQBkKUVWrhq5nFLnHFVKHGnJlbrBNnxT2jSZ
         TMQtsrm5I3yfU9+Ir7w/aIWsk4saZtb+IAg23IEN2P0qphg+MLjA+TtlSbLQgTAcCYpa
         VXav6VbDwQHr/05onfYAIs5v+OZ5E9ty8rNCNV3QcwkWeDSkqvZIxfZ3gTr2owsrkZf/
         iF9dygH+nSmwphYXZhdwogAPjV/gjfPzlPGeWClOoq/ysMQPuDGt/oovT5gNpVmOzEbA
         Orrw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5N13uGdt2zm/u4+7VL26HwKlpfiSVbRvnw/bYiupvbs=;
        b=df0HklkjxR/71OApB9bHULcDeJsF/pKZq8L3KLzV79xoPD0hRk9iaY2lDlL4X2MSUq
         PvO8KBFC8LS6yweVJQoBx3whxndG0aSzQdMtfWdYNiZWhuo15kxlhbR3nmC53G7xeVds
         tY2Mp0bN4rXrKu4RQs69+sJlTiqCX1qMKSQ5FSB3ljZCcSS6f9KE1T5YfpRZ+JmcpG5R
         BIjj7yRcD+DElfWl0hyIvvUFBlmEOz48cmwifPnYUv2NTcDBcKAH8yifubDg4EUyqfrQ
         eWu0xfd7pPU/pvBaXCyikadKTNo5o9hfjNPq5irgt766dxB+K+C5yaYi2XwCoQP8gtwU
         XwwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5N13uGdt2zm/u4+7VL26HwKlpfiSVbRvnw/bYiupvbs=;
        b=EeSOLeLMQ+un09fFlfUhP6Zrx1Z3AX5JzxnVKCGpYPP+6Wn1NPQSbgFaU/PGzIw0GI
         QLxzBJCaYzvtFet4a7Ol4zzMFT4b48r/0Ti0LhAYEfUTjOscGWeArycLX5LpJvcb7Ria
         SkJKjFInDTwpQJPZ4qgNiasR732h8vNVOjBkaBhSkCWkrHl2ypmlC1OhiaWZluBXy+4q
         0F+w5mxhEZ+7q/9K7pR1rdONEtg/LJarV6Xvzcpf8PtlO5Bd6ctNjFWNtkqxcoizVjEj
         ZghKo3vSZxIGkfFdNgvAhQJ79kXoR5C9LV5RkpQ79MhvIHwgSBWF11wXY612EyG4MeUJ
         yH0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531y4hTlV6b/YTKofT8TPA7lyW/jfuQvAfyzpY8ErNybWX8B5nff
	pL46ekqBBbIdg1AytmZ4pWk=
X-Google-Smtp-Source: ABdhPJwJ74O9/QFsdjil+IZTn+b3SkB/dIuEA3kZ71J5LYZ0ZSNyA4hzwAgcOaedbxCyW7tbvMoQpA==
X-Received: by 2002:adf:e98b:: with SMTP id h11mr5119872wrm.21.1609952904656;
        Wed, 06 Jan 2021 09:08:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2094:: with SMTP id g142ls1744120wmg.2.gmail; Wed, 06
 Jan 2021 09:08:23 -0800 (PST)
X-Received: by 2002:a1c:2091:: with SMTP id g139mr4573542wmg.133.1609952903481;
        Wed, 06 Jan 2021 09:08:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609952903; cv=none;
        d=google.com; s=arc-20160816;
        b=OMgVJpOhF06AQe3l6DQLF6Q+q3W9SY19NnKdMqqI3F7flO/Jk1A330+971n/fP+T2F
         BhImw82OWdrX7QfSNMCUi8RzT408OJ4cpYdXsTTjS8hjJHntJh89aWoPkaQ19bM6XRDf
         FXCrAsaoaPpq4eZV/RcoQj5SKXnuOSPudK+wxSJTOicgezMhtMRyPGly73xXJDOvbgb0
         +Fh1ReKv3yIQp3KoNWPt/fN840OMszHPBQqwIRa4gS/r/dv7Yzn9aU6yCDKltLwaYgb4
         /B8VZ+batzmFW09CMBC20sb15CNwc8/n76tBzuqKfRVdc7dVCXrOtWF4pa9Jay54nJuB
         9JrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JHTEjbraBDE/80VUF13QA3u17M0QYo3wbwfpnN3R5QE=;
        b=rrQ2JpVX4s3czfKm9XbXp+sBXQyMG+wWY89Vx97KlMDARlLljETk3U+rgBhBX1b6yN
         s89GoCYXWnkqdSPQrKtYdf+C5osmYGsddDMEBJ1mK/DPgAFyE5nxjROGLjbkZamcyTr7
         e7VHugMHpUQSy5QlQszU4GRwjv07KcM6LrwX+T3Mdf7ahE6ZDWRU7t+AlRvk7+0FJuSX
         cScuw/M7E5rQyA6Muuf/2hE+xgC3b/qdr7uErK2z5t5Iak6ZoPbm/ZQCO6WLlgkGD0MM
         grlJn0eGqsLEBKKnqW3A28d/KQ5jaiiU09zwAc8B6S2cTsS8QOR5JhCgKrGMg55PNiqv
         7KhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SIVLZEBO;
       spf=pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=olteanv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id z188si212064wmc.1.2021.01.06.09.08.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 09:08:23 -0800 (PST)
Received-SPF: pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Received: by mail-ej1-x629.google.com with SMTP id b9so6094243ejy.0
        for <clang-built-linux@googlegroups.com>; Wed, 06 Jan 2021 09:08:23 -0800 (PST)
X-Received: by 2002:a17:906:1cd4:: with SMTP id i20mr3568790ejh.415.1609952903260;
        Wed, 06 Jan 2021 09:08:23 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
        by smtp.gmail.com with ESMTPSA id by30sm1686897edb.15.2021.01.06.09.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jan 2021 09:08:22 -0800 (PST)
Date: Wed, 6 Jan 2021 19:08:21 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
	Florian Fainelli <f.fainelli@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Vivien Didelot <vivien.didelot@gmail.com>,
	Kurt Kanzenbach <kurt@linutronix.de>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	Woojung Huh <woojung.huh@microchip.com>
Subject: Re: [PATCH v2 net-next 01/10] net: switchdev: remove vid_begin ->
 vid_end range from VLAN objects
Message-ID: <20210106170821.z7m6ouapcij25y7w@skbuf>
References: <20210106131006.577312-2-olteanv@gmail.com>
 <202101062240.KXBT8Rcf-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101062240.KXBT8Rcf-lkp@intel.com>
X-Original-Sender: OlteanV@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SIVLZEBO;       spf=pass
 (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::629 as
 permitted sender) smtp.mailfrom=olteanv@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jan 06, 2021 at 10:12:39PM +0800, kernel test robot wrote:
> static void mv88e6xxx_port_vlan_add(struct dsa_switch *ds, int port,
> 				    const struct switchdev_obj_port_vlan *vlan)
> {
> 	struct mv88e6xxx_chip *chip = ds->priv;
> 	bool untagged = vlan->flags & BRIDGE_VLAN_INFO_UNTAGGED;
> 	bool pvid = vlan->flags & BRIDGE_VLAN_INFO_PVID;
> 	bool warn;
> 	u8 member;
> 	u16 vid;
> 
> 	if (!mv88e6xxx_max_vid(chip))
> 		return;
> 
> 	if (dsa_is_dsa_port(ds, port) || dsa_is_cpu_port(ds, port))
> 		member = MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_UNMODIFIED;
> 	else if (untagged)
> 		member = MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_UNTAGGED;
> 	else
> 		member = MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_TAGGED;
> 
> 	/* net/dsa/slave.c will call dsa_port_vlan_add() for the affected port
> 	 * and then the CPU port. Do not warn for duplicates for the CPU port.
> 	 */
> 	warn = !dsa_is_cpu_port(ds, port) && !dsa_is_dsa_port(ds, port);
> 
> 	mv88e6xxx_reg_lock(chip);
> 
> 	if (mv88e6xxx_port_vlan_join(chip, port, vlan->vid, member, warn))
> 		dev_err(ds->dev, "p%d: failed to add VLAN %d%c\n", port,
> 			vid, untagged ? 'u' : 't');

s/vid/vlan->vid/

Sorry about this. I'm superseding it with a v3.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210106170821.z7m6ouapcij25y7w%40skbuf.
