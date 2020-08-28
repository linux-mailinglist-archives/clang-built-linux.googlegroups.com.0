Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBPFWUT5AKGQE6YHFCAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D209255D2B
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 16:57:02 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id x6sf1667713ybp.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Aug 2020 07:57:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598626621; cv=pass;
        d=google.com; s=arc-20160816;
        b=alVvZTZDZeUhSD+xdpMVP8d/9LDDIW8dsYK+OpWAxN1fpjjO307fDBfNLmXjLTD7MG
         0ELgP0Sfri3QdeXys5a19ABopax3YxEODzlKjpwsLBgJSOM4c6EK59/jvyECPLLWquae
         GcZkn0o7K8G7R/90Mubo44h7ldd/xndvdPdpTd5UT88/vgzbTNzhaF6G2ReiwtMrN/mb
         O+3n922uqz7haewfLq2sSyOzmjUNuVrY1mLSeFqRSEENxCvCbOPDRvhX2nb2Egg9vjTK
         82wBetPCYXFT/geO2V0nxj0K13JC/CBUVxdDt1YQvc+xUaTNuZWIK+WyT2m1nvGx/5HB
         q9Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=705DjcAdBBJzy7YUNGWQK2KU5KmU4GB6k7PqWCewNZY=;
        b=JCHb0A2/gGbhJPfxuF+exB7928fNuz1nqjQqfmAWGfG/j6hWB2h+UQSuR/L/6n0K8Z
         EbkfAvVJdd0AxiM9k603SVyFaDLUOKnvXuy2wjb0elPBwLTj9y2jlxg9i4VECEjGGH0W
         MHxpTE4cNH0jmwBQ78rEP3kAFMc/TVwsm59InEX+FasfduBcvS+8TTWF+Fog01VN/KVO
         3Dw3IM3oNwybXFNk6cGoqLk2nbFV45PwGPUA3mFRf4XHkuW7T4nZqxkSD2WLlVlTMeHL
         t0ON32XiDENjhRRrFRFaIU/gCfeZ7rEd82LOhWTqSL6V0ak/HB8PQFozUNbxZ5v7XKiJ
         ZN/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o7kSzWU8;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=705DjcAdBBJzy7YUNGWQK2KU5KmU4GB6k7PqWCewNZY=;
        b=nau66Qkt4ijLe4WTyqFvbG631LG3Fh6Etr4WplBMJCAF0ydTHZCmVTE6hZHhrdCszR
         Y+m5PS81uBtGUcRdJQsNS+XTRzPHjGvvVtVML4qBUn0uZpV4hl3H2eQjLYeLGViKrPN1
         cP/tm0KX5K696s47br6E4ylS8qBiWPxw10EAaW7Pp6zYiAyHleRTexa000xmMl6hy46i
         gDyq8hKJBrdQqruFBGjJCszGgxsu4WvZjK3ZkBINIkHLKsoL+POK3riMrPRUR62HUu5C
         Fu8BSxe4qcroKBizcEGFVLgBXeaSz3y2XMHevoWHizgz6ESuDZrnoItSfTZS6o3M5b5L
         XWsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=705DjcAdBBJzy7YUNGWQK2KU5KmU4GB6k7PqWCewNZY=;
        b=rwPvIYXZaiN/g0s3qu5HO1ZMN57gBqxuH6EcidwO/yVxreVVIcS4P0pQkRjHqN4eEq
         E+g1Ezrx6WyPCcgkbODdUPUM5YLu6EjKjr/7EQB1uHMvqYPgVBqC9xI9xxpeeoKCPEZ9
         E/S5u8LFUtIBx1z2aqJElYaX5pTtVgyxpkNUq/0Q8amFn1TR/rZySuV6//ClHRahnmjw
         a1Ja6tyr9sMItfbJX4R0Oq8aBJCffFWqHMFgP7mUaerMb8PSW1vufM5+ohk/ZVxij5Hf
         kZkJG5stewKFc1NQRxNvLXq+ynMf+NXEZ2/KHJN6OtwvL+6OF2fgc6IRgGXtjxu3+pfa
         kCyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=705DjcAdBBJzy7YUNGWQK2KU5KmU4GB6k7PqWCewNZY=;
        b=EcDo7zaWt7TJXrdcR51fvmnwMV9pF6vJNNvX3FQ1gvWzZcHWvpVC2RA/Ap/a115OZB
         5LpePHHSylnaoPf3yqDglnUhamK+NtzHVJBbYyOeNlocIHrGksTMillc2LZuebKRpQUz
         K5doTGyYo5DqcZepvfrJLhZbszRSzMdp88UiCSn93aV2NDN3imJvCd4m14CEvEoK4cmp
         aQBBp7jB63lpKHS4Q/ajD9yw0f/5srxJg+gYa05mbX8VnuGC+MnerGwHETa7ATYaRWF1
         vwI1nokUEFEc+qnhuvFpao+3tDXLGUqEYG1N+f0PwxlY4EJpht7GE2cPZNQsGNcA/q7x
         2Zcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CeskGlJ8pmEvTtNUOs1TyupEBsmvyngopBYM6ZQRWZCzOqLOd
	qpr2njvAkJL8WRIQwZoWj8g=
X-Google-Smtp-Source: ABdhPJzX7JeB4tb2kNaUpStZ0WDXO9F+kyhNUquzCeVo98EG15Vd2S020eAwtqqzmQgIWZ/4gvWYJg==
X-Received: by 2002:a25:8892:: with SMTP id d18mr3230280ybl.70.1598626621086;
        Fri, 28 Aug 2020 07:57:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6cc1:: with SMTP id h184ls649353ybc.4.gmail; Fri, 28 Aug
 2020 07:57:00 -0700 (PDT)
X-Received: by 2002:a25:5f0c:: with SMTP id t12mr3057840ybb.54.1598626620702;
        Fri, 28 Aug 2020 07:57:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598626620; cv=none;
        d=google.com; s=arc-20160816;
        b=rbFB8lr6hBBhzTB4NXKKwfqtg7C1v6LipqjYQ6Z3z2jbghU3fjGfnQloITZvoYvaZ2
         PnAahESfyI92Jnr3R98Vd4mOFT2JWx9IrtAmg0fp8Txoj+Jqxd06loczAV1EWeYsub2p
         TCjo3B37TXaGiaTyOT34/pWBC6IYgVQehDvCQMQw2aSm+LYRRauK9kbnSliPQuXfYmmD
         dSZ8ivWcsLjbfDZIpniUjgI3/qiujRZIC7E4+1auP4HUpbk65UKKg3Us37A6qDJ8zxug
         CtYTepgDRKXPCvTgEro30nNLzrRdMBvmuJsa/n5QKyB/RT6ZH51O2By8QZ+Qh40PUzeg
         P6mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nRvu+qRJqDJhNa3gYpoNc/gx5D78M+eCbN8D4GvM74w=;
        b=n9QiFpEWTfZCNaxJ+E5h55XCYOJOwwlb6LWyQp8ZQMcAqBZY/0L+z6zzNkDzvrgxSY
         kV1N93i2GQIGkrUcEaxFIs838bkhbq+BdMMccNBn770abnaGj2jpxGXkByhz6DfD9NVU
         HHGswgagWgMNgVGqeEIli+y0eN0S9tgLQGSRc1DsTPuJ/sVPvyM5/hxs6TbhqZ+Mx3n7
         ifi310J3KK/AcyLgAVG9DNq+obNdu1gcKq3IBfUrpH6AMWHgU+HAeg42ilq6qZB1tsSn
         WBmi6Sx5ZKr5gCNCwnbOrdS7phUUGxiLM93Ie6fgHno6J6eXQv2oFxtuPhQKxTZj2OmT
         FAmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o7kSzWU8;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id m193si106989ybf.1.2020.08.28.07.57.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2020 07:57:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id q1so615405pjd.1
        for <clang-built-linux@googlegroups.com>; Fri, 28 Aug 2020 07:57:00 -0700 (PDT)
X-Received: by 2002:a17:902:b194:: with SMTP id s20mr1572889plr.321.1598626620299;
 Fri, 28 Aug 2020 07:57:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200827185829.30096-1-krzk@kernel.org> <20200827185829.30096-25-krzk@kernel.org>
 <CACRpkdZNS6TTpUDEiezORKXu-h0Sdz_dPcCxmR+UbT_Rc+oMpw@mail.gmail.com> <CAJKOXPej87cqgPtt4it66fp2CgjcyAQULG2260UH60hsnOZu7Q@mail.gmail.com>
In-Reply-To: <CAJKOXPej87cqgPtt4it66fp2CgjcyAQULG2260UH60hsnOZu7Q@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 28 Aug 2020 17:56:43 +0300
Message-ID: <CAHp75VfOSqxs5mw7jK0Xp2H2xFFLbb3i=ARxiuViOEniafCp7g@mail.gmail.com>
Subject: Re: [PATCH v3 24/27] gpio: Add devm_fwnode_gpiod_get_optional() helpers
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Hans de Goede <hdegoede@redhat.com>, Bastien Nocera <hadess@hadess.net>, Sangwon Jee <jeesw@melfas.com>, 
	Eugen Hristev <eugen.hristev@microchip.com>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Linux Input <linux-input@vger.kernel.org>, 
	platform-driver-x86 <platform-driver-x86@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=o7kSzWU8;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Aug 28, 2020 at 5:45 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Fri, 28 Aug 2020 at 16:31, Linus Walleij <linus.walleij@linaro.org> wrote:
> > On Thu, Aug 27, 2020 at 9:00 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > > Add devm_fwnode_gpiod_get_optional() and
> > > devm_fwnode_gpiod_get_index_optional() helpers, similar to regular
> > > devm_gpiod optional versions.  Drivers getting GPIOs from a firmware
> > > node might use it to remove some boilerplate code.
> > >
> > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> >
> > OK then, I suppose this gets merged with the rest?
> >
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>
> That's the easiest unless you expect some conflicts. Only one next
> patch depends on this so worst case it could wait one cycle.

I believe Dmitry and Linus are familiar with the concept of immutable
branches, so it won't be a problem to create one and share.

-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75VfOSqxs5mw7jK0Xp2H2xFFLbb3i%3DARxiuViOEniafCp7g%40mail.gmail.com.
