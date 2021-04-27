Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBC5XT2CAMGQERNMUSFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A78036BEB6
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Apr 2021 07:05:16 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id o4-20020a0564024384b0290378d45ecf57sf24427824edc.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Apr 2021 22:05:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619499915; cv=pass;
        d=google.com; s=arc-20160816;
        b=yXBfkgRwXyU0bwIHRsqkHxe8TW3HB79QbLqC9IYruBef+o108d3VvTEDE2VGK8iSov
         QWgpAJdn8+wQW4fQqvybUbJ9kvt+IvNNXnDE8284T6rEPCey2ZIQIqhBWz7i9TDyRtk6
         hyewSTm9W31K4u2s6px4NnJykx4V2flZSd91D1woC4ycpeGFx5fF7/RxiHnVntFlMYkB
         aYMYW9ckKBBSbunxWhx/7o52aLXQlawnCQ/yTMOkOf5TJtLMPDJjigFfqNzKwuAJTvsv
         qpY2ph6Vs+VHbvPP3aHiT7bmLU425zcgSIvQcxFwHKth3GgQBGJSX0xa9xkU4O6tSblU
         VXJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=XvWqECN/RAAevO2rk2wqselIHz0fciho/znqxaIY9J8=;
        b=TLTCwrmg6fuQEwFK5dxeY7tW2UmUw2WaFZNR7q4S0NZmuiAy82/DSnO1EBlMy+Cpo/
         5KXxeTlzP+LGNLzRPDaQ/XplwBtbqVNrGUFJvion7dgtWqLzFWhq5cvRcusRwn6gOWtr
         aHVZl6c8jiC+b2BGHcdV/dOK9g6QcBDpNfKjJrVi1rStkggx4Qn3tUbd1zi6Hmghxasf
         7UlMZqpWb8UyyOxG/hrLO0hxHXh6lx9RhKErUcQNbe4KSonLQulA56mbfPNgVYh8zq+5
         t0sIItLiyYtLFjhBxDWDc1Vsg/HLR4ShDyLxQ83xMIVt71lWD7OOlIaNhiyX0GLiQyEJ
         ofaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XvWqECN/RAAevO2rk2wqselIHz0fciho/znqxaIY9J8=;
        b=kgTA2ZqBRCupsWA/N34lHwDJ/ocGHYUe/IQd9LXy+WuYwme4/jpJ1MWXjslQNRWAoC
         g0dmE9HMspEMtp8iWYWumWt6XfT+TEhKJmF6ByBLXSfGEAVlycwW04ChfR57pal3YC6n
         863ZqkFRvwSLLw0vXi5/6lixIkaqJ182aL4jBOgQYzEHcYUBFz1u9R8frtlkFlOjY38v
         uJpPMF/h39ANxWsKLKNm58zTwgMu3+F3SyW1M6KcpDqQQmJosm9GV3gssiO0fao8Nans
         4R/Xv76X0Juyp7FjS4ckRZY+pV7rPHU2bRLwxzr5UBS/kiZwpiuVBk1ncKz5wm7eomw3
         l/qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XvWqECN/RAAevO2rk2wqselIHz0fciho/znqxaIY9J8=;
        b=g/JqcLOwm8hxzaVPugiWFas9hRXbFcO/XnYAyPSxtM4B2vxZ4cZKtBfjlKwx13Jc/0
         pcGQkXWw9oqdSTUuQlsDaArXLMtW6At5c41TaQyNgntXr/XBghIxOWHcTpEtBKH2mzwR
         mqgXKZFVFlju4a38ZTq8bzBDyzUNRy0bqJAVqgrIIyP3LtmsJElc+a+5teBErQE67qC2
         0QRqQhArriwbNbraXyde9cWtLki1RBxmeELO39RUNvS1oN+r7G+o8yHNzsJvFgOOE8y7
         kIxGC6jBMP1sfaej3fjc1QlW0AV7M3EpmnoN0QyxPnywoKixSnfdz/F09LPrw4hlzRI/
         7sEg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yTeG5K0/2B75B+3D8pzcASXXRkqBY6HBpmXpY9nvx+ejuztgj
	E6kkihXeOQ/pdzTmPuoHcB8=
X-Google-Smtp-Source: ABdhPJyRmNrQoTdGvrDdNvRzAt2rQpBZPuN/b4jTNysnAL6ojSr2RGaINCXEDGIOkJoUapNQvYDK/g==
X-Received: by 2002:a17:906:3d41:: with SMTP id q1mr21432391ejf.282.1619499915784;
        Mon, 26 Apr 2021 22:05:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:a194:: with SMTP id s20ls2270771ejy.9.gmail; Mon, 26
 Apr 2021 22:05:15 -0700 (PDT)
X-Received: by 2002:a17:906:c148:: with SMTP id dp8mr21763192ejc.193.1619499914958;
        Mon, 26 Apr 2021 22:05:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619499914; cv=none;
        d=google.com; s=arc-20160816;
        b=E0AdCCQVusKlvknYIeD3cVQZg9EllOExiVsLvRImUT8TbMqcaOq/2Xj1pZfmcvO1UY
         RvB7aXMLzU6r1UlKNT/UqmEDyXRyZkCuI7pk+va63uQdTHNXslYVnKVZtWzp1m5UmdbB
         i8h3WEIZW0w81vI03x/Jr38GNJyJxwKVh8mq7kjDNBHKyzckFiVLYFW7cMu3s4/+6g8v
         8lnHIpqqur4laxG0oexrBvj//C76QHJbeVzgN6OZRLp9lLgSG2Y3oFCLVcscLlu9rcjy
         i5zvbJ6fWeI9jz9kDvx5iCyussN/LJKMsvB74b1FokuTJCWloyY1hfG8XPaCYDHd+619
         cZUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=kE1ykJP/3UFmDwWSld/lzNKQB3MHvuNkE+kKqo0NSk4=;
        b=sMo0AfhbYUfCmeQSu4Q5p5WWuVeSol0qBkXq/LyeuSd56E6xK4R2vogwSAohNcyHrT
         r3ykH0ysQjIEtkmflakb4/MQb0aIsnvtXe0XUTiu3p+Jn1xWt9deRsis67QPwiBZmfZM
         oYacsv//TZhLnvA9VQy4e/teiH8MDm0tbyQlhd96WRYBXYcmk/WFUMVEf6XCtg8P5NBm
         nLjaMnGjw+mV+E3hPTV9EzL3yNer0wzmUr+ibOkstHqesGQmzER7WPXi2rS9TPqixeJK
         xSe+rvBqBXGLsido8H/mQlllnR/oWuRC+AcZKYADAMguPaGhEB1a9d0mhhIwiiyvZYfW
         o8oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id r21si1655844ejo.0.2021.04.26.22.05.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 22:05:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub3.si.c-s.fr [192.168.12.233])
	by localhost (Postfix) with ESMTP id 4FTqT63mM3z4gf;
	Tue, 27 Apr 2021 07:05:14 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e4PMjbRIQiGt; Tue, 27 Apr 2021 07:05:14 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4FTqT62gmzz4jM;
	Tue, 27 Apr 2021 07:05:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 125F38B77C;
	Tue, 27 Apr 2021 07:05:14 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id je4m3tj14JOn; Tue, 27 Apr 2021 07:05:14 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 9BD808B777;
	Tue, 27 Apr 2021 07:05:12 +0200 (CEST)
Subject: Re: [PATCH] powerpc: Avoid clang uninitialized warning in
 __get_user_size_allowed
To: Nathan Chancellor <nathan@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Paul Mackerras <paulus@samba.org>,
 linuxppc-dev@lists.ozlabs.org
References: <20210426203518.981550-1-nathan@kernel.org>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <32a0f305-031b-e4da-345d-0f03b2b42189@csgroup.eu>
Date: Tue, 27 Apr 2021 07:05:12 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210426203518.981550-1-nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as
 permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
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



Le 26/04/2021 =C3=A0 22:35, Nathan Chancellor a =C3=A9crit=C2=A0:
> Commit 9975f852ce1b ("powerpc/uaccess: Remove calls to __get_user_bad()
> and __put_user_bad()") switch to BUILD_BUG() in the default case, which
> leaves x uninitialized. This will not be an issue because the build will
> be broken in that case but clang does static analysis before it realizes
> the default case will be done so it warns about x being uninitialized
> (trimmed for brevity):
>=20
>   In file included from mm/mprotect.c:13:
>   In file included from ./include/linux/hugetlb.h:28:
>   In file included from ./include/linux/mempolicy.h:16:
>   ./include/linux/pagemap.h:772:16: warning: variable '__gu_val' is used
>   uninitialized whenever switch default is taken [-Wsometimes-uninitializ=
ed]
>                   if (unlikely(__get_user(c, uaddr) !=3D 0))
>                                ^~~~~~~~~~~~~~~~~~~~
>   ./arch/powerpc/include/asm/uaccess.h:266:2: note: expanded from macro '=
__get_user'
>           __get_user_size_allowed(__gu_val, __gu_addr, __gu_size, __gu_er=
r);      \
>           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~
>   ./arch/powerpc/include/asm/uaccess.h:235:2: note: expanded from macro
>   '__get_user_size_allowed'
>          default: BUILD_BUG();                                   \
>          ^~~~~~~
>=20
> Commit 5cd29b1fd3e8 ("powerpc/uaccess: Use asm goto for get_user when
> compiler supports it") added an initialization for x because of the same
> reason. Do the same thing here so there is no warning across all
> versions of clang.

Ah yes, I tested with Clang 11 which has CONFIG_CC_HAS_ASM_GOTO_OUTPUT, tha=
t's the reason why I hit=20
that warning only in the CONFIG_CC_HAS_ASM_GOTO_OUTPUT branch.

But regardless, is that normal that Clang warns that on a never taken branc=
h ? That's puzzling.

>=20
> Link: https://github.com/ClangBuiltLinux/linux/issues/1359
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Acked-by: Christophe Leroy <christophe.leroy@csgroup.eu>

> ---
>   arch/powerpc/include/asm/uaccess.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/powerpc/include/asm/uaccess.h b/arch/powerpc/include/as=
m/uaccess.h
> index a4e791bcd3fe..a09e4240c5b1 100644
> --- a/arch/powerpc/include/asm/uaccess.h
> +++ b/arch/powerpc/include/asm/uaccess.h
> @@ -232,7 +232,7 @@ do {								\
>   	case 2: __get_user_asm(x, (u16 __user *)ptr, retval, "lhz"); break;	\
>   	case 4: __get_user_asm(x, (u32 __user *)ptr, retval, "lwz"); break;	\
>   	case 8: __get_user_asm2(x, (u64 __user *)ptr, retval);  break;	\
> -	default: BUILD_BUG();					\
> +	default: x =3D 0; BUILD_BUG();				\
>   	}							\
>   } while (0)
>  =20
>=20
> base-commit: ee6b25fa7c037e42cc5f3b5c024b2a779edab6dd
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/32a0f305-031b-e4da-345d-0f03b2b42189%40csgroup.eu.
