Return-Path: <clang-built-linux+bncBDV2D5O34IDRBJGZVGAAMGQE7RESCSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 211EC2FFC72
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 07:11:49 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id h17sf1622314uar.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:11:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611295908; cv=pass;
        d=google.com; s=arc-20160816;
        b=gaN62PtHP6rplie+dY7uPfDOeUT2l5n9UPoPdDy6oGOHC13a8Ng4bH5vg9FJZRCSFS
         BYfgFFpjc9Ao6D+D5YsGDK70h6oB6OwNo8bPpBvYG34QQgbrCEUu4NXSpgQXq2SSC3FG
         Sx2tib69vo3hGFIJ4EdwYFJk7SvAIqy8s8TIjGWFeeYWnmKvr8/3VHPbDA8d8J3JMDQm
         jL6Nr1t3gaYeWd38jSshLiTmkym7Y6b5QAOMuNyD62k1gYAet1UxO6GULE5ZLf0JILhL
         L2Qe3HKi5nC4jh+wC8TDpkcKiDb8Q1IBwA+pKgr4boq+KsjcPUTk1Md2Y+4RNBgoFtkt
         +gdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=9e+eLdChtzF2DxCiubvkYVjbrjYo8E2xFpHCTCHW97M=;
        b=l+dHyiXXVA4wK0K+UrYRPdskxFTnsu5XwoseLAgSN95n/tEzXQ1FwcZLtRDX9MY4vW
         hp8ZzFRwXlLPb21dfG0rPUGwXBmyzOqPx9AaCex1Vu0kovnvBaKuD8WxCKWqS41l3Jjy
         zPgi7z/OSnlT7JQhhEwccGQFZAr+NU5qMf+MWtqcAGyV1NkIIJT/PPr+Up+VekCxJVzM
         l6htmdZjHBuiP0sB8YwHQ85Np5f2/0PK6IjIOFTcL1eLrZXXi1UAZHQJq5sTvPk3kNKO
         0OySahXeWPf2sKGEkI5qCEtsvIaYexyMYZybXDEmBHGxAgQlVJ1iUff+I80LvsuP9Sg7
         rkDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=z2C4K8hy;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9e+eLdChtzF2DxCiubvkYVjbrjYo8E2xFpHCTCHW97M=;
        b=ES+FGhKYEVkO/huxJz33+ei++KvxQJ+AGsX07eTypfdlmJ3QN51J3x8GXjxOr9KhQ1
         K1SsrMM3G25QCKr2ilggGBnxMUpvz6wz26OH41rwdDDTZo12gKrjvzzf8rLjphSRz6Za
         qhk24Bewy/1J6WqPQERig8L4N9QGM1mqNw0fXb2c5nN4iy44uxueZtMCR45btdJBSlr5
         rAkrYo6/QW6Hiq8oWPfDU0MPLs6Wcd88vPlHIr0DQun7sr1b+xHv7ccJVp2xw5ZzPNw3
         RN4oVLPPpR9aoVo0A5BvhKqq2EhhCrf0lrm7wQjzFa80Drnzvw9iTOBfHxZ6JMs5+xFY
         9mJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9e+eLdChtzF2DxCiubvkYVjbrjYo8E2xFpHCTCHW97M=;
        b=igIt29jo3GuTF6AD/gmfHiPa337unICmNbtvR/0qRRmCwn3x3Tqjv9befp6U/8fWuW
         Tt6rlFUG6o8fxpTRUiO3JKGUEBr/IyR/Hw5cQSebNF8U1gmKiNSvncN+ez6CLSnamkRA
         DFXvdrd/vXFJaU9lGWF3Rqdtow1tqKM+XAM1mhSAgWjK+0U0M/Qpcv8FFWNyMbZy/rlH
         DrIKVZIJSMMrQfBMAiwti4M7zAyGxyU+l38ZWR8EmUJ8DJhqkxzLJz+WPqx55bHo+heY
         kYAt8P6VwW1wCZuVkUXFoTV+ZmrhmTsRfFw4MDgW9eORQXRMgIkMlWRmlku5LdtVUt/g
         DjpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533IE/xTejft+Nf37tMLcZXAayhP0jCg6nsS4KGzGuMD+2rSoaRZ
	IJviuieiNr/vCgy1rnXQUyw=
X-Google-Smtp-Source: ABdhPJxNTh4mwJYBgcDJ4K2z0EwaRRzyOc/Z60NpdBTyS0n6IIQN2uB1P17a7qZJeoCtxwWIGtNYuw==
X-Received: by 2002:ab0:67ca:: with SMTP id w10mr687082uar.97.1611295908165;
        Thu, 21 Jan 2021 22:11:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:22d2:: with SMTP id z18ls392268uam.5.gmail; Thu, 21 Jan
 2021 22:11:47 -0800 (PST)
X-Received: by 2002:ab0:2ee:: with SMTP id 101mr115042uah.39.1611295907732;
        Thu, 21 Jan 2021 22:11:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611295907; cv=none;
        d=google.com; s=arc-20160816;
        b=yHrXjY7Pa+Abw7vXgsw12NAMkhV1awvXUlvIRtOLmHQFgbST1/jwhAPWC9ew1Y+Klk
         B9GNE4lZIzgfKJD/leTcqKIE4yMZMXivGadM5E8IHUqztIbuI96beC67MJD7hifmXerI
         JdLZeQbXjVBpKNlO6U6oPhCOONe+JDHLuLlN4g8qsy6oFle24wwiZ0GRQsr11rpV3la2
         Qej9ht00b5n4LqPZdDIjmRwfJkcvhMUvQrdTsST5NLENKxj6s53dZA5YNTT9+KjTUuAT
         nTy26XnIloCd+2xsvXDsR/3xaKSxeZKSmckGaYVntu6XZwEcpS+988062hjhS+7+ijgn
         cmUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=QPNdt7ovBYNhxHq39ggDMXhhyoXYMScMZEiARI31TjM=;
        b=KDqob/cFB4kran7Ba082XzfE1i+5EhKBQzCF+K725aOfDZPlJmoA3ihro/28ThbGZF
         X3hCVxLc4JePTTMtauDMrr14/d4Dg+N4gdrB90wLTDoHn8vqSrTKmaW7jTGOkOZ2kweN
         bV2VaZIf4Db/Au79QhShTFT19KLoxn7xbTdRB/y67QZEpnfSMGswdCfDhjoeAEgixo9t
         xn/2DJo6J/caEgZo/UUEbRYrmXqo2Yg4lanSBh3Wfjs7U8gAGqWWbP1nO6pLdhYi7gop
         VFnc6Iw6fccpSmIcxqhLZtuLFsN3gsYyEXFJ0wtsrXdUQ0NCX7GVVUIQNK5ezGsxnLvm
         svaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=z2C4K8hy;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id y127si408809vsc.0.2021.01.21.22.11.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jan 2021 22:11:47 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::9abc]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2pfN-00059h-UT; Fri, 22 Jan 2021 06:11:30 +0000
Subject: Re: [PATCH] powerpc/8xx: export 'cpm_setbrg' for modules
To: Christophe Leroy <christophe.leroy@csgroup.eu>,
 linux-kernel@vger.kernel.org
Cc: kernel test robot <lkp@intel.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, Andrew Morton
 <akpm@linux-foundation.org>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org
References: <20210122010819.30986-1-rdunlap@infradead.org>
 <91159e78-4eea-c645-9171-a5b90271710f@csgroup.eu>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <e8e78537-0775-95b2-3161-5b5e07e784fe@infradead.org>
Date: Thu, 21 Jan 2021 22:11:22 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <91159e78-4eea-c645-9171-a5b90271710f@csgroup.eu>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=z2C4K8hy;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 1/21/21 9:51 PM, Christophe Leroy wrote:
>=20
>=20
> Le 22/01/2021 =C3=A0 02:08, Randy Dunlap a =C3=A9crit=C2=A0:
>> Fix missing export for a loadable module build:
>>
>> ERROR: modpost: "cpm_setbrg" [drivers/tty/serial/cpm_uart/cpm_uart.ko] u=
ndefined!
>>
>> Fixes: 4128a89ac80d ("powerpc/8xx: move CPM1 related files from sysdev/ =
to platforms/8xx")
>=20
> I don't understand. Before that commit cpm_setbrg() wasn't exported eithe=
r.
>=20
> For me, it fixes the commit that brought the capability to build the cpm =
uart driver as a module, that is commit 1da177e4c3f4 ("Linux-2.6.12-rc")

OK, I didn't have a lot of confidence in that tag.

Thanks for commenting.

>> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> Cc: clang-built-linux@googlegroups.com
>> Cc: Andrew Morton <akpm@linux-foundation.org>
>> Cc: Christophe Leroy <christophe.leroy@c-s.fr>
>> Cc: Michael Ellerman <mpe@ellerman.id.au>
>> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
>> Cc: Paul Mackerras <paulus@samba.org>
>> Cc: linuxppc-dev@lists.ozlabs.org
>> ---
>> =C2=A0 arch/powerpc/platforms/8xx/cpm1.c |=C2=A0=C2=A0=C2=A0 1 +
>> =C2=A0 1 file changed, 1 insertion(+)
>>
>> --- linux-next-20210121.orig/arch/powerpc/platforms/8xx/cpm1.c
>> +++ linux-next-20210121/arch/powerpc/platforms/8xx/cpm1.c
>> @@ -280,6 +280,7 @@ cpm_setbrg(uint brg, uint rate)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 out_be32(bp, (((B=
RG_UART_CLK_DIV16 / rate) - 1) << 1) |
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 CPM_BRG_EN | CPM_BRG_DIV16);
>> =C2=A0 }
>> +EXPORT_SYMBOL(cpm_setbrg);
>> =C2=A0 =C2=A0 struct cpm_ioport16 {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __be16 dir, par, odr_sor, dat, intr;
>>


--=20
~Randy
RFC: Features and documentation: http://lwn.net/Articles/260136/

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/e8e78537-0775-95b2-3161-5b5e07e784fe%40infradead.org.
