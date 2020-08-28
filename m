Return-Path: <clang-built-linux+bncBDE6RCFOWIARB3VKUT5AKGQEAL2JXPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 64855255C87
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 16:32:15 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id g79sf503521wmg.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 07:32:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598625135; cv=pass;
        d=google.com; s=arc-20160816;
        b=H3BHn4E0NKQHVv8/T1Fbu4BEoBkIKf4ZfwHsTVruK9naIfnaaFQML6Jv4hR/MdiC7T
         pjWAQgDdVAUzaw05PqjhoUWZ92SOA08mUGWhU1aeWtKNv+yDFuKYJvAaWuihJSy4Pjm7
         wCHh9LWSIQ4DbTislCay0Ho48OxeRsUV6BFeOUv1c/AwDegz6zanr1jJTej28+l8bvl9
         /eGxfLFEYpfCY/fMmK5IBWtA6yHN0v77yTKLvbYRNF7XEe3bgv7imi5688Cj2Cy0s4wy
         pW2aDRgzZaF2/jgyZXQ4qANVplIz6mOL1oBIj8LPsn3pbE0DVwNMU02mGbkc38lTUs4J
         9bFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ww5TJBYr+VjNMWV3XD1424/CFgNrTD04mz99aDfw1e0=;
        b=JDOgLY0cVePHPA/+L/o7pThKDuxEdV770O9Bef07T0ekbob1pgOrVXl3JWc+MPnqIs
         i/3mjzeR//68P8XsrBCCrUpZ7jo+gv/ZT28jAExMsmxQBNqp/zS0/UCSGPsrN942L+e6
         Gwt/aUNFpS89KYgBkB0bcdOX97GwXzQzHVdAcOMfQiqrsZVTegQPgdEIO3oRohaPIlYK
         Z0es0uYhbhj2NPp0wBksTpaY3R0Q9QrlSkXRaeK/cwpmrrksWK+rrLSkd2nsg/kCAo2J
         vQZtGfkhyTtOrKZg/qdRfX236yJFWueW/o1QmCNSD/xtgggUKXiMJL27iHQHnuIJ3dAJ
         xzqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=IXeEjsjD;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ww5TJBYr+VjNMWV3XD1424/CFgNrTD04mz99aDfw1e0=;
        b=DYiC/bOlDtY2VdeWedKHOpKkZQcyfHo+NO7YIckoBzBD2oPLEYbszEZcbOs4j9WDoU
         ATvUA9KYopQCurEb+ePYJzJhllYTzxi5VuP4N76kWEDiGu1UEDQDVfWwOOIuFQjeeK9w
         qf5j33vVeV4E243ZalAnIsUyY2LBj+Vhu8CZTxXfqrw8jpokTBqVxAD31tLqgJUDxZml
         gj4TzVaqCtzg4Q7uO848ExVFFmNvDddCZEbtk0DcsA1CeTdv5QulTUJ+xa68LnzFOFyA
         df3hK7PtUfgp7tWYgyOGzlNpkrZaj3Ysl0tt2Iz1ut+XK+tbZ6f3I/2iHGl68ZWoprnB
         hDtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ww5TJBYr+VjNMWV3XD1424/CFgNrTD04mz99aDfw1e0=;
        b=ag32Z4rf+zw1YHE1OFNzYNTgZVq8nz3oMuLsl9wZypUqiOWk5fVDOJR1oT9R0gTHhm
         7yQHA5njTMbXyJz62RmqjtuZ3gxfb0hikJCwCgj3/COkwqgeQHLhWk/d36FM1ahCqZ6h
         A7/U7sb5d92NVKEIzyIzSC5ZMydUefC4sjceU9MPTb8Qz7yDT3S/X/dPuYth/R0A4tUL
         UuFKFBI76Fx5nhEsQ9YRTALdiBcyafUhHkHXkcPq2tzFv0rc+M/reRTLRCziq4JWplrX
         /gZYYDNBHbKz1toJx9B85h1lbIIDMj2gMdZ419f5fvMC06K0NNyoZeMfVH47JGj2MeFt
         W58A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eGkoziwlRqg5V42265cKkvURmZU1bLRbcAyGM3RE3H2XZeWBc
	MIp44WXoozYwGK45aNs46HI=
X-Google-Smtp-Source: ABdhPJzs5/lBRdk5CW6D1oWpLROHDZdwmPjgHVh5lKGiOVyceLoh06q2mr/6oQq3ZhJUKWRccQzJ4Q==
X-Received: by 2002:a05:600c:4150:: with SMTP id h16mr1935174wmm.127.1598625135124;
        Fri, 28 Aug 2020 07:32:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls985454wrx.3.gmail; Fri, 28 Aug
 2020 07:32:14 -0700 (PDT)
X-Received: by 2002:adf:db8b:: with SMTP id u11mr1870945wri.143.1598625134488;
        Fri, 28 Aug 2020 07:32:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598625134; cv=none;
        d=google.com; s=arc-20160816;
        b=gpMVgB6lj1pzat3tMxjpD6KKQsWBfhyTam5bDwvHHsWA0Zi5qryCtWEtV1BtXTEGY+
         nTHUx+Rv8sOm/TBuMBtLyBRXz2KTGca13akzf0l5tUMnpYHtf2N2WsLXK14xWyrDhorA
         Y48hh57HdsIrByhIT0itWNkoZXOxQ4YHDyYLYL1/xIbc/X8ho6PjObOYITsNpL3WD8ue
         XDpdyRFTsK9o07heNzM6NviSaPd0olP70mNuRU5mL9tsVKjCprUSHLwkjXNm5GfDM3Oa
         gvw/Oa6BO74Q/IXwsZmjmBszPJuW13hR6a/xAlVvsGf1U/z4dacLSggaJd3e9J0urlG/
         L0Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wVomXPK0U4YnUe61pOa0mrtN3m3F0A/CetmINqj4FvQ=;
        b=A+Sq3QvFasVT4LWypLb6OOajyUjPVTvL+myPINdHMvDfC+H8jdmgkYjGFPU0pSkkjf
         n1yISC4ZlejiUhjbTcbiJ/gSG+Z1MNzIx3pIK1N+A3y4xJK0YCTHgosM4vFQgiRedt1g
         3KsHcI5J7AWFEZPLQFkjbbq0mkLn4h1Bbb2vZkMYWsAw6rQEheoUbY7DhvpoAG4Nh0Hg
         6XzoNRW62kAXxV+A0qur2Y7G6FoGVrslY/u1zai3k6KjLpsDROic62DFPqJN5/RoCfEf
         aCNVbwJggWISNucU1+g+6ldeO/FRcpBlNU8bAPbn/j3/zPMmwnxICeWJ64K8uzF0lohs
         CzNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=IXeEjsjD;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id 92si33441wre.0.2020.08.28.07.32.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2020 07:32:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id m22so1551773ljj.5
        for <clang-built-linux@googlegroups.com>; Fri, 28 Aug 2020 07:32:14 -0700 (PDT)
X-Received: by 2002:a2e:4e09:: with SMTP id c9mr1062954ljb.283.1598625133997;
 Fri, 28 Aug 2020 07:32:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200827185829.30096-1-krzk@kernel.org> <20200827185829.30096-27-krzk@kernel.org>
In-Reply-To: <20200827185829.30096-27-krzk@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Aug 2020 16:32:03 +0200
Message-ID: <CACRpkdZQZ+ANpMmwFUbTxQ9=EZEXZkr7Z3DLbica=Q09bmntBQ@mail.gmail.com>
Subject: Re: [PATCH v3 26/27] Input: bu21013_ts - Use local 'client->dev'
 variable in probe()
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Hans de Goede <hdegoede@redhat.com>, Bastien Nocera <hadess@hadess.net>, Sangwon Jee <jeesw@melfas.com>, 
	Eugen Hristev <eugen.hristev@microchip.com>, Andy Shevchenko <andy.shevchenko@gmail.com>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Linux Input <linux-input@vger.kernel.org>, 
	platform-driver-x86 <platform-driver-x86@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=IXeEjsjD;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Thu, Aug 27, 2020 at 9:00 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> 'dev' is shorter and simpler than '&client->dev' and in few cases it
> allows to skip line wrapping. Probe function uses '&client->dev' a lot,
> so this improves readability slightly.
>
> Andy Shevchenko <andy.shevchenko@gmail.com>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdZQZ%2BANpMmwFUbTxQ9%3DEZEXZkr7Z3DLbica%3DQ09bmntBQ%40mail.gmail.com.
