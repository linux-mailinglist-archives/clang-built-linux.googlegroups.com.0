Return-Path: <clang-built-linux+bncBCPP7ZW2WYPBBZFUUH5QKGQE3UK2OSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA3D271C3B
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 09:46:45 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id mv5sf5972604pjb.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 00:46:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600674404; cv=pass;
        d=google.com; s=arc-20160816;
        b=GkVrfTMGLqZlRsRbwxTKZPoJ1v8B1ZVBFgaL2CjKC3n4byQ49oxcGK4x0Sq8zCnAaz
         uZBBA3ebWSwZra3iU7yWWmQTLrj/WASJmkxoacf30kSybaSBBb9EQvjjIhJF+3CBGHs4
         xm8rViu+0i3T34FsHiuzeUWF5BYnop7QXbQMl/yf4ZWl6AzHXoe03RX6iGaoqLhXFhi5
         ENZxeBIU4eqJR8kf2dyCbhZz9JRHLu28srBoWxTC9NSzLbWOC7QReEC9aGbqQfbD1OCi
         1PmUfGs9PAOQSzCMcESyExIcVOTurfysLjJ9fYOswEpt+D6CxZriosHsUB5sXZwUgNs4
         Qm1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=O1IFv4B7ZY5LocTzglfskqqkMtYprH90OZIvcWqTqwA=;
        b=JSLWpuCKxR0HUUaTbMTLzr45hdI9vX20FiRpcHEcXHqt18O8mO4dRvNpPEZFLmhFtu
         X1UGi5t3m+7zGg7Ua5Y0e/rYWMDjwasd+AOQpS399LlciVSvSxAJhumHOF+ydX9m2fS5
         oNJ90mdwK3xnZUXLIJC2uNEJ4g00DL+F5YqtDDFAAJ9EAFnMKEOYyN0PcsTBot3Kc1H6
         hrEg0tuJPZBWLz2UO18uLdmXpxgNbJfEKIt8yD3vCPUYpudfkVU9bbDQg8y7hIIeHHJg
         ff+7lR6A/qeG9QJXjpBSV3HqZNQttT5arfaBTjAddJTLhrd3Ftf39AByfanNksiRhxRy
         2tDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@benyossef-com.20150623.gappssmtp.com header.s=20150623 header.b=uQbRytZo;
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of gilad@benyossef.com) smtp.mailfrom=gilad@benyossef.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O1IFv4B7ZY5LocTzglfskqqkMtYprH90OZIvcWqTqwA=;
        b=HxC2cJ/5WxiE/J27sTQWqgHk+l/iJmzlcm/4nrZc5bM4DxLx1SlS5tA6kdAYzdmmYk
         4n7OFxC5y1+Of6jwEQo9xHIul7rKq1+NBU6ttShNyqNl6HM1g34FNLsrmz1u593xGwyg
         KKNeg/SZw37rhhyugxdp0PZTLQg65RoSRK2tHElab4ugb7Ofh9X0Qlk9H7NUrEtcHg9/
         RUxsvnl2zrFLw8YNmuJfkUWxPeTsCxFABHADnuwU1y3gcHzymfRKN8qRMo5dt9si/dxw
         A4fJA6pVHOCw//6R13fawrwgSCc+1YzW2sGzr0P6GoNy3DpzH0bjbH0PBQ4XIdPUZWbI
         eN0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O1IFv4B7ZY5LocTzglfskqqkMtYprH90OZIvcWqTqwA=;
        b=gaUdNCbX6LD7QqYOpEBZrtjzF0uEg9nCVUltEjBi3qJrG4nr7FKviqY9qfwyuIn90O
         N1NxiSqyQNBxawQSACoL1SOGpC4cOvjkSkET1vX7FuoMUCd8rEO8AN2KIgXlAOOUDUxS
         6pP9rCFLbBFnYIU0t5VPaNLlGwkZlhUteKIy+EG3X4d0ced4AkDBP1oLqOPwt0CMk5S8
         ctaDya6/re9/vaNmDnZEeWnbatbK49+hOUPamTH5LsRP07dIL8TdrEuOPQOWULXq+b2v
         2OcIePXhPbTlKJsbnsHft10+GSMVKic9nJzlxCw2NXYs0XpkG/QyLsh6Al/2Pn0NhFLn
         TLYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531G0uTT/rLgOvGI9YLrUCTRMi3mC8pyMCRaw5dYZWQX+/m3rlVZ
	jh2sI+3efOY48BDzYsvd/s4=
X-Google-Smtp-Source: ABdhPJyBuJcYzTl5fxnanUyzLO6/GIqxOFQxNiSesFu52p7yYGutoTNUFcwe1pdXrtiN5jNOvtHTlQ==
X-Received: by 2002:a17:90a:6701:: with SMTP id n1mr24650780pjj.87.1600674404219;
        Mon, 21 Sep 2020 00:46:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e303:: with SMTP id x3ls5335247pjy.2.gmail; Mon, 21
 Sep 2020 00:46:43 -0700 (PDT)
X-Received: by 2002:a17:902:c281:b029:d2:2988:4906 with SMTP id i1-20020a170902c281b02900d229884906mr2121083pld.82.1600674403596;
        Mon, 21 Sep 2020 00:46:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600674403; cv=none;
        d=google.com; s=arc-20160816;
        b=xg+ds+lVEZhN50tiUqyitLtbCozPAWBMpC9PDc3VPbCjyhguCyYa3bFluyD9fxwng2
         29NTlCS6pmZhOIwsKwttww5o9L+sPzH2axwkB8ILhdxXQIq3O1OOTZTyfvFxMthiz87g
         iL0CQWz9WIv5KgHJACiBe4+yr9bcmDVBNac+dmSNwB0vYv7nFwii8wMdnRxFT0T7SUkK
         MjfOn+zZ63IT+iTrAH5QAxUAUFrzb8nevd5V0rcK3r6dI+5h6jmxIsev95GWITi5QKOk
         gtY6nq0ahYzaYPQwpM8sW1L5mKq/88wldTq7x3O0gfmRw7wtEMhGj3ySlRkdzpem2KiX
         esdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KEQZ+0+MjbwK1ElZms1Qgb4W3im9WPY9mb97cPZoGK0=;
        b=xVoZilkpN9+63QeIBhN8VE8wn+7sKdHofFjD9ghBk0xE1FXzCd7vGMSn4yJhKQ596K
         E69SliAhtE79P3ALlDErSBVPytVOjmF5N9yWoqgN58g33v0hG/swHhZ+fy3p5vb5/XOv
         HxJe7bUwczvvycaQrW8+OXW95Qrm1m5fgF5olIivIQWpE3GwiOrUvYsH+z0Bari097OL
         hpccODGrxYGEJrcbn2VUDlleLRfOtkonEun7JCFMNKtj3UhAtpIASQOh4/SoPe27aS2q
         2qn/xUbuvAd7MMaKqRzgpF+8Zsmsv11wz0CPOqbbAC8wDbEYiXhjISuMNDBPt8BxHPKS
         4Usg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@benyossef-com.20150623.gappssmtp.com header.s=20150623 header.b=uQbRytZo;
       spf=neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of gilad@benyossef.com) smtp.mailfrom=gilad@benyossef.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id c4si76870plz.2.2020.09.21.00.46.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 00:46:43 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::542 is neither permitted nor denied by best guess record for domain of gilad@benyossef.com) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id t14so8291625pgl.10
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 00:46:43 -0700 (PDT)
X-Received: by 2002:a17:902:758b:b029:d2:29fc:c841 with SMTP id
 j11-20020a170902758bb02900d229fcc841mr2054484pll.39.1600674403207; Mon, 21
 Sep 2020 00:46:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200916071950.1493-3-gilad@benyossef.com> <202009162154.fxQ0Z6wT%lkp@intel.com>
 <CAOtvUMdv9QNVdaU7N6wJVq27Asyrckuu9bf15fO=+oZUh5iKOg@mail.gmail.com> <CAKwvOdmW+n_g4C_pXnF+8wh2q0gZZyXAfaYR9cVNm3p1QeJ-xA@mail.gmail.com>
In-Reply-To: <CAKwvOdmW+n_g4C_pXnF+8wh2q0gZZyXAfaYR9cVNm3p1QeJ-xA@mail.gmail.com>
From: Gilad Ben-Yossef <gilad@benyossef.com>
Date: Mon, 21 Sep 2020 10:46:32 +0300
Message-ID: <CAOtvUMe1zj+sGhZfvjYD=PciWDby9uKvH70i01FrfVVR6cC_Tg@mail.gmail.com>
Subject: Re: [PATCH 2/2] crypto: ccree - add custom cache params from DT file
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <lkp@intel.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
	"David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Network Development <netdev@vger.kernel.org>, Ofir Drang <ofir.drang@arm.com>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Alex Elder <elder@linaro.org>, Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: gilad@benyossef.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@benyossef-com.20150623.gappssmtp.com header.s=20150623
 header.b=uQbRytZo;       spf=neutral (google.com: 2607:f8b0:4864:20::542 is
 neither permitted nor denied by best guess record for domain of
 gilad@benyossef.com) smtp.mailfrom=gilad@benyossef.com
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

Hi,

On Fri, Sep 18, 2020 at 10:39 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Sep 17, 2020 at 12:20 AM Gilad Ben-Yossef <gilad@benyossef.com> w=
rote:
> >
...
> >
> > I am unable to understand this warning. It looks like it is
> > complaining about a FIELD_GET sanity check that is always false, which
> > makes sense since we're using a constant.
> >
> > Anyone can enlighten me if I've missed something?
>
> Looked at some of this code recently.  I think it may have an issue
> for masks where sizeof(mask) < sizeof(unsigned long long).
>
> In your code, via 0day bot:
>
>    107          u32 cache_params, ace_const, val, mask;
> ...
> > 120          cache_params |=3D FIELD_PREP(mask, val);
>
> then in include/linux/bitfield.h, we have:
>
>  92 #define FIELD_PREP(_mask, _val)           \
>  93   ({                \
>  94     __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: ");  \
>
>  44 #define __BF_FIELD_CHECK(_mask, _reg, _val, _pfx)     \
> ...
>  52     BUILD_BUG_ON_MSG((_mask) > (typeof(_reg))~0ull,   \
>  53          _pfx "type of reg too small for mask"); \
>
> so the 0ULL in FIELD_PREP is important.  In __BF_FIELD_CHECK, the
> typeof(_reg) is unsigned long long (because 0ULL was passed).  So we
> have a comparison between a u32 and a u64; indeed any u32 can never be
> greater than a u64 that we know has the value of ULLONG_MAX.
>
> I did send a series splitting these up, I wonder if they'd help here:
> https://lore.kernel.org/lkml/20200708230402.1644819-3-ndesaulniers@google=
.com/
> --

Thanks!

This indeed explains this. It seems there is nothing for me to do
about it in the driver code though, as it seems the issue is in the
macro and you have already posted a fix for it.

Thanks again,
Gilad

--=20
Gilad Ben-Yossef
Chief Coffee Drinker

values of =CE=B2 will give rise to dom!

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAOtvUMe1zj%2BsGhZfvjYD%3DPciWDby9uKvH70i01FrfVVR6cC_Tg%4=
0mail.gmail.com.
