Return-Path: <clang-built-linux+bncBD2INDP3VMPBBZE72XZQKGQEJ7UDVGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D2D18DBB3
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Mar 2020 00:21:09 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id n26sf6011931iop.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 16:21:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584746468; cv=pass;
        d=google.com; s=arc-20160816;
        b=mHUg5F+w3Q+rqobCuzYN9/JmEMkk1sbkDkHHDWOJd6b/TXF0171LeOfFLuvRZS5OBK
         2dxE1ad3W0pQAsvNRTPij/RdqpiB3tpqUKsZ9nxgY5wiyM6+DebwN8cBuFh4DsDXHPps
         /7kAsGsO8l5ckp66PQnzfugJKRV6C1UiTVkIkqavPaqzftFY4dzF5ls7INJr6g0iMmiJ
         c01DWZ4ZhAQGwJe3AHKON915mn3bjjAW25tK+WuuKAHK5ejWmtdQsOffryesaRXMxR4O
         DcKqRCIqY/1/Ghph5YZyPTDo75tUp/M8wez7GSy402YGxPRzhumxwEtHajtzj+4CsFUy
         uDHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=nTkAKuymF1Xs4lnFX1CvTpKRn5MpxrioQi66Njd7gKo=;
        b=qQKvIgY1rCkWCbqM/fS4eceCEE6XgCImr+X7zncL1SS7x/rVnBlLoFWiL9AoV63yXw
         uZEZRnvHttvPhL4VqiEE9m6f8Hwxap0FI5fS2XyUJMG42n1/dS4aaOglDUl//b9lq044
         VYWWxEGif3tbnbndtU28MfsO3NlX2mKaOBiWpFJ9VYZFfOMXiXY510Mike9L+SqOHr9z
         uZ1wa3YOE6SSibbwZhk5ijiG1F5XGQUM5Ht5dUPLNwFu0yj7TToZYOI9prHtvXAKgsmi
         NWFqLOOyZA2L+2zCqf71DUkP2Qzp3E39fjpZwocIjkqS4lqQ117SlQp9cpNGDis2sA7C
         dYIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Yu/8u83x";
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nTkAKuymF1Xs4lnFX1CvTpKRn5MpxrioQi66Njd7gKo=;
        b=PLsAu5zqzweY2GmO9AetWRsjfRqHEcE6T6/vjc319/5iHFMcDztiTDmoWcnz7k0jvp
         6HagHgm0FM//uLAoC6r9ZjfGCDDqx98hHERfKSoDgC1/Qw547HbfA1XLey4EjFAubtht
         HU0pvRRwp52I5kSJimSojEhP1fVpvBE3qkjbkfprS8Uy7hE0GZbOrSi2iWtsjzADOlSA
         TFLTZTQiLW92F75/yGoqKEd2D4gjW/jyTtc11GO4t0oKy3Z3zs7TPyc/zjq3qHN5BbCf
         5rWaLpEfHmhfFWch+EqgiDyfal3NRLf9/WOAw/hyEY3LD0rfVcJxXhc8XxEYmJS/1hIs
         11OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nTkAKuymF1Xs4lnFX1CvTpKRn5MpxrioQi66Njd7gKo=;
        b=EmW0uJYPbfJwVqNj/8RdjLsWvBPulNkFNHOFgNvZJsoQsO6a/psIAJSiZTfpY2agkH
         FzHbr5qkEk2dRpVNCH9JbbWx9Wvg+Ztr0YTli7q2aUrDOKZ5dEmpJBnCcSnwm7ckuAFC
         dTeXoIy0Ss5z5ogEaJ1q7V3IW/VQ7JGUDd7faJEbRoyCACelTLwDi3BGWBUehupICYdC
         AU7BExsy7BK4kltsepsY1Hch7tngyG5jEHbEnOcglFbbxwLYmzA3MimTpG38ZymiQ+Oe
         pYW9y9XXNLKHY6yGXtBj94ed2L0bRKnXwHO30xn7nc1m6MEeLSQ5HjuslARItJh6kwcQ
         2FIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3C+VCEMRl1eNkbaJ8PgA54tGaKsCNhQxtc/aNMy4GJBrwTu6KR
	V6WbHDn236VfdD8Q/fZLYYk=
X-Google-Smtp-Source: ADFU+vs0WZ7wXr2ngLArg2gx31LhsXy+qwkDZeLynOGOEiUBZ1N0bAacASmDMyZKA+T5/66Su4Khzg==
X-Received: by 2002:a6b:b4c1:: with SMTP id d184mr9644407iof.85.1584746468684;
        Fri, 20 Mar 2020 16:21:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3d8d:: with SMTP id k13ls1276653ilf.5.gmail; Fri, 20 Mar
 2020 16:21:08 -0700 (PDT)
X-Received: by 2002:a92:bf10:: with SMTP id z16mr11209911ilh.87.1584746468354;
        Fri, 20 Mar 2020 16:21:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584746468; cv=none;
        d=google.com; s=arc-20160816;
        b=HmCb2jJ+TaVYpMaZmlEaGqKgrOTpFtKu04XwjGu/T4LFmZsNNMkwDX/ZyGIsfU/aGg
         OIDxiZTkI+cnjnlfO0J3uQzPC+qqAjzhpVy2K1RRCRdPFPwa2+HE8UD/d4ifQJDH7nbr
         aHDiObYJQ1yphs/C0tSa4uBwLaOlaWsyYZHwEJDGmCFLICb3HSnNxjp2X4K/1hhyXoXB
         0GzrLkupDKk2FgbJUQOAGrkMKhpEA/a0qOZnP36EoO2NG67EbQHWclafZ4zCXlkg6Nje
         577zEa60eDAhncBkbFQy1PBBb7kyCUsUfGfNigZOzdCyqeAMHGS/YxGenV12Ink0d6yV
         VPnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=clkZQy76N5lqDvPEfomSFrpTluUVK0zQr3gsx7h7nC8=;
        b=Vv+mkkLi5Ij6mdCl8i4O+Qr3v/e8taA/OdSmsiCd8dWJfqqkaRyJLBDMX52GD5etJs
         ASvEzdmpPgIzbuYPnilIzvzY/AyaGM2Sp8I2Cxj10HlByCOkuerQQOc1Ojhy76+B7k9j
         SlKfRaudBsbY1tPEotOv1c3lDIjsrb/WfEfwgzzktvSkSD0dKpxoVWykMyxTHZOtMquC
         xxni9ZaI7TUIDrPcHTc28KQKP7Pa8r19riYN47c29igGhXMHCA+F2roFZlAqo/cRLeKX
         ok8N81+CdWg5xZyo8GtRHq/341+5Do31LG9KPJ37kzr3OqGJo5LxRtqW21rDyTfxBdfx
         Tvxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Yu/8u83x";
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id v13si426130ilg.4.2020.03.20.16.21.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 16:21:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id m15so3139128pje.3
        for <clang-built-linux@googlegroups.com>; Fri, 20 Mar 2020 16:21:08 -0700 (PDT)
X-Received: by 2002:a17:902:8e8b:: with SMTP id bg11mr11012475plb.138.1584746467739;
        Fri, 20 Mar 2020 16:21:07 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id w4sm3427639pfc.57.2020.03.20.16.21.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2020 16:21:07 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20200320145351.32292-19-vincenzo.frascino@arm.com>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com> <20200320145351.32292-19-vincenzo.frascino@arm.com>
Subject: Re: [PATCH v5 18/26] arm64: vdso32: Code clean up
From: Stephen Boyd <swboyd@chromium.org>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>, Paul Burton <paul.burton@mips.com>, Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, Mark Salyzyn <salyzyn@android.com>, Kees Cook <keescook@chromium.org>, Peter Collingbourne <pcc@google.com>, Dmitry Safonov <0x7f454c46@gmail.com>, Andrei Vagin <avagin@openvz.org>, Nick Desaulniers <ndesaulniers@google.com>, Marc Zyngier <maz@kernel.org>, Mark Rutland <Mark.Rutland@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>, clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, x86@kernel.org
Date: Fri, 20 Mar 2020 16:21:06 -0700
Message-ID: <158474646622.125146.3263940499372231797@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-Original-Sender: swboyd@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="Yu/8u83x";       spf=pass
 (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=swboyd@chromium.org;       dmarc=pass
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

Quoting Vincenzo Frascino (2020-03-20 07:53:43)
> The compat vdso library had some checks that are not anymore relevant.

Can we get the information on why they aren't relevant anymore in the
commit text? I'd rather not find this commit three years from now and
have no idea why it was applied.

> 
> Remove the unused code from the compat vDSO library.
> 
> Note: This patch is preparatory for a future one that will introduce
> asm/vdso/processor.h on arm64.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Link: https://lore.kernel.org/lkml/20200317122220.30393-19-vincenzo.frascino@arm.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/158474646622.125146.3263940499372231797%40swboyd.mtv.corp.google.com.
