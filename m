Return-Path: <clang-built-linux+bncBDY3NC743AGBBBMR4GCAMGQEJITVLFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D85377880
	for <lists+clang-built-linux@lfdr.de>; Sun,  9 May 2021 22:39:35 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id g26-20020a0caada0000b02901b93eb92373sf10972935qvb.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 09 May 2021 13:39:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620592774; cv=pass;
        d=google.com; s=arc-20160816;
        b=GnMq80i5oNduXsrsyeVbuZlvHumMA9FspaIcyfoOJFZPGencRYx6k+/q71CioKfS6T
         bWZQWqQUhMtPzUoEn8c0YSvJNAMCNia1P/Y4v1KyqRhlbKdaTsvAXvTp4CEkE7bLQDcS
         hsB1RSSVqMeBhVc9SCZugXhJubAu3A9Ze4B1i9e5I+yVLBQba4GMjIh0dSeC9v+z70DT
         bru2yolGg8rerMWFZi11Qcg3gdnbi4jdvWsomICbFQlUeGkKZ//WNhlWkMi9jgrwbRnU
         TaBuGAMfgXyyRRJJHTbk715pPWoKppX8eCTvoQsF1QOUNlQ+sOefNegEixsXGedXkrQf
         EgVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=zCHQqvl849vYBVwpTfL+yUpErIO7eCmiU2EQkbnKa+k=;
        b=I/YJh97S/wQsP+8Svm9yCfKlJtz30usPRx+bbQfmxhMqT7sd0V9ZfD0UbPj1Ug2vr2
         u6xIgGmozlsHQPeeQPFjplmcrSkrHLtKYVJ2rg3Dnyx4MvrFc1r1Ktnmr178sZNoc76k
         Gp2GQWVX9hivl5kJEDN2giGo7iGaa7hfSEfnSPxpliZal4vX2Yk1kq9Muz/Hlpl21eGA
         GuILnaJPQIh/HmFUo/Q0gqL4YDjYfu3SbvwDvj/FbsqGX0fSnsvu20g2UeT0y6VWye9l
         p8wl0a9XePmBKghaDIWaAqJU9YaVHe07hZ7NzEyAXPLbzk3mtDRuhwNRIvX/ey4iadi+
         964Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.64 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zCHQqvl849vYBVwpTfL+yUpErIO7eCmiU2EQkbnKa+k=;
        b=UjI2q8qEH6O2BfGI8j6wzCpQJi3OqvS0SaOBlpdp2k0klghHllyvAusboErLYSlxoH
         sn1WW/9EE5FzE6V64VyP5SLR1upzy1/7MTkz9ny+lR9Wj8cXtbDuSUUvFit5ylPSdBHP
         t9BJWHu1Il8YV5RnWtJkqaB3ZC3NH3js9nE7zcIJ+BaC5Z8w2cHAZQr3utVXMcxV5ZxZ
         jT4Knd2/X8EAouNVxAtSGrUKKBEt9YzfnmVGpCjQPnO7b/2eeLpus8o1mpG1u/sDMjFI
         3SkYSFCgdxfPy5K4P+9InHXxRBSeWzyBAGAy1PRSYEt9C8z4i++BZWfTOIBnJXp6aAGt
         +dog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zCHQqvl849vYBVwpTfL+yUpErIO7eCmiU2EQkbnKa+k=;
        b=MbiY40wDVqjsCczQ8eFRqfVPTuVzMr4G5jBOsuG34m3gwtKIxPFs4bc4ghtGTi2hoB
         CJz+AgF8oaI2LSEH2QcMGQFOGix1ubhUmRLTKfJrwqYimqfzrZ7qIMR1DVPoZb4B88oX
         afSctRuVnkmJm5L3vBp8Bat73BIV9ntj3KhXzPNNYCgsZDyTk7lseV4rXjEj7TEf5l+e
         jdcA0zT8Y1o7RkSfV1vNPZjFOy8jYd5DZ0YN4zkGYIhCoeHhhlKy8vFylDjqU077NlfY
         D5KshECd6bg+y4oIIya9F0S1hcYW137ECO88a1Rfr012xWfRJKfEnDkSe8XunUewHMAt
         jguQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339h1tVIQb1O2QyGIYegW/IRV5fVH7zhxFuqd5QkQkYMyEneHX3
	zmarbYOWTc+nn9clIrjIkwo=
X-Google-Smtp-Source: ABdhPJwX1XWPiccs0OlKe19gQRZarIQsRZT13Zd2io8s5r+Qsyva4A8GaXT9sahtQ0b+TtdCU5ryfw==
X-Received: by 2002:a05:622a:118e:: with SMTP id m14mr20295787qtk.322.1620592774007;
        Sun, 09 May 2021 13:39:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:be8d:: with SMTP id n13ls227116qvi.4.gmail; Sun, 09 May
 2021 13:39:33 -0700 (PDT)
X-Received: by 2002:a0c:f00d:: with SMTP id z13mr20595072qvk.0.1620592773551;
        Sun, 09 May 2021 13:39:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620592773; cv=none;
        d=google.com; s=arc-20160816;
        b=xX7f5Hl+n6aRssKjPkfeWPmJVijRD00O0b8DVVpgNOUuKc7ltIdqXMv1bxAUeUrHiO
         7mvJShVWQaxusE75XGYT6w7btNG3Vu11gSxxVMc30xWLPg4o3/b+trrD164n715cHtpE
         y7Agdu9+JKRZHSrwBO3p9cqZD/fuxmqEV5F18ZbUBmEi1pxj7xCQaVO/269u2FniQIAe
         E6yyJO5aNVojSxIuuNEThrNMfCyhc49Dvpp9E4WrIHlfgEcdGxCj0aGtJaEEHNB4Xg54
         qY9PWHnXofl2eLZCaWPhyjJkO3rjmfEkbObqHoB1qbVQhh9bsh3ysrO71ziqy8dkXZMB
         +YGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=H44KSAQwEApptfzhqhwrRgt5HK39nW5JfvC5QEs8LEs=;
        b=NUa7wvJ/fdcFeHZhUz6kio363J1p4qVCspsGCgNh6vWTO2fvf9SZCqg92KF57N3WcK
         OlDLB5T7PpSfzgsUVyF+W/hbh4tMz5WdKRKw8YYBKw1eTums4zN4b2pE9ItPpVqsWkJa
         QtoIbgeZWTxosnNo1tpv4I1u0dGEtnLeGU9MhyJzFesj4CxbRdEPq4vKmw/p0NLeRGIU
         SI5vxvMyqog73r9CBtnrfZ695wWXQ8th6MwE8K5ithsOZjgfz30D6GC4F/WBqza7vO6j
         Djwpd+1B1ZPFD8rABLdAhhcAJ2Onx8V6kFDhZC1FhbqItNdqZYg2XbxZfFfV3Fa+663S
         G2/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.64 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0064.hostedemail.com. [216.40.44.64])
        by gmr-mx.google.com with ESMTPS id o4si286025qtm.3.2021.05.09.13.39.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:39:33 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.64 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.64;
Received: from omf10.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id C72281803EB48;
	Sun,  9 May 2021 20:39:32 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf10.hostedemail.com (Postfix) with ESMTPA id 716322351F4;
	Sun,  9 May 2021 20:39:31 +0000 (UTC)
Message-ID: <26e1929386babea33d4a320b506c5247caacde77.camel@perches.com>
Subject: Re: [PATCH] HID: ft260: fix format type warning in ft260_word_show()
From: Joe Perches <joe@perches.com>
To: Michael Zaidman <michael.zaidman@gmail.com>, lkp@intel.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, jikos@kernel.org, dan.carpenter@oracle.com, 
	linux-input@vger.kernel.org
Date: Sun, 09 May 2021 13:39:29 -0700
In-Reply-To: <20210509193213.5974-1-michael.zaidman@gmail.com>
References: <202105060637.LeEC6ztp-lkp@intel.com>
	 <20210509193213.5974-1-michael.zaidman@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 716322351F4
X-Spam-Status: No, score=-1.39
X-Stat-Signature: ej3kn3hz1a616w4iphgdqbkydg44xq9z
X-Rspamd-Server: rspamout01
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX18+mGqGafvpLnySgOkl4ipBmKaijyWq5nc=
X-HE-Tag: 1620592771-976842
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.64 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sun, 2021-05-09 at 22:32 +0300, Michael Zaidman wrote:
> Fixes: 6a82582d9fa4 ("HID: ft260: add usb hid to i2c host bridge driver")
>=20
> Fix warning reported by static analysis when built with W=3D1 for arm64 b=
y
> clang version 13.0.0
>=20
> > > drivers/hid/hid-ft260.c:794:44: warning: format specifies type 'short=
' but
> =C2=A0=C2=A0=C2=A0the argument has type 'int' [-Wformat]
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return =
scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0~~~     ^~~~~~~~~~~~~~~~~~~
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0%i
> =C2=A0=C2=A0=C2=A0include/linux/byteorder/generic.h:91:21: note: expanded=
 from
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0macro 'le16_to_cpu'
> =C2=A0=C2=A0=C2=A0#define le16_to_cpu __le16_to_cpu
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0^
> =C2=A0=C2=A0=C2=A0include/uapi/linux/byteorder/big_endian.h:36:26: note: =
expanded from
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0macro '__le16_to_cpu'
> =C2=A0=C2=A0=C2=A0#define __le16_to_cpu(x) __swab16((__force __u16)(__le1=
6)(x))
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> =C2=A0=C2=A0=C2=A0include/uapi/linux/swab.h:105:2: note: expanded from ma=
cro '__swab16'
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(__buil=
tin_constant_p((__u16)(x)) ?     \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0^~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>=20
> Signed-off-by: Michael Zaidman <michael.zaidman@gmail.com>
> Reported-by: kernel test robot <lkp@intel.com>
> ---
> =C2=A0drivers/hid/hid-ft260.c | 2 +-
> =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/hid/hid-ft260.c b/drivers/hid/hid-ft260.c
> index 047aa85a7c83..38794a29599c 100644
> --- a/drivers/hid/hid-ft260.c
> +++ b/drivers/hid/hid-ft260.c
> @@ -791,7 +791,7 @@ static int ft260_word_show(struct hid_device *hdev, i=
nt id, u8 *cfg, int len,
> =C2=A0	if (ret !=3D len && ret >=3D 0)
> =C2=A0		return -EIO;
> =C2=A0
>=20
> -	return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
> +	return scnprintf(buf, PAGE_SIZE, "%d\n", le16_to_cpu(*field));
> =C2=A0}

There are 2 of these so I wonder about the static analysis.
It's probably better to use sysfs_emit as well.
---
 drivers/hid/hid-ft260.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/hid/hid-ft260.c b/drivers/hid/hid-ft260.c
index 7a9ba984a75a..475641682fff 100644
--- a/drivers/hid/hid-ft260.c
+++ b/drivers/hid/hid-ft260.c
@@ -783,7 +783,7 @@ static int ft260_byte_show(struct hid_device *hdev, int=
 id, u8 *cfg, int len,
 	if (ret !=3D len && ret >=3D 0)
 		return -EIO;
=20
-	return scnprintf(buf, PAGE_SIZE, "%hi\n", *field);
+	return sysfs_emit(buf, "%d\n", *field);
 }
=20
 static int ft260_word_show(struct hid_device *hdev, int id, u8 *cfg, int l=
en,
@@ -795,7 +795,7 @@ static int ft260_word_show(struct hid_device *hdev, int=
 id, u8 *cfg, int len,
 	if (ret !=3D len && ret >=3D 0)
 		return -EIO;
=20
-	return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
+	return sysfs_emit(buf, "%d\n", le16_to_cpu(*field));
 }
=20
 #define FT260_ATTR_SHOW(name, reptype, id, type, func)			       \

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/26e1929386babea33d4a320b506c5247caacde77.camel%40perches.=
com.
