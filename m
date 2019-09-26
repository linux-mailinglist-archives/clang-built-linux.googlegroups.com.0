Return-Path: <clang-built-linux+bncBCU73AEHRQBBBUOXWLWAKGQE7YX5P4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 027C0BF2AC
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Sep 2019 14:15:15 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id m3sf4344235ion.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Sep 2019 05:15:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569500114; cv=pass;
        d=google.com; s=arc-20160816;
        b=eEOb63SdbrXo27aBpy6PH75VQsEJb0HggXgFEKrmgpngHtip6rT4wdV+9FlRSwm/Nl
         wfGDSCMOnlrtn+g7fHebFxY6zI0DI5zBuqsSKlX2db1Y8fITdPCTS+8LJhAbDi6j+P3V
         iPzSgIJ/xGjlAoEdTfH11+jT/wNJI5bGoFj/+jFh7kTD/sFJ4jN3i7hD6PRluOo7OW1+
         2umuAFXe8l1hLg2kx7UDOBFIjBW7Oc/ul/rvdDoT70Lo+ikkic+w3rIsu4tpBMYgdyzY
         csfQ4BhfqoPZod3rEXOY+CtNgYNOL/QPX5yfb24JOp/gGdGNCGM5UyvmjVcuq/peO8Em
         d1mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=UB5n0kLvU2z1iVngtgdAq7SjQJAB0iQSSK/GD8N593I=;
        b=fZLmur0mXhbVEPKjSUlTcDvb8nNy8tXiiEw/X9gPM8Kj31hvcRyQY5L70X5VVMkRqr
         Jae5qfLVhZeBq2ppwucmJXDjnlOOey7xFqFG3pyE8Oz793kfEyq1nFGFUqEi31xlyAsB
         wGmIRi/HCuD28ue+KCoOzgnZhuQhwJSLp0ESqR0waHd393A1ubdLftaNXKQBE4XSHffu
         q+x/lEO43pBaGLdLiiWnysZJoCkyvblWYFLx8LroqSJkB7mLePe4VNOcv4kPWUAFSMkl
         AtPn+8R4TnoSEAOdx4udy+vQHxqLTA+dLnCBEufS3ZMqnKy2HDq1Zkb8q5DFDcu5jrrC
         NdTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=4q/c=xv=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=4Q/c=XV=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UB5n0kLvU2z1iVngtgdAq7SjQJAB0iQSSK/GD8N593I=;
        b=I4viFu4LZDa0vjdUs6QyWkKm4ADtdAlVyRm7ZCs4kWGOgejZqcfkKtwl5Kq4srCp08
         4QaNWTaC/UlGef+EHUwNU8vGN7qoa5u6XOON1VFzvdad49eeosgZEsbNq4IX0XlqOG1H
         T4In1HQYkls1oEMg/QRaeDqQua65JxkC3eB0Coil3Vm21oZBaVH3MmPm5xHYGbHGBLcz
         MeeR98JUK3wz/WiXS/QDibGwvQ/+KftQWCh7POdWFoSLnUv0YNPEQR/oPvsWjF+zQ3NQ
         u6haFqNZD3ZEzEhJEkiIcCEuWJNiN/7N8x/WEsQDIeeG7SbyiY9szCemwBzJTnrNF37m
         txGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UB5n0kLvU2z1iVngtgdAq7SjQJAB0iQSSK/GD8N593I=;
        b=Y56jYkcSBoFwxDSt+NScN/R25BCvmx8jhD+KWP90SYnPK0epLNVfcNyjwafrYKaAdT
         Ytd6937K6DURzfau21/NZJizoe64ksrq4tOhRqwkgyWq1Mz0U4c69iSklI/4wVTic0aM
         jGMZGDU+lKcTUQ3OtICInrWOef2tQ/3EVCtrI7vBqkD8h1peAKkpWcf/XrIoIY653hXD
         12MuslNLHgjmpSZ9+ipzxkUvavVCjbqOtiuB5Gh//JSBVLu/L25PE4/HvQeONLanm9Bj
         DUxG5ePMC3NLl6l8mnczLVauEZz1NqnIvIh2KJRc8+pOVc0TJuThlntKgycvnsub4Mwh
         cusA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXmgwS3kmZIWXeojO9nVRMRBtcFXncecmb7ixGmwrV60QRiSMnM
	j2pF1JBB5xziCf9q2ysqhYw=
X-Google-Smtp-Source: APXvYqzoQ8mWTYbTX7BVYTJBl53bAE3ymlqaF2+NDfkruA/Ne8YfXM37p+xRgaP44mGd1AHAwd2S0A==
X-Received: by 2002:a92:9906:: with SMTP id p6mr2004703ili.57.1569500113941;
        Thu, 26 Sep 2019 05:15:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:8112:: with SMTP id e18ls304806ild.16.gmail; Thu, 26 Sep
 2019 05:15:13 -0700 (PDT)
X-Received: by 2002:a92:9cd6:: with SMTP id x83mr2106424ill.198.1569500113535;
        Thu, 26 Sep 2019 05:15:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569500113; cv=none;
        d=google.com; s=arc-20160816;
        b=rnU3+26UEzkHjbnFce/k/++TX0imZNQ30MD2L+abkJMLzQijrU26m4tcon6rdpc/o5
         xPs6HVpYTmQ3qS/3qcgLOYtT/n7hLoKO4b/8aUVgbrZv/QapcRlFL87/SxxVWWljvyYa
         FfaOVVtiS62Ol085eq+OLXzX7xk6qaa5TQ03Jlm3mJIO6uRQlkJV9NnFvxGx0/8XENTd
         AaNjjLcLJmPIaOA/gqGO0pPnm5Cc5Kq4TKqRn8bnvTe5eESCnIX2KW7GwNoxPbTp1S6n
         iyhVL3sWYHXQ2oajt4tE/a83f7qYprI5RQfMJtieaCM0rx+cl6k8dblX+NenzAKnkicE
         TTiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=RpOqO87hL/EkWvyvn0wPu6xPK1AzG2d5qiKrBnxjvjE=;
        b=rdChEcr8I/8h3KfhtaieyFwzNMLxAmbDTENCP288cmg/giJvG1aIUY3CSZRCYduv0O
         KKrnFvbqg/PDNGQRrtCpb+4wqntErKX3NXjozgQnMTXKL+tXRKjxr1r/X2e9z0eefWSo
         VKDcKd2hFGwFF1arnJUZ8hFtxFWjQXUqlZWJvpCzeH3l2gvNk/qApQZfAfCPJWgUH874
         mkxA8ZXAlBygZVOO833zgwFuDbiprw7bjOmPi60xk8TSt+g2lJ/BSCpENayAi5QjMyAD
         Z2jc8zLhw1f7ac2lrRwevBjL5IbIJeAXfOP3lh9rxsvdyKh8aI+Rm6tZrTIWlDn8OOeM
         GXrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=4q/c=xv=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=4Q/c=XV=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b206si183665iof.0.2019.09.26.05.15.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 05:15:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=4q/c=xv=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from oasis.local.home (unknown [65.39.69.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E91A8206E0;
	Thu, 26 Sep 2019 12:15:10 +0000 (UTC)
Date: Thu, 26 Sep 2019 08:15:06 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: =?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor
 <natechancellor@gmail.com>, Ingo Molnar <mingo@redhat.com>, LKML
 <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] tracing: Fix clang -Wint-in-bool-context warnings in
 IF_ASSIGN macro
Message-ID: <20190926081506.63c6a0c6@oasis.local.home>
In-Reply-To: <CAOrgDVMqOqKtY-9FNV5iHWmz6GFqsH=ugwYp77Zwfr3Niw0ebg@mail.gmail.com>
References: <20190925172915.576755-1-natechancellor@gmail.com>
	<CAKwvOdmO255nWf2PrfJ54X95ShNbYPf0FK2x=f57LmzOrCmJug@mail.gmail.com>
	<CAOrgDVMqOqKtY-9FNV5iHWmz6GFqsH=ugwYp77Zwfr3Niw0ebg@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=4q/c=xv=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=4Q/c=XV=goodmis.org=rostedt@kernel.org"
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

On Thu, 26 Sep 2019 01:37:29 +0200
D=C3=A1vid Bolvansk=C3=BD <david.bolvansky@gmail.com> wrote:

> GCC C frontend does not warn, GCC C++ FE does. https://godbolt.org/z/_scz=
yM
>=20
> So I (we?) think there is something weird in gcc frontends.
>=20
> >> I can't think of a case that this warning is a bug (maybe David can =
=20
> explain more),
>=20
> In this case or generally? General bug example:
>=20
> if (state =3D=3D A || B)
>=20
> (should be if (state =3D=3D A || state =3D=3D B))
>=20
> Since this is just one occurrence and I recommend to just land this small
> fix.
>=20

Can we add the above comment to the commit log. I was stuck on
wondering what was wrong with the original code, and was ignoring the
patch because I couldn't see what was wrong.

-- Steve

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190926081506.63c6a0c6%40oasis.local.home.
