Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBY6PVGAAMGQEKBJDQDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6367A2FFC5E
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 06:51:32 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id x11sf1473227lfc.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 21:51:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611294692; cv=pass;
        d=google.com; s=arc-20160816;
        b=YhayAkc7wx9z2b9lYdD/qhKNEfOZJot58T2eHN3QISrj3ivjZ6XQr2ejJmFNYvz4l9
         TSWWq/8otB277MrASOc4Xpn23topJS6+DgqCwZ8mItzhhPB1EqxVH+1qLZLLA5CxKBjj
         DMISZTyHhuTJzla28/5jynVuvr/MKB6NQH8X2MVTYpQ/un7cYXG25D6QOcrlJnPNq0wT
         9Y/rmbdCNW4a0LRQasnBuN4vrAD/sy/I+UQtlcm9lBcYSYyVcXKWMhApWRn8/pY9bLOG
         uT/I/rdpck50MH4GTMkGPXNnQcHGcfCOuTTE4sHKFikASR+F6QW7Bj8EHjPrsyKiJuRG
         7ORA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=R1iGzlCZSpebK8yDvSKyeijb0U1D8Ul+kiDRUKOrRLQ=;
        b=ps9ZSSKdlrOQ//lq3qs2jxVm9UVe7dQPYF+WDJKzLrsvirOSxE2a2ommb4DgZYpfqB
         qpNst4TyLa+gQ5+tktrpjYTGYjbTSLc50v4rmjJffgzwOtlyc8xdBgUdrsTO5FyJolt6
         Gi3IJbK1MzlcHj1x9UlkXunkWeoFsifE3TI350minh3fG5Q06XOeE+wd1ogVTR22ONHI
         B9ki9OBU3ij7cATW0xcFZPOo/3s/49IvvAB0QT8mtXnjgHqsrb0cW72mbICv3kZ/ra4b
         a1UwTNZvw6qvOR2b2mP5AG0hFbFXHnXaXh0L8iZn5GmmMhVsLmm5hAPhpyge/ACQC9Q9
         4Lcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R1iGzlCZSpebK8yDvSKyeijb0U1D8Ul+kiDRUKOrRLQ=;
        b=CWiyoswaBU0huTpS/IyYfvAQIzGOlQR7jckpp10wd6rxWID4x+/E01E57EBn3F+vUp
         tp+vlAD8qLAT4Kj1oDyAQAIuRAz82BVT4updBag7F1ox1afbMttG0E+hvN53TphJE4CE
         JzsawAmycvWEFqIIaNxztDl5Op9C8kl0/+2TKhOTDT0WfZndKv6J+g6C2vomPPEv5nMP
         SmzTasbLYAGK7CQSm1d/LgH2fMoBQuodnWG9uZvSxL7u1d4ZHZr6+pZZ/D6THWMKJYq1
         x0HYcp+iBkHz/b3NSLioig0YB2PZk1tg/bh88hohQlzpVJmGd0EJg5k1Zv4MWnQxxexW
         GRxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R1iGzlCZSpebK8yDvSKyeijb0U1D8Ul+kiDRUKOrRLQ=;
        b=IrYV/mCwuFnbANoiqOw8Ie+gIQ3Ku5QoRqR5fwNTstG9tYdX2mzS2JV4GrovIVSeKW
         OTotf7TVhomyXmc6PGCjf8acQA1JF5hUdBqXCT+BHZHfRtt3dmeOkWrYdAtF12rq8p9Z
         Ui43xlU2cV4tRb1YA8eQvQKcHgR0zPIS0UQrWcbtKqyi4unG8DVaCqVU3OAoob1Ra+2G
         pQgPkqUcr9bWffvf4MXZDfx29AFRBZtBzTnkjZ4VE13KPHUZbQEg1BrMluJslZZKIhf2
         reOlgtpWxq0NfaOcqDp3Xm/x2r3WvIDj3s5mfRtzMwrvfhjieveNZCybUHtnahA2bb+Y
         FSyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+EHx5RnpQ3B/WTfg1eSeBvFRgfzEjlX9w3VePbyncR7oAN0ic
	pUoEjmXUv+LqwycEAu4vk4M=
X-Google-Smtp-Source: ABdhPJw2+ymO2fWAr30LjQ8H4IFVkYQcRgWRFOp4LxMjSMhQ7szRziGBtpI7t2t0ks/ZPtNcwxHORw==
X-Received: by 2002:ac2:418e:: with SMTP id z14mr45821lfh.126.1611294691981;
        Thu, 21 Jan 2021 21:51:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6145:: with SMTP id m5ls1472402lfk.2.gmail; Thu, 21 Jan
 2021 21:51:30 -0800 (PST)
X-Received: by 2002:a05:6512:3305:: with SMTP id k5mr1367598lfe.35.1611294690917;
        Thu, 21 Jan 2021 21:51:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611294690; cv=none;
        d=google.com; s=arc-20160816;
        b=Hqkx6QknzHSIOJ/u2ITtCLd9G6PZctPbgyCyIiVE1kfX7CzA9hvIKp8103lBLKD1DS
         /UcjbPZDUpyG+7+NvZvn5XCwQzUoLsB1T7zAc5f8RDIW3jN75H5Dc5ka54H2iZaoe3CI
         VbZ3raNbsT6yWvRnQBi2oyZ4GYCQL2QUaEW8Ft8QpjXhUMLgJXk7gFxqvAVCjhco4F3f
         y4cnG0VHfZVNdQN9LiBF6pMV8Hc8AM1cwjmTaqp8qL+/piTfwcC6ofAnQ+WJzHtdgGiJ
         SNUdryvhQE8AM03pu947V2o/JxYCsIhhi7CG/dGgRRGrI+OzSuY62uSagDyoS7znnygC
         vAOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=rufmMGam4KoKB1csCKGiXXNYvyUph7DtlSbTBGGYL1c=;
        b=K1tRrsVm5eDFEHQr8ikb1wvYa7menPqeCfte4u0biY7HN53cVh/RMdXLcQ6/vFVgKj
         LOslpER4ke7D1JLy0JRxSFKhNdR93+yKHEZ6o7tdjFaEKdI7eeiEXNR3cN3OoEabFamb
         DsG1oVbtPt3umTdo5V4N2kk1NaRX/cYWD7j8/IyxyMuJW0+etk2F8nFwBG11Zl03RhQG
         JO/yn++0Q4FAHIRoB4zMbXaBigIM7Wrgi3SVApW4Z5Sf0aot5kU9CHJJzFqICrNVvR9B
         YL4okIImOQJ0plobe1ygCljS3ZsdLlAX5cwTieEh5Vo5AX4l3bxfEeKu8PjDMwKSIb3J
         TdNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id q28si338667lfb.10.2021.01.21.21.51.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 21:51:30 -0800 (PST)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 4DMT0K0zXRzB09ZQ;
	Fri, 22 Jan 2021 06:51:29 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id WBL27sZgFqmM; Fri, 22 Jan 2021 06:51:29 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4DMT0J6P6BzB09ZP;
	Fri, 22 Jan 2021 06:51:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 0652E8B776;
	Fri, 22 Jan 2021 06:51:29 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id WfxlCzxB0EEj; Fri, 22 Jan 2021 06:51:28 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 65F3E8B773;
	Fri, 22 Jan 2021 06:51:26 +0100 (CET)
Subject: Re: [PATCH] powerpc/8xx: export 'cpm_setbrg' for modules
To: Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org
Cc: kernel test robot <lkp@intel.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, Andrew Morton
 <akpm@linux-foundation.org>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org
References: <20210122010819.30986-1-rdunlap@infradead.org>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <91159e78-4eea-c645-9171-a5b90271710f@csgroup.eu>
Date: Fri, 22 Jan 2021 06:51:26 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210122010819.30986-1-rdunlap@infradead.org>
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



Le 22/01/2021 =C3=A0 02:08, Randy Dunlap a =C3=A9crit=C2=A0:
> Fix missing export for a loadable module build:
>=20
> ERROR: modpost: "cpm_setbrg" [drivers/tty/serial/cpm_uart/cpm_uart.ko] un=
defined!
>=20
> Fixes: 4128a89ac80d ("powerpc/8xx: move CPM1 related files from sysdev/ t=
o platforms/8xx")

I don't understand. Before that commit cpm_setbrg() wasn't exported either.

For me, it fixes the commit that brought the capability to build the cpm ua=
rt driver as a module,=20
that is commit 1da177e4c3f4 ("Linux-2.6.12-rc")

> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Reported-by: kernel test robot <lkp@intel.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: clang-built-linux@googlegroups.com
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Christophe Leroy <christophe.leroy@c-s.fr>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: linuxppc-dev@lists.ozlabs.org
> ---
>   arch/powerpc/platforms/8xx/cpm1.c |    1 +
>   1 file changed, 1 insertion(+)
>=20
> --- linux-next-20210121.orig/arch/powerpc/platforms/8xx/cpm1.c
> +++ linux-next-20210121/arch/powerpc/platforms/8xx/cpm1.c
> @@ -280,6 +280,7 @@ cpm_setbrg(uint brg, uint rate)
>   		out_be32(bp, (((BRG_UART_CLK_DIV16 / rate) - 1) << 1) |
>   			      CPM_BRG_EN | CPM_BRG_DIV16);
>   }
> +EXPORT_SYMBOL(cpm_setbrg);
>  =20
>   struct cpm_ioport16 {
>   	__be16 dir, par, odr_sor, dat, intr;
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/91159e78-4eea-c645-9171-a5b90271710f%40csgroup.eu.
