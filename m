Return-Path: <clang-built-linux+bncBDRZHGH43YJRBSVCXHZAKGQEBTFHBZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7AC165A2B
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 10:28:43 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id u8sf1478260wrp.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 01:28:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582190922; cv=pass;
        d=google.com; s=arc-20160816;
        b=cnpQJgwgaY5N2eaoxoh9VorTwn1ta5b/z8inpYqN5biMSGsp/vKs2x3Qa04kxN9dIi
         m9LfuEp9RmBeKavTcEK7QFbK4GObOBUHSOwLanAQiWbsL8bG4vuJO5RLyc5CGx6qGk+5
         wFwt+wWof6lei5tvJkWolCBpdbaEpvqUR2KT8FadvHZP/C4SgKVLwunRdc1Bgz52mvbr
         ISeKrWiFIJF8z3sAj9Q4heF7vDYF/fGQKh9wDuraBbMp2RcPwz89JmwehP8G82EcWWnb
         AuXX5jHOxaZl8EbqScJZPJZ2WlIzn5nXuOpLdfqvwEidjyBaB29qAf8sWSluZN7GPHhI
         wsOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=g7t4CiBF+edad4t57R5lPdahdrcHplH7j7I1f9CVqzE=;
        b=Yh2N5kwjIMHd+LHkhNQ3EiPSu3WFaU6aFCa5e5Rz0Y0N3n5aFQ6c7N+FyvTfrSJrqa
         NRKRumntY2JTAsNiOvbJKAbOfSNR5+aV9KOTMPfqlcFuObMp+Ytbdix03juH4t1RPNGm
         6mE9+73swq3mk6lipoW0ZVmeCc+XIpWBsST6HrefkSOa8oxJx/B5HYma55apwoIH3F5c
         TOIVyRZIhy3Ora4ej8BiH9Sjf2VV0ST3Bp6y9eLHVmOkJyLo4T7sSyJHHglDW7aBQRxQ
         U/wmjRIP9lp7KfR8U3CKcWJhBC8cempgVAaQ2ngqQf75J47Z2bxMUOt9yjNP+bIoH3s2
         OsFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fgz01I+q;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g7t4CiBF+edad4t57R5lPdahdrcHplH7j7I1f9CVqzE=;
        b=AYQ5Hjar4hUwyLLpk4oCIyEXMeAoTjHMmyn6q5Lx/73or2GSiWmY3RfLu9nUf70F7s
         ocF2Ug1lsJp5BMiD4tY41k6vd8DjHBAF/S4rVGeYHO29isXq3XkW/cQfauw4WHuVEplC
         8AzhPt2FAScLgeEZijAzbCvOpLxIebOri3eqt0Tqty+soOebJdxQgHXzhc05mJpmPSn7
         n/mPUzOd67N+LVAoioVfTO+z27niRxm6PiqZo5/VUyTWfGTNhdVTFy/o9DkDwydikemy
         OB/pV0+ysIkT4+WQGxqVPGp7vnBovLWgc6RDsxnKpoUS2PEOfXKEy2ErxXJzGkWzMwz1
         pF+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g7t4CiBF+edad4t57R5lPdahdrcHplH7j7I1f9CVqzE=;
        b=QR9dMhKa9NgOG1TkcrzOxLOaZkBfL1sQhh1J4RDOGTrSdIOPfsA6qhS2VHKMpGJmdQ
         756BiQi+cgj9ABnuMsNd+V6TxAGETnSLD32sMbEq7hZ2UtewT6KcMuuACjH+dhoNhUVA
         BFi3PAsXBSoYbtmoRmwehs1xEgDjbzqdRJazwYR1jGE0nbxPFbIEkwnLi1GUife0h/8H
         yILhjRWsYeSjmvlVxMUpaHBQOfygJodVdDl36Li2fz3reiNwnKjW82iezhFi8W2BegX3
         kw4fK233GrTT4zEa+DdkGBN/tcuYXmm0WEF4+D8HP5bVT913Des3tgOW4bAQF3GBAvZi
         8hdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g7t4CiBF+edad4t57R5lPdahdrcHplH7j7I1f9CVqzE=;
        b=sW0STgtRR+jzThl5JadBVuHrLVbmTy8HoKqIv9oWbsya8IPARDIGsEGDrduXrRFgOY
         0r97jZf5ZlUrsBfAT1I09Ln6t3gKeLqi9LbKVE8DaIQndyogXCEPgBsATzb1pJ+nZIaz
         qKw8ImcWlpA2/7IZb+/c0BaZ7RygkoZxURZbbQ5o1juaIQ8fVCmkUROtOxpK7kjHM6pS
         bEb6lGVmYyuiGzvMnLKGDyMoD2Rg9sZ+LQZHLLb9pT7wRxtAPjU78KpCqdFcQXv22Rdw
         BpOrlpDr5sKdR/xOIGl6dDPsByiS1qlkYokO8SFUbjMxmGhezh9MjgAenweC0v2PQCiy
         bACg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXm7vbuQHp1TjqsQoXgiuoWdspaTWVNXyM6wBTQF0r28YpSStgt
	O6cc8goU/gIxh/v8IusSEGU=
X-Google-Smtp-Source: APXvYqxnzoSKpIlbWZh0Et4oXmsyMrtTgvMIh+yPGWRilTF4YH/4TojLmYR+9MgMd+1iWV2EwLwywA==
X-Received: by 2002:adf:f349:: with SMTP id e9mr19041372wrp.394.1582190922818;
        Thu, 20 Feb 2020 01:28:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7e50:: with SMTP id z77ls615997wmc.2.canary-gmail; Thu,
 20 Feb 2020 01:28:42 -0800 (PST)
X-Received: by 2002:a1c:bc08:: with SMTP id m8mr3463425wmf.189.1582190922156;
        Thu, 20 Feb 2020 01:28:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582190922; cv=none;
        d=google.com; s=arc-20160816;
        b=hLSN9qaGhPnpflzEdIrAhHdT2hV2t2sr82laikI6UexYKv8/3en8tY5rZy1pmnJypn
         oCEke8zdmb3LHqD62GVih2BAZCw+LHCUmLdh5l6zCB3IqSPJr9U5kcdjp+oi2Ll7l1bv
         QJbaeMRYJFQIOmQElpAb750bRkadG5U8MpxHnjSC65g1kpGZcH+CE7yrA9JF5jID/Og1
         9kl7nDLa5AlO4RDxEw9cX63GrEZBLuK+uG+9IbjxHmJKjfGjyGBbld/2LskWT3QhyHe9
         2QjCXcbUIK1z3d+vvxaGsChOC+vXJ5lc5MVljIOjJ4rWmDZsxLvNNAXcdI4QpC0yeYwZ
         YNNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aXBYI7iN04ln6Ion90FgCxJnmbc7ifsuLMedAnCxmZg=;
        b=DzTPa9bZyLBCbDZ2QGFiuHBJyDRbKBeQj2T+rAfoh7QCTWPzH3zti9fO5A2cQeO0De
         84Nd26cGESp73muv5/UaSqA4JwxpcU5Ug4FLEkVlogvzGnDgSmbSHWz4u5cSKH6ZkIKX
         BWZZu/bPiL2bJ6XIiSBJ56gAT2UUm1O9d9ru0inEcYS5z4k64PJV8VGfPaSNk3YS7RgE
         CyuMq+2/8YTdiPbN6Vmxpvm0FAj8z/Mws1lvXO9Ku+lMmxkJRdv1Y/Wbg479IDOxdBsl
         gMmY7jdORPTkBnL5Q/sbVHCFCiRqNv3MKfkjPTi/t6JunvWNc/yCATFrFv16vNr4XtBm
         vR5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fgz01I+q;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id u9si119542wri.3.2020.02.20.01.28.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 01:28:42 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id b15so2531925lfc.4
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 01:28:42 -0800 (PST)
X-Received: by 2002:a05:6512:78:: with SMTP id i24mr16504662lfo.10.1582190921659;
 Thu, 20 Feb 2020 01:28:41 -0800 (PST)
MIME-Version: 1.0
References: <20200220071140.14080-1-masahiroy@kernel.org>
In-Reply-To: <20200220071140.14080-1-masahiroy@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 20 Feb 2020 10:28:30 +0100
Message-ID: <CANiq72kqxdGrZO7NokY6Zkh=e8owBVJCpK5DxWLnwiuxyzCybg@mail.gmail.com>
Subject: Re: [PATCH 1/2] vdso: remove meaningless undefining CONFIG_OPTIMIZE_INLINING
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Arnd Bergmann <arnd@arndb.de>, 
	Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	sparclinux@vger.kernel.org, Andy Lutomirski <luto@kernel.org>, 
	Borislav Petkov <bp@alien8.de>, "David S. Miller" <davem@davemloft.net>, "H. Peter Anvin" <hpa@zytor.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Fgz01I+q;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Feb 20, 2020 at 8:12 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> It it about two years since 28128c61e08e. Nobody has reported a

Nit: "It it" -> "it is"

> It is ugly and unreliable to attempt to undefine a CONFIG option from
> C files, and anyway the inlining heuristic is up to the compiler.

+1

Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kqxdGrZO7NokY6Zkh%3De8owBVJCpK5DxWLnwiuxyzCybg%40mail.gmail.com.
