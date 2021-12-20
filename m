Return-Path: <clang-built-linux+bncBC27HSOJ44LBBDEZQKHAMGQEG6RLV4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B69F147AAC7
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 15:00:44 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id z200-20020a1c7ed1000000b0034574ef8356sf1919378wmc.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 06:00:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640008844; cv=pass;
        d=google.com; s=arc-20160816;
        b=rHmHBNm/VPJRbZm3A+eUnBywIvR1mToWqguxk4JBsCTofPY4sqpr6FMha0B73vMBPO
         8T7GMEWiIwthTol2rXjGMhdKWfRyQmj2orw8nUNWocsdlYLUIyg1o2PVWXsZr37QrlH0
         TUatf9FAADg3os4ha7XF5kdgUOFnWBZWkHcuvrdpNn3hlUZ2+V48wJpeJRC2he79gugG
         A/C6FYcjN5Jnx/a1BOwQ5OhQK8FvajsnLCnmDheLuhrEGc81ZC72Jv7PSVCk62K0DdGu
         A0r8IH6XovHFFg5rOCHo2cXYhF3FXwEMBt216PGxxt+YQn/ThCypC80WFAqMlyE1c0Hw
         5I2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=82fOu+hO5ryvMfITpP26bpwxlAprgIShV94Cx10qWlM=;
        b=QonZb9Uu53Mqqnry305V8SE6hKuSN+9DyfycON2xLnjtl1N73CpeSJmIyi8qzxylnV
         0zKdk8o2hL0RSc+ZnUJZOpSj+/8XYFk/yORjPeTzgIEPpagD/9nhrKuMiU+n7M61/pVE
         jyNkjgP2661RioBRdpvm/apUNzCm5s2bY/0VcU2p+j/x+yqakj5ejHNqa1x3N+4LotEZ
         q/RSeLBZsyvKWXIZTbP4jb6dedTf10BWOqB+l7y5hBSv8os9O8rijvUSJq+rey6kd6Bp
         w6ICOKum4KZskltzivZpKJRMKe7aD1r1BBYkNLK5lkmsOhoJYUsEfOKwJxxd5nNe12KU
         k1PA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=82fOu+hO5ryvMfITpP26bpwxlAprgIShV94Cx10qWlM=;
        b=i5wt3WThJdYVe0PrtxVEEi/LTcE/KNBtdCVZoSYgtppaeUiT8P1lNA2mW1DDq1r4wn
         S93TodYHhzSixowesOpQ2TQWV6C0xusJ04L3+9k0kzK9WREsTaHCKSnv+rVCM5ie4uNp
         9TpOdmaIhG1AqEtY3me/GIk4LqPbsesoPXWN+3N7r4IYEJ/qh00V/nq4e6Yf5OV4VJaO
         w7/0oFakWCKdL/XmfPVW8LY9pL6nSyB3IksbHJr+2Fs0QKirmleQGfkmUEuNr8Ef1WJu
         e2RTL+hT/AwxU5vRNndp6D2t2S6T1vUd5nNgnuANuAaSMYlj+4q1vx/IiPyxbsDHkLlo
         qcHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=82fOu+hO5ryvMfITpP26bpwxlAprgIShV94Cx10qWlM=;
        b=0l3vHlsrq423WRQsQtjSA1+UI5bJ1i5/+rqCQmyHQX3GxST3Fj4hZp6fPNsW9zxZOu
         2b97iM+fAJqyjsW/0UIX/hUFEPu73Ksq/WABrNM0++IMuxG4Mnd88d35A4cwXNvDHCBA
         BgWSpvZ3rdiB1voW641pP8SZkkVosrA5ZmQaxkp3ZpesFKQWj6LeB8fPon8HmtVc6hZ8
         5GgFG5PBt785kvDOCLiplymNk+N7qubjbZriwinuPdhpOZPW50ElTxCSiNFBq5h/zTDl
         z+Z44+pEb3KZTb9xPYP45v36QKGyEwp7h09qxHT2rPYugIEcVc77JtMuNx05r3bSts2n
         WwMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NDBxSRZf2jHzlxrd7wbQRO58Ug+0bd3KDVqEdfc8iP6QmxiHb
	eocU34K+GmlVPFppvQI97TM=
X-Google-Smtp-Source: ABdhPJw4sEfnArRIhosEO2FXsvLhCEddzDO3D3cEfg/Bh47pCpcI0e61qhFQ6LLiaDScJEN1kT0y1A==
X-Received: by 2002:a1c:1d0d:: with SMTP id d13mr11902277wmd.78.1640008844395;
        Mon, 20 Dec 2021 06:00:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d21b:: with SMTP id j27ls4757548wrh.3.gmail; Mon, 20 Dec
 2021 06:00:43 -0800 (PST)
X-Received: by 2002:adf:ef0b:: with SMTP id e11mr12867465wro.621.1640008843557;
        Mon, 20 Dec 2021 06:00:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640008843; cv=none;
        d=google.com; s=arc-20160816;
        b=0Tb0p85A9cFICs9QziB++wj4iLjKZzPUo4qKblqZ53wCODF66ltU/JK37bIXAzvipX
         pBwODJ7gTgq1fspzoO22TL3+f0nCGa5c6AMLFXV4G0uCugd1gyMBH3BxpZHsIwm9VNlO
         aY9+Z6Pk0959Y9WTjlCTr98/J2klJKByZWShUvHs0iTleNcy6qK6B//ATkmAxziyleDG
         pxrnYUTGS1adcXlN5wR2jn8N5ua6RhMZPiiNe2GS74v/TcBQxs6XAj6XvgRvM6L1hKxl
         yFXPr2hoMVe978iXt009Scb+jKL9HnDnR0sucm+evPK2r8FGlvUg2WvOlIzN/3dde6e4
         PMBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=O8SNmcXVOXDfmnuwxgS/KjpfJhM8qwdd94Q346jsmjo=;
        b=xQbjP47TeSJ/Gg7tblYfYV25YW50irRF5E3H8yQB3iXuhmkevUSy8VlTcVYclJNRLL
         LU7m61c+YQNx8WVoNL3wP2iOWfnuv3GT5h0M0NNkxfBYdYibBzLjuzkpvk46JDWXTDy+
         rw4hPKCnT8/ZNAdUI3xOR+Bemc2nD1yj02kXlYK/75HfyeoH9cD1xgAptkDjEVoTr/UQ
         IcLWghhFF5jeMEAv76ayOKFyVN2uqdIe0nMHnMc42IMguH0uKZAu1OtquxmJ28IJLypN
         iEhuVnU+b1ku1BXMi4DCwsYTY5/52pi7Rnk6awW89qIylp4+HMGGps5EOCs/7bamHb/h
         VLAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.85.151])
        by gmr-mx.google.com with ESMTPS id g9si909745wrm.3.2021.12.20.06.00.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Dec 2021 06:00:43 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) client-ip=185.58.85.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-106-ThBTv8hIOJK8PeJnyhEimg-1; Mon, 20 Dec 2021 14:00:42 +0000
X-MC-Unique: ThBTv8hIOJK8PeJnyhEimg-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.26; Mon, 20 Dec 2021 14:00:40 +0000
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.026; Mon, 20 Dec 2021 14:00:40 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Joe Perches' <joe@perches.com>, Anders Roxell <anders.roxell@linaro.org>,
	"stable@vger.kernel.org" <stable@vger.kernel.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"woojung.huh@microchip.com" <woojung.huh@microchip.com>,
	"UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
	"davem@davemloft.net" <davem@davemloft.net>, "netdev@vger.kernel.org"
	<netdev@vger.kernel.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "ulli.kroll@googlemail.com"
	<ulli.kroll@googlemail.com>, "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "amitkarwar@gmail.com"
	<amitkarwar@gmail.com>, "nishants@marvell.com" <nishants@marvell.com>,
	"gbhat@marvell.com" <gbhat@marvell.com>, "huxinming820@gmail.com"
	<huxinming820@gmail.com>, "kvalo@codeaurora.org" <kvalo@codeaurora.org>,
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
	"rostedt@goodmis.org" <rostedt@goodmis.org>, "mingo@redhat.com"
	<mingo@redhat.com>, "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>, "nathan@kernel.org"
	<nathan@kernel.org>, "linux-input@vger.kernel.org"
	<linux-input@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>,
	Andy Lavr <andy.lavr@gmail.com>
Subject: RE: [PATCH 4.19 3/6] mwifiex: Remove unnecessary braces from
 HostCmd_SET_SEQ_NO_BSS_INFO
Thread-Topic: [PATCH 4.19 3/6] mwifiex: Remove unnecessary braces from
 HostCmd_SET_SEQ_NO_BSS_INFO
Thread-Index: AQHX9ZskhY8SD9NuYU2K0YFKH5iuIKw7ZcMg
Date: Mon, 20 Dec 2021 14:00:40 +0000
Message-ID: <5797d1aff9034476afa6827af2bfbce7@AcuMS.aculab.com>
References: <20211217144119.2538175-1-anders.roxell@linaro.org>
         <20211217144119.2538175-4-anders.roxell@linaro.org>
 <bc4a4ba7c07a4077b9790be883fb4205d401804e.camel@perches.com>
In-Reply-To: <bc4a4ba7c07a4077b9790be883fb4205d401804e.camel@perches.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

From: Joe Perches
> Sent: 20 December 2021 12:13
> 
> On Fri, 2021-12-17 at 15:41 +0100, Anders Roxell wrote:
> > From: Nathan Chancellor <natechancellor@gmail.com>
> >
> > commit 6a953dc4dbd1c7057fb765a24f37a5e953c85fb0 upstream.
> >
> > A new warning in clang points out when macro expansion might result in a
> > GNU C statement expression. There is an instance of this in the mwifiex
> > driver:
> >
> > drivers/net/wireless/marvell/mwifiex/cmdevt.c:217:34: warning: '}' and
> > ')' tokens terminating statement expression appear in different macro
> > expansion contexts [-Wcompound-token-split-by-macro]
> >         host_cmd->seq_num = cpu_to_le16(HostCmd_SET_SEQ_NO_BSS_INFO
> >                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> []
> > diff --git a/drivers/net/wireless/marvell/mwifiex/fw.h b/drivers/net/wireless/marvell/mwifiex/fw.h
> []
> > @@ -512,10 +512,10 @@ enum mwifiex_channel_flags {
> >
> >  #define RF_ANTENNA_AUTO                 0xFFFF
> >
> > -#define HostCmd_SET_SEQ_NO_BSS_INFO(seq, num, type) {   \
> > -	(((seq) & 0x00ff) |                             \
> > -	 (((num) & 0x000f) << 8)) |                     \
> > -	(((type) & 0x000f) << 12);                  }
> > +#define HostCmd_SET_SEQ_NO_BSS_INFO(seq, num, type) \
> > +	((((seq) & 0x00ff) |                        \
> > +	 (((num) & 0x000f) << 8)) |                 \
> > +	(((type) & 0x000f) << 12))
> 
> Perhaps this would be better as a static inline
> 
> static inline u16 HostCmd_SET_SEQ_NO_BSS_INFO(u16 seq, u8 num, u8 type)
> {
> 	return (type & 0x000f) << 12 | (num & 0x000f) << 8 | (seq & 0x00ff);
> }

Just writing in on one line helps readability!
It is also used exactly twice, both with a cpu_to_le16().
I wonder how well the compiler handles that on BE?
The #define is more likely to be handled better.

I've only made a cursory glance at the code, but I get splitting
host_cmd->seq_num into two u8 fields would give better code!

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5797d1aff9034476afa6827af2bfbce7%40AcuMS.aculab.com.
