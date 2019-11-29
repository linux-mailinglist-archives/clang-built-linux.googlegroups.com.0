Return-Path: <clang-built-linux+bncBCSOLHMX7UOBBBFSQLXQKGQEY3AAAZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 831FE10D0B7
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Nov 2019 05:05:24 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id f191sf4042729wme.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Nov 2019 20:05:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575000324; cv=pass;
        d=google.com; s=arc-20160816;
        b=uDzOxHokZIRnXN8dst+jPgDtTIeJGm2nN9eoDKPJ5Cl8UsLgnej0FH4XD8xEsWbmMx
         0wcH74vWxdWUpxAGSrsTLss6boOIarP77MJRUwwxyUubB3K1EUh8/36NbAr+RNhlA/X3
         GQR8v59cXR4umRjwHkjt5HQyKmqgwWuAHm92zAq56iJZxP0jyRe9L2DstnBOXbAGrFCT
         vUdlpfLkPLkLgUcWJLxyo4Hq8G7EUuNYljXa3BkhJZ3SujJ0HIP5p0WDxiAKPIqG7tfy
         Ocr7F11crejyNPKYb2NAu25XgSYc9dqro0DnsaYx33mkTQnHc8fOomKVYTFTD6UWEiMr
         FikQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=IZ8k0m5j6tIy4LgPlN2ZgJL+/Ih9/0TYy4XVNOUu4TE=;
        b=BODSOQ6Is+ddvTPAt4ZRPqQgWLxperMHCgayyTWqpnq82FOadUfAzG+906klw2PXOS
         7TBcK/n8AXQMkgHaL8K+O8YAJCi3yfoE8uqh9rcYSgGOQ9KGtbmM+tRiZ1ELg6L3P5Rd
         RP5j3vFhSkjveNonHSJFSCr3HKrUd9igzCIIsZoyLjUrUCxMnXdfFc8/RBcfreEwWEcb
         kq8X3bgtFNymtILNE2RkdDSkSfFzIEdraTHlFjunkRTwR/vBdqopNXjW6mujnubP8ACb
         yxpFJcod9rIt9ck+P5QONKmLYZzjWDDIiFBxDyPnFVoagmCjkBS+UYpwwjFrbnFNdwy9
         sTuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Z8aADKxY;
       spf=pass (google.com: domain of pihsun@chromium.org designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=pihsun@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IZ8k0m5j6tIy4LgPlN2ZgJL+/Ih9/0TYy4XVNOUu4TE=;
        b=NLwQpG0dB7YL12Kq6QUfLxOmmIMOcMx3CkBNxHtAOG9DqgW44TCSd6Pu2jVEhOu6Em
         ZFLScnKZy4urKrXuxhW4ADpB6+JFVawJuaJSxZuf+7uK5KDsb9yUnyWKiy6/3uVfk1ny
         ENpmUg6diJdYSwYaylPnI3eghMn6Z6WQHomit/d9/Fn336BeiurcRr5ke6Za3n+DArA5
         2Z2RAdroZq4rIIKSSpDTbWywC+0eQrRGYZM7xqaWf1Y0UR2hPiJtoZetsJS68+D0QneN
         jlhS/+VG7kkoilpZqDcB8zqOIXE26vb+5OjoB1XmcKyDc98kGQocFqGvc7LhTD+px2Ke
         5nsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IZ8k0m5j6tIy4LgPlN2ZgJL+/Ih9/0TYy4XVNOUu4TE=;
        b=cWg4gzaEUEy247PmZmhtIfpBqkq9d+ZnsYXtWlpmqJjXNQyX8X5+h/DkqRkC03FcRB
         32AoIIVWGcjf/Rffl3IWBZlgRP1+X+TvviDUEuueZLufS+hEic2IOGdY8ZDAaJAdhYNg
         +IFgU3E0I2xdXjfSIvNIYJuP3p4cD7A2F8HGvYeSVw1ux/AWMza5d+vP75OxJBuz1iys
         iCbnR92TGb0Mp2+NPSa8q/fAB78Ff9V1TEH+KlXsD00OxVAYutJIKZkYXJqQD/3guQEI
         H8m7f+HQGr7gOXTjasZ6bNmgCn3RVA5z9iTl2nuQ9gnATgRwIGOMzQvqNzlDW8afZGH/
         plUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVnAadGZKUfPsM9a53+TDYVR6NKYPK3/nUMLTwQX7WKjA7NOfQt
	cH7UgYZiRfgK6nWiaCh8vFo=
X-Google-Smtp-Source: APXvYqyvp5nBP5pYCZIp6Sesg4BV5A9rVSTMZcUovFrIpyAwojP3WFqq9AXqnn4rJzzKUswWkxSGUg==
X-Received: by 2002:a5d:674a:: with SMTP id l10mr47106627wrw.223.1575000324181;
        Thu, 28 Nov 2019 20:05:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6303:: with SMTP id i3ls6466796wru.13.gmail; Thu, 28 Nov
 2019 20:05:23 -0800 (PST)
X-Received: by 2002:adf:f3d0:: with SMTP id g16mr32223381wrp.2.1575000323664;
        Thu, 28 Nov 2019 20:05:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575000323; cv=none;
        d=google.com; s=arc-20160816;
        b=NxuUq2zNxHwtBXJkJ0HiUh6UqLRuyW/GlBm//fE8aT4Mo6TPGfwCtb/udkHFy0RPmT
         hwdtiKjuTo9wxgopypWQ2aYNvUul3dtfWn8nXpuYCCstHu2B916MDGsyvd8bX/ElNaxs
         rymDUud52KIMKdPFtVS2UU6KnQJ5kcWRmpVNo7BlDSjEhZq336rN6eV7vg87AyhhRvLW
         whWZO4vOX2tuXfSii1byaeUOoFM5YVaJrVG0SV+LEjB7hfu3VFFQc4ljSf4VMBSRUIuc
         /oDt6hhvKFyv33oXlju7HWlvxW4ro5qJBq1C1UNFYaZWjDjS5vriiYGRjjP0KkpNqjaO
         GwPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kSUVC3ggQB4xLQjsKBDHLkM4F4fy4M5PEtTRPWySnj4=;
        b=dLajSSHMiax6Em15N+jlKscUCvuhKeI9Qc+8uKag/wMz9A7D1crK1MaIqNUMehNd9a
         Tkt8d80+dvwsZalt10N6aU55w+3ZWAaAMAstsJrIaOkcxLrJjQCcF2AVJ8N3G6tdLilT
         /A+fiAve1YC8cOhjmgKJI3dJbZuHH9vd4RBen/9ao34iuvLJaXPTawPd9KtTySDggeW7
         g5UvP5kx4Rk771AsWmPzFqRoi1wQf0yDh/MS/A20F4g7l8M6cB8OinUVM39+cTDGGPDu
         ljRqMkTIuWcoUXeRyN5BzfZtofIsrwQQfR98vei4QDYPxyPVSJNGFUkVu3WIt84CINrB
         NIyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Z8aADKxY;
       spf=pass (google.com: domain of pihsun@chromium.org designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=pihsun@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id u12si484652wmd.4.2019.11.28.20.05.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Nov 2019 20:05:23 -0800 (PST)
Received-SPF: pass (google.com: domain of pihsun@chromium.org designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Received: by mail-ed1-x543.google.com with SMTP id j17so8233142edp.3
        for <clang-built-linux@googlegroups.com>; Thu, 28 Nov 2019 20:05:23 -0800 (PST)
X-Received: by 2002:a17:906:57c3:: with SMTP id u3mr59264192ejr.254.1575000323169;
 Thu, 28 Nov 2019 20:05:23 -0800 (PST)
MIME-Version: 1.0
References: <20191128033959.87715-1-pihsun@chromium.org> <d02f4eef9aa674cb36c1d90069a13e7bd02b7e40.camel@perches.com>
In-Reply-To: <d02f4eef9aa674cb36c1d90069a13e7bd02b7e40.camel@perches.com>
From: Pi-Hsun Shih <pihsun@chromium.org>
Date: Fri, 29 Nov 2019 12:04:47 +0800
Message-ID: <CANdKZ0eYSdPC2y5QxN1B7FshewXumrETQohbXrnvbovXMkSe9Q@mail.gmail.com>
Subject: Re: [PATCH RESEND] wireless: Use offsetof instead of custom macro.
To: Joe Perches <joe@perches.com>
Cc: linux-wireless@vger.kernel.org, Johannes Berg <johannes@sipsolutions.net>, 
	open list <linux-kernel@vger.kernel.org>, 
	"open list:CLANG/LLVM BUILD SUPPORT" <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pihsun@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Z8aADKxY;       spf=pass
 (google.com: domain of pihsun@chromium.org designates 2a00:1450:4864:20::543
 as permitted sender) smtp.mailfrom=pihsun@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Nov 28, 2019 at 11:54 AM Joe Perches <joe@perches.com> wrote:
>
> On Thu, 2019-11-28 at 11:39 +0800, Pi-Hsun Shih wrote:
> > Use offsetof to calculate offset of a field to take advantage of
> > compiler built-in version when possible, and avoid UBSAN warning when
> > compiling with Clang:
> []
> > diff --git a/include/uapi/linux/wireless.h b/include/uapi/linux/wireless.h
> []
> > @@ -1090,8 +1090,7 @@ struct iw_event {
> >  /* iw_point events are special. First, the payload (extra data) come at
> >   * the end of the event, so they are bigger than IW_EV_POINT_LEN. Second,
> >   * we omit the pointer, so start at an offset. */
> > -#define IW_EV_POINT_OFF (((char *) &(((struct iw_point *) NULL)->length)) - \
> > -                       (char *) NULL)
> > +#define IW_EV_POINT_OFF offsetof(struct iw_point, length)
> >  #define IW_EV_POINT_LEN      (IW_EV_LCP_LEN + sizeof(struct iw_point) - \
> >                        IW_EV_POINT_OFF)
>
> This is uapi.  Is offsetof guaranteed to be available?

offsetof is already used in other uapi headers
(include/uapi/linux/fuse.h FUSE_NAME_OFFSET).

Also offsetof is also defined back in C89 standard (in stddef.h), so
it should be widely available and should be fine to use here?
(Should I add a #ifndef __KERNEL__ #include <stddef.h> to the file?)

>
> Perhaps this is better without using another macro
>
> #define IW_EV_POINT_OFF ((size_t)&((struct iw_point *)NULL)->length)

Clang UBSAN would still complain about this, since it's the same
pattern as the original one.

>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANdKZ0eYSdPC2y5QxN1B7FshewXumrETQohbXrnvbovXMkSe9Q%40mail.gmail.com.
