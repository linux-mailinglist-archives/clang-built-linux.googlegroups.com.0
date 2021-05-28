Return-Path: <clang-built-linux+bncBDY3NC743AGBBCWEYWCQMGQEFL52WGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC2939485E
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 23:35:07 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id o16-20020a056a0015d0b02902e11ab01eb7sf3099187pfu.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 14:35:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622237706; cv=pass;
        d=google.com; s=arc-20160816;
        b=cSFdpaNVP+HM+p5kwARVDoSuGLrpKM+qBPLgzG+qugWTGQ5ov10HDWJ1Q5VA4uhMC7
         htKCN1aCMkOco7xxN/vksD7XxbPDj6c71mMGZBYDO9R0/hfz0+88aeSfbKF9fZMQygwy
         lIN6kTE0eh9sMtJ5sgwImQnNo8oTikY9JdXqMXLbiLVpRWmlxkaA7IddKKXH6X1LTvui
         J6WrJ3P00j8nCD3o+6EKPwsi9QafUmgruxB6d3Mt7jofLDrBFOzwdPAOvHbD44VBFAIN
         Q9/Fm0pl6zxJpURy2TnXf0jGyyfhg0OCVytug22ICG8gaenpNRTZp0Nkdtx6G7uzF6/X
         87QQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=uMSMtVk+KKNv9rtWvNBKd9ovd+p4MMXEsueXIo/lJnY=;
        b=Dc9wV60alT8aMljUvi/ID11VLFVs2Zp3AnXjcJhGOF7hwCvWfLLIsntHijkAB1CbUF
         AKLX1rSlc/FH2t/IXKjvvTOLfGClP78pUlQtHKhjhg/j4kuxE9tqPWGXtrG31EaaOs7b
         pBPdphgtRu9EwFouCIBU0JGBW6AkuIEElg1aBn2veceW9ewgbF7KNfSURBc0asmX6V9U
         IkgXIguU4Oj9T214m0ckXWRXGB0dtE5jaMHyvvYoWp8hMSy4uL10RX7MuBOl0ufqi0A/
         kley4Q+t6NYnq5vTIuMK9pgHysvyPcoFxq0Sq3JQEaIQ8Dlx1dm/di+wBGP+Lky4Fpk3
         BHdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.97 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uMSMtVk+KKNv9rtWvNBKd9ovd+p4MMXEsueXIo/lJnY=;
        b=ZNS9hkNJTYOiufSZETjErXOf6LNd+SKXD3ZFsii/ORnNDtB8j6P2qJq/zOdFGDkQpR
         UF172awm9hP7BSPFJwrzMng66R4b9g7H5Ix0s0j3iwlwKs3n6e5ovASXvGmy0WlQTu/5
         4mte5Y+nVMY70LLsWjCva9/YPeHmC0UgjlUP+qc2AE2Py0fYxtglX6+nYapC14k2dmgn
         U6QrkKGuwEtmd89sW5n7jD9rRUoajOdtO042o/AyuAOxpbUogZT2x8LIYsGAdL3aYyUb
         GMx6Mub92mP3gBfZq0vXDU6PyV5KGszlZKCZZXmoE82gz99Ha4zL0QeGY+Kfp2lY7GmE
         ZRnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uMSMtVk+KKNv9rtWvNBKd9ovd+p4MMXEsueXIo/lJnY=;
        b=S5FXzkETeQYEH+oyvh0VW6PXbB6RLUnD8jJ6k6fYlrkl13e0fjP2c1BTHdQ03j8H2F
         3ZBwrCePSMTtkyJC39hCFsOCbiv9Em3GokC0bwB56PIH6VbkkISGjxQuKp45+XdF1w1k
         7akDKU+t0tLqLmHGhaOxI9IZGSAlOF6BKTdEqVs2rcXwJqvs9NnCe9dFLP9B1jSiNdE4
         /X+VyX8kp5UJnDrLCmuzy9/6Hg8IWh91B2v6eKb9jzoyxaRscJzqjo/adNt+8floao3m
         EdUS1ggL2+K9joKYoKTHm/d0jAstvV/2PJoOj1noIrl9xozyK2TBUjJr4qJm3Jblqelr
         qTNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KqUw2l3dwMrCdVMmLxWxy+9MGHPW0pwsPAtSOFQL7bSCkT57V
	9ILVvK85w2npwG+sH++D8TY=
X-Google-Smtp-Source: ABdhPJzziufIOEHbb3hd+060/haGbO/SiUcZFe0YwR7PfGg1Vzj6SX2LS+OqWpsL2On9+b09YVDJQA==
X-Received: by 2002:a65:6819:: with SMTP id l25mr10739783pgt.280.1622237706256;
        Fri, 28 May 2021 14:35:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b48a:: with SMTP id y10ls4164571plr.7.gmail; Fri, 28
 May 2021 14:35:05 -0700 (PDT)
X-Received: by 2002:a17:90b:344:: with SMTP id fh4mr6579117pjb.119.1622237705757;
        Fri, 28 May 2021 14:35:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622237705; cv=none;
        d=google.com; s=arc-20160816;
        b=paos86qF6fpHnNrQt+Ul4b7kwhhcc12peEQoHhYeFlLs5r7NPjuhH1CtfkygtEtVrp
         96n3c7pBwWVZBuohQMpdLCd0J2QzdtLL6Ws6lT96hMv27y0a+qBCxWuAsdAjvamOsLkP
         Z+srV3xvaxKmfPfYhp/fxEfWifWJ1a5nKGS030QqPlhc+p5cMp+aanuhTiz6wOAwKpJD
         lCr7BE1o1lg6N42yi+VP3hkdcYiYWDxREAdGQd7U4GkrRwfWo0G3aY16PUyIXaUeEZxb
         mMCVKWYza+jZuggo8rmWVZs+NTNz/cvRhdhO8ZfqrEC4820pH3pKObfZStpAbxiw260k
         R2DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=umASXhhJoBDoJQq16nL14r1AB3gsTZPPpxaAi34FiZ8=;
        b=wGxYL2Qv3DA9IofU+DRkH888tJlbLEV90P/yOIw5ABbhJMGpaA89+YOPZTg1eAzVbP
         UcAxuDJhX3+BBnVD1Y37KXGAFWy8zf3yBpOB9kkxxnSCEXK/asTUl6d/TTMbnP1SV/r0
         +0zrbfu2i8aYu5wsZgmTs+gVNchphob7JR4IjkeECQadwtUG3jxNn9kAaMSA7msQkm5f
         62Y2Mrx2Nra4qHgQdiozaM0/XvmBstKqFZEOSe3EVqD3TRDvPREz7QhQaslRrtkeDZdB
         tcCBHVypw4E71pAihFmLmCqJg5c0T79LcgXta8WJGCTjOXdj0pS+J0WEg5f2XGDb2qsE
         GTrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.97 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0097.hostedemail.com. [216.40.44.97])
        by gmr-mx.google.com with ESMTPS id p50si558564pfw.4.2021.05.28.14.35.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 May 2021 14:35:05 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.97 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.97;
Received: from omf16.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 8B11E181D3025;
	Fri, 28 May 2021 21:35:04 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf16.hostedemail.com (Postfix) with ESMTPA id 5A2292550F6;
	Fri, 28 May 2021 21:35:02 +0000 (UTC)
Message-ID: <cfdbe504c7ed3964bef22c551f0c78c048ce3d2d.camel@perches.com>
Subject: Re: [PATCH] iio: si1133: fix format string warnings
From: Joe Perches <joe@perches.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Nathan Chancellor
 <nathan@kernel.org>,  Arnd Bergmann <arnd@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Maxime =?ISO-8859-1?Q?Roussin-B=E9langer?=
 <maxime.roussinbelanger@gmail.com>, Jean-Francois Dagenais
 <jeff.dagenais@gmail.com>, Arnd Bergmann <arnd@arndb.de>, Lars-Peter
 Clausen <lars@metafoo.de>, Alexandru Ardelean
 <alexandru.ardelean@analog.com>,  "linux-iio@vger.kernel.org"
 <linux-iio@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
 <clang-built-linux@googlegroups.com>
Date: Fri, 28 May 2021 14:35:01 -0700
In-Reply-To: <CAHp75VeQdFoJrPhXU2fYdrhLUwvM4NEoPn=Z4WBPkhOa4xK+ig@mail.gmail.com>
References: <20210514135927.2926482-1-arnd@kernel.org>
	 <7afc367b-8103-9d48-1bfe-d505d86553b9@kernel.org>
	 <20210516103628.2cf899a0@jic23-huawei>
	 <644a711e4d2639a23bfc50dffa180ad184a4acb1.camel@perches.com>
	 <CAHp75Vc72vMbj311P3xnxh6ExxzD1=enoETj6wY8dHn+xBJ4+w@mail.gmail.com>
	 <fc3afc8e74ee9eda0b4eaff9a4d9ad32f1c461c4.camel@perches.com>
	 <CAHp75VeQdFoJrPhXU2fYdrhLUwvM4NEoPn=Z4WBPkhOa4xK+ig@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.60
X-Stat-Signature: kkmhc1bttsasinfggbmtofn51u6bb65q
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: 5A2292550F6
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+V3ZAlIxraiLN1BNQJiiyx7LjKDDaWv6E=
X-HE-Tag: 1622237702-401044
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.97 is neither permitted nor denied by best guess
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

On Sat, 2021-05-29 at 00:16 +0300, Andy Shevchenko wrote:
> On Saturday, May 29, 2021, Joe Perches <joe@perches.com> wrote:
[]
> > > > Likely these should be 0x%02x
> > >=20
> > > What=E2=80=99s the difference (except printing 0)?
> >=20
> > (assuming the argument is unsigned char/u8)
> >=20
> > %#02x will always emit more than the specified length (3 or 4 chars)
> > values < 16 are 0x<hexdigit>, values >=3D 16 are 0x<hexdigit><hexdigit>
>=20
> 0 will be 0, btw.

Hey Andy.  Right.

> > 0x%02x will always emit 4 chars
>=20
> *Minimum* or at least 4 characters. There is an upper limit of sizeof(int=
)
> * 2 + 2.

I did write assuming the argument is unsigned char/u8.
For the general unsigned int arg case, you are of course correct.


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/cfdbe504c7ed3964bef22c551f0c78c048ce3d2d.camel%40perches.=
com.
