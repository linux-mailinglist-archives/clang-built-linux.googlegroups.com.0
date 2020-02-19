Return-Path: <clang-built-linux+bncBAABBPWRWPZAKGQEAQD7BFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AA9163E21
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 08:50:23 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id h87sf19251774ild.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 23:50:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582098622; cv=pass;
        d=google.com; s=arc-20160816;
        b=pzTNGUz1mB0nG0krS1LuibtbVxw35OPhSlAO0LxwEuf3cRQ2Xqxy7JUxyxl6gzKvL5
         tts9qzPHhfYtSl0bKWYmyl7lssIKnvGSvY9nKO0djxGBpoaIs7024QhZKfpmy/v/p4Lr
         ZTUABVXV30xkISGqxRaIcQeRsBHK3RV9v9ojvMUJwAI9kNV/HVQJ0jjfcLlbYkBzKdI0
         FaoLuP9wlJzGaT/llZwuARQvZpn4RPTb5rVqmvgjgyFjnHdBl4TrZvvswzU8KOZSHy6u
         5FecchuVSjsxY7RosYZhD6VgdxIhbiJyMh442P8ePaTalCO9F3P212CXb1RMIMT3TRVY
         ffxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RN2PkISORl3FfBJeVnJOplu/Tqyd+NRo1Y/mwkyGyQI=;
        b=w5DfN2LOsZtTuH/c01iSs3YeAmTawG6rWIQen9N/3c7YPBZXP8C3bt5QzszdOf3lUx
         xdwG4ejpEGFpj//8cUU4xV1bIZ7As+Y8YP3eNlwxyZOamkd4RebcugVZRp8p5aT4AxJn
         UP+xHSRM9tTYQTe3c9HETC3TDjfRxdwtMHt3T+ctxlStwNosDevV+Gaz9n31DC9jrutk
         2ptztuduKSRYiq42p9IuJTKCWCunA8a9GwoxoOhbR+nxo1M1N9P/b0bnFqJEojmKIAQb
         Duz20HeFbnv/gL6T08vy++rWgQFtnjVkZX3I5l7l2tiE3jtzT+yi8ys+VvMyxFSf1FrG
         1nWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vDMncoWz;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RN2PkISORl3FfBJeVnJOplu/Tqyd+NRo1Y/mwkyGyQI=;
        b=spfQGSu0Vn4sUTYBjil469KR/GRkK/xhzmBKKdayb2jdyfUh/uPf7W6xxiSyF8OwUf
         Ni/BWRW6237UkHmevrP0KwnA6+zouDwflgtLsZAEfBKYBXSUgAqhjOToN/jOuwp/hs6+
         m98SK25tZkR/sb8qv5jPrtnG2e8qIt1uabayByy1v9n4AqvGn9OTiI80J5VdGunM44P2
         +ftQLqidb2N/CWAcQM/JqDHPnd/q7vpjz7Ff1g8Ex0YmrDd4b+EtjuON0v1ccE90rcxj
         J1gtK6VwPax/fEPDjCG1yIfCikYp/LIl6EZbMRwagZIYDci4z6iU6ROerUsSHP+VHi8z
         qwsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RN2PkISORl3FfBJeVnJOplu/Tqyd+NRo1Y/mwkyGyQI=;
        b=YZk/cW8wfiyZdQeWZcIo0zlmdsdcgodnX2bQuXZ+ZrdgVUUsXc0BFg6f7QQkJB6Hoe
         QDKwKfMV5V/rZGcF7CNAT4rRON9Yh6jPJwUKL7NoF5Y2u5uQW2gqatYsZ1kM4mgl0E02
         C8Vc96suisvdod3KTi6148dO21cwQCOPiA0s9IfcnkopYS7w+C5F5wwkn3FA258jg5r6
         qxvO/UxJ/5TJSH904hr7m94JRTINZtiifeTpzw3wHnzPNHcY/cXrjgc7E061aO4qvjvf
         GNZwZGj1Y/ooJ359VQbvu9k0m1khoEMxGrK4d8/HTNpUG1e5GHjDH6keo6SLu8wp/DfJ
         4RdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV1GOdeQijY7LSKWvwetDtOyzc6MnsHCGNyxxV9iCQYb2VOIhhN
	AlEDNG5ppxW6QOm7eSnYz5A=
X-Google-Smtp-Source: APXvYqxBcBljqEmJZRjYaWxkhz9sTNrVIf+Bixy2DiGyuEpLwe48PitMbZaobp9LKq634aMlPp7/5Q==
X-Received: by 2002:a92:5cda:: with SMTP id d87mr23795159ilg.100.1582098622552;
        Tue, 18 Feb 2020 23:50:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7205:: with SMTP id n5ls3385113ioc.3.gmail; Tue, 18 Feb
 2020 23:50:22 -0800 (PST)
X-Received: by 2002:a6b:b745:: with SMTP id h66mr18413379iof.128.1582098622238;
        Tue, 18 Feb 2020 23:50:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582098622; cv=none;
        d=google.com; s=arc-20160816;
        b=iEwF9I0wlDtKEKHwHv6tCewSkkYV4RrVD7UvzsPwyxApkpkqcAH1GFI6Jzz0hDbr54
         iTdoTfzj0DgUB5/iRtZALisSb8C7MR5rK2O5zvoUnZl/pYLVN5Cd6uLDVJTRSjCtRyfN
         0fl5ulfH2drhM29DqfXYsyXKFfM5IQXlKZIMCyXxp0OF3aAftD5aGv0waS/dmr7DNHZ6
         GGfoanvWhkv54xKHfsN9vUk+fItEfvo5SqAygkqNK1233Lysbryft+OY/3SfLHEKwaq6
         8XKa9xkGM+yt1NUW4ZAzsvGR3aOf0zJk88XL6tpFOu24nQ0p4RPdgXbu84tV7f6mn+hT
         z+pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=3Qtr9accashv+3SHmlGEGEl1T0BeqrhqUAYTZaMeg1c=;
        b=JZunyreFIGLrf1yFWKlDvxb5MRSAnId9u+CLWWVcA/rHV4qCeyyZR9VKuRQEYqUs58
         7YLRnakmaLnrEB534JBgIJNEJ3ExoeBdBIBOMylsu9fhUEu5CqOr+d5VjBo/Y0Z+zbFU
         5eF3Z4lSnSU0rXVNdam0EPQ0B2MkPs6GIj+IwqdUWoh+b5kFKKJeqRM2YSNx7rjhiMKj
         agjmw3OrKswKvSvS9BcNYqzThobTcvE0yyEDZTjPMTD7APvAa8mpay6vC/bHthzfLYRm
         6H9JWBee1GbVREdoelQPEEvDm5ED5jD84TvQF1URtuH1cx915Z+dtsTebHcTlQ6Ns628
         9UEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vDMncoWz;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p9si44509iog.5.2020.02.18.23.50.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Feb 2020 23:50:22 -0800 (PST)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 46494208E4;
	Wed, 19 Feb 2020 07:50:21 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78] helo=why)
	by disco-boy.misterjones.org with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <maz@kernel.org>)
	id 1j4K7f-006RxB-Dt; Wed, 19 Feb 2020 07:50:19 +0000
Date: Wed, 19 Feb 2020 07:50:17 +0000
From: Marc Zyngier <maz@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, Masami
 Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel
 <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>,
 james.morse@arm.com, Dave Martin <Dave.Martin@arm.com>, Kees Cook
 <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, Nick
 Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, Miguel
 Ojeda <miguel.ojeda.sandonis@gmail.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 09/12] arm64: disable SCS for hypervisor code
Message-ID: <20200219075017.41e17f08@why>
In-Reply-To: <20200219000817.195049-10-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
	<20200219000817.195049-1-samitolvanen@google.com>
	<20200219000817.195049-10-samitolvanen@google.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: samitolvanen@google.com, will@kernel.org, catalin.marinas@arm.com, rostedt@goodmis.org, mhiramat@kernel.org, ard.biesheuvel@linaro.org, mark.rutland@arm.com, james.morse@arm.com, Dave.Martin@arm.com, keescook@chromium.org, labbott@redhat.com, ndesaulniers@google.com, jannh@google.com, miguel.ojeda.sandonis@gmail.com, yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vDMncoWz;       spf=pass
 (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=maz@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Tue, 18 Feb 2020 16:08:14 -0800
Sami Tolvanen <samitolvanen@google.com> wrote:

> Disable SCS for code that runs at a different exception level by
> adding __noscs to __hyp_text.
> 
> Suggested-by: James Morse <james.morse@arm.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Acked-by: Marc Zyngier <maz@kernel.org>

	M.
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219075017.41e17f08%40why.
