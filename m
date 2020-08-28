Return-Path: <clang-built-linux+bncBC6JD5V23ENBBEVRUT5AKGQEC2SHTCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C7A255CEA
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 16:45:39 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id y4sf179287pff.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 07:45:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598625938; cv=pass;
        d=google.com; s=arc-20160816;
        b=0kMD9Wmpgzidtiq+bI4AIEv/5Jiu1dbWqm6T16d/VQ9zxeVcmo0UT15mghCbEx2Qtk
         2ZoEkZdKcsBMJHJzDB0LpuzSTG3yiVWAxeKJjEy3/IaPfLxkjbNWGihLy5KSUVhhRQkR
         UhyfKezeAFWmmXq727kix/9Ipl7os/TJETYh0w1ZTLjY+iXXntN7lYWcFBciFb+I4JHe
         dchCmf38ZDzuSJVrqY8NcQdV++CgZZYM+ULO/C+3HcrHRwdXhjzLFKEZhEN0yOORdS0W
         LwFvzIDYTYCABV5vrhYF9B8/sXwfkrAbLvxY1vX/LQCk4HWuNGSf5ZbxqeQRoDVuCKhg
         InaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=7peRQdlIg2cioYEYpdSGFXq/sdCw4o+IB8ejCpbrkrs=;
        b=GJsh8wL3J0raTbyLWRvhOPbRm9qoYTjxLQZteQUloBCQvZ57IBQ5rB8vdlkWnmsHGO
         aJoWPntdlGav+RevHNCDxQT2MJFYHMUYU6wB9W3MYH9tS1vOZYN+WMKnfZCrexdxMP+l
         4X2+e3VaPLFTtdtdoT5DoaOrfE2QPIsHsCXk1Kiq+0EnULw0pInOJ1Q2LnbTcDDlg85x
         HSWODvT38EfTHjD4YPyRl45KWT8A1wlZPy9Od3nshl7Kb4mwjYD6zJG8+tuGf2oTF7d8
         lSX0C/sjp3F71ip6BjkDTbR7Vuog3ZZgS5IcFII+EfRPuwrR9vB8CYXai9e5jTCCD7vZ
         5idg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Y0cWCO8g;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7peRQdlIg2cioYEYpdSGFXq/sdCw4o+IB8ejCpbrkrs=;
        b=WnrLZs2k5ZAEWl38HzKE0k7HMK5tbbMpYlGOCeei4dZkfHNeQKTMbdu9WBMK7Ov1BW
         XN6u4qePTyDKExC7DccWwfkOXmduNf2xih3wQVNf1ayZtfPGP3NKKL4G9qgkmmdSztRz
         gYOTbhl1tVQ33c21yV0x3Sx28iS/YLr9xps/KichDuCgFQ9WikmCwfEdS72qJy51YYp/
         JSieErxbx1QMVRJTxn5fhzpdWF5c4C31vhv6cXJnij/dSGTCnxogoVcK5ryndy3gVvLJ
         V96ZZnZPZlK+xbJ0PjOy6rOEtVPop8Mm0HaOpF8l3iAlSSChLa98gWiFyWbtFT7h9fYN
         zFRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7peRQdlIg2cioYEYpdSGFXq/sdCw4o+IB8ejCpbrkrs=;
        b=mvkLrsgodDZwF6czjPka9Km5u7PI64tmQwA2jZn41QQkBIFBZOCdTmhagUyImJ/h/E
         fvZRWBzyPUxmXeJ6RpZSf6bvVOHfsHKEGactArb8oxatSZxnaSi1WGtOIWAigsI0UT0f
         +902baRYiyLzF8QJ6soRzuVSZ8AF2SwypZbCnwmTAmn1nQ8AifUdat1sx18xJI1SP64/
         GPEWUh75Lm5x3qXCmBA60QTyDbps87m8g22XykqMyfIIaXp9miYMA1vyS5Zkj9QPPiWQ
         SO7GfZiFzkmKz3vsuNn4Qc7fVJpJ9gJVfatuHcI49HFeAIZExxNWueaa7AXpmeVKhtTO
         s4eQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532h7pFYzphnWpxKAm2Fv78ARo2WdYJfQcWULar7WPvDhgNEh6xz
	ndy5PwvWr66Bo8pZNlBHoSo=
X-Google-Smtp-Source: ABdhPJw/krJ3npu0dbsSkCPCtavul9N/AsEhVxzX0pRo6/x9+1kH74WeAHeNn0XABg45XysN/SOalQ==
X-Received: by 2002:a17:90a:ff0e:: with SMTP id ce14mr1537358pjb.128.1598625938718;
        Fri, 28 Aug 2020 07:45:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3205:: with SMTP id y5ls408148pgy.3.gmail; Fri, 28 Aug
 2020 07:45:38 -0700 (PDT)
X-Received: by 2002:a63:d62:: with SMTP id 34mr1492524pgn.179.1598625938276;
        Fri, 28 Aug 2020 07:45:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598625938; cv=none;
        d=google.com; s=arc-20160816;
        b=L+0OShYMt0tSAQcN5pGnTybNisEAeYAAu+DJRi3GDvOl0JbBHxT8OHHOnmnoi7d+bp
         TaF8GdJHG5rwG/oRAFQIYVmD+X5nyOvQVzYXmFvTp5Uk2yShRBwMFDCSAnDkySJBepSc
         Rha6f5xpIId23iIDb91bJqqDL6rPdQKhbZq6un5h/RwzxXfelhkQpGSlLF/ixwpxP66f
         fhQQvxLYEeDuLP3tiFzAvtNMF7+sywpIVu3XjnJp5FXZtgEECnIXGcn4QJ2rC0tMn220
         gE+S42B/zxf9UX9F+JcURmzPBlGAsDp11Ev/V3g1OsFU/T6XUCy6QiP4Ymzuekx97SPa
         +T2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zFPu+hEtvLr+J/kssi+kR1L0FPRQwblFyfZ9I5DhDsM=;
        b=jPhh2aOVX0tI/Xnt6M9cQ11PVcK7oIUrj4lHQnVsIoMFObSOUfeKxchk2rnwlgNQef
         D3Nmv5PRgffnlewJppqiQV7CbBPKojQXS8NjDP0fPFo4JUMlnxiYAybNkaOsvAec5/8a
         cu+5Y/Lvvr7ytE5RS6pEiyXuRBTPIgd/z+9PFugokqqMyYhVJLbOtFktZyGF7o7BqRkM
         aTafOEePxlhU1tJiB504XbDVIvFuYGQoa2Ojp/xgv8cnyIBMkALgNWSl2oDQ2V4B69xz
         ed0PvCC2IipoSu3fp6cIQgtSmqJ308R85+OuSbD8opTB3/BYEbRfRM54kCM5ZVru50/L
         SAcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Y0cWCO8g;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t6si50724pjq.2.2020.08.28.07.45.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 28 Aug 2020 07:45:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9FA84214D8
	for <clang-built-linux@googlegroups.com>; Fri, 28 Aug 2020 14:45:37 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id e23so1855373ejb.4
        for <clang-built-linux@googlegroups.com>; Fri, 28 Aug 2020 07:45:37 -0700 (PDT)
X-Received: by 2002:a17:906:4e03:: with SMTP id z3mr2118388eju.503.1598625936107;
 Fri, 28 Aug 2020 07:45:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200827185829.30096-1-krzk@kernel.org> <20200827185829.30096-25-krzk@kernel.org>
 <CACRpkdZNS6TTpUDEiezORKXu-h0Sdz_dPcCxmR+UbT_Rc+oMpw@mail.gmail.com>
In-Reply-To: <CACRpkdZNS6TTpUDEiezORKXu-h0Sdz_dPcCxmR+UbT_Rc+oMpw@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 28 Aug 2020 16:45:24 +0200
X-Gmail-Original-Message-ID: <CAJKOXPej87cqgPtt4it66fp2CgjcyAQULG2260UH60hsnOZu7Q@mail.gmail.com>
Message-ID: <CAJKOXPej87cqgPtt4it66fp2CgjcyAQULG2260UH60hsnOZu7Q@mail.gmail.com>
Subject: Re: [PATCH v3 24/27] gpio: Add devm_fwnode_gpiod_get_optional() helpers
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Hans de Goede <hdegoede@redhat.com>, Bastien Nocera <hadess@hadess.net>, Sangwon Jee <jeesw@melfas.com>, 
	Eugen Hristev <eugen.hristev@microchip.com>, Andy Shevchenko <andy.shevchenko@gmail.com>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Linux Input <linux-input@vger.kernel.org>, 
	platform-driver-x86 <platform-driver-x86@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Y0cWCO8g;       spf=pass
 (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=krzk@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 28 Aug 2020 at 16:31, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Thu, Aug 27, 2020 at 9:00 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> > Add devm_fwnode_gpiod_get_optional() and
> > devm_fwnode_gpiod_get_index_optional() helpers, similar to regular
> > devm_gpiod optional versions.  Drivers getting GPIOs from a firmware
> > node might use it to remove some boilerplate code.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
>
> OK then, I suppose this gets merged with the rest?
>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

That's the easiest unless you expect some conflicts. Only one next
patch depends on this so worst case it could wait one cycle.

Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJKOXPej87cqgPtt4it66fp2CgjcyAQULG2260UH60hsnOZu7Q%40mail.gmail.com.
