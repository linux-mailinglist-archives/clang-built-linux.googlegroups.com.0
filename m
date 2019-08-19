Return-Path: <clang-built-linux+bncBD4LX4523YGBBL6T5HVAKGQE6HNIR7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D34891FE9
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 11:19:46 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id g185sf2143368pfb.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 02:19:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566206384; cv=pass;
        d=google.com; s=arc-20160816;
        b=0fjSdRMnkpCVs+3KSqCpUj8GKUtx3aKwKcgqVoBDMKTaPWKKHxCA3zEcAgSb6WOvrF
         pIwmm70VaQ0f+lZZemGs+6vYsvbs2FtPhSTeHBXFrM2rEcbEdki92WvUkoQtIUrWomiK
         eXjsaVHW4YQ64Oof19pl0OccuiOXyqhz9kqaBnU22u9Vn3e1MQ9+rB0+NXyc1L8mRss1
         IRV8Al2Uj8422sMJOeRDllDmHTKsIsmeZa/jcDw8BiOAt2QD6RNk4DvDbon1BVcXQ4dn
         5a1vzAPoElolwYvgwkQLqdA9823IFncDutLnuNzKgehn1sBFP/7FUv2/VGfkuh01SI42
         /nDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=w37WUKtB2L4jfCnSOxEtnYq2nx+eIyxTg7eeiSyzdA8=;
        b=ytp9hpslRBMN9EpdWLxNdpLLPQUsdp1S+TUPRAVaCisE2gyWREFQssnUbxQzFxZvlI
         LO4QSaAnPX6dJD1bGq3oipHzHEGOWugZQQQ0FNnDLKWorXI1I7nnkD73nuN28yoaaYJr
         CPVJ2GJ3o2l6IUe5Gxfb+A5rGLrPOhrCOUiZuUV5yp2OYfxJWE+uQe1HjcKkoq+SL1/I
         j7KB8X6P/MEXN4mEt2tiDFDPdIPi73CTuh89IytKt4L/SUWohcgy0v2gDDZi2levv1Ww
         hjKn07vefwqxre3IDUd+cU6opzam0qf9f2XqMZmoub/DmKCbg/UILHbEIJloWkwKE1nR
         Od7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w37WUKtB2L4jfCnSOxEtnYq2nx+eIyxTg7eeiSyzdA8=;
        b=emPx8LDAjIGcwL1U/4EqlQOtqNEO1NqOFlFpiek08ZTUv1815vgEyw0rz+JwcRZt0u
         m26bvCj/7N20aA4urna2G8pgQu/hbaU7e2bk1xBIMcp96if6olXVK2UE/ivr4Ahw3mUR
         Jq4ewoDmaDsxk53fRw6Q/As2G9W1OrOI25AN5FeQJw+/lN/1ndUn8WjcxKYOCt5nKjC+
         299F3kFa9tFAd/J0l/9TQ2GyNsI9JGDabcVmU/d5RhSaXHQ6Io9W7c490TpQzoRu8vvt
         GeH6EKKIV3CsYM/Jr1wV8TQLZo3pyUd3fIKs2JznRDNR+iDot79RkaU2+JyTqbZwwdD/
         5abQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w37WUKtB2L4jfCnSOxEtnYq2nx+eIyxTg7eeiSyzdA8=;
        b=CDlOmg8lxwx9yGfS6UKmNV55CH7jZDhnqD4CA5zq6GtZqGRA0hZdagDtC/qZNoqxed
         9SQaEEDl51LoeCkIIHeCB6+qGxylgX7V/Chy8az2iE3JxzpeMsIiDIUtrRIZ4sDp1uVK
         SYqTlSMixsjW5C5w+E0XctXPgyMiNH6YOIR1/O1fQouFlQuJwCRYRJumaCsAOnRzKgcs
         UOJUJBXfBbr4v2w7Uk36UEQHwaR/dXvVoakFeWIWtfkruDHazFxKchumz1XvAidoqlnX
         34eSfU8WDpPqGJxqhmQHuYgOMFlBntRdeXLju6KuZ4pWO6EUfs+YLbMkNIybTeLuDKdR
         0sPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXJlK5V+8RKRO+Hwd/PTYnZxF0B/vcLX0HolhNpBgyfZze9ZV3z
	uAZAQl/jxb5Zk1ghJ+NooRY=
X-Google-Smtp-Source: APXvYqxDM41QocZOXYETsyvOxxFK/IWa9JLzI70XjNrED2mdCEJF0z6eepHvqxXvkdLC8SzqNTG/3w==
X-Received: by 2002:a62:1941:: with SMTP id 62mr23114625pfz.188.1566206383727;
        Mon, 19 Aug 2019 02:19:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:68c8:: with SMTP id k8ls3414826pgt.8.gmail; Mon, 19 Aug
 2019 02:19:43 -0700 (PDT)
X-Received: by 2002:a65:5b8e:: with SMTP id i14mr18963322pgr.188.1566206383111;
        Mon, 19 Aug 2019 02:19:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566206383; cv=none;
        d=google.com; s=arc-20160816;
        b=vp0sMYInKqeDuJxS5E2X6rrjPN3dHajok6WIzKSiBBmWh/RD1+ALwXlxhAGpiz/z3v
         9Em6w8jT+ZGy3YGpz54Mo48PMZO6xGVsxJHqRWQf/byy0DFlGxkVQ5p7Cry+KJYGDtKa
         drcDYhRYc6pagY2nhYe13UL3iykrzqwbgL+yLfuLdsXTcmcdjuiUXYog4MPX8lW4ahKg
         pWdTadGblJjscYkHWYZDrzRGqc47VvkYD/54lZbjkXyomtfuU9ar7vbwviKBJCSWwssp
         IwR7HLV0dIaXPQx2fDVZ0GrlOV5FLrTMGlfPDUE5wyx+ARAisnCbjU09DAvx2JIRAd6A
         2rwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=9rFp5iKmMe8XA7flkKhs4IGpTIp/VBa+7EHJtHjG4F8=;
        b=r/5bVsxHdpuoH1UE/XK0BUdhKe+SMJmBO3OzvWOTXqi+eNxHfP/CGwfDTLSG7GlxFD
         FnzOqbQHGiBfkVZ+bi9exSUL47PV5Xkp7L7WHq32sELIgWvLA6Ol6Lf5xGGzrgNRfksy
         r4SUib1LyRxwFoWBwM8uYX1ZvsvV5Z7MK+PbwiA8ZrOahMaPJgIsbDV005ALC+eftWpt
         EIZfwlXGgukUqwcVOSOCf3aJUDBCNtrQdr6z7n+dfbMNN2p8kecwu5vrL8pLgJvpei0Y
         5DeBIbRD3RvLPSQRo5QLRvLG7ustmq3Y/cTtsC1CE9Ulfab46yD9/v/pBoqogU37JAp9
         bCGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id f125si677725pgc.4.2019.08.19.02.19.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Aug 2019 02:19:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x7J9JVDb002533;
	Mon, 19 Aug 2019 04:19:32 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x7J9JVnB002530;
	Mon, 19 Aug 2019 04:19:31 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Mon, 19 Aug 2019 04:19:31 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] powerpc: Don't add -mabi= flags when building with Clang
Message-ID: <20190819091930.GZ31406@gate.crashing.org>
References: <20190818191321.58185-1-natechancellor@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190818191321.58185-1-natechancellor@gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Sun, Aug 18, 2019 at 12:13:21PM -0700, Nathan Chancellor wrote:
> When building pseries_defconfig, building vdso32 errors out:
> 
>   error: unknown target ABI 'elfv1'
> 
> Commit 4dc831aa8813 ("powerpc: Fix compiling a BE kernel with a
> powerpc64le toolchain") added these flags to fix building GCC but
> clang is multitargeted and does not need these flags. The ABI is
> properly set based on the target triple, which is derived from
> CROSS_COMPILE.

You mean that LLVM does not *allow* you to select a different ABI, or
different ABI options, you always have to use the default.  (Everything
else you say is true for GCC as well).

(-mabi= does not set a "target ABI", fwiw, it is more subtle; please see
the documentation.  Unless LLVM is incompatible in that respect as well?)


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190819091930.GZ31406%40gate.crashing.org.
