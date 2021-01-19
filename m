Return-Path: <clang-built-linux+bncBAABBB5BTWAAMGQE6TGK7LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 998A42FC269
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 22:35:04 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id g15sf10940725oti.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 13:35:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611092103; cv=pass;
        d=google.com; s=arc-20160816;
        b=ygYQS74Mj3vb6SZnZYXqxTk2kWXiZYZtK1yZw+21MdXSzFE88/DDTrrHMbBKEbKPUn
         GZiSxvZEidffqZ2OjWbAkzA4n0DuNkb76d0r3Gk6+TnwcHP706q2Kc82G5hSkiTtv4eZ
         evGknpYnHQ2wTG2l0khTeRy044PnaQ7bTJtitdg4MHBoQrvMFQRoERZ6LDwEoHOKUr4g
         yNK1LeZ4bq2p7uo+bDyXmxsiFqapST4WxUueC91heIbuFT4K/n94OPEkcvV6j55mS1vf
         S/x/y/mwo3hZ2hu86ZMRGNAFUk4IJWXgOjRQZrf9KW0ZWz6urUQVoN6sTcHN8BWLUXhr
         eqjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=pxii866REPB8ijiWFjqoCmNw4EYSA5H0buVHh7VtyXU=;
        b=HIh02fCBCTDr6v8w0AIY/FbnOz0fqye/vwkRgwYozJbBHXSjBe3+S5Ek43GeF0LWFy
         s9q6bcQ4nI+SGUQgZYV+S7E6MDU/4ajE4ubL2dmpojHsPGou5EuPwqkhlSDQaHX0cUYF
         H0sOBhZ1Wth4rEwXfWMHql09V9nSRXey8DS6OGkd5wpYIDy/cdNVeaVLdxNS7IWM2F+l
         /9hzcLGw/eLPt0usLH9wFMJfHoJAoOzUof6Y92md9NH6VHp20Kae7Xq512Aruzn9WqDH
         Ntz/ATovMDcpant+k0P7xFrJhA9MlrittThHXA69jkcgdDMSRfX0pyAxDWBC6YBUMf1B
         iHKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lvGlPC0J;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pxii866REPB8ijiWFjqoCmNw4EYSA5H0buVHh7VtyXU=;
        b=E505FWImnNzV1dlfei5DDZYZeI+2b0lDlHP6TzpXUByPMYXnKt2VxqCHBNiRGtFzVc
         Bv9sFGIq7jS+e9+MIEeAIiuZ5dTDGbX/bxvnU5RVpWtJDYdByABDpvFWpKbZFFzfF7UV
         zES0yS5jW9iGAZO9JfjTCKd6BPDMAT48M65vRC+fkRx+qGCgfUFqEV4Ei2Bn5YW6YJjM
         W1ZIs9BzYaGpKUWhdSQEVCDenzOh9d+MFiGh2sx+ZOIlT6sZfujGuheS3vlSv14rxcbG
         KpcZU6DoruiN6LmOvQEvHf6sx7y7NhzGGkEgd8WW3GakDoQz88Swij5afpXFe7EL8D1D
         O4Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pxii866REPB8ijiWFjqoCmNw4EYSA5H0buVHh7VtyXU=;
        b=fZen5GSTbhgT3c2cZNdgCJMnQB7EUYrPqFUpHGQ1MviTUPcXCZhaxiI4+BX0F9ykOX
         3b6hO23hVDg5/vyqswRyNj0yK4oE/pFx+lN9IEmsaQziTCB6OeHAO3m0s/6lUKfxVwvl
         0Q89DVglnhlTlTAF8T5K8xa8l821velzFlnM25hPIaMXB23uaxktCB/Gvbw24V+2r/Rh
         77asjTJvtj9EmzQ758L0w9WW/zwbP/7xZYxL6R4d7FZyGlHV6jvNq2t7d+Czm7tXO1nP
         ZaW8SC1wxjBil6mlgnAowU+QKFOHrL+GmvpBkqWVU1oWqeUNhuUkC0wcOeV8ladBKvdS
         UxcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DN/9e5xLuYCjKif+jJXqUV3ouaFiNL26JIGZIJ7jJyhcVmKP/
	LEGCwxV70dSUzht6MIB3E/I=
X-Google-Smtp-Source: ABdhPJzxWIWQUA5iuba+xEUQIEMc9a3iYLkjo9kGWJMI+aLdz2+ylaTy0Y1lCe2Fc420U7MkZdo6Ow==
X-Received: by 2002:a05:6830:1e8b:: with SMTP id n11mr3235780otr.360.1611092103496;
        Tue, 19 Jan 2021 13:35:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2119:: with SMTP id 25ls5729435oiz.10.gmail; Tue, 19 Jan
 2021 13:35:03 -0800 (PST)
X-Received: by 2002:a05:6808:8a:: with SMTP id s10mr1168396oic.152.1611092103172;
        Tue, 19 Jan 2021 13:35:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611092103; cv=none;
        d=google.com; s=arc-20160816;
        b=YdFvoH+JBlKUQPeJDmpTdBxyjlJcXVI86VciEr6gH0Ta3pcz561XpcbUbVUJZYp22s
         eva/qoVLSH+p77i6/dNmryJuUZFGLkXSWl9moI9dl+mKyf04EpEwWD8hqSHo66QxVqPy
         EQ0DRPYRVTWmLB13g7N2jiqndFnfL4XZ0Em8Pnt+Vle2EoQ5YzrxrznU+6LF5noZCSUt
         JRdSAIvxz05SkeRaTV9dUrzAhSMe0kXYAqWQPuEsyhs40f1aNwupne3WnOIUYvzTTdCr
         qMtx4945tYOB7Cv1w6+40jY5gYyudcX5qAhJ2Z5oLe2l+1r/GqZTlywkPhN8vNFaSJxH
         bN7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BgtHsM62mMwQBefFtyt3j/GeAQFSKqmwBzrO9+rgpDs=;
        b=caf3ZDKs74li40cHRh3vnqkiZ/aDHwHgfku9PchwI5j9CeXf67zh8sLY1m7Xc99rJu
         jhAbk7/iwbRzoA0gq9IBG/MLN7Jh/ha2lIjSOujEIhSTP9+ef8fmnf+xe819D/XXAemx
         MTwMo+TACOL3ALtyXCM0jMu9aiMJDZujFRH+OiC8Z9NQtxHYs/yj26qnxWmjHhqL0bfp
         MhKkJDbaDd1Y1CCHYH5URYJQAOMngbpTcjf0K8b5Jz8JkQHQDPMPq/qnxehN1e8SJbg8
         58xWd7eLiqbI9hAEGD9fJp+vYmMnXMfwqSFHsqWTJVuAYrkKKrmMplbMSEbJaEpjAKGa
         VTaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lvGlPC0J;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k4si4531oib.1.2021.01.19.13.35.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Jan 2021 13:35:03 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 45B9D22DD3
	for <clang-built-linux@googlegroups.com>; Tue, 19 Jan 2021 21:35:02 +0000 (UTC)
Received: by mail-ot1-f51.google.com with SMTP id n42so21270195ota.12
        for <clang-built-linux@googlegroups.com>; Tue, 19 Jan 2021 13:35:02 -0800 (PST)
X-Received: by 2002:a9d:3bb7:: with SMTP id k52mr5017892otc.251.1611092101555;
 Tue, 19 Jan 2021 13:35:01 -0800 (PST)
MIME-Version: 1.0
References: <20210119131724.308884-1-adrian.ratiu@collabora.com>
 <20210119131724.308884-2-adrian.ratiu@collabora.com> <CAKwvOdkNZ09kkzi+A8diaxViqSufxrHizuBu-7quG6an3Z8iDA@mail.gmail.com>
In-Reply-To: <CAKwvOdkNZ09kkzi+A8diaxViqSufxrHizuBu-7quG6an3Z8iDA@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 19 Jan 2021 22:34:45 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0XWVu-oG3YaGppZDedRL=SA37Gr8YM4cojVap5Bwk2TA@mail.gmail.com>
Message-ID: <CAK8P3a0XWVu-oG3YaGppZDedRL=SA37Gr8YM4cojVap5Bwk2TA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Adrian Ratiu <adrian.ratiu@collabora.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Ard Biesheuvel <ardb@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Collabora Kernel ML <kernel@collabora.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lvGlPC0J;       spf=pass
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

On Tue, Jan 19, 2021 at 10:18 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Tue, Jan 19, 2021 at 5:17 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
> > diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> > index b99dd8e1c93f..f9f3601cc2d1 100644
> > --- a/arch/arm/lib/xor-neon.c
> > +++ b/arch/arm/lib/xor-neon.c
> > @@ -14,20 +14,22 @@ MODULE_LICENSE("GPL");
> >  #error You should compile this file with '-march=armv7-a -mfloat-abi=softfp -mfpu=neon'
> >  #endif
> >
> > +/*
> > + * TODO: Even though -ftree-vectorize is enabled by default in Clang, the
> > + * compiler does not produce vectorized code due to its cost model.
> > + * See: https://github.com/ClangBuiltLinux/linux/issues/503
> > + */
> > +#ifdef CONFIG_CC_IS_CLANG
> > +#warning Clang does not vectorize code in this file.
> > +#endif
>
> Arnd, remind me again why it's a bug that the compiler's cost model
> says it's faster to not produce a vectorized version of these loops?
> I stand by my previous comment: https://bugs.llvm.org/show_bug.cgi?id=40976#c8

The point is that without vectorizing the code, there is no point in building
both the default xor code and a "neon" version that has to save/restore
the neon registers but doesn't actually use them.

          Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0XWVu-oG3YaGppZDedRL%3DSA37Gr8YM4cojVap5Bwk2TA%40mail.gmail.com.
