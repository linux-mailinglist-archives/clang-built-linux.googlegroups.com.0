Return-Path: <clang-built-linux+bncBDHPTCWTXEHRBDV7Z74QKGQEJD526PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 07964242940
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 14:24:47 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id y11sf217383ljm.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 05:24:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597235086; cv=pass;
        d=google.com; s=arc-20160816;
        b=vRp9HKTWipkZdZ1sAvNB+tURbl1L232sXn4WxW3VVqJCirkwkAcDUL25mY81PZuyw9
         +sK4mdxsof7ygWWivXnqDfOYl564GU5ySVDcb2RXJ+3FLe5cTP0PB6s9yfolnb8v/NZd
         vSN1meOyZ6NCZ9j7J5nWI2xGuiNZYqIWb9CdZKQE+Y9kfi7sPZ1xxnhVZyTQ9Ia1c+U+
         8SVw+5ZbC+XyEfALPJA+0BpghcXbZ59kZy3H6Gfq97QNsrlFm4P4Q/IdjOuZ+q/nk9dB
         svATj3bqO9xyo+q6zFrjdhYjte0lwgv8lh4mYXeTrrKYluyBmJycWyjBNSInRv0syADd
         ZSDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:from:cc:to:subject
         :content-transfer-encoding:mime-version:references:in-reply-to
         :user-agent:date:sender:dkim-signature;
        bh=Gt0t40AJnNQlX1pCQNp+uhI+EGa232CZscW9joiJzsY=;
        b=Tbg6l0ZRvgqyKJ4CYbp1wWTIyZGwZexdEFFf7QTgHwP7xq4t/SRUO9PNv7vydi8kAn
         W/Hlm3ZkhEyY2hHGNdZaH6uTM9cdFZ+3i83sZFLgzqUOUn05Or80qbhCjdHxL8MigUIo
         VTQj2X2ad6IfTjiOKOPgXZP4CATqx7E9hmM3JA7K/Le5kVGTD051YJ+VNmAq3U/e34wA
         MmgRhsyK2DTttylzDHNe3VxPRmrbl66M0HnyzaoTNagGTpJNkOiuJB6ozYkF2U7EgTFK
         G3KC2/E1clju4KrN9qlEcEd2e8sVUNVLpe0304rRcn9DVktDEpbw4rbhCZrX7XSikpPy
         zqAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:user-agent:in-reply-to:references:mime-version
         :content-transfer-encoding:subject:to:cc:from:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gt0t40AJnNQlX1pCQNp+uhI+EGa232CZscW9joiJzsY=;
        b=ID8U9ZJi2HBCTwVUdgjeVYMlH6BIWJlCexwlxbOI2qnNOtpV0xpKbJBTyOvMbCfC1W
         tArOxWUxqZS3cSGjM8+S4CjXPo4phq8ZNO5GKZrgRoLu64uLOnqwL0R61C/J/A9649J8
         ZPGe1k5ksjbNOS9nNykCLEL7Ek8IoMQMYv8zNtYYecFoOc4GLjJW9QFadtHAYUCvCJ+g
         xL4EBKLArvKkB4NwG0cfNSD0CCk4wrtXi77pKbSKltjITuWIlRSyCjFiuNgWEKc/T0Z7
         ermXJVWJp9sUs69kdGHnMbgLwF4n0L8/nvCr88ULRInuH140pXmhwaeUOWEAWwPkwI+X
         KSDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:user-agent:in-reply-to:references
         :mime-version:content-transfer-encoding:subject:to:cc:from
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gt0t40AJnNQlX1pCQNp+uhI+EGa232CZscW9joiJzsY=;
        b=SvLmJW+8m3MKGUqJabxKsNvCPkoACRcKDsraP6rZXP2GZA4p5xfW0HxwaCEAClrM2N
         R2ugEOoCxZqizQVL4I8Hs+x2YtMPFnsL8rZXO6CcWnIFEgtJc5HceexgfHoKIN2XgXd7
         Vxbk8N4o87DhOXZ6UMi54yfMxb82+Sk00k+y/cd0uhkqQoIoc5qDVokFYckfFqh8yzbK
         m6EEUt72z7WzfjonZqpACyhSqE2bApwFKaIynpR5JAKrqNh2/csyCMUZgD1Lh4nanjpK
         m8znsaZp+PoKU6ShfDM+E2i28lB6U6RYvoZQSus6ZVrmUMv71Y6YkadsYPDTi6Lg/t68
         XlwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532yH+1/9xQp6Mg9/rwFp1ctyJpB4pxZAKKWwUulibeds/9tAuTb
	Msx/xW6Vj7nEt49e9CdVZBk=
X-Google-Smtp-Source: ABdhPJyEid4zm+7kE1TEIUz6K3PYyFjl2hfP2FBB3Iaezfr2Jt+TkpjrFmOdrc2mFBz6mPmgxs3f5g==
X-Received: by 2002:a2e:9cd3:: with SMTP id g19mr5317828ljj.229.1597235086534;
        Wed, 12 Aug 2020 05:24:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4845:: with SMTP id 5ls37396lfy.2.gmail; Wed, 12 Aug
 2020 05:24:46 -0700 (PDT)
X-Received: by 2002:a19:4809:: with SMTP id v9mr5554825lfa.201.1597235085999;
        Wed, 12 Aug 2020 05:24:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597235085; cv=none;
        d=google.com; s=arc-20160816;
        b=CZccRnrqD/LT4rxSfYHzvVEGNTKDkhDPTPky9EnMV8z16PXECW7dWb6x/6QPJ2JbCs
         UPwsgtPpPH+7covgN31qv/6AGX9fOXdZuQ9aiLzzTxQSNNHjbA9a6E6l5zbh5THMSjxT
         RVMv8NtSn0McMm5A6EJIAt1uX9p/nCQ5D/IweJbm71L/nBPWlTNijk9lR2o5CvDqdZXZ
         X45wzHR+Ll3U+y/FLCM1tnIIsTwQrq+dlMt6vCmO8d/35NS17HxNetoAudIkAwwFMV92
         FKtUsrz4vVgtCt87PEEdLhIyHUQF/Cb/S4yUy+lvmot0OuZdjfM5Vqq99FZewXoF8skT
         MnxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:cc:to:subject:content-transfer-encoding
         :mime-version:references:in-reply-to:user-agent:date;
        bh=7VR6IeUp1ICGw8yqj83BiekzQt9i5hxlEdEDpH7SIao=;
        b=guakC5Cy0aR6/6gIRx5ltqb7ixp26dk1I4S//rBMYUF1RPKG1Lg1bUAtQ+nkjkTjjt
         PTUd+2vDhPuN2TshkHLAerZe+MD0RqObROXDuQSmmOA2gomEVMgWlRnlkYuitV6SAMnv
         jSh7GZdt29mzoGvZOKJy7gCRi8wxIEb7dM2M5sCl1V7wdHIKD7rRV8omPkSc6mqroqgh
         YciSKl0P5839jtWDpJXi0VrDEjW2cjWT4yqiY4o3CCvabKQHablOylpeAOVDPUAT0XPm
         GFGsdtJWqDjFKK1E+7x0rxWmZRjekdhl/rLRsfhjX0inI5KzD+2ypAosMchFFcqz3Ejh
         kuEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
Received: from gloria.sntech.de (gloria.sntech.de. [185.11.138.130])
        by gmr-mx.google.com with ESMTPS id v3si62322lji.6.2020.08.12.05.24.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Aug 2020 05:24:45 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of heiko@sntech.de designates 185.11.138.130 as permitted sender) client-ip=185.11.138.130;
Received: from x590fefe8.dyn.telefonica.de ([89.15.239.232] helo=[10.166.239.232])
	by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <heiko@sntech.de>)
	id 1k5po7-000798-Qy; Wed, 12 Aug 2020 14:24:40 +0200
Date: Wed, 12 Aug 2020 14:24:29 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <159721875227.33733.9237826555988566719@swboyd.mtv.corp.google.com>
References: <20200810044020.2063350-1-natechancellor@gmail.com> <159721875227.33733.9237826555988566719@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="----P3WYV8N4AEZFY9YD2I3NOYOHBGTT44"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH] clk: rockchip: Fix initialization of mux_pll_src_4plls_p
To: Stephen Boyd <sboyd@kernel.org>,Michael Turquette <mturquette@baylibre.com>,Nathan Chancellor <natechancellor@gmail.com>
CC: linux-clk@vger.kernel.org,linux-arm-kernel@lists.infradead.org,linux-rockchip@lists.infradead.org,linux-kernel@vger.kernel.org,clang-built-linux@googlegroups.com
From: Heiko Stuebner <heiko@sntech.de>
Message-ID: <34F4E07B-812D-4C13-BF0A-D395C1140FCE@sntech.de>
X-Original-Sender: heiko@sntech.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of heiko@sntech.de designates
 185.11.138.130 as permitted sender) smtp.mailfrom=heiko@sntech.de
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

------P3WYV8N4AEZFY9YD2I3NOYOHBGTT44
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Reviewed-by: Heiko St=C3=BCbner <heiko@sntech.de>

Am 12. August 2020 09:52:32 MESZ schrieb Stephen Boyd <sboyd@kernel.org>:
>Quoting Nathan Chancellor (2020-08-09 21:40:20)
>> A new warning in Clang points out that the initialization of
>> mux_pll_src_4plls_p appears incorrect:
>>=20
>> ../drivers/clk/rockchip/clk-rk3228.c:140:58: warning: suspicious
>> concatenation of string literals in an array initialization; did you
>> mean to separate the elements with a comma? [-Wstring-concatenation]
>> PNAME(mux_pll_src_4plls_p)      =3D { "cpll", "gpll", "hdmiphy"
>"usb480m" };
>>                                                               ^
>>                                                              ,
>> ../drivers/clk/rockchip/clk-rk3228.c:140:48: note: place parentheses
>> around the string literal to silence warning
>> PNAME(mux_pll_src_4plls_p)      =3D { "cpll", "gpll", "hdmiphy"
>"usb480m" };
>>                                                     ^
>> 1 warning generated.
>>=20
>> Given the name of the variable and the same variable name in rv1108,
>it
>> seems that this should have been four distinct elements. Fix it up by
>> adding the comma as suggested.
>>=20
>> Fixes: 307a2e9ac524 ("clk: rockchip: add clock controller for
>rk3228")
>> Link: https://github.com/ClangBuiltLinux/linux/issues/1123
>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>> ---
>
>Looks good to me. I can pick it up for clk-fixes if Heiko agrees.

--=20
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/34F4E07B-812D-4C13-BF0A-D395C1140FCE%40sntech.de.

------P3WYV8N4AEZFY9YD2I3NOYOHBGTT44
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>Reviewed-by: Heiko St=C3=BCbner &lt;heiko@sntech.d=
e&gt;<br><br><div class=3D"gmail_quote">Am 12. August 2020 09:52:32 MESZ sc=
hrieb Stephen Boyd &lt;sboyd@kernel.org&gt;:<blockquote class=3D"gmail_quot=
e" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204,=
 204); padding-left: 1ex;">
<pre class=3D"k9mail">Quoting Nathan Chancellor (2020-08-09 21:40:20)<br><b=
lockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0.8ex; border-=
left: 1px solid #729fcf; padding-left: 1ex;">A new warning in Clang points =
out that the initialization of<br>mux_pll_src_4plls_p appears incorrect:<br=
><br>../drivers/clk/rockchip/clk-rk3228.c:140:58: warning: suspicious<br>co=
ncatenation of string literals in an array initialization; did you<br>mean =
to separate the elements with a comma? [-Wstring-concatenation]<br>PNAME(mu=
x_pll_src_4plls_p)      =3D { "cpll", "gpll", "hdmiphy" "usb480m" };<br>   =
                                                           ^<br>           =
                                                  ,<br>../drivers/clk/rockc=
hip/clk-rk3228.c:140:48: note: place parentheses<br>around the string liter=
al to silence warning<br>PNAME(mux_pll_src_4plls_p)      =3D { "cpll", "gpl=
l", "hdmiphy" "usb480m" };<br>                                             =
       ^<br>1 warning generated.<br><br>Given the name of the variable and =
the same variable name in rv1108, it<br>seems that this should have been fo=
ur distinct elements. Fix it up by<br>adding the comma as suggested.<br><br=
>Fixes: 307a2e9ac524 ("clk: rockchip: add clock controller for rk3228")<br>=
Link: <a href=3D"https://github.com/ClangBuiltLinux/linux/issues/1123">http=
s://github.com/ClangBuiltLinux/linux/issues/1123</a><br>Signed-off-by: Nath=
an Chancellor &lt;natechancellor@gmail.com&gt;<hr></blockquote><br>Looks go=
od to me. I can pick it up for clk-fixes if Heiko agrees.<br></pre></blockq=
uote></div><br>-- <br>Diese Nachricht wurde von meinem Android-Ger=C3=A4t m=
it K-9 Mail gesendet.</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/34F4E07B-812D-4C13-BF0A-D395C1140FCE%40sntech.=
de?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/clang-built-linux/34F4E07B-812D-4C13-BF0A-D395C1140FCE%40sntech.de</a>.<b=
r />

------P3WYV8N4AEZFY9YD2I3NOYOHBGTT44--
