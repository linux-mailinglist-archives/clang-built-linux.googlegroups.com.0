Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGGG5CDAMGQEDEXJBFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 092823B6913
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 21:29:30 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id y22-20020ab063960000b02902782db6cf24sf3404520uao.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 12:29:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624908568; cv=pass;
        d=google.com; s=arc-20160816;
        b=yGjW282yjRMQFBOmzr6p0TE7liLj6oMWhPXj+mrV24MoL/Nqb6XZ5YZO+iWwmynpDP
         kyhA+EdkCRVuE0DzFqK4WrjPWBZUnQ4e9ug587DZHPwZ+97wIhGGZMfUrbFoolnA/iFd
         3KugmkD7yI4BL2dK6ZmHf1C7M93E8K99WyXSOrmuwRDDDuhwDU9AfMGKItDOvqRT8Lcc
         t/kGyFg6hgl+N7+6i9RfcngU4GhOsNEj0wtnXnTI+3SMm1uoY9pY9VO89lkUk8aMUqJo
         Dj8eIKZGwG/u8Yb0qGHOGSRp9eYy3XJYSnWsyQgayZR+BzA3HHlBduXJGHyh26ltC57o
         Merw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=t1gkzXlxfIim6rFOgXCAnmPG5l9CukgZfMjFYia+S/4=;
        b=oZO6ietYZrJto4d6wsh08tGqAjPVfj8j59Q+5P8fz6A+uwQrvowvYYTH2xSfy1hTyf
         X7wlQIGfuJPZZQmeNVpMDKBAV8R9kmzxY+ue+pTbppqVPkyB+QfUbJczQykBD08v3N3g
         OseyPU8nmU+OvwGrVcizm1XmqOM2P2EYr3TGbbKfAcfxwPCS33W81hoZfwwH+ypi87FQ
         Ipxrl4Hr18AdH1wA1kDlZMKWpti0bBj72y1AHk7qBBiNsPL9T/AIQGJdhuUT6L6Polw6
         KnUlmXqRHva0UjXu11DKW485mue/mNdizj+QlafrLBnyL6AaFCY5RT/A/DSG9V2Fe5M3
         zVkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=n8uh5BL5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t1gkzXlxfIim6rFOgXCAnmPG5l9CukgZfMjFYia+S/4=;
        b=Vag4oJwO1XED9ega8QVZpjSUg2HlUHEaKOjFS2vhyKDmrRVpRl1NQ7iuBZorBna3Va
         StWyLD0ZOySN0/f3xcqPcZFLqlikIMG7smj2AKA5UwlaqsJnSOAFh5A0LsDQOi15odM5
         4I3lYvfls+jX9Xdf7Fv/Uhkg265aG61yFkav+SRrerNc0NCFCsY8fjtG88Z455INibrU
         13V4F9QI43QqCqZTvmc3wK1h4FXJsVQgZHG2xudPl09/Mcr/epnxNqcAbv7KopFSCcF7
         DzXQbGJqT0E9HdJlc/dN/LknUtBKqXdi/avW5Z8Z0A/ZaAf/PeXDeE8W18Pw41UlAmTE
         oRrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t1gkzXlxfIim6rFOgXCAnmPG5l9CukgZfMjFYia+S/4=;
        b=TtnY8INgILX6ou8CTth1uEH803VPUI4HsWaEvljSADyI0vE2ByDmMX6yXWkExq1P+U
         mB+6SCV70v7N5GTBWSq9MXMWnOMN/7spm7xunWT7v0I7Q+TeiEnRZvVJYMNocu8F5/PH
         DJS87kqLJSWOpZmfkWCxUnFMhv7Wg/dlvSaS1aTl5EC3hu8pe+lqxv46YIel4n0MHPpw
         EwnDy7Qb1YvYbonf4nDo+IPnZqIxUE3VYQvkFRaiXLEIiK4bz0R5q4/1/VLbpzeQsGWT
         JmZcPdvPbxx8MIX560KZz2nPx4TId+3G2PCoAkMxDbltGd4sr5Q6k3uf7TZ7vYoc5P7q
         IkPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LwvA2Zb5m/9PeZzLCC9wMhliJjgK8yBrDA5OCDFta1EEzJtWf
	GitegnQZFPcqx8UJrDBD2lM=
X-Google-Smtp-Source: ABdhPJwVMYR0GVIQCtsr+t2+g5yowMI+Kjz9rPWmQJriVW5+h3Zj/avbvlaPw5WXgBbinWDZ0dmMWw==
X-Received: by 2002:a1f:1487:: with SMTP id 129mr11673093vku.14.1624908568251;
        Mon, 28 Jun 2021 12:29:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2b1a:: with SMTP id e26ls2128018uar.9.gmail; Mon, 28 Jun
 2021 12:29:27 -0700 (PDT)
X-Received: by 2002:ab0:138e:: with SMTP id m14mr22935310uae.130.1624908567753;
        Mon, 28 Jun 2021 12:29:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624908567; cv=none;
        d=google.com; s=arc-20160816;
        b=kQ1EW8h2Nsl+mdHIRXxKmRgla7A/ULT1a2+JyhH6NOL7eqjC+pZRBjjCB916xji4Ka
         W3rW8gAFXTERmkzy1WweaMXPVA9g+hbxKzoKFhYD43xDeZ28jT5SVHdP4KG2gJXDgBYn
         IOPkYdpvGyyHaA0+gClWLjNNd1qT7pdxadtIItlNWLIpm19l0eM7xx/n+J43YiI5hTX0
         bMpEWBG0gQvcB+INyV97gISBr1JksM1iAvIq+q3ssT+rWbafVh9Q8ivHFu6x3umJE56q
         qqJn7jul5mR6FfM5XTpJsLxXqPpf7vdEgOTq9FbrJTkQhp4UILPxf18g9obxLs1sLcdq
         nCBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZJ6u2k6/dJhmtJ+a/0MHT0Ak2qWLb/bcwrC6FvorPSQ=;
        b=ivv0ioX/zH3VSxb5eKPPSb9sCiUa6FyLFA5ZLCYNLrPCDRd3Jyx50osx4iAKRxtr4Q
         2yvxiTipfjwtSzdLo3r+/2EcBw5uvmheWWsWVLLJUUh1qE8l47GjwgVkC2Ya8sxjQORQ
         86fYA9x7wcYJa1HV1vx4pFBmgIEWFGcOFXUPIVbAYU4sr8sUMpqnz9otVTgNhkC5+y7X
         V61GYjCoVcCG76sbyhM10wyF5IE5hRpX3PibyZgVpHoXzfiTDQKF0VjjbLB+N1EYdlJJ
         kq7lKjtBaW/Q9Vxo22OF4ZhEby3CblQQ5eYQyItcWSpHWAppYwjHfxkZXevin0tL4tdp
         VRsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=n8uh5BL5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id t21si1404612vkk.4.2021.06.28.12.29.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 12:29:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id i4so9510929plt.12
        for <clang-built-linux@googlegroups.com>; Mon, 28 Jun 2021 12:29:27 -0700 (PDT)
X-Received: by 2002:a17:902:720b:b029:113:19d7:2da7 with SMTP id ba11-20020a170902720bb029011319d72da7mr23791449plb.55.1624908566889;
        Mon, 28 Jun 2021 12:29:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n12sm14973518pfu.5.2021.06.28.12.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jun 2021 12:29:26 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>,
	clang-built-linux@googlegroups.com,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Bill Wendling <wcw@google.com>,
	linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	kernel-janitors@vger.kernel.org,
	linux-doc@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] pgo: rectify comment to proper kernel-doc syntax
Date: Mon, 28 Jun 2021 12:29:19 -0700
Message-Id: <162490855630.2191955.7188154193447975503.b4-ty@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210628055947.6948-1-lukas.bulwahn@gmail.com>
References: <20210628055947.6948-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=n8uh5BL5;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
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

On Mon, 28 Jun 2021 07:59:47 +0200, Lukas Bulwahn wrote:
> The command ./scripts/kernel-doc -none kernel/pgo/pgo.h warns:
> 
>   kernel/pgo/pgo.h:112: warning: cannot understand function prototype: 'struct llvm_prf_value_node_data '
> 
> This is due to a slightly invalid use of kernel-doc syntax for the comment
> of this struct, that must have probably just slipped through refactoring
> and review before.
> 
> [...]

Applied to for-next/clang/features, thanks!

[1/1] pgo: rectify comment to proper kernel-doc syntax
      https://git.kernel.org/kees/c/6a0544606ec7

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162490855630.2191955.7188154193447975503.b4-ty%40chromium.org.
