Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5NI3KEAMGQEXR23EVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1946F3EB976
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 17:49:11 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id bj24-20020a0561220e58b02902863f952403sf893999vkb.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 08:49:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628869750; cv=pass;
        d=google.com; s=arc-20160816;
        b=bS/efQxu0h5hgzRjFfiK9+lXgsGABxU7ecHBQoP+nL9u+UFtZxoLWsRILRcUOkLvk2
         izlvEz4b/cJlPL61EwehVQoDT7Nrtuv/ySAW5VnDQ5eZxzCN1rZznrrbO5U/OL14YMoe
         m9ILENhLoAk4ygj63V1lI818jKmhAW1RBwOZX7ysX0qX8uRI9c9JFaNVKCNYYrxnNSX8
         XcvlIz2Y7WUg5bD/YKRVDXLfk70RSo5LDGZYFIwIqs4aPwoX/zqUkJOy2BAZdCRhWl5q
         lKBK1wHcor6Of1dFOqpnYg2VQGR/lLdKqa+q+3fGVxpq/YggZ+pP5Ssb5Eur6VXQgEOo
         BAaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=cJj1m8QF45z/z0eGfTuJDDOgPyYcS6nz89mfn221n7M=;
        b=BkF6Al73vObR0cs9rJ6xKEXtDaS6eb4GR64++VVc7/yVhpGth6wYzPwOSmxbSsQSCy
         WkSu7Q1QZ4h/Czr4t6fLZKSnkxgSoqLk8YNaB9fUoJt1eu+FvphNmEpnJ32MZIaP0a/w
         +4OqLk+VV+ItfMVOM/8r+1fSPd/2ZHPQAOPnNVlau4RDyqMqQUwSWDZ+6WdoPmrbFXfU
         lDuVjOMN+K4tsV0GsVrtWP+tB+e1ew2BJQGyew9eHMl71bSO9ZifZYsMl+veZQy9BujM
         0obzRCgNdUw+W6m1Zc4IfD1tMCEequGwvBdw9QgF9mjd7FW3pqYuC589eu3WYOn+jLJk
         jASQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IYdotH9N;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cJj1m8QF45z/z0eGfTuJDDOgPyYcS6nz89mfn221n7M=;
        b=S4oiA6qDr0eunvM90aY/Ic4OoS8fpo8ONc35iABww4brlEEsWEQQPmRuKSvDgdix8d
         O77L8/97+GF27KHh2z3bttQ6kOWgvqubut9kr2KtUt7pTCUkEXGpU9oEziSgH/04jOdw
         mRnK8cAjuPxpnYtrPqcmk5Kzq4HWYXWA1qaAhabRh97+68LCPHMxApYlrCq/3qYehIQ9
         31m0t6SlVdmDEegsSJ+zu9p7oUxi2EsDNaqroNHPIz7ejvr0MGXhlIrYUga0nPtjYe9p
         8PRoVXj6k7PDqWFqMH3FlfAoGzeQaAT04xQTTVinmza84l/td7ZIJaxdNMfj39JuLC7H
         OCfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cJj1m8QF45z/z0eGfTuJDDOgPyYcS6nz89mfn221n7M=;
        b=AAqXSOUiZI2/0WAq6oLqhRfTd2HbbflwrhM8oboEi0kPkhwcK5SuH0vJ1s2/OGfM0n
         Ab3KmKvbTkXVK22TuSKM/hWBoLbo7EotQMCMa1PoRVMNEB+1GxefaYJzNQJP+PsTb4JF
         0ak42/rAVjA7e9P9g0ppqeKiI7Ln73HM7OvdoWSMhnW9b1RuOD+RQBqX7JlUG5G1fGj0
         An4rjvMmiuvm474J8rynKPGPK5aNrffoLigpB9vhMsh+iE4wTS9PfkYHz9m3HF76oESP
         VP3oo2V43pvkyrRJP5KYhEMKHvH3z9gF34pfHsy616LKkzQ9CdOV/3S8UK9rQOaG7sCG
         opcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533T8CC9FY85TQrFd7ly/0imlNeBdVn8iuF01vmb9vpS5O2iz4gY
	mGR4IcxKWyBly2m5KTiFDfc=
X-Google-Smtp-Source: ABdhPJzIbVJM82/40m3m5FdgLLDguohZdzuN/NKV2nLhdA5S/iNHJuTovsBoBPtuB0OkSojmVl6MfA==
X-Received: by 2002:a05:6122:a04:: with SMTP id 4mr2329004vkn.23.1628869749791;
        Fri, 13 Aug 2021 08:49:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7682:: with SMTP id v2ls182527uaq.10.gmail; Fri, 13 Aug
 2021 08:49:09 -0700 (PDT)
X-Received: by 2002:ab0:3144:: with SMTP id e4mr2388757uam.38.1628869749308;
        Fri, 13 Aug 2021 08:49:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628869749; cv=none;
        d=google.com; s=arc-20160816;
        b=DIAGV7aeMCsU5TcAjtGV7B8DhpPAkYZO7cf16/4sbKRAFh/D3IbK/no4dZJjaqjj3I
         v13poH66HorCwckrFRwHYqGYxbxahM2dVCXcGIciqxL94brmhoG7F5UAmKrt6qCtS1eH
         2bEvzZCm4SUBL6oWH2dOi4qn0Fp9ngeknCPlE9IYvq6m3819SnxVxaAYN4tyCblTfEN2
         1AAJANXnwvmJp1pOXUa4r0gUrxFuyuRBtlI8jlydOZfwmCul/TUmwUNB8XSq4eafZy+a
         5v5Jq4tpW/wNPQQhc7e4JQKClAiaTNY6yZvzFXHR6VAk5iTz62MH0w/XP8sWkgQYdFsv
         2DEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=wwWCtmitPIziHrsVDs3e/WXMsT5Htg5FsOmnBCodSj8=;
        b=cgAsm7+rBLuV1joUY0zfsgASKu9ZstWf1f8fgnfpuG404SbC8jIsXctpB96DnngB5d
         nY+YLy2T76qP2T43uZU8VqEF0IsJ2PEHpCutIv1fruUy9boCzBRBBs/+jy147ShKNzTo
         ZY4kdHcZ8ibcAITGIrJaLKC16zRMC9cywLa8F7u9V0aphiNYwhRvrYRGlhEHYyxbIaCm
         Gh86evGiy/xpp9FPNwuD6OZil6m4XjIQwIji1BkpDBIxiAtlZMDM+e0v4Cn0UjkZZDFA
         kZW0GHAW6UR4JvhsrII+ZHFZDH7b2ZINKRDyUPZGWGAHvAS/fNwpfW8oOXfGJzn7vlK0
         mCiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IYdotH9N;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id q21si141366vso.0.2021.08.13.08.49.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Aug 2021 08:49:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id w14so15854012pjh.5
        for <clang-built-linux@googlegroups.com>; Fri, 13 Aug 2021 08:49:09 -0700 (PDT)
X-Received: by 2002:a05:6a00:150d:b029:3c8:e86e:79ec with SMTP id q13-20020a056a00150db02903c8e86e79ecmr3123596pfu.62.1628869748959;
        Fri, 13 Aug 2021 08:49:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u21sm2725385pfh.163.2021.08.13.08.49.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 08:49:08 -0700 (PDT)
Date: Fri, 13 Aug 2021 08:49:07 -0700
From: Kees Cook <keescook@chromium.org>
To: Johannes Berg <johannes@sipsolutions.net>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 10/64] lib80211: Use struct_group() for memcpy() region
Message-ID: <202108130846.EC339BCA@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-11-keescook@chromium.org>
 <a9c8ae9e05cfe2679cd8a7ef0ab20b66cf38b930.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <a9c8ae9e05cfe2679cd8a7ef0ab20b66cf38b930.camel@sipsolutions.net>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=IYdotH9N;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1031
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Aug 13, 2021 at 10:04:09AM +0200, Johannes Berg wrote:
> On Tue, 2021-07-27 at 13:58 -0700, Kees Cook wrote:
> >=20
> > +++ b/include/linux/ieee80211.h
> > @@ -297,9 +297,11 @@ static inline u16 ieee80211_sn_sub(u16 sn1, u16 sn=
2)
> > =C2=A0struct ieee80211_hdr {
> > =C2=A0	__le16 frame_control;
> > =C2=A0	__le16 duration_id;
> > -	u8 addr1[ETH_ALEN];
> > -	u8 addr2[ETH_ALEN];
> > -	u8 addr3[ETH_ALEN];
> > +	struct_group(addrs,
> > +		u8 addr1[ETH_ALEN];
> > +		u8 addr2[ETH_ALEN];
> > +		u8 addr3[ETH_ALEN];
> > +	);
> > =C2=A0	__le16 seq_ctrl;
> > =C2=A0	u8 addr4[ETH_ALEN];
> > =C2=A0} __packed __aligned(2);
>=20
> This file isn't really just lib80211, it's also used by everyone else
> for 802.11, but I guess that's OK - after all, this doesn't really
> result in any changes here.
>=20
> > +++ b/net/wireless/lib80211_crypt_ccmp.c
> > @@ -136,7 +136,8 @@ static int ccmp_init_iv_and_aad(const struct ieee80=
211_hdr *hdr,
> > =C2=A0	pos =3D (u8 *) hdr;
> > =C2=A0	aad[0] =3D pos[0] & 0x8f;
> > =C2=A0	aad[1] =3D pos[1] & 0xc7;
> > -	memcpy(aad + 2, hdr->addr1, 3 * ETH_ALEN);
> > +	BUILD_BUG_ON(sizeof(hdr->addrs) !=3D 3 * ETH_ALEN);
> > +	memcpy(aad + 2, &hdr->addrs, ETH_ALEN);
>=20
>=20
> However, how is it you don't need the same change in net/mac80211/wpa.c?
>=20
> We have three similar instances:
>=20
>         /* AAD (extra authenticate-only data) / masked 802.11 header
>          * FC | A1 | A2 | A3 | SC | [A4] | [QC] */
>         put_unaligned_be16(len_a, &aad[0]);
>         put_unaligned(mask_fc, (__le16 *)&aad[2]);
>         memcpy(&aad[4], &hdr->addr1, 3 * ETH_ALEN);
>=20
>=20
> and
>=20
>         memcpy(&aad[4], &hdr->addr1, 3 * ETH_ALEN);
>=20
> and
>=20
>         memcpy(aad + 2, &hdr->addr1, 3 * ETH_ALEN);
>=20
> so those should also be changed, it seems?

Ah! Yes, thanks for pointing this out. During earlier development I split
the "cross-field write" changes from the "cross-field read" changes, and
it looks like I missed moving lib80211_crypt_ccmp.c into that portion of
the series (which I haven't posted nor finished -- it's lower priority
than fixing the cross-field writes).

> In which case I'd probably prefer to do this separately from the staging
> drivers ...

Agreed. Sorry for the noise on that part. I will double-check the other
patches.

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202108130846.EC339BCA%40keescook.
