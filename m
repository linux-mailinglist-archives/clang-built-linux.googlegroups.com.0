Return-Path: <clang-built-linux+bncBD2NJ5WGSUOBBA6P3CEAMGQESU7UUWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id A95893EB22A
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 10:04:19 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id b25-20020a05640202d9b02903be7281a80csf4490537edx.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 01:04:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628841859; cv=pass;
        d=google.com; s=arc-20160816;
        b=GG0JuDRhnbo2/tzsNaX0wzj5SbBOlwqmxEwUDx+/vkv3crIGQZ7ciLdixlvlWo+5bu
         7hukYXftZxWKwGNLPqtEL/1Pk9oGI3LuEIZUnfx4HHd/UQRCaL7XkwnivOZgS68lM4AK
         ucWMXs8fVyHzG7Op2t5rsbc8kGhoMeKfIePldl5WsKQN+kmM21aV47a3YOn+f2qLcar4
         YEch+P6hvCud9I4mKGgbbHMgX9vXwy/4P095MEzORlTwXW22nRjjKZ1xHOybzxbAYGIt
         LxfphnWpyniupzNxTpgr9uDY3RMZi5GUlPIYzcDApg7cqnF5Y/Wi2pEjW0c1PACCYTsv
         KHkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=DprlpJOUW03idlo3NztZJOy+7hO4NPNaOs5L43NCpWo=;
        b=rEOUYLJDiYJCfci+0xo0V2/HnuUb1n7Nzx7HXwqIjXCPHK0TfRmewpa3siMpRJVlPr
         XXsANuynIJePQcECmUldqtf1Mn9JrXhs9zj+9l2pkZaVXlAt8ZBPaSBvdq2b9NbnonNF
         7hy8vasfTG5HbRbeEGMFvEwGAbQsuX8A66ZycJPicgu9JcQwnT63ozhZH/D8a3CIqDlE
         9PmHIHocJwoFNsHHRu6OlkEQiY4vVr3ycUAyZfVwYMdmhkvHxM0l3WzUd6ZS2L+dJLk0
         AhnuETI7xH71a6kmGxTHrf2cbqmGlxGWeqxq07pBkTop2bR/938O//SyH4tr8Oi6oyNq
         8vOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sipsolutions.net header.s=mail header.b=VjaeTo9G;
       spf=pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DprlpJOUW03idlo3NztZJOy+7hO4NPNaOs5L43NCpWo=;
        b=VJC86aJ8eRKd/CE0eNb3c4xHgnjxPqjs/KBBm9KlANnwnOASqrOT9Ml0muzrC3wuQG
         Jwgu30ZjqdOxdw9CMo01UiQSYyPz51boys6/6X/2GTEgHf4VIL1bR+2sgAjNP4kcaRPe
         SKcma2fnQiWZTWCJyDwdj4/tnNZeLrfWlZf/kDmj5p4B5WEOWK6vFkQrcR2iJVt8L2ok
         lFrS528WVuCdynIonxUSfPSq3OHOz4xgDKK3thGOOK8yG+Ty/xXOg9uRlnLhU04mnsLJ
         EaZVyOst2YITVdFdgQnrRsnYytUR2XFXFN8lXK/p7e9KgKL1qu9CwsPttvgU2Q/1yXLX
         Ib8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DprlpJOUW03idlo3NztZJOy+7hO4NPNaOs5L43NCpWo=;
        b=rjtsvpRELU+T78RAC50WSUeKAzAwJD2gnSzb7jPm4xkKZktGlBabE4Y9dheJPkHpxe
         pIzIDvRSWXCVfWE1eLhePvLlX8HO4ETSM7aUDV7pLtpWfKeDR//TGd8H9yX9AbKujyZ3
         LpXbTGZ04VauKVlaAEeJJzChjGb8vR32TZZhl9nGHVNLpzGBVShLqHSYUQKCBPTXlj+2
         Ibyl98VDDB7mSLE6q0yl0fnuaN31cKTXhfUWaVMNkJROfurOTOiVKh341Fmw46SkqgON
         lzIvhZF+uSglyLzPxbBFqDFf9HbVQeeTdIkPNeM4ffO80i1m4g7CtpM9SAJ22akgJoEf
         +Uqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LGVGrSTLQ68iUVyhq6DsDgtr/EdwKnB8YvIpOx2yh6jADej+9
	3rgR6k/PdeJRFUEH8ydccUE=
X-Google-Smtp-Source: ABdhPJxYvB0EwEmsfkt4ZN8IOaJiSHscUdzCLjZWS7DD5cdBpjJTvw9btp/DV6JtjqjnGqh0bYRWJg==
X-Received: by 2002:a17:906:39d5:: with SMTP id i21mr1234980eje.529.1628841859446;
        Fri, 13 Aug 2021 01:04:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:20e9:: with SMTP id rh9ls308267ejb.10.gmail; Fri, 13
 Aug 2021 01:04:18 -0700 (PDT)
X-Received: by 2002:a17:907:1c92:: with SMTP id nb18mr1279790ejc.191.1628841858595;
        Fri, 13 Aug 2021 01:04:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628841858; cv=none;
        d=google.com; s=arc-20160816;
        b=uk0GOhNFnX4IinHkhdD8c337JZcy+1Pb8P6FvL3sgjReMEO0Tbzo8BE45rlPd5ZAvO
         Bmj57iKDpKZE8+AGxVd5MRgmWtqf7H2LMA6kB9qCpeGosRY/Xn/ZYyjC4rfUyR8NqBXx
         uf7rrUcMnnWMW1ewDXHbmj2tt022gUe9tX33GTinb2lYU74kAu420p0UesZei0ki52zG
         HotqwVb+6pyh2egkh9LvDjaU8Y4CT07UAXIWDrCap1gRV9j5TzTW2QF89YVDq+EbWWVt
         iKIYFBQVeS6q2L7WTB9vbhgDB8xPd0i2VIzwK1T7RFsPDPc2fpvaBh3u1ztXp6i7onAt
         Gqyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=9+EPWKLBRJolwP8aFlJWDp26AmwHK39v/QqkRv5Vil8=;
        b=0crzgHkSUUXay3tchGDFmcUMrh4uAAbQgux+1w0EcKlMLVEdGK8Vjp9hym/hTklWRF
         JzeogKjulpVF5Qoul93uDbYvwTyr5WhGx0wgYSL0YCqpK37uYwabeD7yeFftWAZ2cmlj
         htit8AT5w2acuszxdj0fdvjtRT2mKiv3tKmOD1xOZrjkJsO1tyI9QK12X2omF+VhPz0b
         HPKIUfy2bj1jvMeH9+d9mZXOxYCN545sB+rEEpv03Cu6aLkSe/2kX83/p0lJPcVtN/nb
         ugkRNM+y0GViy9q2NxXuogdLdIEf/VsmpLNQva1SGjaBlCsYbKLL89P3tX0zsLj7J5+Z
         aH3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sipsolutions.net header.s=mail header.b=VjaeTo9G;
       spf=pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
Received: from sipsolutions.net (s3.sipsolutions.net. [2a01:4f8:191:4433::2])
        by gmr-mx.google.com with ESMTPS id u25si66674edd.1.2021.08.13.01.04.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 01:04:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) client-ip=2a01:4f8:191:4433::2;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <johannes@sipsolutions.net>)
	id 1mESAk-00A9Tn-Sj; Fri, 13 Aug 2021 10:04:11 +0200
Message-ID: <a9c8ae9e05cfe2679cd8a7ef0ab20b66cf38b930.camel@sipsolutions.net>
Subject: Re: [PATCH 10/64] lib80211: Use struct_group() for memcpy() region
From: Johannes Berg <johannes@sipsolutions.net>
To: Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>, Keith Packard
 <keithpac@amazon.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org,  netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org,  linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org,  linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com
Date: Fri, 13 Aug 2021 10:04:09 +0200
In-Reply-To: <20210727205855.411487-11-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
	 <20210727205855.411487-11-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-malware-bazaar: not-scanned
X-Original-Sender: johannes@sipsolutions.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sipsolutions.net header.s=mail header.b=VjaeTo9G;       spf=pass
 (google.com: domain of johannes@sipsolutions.net designates
 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
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

On Tue, 2021-07-27 at 13:58 -0700, Kees Cook wrote:
>=20
> +++ b/include/linux/ieee80211.h
> @@ -297,9 +297,11 @@ static inline u16 ieee80211_sn_sub(u16 sn1, u16 sn2)
> =C2=A0struct ieee80211_hdr {
> =C2=A0	__le16 frame_control;
> =C2=A0	__le16 duration_id;
> -	u8 addr1[ETH_ALEN];
> -	u8 addr2[ETH_ALEN];
> -	u8 addr3[ETH_ALEN];
> +	struct_group(addrs,
> +		u8 addr1[ETH_ALEN];
> +		u8 addr2[ETH_ALEN];
> +		u8 addr3[ETH_ALEN];
> +	);
> =C2=A0	__le16 seq_ctrl;
> =C2=A0	u8 addr4[ETH_ALEN];
> =C2=A0} __packed __aligned(2);

This file isn't really just lib80211, it's also used by everyone else
for 802.11, but I guess that's OK - after all, this doesn't really
result in any changes here.

> +++ b/net/wireless/lib80211_crypt_ccmp.c
> @@ -136,7 +136,8 @@ static int ccmp_init_iv_and_aad(const struct ieee8021=
1_hdr *hdr,
> =C2=A0	pos =3D (u8 *) hdr;
> =C2=A0	aad[0] =3D pos[0] & 0x8f;
> =C2=A0	aad[1] =3D pos[1] & 0xc7;
> -	memcpy(aad + 2, hdr->addr1, 3 * ETH_ALEN);
> +	BUILD_BUG_ON(sizeof(hdr->addrs) !=3D 3 * ETH_ALEN);
> +	memcpy(aad + 2, &hdr->addrs, ETH_ALEN);


However, how is it you don't need the same change in net/mac80211/wpa.c?

We have three similar instances:

        /* AAD (extra authenticate-only data) / masked 802.11 header
         * FC | A1 | A2 | A3 | SC | [A4] | [QC] */
        put_unaligned_be16(len_a, &aad[0]);
        put_unaligned(mask_fc, (__le16 *)&aad[2]);
        memcpy(&aad[4], &hdr->addr1, 3 * ETH_ALEN);


and

        memcpy(&aad[4], &hdr->addr1, 3 * ETH_ALEN);

and

        memcpy(aad + 2, &hdr->addr1, 3 * ETH_ALEN);

so those should also be changed, it seems?

In which case I'd probably prefer to do this separately from the staging
drivers ...

johannes

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/a9c8ae9e05cfe2679cd8a7ef0ab20b66cf38b930.camel%40sipsolut=
ions.net.
