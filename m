Return-Path: <clang-built-linux+bncBDE6RCFOWIARBNNKUT5AKGQESFNR7BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F8B255C7C
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 16:31:18 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id i6sf537945lfd.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 07:31:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598625078; cv=pass;
        d=google.com; s=arc-20160816;
        b=RkXSlbmAyFdN+OFY24q7z013dsArQDM78XENLEm8dtRSZ+iHOIUVXL0H1KxFLYxQuV
         xPidY7Ax1oGGjHJe/PJTG3kIgZyaM1neMsxQh6+Q1TfOHlEzuqaTa4FDn0DWKhFTquSk
         p4pjI1EIcm+U2x2QoWeMRG2Vl3yXwhRs+b6vRgxxcky3CetRF5Qy7mdO1KH3MNAiyAXH
         isCXyW2Q/zWjM+wxG1HxTiz8Hu/UdiA1CLKrTP2Tw/w8iKs5z7CkPvCVH9jLeOdRza0x
         WllGuOxkuV+OIDRaEgZQGxgLt1WPlBVIFCcIwzN9nreLYgx5Qxj76LataLgPPldngFqN
         2I3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=UyUxmcQYgNezF0ZDkt6JVtOUmT9q/aZ2QgOLtEtjaWM=;
        b=nerXL7EPrQUJmv8kY6IU3dRC3NalNOmb6aeK/1Pr/JPcVHJJcoLZy26CpgFF9bQvg1
         oSvaB6dKAgMn1h3qLXdilaNL6xxRygSHqIGoYy0eXkRZvV4YEvOLR63q6ftAi94Qq0XT
         ieQK7C8EdxjxqlgYV0j7qQ2euQ56+1Kafv23XUH4B/++CaB/cDxEakRkzwgpvBZ+h8Rn
         C1peUuPvNRA0VtXJL9I4m79AT/IGS9v0hu3d6vP0cBqLQDMVUibAbo3It98w+BSJMFUV
         TjacalLDoUpczkvjhhH40tRsVhB9jSEMTDFEMuB9QyHinNcIUMOIicOTxOArGuClYAk4
         znOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=mwrWOh5F;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UyUxmcQYgNezF0ZDkt6JVtOUmT9q/aZ2QgOLtEtjaWM=;
        b=BWN/itFONlfj21YrR8gI/rnLSEJLQSXcLyvC2SSvXvYlGLCRvOP6/K3GPkQryORXxN
         EtaYyt3KeZObiMWOhniMO0pRqXFtweSl8v6vs7G6Dy2bgQjsCknEtdSZfCNc8GH5TynM
         JZyo3UuLgZxHKUrF8llQ+Wx/orjemvsIeH6TsBcyMR1ITBUaoVuqHwE2lI1KhEPzVs8y
         DXsFuCcEioSKl3pxrI1B0qU6DvuJFlhZvBYG55iEh/lAnCa9eLuOI8z6wssQ5ozAa1VX
         2Ex+73lTkBDopcQZFlkM9i0eaX893g2U1ljQ3VCZGjiwjpuOo+/kZ0KPeVXNVkJHnfI4
         IQcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UyUxmcQYgNezF0ZDkt6JVtOUmT9q/aZ2QgOLtEtjaWM=;
        b=eTIsPz4Yh0vDKOEQQYiq6wMChaUlwOHtlSJUJ3NCcRWLBs/wFWRkMC7CSJrOm8GDIx
         vIh5LIsDmywhhEgzhCwd9BFdFNauvoRXJVbCsrKlDtkFD+SPjYUOWTuus1477OTGChjo
         RTuYlZH0uNHBj89d3agnrW8zrtunH16Tb/BFrLiXKTm/wqk77yWEe0zbzHhWvhgm/9bL
         P5or1ju9UVrOCBtuD3B8uKZsmFQfnMQkl5bixcmi6AO8pHFkZhmgWPR6BBJQ7Tr3Vz1J
         x09uiq9pSLfN6mElcJzK0tXLF2CGZnms+wOmUDeM07Y0+7XZGue0lHNqUp1KFZlBQPhw
         klvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kfmlVE7t2FLnk07USUn+U4aa0M2GSjZ18Nq2O5K8fI5NVcqX6
	7eOdZOVAF00yBoSRqn1vj2g=
X-Google-Smtp-Source: ABdhPJw3aGRF8osEZ4tJdTJXQe3JXF2tUpK9rW4JNwCNLaVjPn0fKB7pag5FLHOYOb4Ji2HOxSTzoQ==
X-Received: by 2002:a2e:8782:: with SMTP id n2mr990566lji.384.1598625078149;
        Fri, 28 Aug 2020 07:31:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:294:: with SMTP id b20ls252906ljo.9.gmail; Fri, 28
 Aug 2020 07:31:17 -0700 (PDT)
X-Received: by 2002:a2e:a314:: with SMTP id l20mr1089754lje.213.1598625077328;
        Fri, 28 Aug 2020 07:31:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598625077; cv=none;
        d=google.com; s=arc-20160816;
        b=xRFz1YGPorV4Id2EdLwv0boH158Wbd1DE2Qo+JEx633vdCGDGWTpca9CPz9g8Uhr5n
         V/ObTUcxMNY88H9dL/1xUOQzdle13wZod6lsi/vKeSRjt3Db/4cjWjx/T5GfkGpmuOte
         AEOC4B43/pa+0MN+xU7RBnbHSt7L245CM1XTdiRAxrHQ6MFdEbXIE4zKd5pSPTUIObAh
         t43O9KMko2wNrPGUBDV+J9DWfqQz9SxxosYR6WxvK24JFC/RoVvkzxMY5CU6deDgYTnd
         PCjAIZHsetDUqTfeJ50OVqNjmo0BiF5i5o0v6yIP47wHN5ARxhRX16OpgEmVgBJNJZ5i
         LygA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uulk0f5tN77Sy8VPiV8bfXz3aXrvD+qaFtC9g5b1o5k=;
        b=afx0VjXumHVRpmiQ2UiGaKWXvTau0YCNy3qff70qZv2iv3YELioVyd3rd0Um1Sy5fe
         IGn+ivwU6QNdPDrDF+wwYY4S1dCtceuE3A+JyBHrxhfzTD1c88RU/uKrKcG83gQX8cl9
         wlT3v4H34CHO2EH0OwU+EDNAbDQqxvT8wO3Kkikg+p0dsM6g9xaDzKzKd67XlzrNF8ht
         hRiuVaLBMUkt/83racLNwju6wkwNFE6e45yieGB2blWLNDmnsD5SBHNufO6gp7yHYNXN
         JTXsMCScuaOcIXlWAAi8WQvwD0vEhsNB7hBkznzemToOuWO0jpBtUtmDwbtjn2GEkd8T
         Q6rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=mwrWOh5F;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id f3si57066lfk.5.2020.08.28.07.31.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2020 07:31:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id i10so1566277ljn.2
        for <clang-built-linux@googlegroups.com>; Fri, 28 Aug 2020 07:31:17 -0700 (PDT)
X-Received: by 2002:a2e:9dd0:: with SMTP id x16mr989729ljj.144.1598625076956;
 Fri, 28 Aug 2020 07:31:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200827185829.30096-1-krzk@kernel.org> <20200827185829.30096-25-krzk@kernel.org>
In-Reply-To: <20200827185829.30096-25-krzk@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Aug 2020 16:31:06 +0200
Message-ID: <CACRpkdZNS6TTpUDEiezORKXu-h0Sdz_dPcCxmR+UbT_Rc+oMpw@mail.gmail.com>
Subject: Re: [PATCH v3 24/27] gpio: Add devm_fwnode_gpiod_get_optional() helpers
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
 header.i=@linaro.org header.s=google header.b=mwrWOh5F;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
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

> Add devm_fwnode_gpiod_get_optional() and
> devm_fwnode_gpiod_get_index_optional() helpers, similar to regular
> devm_gpiod optional versions.  Drivers getting GPIOs from a firmware
> node might use it to remove some boilerplate code.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

OK then, I suppose this gets merged with the rest?

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdZNS6TTpUDEiezORKXu-h0Sdz_dPcCxmR%2BUbT_Rc%2BoMpw%40mail.gmail.com.
