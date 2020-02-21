Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNWHXXZAKGQEZK4FH6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EEF166EAA
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 05:59:35 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id i123sf455470vkg.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 20:59:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582261174; cv=pass;
        d=google.com; s=arc-20160816;
        b=RPdEAeb3xfcPZAqfuYuaP2Stui5Kp/Pogg0gEy2klLCxVIvxn6USx/J+rsNxU4LSQr
         T5H7rODCnT55fO8G73d3FoxblVK/+wDquWj7rUmpxYBw0MegXh0k+gI6RSYttXbnboBS
         sdoSg/dkGOHqqkt/0hqcSoDzUjN2B+YRwCpIRWo6X5450vPgZtfWWrIbcWNgCnfwu2oG
         0dLv7AKXBi3Yltsi076ONiDBvEtNPROknhcneK3AaqWK4ik6DUwgY9IgwmBjfJpkXEfV
         x2C09ecQXdEgFyoBqCrGNsB3rrjdpabzXx+iHPtHKV+eaM24i0uVnXisf1DMEfYU4BRl
         RCWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=Eqk68UH99X++NTxCrmVs/wriYzTPWPNLhjWtjKKcwqU=;
        b=emIsllPc2CJW4FYSgn+gTbC7rJTpg2ogTjnv+BGJ+V1npytWfpiC8i0wcm+RJy64wg
         /40nPC4dVFMsBlCREJITvXy2gPbn4s8T4vMzzscmBT1XgnfV0tQlw5M4IC3MNdgqa1+h
         +tfGxd6rk7j2NX+ht0AHX/UpAumj8qdruN11WHJwo0u9vVoI+EC/TN6sluhpcsVUJ56v
         mJ0F+D4zQoaa8Ehj6BmxxnRjOZ2oQtJBIKqDOdXvBZ0w2yiZoV4on+oII1hEe+FjS3lM
         MmDWAsmTrdI2a/DsxFqkSSDT/zNspPDJRtE1Tb9BVUvubkTnclkRduM2V06DIQ24WzAt
         GSYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VgMIfdYv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eqk68UH99X++NTxCrmVs/wriYzTPWPNLhjWtjKKcwqU=;
        b=V6W6E3gsiVFeNEs97cAm0uY4fIpDw7UREem0YDJm0bsbWaohnPZgOaTf1huwLQIHhB
         bISlxqIRjmb9+t16lc8HZPDP5cULm9j+HUcT7U0UHgyKMh47e1qvkBP3j4ys6nNAhMA0
         42jxpIXt8hHuqyvhXK3rX07iL9Uz/WRPR3dFIq7QKOvY5r/oktq2BV1yHEkXZ2zqZcx7
         nX8BbPpC0xV/9lA+bP39swOjGMcqBuYrwjxkeu0jc92PC2RQ1YConBH7dHLpYteXFc3t
         VuHs6GAB2DPo0Fgd+YA0q7UtVLWrk8MTG7NCkKnZqiGRx53mcPl4DhZu57cByXOgbOS3
         XjyA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eqk68UH99X++NTxCrmVs/wriYzTPWPNLhjWtjKKcwqU=;
        b=GE9hu7KNsrDEzXIP143cRblhsBoO38AtQQaSVd0urpr+NagrgBX+A4hWMqr2N0s/TD
         JtYQXWG54VzRFElTI5VOxyYHYMfl+r7FWWyXxTeMn2FSN82evk9jg0kQGZPvGKjFnysk
         ZnXXBlNhRBtyO/rXq/n/tu+jmYhPdLl8OHgSgUZmgVI/R9GMavJS9UX6b9yGHI5ssGtr
         vAWEmliC0ZhqfWR7/cX6Rqo2kMH3OwK1iOdR+hIWHV3ssSKJwf+1yi/kazWbgC6ui6Od
         h1WzWO//DSjgZvGlPVIK83nrXNZKgDN4iyz38qwjuFi9adIUEsNoLIzfcezF3+E/I0sA
         m95A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eqk68UH99X++NTxCrmVs/wriYzTPWPNLhjWtjKKcwqU=;
        b=tEpnN/UyjbTlLbOLbadsoK6ZA3Ubyk1cRDKb+I98GA2omKp0u+WMeHVzVWzmBXhOv+
         yLbO5ThjAXVg+tdEWYE/xlgNEFoXgmMEqTRF3IFJ4m6+mSJ4rVY8jSS0JOiWj9VgQHro
         R1Vt7xJsc5O8TdqAnQxJHO9lKOE0Ndu2OPY+P0sfPrTgHtGJWJk8JfwXCC8AwB8cWAd7
         npEv1+To0jBrj1YTp6piYTvwonR52M3AxnDC1b/86BaDC19rh9Ny/DQ5Az1zsvFa0iuE
         GyZRof8CbPKrwmOyyWVqY4VfwBCGgS6Lp0E6dN0QtD2vn+iNdnVick6BIdFshV9C3BCN
         WcUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXmuCM0gm3KDpyEigcS+/FRa5vXZI8PAcpgP9mkDKs0JymJ9hIo
	sUc3V6ITlOVXuT5psDWb1XI=
X-Google-Smtp-Source: APXvYqwKM9L8YP5REi6NBl64S09xw2ywYO95URUMtPhLn1nrHYlEyUmxuhs2xRuTwNW1Wnpqc25BQg==
X-Received: by 2002:a67:bc04:: with SMTP id t4mr18792648vsn.139.1582261174646;
        Thu, 20 Feb 2020 20:59:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c805:: with SMTP id u5ls94241vsk.2.gmail; Thu, 20 Feb
 2020 20:59:34 -0800 (PST)
X-Received: by 2002:a67:fd63:: with SMTP id h3mr19928578vsa.221.1582261174093;
        Thu, 20 Feb 2020 20:59:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582261174; cv=none;
        d=google.com; s=arc-20160816;
        b=NNBoTn51OO4g8SuJUo/DGeJWNFKo5jktglcBimrJbVGWzWu5FlOhLU+0Y7qoOk0CGM
         jbnT+cCEQzfhhnxCemv51fIQG4DsTnWW+zK+ntxCmbYf/UYQAnelAf65jx60pku0Az7u
         gvLrEWUMnPond0uLU4t8bJexr7p5/iVhP//cGY3xi3/7YynMUKvyv2URriL8+MO8koIL
         UQoaCQIkD3cJ8HrZV1eIU8B7178P0a21F+irwpaLo7bEHQyQ6Bdj86nS6dg3x29ci6cq
         ji1C39edO/NuKZM2jCrluBK9kjw6LlOryZjDQDgGKGSCpjlZdJi/7FWh9EqM4f1Y/P15
         I1Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=C9sc6GBBuu89HZjVxM2TcZ3oiDVg0UBeOsKhJQqxjaA=;
        b=sRZlSNWnJPT6Vc9DD2tgf7AuIGbnvzZoE1w4GRknq0WYkRC+NWk7CYEIlY76t+Sit9
         o8GzQC4AgRJgYVlAddQIhMXbdJQGElRQE0PTdYtvMTZG3L9WJh1pQ48zJVlixXhEJclU
         +Sd06HyTsXlRfySe6GbGiBGRPcjkta60kYbZK38k90bJsJzOqElj0FDTNhtpogIPsGQg
         ypu6lgGrZFEpUQB0C+ll02DiULxSHR+vbLEVdP572Uibzz6MgiVSAdDvOXxBzr8WmfUV
         4hP1VGugSw1HTZQZud04Cw6Vyz3rAOqGITsrByr7rWxTrNc2QCAG/FKr07ac0QnCFgBu
         pcng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VgMIfdYv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id k26si84923uao.0.2020.02.20.20.59.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 20:59:34 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id h9so912510otj.11
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 20:59:34 -0800 (PST)
X-Received: by 2002:a9d:6748:: with SMTP id w8mr12268066otm.335.1582261173422;
        Thu, 20 Feb 2020 20:59:33 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c7sm647556otn.81.2020.02.20.20.59.32
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 20 Feb 2020 20:59:32 -0800 (PST)
Date: Thu, 20 Feb 2020 21:59:31 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 6/6] kbuild: Enable -Wtautological-compare
Message-ID: <20200221045931.GA2267@ubuntu-m2-xlarge-x86>
References: <202002211035.BHjx2mWj%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202002211035.BHjx2mWj%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VgMIfdYv;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Transfer-Encoding: quoted-printable
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

On Fri, Feb 21, 2020 at 10:20:16AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20200219045423.54190-7-natechancellor@gmail.com>
> References: <20200219045423.54190-7-natechancellor@gmail.com>
> TO: Nathan Chancellor <natechancellor@gmail.com>
> CC: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@mar=
kovi.net>, Arnd Bergmann <arnd@arndb.de>, Steven Rostedt <rostedt@goodmis.o=
rg>, Ingo Molnar <mingo@redhat.com>, Jason Baron <jbaron@akamai.com>, Catal=
in Marinas <catalin.marinas@arm.com>, Andrew Morton <akpm@linux-foundation.=
org>
> CC: Linux Memory Management List <linux-mm@kvack.org>
>=20
> Hi Nathan,
>=20
> Thank you for the patch! Perhaps something to improve:
>=20
> [auto build test WARNING on 02815e777db630e3c183718cab73752b48a5053e]
>=20
> url:    https://github.com/0day-ci/linux/commits/Nathan-Chancellor/Silenc=
e-some-instances-of-Wtautological-compare-and-enable-globally/20200221-0233=
01
> base:    02815e777db630e3c183718cab73752b48a5053e
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 9d37f5afac4a=
3b9194b9001bed84f58ca8bd6c02)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
> >> drivers/usb/gadget/udc/bdc/bdc_ep.c:543:28: warning: comparison of add=
ress of 'req->queue' equal to a null pointer is always false [-Wtautologica=
l-pointer-compare]
>            if (req =3D=3D NULL  || &req->queue =3D=3D NULL || &req->usb_r=
eq =3D=3D NULL)
>                                 ~~~~~^~~~~    ~~~~
> >> drivers/usb/gadget/udc/bdc/bdc_ep.c:543:51: warning: comparison of add=
ress of 'req->usb_req' equal to a null pointer is always false [-Wtautologi=
cal-pointer-compare]
>            if (req =3D=3D NULL  || &req->queue =3D=3D NULL || &req->usb_r=
eq =3D=3D NULL)
>                                                        ~~~~~^~~~~~~    ~~=
~~
>    2 warnings generated.
>=20
> vim +543 drivers/usb/gadget/udc/bdc/bdc_ep.c
>=20
> efed421a94e62a Ashwini Pahuja 2014-11-13  536 =20
> efed421a94e62a Ashwini Pahuja 2014-11-13  537  /* callback to gadget laye=
r when xfr completes */
> efed421a94e62a Ashwini Pahuja 2014-11-13  538  static void bdc_req_comple=
te(struct bdc_ep *ep, struct bdc_req *req,
> efed421a94e62a Ashwini Pahuja 2014-11-13  539  						int status)
> efed421a94e62a Ashwini Pahuja 2014-11-13  540  {
> efed421a94e62a Ashwini Pahuja 2014-11-13  541  	struct bdc *bdc =3D ep->b=
dc;
> efed421a94e62a Ashwini Pahuja 2014-11-13  542 =20
> efed421a94e62a Ashwini Pahuja 2014-11-13 @543  	if (req =3D=3D NULL  || &=
req->queue =3D=3D NULL || &req->usb_req =3D=3D NULL)
> efed421a94e62a Ashwini Pahuja 2014-11-13  544  		return;
> efed421a94e62a Ashwini Pahuja 2014-11-13  545 =20
> efed421a94e62a Ashwini Pahuja 2014-11-13  546  	dev_dbg(bdc->dev, "%s ep:=
%s status:%d\n", __func__, ep->name, status);
> efed421a94e62a Ashwini Pahuja 2014-11-13  547  	list_del(&req->queue);
> efed421a94e62a Ashwini Pahuja 2014-11-13  548  	req->usb_req.status =3D s=
tatus;
> efed421a94e62a Ashwini Pahuja 2014-11-13  549  	usb_gadget_unmap_request(=
&bdc->gadget, &req->usb_req, ep->dir);
> efed421a94e62a Ashwini Pahuja 2014-11-13  550  	if (req->usb_req.complete=
) {
> efed421a94e62a Ashwini Pahuja 2014-11-13  551  		spin_unlock(&bdc->lock);
> efed421a94e62a Ashwini Pahuja 2014-11-13  552  		usb_gadget_giveback_requ=
est(&ep->usb_ep, &req->usb_req);
> efed421a94e62a Ashwini Pahuja 2014-11-13  553  		spin_lock(&bdc->lock);
> efed421a94e62a Ashwini Pahuja 2014-11-13  554  	}
> efed421a94e62a Ashwini Pahuja 2014-11-13  555  }
> efed421a94e62a Ashwini Pahuja 2014-11-13  556 =20
>=20
> :::::: The code at line 543 was first introduced by commit
> :::::: efed421a94e62a7ddbc76acba4312b70e4be958f usb: gadget: Add UDC driv=
er for Broadcom USB3.0 device controller IP BDC
>=20
> :::::: TO: Ashwini Pahuja <ashwini.linux@gmail.com>
> :::::: CC: Felipe Balbi <balbi@ti.com>
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20

Hey it worked!

I have pinged that patch:

https://lore.kernel.org/lkml/20200221045740.GA43417@ubuntu-m2-xlarge-x86/

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200221045931.GA2267%40ubuntu-m2-xlarge-x86.
