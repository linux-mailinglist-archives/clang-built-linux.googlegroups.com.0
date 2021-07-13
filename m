Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRHSW2DQMGQEA3TGPAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8732A3C73C3
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 18:03:18 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id e24-20020a5d8e180000b02904dd8a55bbd7sf14773105iod.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 09:03:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626192197; cv=pass;
        d=google.com; s=arc-20160816;
        b=atV4Rx+MNzjyJSNxwQAmesgjO1hgUetejF2vFevjjuRuqj66mXnDLgP6oDX9hj21NZ
         fMemyBhKrQh02OEZpk2Zo2BaxGyv43pV6tCrgCXaMPdxBKWbp4XnaubFJY/6OW5M4dzI
         eYiFgZmKXq6ILB0aI13217bFrMTNPT5fIhZoD3hC+aQ5CWTGkos8ZbZnlNHPPxi+Tt4K
         wGkshxDA8SAzrLy9G1kDEyJF3CpaIztdzSw9IVZiAw45n7hiG6kYZjs2iZ3cIarVb5ui
         gw8/VnFq3GXVeNoZwb2qGpyi4obrCe1OupF7SQihDwWfxvdNr9ay9Jiw0VHt28I5fuXX
         zHXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=YODlaTE2j1BfSwdBW+92GXEmJWtd2HSms4BJNOk8kZ8=;
        b=r3VvP6OKRHcCAw4BY1ZMSXYxeedNg7nbCFKotlBo15qH+9dIpHeoo7ZmIDgySG8nTQ
         NLS5nkpP3v2g9cMSrXafVJDOlbCCbgCb3j2XtJ50YPl1M6v88z6gg+Mn4mhnM5bb8N4W
         +m0PLdB2TZg0iV0xHn+8sPBq3AaORw1HUyDwal3PSqn2vdVtrbOpM43szEXb73T1oP6G
         o5k0PnMfMpuJMoTDg7illZtY2MRZtHNLhgOt4iPpe9XZ8QJ8tG5C0Qz17XAGMImX6jd5
         ANnENyxobzKJJ92qnSRxivcNA12Q0a61rnwi4Cr6bml7rHcrRHS8YFGO/+jLHLNRcIE8
         V4Jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AtgHBr6c;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YODlaTE2j1BfSwdBW+92GXEmJWtd2HSms4BJNOk8kZ8=;
        b=miu7uNPDCGn8HJg94ky/mHatlhU00phLZk9UTiKkgm8UqMOdteZIH9/TixGQARzZfW
         n7Xk78qwBcq8mzxYTUmm1JvHGFGBx+vF/1JcuS9ntsH7V2nIdFCC5+4wm9Ou4WXW21rk
         jRHZ7LVkb0YlnPYKOkyCn34Kisz/Cn9vvO2svj4yQqn/sQcd6ngXNAWPzhzT8Gbj8bn1
         ep/AHxLPlp+x0weK/XIq2H66p1YInLZRHHIvn4zzX2EWqryTUANIpxTlxunKQ+pBi7Ij
         DaJnr27cpfEbIHM+4g3+ZXoKp0HBougQw9CyqvGnaG8AfiGKymen2zjpDS2BOmyJaUz8
         lX4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YODlaTE2j1BfSwdBW+92GXEmJWtd2HSms4BJNOk8kZ8=;
        b=uT3cNnqQL/C5zRZ21TwcLKHEy2QGW9aADWxb/KKrOdAj7a2fk8dCh/7gu6Whara9Ur
         Ic4maH0oJLbLwStfnAxOpddzVQP2CjL+9iij8doWaux7ukapkKaqn2XW3xHftXtoVQN+
         Rb36dIuPDEpHUKib/h4n6ia8DTw0ApxjmBtIsPhxeMTHQNQgWmQjPiFUxgPI1qPq40TT
         U045lX/+NipABj+CZDBDQli47XUXeoaJveVw06bxW/BPD7n5OwEcVJM3l324VIMrTba3
         n7RQZU/F7MlcP3/mrqsU5R8JvNvpUpcplJsNRp3Wc2zoCZoAUhzaEMMsozJfOjh/4rHi
         +tNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OdvN+ReQiJPXdnu3pZSJSiFSpHk1VpFMmEoFvEAfMmCzknZ4g
	duHgwY6BmoC+ozOhAgPPNFI=
X-Google-Smtp-Source: ABdhPJylKhWShOsfMYWmxzTiDewXudTMmucAfDzP+VGa1dQzA5buQe21E0opMIL0TsAq9dDs3sLu3g==
X-Received: by 2002:a92:d9ce:: with SMTP id n14mr3398590ilq.29.1626192196932;
        Tue, 13 Jul 2021 09:03:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:910b:: with SMTP id a11ls2942853jag.7.gmail; Tue, 13 Jul
 2021 09:03:16 -0700 (PDT)
X-Received: by 2002:a02:93a7:: with SMTP id z36mr4626815jah.112.1626192196599;
        Tue, 13 Jul 2021 09:03:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626192196; cv=none;
        d=google.com; s=arc-20160816;
        b=Es0j6OnToNnTlSo44oKyhxZC0kESfdLy7647PEwxEy26nzyg+lyNY+3TgIy6XnzOVu
         Hbj2pH9pFDnL0vVnL7vPPpdUcI/Y8FRmUiKl98pS2/571M+159R/17dSgFgiP3Q7KDI4
         ptxtOL5adom4RlgwN167hViyoI7JqAla6mUJmgkPyOj2KMBQgbcJFBz3z8+VrUrquwxM
         osCIZy0NxBrqpAKiI1beka7pLhN/tilFnr6JoNba4PFAAR16sLML7DzkFxPtM07uR6lW
         WMtn1rpbqMLc02gpVWOh0t/dJf8Rk5y4N6KIK4HuVw+5oM8s1w29hhZhIqRDmL9pLnX4
         FnSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=vMY75YPZGj+1b8DYdQ8PWEKLRfFWx4eDxR8b3gY6hv0=;
        b=cClfSTrfL3LStiFH4J3RiOseYEP5CoG6GboQwyovc8HfB9FyF4dDY6+KCx0HgyiFZr
         xmmVFhoYHASX/+KqA6fBI+AzLQiGgElhRk/RH4f5jUvvhHdHpxSaNb4EUm39QBDTcF2R
         /f+mluWb/M+wIDYGRFJiqHKZ4NMybvvvWXFBuH0ZJIObT9cUqnJHWe//PS3Kcnes6yWr
         IzB6KqX3NQV7hKx35Uv/f90G4aQFC7Mu4U6s+1WzkGxr6zCKlOL50aUqhW5JkYVUU9x/
         zxKQPbZWkfbZyUA6TWY15lu6n33qYcXCvkpmtxEYSUAWI3oWtIgXoRIFyaa6JkL93kPu
         eWRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AtgHBr6c;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w12si587698ilu.1.2021.07.13.09.03.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Jul 2021 09:03:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CB21D61164
	for <clang-built-linux@googlegroups.com>; Tue, 13 Jul 2021 16:03:15 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id i12-20020a05683033ecb02903346fa0f74dso22966756otu.10
        for <clang-built-linux@googlegroups.com>; Tue, 13 Jul 2021 09:03:15 -0700 (PDT)
X-Received: by 2002:a9d:53ca:: with SMTP id i10mr4324205oth.60.1626192195215;
 Tue, 13 Jul 2021 09:03:15 -0700 (PDT)
MIME-Version: 1.0
From: Nathan Chancellor <nathan@kernel.org>
Date: Tue, 13 Jul 2021 09:03:04 -0700
X-Gmail-Original-Message-ID: <CAEVzpNmJfWQrqaytnA19Vw8NSytS=3SWEBKF6qP6e2YeBXCKfg@mail.gmail.com>
Message-ID: <CAEVzpNmJfWQrqaytnA19Vw8NSytS=3SWEBKF6qP6e2YeBXCKfg@mail.gmail.com>
Subject: -Wimplicit-fallthrough in -next
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>
Cc: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000021e85005c7036003"
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AtgHBr6c;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

--00000000000021e85005c7036003
Content-Type: text/plain; charset="UTF-8"

Hi Gustavo,

Apologies for the HTML email, as I am mobile for a few days but I wanted to
make sure you see this.

Looks like -Wimplicit-fallthrough is turned on in -next, thank you for all
the work you have put into it! Unfortunately, it looks like this breaks a
few builds due to -Werror and there are still a few warnings lingering in
architecture specific drivers. Would you mind taking a look? They can be
viewed at the link below.

https://github.com/ClangBuiltLinux/continuous-integration2/actions/runs/1026443499

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEVzpNmJfWQrqaytnA19Vw8NSytS%3D3SWEBKF6qP6e2YeBXCKfg%40mail.gmail.com.

--00000000000021e85005c7036003
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto" style=3D"border-color:rgb(0,0,0);color:=
rgb(0,0,0)">Hi Gustavo,</div><div dir=3D"auto" style=3D"border-color:rgb(0,=
0,0);color:rgb(0,0,0)"><br></div><div dir=3D"auto" style=3D"border-color:rg=
b(0,0,0);color:rgb(0,0,0)">Apologies for the HTML email, as I am mobile for=
 a few days but I wanted to make sure you see this.</div><div dir=3D"auto" =
style=3D"border-color:rgb(0,0,0);color:rgb(0,0,0)"><br></div><div dir=3D"au=
to" style=3D"border-color:rgb(0,0,0);color:rgb(0,0,0)">Looks like -Wimplici=
t-fallthrough is turned on in -next, thank you for all the work you have pu=
t into it! Unfortunately, it looks like this breaks a few builds due to -We=
rror and there are still a few warnings lingering in architecture specific =
drivers. Would you mind taking a look? They can be viewed at the link below=
.</div><div dir=3D"auto" style=3D"border-color:rgb(0,0,0);color:rgb(0,0,0)"=
><br></div><div dir=3D"auto" style=3D"border-color:rgb(0,0,0);color:rgb(0,0=
,0)"><div><a href=3D"https://github.com/ClangBuiltLinux/continuous-integrat=
ion2/actions/runs/1026443499">https://github.com/ClangBuiltLinux/continuous=
-integration2/actions/runs/1026443499</a></div></div><div dir=3D"auto" styl=
e=3D"border-color:rgb(0,0,0);color:rgb(0,0,0)"><br></div><div dir=3D"auto" =
style=3D"border-color:rgb(0,0,0);color:rgb(0,0,0)">Cheers,</div><div dir=3D=
"auto" style=3D"border-color:rgb(0,0,0);color:rgb(0,0,0)">Nathan</div></div=
>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAEVzpNmJfWQrqaytnA19Vw8NSytS%3D3SWEBKF6qP6e2Y=
eBXCKfg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAEVzpNmJfWQrqaytnA19Vw8NSytS%3D3=
SWEBKF6qP6e2YeBXCKfg%40mail.gmail.com</a>.<br />

--00000000000021e85005c7036003--
