Return-Path: <clang-built-linux+bncBAABBOUIS76QKGQERISO5DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 578DD2A9F51
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 22:46:36 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id f19sf1328102pgm.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 13:46:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604699195; cv=pass;
        d=google.com; s=arc-20160816;
        b=eA6KzTs5+3jy6+Pg9ZrXoN77BH7c3Ce+t+7Go1Kf+doCh9wtQk4PlMfOTqWlwcnhdh
         1t/4rkVrHZuCMOPNLQ3bypDx7CH74MGWglfITzJJumTEBS+0etiMRNUGWioZO3dUv9Bh
         uWM7OrXR/0/52E00h2OwI9Zr2jMZBWz1cJIREEFO/6PW4NQI+WWPj3rpuZJEWT7q057w
         h+FVn9JQME6hxEIgDzmTxbxPK5HYO5bYlJ0Yf/IDfOQbghfneAkGrOf+O5K78Q58dvGZ
         wMknodV/gOoakoaRGuzdrXuXqElttrgqr92gpzY4MyJQBQV6PM266sFPV+SntZcg+wc1
         f5eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=KJNRD1rzukKyOvQDtQQ0RPzAcY9zX/xUxc41r9AoAHY=;
        b=pOfITfAyQlGmcLXNDAoFAZUe7vhsFQxx/IwbFZK5Tev4W1W+NVgyogpb+5QfdcAts5
         DIzIY4tzW++hWOb4a8QnQ1T3K+sk2zvwRkVDemhQObYjjBQtSSvVcjhIX24d/D/IETy6
         cAJnQUAUX1wA2V7TvxTa5jvS961PvFm4CH6ZyOB6XZZNK0cBH4rNpUtiWeLFNu1218OH
         NZT5gBApVGj5GvkYrvxe2TRq1+d4LVHJaGAf/tkKfxpfRky3iXmu864Pyr3MU88f5lZI
         kWCqpOll4QiXM7HqwWAiyYa/ShQaPnDy+ti8hyfq22wz4eVxQb91eDUMx/11gqzFsKQT
         NUJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=czGPx0mx;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KJNRD1rzukKyOvQDtQQ0RPzAcY9zX/xUxc41r9AoAHY=;
        b=S1Ke93paB8Tmjn9FB3OI6gqIo/foYsABB0+8FiQb21V1EZm87K0QrJbAFw/flYpSy2
         yOAkN6CEx8GNQA3gJPKxpqe1mt81MgmOK28UDN0DmKyrPa3pXCX7QHs4KMv+1nt2ECrM
         FRT+KdxTQfx5yMJdYo7086XUHHsCMmviF0QAqJ1JJMjAODw8WRVVIf8I+7icnbC5lED1
         tgQknGbJoOBi2vo+r1p+aKrzG/LTkKjhXaHwOcoemzTPYDdRtesM2WeMQd65F+6wsvv1
         gst9xgdm94aRmImYww8/lp+ivCys4jpntmeBhch3+exDzpODi4IXV3wQ0N9JlF0qaPpK
         PgxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KJNRD1rzukKyOvQDtQQ0RPzAcY9zX/xUxc41r9AoAHY=;
        b=Md+WFuHWf09rwvk6CJYSWiK6mehGFMi74mnItHxS8Wio25MixWImz9guwfK1eHHo4K
         Oz6HwjkyZRRC7VNIqnfi8UcRCabQ973FWFQ/1I/q0JGyJZg8wKxno9klaDJfm/iWr2WO
         7MagbtX6IFcXfXNJQVLbQ8oBpzGaPnIoW/0E5lpuYDSz4fMIaWx4ANxX01wq44QaVXpj
         qaTuFlpMuvjgbHzk4RPpld/CWNUYS0B3lctgDp+t13NgJ9zRen//qrNbzOfSXxUwpXok
         q0kzCst2yqA7R+YUnBC9l/z2siC4zEC4N5UHxtW7NFHf/DbQKOXFtD2yXQO7b+se2/H/
         Swbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TBs47G9GT8CB7XSSzclHQ3xmK5UeAitSHRRPmhohlwhlieCh0
	TRabI4A0MruIrU6NpVNurig=
X-Google-Smtp-Source: ABdhPJxf6siSCkjzVd8vK/SolMKBjMfAiDPGlK+d5ewnOPhVfyN+Gs1/gkYL1WcCM/8ynDReQRr/jw==
X-Received: by 2002:a63:540c:: with SMTP id i12mr3434259pgb.32.1604699195087;
        Fri, 06 Nov 2020 13:46:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a107:: with SMTP id s7ls1593652pjp.1.canary-gmail;
 Fri, 06 Nov 2020 13:46:34 -0800 (PST)
X-Received: by 2002:a17:902:9a4c:b029:d6:1f21:8021 with SMTP id x12-20020a1709029a4cb02900d61f218021mr3119290plv.58.1604699194620;
        Fri, 06 Nov 2020 13:46:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604699194; cv=none;
        d=google.com; s=arc-20160816;
        b=xB+GcQATSVACcaU5YYxlnCzLACT/B4VH6mfK0fZKabmx29nwdAg8eyHQs8JNyoaoBt
         gRqUyYHsqPrU9DfTB67Z8SdpxojPCjNGfgSfu2Emiq/EhDNFdrq8M2dYSVV/CnIj1ZCR
         +QwjojEkantRv8SEMuX4CIfwHGQTlSHUh8OJ9Nw4kyWzqeGVZcYm6CR4SJ/MVckVjFvO
         imM0OEhsq5fwxZezBzpLIf7+OpN/54t+rCTHXoZkpoyT8sc5zPnXFHF7GOFsm6tClhJ4
         6bXYwPqFvuAI/lGn4aU4eFNcnbGiXkoWWX7BvKGS9+DT/Ew+//oF8/8qlrGRfWfGtqkk
         Ojag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AmmxWXKhs3I7xgkqiz5y0nMKngHBzqJm4duuB3jMyNg=;
        b=V+TFwU2g0mb6fh2p1FBmsn3W8LouRDTY7DVTQPfw9XfsDEyf4EjP4X4cN9AjQJNC6+
         KtP8TpzOOGV5lqwmBhgYQYrdZ7UUvKjPoiha/ovC5FfsIxALPMcdiMxajlFBxRE4XuB7
         BMI/SomYQzVwIdG3RIgNvd4NBSWKnKcRHDu3O4vSYeZjd9JNZyhVAazI0KOZPVXW3jRM
         YalDpBVjm3yMzWgtkIHN+si098dxZKzHZXM7I+GZkT8oTYtn/Tky3R+FJ0iTh32k30NG
         O2Kv5wSuELx5ZmLd4TVqk8Mq7xXizbTVuS+6LB45sgbioqFpeLH/Ph4bFGQh+n3M/FKG
         yKhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=czGPx0mx;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d2si256098pfr.4.2020.11.06.13.46.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Nov 2020 13:46:34 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CA28E206FA
	for <clang-built-linux@googlegroups.com>; Fri,  6 Nov 2020 21:46:33 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id k18so2638515wmj.5
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 13:46:33 -0800 (PST)
X-Received: by 2002:a1c:b746:: with SMTP id h67mr1556341wmf.43.1604699192298;
 Fri, 06 Nov 2020 13:46:32 -0800 (PST)
MIME-Version: 1.0
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-2-adrian.ratiu@collabora.com> <CAK8P3a0kXkoeAbNiPH5-7-73V2nAsnCMkQSrPZq4ysVYNyE-WQ@mail.gmail.com>
 <20201106180311.GC2959494@ubuntu-m3-large-x86>
In-Reply-To: <20201106180311.GC2959494@ubuntu-m3-large-x86>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 6 Nov 2020 22:46:16 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0FkF2y+N8rvoO0GbeCukzYX09q_PesUKqhJ=qczZs1gg@mail.gmail.com>
Message-ID: <CAK8P3a0FkF2y+N8rvoO0GbeCukzYX09q_PesUKqhJ=qczZs1gg@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Adrian Ratiu <adrian.ratiu@collabora.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Russell King <linux@armlinux.org.uk>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Collabora kernel ML <kernel@collabora.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=czGPx0mx;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Fri, Nov 6, 2020 at 7:03 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> On Fri, Nov 06, 2020 at 03:46:36PM +0100, Arnd Bergmann wrote:
> >
> > If it is intentional that we now silently build this code with clang
> > without it working as intended, that should be mentioned in the
> > changelog.
>
> Maybe patch 2/2 should come before this one? With that patch, we are not
> even going to build this code so this patch purely becomes a "we do not
> support this GCC version anymore" cleanup patch.

No, I just need to read properly, I somehow missed the fact that there was
a second patch in the series.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0FkF2y%2BN8rvoO0GbeCukzYX09q_PesUKqhJ%3DqczZs1gg%40mail.gmail.com.
