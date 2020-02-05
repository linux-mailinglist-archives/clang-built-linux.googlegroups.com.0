Return-Path: <clang-built-linux+bncBCXLBLOA7IGBB6N75HYQKGQE5UTYZAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C7B152649
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Feb 2020 07:26:01 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id p2sf420623wma.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Feb 2020 22:26:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580883961; cv=pass;
        d=google.com; s=arc-20160816;
        b=G/y8BqnWkaQwpiFtAPIbS78Co24ezWGt/ag236W4qcKNwcYzNxOlhfCLEpl+iuXQfN
         sLFyhZtgQNByPbOb5LL/NSgsu+UqV16QOxXL2bG0gDcOxfD5e56v3iPF/gQTF/TdtX6Q
         JJ5RtN79puHmpYxu9UM/WSk1MX7ZTWi7tiQgtE9xfhEifFo+4RbPPAvxuqUK7OyJF/Qd
         nY1gT8J2kcuGD7cEnFXZRh/VbJAN4hg/cyg3tgAag55QB8Ycz/LNam0cHIRbACIggsNj
         O8pPF+JR3iEyEXVWghDsyizz9b2UOj+ns6e5148v8A9gFyHNUQWpsVhbAMZcurlqRlw1
         7aMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=dfY/Ps0UDmuPPHVZ85r9LecTa3c26Uv9MSoJkRwteB0=;
        b=l5/ZVZcvUOFDZjji5cJyCEBvmJkK62kjeRldvivnVu+lYGMuRJYGt1eY+4hpAcgjQw
         mNLl3t6Z1/05EJjbvAfrDlJWYoe0Rmc33vu6/Tu2e0NvJdNgrje0bP3mkQuCb9J5SGG+
         YMXF6LERNLu/AVoYsluROptH7iGganN8JioRraz+FLTbMImBetJFJmoL85DXuB3LHVuZ
         ex7tijdkP2MgskVoveQVf904Si9kRkJ7XeU2dFuW85I5XhEB0pwj3Iu8mjzFQbc8tBBx
         o5zk2SjxzB6YHl1o6RrxNFh9AQbEKH54QQoQsQIfYG1EWO4aZvUytg6wkLWkumwQAK5d
         pK/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@c-s.fr header.s=mail header.b=Hmjs+NJp;
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dfY/Ps0UDmuPPHVZ85r9LecTa3c26Uv9MSoJkRwteB0=;
        b=ZpYrSmDMg40xM5MwQfS/80VZnv+0Uv+hsLIw4sC6h+M62eAVdPdq2NdsJGQWGVKGVI
         raxP5kXGEKcKynDAP+z42iNiWmNVWAt844EzsG/BJqcFHK/YJXpuUCudjQuDA6tcZLAx
         uK7wnuJQbyNMGeeFLvybSTUwoIfGvjr2b5CucpHYqUwE05lLbUaIQQ9ELfXlPAg1FKRt
         5icI8nTPSUPmNWIdf6unNf24LXMVNpl1U8nA3D60EFnX434d7ZaG76IqpEIWZ5ykWCdj
         T8UuiAiAMFCnowNSuiR8/P2CR5RCzpqLGQUl/4J8MBWtZQLy+CykkE+KzvTho+VnicO8
         EQ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dfY/Ps0UDmuPPHVZ85r9LecTa3c26Uv9MSoJkRwteB0=;
        b=TS7TZjcLtinjqRPZIGp1tHLdOPa/zuVXF6rNT92ULX5KITYdUHMhMNAbwytJ9JRvtq
         WD4W9l4JhpghnCvJDLBp7A+8nIpZ9wbkOiYAeRT/kxReCXMhPozQ2syw5trNa5rqIE0O
         CEjTbIo9236C2NJjDGU/UGGAxUFyBX9Gy97e5p/b0igPjkezncexSZtFOiCpkF8v+stn
         q/1t5r+w4PS4lSHRtqUMtZxCvNCaG50dn0rXhlYR4+6HWAZVmaFdM3geK+5iNzMBZzyN
         XqCbNQtSaiY3XP4tcfXWr3FiPbKdOW7nIInujob1+VPjY0awdutxmPpED9AuuWphqPbO
         xidw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUpvwpg70j4a9mjQ9iR617LqymxIbsJGql46vPK2D0RxeXPAJJo
	vHk68/vywzjgBS7NWINeXJE=
X-Google-Smtp-Source: APXvYqxivpnGtu3ZANls8Ydl180Ry1DNWgjK6oxUAcLuvS47+LSxE5AtNe7zgo1vyl1oET8xu7MzwQ==
X-Received: by 2002:a5d:56ca:: with SMTP id m10mr27867622wrw.313.1580883961450;
        Tue, 04 Feb 2020 22:26:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:247:: with SMTP id 7ls758899wmj.3.canary-gmail;
 Tue, 04 Feb 2020 22:26:00 -0800 (PST)
X-Received: by 2002:a1c:1fc5:: with SMTP id f188mr3768804wmf.55.1580883960706;
        Tue, 04 Feb 2020 22:26:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580883960; cv=none;
        d=google.com; s=arc-20160816;
        b=jC7ieNeNlAQ96majfKzIxJWIJZwPugSFYb90QHH/OvWgbmsdUWDbuKCTV+3f4QtPbf
         iG29CDATpkWmcdDPn8iivNib3BwTgUR8L/oCtHpRB4wkS/TlPE9pdzVeSpOxUN+VJwpX
         5w8XKn3djmhGTOaS7U5mQWUtYyEGT42figuAlBPWy1rzY28zUumZR/BnpqOW3VQZ2JFC
         Xh/ay9sS3OYh67ZsxsTwOvEVE1ZnJWMMBF2HNh4baB4UI6E7aNZ245PVTC7B6GtzUhL3
         mjoNtxz6rrhYWBM5g5Us5dnOlSvq5p3V5/ri+Z3ztnnB5Km98Oul/2om0s2pJVd5dLWg
         A1sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=arjyGSAsMm0Nw/MEg/HGvPVCQztAhca2h8pfvGO7wGE=;
        b=Vb5fzEts+G+RqYIQwfVCCOhPKCPDioROpWTBwyhWt+hwFA+7Wbl0dop3BbHb4RDt1P
         HDC5prTLhavJYg6c+hjwfk5QscqYPR/cNxF52Yi7AeKyq5hska0KqPODM62gUF9f2B4H
         ibfd1Wapu4dUSUsSZ4nGtRCx/4ma5PYk36gqUidGZLfZ0vqf9v/pbXvAJN5BhyoGCP8+
         V2PQqRN61wVxAZndbWM8vdczHbQ83o8baHr05nZScT8QuT7pPe98oN17m5kHympYUfaI
         k8WcJAiYzVQr6tcbYO5/28aHZf4+vIKTEOqiOxhG3qXezZcc6z17oofqJBBLYRYPyerC
         wfng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@c-s.fr header.s=mail header.b=Hmjs+NJp;
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id 202si212834wme.0.2020.02.04.22.26.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Feb 2020 22:26:00 -0800 (PST)
Received-SPF: pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 48CBQb2lTQz9v9Cl;
	Wed,  5 Feb 2020 07:25:59 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id djzf2NcZP0j6; Wed,  5 Feb 2020 07:25:59 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 48CBQb1TnSz9v9Ck;
	Wed,  5 Feb 2020 07:25:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 0273C8B820;
	Wed,  5 Feb 2020 07:26:00 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id Ue-_DaLfAi1p; Wed,  5 Feb 2020 07:25:59 +0100 (CET)
Received: from [172.25.230.107] (unknown [172.25.230.107])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id B9A9A8B778;
	Wed,  5 Feb 2020 07:25:59 +0100 (CET)
Subject: Re: [PATCH] powerpc/vdso32: mark __kernel_datapage_offset as
 STV_PROTECTED
To: Fangrui Song <maskray@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20200205005054.k72fuikf6rwrgfe4@google.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <10e3d362-ec29-3816-88ff-8415d5c78e3b@c-s.fr>
Date: Wed, 5 Feb 2020 07:25:59 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200205005054.k72fuikf6rwrgfe4@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@c-s.fr
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@c-s.fr header.s=mail header.b=Hmjs+NJp;       spf=pass (google.com:
 domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted
 sender) smtp.mailfrom=christophe.leroy@c-s.fr
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



Le 05/02/2020 =C3=A0 01:50, Fangrui Song a =C3=A9crit=C2=A0:
> A PC-relative relocation (R_PPC_REL16_LO in this case) referencing a
> preemptible symbol in a -shared link is not allowed.  GNU ld's powerpc
> port is permissive and allows it [1], but lld will report an error after
> https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git/commit/=
?id=3Dec0895f08f99515194e9fcfe1338becf6f759d38

Note that there is a series whose first two patches aim at dropping=20
__kernel_datapage_offset . See=20
https://patchwork.ozlabs.org/project/linuxppc-dev/list/?series=3D156045=20
and especially patches https://patchwork.ozlabs.org/patch/1231467/ and=20
https://patchwork.ozlabs.org/patch/1231461/

Those patches can be applied independentely of the rest.

Christophe

>=20
> Make the symbol protected so that it is non-preemptible but still
> exported.
>=20
> [1]: https://sourceware.org/bugzilla/show_bug.cgi?id=3D25500
>=20
> Link: https://github.com/ClangBuiltLinux/linux/issues/851
> Signed-off-by: Fangrui Song <maskray@google.com>
> ---
>   arch/powerpc/kernel/vdso32/datapage.S | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/arch/powerpc/kernel/vdso32/datapage.S b/arch/powerpc/kernel/=
vdso32/datapage.S
> index 217bb630f8f9..2831a8676365 100644
> --- a/arch/powerpc/kernel/vdso32/datapage.S
> +++ b/arch/powerpc/kernel/vdso32/datapage.S
> @@ -13,7 +13,8 @@
>   #include <asm/vdso_datapage.h>
>  =20
>   	.text
> -	.global	__kernel_datapage_offset;
> +	.global	__kernel_datapage_offset
> +	.protected	__kernel_datapage_offset
>   __kernel_datapage_offset:
>   	.long	0
>  =20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/10e3d362-ec29-3816-88ff-8415d5c78e3b%40c-s.fr.
