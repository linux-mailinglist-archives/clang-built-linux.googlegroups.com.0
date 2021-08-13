Return-Path: <clang-built-linux+bncBAABB34W3CEAMGQEIPCA4ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7323EAFD7
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 08:04:33 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id r12-20020a056830448cb0290517683a6593sf306044otv.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 23:04:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628834672; cv=pass;
        d=google.com; s=arc-20160816;
        b=ogaLmlbT4B6cYLEdnVkZTyb7mywSoxKatpFnsS0750G2siFBCSpmLkCuU8iQX1Mw2Y
         E+hY8yyy0FKTy42amZcFxvOYorjBKvjQCiGye5ioKkAg6a1hKwVDyzgqxO4KkdIuun3G
         ZN3/weyRDsraMMQzrO09w4VCm3+VwJv/R0A5jrGqmFaKCes0rsWbJoaxAJnLOEOa/jw3
         yjr1LOwtMLxc78xziS9/EEDrI4cPRPe2kM0Te5OVL3B7uvLzDQSxXlHDFYwSYPIUUydR
         CVbmawdKQpPtmANkMpfjIN4Me1xEfUDsFG6RuY5MXq6+J+k1WWMTuVK66jPmyWbHQ3pt
         mCHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=rRKb2gDv7nfBASjDm4HumY3/dB1ZvKBgAfcGXCnv4v0=;
        b=USDZC+lZSrturiT5yYnF/35oKVxDn5ATVR+Iw6j9/MlrQe/ag/jjTlEN0h7q+mNtEx
         SYue6YtnV2pyEQGTUqJUAD1E0yFL61mj1oj1a8tVZ7qoh01IMoicsAOslH4WJhjuWbeW
         UZuNWicXm2JXW7uzgC1zdGqTI4aSCi8Ek5oMIlatZQD8GsMskmUcw2PEh/ZztqDNI0nt
         8+rvF+io8ArUy55m8QLfewz9GJtpktEtq4X2CopMJInOesiWvseurq3Ar9im+t24N8pp
         4Z1iHxzWw6zwK872j91a9bxwyaLC+y1DpO4bHidRSxN+VeKUeNPTHxEasv1H07TKbNgJ
         ubBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of xianting.tian@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=xianting.tian@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rRKb2gDv7nfBASjDm4HumY3/dB1ZvKBgAfcGXCnv4v0=;
        b=k28c5CX40zL4fr0LF7oUw9Odj6/dnfSV0FDsZJOCY7mpIO9RimPGxaEoOro8EKL1l5
         +DENwFOMjVGk3w3BUu62gVGpJkt7ExIIYVPiJYHpMkoFCcIWUHEgjDm8qcxemiO9Tro9
         b5ZaT5ll5nwpPMPD4Uk8y9NX0G6VKI1jJPGwrT8tWTiIEWAPvGMAn24/vkWP4Mc+9Vo6
         hRl8FfGC6UnhuvQiEt9DlqZnJVcWLk4CwiqHkbPKi2mLrEXVagUUmQ56yLC9mCtsCowL
         E6ASH3AFkwS3MuFB0Q9bTyOfNKlaT9JPxdk4ewF/yPCzCgM2x5L92LQj+qp2/7fFM5rE
         C3Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rRKb2gDv7nfBASjDm4HumY3/dB1ZvKBgAfcGXCnv4v0=;
        b=C9uCFTEVAfUjps6XMgircHR0VypB/DmYTc5pA9FjU/Loh22x5fEm/+i7l9o0ZN8Afs
         dc/2dkzlTKtelc0DjF1RGVKErnPHRc31xnIzwLe4qmokCdHsh4nm6Vrk+oRNwh6z3LqF
         vanTBEQ39+xkongAg2rrfbDU1P4VLth0CBUu1AnU3G+4h/ZooGIkgDf1VaNp1Dr7R2UV
         RLxiGG9U10LguQGZ747iK3h1yr/WESjPyOL6RUNzqeD4mP8L6brVwsP1zCsrLfJA8Gbe
         adcwNK5EYZaIHtk5J0lT/fLAUMpk7pufT5ZnsSjRbAZq2XaXDZoxiC4xGFZLuAoaWR70
         9kDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Lbc7XYKX6sTDE+nUFZLcBWe6scqHzJN36WQiIpcjWa3n8NS4C
	DC9eXcMt/ovJkzG3HAvDKUc=
X-Google-Smtp-Source: ABdhPJxgx9ZLJ/c0jPJKydZ6fVBGu427oYxMyPNRQvbd1UASgT2goUZyTmrERNWbgJ1w7y5vdECseA==
X-Received: by 2002:a05:6808:bd3:: with SMTP id o19mr899450oik.10.1628834672045;
        Thu, 12 Aug 2021 23:04:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:a81:: with SMTP id q1ls163168oij.1.gmail; Thu, 12
 Aug 2021 23:04:31 -0700 (PDT)
X-Received: by 2002:a05:6808:3c2:: with SMTP id o2mr905399oie.50.1628834671703;
        Thu, 12 Aug 2021 23:04:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628834671; cv=none;
        d=google.com; s=arc-20160816;
        b=b7rrbcOoy3RV6OJNLFE9Bz7Adl7gRSpX6/L3Xus9H7B4I+2j6hyQOz959JwEw8WCiw
         UpNdZH3PKOiSWCb0j25+UJyLv2foHJCwPKDsMD3Yvk7fRMRQd1MCvLVr5JHWStRgPLbz
         05eCqLtJ5us20+TaJECpj0c7NnCKrHwq6xVw1N4cOCtUNPvYHSywAmX/beoFCpekdYNj
         pJ+cTuuXoNfRihI35e4GChtdrKHoKARImf88nB7TkDwI4oHwwsznVEmJt5SRfJVEaz+3
         o1Lxv7JWV9oLgy82FnYAj2h/0G19vk/bMa7vjYo80OAgkMMjXMGoRL+tEkQrhiFdz1H8
         lhjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=nDPIuaq4dOfsnJOFDEd1/VqTlOUYhQFReo3vBT4ol3M=;
        b=uYJxdVQR3CC00UGnSzuWZnm6WGQx6UhsgF2kFyR+tcRUY2Jml3MScPVZlf0YJd8Jhk
         GZWTCvnrJuCks5XMs4zskYoS8NWMooD/ZPubsfBG6IFX/3G+seK03YRfPDbXNcU9501U
         coFtxq9dmGQxDzPHySuiDpjabCe/gLf9DIOIJ0l+hKptx+ISO0ZtQG2C9lV+t/+Jvq3g
         p0bx7enLJepOu5hpjR1l9Fyf9CsOZG0sWt1U9ELHWBq7e60zVZN4bOgEVDo/QoBaigAs
         lgGzgsTBeQzq6vr8yXUN3OU23U8kP0t8WwBWIQ9PFEXfNa/5aEjo5Eto7LDwaETtQt0t
         WwKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of xianting.tian@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=xianting.tian@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id m17si67338otk.1.2021.08.12.23.04.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Aug 2021 23:04:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of xianting.tian@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R311e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=alimailimapcm10staff010182156082;MF=xianting.tian@linux.alibaba.com;NM=1;PH=DS;RN=11;SR=0;TI=SMTPD_---0UirLXgM_1628834642;
Received: from B-LB6YLVDL-0141.local(mailfrom:xianting.tian@linux.alibaba.com fp:SMTPD_---0UirLXgM_1628834642)
          by smtp.aliyun-inc.com(127.0.0.1);
          Fri, 13 Aug 2021 14:04:03 +0800
Subject: Re: [PATCH v6 1/2] tty: hvc: pass DMA capable memory to put_chars()
To: Jiri Slaby <jirislaby@kernel.org>, kernel test robot <lkp@intel.com>,
 gregkh@linuxfoundation.org, amit@kernel.org, arnd@arndb.de, osandov@fb.com
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linuxppc-dev@lists.ozlabs.org, virtualization@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org
References: <20210812094532.145497-2-xianting.tian@linux.alibaba.com>
 <202108122040.lBf24DNp-lkp@intel.com>
 <0c808001-7643-fdcf-66ba-738654ec0c21@kernel.org>
From: Xianting TIan <xianting.tian@linux.alibaba.com>
Message-ID: <854daaf0-4d8f-82fa-a584-0b0830349a53@linux.alibaba.com>
Date: Fri, 13 Aug 2021 14:04:02 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <0c808001-7643-fdcf-66ba-738654ec0c21@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: xianting.tian@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of xianting.tian@linux.alibaba.com designates 47.88.44.36
 as permitted sender) smtp.mailfrom=xianting.tian@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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


=E5=9C=A8 2021/8/13 =E4=B8=8B=E5=8D=881:53, Jiri Slaby =E5=86=99=E9=81=93:
> Hi,
>
> On 12. 08. 21, 14:26, kernel test robot wrote:
>>>> drivers/tty/hvc/hvc_console.c:190:26: warning: variable 'hp' is=20
>>>> uninitialized when used here [-Wuninitialized]
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 spin_=
unlock_irqrestore(&hp->c_lock, flags);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~
>> =C2=A0=C2=A0=C2=A0 drivers/tty/hvc/hvc_console.c:149:23: note: initializ=
e the=20
>> variable 'hp' to silence this warning
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struc=
t hvc_struct *hp;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D NULL
>
> So you clearly didn't test your change as it would crash quite=20
> instantly. I wonder, where do you intend to get hp from in the=20
> console::print() hook?

I am very sorry for the inconvenience caused.

This is caused by my carelessness:(

I take it for granted that there is no problem when I just switch to use=20
array(cons_outbuf[]).

sorry agin.

>
> thanks,

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/854daaf0-4d8f-82fa-a584-0b0830349a53%40linux.alibaba.com.
