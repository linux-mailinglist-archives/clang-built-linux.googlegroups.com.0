Return-Path: <clang-built-linux+bncBDY3NC743AGBBW6E4WCAMGQE456NJKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id CC49B37944E
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 18:42:04 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id 2-20020a1709020202b02900eecb50c2desf6298681plc.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 09:42:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620664923; cv=pass;
        d=google.com; s=arc-20160816;
        b=dkHOM9ji0sR6rDgc0Xfpk6Stdwv7KLKKgVvonqCCnCMECT60jCBeDId9PkfBPcuaKO
         zWo1tQEfpemtkx5xuAqYPeKtM3s4uS3LEBBuGms17D0CGAsrl6AkbR5UJzk9IXH9Mpd5
         ulUNgRHFylNHFE1G8puyFdQ6RO2QTyQoCFUis9WBEhpmFEiVCld8ai1s4TJXpNmciSVg
         5TkC6sAksi8/fqZgtJqBpRFtM7vTWiB/pSTnIR2s/beSA55jfKVWxv8ASFyQDhdkRVGV
         tmYOjZsA5mPr2FaGFPdM/UM9R0xDDYRCDFhXnI4WEVzAku+jBUYAowt0gB4XRTautaSH
         F6dA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=QcsKFEHNAu6VudZHkMzRj3sBvYoM4Q+SZGmXE4i4O68=;
        b=tqBLIyUyoU7BeK1hHYdfL1mSxF4V6jJWtGBHScycFJ5fzTg76yX7h4A50+rZ3RCybY
         tTlDQdRSOZ0P14gZw87L5zKnNUQF7IZYVtLDtgt0fvmL+LoNQ0FO/W+fuP2rDbGbwzDy
         kig8al5jFMkFifj09eRkHbgeYYdbCUbNvxkd/pWuupwAGncpOW9tpXZ+FPcsatlK0iqX
         12WtrVTOllYjSZGrTYqSOPBfwiZMod4nXFjOrPXAvAa/84qQrsDvHB/33VXzfmnbQvL1
         +zsVaRlTVTw7hdf450Ll8KphIWMf8R9r+X+xNkhIx5fg6i+WIDsCmWuy3zaWgGlCbS5I
         EEmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.149 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QcsKFEHNAu6VudZHkMzRj3sBvYoM4Q+SZGmXE4i4O68=;
        b=cRnyQiR2nm/OhQHjp2zfcPVf5rvp9RKQOB6z0koL541thwb5HdA4FnXTX52+01aWJq
         mpDX2a4i1oTRBX6r9FLnTSFeTLc15WovB9ciM7nC8M2KKYMOfyXAOPgYr7Ym4ZuGSX8P
         /dshyHmRKeaAC97l2s9TtIPX3oI9nWZZ7deDc53Khl0/RQYxxEFpywudTplIslVEp3Uh
         /Tt36PZmFArH3cf0ZjaEekFdkUp0rknA/r3MKxnirl923qbNejazfMXEtFDgY0mFWwhv
         1mcEc2uAdQdfH0vl6LS+HzfrzjeL88itp/Dx+S5xKtB+ug96t0ehdYe5L1vriGDimtpw
         K0lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QcsKFEHNAu6VudZHkMzRj3sBvYoM4Q+SZGmXE4i4O68=;
        b=Kt9VvOawN4qeobYIc03Nhg/c5wwmD3AUhx7lnMnOX0hqSEA++vKPjTc6isEFnFv5D4
         8flW4cq0mj33/ZNxx6gwwfDDOqE7t1i37mrCSX9emjBQlHTvXHdv6QMas4B83+Or72Uo
         Lahn0ATb6d4GfOYElttDYUyeHO80Ft6LuFq1OPsqzjru47aqvHPP94BpwGfq5/qpEnIb
         +i6vyXG8fcKobH81PbiqxYo4FgHlLvGbgfAHsCNMxn+49V0eoc/iyhDXNB24aUvuQJRQ
         h4zSwBpf4N7jdN01p7CVuNGX0/FFGtKfGQCq9U5Aa/LxgecsSxZVskR7oDeHLARsJGZU
         RCVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IAES4qn4xXQB6YN1GPia/zHI2R3gTzbSnPQwE+doIt17XJFbu
	5SIBGqwtKtQXMB8fnLtIuEc=
X-Google-Smtp-Source: ABdhPJxcyrsMh2fYLLoqS6gds/G20uh8fgBi5b8HHbmrn4QAcJoU537pQ3uPw9OGeNUDpE8OLLH3Mw==
X-Received: by 2002:a63:4442:: with SMTP id t2mr26638214pgk.232.1620664923485;
        Mon, 10 May 2021 09:42:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ea10:: with SMTP id t16ls6428356pfh.9.gmail; Mon, 10 May
 2021 09:42:03 -0700 (PDT)
X-Received: by 2002:a65:62d7:: with SMTP id m23mr26280546pgv.244.1620664922946;
        Mon, 10 May 2021 09:42:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620664922; cv=none;
        d=google.com; s=arc-20160816;
        b=V3a7ibuagTj6z0lN5DGEjMQ8HbSCKr3HZ9R5CjRoBrTMiBbz57IX63TvEUcoC0tK97
         lYlgKEu3vdwZvM0JvBmQVi27PoMwe1sG5enpvogNondcOakRkvrHyw1gkOJd8FchOeyF
         YFPzjA9sG6u6Uq44LsE1JbKnhcDCb7cfOyAIaeOd04UZFusfA5YDSTkZ8iADriW//ri+
         tl5RxDsTaeMwxfEYCyO4Sv1SRwy4+C2I+/dhLNGfl51Fx+gLj+RSKlZmhvoOUYCEKrWz
         nJ2oTRJ6MioWx9Y7pFrRNygY7PbeIEa54dOINr+46uNZHCif9NeDXJJ+oAuSG3xPjCZu
         plpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=h2q7qdxHnKqt6dgZTeWCwO5i8hLjW2ju0Z3AVSENA+o=;
        b=IZzAFcRNv7J8c9XJ7m+KhDh+RenQ7rXZN8PYZs1rgDEagnmQAI2g+cqLeckXisciHy
         E+uMtZuvwWV2GibE2Asp216RUzNz7ofTkUjYeoiPpD5IGAqK+aN0XqFxfvmQpg84FkpQ
         DqmGCBAAw/sLNNnnc/Q6Ayfp1z8WEtvJyuDwYuMxkVi3fpTo7VHEDICL+J398z4SrZHm
         P2kavA1mth4DhHE6Psft934NGq3i3+RPXL/oExAwKKw0qxf+nq8pzip2R76a9WXfD/JA
         4eCtzYwM8ayjzqflVX0ryQS4ZQWUto+fL+NT8pqjjElmAD2fy82/9i7GzCwie14gThBi
         gKfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.149 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0149.hostedemail.com. [216.40.44.149])
        by gmr-mx.google.com with ESMTPS id hk5si64493pjb.1.2021.05.10.09.42.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 09:42:02 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.149 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.149;
Received: from omf06.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id E9E821802C663;
	Mon, 10 May 2021 16:42:01 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf06.hostedemail.com (Postfix) with ESMTPA id 9B2CC2448BB;
	Mon, 10 May 2021 16:42:00 +0000 (UTC)
Message-ID: <6a589bf720c5420e09bcc3c40b812bf6822d3a3d.camel@perches.com>
Subject: Re: [PATCH v2] HID: ft260: fix format type warning in
 ft260_word_show()
From: Joe Perches <joe@perches.com>
To: Michael Zaidman <michael.zaidman@gmail.com>, lkp@intel.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, jikos@kernel.org, dan.carpenter@oracle.com, 
	linux-input@vger.kernel.org
Date: Mon, 10 May 2021 09:41:57 -0700
In-Reply-To: <20210510163029.2217-1-michael.zaidman@gmail.com>
References: <202105060637.LeEC6ztp-lkp@intel.com>
	 <20210510163029.2217-1-michael.zaidman@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.36
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: 9B2CC2448BB
X-Stat-Signature: nobrzecesxe1hi9xcwhq3o4h4ii3cyoz
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX195MrQQ61JwLRz6OiWqCCjFadzCwlRMTxM=
X-HE-Tag: 1620664920-830955
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.149 is neither permitted nor denied by best guess
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

On Mon, 2021-05-10 at 19:30 +0300, Michael Zaidman wrote:
> Fixes: 6a82582d9fa4 ("HID: ft260: add usb hid to i2c host bridge driver")
>=20
> Fix warning reported by static analysis when built with W=3D1 for arm64 b=
y
> clang version 13.0.0
>=20
> > > drivers/hid/hid-ft260.c:794:44: warning: format specifies type 'short=
' but
> =C2=A0=C2=A0=C2=A0the argument has type 'int' [-Wformat]
[]
> diff --git a/drivers/hid/hid-ft260.c b/drivers/hid/hid-ft260.c
[]
> @@ -791,7 +791,7 @@ static int ft260_word_show(struct hid_device *hdev, i=
nt id, u8 *cfg, int len,
> =C2=A0	if (ret !=3D len && ret >=3D 0)
> =C2=A0		return -EIO;
> =C2=A0
>=20
> -	return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
> +	return scnprintf(buf, PAGE_SIZE, "%d\n", le16_to_cpu(*field));
> =C2=A0}

This is likely a clang defect and not an actual problem.
If you are going to convert one of these, convert both.


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/6a589bf720c5420e09bcc3c40b812bf6822d3a3d.camel%40perches.=
com.
