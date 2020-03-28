Return-Path: <clang-built-linux+bncBCMIT47M74ARB24Y7TZQKGQEAHGSBXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9873519647A
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Mar 2020 09:35:55 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id m4sf6246505wme.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Mar 2020 01:35:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585384555; cv=pass;
        d=google.com; s=arc-20160816;
        b=C8z7EjiWcd5+pgJb4Kxubk6uszY3HZzSit/OJlLwEXcOhuIIJlMxiGdMNBGCw6hZYd
         QDuASKhrsCDeR4T3m0iBqcPy4y0rHEwqL1seILm8EyB5MaJgRznvTsy8c6dqF2Uk6Gbm
         lXBfYXJsrBKlry39lInu0XPtchXrCVGtxdmsPXIknjW7MvHs5nISVXqnXaA1l3ai8M3t
         q5jALBQkxmbFwjepitBgCrogLa3kBSHhI4IXsvDX7CN5XzaN7uxcy/p5R7Dt8Kn1WyA0
         7eS1IdczgheCuDYKv9XAn4vLri5LjOR1q8kPa5FskyQmW4rsplhTP3WnsxKNpPTtggO7
         ZYQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=jAG8UsaRmbSFZnHi2aQ7/7Ov7xqccKJcXKc2lx1i63Y=;
        b=KhYTwYWQjCTR3m/pwYwTjrxUyOe8EGTABx/3pd4R8onDpQVNUIuVMk85i09zRkDFgJ
         aQL8x+whut/DVFwOMkvGRJ28u+a2/vRhsU9gmhbgOzh50fn8DKtAdNJNgrVOBcdaa5xz
         8E/SR5+3SiWKzJ96f8jgK1urK3zgHpE99dleJiAIWaBV5byxKd8d7FWOzVHDEj2T5R30
         CVDmtRC6f/szdXR0rrJyQsmO7bwI1Pj46uVUNs+Tbh/Pap08PBkglMkr4zu9iGj8fX1z
         P/NpkW6KuPayE2LP2RpoaDQkkAf3C10f7ZUSbuY4/eegdPA1nfVD8jBM9SZH+1W8HX4f
         EGVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JPnvBuAm;
       spf=pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=balbif@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jAG8UsaRmbSFZnHi2aQ7/7Ov7xqccKJcXKc2lx1i63Y=;
        b=M7UhutMb1NT/Ez1xaBg4ev9Say6F/xCw/j1rsR6Vy/2Yodl/iiV30GDFpqdlbwIzi2
         SVsUtjfqCWxWOlVrZXp5AsienlL3rrXkcTC7Uguo8fJmCwQrQBhvr6OvB6JH6fSpb4lj
         g6fVg8DUyZAWwUrL5jwQcgAx1dZk6mBCysEZnsIkdW4aLU5eMNR7DfxuMd5IRUpOn8+U
         UuwAqt3pwE2jOGYGDfvzGINNWsA7mh/LeSPUIfqTiUK0iF9OA0G563L+DrvKM0TWktMA
         lq+s/nQ6o1lTieipfhVpZxkyu7JKq+SfAhxDrqTkT7nzV2ujhklLvN4It4SfXPxUK7rh
         PZIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jAG8UsaRmbSFZnHi2aQ7/7Ov7xqccKJcXKc2lx1i63Y=;
        b=rLHX8VBD/PT+6NZHiM0Uae0mtK9BoPVBYqQ+Mxzfiq8+UvVeevt5FtCu/rn6QA47BD
         9U5dUIKm9IWfwJ9/gTE2PGGisTgDGB9BGot0Ueoa4Fg9mUOcu9lF20Vt7LxDnDmxki6E
         TsCeG+KTaODPjkPskAoRuZi9+IgaCa/eMha8dBp0WQ4yXeEI2h1IEKwS95LOX6c9Bgg3
         es00EALa5pv9BsUR67lGtmafAac7fYXHvtGjE5rUo5l/ZhcBiCcXmRsP3GZJceyg5GSt
         4LNwu4BAMwv/tQBXra0ef1a5WHCCjFMdVsOpiyIkzbALfq1xE0TuVaFIhiRes6ZAqYnh
         Z7tA==
X-Gm-Message-State: ANhLgQ0x1ChgF8RdiQ5PwpN2YJDj++HsenXRSzD7Qq8dOLyN6UeAjdsk
	q5lxpFPqOYsJSckx1kAxSDQ=
X-Google-Smtp-Source: ADFU+vtrZWMAs9XBluKS+iX8GJ1bw61dnnOgf81d/eYNtbPU+ixvcMz1RS5bUOU5CO9xTTLopLtu3A==
X-Received: by 2002:adf:9526:: with SMTP id 35mr4026449wrs.164.1585384555364;
        Sat, 28 Mar 2020 01:35:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls1582997wme.3.gmail; Sat, 28
 Mar 2020 01:35:54 -0700 (PDT)
X-Received: by 2002:a1c:9ac2:: with SMTP id c185mr2898170wme.45.1585384554893;
        Sat, 28 Mar 2020 01:35:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585384554; cv=none;
        d=google.com; s=arc-20160816;
        b=u908jPCM/VuBSq/ZmY2yCngLMN0lF7yt+TNiDHVoW1TAb3uU3B4P0h7Tpb+0BIvJcK
         PEoq9ACn8mZ/HpLXThdLH2QHy0XWzPRfaEIhz/H5ZxCLKmKODPhWYBhBCWRi94B6koqc
         Vxb8DheXBAojuWZtnLx0tFxF50aIQD0EKmE1YeE5AaXt0MUYs2sSRAmrUXiCenzMjrVi
         ARdUEaYCwF+Qx8OEhOveGunTZ7vfdx8eEGhKn4LlzCZchYXY289ZeEELAuOnMl4KWtQb
         mhtVDKlCF86PEI+XACp9qngAu/Wu/m6YV2gL70w6NOnfiQ/1l0H+fMs39k6wQA/+pFso
         Un+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=Qer0UP/wnwHE4FuvM+cjbdyplCq3YOMP2VWFL2KepzY=;
        b=VFVcZiiFsi7VQyKPBfM6knpAUfznRfXUZrYqY4a1CeKDeLiYboTll1cQPEAQKx9ybi
         z7Y9Q/E1qZGLmG0J2qcc+RiqvmoO0MMCNwRnZdTVAdHb9dkcEzqqSEif1bjVSfXrxLt8
         POgUY2i3xH1kBHD9JS97Kr8Re4yzY4IawhguTm1DCLuFNV7LMd7MT8C6ej1UWTHDVDnX
         I2mrpauB8nmbjf/FF2xGe2QO7c/krQWYFBmm/nHrNehxsZqmkzOKHWNtBX3MjMyX+NzD
         FBa2kxwnCupit3nM7G2TeIAVoOvOqO8NwIZFK4ug588BuSfdj+W9bxNorHrr3C0Gpie5
         Vzew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JPnvBuAm;
       spf=pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=balbif@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id y201si639370wmc.0.2020.03.28.01.35.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Mar 2020 01:35:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id k21so12642148ljh.2
        for <clang-built-linux@googlegroups.com>; Sat, 28 Mar 2020 01:35:54 -0700 (PDT)
X-Received: by 2002:a2e:9ad2:: with SMTP id p18mr1670420ljj.15.1585384554120;
        Sat, 28 Mar 2020 01:35:54 -0700 (PDT)
Received: from saruman (91-155-214-58.elisa-laajakaista.fi. [91.155.214.58])
        by smtp.gmail.com with ESMTPSA id 9sm4096123ljf.0.2020.03.28.01.35.53
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 28 Mar 2020 01:35:53 -0700 (PDT)
Sender: Felipe Balbi <balbif@gmail.com>
From: Felipe Balbi <balbi@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>
Cc: Ashwini Pahuja <ashwini.linux@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] usb: gadget: udc: bdc: Remove unnecessary NULL checks in bdc_req_complete
In-Reply-To: <20200326195855.GB29213@ubuntu-m2-xlarge-x86>
References: <20191023002014.22571-1-natechancellor@gmail.com> <20200221045740.GA43417@ubuntu-m2-xlarge-x86> <CAKwvOdku24UV8J4uSKFFc7gmwOP28-8K352BJepb_z-octFoPw@mail.gmail.com> <20200326195855.GB29213@ubuntu-m2-xlarge-x86>
Date: Sat, 28 Mar 2020 10:35:49 +0200
Message-ID: <87zhc0j2qi.fsf@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
X-Original-Sender: balbif@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JPnvBuAm;       spf=pass
 (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::243 as
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
> On Mon, Feb 24, 2020 at 01:42:57PM -0800, Nick Desaulniers wrote:
>> On Thu, Feb 20, 2020 at 8:57 PM Nathan Chancellor
>> <natechancellor@gmail.com> wrote:
>> >
>> > I know it has been a while but ping?
>> 
>> Sorry! Too many bugs...barely treading water! Send help!
>> 
>> >
>> > On Tue, Oct 22, 2019 at 05:20:15PM -0700, Nathan Chancellor wrote:
>> > > When building with Clang + -Wtautological-pointer-compare:
>> > >
>> > > drivers/usb/gadget/udc/bdc/bdc_ep.c:543:28: warning: comparison of
>> > > address of 'req->queue' equal to a null pointer is always false
>> > > [-Wtautological-pointer-compare]
>> > >         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
>> > >                              ~~~~~^~~~~    ~~~~
>> > > drivers/usb/gadget/udc/bdc/bdc_ep.c:543:51: warning: comparison of
>> > > address of 'req->usb_req' equal to a null pointer is always false
>> > > [-Wtautological-pointer-compare]
>> > >         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
>> > >                                                     ~~~~~^~~~~~~    ~~~~
>> > > 2 warnings generated.
>> > >
>> > > As it notes, these statements will always evaluate to false so remove
>> > > them.
>> 
>> `req` is an instance of a `struct bdc_req` defined in
>> drivers/usb/gadget/udc/bdc/bdc.h as:
>> 333 struct bdc_req {
>> 334   struct usb_request  usb_req;
>> 335   struct list_head  queue;
>> 336   struct bdc_ep   *ep;
>> 337   /* only one Transfer per request */
>> 338   struct bd_transfer bd_xfr;
>> 339   int epnum;
>> 340 };
>> 
>> So indeed the non-pointer, struct members can never be NULL.
>> 
>> I think the second check that was removed should be
>> `req->usb_req.complete == NULL`, since otherwise `&req->usb_req` may
>> be passed to usb_gadget_giveback_request which tries to invoke the
>> `complete` member as a callback.  There are numerous places in
>> drivers/usb/gadget/udc/bdc/bdc_ep.c that assign `complete = NULL`.
>> 
>> Can the maintainers clarify?
>
> $ sed -n 537,555p drivers/usb/gadget/udc/bdc/bdc_ep.c
> /* callback to gadget layer when xfr completes */
> static void bdc_req_complete(struct bdc_ep *ep, struct bdc_req *req,
> 						int status)
> {
> 	struct bdc *bdc = ep->bdc;
>
> 	if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
> 		return;
>
> 	dev_dbg(bdc->dev, "%s ep:%s status:%d\n", __func__, ep->name, status);
> 	list_del(&req->queue);
> 	req->usb_req.status = status;
> 	usb_gadget_unmap_request(&bdc->gadget, &req->usb_req, ep->dir);
> 	if (req->usb_req.complete) {
> 		spin_unlock(&bdc->lock);
> 		usb_gadget_giveback_request(&ep->usb_ep, &req->usb_req);
> 		spin_lock(&bdc->lock);
> 	}
> }
>
> It looks like req->usb_req.complete is checked before being passed to
> usb_gadget_giveback_request. So the patch as it stands is correct,
> unless those checks needed to be something else.
>
> Felipe, could you clarify or pick up this patch if it is correct? This
> is one of two warnings that I see for -Wtautological-compare and I want
> it turned on for 5.7 and it'd be nice to be warning free, especially
> since I sent this patch back in October :/

hmm, I don't have that patch in my inbox. Could you resend it?

-- 
balbi

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87zhc0j2qi.fsf%40kernel.org.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl5/DGUACgkQzL64meEa
mQafUA/9Ht2zH4aYtwxtqPtB+xyMdI4MdcpS+/CjkBgHkTpkpp1WOnANeG7xLxf3
pbnPBkQiPqDuDbGiM0lZ1tlwwS7+fFswxlqON8gmwH+xcq/BOVe/S5duy3G/Kbkl
J5LQz6cR/uEvISqJRp8bKgBcy1kR0EgO8o2/nxlNbGNzZEjfq8LtZOqI0yAY0Gw7
Ken1JOvAw/1uHa0gAWbpkIDD5wHPRCN47Lw93aCm4ZhjOe4fPK6XN+rXA1I9t2Bt
Ra+rwTz37Biz2s90PWd+XveKCIjFUzNEsxRp+/1lnFv26/WTl4u8GNzqmePNtTx5
iHSRwQBpqeHA5CpNPgFVmmrU1Y3eoMiBaPZO1pUGu+2e7JzWXuzdS3lgPrvVNXpv
w723kiTG7E8M68fDiVztC/ii/63v081J+6OxPxHC+vvFtN7lX2hAjcaJGp8LRwQn
NtlFkXszqk04EeGSebTmEyTTg823hsE+EWA/dVYQxUDJOtmBHttyyRKmeWf9k13f
9DLJYekjXtbAikddtjRyVwLmKipuU0DfcstggkUm3wzu+JwS7e1HH1aDlZfZW/2A
3wzpnEjtscMMuXXQlm2tzGE7cQTrHFdwFcQEptJ9JScFDlNYP+fsK8v7XcH2fLLt
U8Ro3+BqJKKJgz1yXegLP9bDcKjDEjofgpAp3hvQoYfG3WCd8Bc=
=5F2y
-----END PGP SIGNATURE-----
--=-=-=--
