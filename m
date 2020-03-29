Return-Path: <clang-built-linux+bncBCMIT47M74ARBQFDQH2AKGQECUPCBFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id C9785196BAF
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 09:44:00 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id p8sf2457272lfc.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 00:44:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585467840; cv=pass;
        d=google.com; s=arc-20160816;
        b=PJqIY5IPco9w8z003S2Hs62DhbyU9cvjqAJMfXQNsZwyYxT4u09GYS+ZTxXtnyFx9d
         xfQUCBZcWqzVlIxby1j/nZUsYurCCg3czJ13YG/xIucisHjoJEeEaD49QJX2UvNZrQFr
         kM5WyYQPThaP2jT4hEqPw5CgqxjSDbrdP7Xpq0PUa/oZ2HH2OKO60sT6n4gpW3QvCldE
         FFu51+NjBjtfQUv80I0irw1OHfQcSRl5ZmL9BwLj4k2z1umjz5auMiIJ8cKbq5FKSLGh
         4QvV0bM+092az3oZVzHl15mbNZymXL9g6XYD4jQ1mDlTnmVwmYk3UJGsoQiRoEWuhoyA
         TBKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=L48eW+1BbRKTqL9/SoDILPOepiWBTvUYACKE5TE8TH0=;
        b=O+/8CebcRgWxd/qXZqIJCp7GYjDVAvGmVp9sI+k1pOIhSAoh/9ddXy6hgXgtZDb7xc
         qHpnH3/mvdfSVAc503tzpxR79br7XEJb6R51YzIRKbI/GVJ/qN/4MpZycWRnumtnS/TC
         e+cKH6pjM9zytl7jl7HHP8/hA0HbxDNY5PnkVWTgxJr74YyFtfm9XmMAYdFX4SDHW7AH
         8WfD7gmsX5wIEoYjjV2msswxJsVodGIwYC926bvcJ/ETaJf3spHZrD20iyU9jRBkEBQU
         DR53Y5KH+DV8e/kd99OGlB8UWlwVrwZkZtZP2UOSvKIQXYaGZkW5gZZr6t0q8O/noVTU
         7Kzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TZpTIz6r;
       spf=pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=balbif@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L48eW+1BbRKTqL9/SoDILPOepiWBTvUYACKE5TE8TH0=;
        b=YVA+FVn4XSj22B42wvfKVJJrrtD3P7+im4O4qeUfGI+ItbGRwMmFJJctH413Qir9Nu
         qRoOxQmLsmx4za/HdS3YrfnHkwnWz6WEGZ8RSf4IgCzhtzlNHy9rKVHmyjADkgjyDFA2
         1r+1aWgfjABBr2jmtOLIi08OYx6wySAnnINRySfucD7NZG2W98X2VWhx13ppYKQMkm7Z
         kumOisP/KPiIKYinsdcUOPx8RpFudzUCZxZ996q4nmTdigpFpbzSd5/koSoGnj5tZv34
         j7xu1c+AdyeNpcxZ3LXzMzafL8QNb996xMFisbmQDoletgL6uhThbCOh0KKr7TN2DNza
         dXUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L48eW+1BbRKTqL9/SoDILPOepiWBTvUYACKE5TE8TH0=;
        b=KvOw82y4KTk09AtCjf2Q2geTfUepoAsiUw1KXEKz98X//jOCd0/wh0wWcVPDNX7HdW
         GB/MwpTZBty/XQqhAF5bt2s4NqkFHqqpeVsk/Re10FNlgY5QD9vuYIR6FCSe06vIT9ez
         JUPwK4dzphRSsT5UylEzPdOXHe2AbH2PVzzZ86/ifAQZTpySSYCkadRz7hiqlL47I+zl
         DVpvDr83QlmsMehV46QNrReXkXIdmyZBG1EIxpwMVA4ftm8d8t1yHmKKt+9se/uAVcwf
         1ysq9H+dW7kPtZNN/5DUzg7Fx7RUzBP3gTaQi/zP2cKot0xjmXLehPBSVrPkAeSpomfK
         kdfw==
X-Gm-Message-State: AGi0Puaga1KO+/etFU/AIxM3FGhipx/dxPZC5pVMLylVL2TJA7WQ/D55
	ZFj/65OZszoaLdJZH0HvMaM=
X-Google-Smtp-Source: APiQypKliXSQ1naVCIc4hzmEao4RP+ZOFp+7vdnVFuI4TXx24eFX6fuO44T4j1OACNQYB5M2m1ZgyA==
X-Received: by 2002:a19:f20c:: with SMTP id q12mr3958058lfh.34.1585467840294;
        Sun, 29 Mar 2020 00:44:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:455c:: with SMTP id j28ls2458342lfm.10.gmail; Sun, 29
 Mar 2020 00:43:59 -0700 (PDT)
X-Received: by 2002:a19:f51a:: with SMTP id j26mr4768053lfb.54.1585467839676;
        Sun, 29 Mar 2020 00:43:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585467839; cv=none;
        d=google.com; s=arc-20160816;
        b=x4vjs7zXxmWepMWt3cQG9WZZGn5f3TjCF0uRBqfOoi0gKwHVjg4GEXw6LmaJ8eheqB
         EJ18oYjgw3rdu6SBaj3p8eg9d5xtCsumWDG9Nmw0SyCnbK9KG47zQyqc7uWT5r3reLHo
         lPxV8sovLSvPNvqLJaYXvnF09MnJSff94iCc73A0oXhODJ2Yd+6WRgOIyoZFdBJUqlF/
         Kk8m1Fw7BD6wG7F+1AxvR+ZBMvgDWK8DnHPESsVzAQ+wyXsOJKgPPz0xSD7Qa7i1trG/
         qWORnZM5mzx3GkcBM28HsP7OcTrJhD39lyD0Ew868+Ch3ZfxNhynrfK+U/nWz4cvRJo4
         Mw3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=QLo6fVdvEqGq4fqBM86otIAvPA/b4/SI1Ijm5GUnxlY=;
        b=Ju3iw4D7Op8Vwn/i6FTQAO1XXFfJ/b1w1pjfJ3AxoROvnfZ1FhYxtayoeN8JRrJ62H
         yP03Fd68Ws2yiuFFqK77CyqzN+a66rvd1OMhL4Wx2B+SlbvDvuRyQStTvYlyjxYfdJXH
         NR5Tdu2W3brYpv5SdTEtzoBctZWNMSwRiQIGovajjPVtpAjyYqZN6OH6476V2ilMK/Zv
         Vkpxpb2Z8hRDSd5i3HFnQkrO3yA6AsnJz8psWVBD+nTOv/A2eU/w6Oh37U0zl87a8OOf
         5wBavxHKgsr/zv3KJq4TgPUQUjqeB8lS8R7hMbsAxoLQHIDTF6s6WwUXwQ39c0Kqqso/
         3e2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TZpTIz6r;
       spf=pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=balbif@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id d12si599064lfi.2.2020.03.29.00.43.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 00:43:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id p10so14286699ljn.1
        for <clang-built-linux@googlegroups.com>; Sun, 29 Mar 2020 00:43:59 -0700 (PDT)
X-Received: by 2002:a2e:84c4:: with SMTP id q4mr1246033ljh.206.1585467839412;
        Sun, 29 Mar 2020 00:43:59 -0700 (PDT)
Received: from saruman (91-155-214-58.elisa-laajakaista.fi. [91.155.214.58])
        by smtp.gmail.com with ESMTPSA id i190sm5737708lfi.7.2020.03.29.00.43.58
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 29 Mar 2020 00:43:58 -0700 (PDT)
Sender: Felipe Balbi <balbif@gmail.com>
From: Felipe Balbi <balbi@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Ashwini Pahuja <ashwini.linux@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH RESEND] usb: gadget: udc: bdc: Remove unnecessary NULL checks in bdc_req_complete
In-Reply-To: <20200329011246.27599-1-natechancellor@gmail.com>
References: <87zhc0j2qi.fsf@kernel.org> <20200329011246.27599-1-natechancellor@gmail.com>
Date: Sun, 29 Mar 2020 10:43:54 +0300
Message-ID: <871rpb4nd1.fsf@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
X-Original-Sender: balbif@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TZpTIz6r;       spf=pass
 (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::241 as
 permitted sender) smtp.mailfrom=balbif@gmail.com;       dmarc=fail (p=NONE
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

--=-=-=
Content-Type: text/plain; charset="UTF-8"


Hi Nathan,

Nathan Chancellor <natechancellor@gmail.com> writes:

> When building with Clang + -Wtautological-pointer-compare:
>
> drivers/usb/gadget/udc/bdc/bdc_ep.c:543:28: warning: comparison of
> address of 'req->queue' equal to a null pointer is always false
> [-Wtautological-pointer-compare]
>         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
>                              ~~~~~^~~~~    ~~~~
> drivers/usb/gadget/udc/bdc/bdc_ep.c:543:51: warning: comparison of
> address of 'req->usb_req' equal to a null pointer is always false
> [-Wtautological-pointer-compare]
>         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
>                                                     ~~~~~^~~~~~~    ~~~~
> 2 warnings generated.
>
> As it notes, these statements will always evaluate to false so remove
> them.
>
> Fixes: efed421a94e6 ("usb: gadget: Add UDC driver for Broadcom USB3.0 device controller IP BDC")
> Link: https://github.com/ClangBuiltLinux/linux/issues/749
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

It's now in my queue for v5.8. It doesn't really look like a bug fix, so
it's not going in during v5.7-rc

-- 
balbi

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/871rpb4nd1.fsf%40kernel.org.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl6AUboACgkQzL64meEa
mQb+NBAAgxNIBz5VX6oLaK6CuxSluSXwopfuTbujEog2EhExzl/SGSN6CIayVjjg
Pt9GnJrum+oUZ86rAaK9nzVNOILvQ06+DfjzoXLAdwFM8ceG+gdp3cHjmMYI4HN1
HS2IhTP/DEOfTIe6iyIQVI2JHnOnYnxWvfcnmwgcu96ReLX9Wskm9b52SlwEdlwi
2fS/O8m2CFh8ES31/+LCUdqVMOhhW+qaXUZzQtkVevxlLyRrkklCKqrys/SBvmTu
yxpPxhytSTfSkXF5dSMT4M8G+ySVIBrA3MlCMajj2BgAG6JIdtaBmN4t/hNuOOqt
ncDuOOS5A8V9F9UJe+H5fSP+3kpmxmoyrJV8/rNILl/W8LYuE1IIg1mEziI3J8qz
mfE6s/8JGXmpdFgIOJijx5jsKmGC/YH1K43DzA5Ji9XaveUc3qzSF1PPM85f9TQC
6Kl7D9FMqqgeUbf6o5rr3+6RvCni9fsmP/Te5LR5aQ9K7Qbg4oEefuV4W14wKEZZ
LqbdVM+V8ITaffJso/xvs6r6xgEZBjisx0/H9sppm/5P5K4w6beVx2Abjidq7IMc
HPP+W/O4TZd/SI19VRjdoow4nkK6dyBFg5j//6Akmp4bIXcqn1qBq2PWgwWVHQc7
lXZOXWSNVSyUvURVGdGSHdi2XX2WprjsbLnKtCwpVkCQqHGK6ag=
=Tnnz
-----END PGP SIGNATURE-----
--=-=-=--
