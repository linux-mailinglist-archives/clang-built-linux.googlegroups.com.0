Return-Path: <clang-built-linux+bncBCI2VAWMWUMRBNWWQT2QKGQETAVOCJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB561B5457
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 07:44:24 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id o134sf503293yba.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 22:44:24 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1587620663; cv=pass;
        d=google.com; s=arc-20160816;
        b=AP8peptNY9sPSi7JbuRfI8CPn7mJIeet73UkagBeqxX+1wI3xM8uaxItlgzMXljHNp
         w0IhlFOwKe1QRnOBvuPAG6P9+RM7CnvV6rjZCVyu79yBCXVeusUsLxLO/TCt19uano2x
         cBr2bNhYjbPFTOaHIrJvWB3T2Z8zusrpGQAjrQGCaqJW2mxIRx5EP6ZmrQ0hBWPmwDYM
         NH5TqIYQwJa0PpdIdspGifcK12VmD1HfuEUtxI8t2yJSihLXGeLDohb9fxRc4TicIjSb
         keXOejwYJcB3DVwLgdOD5BwNpewsuzQ+Gx3ZDBK3BtA9B+NY8QkgVeP8pGguvlcZDPfb
         vY2A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:references:in-reply-to:reply-to:user-agent
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=ybAAv6z4IFnIqs+2LyIXs6lAbubXuNJHDO531pzq5IE=;
        b=LI8IumZGtRnMu9dWUX6m+VQQTOPyTBbZxNKCC5++QqJ24Zp7sZPG//05Ayp5Yf6Duz
         49P1AFanUIZpKOGt0WUVPQ2LmbLi16APtyVjqQYZ8ZfP4eUhYmiABT2PLWrWRGWrfCVl
         6PoF5uGWQyTANQeKSmz4EI423PmnH5q0ikUiu+7AU18I2HoehX1iDjUODuwDzw4AZ5jp
         r2j+R/DFrxL3rbic+IPzypb2XL2bNCo63eoG62h6xIRI4TfZYzgjmSlYrXx1tHmSSCae
         pzhza/jfKR8mgdC8E6vFOReHtd4f23qoThRwR8e3LAgjvje8ikl89Zvs9GbynitAw6Lt
         x5fA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=mail header.b=O7+gDV4+;
       arc=pass (i=1 spf=pass spfdomain=flygoat.com dkim=pass dkdomain=flygoat.com dmarc=pass fromdomain=flygoat.com>);
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 124.251.121.243 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:user-agent:reply-to:in-reply-to
         :references:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ybAAv6z4IFnIqs+2LyIXs6lAbubXuNJHDO531pzq5IE=;
        b=KBjSyyEqwhlCDURdbZiMr30juAJslhodWRa27R5NlzYbclm9HL2PTm4Ro0kA0GigIS
         QWHeGzxX3HCSzZLixqjzrKGkVPc1VAMwnR/EOSP83gcwWgbuasSzr9LNHsROi5i/ZXLi
         05aNSEEGRL+gUuA7nzb+ZlqxtaejlkixwcbDCmXnAyAkXW5yDD95z3zWg1sPIyL6Mahd
         G1myOASFmuoIFRHdFNtI1lzTciQSmRsSSmHUn5Rc7QmxRKVUToznBtHNnFhf8gFA0RMv
         tSR8SH7vCLga8IiJ4UpObDg7oYfgJ/IKE4Yl1q+ErmjaBhg50vvutTgWipe6vCttqrim
         JQOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:user-agent
         :reply-to:in-reply-to:references:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ybAAv6z4IFnIqs+2LyIXs6lAbubXuNJHDO531pzq5IE=;
        b=AgDDNJtg+/AmT9v/agP2tpcfRerBpeQBFiB2DI2P1qfYT69MNF5E/mYOfy6SSXFPOL
         8QpqffR/q8tutDkywzuTLaKtI14X2V34y2UUZJYbVYS1KtX00MERkg5hDoECBDk9ymBr
         si/mO8hd5JowaBELlbzL6gTw76384PPTHYQdy+KFyi2Crn7jRU67m1tyhvNfLjUzCDFL
         7RBb00Xc84GINPIkpWF5S+BcwDHHf3Xsb1Rni5CUoJV9tE1Ov2HH9DQbaikFPVsBVQgk
         e5jwk63EDdYUF9W3YHxHcV1xWII+vyc392LcXdQuBWjNcb56zkTejYovhVK1UkA52a0C
         Rusw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZCtjJju6sMwsVuQSZ6/KJalz1867F03hcdlKaVFZBUV9b+/i5/
	QonYvr1R7GSFMei8/1a3J/s=
X-Google-Smtp-Source: APiQypIYDQL/XUuQ1H84cfdORPTtX7h8uW/Jerf90K9sZt26GvWhzU/0edd0/hKTu5bsEGyBzY4/Kg==
X-Received: by 2002:a25:9b01:: with SMTP id y1mr3960723ybn.454.1587620662871;
        Wed, 22 Apr 2020 22:44:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d0c1:: with SMTP id h184ls1604640ybg.10.gmail; Wed, 22
 Apr 2020 22:44:22 -0700 (PDT)
X-Received: by 2002:a25:30c6:: with SMTP id w189mr4268366ybw.477.1587620662354;
        Wed, 22 Apr 2020 22:44:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587620662; cv=pass;
        d=google.com; s=arc-20160816;
        b=SVoyrSQamjcRO14YVqxdnNgDiEkWo0DCmLBwyRmoTDMCy4YjOl/3KAtyDrxnZQ1EAv
         +pJ4pW1dSpUMc+T4u8Ni+/aLyaUHGtkHy0jGgT0Twwgpp7rZYcVEnyFITsa/ucrlX48/
         QEz6UpMoC512Ot7aNFOo+i5Ne7N1LBB+2j8Wzs1v2fG2Jp9F3+Z0oZVZIBKQHQLa7NmK
         kDJeUDUyxm4gBpu1gYiFH0Lm5FTzPBsXASz727J8Nz8VD02wYJ2uf5oQeSxHCl/Mhqhz
         C8DgY1qOm7lE3ZEV1oivFvN1aVtds5nzXzGfbBbLQwqH0+b1C7s+MXdnjk5JEl1IwUGE
         RFcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:reply-to:user-agent:subject:cc:to:from:date
         :dkim-signature;
        bh=p0Hue82OArHegP34/EQC99f2PxSUyGy0fvP1kcei0ek=;
        b=Ya4JOnRcCMc3ZWnx16PoADbWHPcyzSy5NVJgiG6HmWkjXfIHl4dwa+j+CYxxGHuZUf
         7xGbvkY3gt/cmfmdIDAhhS5dFV4mV/Qw0dqvNrq6oNEXloG702v81ArOL1bBSobr1J9M
         S8LJ14ZLG7Ss60dtiiPmSaIYOzcip4fbCABTUZxw8qsp866JsV7AP0FBGQqDHmFCBB9L
         53eH0GeLB0vsF/wig0/rphXVkXcJPnxkSZBcNL3WqeooMG8KsFkBRzT89M+gB55DMOqA
         Jxps3a5mIl6FHqc+Eg4Z/TQigL49byYFuaAuHGgbYr8wlCZgD/cKeTIY3eZXqQmhB/dF
         Rmyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=mail header.b=O7+gDV4+;
       arc=pass (i=1 spf=pass spfdomain=flygoat.com dkim=pass dkdomain=flygoat.com dmarc=pass fromdomain=flygoat.com>);
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 124.251.121.243 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
Received: from sender3-op-o12.zoho.com.cn (sender3-op-o12.zoho.com.cn. [124.251.121.243])
        by gmr-mx.google.com with ESMTPS id w5si141098ybg.2.2020.04.22.22.44.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Apr 2020 22:44:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiaxun.yang@flygoat.com designates 124.251.121.243 as permitted sender) client-ip=124.251.121.243;
ARC-Seal: i=1; a=rsa-sha256; t=1587620578; cv=none; 
	d=zoho.com.cn; s=zohoarc; 
	b=WEXPfoDkTWR/J9oQ9Jcu7q/a/EFKCDDKjQO2CAHp2ijGoscDdlo4HyceiMs/n8zMB8/PyX3CFPQhD0dhwlAMta1YuthFxuys8tCAVPSxLiThRHeZrNgUdQrqb0fjrHP/m6RSUyLwuSo60uQLNKaqMejC5AOOMEInULT2bvzITAo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn; s=zohoarc; 
	t=1587620578; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:Reply-To:References:Subject:To; 
	bh=p0Hue82OArHegP34/EQC99f2PxSUyGy0fvP1kcei0ek=; 
	b=Lqh3ZFfPQNHk+KReY/uCf6LxTjL1w/abhWPo7X+YAx4gZ7d7GdyYgBPPQrbjRE5oopJe0PaHPWFllMrx7utrTHEYfaiBmh+TJLsnABmCJjEa/RgNrR+RndKhHs6JjmC/rp+MpgqE32A0BXqWdhuRz869SpvjWMX9xw24/E19FrM=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
	dkim=pass  header.i=flygoat.com;
	spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
	dmarc=pass header.from=<jiaxun.yang@flygoat.com> header.from=<jiaxun.yang@flygoat.com>
Received: from [127.0.0.1] (122.235.213.3 [122.235.213.3]) by mx.zoho.com.cn
	with SMTPS id 1587620575832526.5212172311194; Thu, 23 Apr 2020 13:42:55 +0800 (CST)
Date: Thu, 23 Apr 2020 13:42:52 +0800
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: "Maciej W. Rozycki" <macro@linux-mips.org>
CC: linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com,
 Fangrui Song <maskray@google.com>, Kees Cook <keescook@chromium.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Paul Burton <paulburton@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 Jouni Hogander <jouni.hogander@unikie.com>,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 Borislav Petkov <bp@suse.de>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] MIPS: Truncate link address into 32bit for 32bit kernel
User-Agent: K-9 Mail for Android
Reply-to: jiaxun.yang@flygoat.com
In-Reply-To: <alpine.LFD.2.21.2004230036480.851719@eddie.linux-mips.org>
References: <20200413062651.3992652-1-jiaxun.yang@flygoat.com> <20200422143258.1250960-1-jiaxun.yang@flygoat.com> <alpine.LFD.2.21.2004230036480.851719@eddie.linux-mips.org>
Message-ID: <B307BFAC-9973-4444-B69A-40B054210E84@flygoat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ZohoCNMailClient: External
X-Original-Sender: jiaxun.yang@flygoat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@flygoat.com header.s=mail header.b=O7+gDV4+;       arc=pass (i=1
 spf=pass spfdomain=flygoat.com dkim=pass dkdomain=flygoat.com dmarc=pass
 fromdomain=flygoat.com>);       spf=pass (google.com: domain of
 jiaxun.yang@flygoat.com designates 124.251.121.243 as permitted sender)
 smtp.mailfrom=jiaxun.yang@flygoat.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=flygoat.com
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



=E4=BA=8E 2020=E5=B9=B44=E6=9C=8823=E6=97=A5 GMT+08:00 =E4=B8=8A=E5=8D=888:=
10:12, "Maciej W. Rozycki" <macro@linux-mips.org> =E5=86=99=E5=88=B0:
>On Wed, 22 Apr 2020, Jiaxun Yang wrote:
>
>> Reviewed-by: Maciej W. Rozycki <macro@linux-mips.org>
>
> Hmm, that was for an earlier version of the patch, and reviews obviously=
=20
>do not automatically carry over to subsequent versions, as it cannot be=20
>claimed that they are as good in the reviewer's eyes as the actual version=
=20
>reviewed was.
>
>> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
>> index e1c44aed8156..68c0f22fefc0 100644
>> --- a/arch/mips/Makefile
>> +++ b/arch/mips/Makefile
>> @@ -288,12 +288,23 @@ ifdef CONFIG_64BIT
>>    endif
>>  endif
>> =20
>> +# When linking a 32-bit executable the LLVM linker cannot cope with a
>> +# 32-bit load address that has been sign-extended to 64 bits.  Simply
>> +# remove the upper 32 bits then, as it is safe to do so with other
>> +# linkers.
>> +ifdef CONFIG_64BIT
>> +	load-ld			=3D $(load-y)
>> +else
>> +	load-ld			=3D $(subst 0xffffffff,0x,$(load-y))
>> +endif
>> +
>>  KBUILD_AFLAGS	+=3D $(cflags-y)
>>  KBUILD_CFLAGS	+=3D $(cflags-y)
>> -KBUILD_CPPFLAGS +=3D -DVMLINUX_LOAD_ADDRESS=3D$(load-y)
>> +KBUILD_CPPFLAGS +=3D -DVMLINUX_LOAD_ADDRESS=3D$(load-y) -DVMLINUX_LINK_=
ADDRESS=3D$(load-ld)
>>  KBUILD_CPPFLAGS +=3D -DDATAOFFSET=3D$(if $(dataoffset-y),$(dataoffset-y=
),0)
>> =20
>>  bootvars-y	=3D VMLINUX_LOAD_ADDRESS=3D$(load-y) \
>> +		  VMLINUX_LINK_ADDRESS=3D$(load-ld) \
>>  		  VMLINUX_ENTRY_ADDRESS=3D$(entry-y) \
>>  		  PLATFORM=3D"$(platform-y)" \
>>  		  ITS_INPUTS=3D"$(its-y)"
>
> Hmm, to be honest I find the nomenclature confusing: VMLINUX_LOAD_ADDRESS=
=20
>and VMLINUX_LINK_ADDRESS sound like synonyms to me and also look very=20
>similar, so I expect people will be confused and scratch their heads in=20
>the future.  Due to the obscurity of the problem I think there is little=
=20
>room for manoeuvre here really, but how about using LINKER_LOAD_ADDRESS=20
>for the new variable?
>
> Alternatively, have you made any attempt to verify if actually replacing=
=20
>the setting for VMLINUX_LOAD_ADDRESS would be safe?  Glancing over its use=
=20
>there do not appear to be many places.

Limited experiments showed it should be fine...

But MIPS kernel has some design I'm not really familiar with like SYM32 for
64-bit kernel and special address space design for Trap-and-emul KVM.

I'm not 100 sure it's safe so I didn't do so.

>
>  Maciej

--=20
Jiaxun Yang

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/B307BFAC-9973-4444-B69A-40B054210E84%40flygoat.com.
