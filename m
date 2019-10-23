Return-Path: <clang-built-linux+bncBCVOD7PJWIARBZGOX7WQKGQEWUXXIRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D9DE11BB
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 07:38:45 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id z13sf15282288pfr.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 22:38:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571809124; cv=pass;
        d=google.com; s=arc-20160816;
        b=FT5s/r6Kk33ldt000xGE2eWWr56SbfQ8voUqWxkbd7ZLGuhknW6hu8zJnHX28C1A4x
         eB9h/orASR4vyvjaIcMOpfZIFECIZV9ilg+qmvwJBtGZOsNCIjUcihiKS3/mfglRugQT
         K/JXOrFYD6i3EML6Za1vJaRPz9dJtceuDrWLJiAIBGZYuoz4+tNRzsS3dqt5KdqE7dl2
         SgbO8NsMspMKzPddmYpFDAVw69+Nq9xLf2VS5fQ6x+uCM08A0IrI4eTdE8Osdpg8AhsH
         1tiMQZdzKygZgS4L4nfaTYEkyN0TVToeDp8Az+NiPDG8Pk1fXC5JVnh6rl0DcJ0dh841
         10Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:authenticated-by:sender
         :dkim-signature;
        bh=skXHzoLK5UjLlNC+go+8zJMukBjRbkGxkbC8Jg5mi84=;
        b=h1S42fLpbyUF6RIZ0MYtd65eHneYUH66jCnhF3TxXxLLAG5pW8fOTH1CeclEcXBSR4
         2yFe6PpJaMu2ZrfD+quu4HtNvdIpERi1tXGrqSPDqLRZqrMjmZ9zVs1MjPvRXP9dX0DU
         yW1ErxlaO4Tm7YBU6L0THHbyhT5pN1yR8kmmVfRzNgAE2bdogF2tfNSSZw+AfjADIU5X
         g93otwz5qaQdMlsSDsHqSu7xLtiUs4SX4hmnKj+z5OQAh2Ih/8qnYXZHFDuwFRr4vpLc
         UUiG1WMsK/kZ3Mya0LZax9rcEjV92NfJrymG2yNjTnrsmy7A8ao74iCUdwqB5ku3Oa02
         Ln9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of pkshih@realtek.com designates 211.75.126.72 as permitted sender) smtp.mailfrom=pkshih@realtek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:authenticated-by:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=skXHzoLK5UjLlNC+go+8zJMukBjRbkGxkbC8Jg5mi84=;
        b=C8Nq/Lg2mueEFTb6n4wQghNtd6t5Hi0eFC0KGCn+T5/85IzJYS3XeR/f7p8tLP2kYd
         x/qta/sVN7f0ZP1a/IUGMtxqPWaYrRy9JqTg/84R2c+cZs0dgXHlxIFlhwAfrjy/xGRN
         s9O0PfBjW52jmtDizR7XaAcdU6FVjhocyQBKEElisUnPA/3UYJsY42IosWAunExNAbZH
         eCLUMv2PjvGRm1oNwFGZleAwhC4cJDYeNcfn5Z/EhESfbY/VNkfVGKb+AjFgiii8t4ja
         I6AztqF6CHN/WEOU9LqHEIHAjVg2JWQFcTAp4Zr/NemRe8GbVWeUJdLjIuHYSUvAIppB
         5TPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:authenticated-by:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references:in-reply-to
         :accept-language:content-language:content-id
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=skXHzoLK5UjLlNC+go+8zJMukBjRbkGxkbC8Jg5mi84=;
        b=mWvSebFVrvFxE+mYi204XUXpv5v7OxSRhUjKAdCn7/5b3p9lnlzjejpjPHUT6lUZjF
         QG13cXC6xzybz5Vu3Ywz3JCm8ZaHobf9YWamTkAlT0kq81n8pF5yuqPDcrm4Jzc2b/iF
         o5/SRf5i1UUQUTe+6ITgooJbdfR32F3HPhpClsM1qhreJAeaoNdzG/+dd7vLe4BImDKb
         rTMKUHYv90W/jyagVFZpeBtDGhPs/vCNDZ+qU4gNltUysZwN2Qm2V8XhZMUuZw3Ae+Qt
         LfcraaoRafdRIHRACIMlOAE+8fl0zBlubplRB9WcEtUboTFD4SbE9cx75YjTuf0/qrnB
         EZBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWuwPxYsD5Yf4MGwDsrUFFDfyyCMvtIUUd1kB5kM+cDbPngEEhO
	d1Vo7T8LCe0hMMLaKCvRsuo=
X-Google-Smtp-Source: APXvYqzN/jskQtA5LZ3DUf6xLF3BZrArBT4DyfyG7ecsb/yGFTFW2cLz0XeyxNYq/qNkXQzaZuAgtQ==
X-Received: by 2002:a17:902:8a8c:: with SMTP id p12mr7466284plo.208.1571809124252;
        Tue, 22 Oct 2019 22:38:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:59c7:: with SMTP id d7ls373184plj.1.gmail; Tue, 22
 Oct 2019 22:38:43 -0700 (PDT)
X-Received: by 2002:a17:90a:fb8c:: with SMTP id cp12mr2135089pjb.140.1571809123668;
        Tue, 22 Oct 2019 22:38:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571809123; cv=none;
        d=google.com; s=arc-20160816;
        b=V0gSF5dZxIUxFbsJOXtDF8AFNLqGmXw+GxbaFWG0HsnnkCEcxpQLXDL4KhJGegHynA
         HL/pRDnvKuSToEZ02jgUBVNA7UJoc31m29fkwaZ5QeUN1V2ZPqiHs8zbR6qDY2F/5dtc
         O3R3KTqRKHvhAXHqTtBzEXv2ZUjBSSjlQEIW5DY57zYXhim+Xym6Fj6D/KVEglwc8s0K
         GziN4YxaCm+3iZbaq8w/rpUE2G5yi0h49P2c8hxCsJhDLP/Md5cJeDOq2ZjtexTCTPhj
         Now+eftXkNE3/8snSPWc2EINI17QQSblEVgHjm6mlb2pDsBdTduYRNNHjS1Rcw2vZSoA
         EXNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:authenticated-by;
        bh=R66PT2fDH/rR93lFA37HusSb3N8+5ZGDWwGa/gJR07Q=;
        b=Q0MWkmoYWB6p2/jDJezfP6IR+BPaeHw0SqlLjYfKv8GrLKHzYMrRmRsYl4nz/jtZDi
         ZbMam/JCebC5omnmwHUFyyhBlfFAskXoVznTv2CM6JDDaU4FRS+pUXJBcQXAakgCY9rt
         I0OWjpl6t1cvunWnjxLfCAhYPo4cSAANIn/V7ChzfswbWq2nXnDSoWGeHirUbOtngc7+
         WTFGIFlAH4dsba8onfdfUxUAXlAC8v0/aK7JpbdRGoPjIrZ6LjLUXqDtmgKHhc9bqZkk
         hncK3QUeeoHiswrEgZeEZVqpFY67HOiTn/UaG5xii6GV7QvgyDGEZfP2KOObIRFHBMPO
         xVCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pkshih@realtek.com designates 211.75.126.72 as permitted sender) smtp.mailfrom=pkshih@realtek.com
Received: from rtits2.realtek.com.tw (rtits2.realtek.com. [211.75.126.72])
        by gmr-mx.google.com with ESMTPS id d5si1030779pls.5.2019.10.22.22.38.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Oct 2019 22:38:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of pkshih@realtek.com designates 211.75.126.72 as permitted sender) client-ip=211.75.126.72;
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID x9N5cVkK004030, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
	by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id x9N5cVkK004030
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 23 Oct 2019 13:38:31 +0800
Received: from RTITMBSVM04.realtek.com.tw ([fe80::e404:880:2ef1:1aa1]) by
 RTITCASV01.realtek.com.tw ([::1]) with mapi id 14.03.0468.000; Wed, 23 Oct
 2019 13:38:30 +0800
From: Pkshih <pkshih@realtek.com>
To: "kvalo@codeaurora.org" <kvalo@codeaurora.org>,
        "natechancellor@gmail.com"
	<natechancellor@gmail.com>
CC: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
        "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "Larry.Finger@lwfinger.net" <Larry.Finger@lwfinger.net>,
        "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] rtlwifi: Remove unnecessary NULL check in rtl_regd_init
Thread-Topic: [PATCH] rtlwifi: Remove unnecessary NULL check in rtl_regd_init
Thread-Index: AQHViTtpsZzjxTpDzEGH+xR50FXlCadnL6AA
Date: Wed, 23 Oct 2019 05:38:30 +0000
Message-ID: <1571809110.12757.0.camel@realtek.com>
References: <20191023004703.39710-1-natechancellor@gmail.com>
In-Reply-To: <20191023004703.39710-1-natechancellor@gmail.com>
Accept-Language: en-US, zh-TW
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.69.95]
Content-Type: text/plain; charset="UTF-8"
Content-ID: <EA6B22816DFAC3419D67AF0D26586ED0@realtek.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Original-Sender: pkshih@realtek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of pkshih@realtek.com designates 211.75.126.72 as
 permitted sender) smtp.mailfrom=pkshih@realtek.com
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

On Tue, 2019-10-22 at 17:47 -0700, Nathan Chancellor wrote:
> When building with Clang + -Wtautological-pointer-compare:
>=20
> drivers/net/wireless/realtek/rtlwifi/regd.c:389:33: warning: comparison
> of address of 'rtlpriv->regd' equal to a null pointer is always false
> [-Wtautological-pointer-compare]
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (wiphy =3D=3D NULL || =
&rtlpriv->regd =3D=3D NULL)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0~~~~~~~~~^~~~=C2=A0=C2=A0=C2=A0=C2=A0~~~~
> 1 warning generated.
>=20
> The address of an array member is never NULL unless it is the first
> struct member so remove the unnecessary check. This was addressed in
> the staging version of the driver in commit f986978b32b3 ("Staging:
> rtlwifi: remove unnecessary NULL check").
>=20
> While we are here, fix the following checkpatch warning:
>=20
> CHECK: Comparison to NULL could be written "!wiphy"
> 35: FILE: drivers/net/wireless/realtek/rtlwifi/regd.c:389:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (wiphy =3D=3D NULL)
>=20
> Fixes: 0c8173385e54 ("rtl8192ce: Add new driver")
> Link:https://github.com/ClangBuiltLinux/linux/issues/750
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Looks good.
Thanks for your fix.

Acked-by: Ping-Ke Shih <pkshih@realtek.com>

> ---
> =C2=A0drivers/net/wireless/realtek/rtlwifi/regd.c | 2 +-
> =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/wireless/realtek/rtlwifi/regd.c
> b/drivers/net/wireless/realtek/rtlwifi/regd.c
> index c10432cd703e..8be31e0ad878 100644
> --- a/drivers/net/wireless/realtek/rtlwifi/regd.c
> +++ b/drivers/net/wireless/realtek/rtlwifi/regd.c
> @@ -386,7 +386,7 @@ int rtl_regd_init(struct ieee80211_hw *hw,
> =C2=A0	struct wiphy *wiphy =3D hw->wiphy;
> =C2=A0	struct country_code_to_enum_rd *country =3D NULL;
> =C2=A0
> -	if (wiphy =3D=3D NULL || &rtlpriv->regd =3D=3D NULL)
> +	if (!wiphy)
> =C2=A0		return -EINVAL;
> =C2=A0
> =C2=A0	/* init country_code from efuse channel plan */


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1571809110.12757.0.camel%40realtek.com.
