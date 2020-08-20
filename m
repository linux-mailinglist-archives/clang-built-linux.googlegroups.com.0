Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMGA674QKGQEF5QS4GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD1824AD06
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 04:30:09 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id s82sf321661oih.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 19:30:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597890608; cv=pass;
        d=google.com; s=arc-20160816;
        b=crDoCx8hM4cMMftvHxdcUwM86WzZoF9zhg0ZuipbeDVMFj+qjth/xhnfsyiEl33P9V
         cLApKQQGqKiGr2dYrb3d7YekFKVizFKZRcw50jU6ViBb1IkSoy1kJ3XI0QhFvyj5UzRC
         v7IaNlU8+bghK+Fs5RwBBYtkJfrjrxmSlhI4Jg2jJwsxU7cvimjTEHJ0sxT87yS5KzEW
         0//g3ZszBnXUWgbU3CS1yvTPkpsHyvNI5NHEZc2GGjjgoftVHJYeZsvQKkvMNYLVAeS4
         8po98UC7VIQKjROeeghhs2owkvLQfErqXRGf5ev2GNP3h789ASY6OD5yGMf4rvcUFMao
         UugQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=66876btIp6cAr1JSpybMkeWdzH6cWwbrIqESnnYK8Vs=;
        b=q5R+rGkDoxFa3D9FJPSBK6wEoYG9IH6W5bOgVevkqs9C1pu0FdOBAZYxaLhuPYbHPw
         zJqpDc4Gl8LdlxxlE69Szjm4KzpkIaIAwz/PHm9olrI8B9eivFy0sR0323t2FfPPb/DM
         ZGUzo06ohANzGeSLoRQqqBjh78pBhWsslHYX2XcgASatgA2/5w7vdcqX5Q9QcBkF3pOo
         k63R31WgpBm5G3iG0AN7QFjq0IP4cLCaWi4d6IdaEpXSCGkS5dKtQblF25TYVVpZkhDT
         z5VXrByyITfw3pbRic6HX16nJW53pvyQNpEDSCNsGmhFFojVY0StY6kv9TOqJomg0U7s
         0GEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i+CG0sAj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=66876btIp6cAr1JSpybMkeWdzH6cWwbrIqESnnYK8Vs=;
        b=X1p1DCD+OOx1Iswfdj5jhMmsQ9K2s4WCpiv27r09rCUmnAHesEeJtm1LEahNS1sZpZ
         ux1YhQDzZQ3MJt4gKEIt//T4uZbYxapBhtFVDa6DVcSv1U8QR0Fqoniy/wHyBqUHT5e6
         JQH2jbMvML+uyNpeId8Zxw2Vth1l7cjPfHjJlPKhlF8Si98MLQcqfifVuEvRltIlMQAE
         PR4rugJUbxfkbIYmCFAdY7UdSWX2S6x3Nev44knPrtT65uS6T73a4P95aBHpRRNLUxzD
         kyHYlKRralX/aCMqWHDD1KEblXxV0MRTuwpR2WpYsMDzINp2DA6XrmqKj7OpS2JxdggE
         Ysrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=66876btIp6cAr1JSpybMkeWdzH6cWwbrIqESnnYK8Vs=;
        b=aYlSmhnOWDOWusKiiE07YG5c/5GG2Y6AccCQusnZuVJRcRhL83mtXofVr+DI0ddL69
         0m48j9sQWY+oIWPES5Hlldjgl+8DvEXq4fLI7DX3RqE8A6o5l4TC7u/DyEUBJL8IOM3e
         qBw8MdW61qjOWH2l1AEjRRBGw/MkPwsTE2rYYyHsNBd8i38WkNYQzeiXro90FHmxUa3n
         eKhoI2mW2gud1MZ7DOc2sZntER5C3vMPWEaW+boX9HofeB0kCoDuBRUUu4vk2q5eTOGY
         nW/+q4hUFppEV45iaY4hAnkrvdZXTz6VOP2qxHfCOO1wq1IK/gmX1cfKEFonEXPkcZ6/
         cikQ==
X-Gm-Message-State: AOAM532mDfkYODMjt6LaXk05HOpzAsGikAiiy4jh0sU/hFbR2SZst6jR
	F5BRlGlkKzsNtEJluBBOOYE=
X-Google-Smtp-Source: ABdhPJx0qI4dAyPzVLdmx85gtFMCGSsQbj5nijTEZlg/h0pdLSAJHt1oUMYjPRmNG7+aaEgKjpWGPw==
X-Received: by 2002:a54:478f:: with SMTP id o15mr663910oic.77.1597890608504;
        Wed, 19 Aug 2020 19:30:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a13:: with SMTP id g19ls176264otn.6.gmail; Wed, 19 Aug
 2020 19:30:08 -0700 (PDT)
X-Received: by 2002:a05:6830:1096:: with SMTP id y22mr626951oto.180.1597890608195;
        Wed, 19 Aug 2020 19:30:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597890608; cv=none;
        d=google.com; s=arc-20160816;
        b=S1XRzq8Z7km/N3bmtOC+vu2hA5d5/uWSNgugYxePYIffwKtl3+dJ2Bj0W/aFR1PJrb
         j4qVsYOqsnU1k8uELghJFFsPHj/gfH30j9zPxsnqskg/7950GZxeQVP6vTwJ6Xo/eHJg
         wELEuU57iKQftVscuRDPz2Iu8jd4OIVAzr25KJ9PKGsCiJqq9LkhY3kcRlOLW7bSX6tA
         6kcLktB/cbSdgCqI2z2mBWWrDodXpQfmbKbhJL+Vuv18bRToFveNmzHLSa2mF51/kDzy
         qHktAyidEFMpJkjos+u9ZW/2OEFO8dZBjvjPeBjjufdwhmt+sIEWh2BZMoucYeUFulRE
         XKnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fHJ7HRBHswVMUg6am7ER5uoMDi3Cn/npsWlI6SwAOCY=;
        b=jpTWdC38H9NmpBIaIegfBPiEzPMOny9lBFKdVzP3bVTdQ0xRvul6OVk7K/um2yhdPz
         JyeUaScz9G6r41XJkz+mJYtJ77f2pgjE/gIS4EkPc9HkIQXDR5dCwkWJ4GNp5/Qgiund
         fkgZzD/4VCxG8tZjJ+PCd3o0AD6IG82Caib1aGkuBjJuk80IwU82z2tIcscSXsyLZULx
         4GSFxCIeW4Q637wlK/5DRAlcXCcxCEnM+zUnxLszt3nn+rqK3tkLN0gKrdIdP7YCqVRP
         nnIlESK6mvFFJjBSpQANB+oFMLepjtt5euefnPeneUeAeCzDdYQCdZ/h0A9MWFUCNkQc
         jTxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i+CG0sAj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id w1si57097otm.5.2020.08.19.19.30.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2020 19:30:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id s14so345814plp.4
        for <clang-built-linux@googlegroups.com>; Wed, 19 Aug 2020 19:30:08 -0700 (PDT)
X-Received: by 2002:a17:902:b485:: with SMTP id y5mr875957plr.119.1597890607308;
 Wed, 19 Aug 2020 19:30:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200812173958.2307251-1-masahiroy@kernel.org>
 <20200812173958.2307251-3-masahiroy@kernel.org> <CAKwvOdkL=667+cw_Rxq_5zaOKeTTptsMaxkkSXBic9QxozOWVg@mail.gmail.com>
 <CAK7LNAS4EjGchNzqhEcTPTU0mOUqAk8nF9QYW3qwfOp572uCHA@mail.gmail.com> <CAK7LNARPAB+UBcYJTauPRksOb1zVbicUt7z39szaO3o70vD1RQ@mail.gmail.com>
In-Reply-To: <CAK7LNARPAB+UBcYJTauPRksOb1zVbicUt7z39szaO3o70vD1RQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 Aug 2020 19:29:56 -0700
Message-ID: <CAKwvOdkQTFEGaSXj5kHpuqTQ9hFYPWkCAyegQ4jienLaH5x9Ng@mail.gmail.com>
Subject: Re: [PATCH 2/3] gen_compile_commands: wire up build rule to Makefile
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>, 
	Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michal Marek <michal.lkml@markovi.net>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=i+CG0sAj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Aug 18, 2020 at 9:30 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Do you have any idea to cope with
> the 3% loss problem?
>
> If it is a problem, maybe I should try Idea 2).

I think it will be ok.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkQTFEGaSXj5kHpuqTQ9hFYPWkCAyegQ4jienLaH5x9Ng%40mail.gmail.com.
