Return-Path: <clang-built-linux+bncBDU5DXUG4MFRBPUM3SDQMGQEZVDBXVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F283D0017
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 19:22:07 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id z1-20020a195e410000b0290229c07c3305sf4371235lfi.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 10:22:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626801726; cv=pass;
        d=google.com; s=arc-20160816;
        b=wykclto997tOAUcC17Cb9GU1toPp9eNLTTkkt/kBmQFeqwvF3Z0UQfe8z2VmVb4tA8
         dCMO1ziKml2JjLflYa3IuAiW1qrbGklJUJZBdEV05ZcLTub5wsb4BI+2/J3ohXXeiKS+
         mRlHOfBIePvYOmUXTwqXIR9kJRc1MWmjlcXIOngaNSAtZYUeXY8ooWT+IGTnbNL0CTV4
         FEiDrNgtG23r9KUJFIOnMgL9k3hCw1K+T7kVx3K4BgWyAVVF5IuiY3DlTk61Y8JTvuFB
         6mNB88jj44gttnD395B9l7tIyXymr9c3SgqUMrO4zwm/mZUnsLxnmZfg/KwCUoX/h4YF
         9HYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=weskxYXq5XOQx4Iym/nVgpsl5FVlON+4uV2MpwII7Ss=;
        b=kTRDu2h6CCLKykLMM7DI+y3BuAwE80iG9KFTdn1LMkELfLGNSxu6QQGn0Wyhsc6ZIg
         AD8+nkQ8C7xPPYMlRi5MlJg8VzFfgw+A5NjhTtdL8BwrKIY9afrVRbKdqlv0410gm9Fd
         mnoXirDQKEmiAHaqDZbidYcwZ3Hvi72yHjTBV6e4I2cBkf+pns2SDNanFmzmEQhl/1G7
         zKzk14EDc41F83lWww4GkkWRo+2gbqR4PCwgoEWrSwNu+Dy8TsLXXwabjjc9jlhhWmXi
         W5ukRJQUfERFbj6dkxaqkfRSUwXZdz/dDiK6mZhsJffVcNNYLql/lQ6hQLjoRY13zCKL
         c9lA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@canonical.com header.s=20210705 header.b=qScOn4nb;
       spf=pass (google.com: domain of colin.king@canonical.com designates 185.125.188.121 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=weskxYXq5XOQx4Iym/nVgpsl5FVlON+4uV2MpwII7Ss=;
        b=esUAwzSrif75gdLkpIrRVOdVTA0x7cRZtIg3EJjA11BQxNUvzfFhxqN+BVsCzVIDpB
         kMJBGQkxp4d98NcbB5fcnI9Fg9QW+KGsAgAAkb/dbh5MTxz1ylB1CIWmDEtn5fq/x00z
         Fo+Rhe3H4Wx5t3fKqwf3aBm0Nqj5DMbHUQJHxoqcgu9jZHBrdL/dymou8YNb2sP8+zdc
         LfPQN5vpgxmqP4UwI/2gvOwrQzUCiXvsgcSgub+O6OJIHQtlUKlOMMpjL63MlRDmComE
         ROADIuybyDZdByY4R6njhmGp16xd45OrohgMwivDFYCdvxjP0qtbPCQr8K3jAcfb4Gi4
         ALpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=weskxYXq5XOQx4Iym/nVgpsl5FVlON+4uV2MpwII7Ss=;
        b=Q9C9aU92/1wOM8I2UxyW4+tTgKKZ5qcQoDUltlyVPZRaJDg7naXaEjJ3/fArz592b3
         PDOZlkW/FnPsTnAiSl/G+NihQiPv8w8+3scqXO6SBLVJHTlDQv5YXZTDyXxvAS1oIlDu
         EAcEdQURbqzbSnDaVlQ+to/N/PX+FtpaHZVlmfPJVBlhm/jzOmfoHh6QsRMRRpbvDWTW
         1F3uEVhCPq4dz2EzoQVaeVczmV0RWi1Tekfut/mycPNWXCuhhmlS51viKkyzQ5Knldcx
         tvAxxhAZXZlpqm9R0U3GdLb6mhAeAYE6fdiXqXaD62G8293TEaCn78g/MLHcfgzKstFk
         MZ1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GpJfeA+9PC5MdSgMZIhWbzdbjY/Q4J+uqgCDCsASRM+Qxy7c8
	N81sxTq0abszLmVJadNp8jE=
X-Google-Smtp-Source: ABdhPJzWRDqlz0rlwKqEQOO4FFXijNzw/hl2y2gyWqtEMPoLXRMnvyW1Px8jCO3kmf9GkSCdGA8DJw==
X-Received: by 2002:ac2:5e3c:: with SMTP id o28mr23793659lfg.592.1626801726396;
        Tue, 20 Jul 2021 10:22:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b1e:: with SMTP id f30ls2027847lfv.0.gmail; Tue,
 20 Jul 2021 10:22:05 -0700 (PDT)
X-Received: by 2002:a05:6512:36c6:: with SMTP id e6mr22942476lfs.351.1626801725397;
        Tue, 20 Jul 2021 10:22:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626801725; cv=none;
        d=google.com; s=arc-20160816;
        b=Uq24kk7sRfQbOdrCIafMVuEy5Mqj8Hi5bJlxgycQkX30/BjuTpKTWfHszhjNtqAuPT
         IhNytCnDTSQ6Yap6nIJ/3uR7WDuFt9iLx0MCfKLbSy5+PFHZuDXkqUmvmsN5vOGdGJ2z
         5hB8yqnHJA4x9IXfcqZM8BpAfH63pqbTGYy582JpbiQmFNC4naWPXEd6YXEMf9KJjYF0
         18Rjx313yZ8BEkGc7N/Y/U90WFl0IBf9xwKHLnsKO+mVce+sILLsh1lNuTzt3Q1+kKv8
         lSbNcPbGZYGJZd9uvE6bklaV/xC0i+X9OP1n3AyPuX7igpxzWxnj1Okn7gno89pWIiE4
         gPdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Ip6Rp0Zs3Mz+GD26okTHK+imxxzHuHxOc8fIEFOc4VU=;
        b=sJ//j9Qc1fC0Lx3tkDxI07E6ERDn1EJ4/6ME8DwbnG6GOLZpjZfdcX12ZEpAg1QVeV
         zuakWbXpVL2pvmZn/X26PKJZuvsPXUk87ZFLtYvCjzV6pnnsLEE/5mS/HgbJ195rZXR+
         vFjoWfpt5BJFwxxzKdvdaxANVRcIB5dSkzINfLkFXbA9JDm9DDvD3OJYyolkr3SfGAcE
         VBL/FgF+wXvPDUPYVFrqFv89IE3OidDQI00brQSkMoEZgSenAR1iLKL3fxhgQKYNxEda
         +C33qbuJX5ToflKqafDvnHVg+IjxeirANY3F4y+sBxlZqsBYCkT6M4QbcBmT8hKBqEkJ
         +quw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@canonical.com header.s=20210705 header.b=qScOn4nb;
       spf=pass (google.com: domain of colin.king@canonical.com designates 185.125.188.121 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from smtp-relay-canonical-1.canonical.com (smtp-relay-canonical-1.canonical.com. [185.125.188.121])
        by gmr-mx.google.com with ESMTPS id q4si134672lji.2.2021.07.20.10.22.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jul 2021 10:22:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of colin.king@canonical.com designates 185.125.188.121 as permitted sender) client-ip=185.125.188.121;
Received: from [10.172.193.212] (1.general.cking.uk.vpn [10.172.193.212])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id 23D074190E;
	Tue, 20 Jul 2021 17:21:56 +0000 (UTC)
Subject: Re: [PATCH] atm: idt77252: clean up trigraph warning on ??) string
To: Nathan Chancellor <nathan@kernel.org>, Chas Williams <3chas3@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org,
 clang-built-linux@googlegroups.com
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210720124813.59331-1-colin.king@canonical.com>
 <fd4f465b-86bd-129d-c6d9-e802b7c4815e@kernel.org>
From: Colin Ian King <colin.king@canonical.com>
Message-ID: <5dc1f201-791e-3ca6-0b2d-49c270e572cf@canonical.com>
Date: Tue, 20 Jul 2021 18:21:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <fd4f465b-86bd-129d-c6d9-e802b7c4815e@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: colin.king@canonical.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@canonical.com header.s=20210705 header.b=qScOn4nb;       spf=pass
 (google.com: domain of colin.king@canonical.com designates 185.125.188.121 as
 permitted sender) smtp.mailfrom=colin.king@canonical.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

On 20/07/2021 18:17, Nathan Chancellor wrote:
> On 7/20/2021 5:48 AM, Colin King wrote:
>> From: Colin Ian King <colin.king@canonical.com>
>>
>> The character sequence ??) is a trigraph and causes the following
>> clang warning:
>>
>> drivers/atm/idt77252.c:3544:35: warning: trigraph ignored [-Wtrigraphs]
>>
>> Clean this by replacing it with single ?.
>>
>> Signed-off-by: Colin Ian King <colin.king@canonical.com>
>=20
> This looks good to me but I am curious how you say this warning in the
> first place since the main Makefile disables this unconditionally. Did
> you just pass -Wtrigraphs via KCFLAGS or something similar?

I used W=3D1

>=20
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
>=20
>> ---
>> =C2=A0 drivers/atm/idt77252.c | 2 +-
>> =C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/atm/idt77252.c b/drivers/atm/idt77252.c
>> index 9e4bd751db79..81ce81a75fc6 100644
>> --- a/drivers/atm/idt77252.c
>> +++ b/drivers/atm/idt77252.c
>> @@ -3536,7 +3536,7 @@ static int idt77252_preset(struct idt77252_dev
>> *card)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return -1;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!(pci_command & PCI_COMMAND_IO)) {
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 printk("%s: PCI_COMMAND: %04=
x (???)\n",
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 printk("%s: PCI_COMMAND: %04=
x (?)\n",
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 card->name, pci_command);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 deinit_card(card)=
;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return (-1);
>>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5dc1f201-791e-3ca6-0b2d-49c270e572cf%40canonical.com.
