Return-Path: <clang-built-linux+bncBDRZHGH43YJRBHECWWCQMGQEX2TXASA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C3F3908EA
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 20:25:34 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id j20-20020a170902f254b02900f8d1e07b12sf3649341plc.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 11:25:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621967132; cv=pass;
        d=google.com; s=arc-20160816;
        b=KSKbeWVUoNetcjJTOSrx/qDtz9qD6HQYk2QPnn17MRMIvIiKk8drumt845/94Nyp89
         JtfJg9Xv5s+gmClJvaqfmVgG3NgM8l6GXKP2N8Xkj0McLzuEJO3tYZqhgDdAhaJ6H0yW
         9ePMrDPX7S54izjL0baoW7skBzwXe5Ox7pZoksomSXlfCWms0S2UIpAh5gHuo8IYRl7J
         6TvaPtT79di2txYoAhlRZ0b2BRMdO2Y83DqXhnWlGhGyVSWTXh/o0hKS3Mbdr2Pr04Iz
         ifN9KG8fbiAdyah1miXfBjgYjI06cZvYFHKv3J0FOJ2DvorH71gs1CLPKaO/Dfl1UqOt
         h4Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=e1nT3K6PS0NF6BJ0u81/4HLO1PwgqJiuU6w3tz5v8zM=;
        b=vppCshRQfChX5PrSzjD2QbfZvCOgunugD+6OW9RYgVOC6mU1SYA31+Ssp/ps7JocSb
         ibTUIP737yKUheXlKAmMN3Hir0a8a6ghS8Fmb0Q+lK2XuXVgBhhaDSWSmNQdK82Evwlc
         lZ3dy2WsNILUHQiQUgWBkdQlB3LIvxtd8yVWscXjirQz7ZwhIZh4rWyQYRlcx/tDWe+o
         X/QLBY8+e0yXP+S+7CBR2wUSUL+cQp6VBFDOyftgC4ZULE7sODES0Nvbv4+VSotyS3CP
         /u9fHb3WWOV5mcCi1E8/wvoXSiJ7KWiySePt98W9QcD18hSamGBcpNT5NwcpLpq3BseR
         l8Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iwPy5Y2K;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e1nT3K6PS0NF6BJ0u81/4HLO1PwgqJiuU6w3tz5v8zM=;
        b=jmXaiLVsHsvfuiYk9TbigYDDOV2MnodW7Q7D1gyxySrcwnEJXPnEk3CWIkyiuTTLg5
         2pZ4cCix2xP2YmA0/trDQ11PqMQRs05pEF+PBi5OTR9lQX0aS8jOxtaK2ifO+otaxtQd
         dTwnU+Yf9gCT+nooZL4oTwqeXnp0f1JFvH73Qhw1EkPIz/Za+ws1NL3csaP+OWqWVbfm
         7toag/55YNShVu2ypB6pXcrfLCQSa5xIevtGMaaPVGtuKdze/MeV6p5ssWXLjl4ZYh5O
         HHZAhXOSymWm6M7rSQAnfiIL7MP6IK9k61eKhEq/V0sv7N1a6HV4eodaneo62Oc4OFiE
         hYig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e1nT3K6PS0NF6BJ0u81/4HLO1PwgqJiuU6w3tz5v8zM=;
        b=Ww07pnISBL5T5AzWhcN279wz1rtdbe+389lXNrk9KhVj+RHiJBs+D6xfWqfQ3FUgWa
         FVpX/9rfSptnsba+zgH50+a32HfK30MO+AsX62nWR03rPFBxUHMFM75i8kG+Wlf7cE3h
         NMiQKvVP0nK7QruO/w+YiwS2o/V08vWUBLfc8BUt1rhamxwDLqEm4hXsAKIeRaP0GuxN
         rFNtszJWdWT+xAln4MBB6KY6ersBcM+yMneJVInHpGWQfEOu54CUkuKFHr56SzHtS6tv
         7PqiF8JjqwB/qmPw44A+Xu4xcSZY4EaSIvDGMcvveN9zddELYSbzryFGzHAYF/G9Ja5C
         pItg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e1nT3K6PS0NF6BJ0u81/4HLO1PwgqJiuU6w3tz5v8zM=;
        b=IcW3qbS0KpvvqUartaquTuWfOrg1RGtSfrBGO3QCSoVbG/CoXga4YjdhqQmoFT381w
         yvOOTcHr3oc/1t1euROWDYTfVjJng2iYyORNmjZyntbA2Djp9OeN4F2AjBddXB7bgBTE
         1ZAJo9KcZrS6/Kw08BG9ouPsKD6tivNpsNbPU9soUvyvMJ8KlJoBW40zvQcXoxHhrofv
         SiEYtxGsNglvq8Nr0QJYIvmj5aO7OA6NB94s7Agmhrj+TwEv65NI3fYn9UNBaa+XKaWV
         XlXJOS0MP64b7Z1vw94l3SGB+6+OTENF2MvOcrdti9o5AfSlBfmnNvOp0zLhlq69SW3x
         EejQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531AUKpUYOG4EnqW7WtWotbQGWOQos1unKQFX8OlXTll3jo7n5Hl
	EaZOymnznxGhL4pMeeKVOO8=
X-Google-Smtp-Source: ABdhPJwSyulyif4tEUUybJzR5/EVsxHa5G/cNehl/5ruLd8Iyi2gqmmrwKdRn2TyXRBk7IYnepTY8A==
X-Received: by 2002:a63:fd17:: with SMTP id d23mr20715331pgh.68.1621967132636;
        Tue, 25 May 2021 11:25:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:185:: with SMTP id z5ls10837018plg.6.gmail; Tue, 25
 May 2021 11:25:32 -0700 (PDT)
X-Received: by 2002:a17:90b:687:: with SMTP id m7mr30991406pjz.133.1621967132066;
        Tue, 25 May 2021 11:25:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621967132; cv=none;
        d=google.com; s=arc-20160816;
        b=t/qnBFPwdQzdk+HEez+QkfCPLtU+1jK5QghWdA5D0EcxraPJWkRAguW8r4mtKbVOGS
         PTpmF8TxHtrAvLvQLEy80BEPTqfVEby7zWR2T4q7zWc8dVMdA8Qn04MavH+B8ZGxVyCu
         ho07ii2v6Q/pcty1VGi6C4vfQ0obITw7elY3zeINo0ySbYG0g9Vzm5JqoFs9KXmsg/BE
         VxS1ZdjD5Ll3hTbidk69w80RFrmsNm2nSJD/SsBSN0DUcPNSSs5DQMTw8+H0NoEpa2kt
         Tj/OFSFUvKLzd3R6ACHqjLgfB2t8WW6hK3UMmnUhRAJ6BFMVTtNCgjEa+f4+SH11JSud
         3tEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wmXyVt2O2sGPnr4vp3ZrMLgj9f8S3qWYOqMb7Ajrf5g=;
        b=ONOtIA0tkbXDbYBPxNiaKPIh4IDDlIOxOBAiLi4z7lAm4Q18XPFerlDyOFS+9ck87V
         JfJngX74B8l0wT+IwL62PrVVjHti0HNcqUeOxgg6rul/cLTtBmuRQ+ZFwMNPhmtf5KQP
         Wvde6u+9SgAx9MIMOum2a8hfwMUX4yLi0vx/mdY0N6H7xpvqhx5Crha+SM/DcWhrzmVy
         pO8aqVehO9fnm7Fr/njE3QU6MQoYv/k51b/Gjf1OPA5befqbqR8YREywDeVQBuzt57Hs
         2W4MfT8nwtC0tmsob0bvPe2XeC3fDx++dd74c/XvkS9R+F07ddiaRLKMmlZrh+OI1Viq
         G7JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iwPy5Y2K;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com. [2607:f8b0:4864:20::b34])
        by gmr-mx.google.com with ESMTPS id b18si438824pfl.1.2021.05.25.11.25.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 11:25:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) client-ip=2607:f8b0:4864:20::b34;
Received: by mail-yb1-xb34.google.com with SMTP id w206so12681204ybg.7
        for <clang-built-linux@googlegroups.com>; Tue, 25 May 2021 11:25:32 -0700 (PDT)
X-Received: by 2002:a25:880f:: with SMTP id c15mr42780691ybl.247.1621967131383;
 Tue, 25 May 2021 11:25:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210525175819.699786-1-elver@google.com>
In-Reply-To: <20210525175819.699786-1-elver@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 25 May 2021 20:25:20 +0200
Message-ID: <CANiq72krX9PU14wFsQyW_CJEjTS-TT8wyhBVZZbC132Gz5XO-Q@mail.gmail.com>
Subject: Re: [PATCH] kcov: add __no_sanitize_coverage to fix noinstr for all architectures
To: Marco Elver <elver@google.com>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Masahiro Yamada <masahiroy@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iwPy5Y2K;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Tue, May 25, 2021 at 7:59 PM Marco Elver <elver@google.com> wrote:
>
> +#if defined(CONFIG_KCOV) && CONFIG_CLANG_VERSION >= 130000

Is there any reason why Clang does not implement
`__has_attribute(__no_sanitize_coverage__)` like GCC? That way we can
merge both (perhaps even in `compiler_attributes.h`).

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72krX9PU14wFsQyW_CJEjTS-TT8wyhBVZZbC132Gz5XO-Q%40mail.gmail.com.
