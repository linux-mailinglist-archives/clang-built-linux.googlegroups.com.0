Return-Path: <clang-built-linux+bncBCR5PSMFZYORB6N23H4AKGQETSPX6ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id D005122766F
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 05:14:02 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id x18sf8911101ool.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 20:14:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595301241; cv=pass;
        d=google.com; s=arc-20160816;
        b=lMy8Ivy/vX+bDJBKi67Y2dvhVUh+KEDZ+QDmJBiLJX75UgJkv+pph/EBw/th+dkYpC
         nNlnGvEH2R6poLkz7UaW1SU/xoSByhq78fiKfzAq4j8PcJbt3hUNOwlJCQj6N30AA9E8
         Je0ITs/jxmZrrIK2BgzU18XYVIYToes7cFYIMJzHHrj/CGH1aq9CLxRGqW2iF3oIXhgd
         vEFeX+2Qq6NcAbrk7FkvfaHnk0bxZBLMuCAK8tUDMC10R4xddvnJGgLGpZLOIk1eMjI5
         kJoEfbDtRM093WTTfUBEpShCJEsEsyXT9EikyqaT9SfsDjsdQZhFooJvpuuTiYRdtIFH
         fV9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=Jl5UHOhsT7mCG7+CreOMUDQmYthqVWVoCZ7sxtCTE3g=;
        b=jcINIgdarzOXf6+AgTRgIzGB4BH7zQimrZiET7/tc+Rd2dRccxoaf2KECmSVHxBM2c
         Rjie+mxXqnWb0sMiOe+VXNjX9hc3eotr0WB5YigOkNm3GXHnE5PwJg2k11a94LLrdwTZ
         CXX2Mgvcou+5sqUD/94nWZy43TtWuMpzN3QfMrmLwNMmmAy4UBaUEoLX3DMKX6ZTFwEO
         B3xIHDUchOPmdJVmmtNx3xwDIPww6/tEnIjO4nFP+1cPC5SBNwAd+EDj1RR/Kehm+Zsk
         m16ejC5UM+5rdn2ShUatj1czJBvMj0zBMzHDabYlTXVygepXztgnyqBlfzxjRW3ZTx4Q
         SFWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=m0w7oLyK;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Jl5UHOhsT7mCG7+CreOMUDQmYthqVWVoCZ7sxtCTE3g=;
        b=mdbktJpMpv0BLbwZI+tPtdp8JHEHV7JpRQwHFZL5czD9yRYl5ZOmr0k0mz7Jc5+3jT
         UM0QAACM9QMQXfyxm+EhoTA6m9N6pL1gpw3Bw/Uuy6cmFq9Xty2pIK5rT92GG+KbYRWI
         Rhkec+OdyE3q9zKfz8ak53Wzct6qug/SpUjenaIGHhN+YYwcAbqMm6WAPkXFD0jh+dqL
         S4Oibuf8eZdga0UjvCULwIX24v587gp2Aq9InRcUke0zRv4b5gTncOxjdbWMhS6uBdua
         y+81CnrD0j/2OrZXFNJLXC8sdEZXurcKgN13S62gb/s0x9FshsvGjbicRj8Go63qHmG6
         4Iaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Jl5UHOhsT7mCG7+CreOMUDQmYthqVWVoCZ7sxtCTE3g=;
        b=e3DML/M6ygPjvel0QBH8AY04ONu37BRP26WDd3OGWeRnqWnwr79sb2+/Hj1DQOWSeK
         CovCabF2NmGHUI97LcchMrFhdufBbBdoX83i0668CVOnzNNllv52ZXH5MIrvpECKbGma
         z/x2M7MkGrZVbxDMn7Vn/9DwrW/OSgRdCE+C6U0kOUR8WDcH7p3RcBdyCjq6iOzBe079
         PdH86qH9O+w/JC3jFQHNJsFLNjoz9NnERMQYS+ULjy+ozEu0QShH50832W2oXEURmQRr
         jZpFvi23l2QEkO1JU/4aYZNDzRGzvVpkIUGK6k9g7gC/+jFxBtppTkujWRl3uXyh+5Zf
         jw5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MxFUxC7wxos5RFXPaZX15I/Sl82DKWA8aixaXr7lKT/0Yp/um
	l36mCKPnHzuExeJurJzIpOs=
X-Google-Smtp-Source: ABdhPJy9oapdleMbuu1IhSa3wcR6/wUtok3EAN7raitPNtZeK2zwIQzS7Rpf3+oqu8oyio0otrSJRA==
X-Received: by 2002:a4a:6c6:: with SMTP id 189mr17938552ooj.23.1595301241764;
        Mon, 20 Jul 2020 20:14:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cfc3:: with SMTP id f186ls3197041oig.11.gmail; Mon, 20
 Jul 2020 20:14:01 -0700 (PDT)
X-Received: by 2002:aca:538b:: with SMTP id h133mr1714604oib.158.1595301241318;
        Mon, 20 Jul 2020 20:14:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595301241; cv=none;
        d=google.com; s=arc-20160816;
        b=aTEtsg+OWOxi8WK6nCKmoEor/fMxt43DkYoS6NXzbYS4jm8P5292UqP5gBDl+esNL5
         oMm9hB5Gk0ffO9UQZ+H5x/jRlFq8jc/GQwfxoIYQ8w93qeYKaPB6FVJsGQItY73XCK9Y
         cBMc8mcLu4Tc60FCQoQwylhEwsUufhw3nUp3ik82qXJT1tyiKHdaVrqSCQhdnohnAwDv
         6T945gtji93E58rPE0ZqtzmLSvwGEd96ng2IMLhYSo5ZJu/L5sFLdkqlegosHTMm+Zy3
         mFecZWttwhmnovJ8TkZv1iZxqzhPjZg5UBAoP3eSLBnuiexjKgKBaiedgrQOyIp2Oxfo
         fD+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=JazWLl6PG5WLZtgpgR9e/2iNKVkTuSkJvJBEGFzAkrI=;
        b=TZnDwsq07NCmIfvL+v7LuscC7iZolddbdOc/nmk9bKNiuYmXyGyJM1AyFtVQyAukQW
         OsIXV++T5PvpWXhXnEjA1hD2MkoG+nmQ41+52Nf2a/oA+wN8AWz1RkF/cZfDsMzpiuv8
         LXKoXvhb9W5w3spfTOtfTiJA6E8EePtuX9/0vGUneC5by0lyuS//a1KXsNn2sxunwVpy
         6Z3yaXEpDdTXY95UQBbi03bkeKJGdxGyM+tohRLGMMyVBodo4vrBm+Zv1xDcBI2a13xc
         o4Ud1AeqJInRQuKBy32qkx+7dwD1dswwfagP3nQQynL2B1mNIHFx2jcSTNK1AoZqEZC+
         byWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=m0w7oLyK;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id m23si76462ooe.0.2020.07.20.20.13.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2020 20:13:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4B9kFt5n5Sz9sRf;
	Tue, 21 Jul 2020 13:13:54 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Christophe Leroy <christophe.leroy@csgroup.eu>, "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>
Cc: kbuild-all@lists.01.org, kernel test robot <lkp@intel.com>, linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com, Bharata B Rao <bharata@linux.ibm.com>
Subject: Re: [powerpc:next-test 103/106] arch/powerpc/mm/book3s64/radix_pgtable.c:513:21: error: use of undeclared identifier 'SECTION_SIZE_BITS'
In-Reply-To: <20200720183900.Horde.y2dVSL93KA1P6bzz7IKxoA1@messagerie.si.c-s.fr>
References: <202007190428.5Q47y2Gy%lkp@intel.com> <87zh7w108a.fsf@linux.ibm.com> <20200720183900.Horde.y2dVSL93KA1P6bzz7IKxoA1@messagerie.si.c-s.fr>
Date: Tue, 21 Jul 2020 13:13:54 +1000
Message-ID: <87r1t5sgp9.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=m0w7oLyK;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Christophe Leroy <christophe.leroy@csgroup.eu> writes:
> "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com> a =C3=A9crit=C2=A0:
...
>>
>> diff --git a/arch/powerpc/mm/book3s64/radix_pgtable.c =20
>> b/arch/powerpc/mm/book3s64/radix_pgtable.c
>> index bba45fc0b7b2..c5bf2ef73c36 100644
>> --- a/arch/powerpc/mm/book3s64/radix_pgtable.c
>> +++ b/arch/powerpc/mm/book3s64/radix_pgtable.c
>> @@ -492,6 +492,7 @@ static int __init =20
>> @@ -532,6 +533,15 @@ static unsigned long radix_memory_block_size(void)
>>  	return mem_block_size;
>>  }
>>
>> +#else   /* CONFIG_MEMORY_HOTPLUG */
>> +
>> +static unsigned long radix_memory_block_size(void)
>> +{
>> +	return 1UL * 1024 * 1024 * 1024;
>
> Use SZ_1G instead ?

I've already squashed that in.

I'd take a patch to convert all cases though, I see at least:

  arch/powerpc/boot/ep8248e.c:    mem_size *=3D 1024 * 1024;
  arch/powerpc/boot/ep88xc.c:     mem_size *=3D 1024 * 1024;
  arch/powerpc/include/asm/kexec.h:#define KEXEC_SOURCE_MEMORY_LIMIT      (=
2 * 1024 * 1024 * 1024UL - 1)
  arch/powerpc/include/asm/kexec.h:#define KEXEC_DESTINATION_MEMORY_LIMIT (=
2 * 1024 * 1024 * 1024UL - 1)
  arch/powerpc/include/asm/kexec.h:#define KEXEC_CONTROL_MEMORY_LIMIT     (=
2 * 1024 * 1024 * 1024UL - 1)
  arch/powerpc/kernel/iommu.c:    if ((tbl->it_size << tbl->it_page_shift) =
>=3D (1UL * 1024 * 1024 * 1024))
  arch/powerpc/kernel/setup-common.c:                        (unsigned int)=
(total_memory / (1024 * 1024)));
  arch/powerpc/mm/book3s64/radix_pgtable.c:               mem_block_size =
=3D 1UL * 1024 * 1024 * 1024;
  arch/powerpc/mm/book3s64/radix_pgtable.c:       return 1UL * 1024 * 1024 =
* 1024;
  arch/powerpc/mm/ioremap_32.c:   if (p < 16 * 1024 * 1024)
  arch/powerpc/platforms/powernv/setup.c:         return 256UL * 1024 * 102=
4;
  arch/powerpc/platforms/pseries/cmm.c:   signed long min_mem_pages =3D (mi=
n_mem_mb * 1024 * 1024) / PAGE_SIZE;

cheers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87r1t5sgp9.fsf%40mpe.ellerman.id.au.
