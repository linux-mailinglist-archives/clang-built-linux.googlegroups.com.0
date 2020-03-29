Return-Path: <clang-built-linux+bncBCMIT47M74ARBTVAQP2AKGQE3VQYOGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E8F196E83
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 18:43:58 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id l3sf6020023lfe.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 09:43:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585500238; cv=pass;
        d=google.com; s=arc-20160816;
        b=kCgemjVVGA19ZoZLlFaSOvDJqzFq/Q0Cpi4w6luEYsgO9QysqZdj8GB4ml7pDlRr/s
         g0cVRZd5aeCdxJvSWbJkZAsY4sQGhyIONmI2GJReivZ8HmrcYx5DYRLjXQi9coMsa3Pw
         8/eaDg8AEbGwqVRjsDfj+JvWUX3NJfeluechWmBBvjQS6at80XyNcjNz2qZdmzghDFFe
         zvSTPYqmL40Q2GsoZfb/AhUy4vIAxWEYTTP3r7YenRGVtH/ORIDdR2/ymovyOD2XHZ27
         WzFpVxNjt0VveCbrasokoGutrnRk4HPBxRmHW9Gg9Q1bJD+xBZMqN4l15FkWc9Wy0TSa
         96jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=kMs0AoVKIx/cUFH3W5EjqjPxakfXHjOpCLryCHG0fkI=;
        b=KeA0Y/3rVNAZh8+ZPVbU+cWIl2DWaAbqUJsWBMTkwAXHjlXuc8J0ThElNquTA9Fi1j
         b8IrMiQndFLZcgMfXhXoVivf7F7W2/PYmC0m7NyYHhqFXDurEk0Jy0pgwvx+xbapVmLQ
         mMM5AlNP5/hnUxzQs/1aQm1C5x/FYEEHNCTQUdP4KfmaGD2tO275+W14+N4kGhFLVZWq
         TKtadeJU4lbz1IeYFrF1NHr+ZjqsGrDTvcCpckCufRaZax/a3vg+bxucHROQU4xBHc3P
         meadY4nUXv6qq8rCLq1aipEdR8OYHFxZAOxAIDlyz6cYbSzFP2Y7eK4Z1CUyIeCRR49A
         kCeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sos5Bixy;
       spf=pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=balbif@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kMs0AoVKIx/cUFH3W5EjqjPxakfXHjOpCLryCHG0fkI=;
        b=Ne47WpvewSTMILkxCDY9uSmsTIzhx6YMyO1u6CpuaWASaOTLGGwNEs3iuE0ucJayvt
         VfZpZtT+Egtf97NoLvco12siVy/qfuGx6k7Cd4MdUIN0hsMQnWY9E5o1PtblO3HzNp5u
         ISj+4Deq3tSaaIiWr0kcORJgEmKfkvY2KmLKQCG6dUO245Y4tS5IFMQnJvQOWdutMH1P
         I3uaGP+ITKIfMnC5StWrBJDES5lZcaaAocckqoDgHRy/uom8numeq1zcWH6qsu+LV9IO
         c2zzmx/URu6ZTiGJWNKHPepTKEOHIuwI/YUfSGEg/6HzPv5YtItGTzQM03/typmyHECw
         Jc6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kMs0AoVKIx/cUFH3W5EjqjPxakfXHjOpCLryCHG0fkI=;
        b=fbEyQVb4262kkrST62nq8kc3lpc4Dbm7dEpdfiUlX4a52XHO3lbjPm0ysgpO2r8Jtc
         HboisEJqSybUwfckv1cO4dyO/+UvDXpKfUqDp/4pZmRIBnriXGa1g7/XFo9GNh/M6eRn
         hJ5Oovt5WnY9CC1CCgoVSSeFD3PT1rVoFuUaDgvXS3fx0qKQ32iDLEzVOpjCcSd6Nuhd
         lPApF9hkL23vJ7rXI1xyI4WNSsYMauLQkhK46WgE2TN0gvp8oTzmmQHCvVj+BgFQPzP+
         SVly1H/FPfNhkQqxl8nmJUwSN3Ef/+/GBUFHrIFQ3U6E9otMJfkiM2WSkLSel7C+6QJr
         67ew==
X-Gm-Message-State: AGi0Pub4TABVeRH/sCYXyG+xty1o/aDhQYFQ82OsiaNWNF8VukZKACDg
	fHOb8tgqxErcg88uwO1Hqb8=
X-Google-Smtp-Source: APiQypLZdQ3ytOQ54KNer8zyeXxn66c7CXvMjw7vSHxfis92OY3PTRHE+nw9SwuL6MI5HydVJFv6NQ==
X-Received: by 2002:ac2:592f:: with SMTP id v15mr5650147lfi.58.1585500238412;
        Sun, 29 Mar 2020 09:43:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5310:: with SMTP id c16ls2710042lfh.1.gmail; Sun, 29 Mar
 2020 09:43:57 -0700 (PDT)
X-Received: by 2002:a19:4f01:: with SMTP id d1mr5816409lfb.182.1585500237636;
        Sun, 29 Mar 2020 09:43:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585500237; cv=none;
        d=google.com; s=arc-20160816;
        b=w14J1mYkXxh7O+swIS9uKizdww+p5V6NCynIonozvRywHoiNci+NXgioCExQA8XVEn
         yb7j52rXWDMm1lfTb/D3vx5RQhLIxCiN7YesFQsaI83k0HHBDekNOsnD1oYog6k5xulz
         Sd5FYGi8pbSGRHDdL6+mB5mzNQYg5nXufeHE0mmfEny61MPZ7qXnlnPFx/QnVrPiQxzK
         hbWHLI4CdBtwyvxLtex4SXZmCWnDkTV9KMK+sQRx6qMo2ULlFN7EGaPhuOHXsEusggBq
         2D63YwLJWlBn0CxqZ2cOqI2E5JuCc/Vq3jRsqkl3cqBLInLB8bfHRapY8zeMw/uB8VKp
         ClKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=0c8uaPF3N+GHT2An6yhCZHffyUb6jdEEzTgcTDxgCps=;
        b=k3tQWo0dwZkpugj4TxGoW21QtEIO8ZS+EbZGXTzbeYExeRqLwtFXx6HzVSgbjYEQ6Y
         5V4wsPnLwU7mzzFtdlxKqRNszkcb70XwFvU5g+J9FgtlWVkNKczYG31QN0xg0+z70NBm
         SWlQBg9fFbvjTx888B7rteHbRWcK92lQiOHn5vLjhYF03fpwcTNuMBwLFuTa89hqiyAC
         sQ3R2cHt7z8VrEZrw6/wW+s/YrkltbVXfkxMYbF4/pxkLSqD7/XdAdZTVr+6to3JTUnF
         kUHmvIneWNELTCUjjvNh01y9yhVkvatQ/2UKGK9gKQ8jD9KCEPweep8orH+mQydFeVqw
         MT4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Sos5Bixy;
       spf=pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=balbif@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id d12si663819lfi.2.2020.03.29.09.43.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 09:43:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id s13so828622lfb.9
        for <clang-built-linux@googlegroups.com>; Sun, 29 Mar 2020 09:43:57 -0700 (PDT)
X-Received: by 2002:a19:7e01:: with SMTP id z1mr5600821lfc.196.1585500237140;
        Sun, 29 Mar 2020 09:43:57 -0700 (PDT)
Received: from saruman (91-155-214-58.elisa-laajakaista.fi. [91.155.214.58])
        by smtp.gmail.com with ESMTPSA id 64sm5713315ljj.41.2020.03.29.09.43.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 29 Mar 2020 09:43:56 -0700 (PDT)
Sender: Felipe Balbi <balbif@gmail.com>
From: Felipe Balbi <balbi@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Ashwini Pahuja <ashwini.linux@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH RESEND] usb: gadget: udc: bdc: Remove unnecessary NULL checks in bdc_req_complete
In-Reply-To: <20200329144703.GA9720@ubuntu-m2-xlarge-x86>
References: <87zhc0j2qi.fsf@kernel.org> <20200329011246.27599-1-natechancellor@gmail.com> <871rpb4nd1.fsf@kernel.org> <20200329144703.GA9720@ubuntu-m2-xlarge-x86>
Date: Sun, 29 Mar 2020 19:43:52 +0300
Message-ID: <87mu7zdsc7.fsf@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
X-Original-Sender: balbif@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Sos5Bixy;       spf=pass
 (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::142 as
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


Hi,

Nathan Chancellor <natechancellor@gmail.com> writes:
>> > When building with Clang + -Wtautological-pointer-compare:
>> >
>> > drivers/usb/gadget/udc/bdc/bdc_ep.c:543:28: warning: comparison of
>> > address of 'req->queue' equal to a null pointer is always false
>> > [-Wtautological-pointer-compare]
>> >         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
>> >                              ~~~~~^~~~~    ~~~~
>> > drivers/usb/gadget/udc/bdc/bdc_ep.c:543:51: warning: comparison of
>> > address of 'req->usb_req' equal to a null pointer is always false
>> > [-Wtautological-pointer-compare]
>> >         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
>> >                                                     ~~~~~^~~~~~~    ~~~~
>> > 2 warnings generated.
>> >
>> > As it notes, these statements will always evaluate to false so remove
>> > them.
>> >
>> > Fixes: efed421a94e6 ("usb: gadget: Add UDC driver for Broadcom USB3.0 device controller IP BDC")
>> > Link: https://github.com/ClangBuiltLinux/linux/issues/749
>> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>> 
>> It's now in my queue for v5.8. It doesn't really look like a bug fix, so
>> it's not going in during v5.7-rc
>> 
>> -- 
>> balbi
>
> Thank you for picking it up. It would be nice to see it in 5.7 since
> we're enabling this warning and this is one of two outstanding
> instances in -next and the other one's patch has been picked up plus the
> patch itself is rather benign. Not to mention that I did send this patch
> back in October. However, when it is merged into Linus' tree is
> ultimately your call so I won't argue as long as it gets there
> eventually.

If Greg's okay with this patch going in during v5.7-rc, I can send it as
a fix, no worries. Greg?

-- 
balbi

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87mu7zdsc7.fsf%40kernel.org.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl6A0EgACgkQzL64meEa
mQZiEw/+JF2SkxE/JgJAs1X5mOvM/c8aF7iFlroAgAhXO5LZL5YZiVOoNCd2UJdp
6VHA/jwvOtRStwzeSLleFAoyF8wozzp4REfUNyIogW6bwOHcb9T36Nn5rguSEaPN
t/g9kBb3CbfrQ8Wejfl7xINPN6NYaW2wqUbqPVUDEX0bGFCrXWWBn4o8vVlNtvZ2
cxwcuEOScN7o7rfrwqii1VHngY8CxHjl02yJ2F8Fcc+8rD0lCdNUB6DemSgBgFEk
HeEmZoCb5hjpXGc8obbStT0Ie9Rut9ItgA3XxoL4cFhIa5i3UUV+Mq9qXHY+W4It
+jhW1hK1fL+CEu+BlXb3AELgNOaxbDDwuXJMKuCbNnnP6z/4uOHjE4fxSKoUnFCw
XFCforp3+hheFJPlB8e+fNd+hjsWv6ipI4tuEL1mrpnXu3d2U3toTlDCNyTciy3J
sDg9TouHZqXOATisL1qPi2cFtdfUEGhVTuYbYGWUJA86f3IHVUmjU9LIJ4YmlEtI
5aQr7nsIkF0ERGCt56DcKD7DJxNI29dMWYPw5SCSOjN8mQ4elxoBekLCtYRdNrGh
EKmoP6TQuiPbndOzbNPuehQoDCoXao+4YfSubUfXQi484q0+DzAjQidcIJGV3efu
D+Sjn7bi/T0ngvHHYVZot4gXukoOIu9xwZrKLVM6mbCckIH2qrM=
=U6ai
-----END PGP SIGNATURE-----
--=-=-=--
