Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBM7RQOFAMGQEYCKWWYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1FB40B815
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:32:05 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id v10-20020a17090ac90a00b0019936bc24c7sf253089pjt.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:32:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631647924; cv=pass;
        d=google.com; s=arc-20160816;
        b=nJ1wpxst5y5vU5VRCjVtwKmv3uIGeXiMc97AqjnzMWguFPmhikfvMCcl3I5prtjHUR
         9JSxnOVV/9JcvzsJmsGxA/XDI+q4uwwq0/24NcjNRiycHMz71zd8ggfDV/g4srovaDhB
         6h3PM652h+J6CWakxu2IRgUc1Z9RwFi98Wp0UVHIUdwhpa5KaeRXLz+M4z/4mLu133Xk
         1HlkHQMumH5EF09fS/PNnQfkC2RtW+evy1WA8hR+lVGYcsgqOGRSyjTho5L2r+2l/vm7
         ZXco4DMb5u+y07s88iEFbvbwQFQ9BVri3ZG4u5EJ7H/HtAHlZnc3pDHo3TkNjYMekQOk
         1K5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DnfNi6s21DONg5W3XDgVNvYkDeH/dB/HoLfqY6Qzcms=;
        b=Ragcu2aNodJWzra11EgzXuYLnHbDq78bGjt7+F1Cq+0Cdi2ffZOObEuUzw0JnzRMGR
         y9bffOy4WU9aOX+a+UP7LC2jb4Mz7EGQ+D95lbwCx3FMl0yHwofDpjtS6hiSDCmAP6X2
         Ja9LYyA7GAQE4mbloyE95uCf9hH0klbTQALpj05D1UIcMH7Q1rYWShDA0d3FVfrac1zh
         QlsII2eUTm5WJROGyLmuoDSkLJYbf9ofNoJjb/gXGKt69CneHp2NmrBv68zs+rAkSeeG
         6UadAHWbxKX+Li+v4/Gfy0Xq5ryoX49N9mOFNw85/wBhOPVM25vF6V+7pHkvoA4cYoRg
         pKGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YcuSryWc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DnfNi6s21DONg5W3XDgVNvYkDeH/dB/HoLfqY6Qzcms=;
        b=SfdbZZwtquG0eJ4eQJpTWzqUS29d+Qp+alfa4X3swuauAqu1kKPUlno4ODuoqJUS+A
         /+RhzUlqA2Izi3GvqrLuolaUTdvRK+0r0E59CnJonMNq8WYs1WDnQKCWvSCRyBbJyw/F
         mbwB9XDP1I+sVx0/BZi/Sgo9AW3py4rLiPfNawBLyOgfM4vqZTJPa3RPm+enXh2s6BBp
         dD1zmjvxSM5tH8uECGVEDsA37LfQMzp7a2yhUeL6rTA0AjAEK7yjqzleE/plTq3eF0ou
         eoZoN8q5PY/yFIEzZ91M/gshavNKni7haVoBcIdSQ63a0d/U6BHRuo4hyfp6VsK5hpzw
         VO9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DnfNi6s21DONg5W3XDgVNvYkDeH/dB/HoLfqY6Qzcms=;
        b=QfKM9jbK0bG4ZGNBjBEgqIE/NtXaqlPrXl7fU7+mJ+pn5p0wbVWfIu6T7Dh0VsmL5+
         4Olc80goiRygcrcWQGLSCwZcdjEyMaXNvDyXnPVTRjVIjRH3547M5NNi30AR2PVTHBRS
         cjE8LIJVmiVszK6b9gxpnXKpZK5CReI8KKgS8cwInxpR7l70t53lI6Ij8atS+YxCExLr
         PT0JIh5kTgL8onLhtAAF1UACH/OaEZOfLKeo0a6jo11H9UNBJPMuVofyGCEOpOAahbQo
         306015s0q8kOv47PLhJwVULjcgdgcTx4PxzdbEOyzsRKW5bxCepG8yAXjwq4nJwKrcgT
         xBPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531r2EU1E1jbhTkq9imv7T6oj0uNwP2QLa3QJ/uvS9DPNFTQWznp
	8HRc3ylkM+4bUnJOP1Q7ZLU=
X-Google-Smtp-Source: ABdhPJz2hJaNlbF21auEI17eYeroRRzKwiDTrUKoXSV3dAVCPalRgpESqkUzSfCZCMvxAIuAUPn94A==
X-Received: by 2002:a05:6a00:4:b0:43d:32f3:e861 with SMTP id h4-20020a056a00000400b0043d32f3e861mr6407445pfk.60.1631647923813;
        Tue, 14 Sep 2021 12:32:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:31d7:: with SMTP id v23ls43854ple.0.gmail; Tue, 14
 Sep 2021 12:32:03 -0700 (PDT)
X-Received: by 2002:a17:902:e04d:b0:13a:70c9:11b8 with SMTP id x13-20020a170902e04d00b0013a70c911b8mr15956658plx.82.1631647923214;
        Tue, 14 Sep 2021 12:32:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631647923; cv=none;
        d=google.com; s=arc-20160816;
        b=lIPBvrauWjojLWCSCA2L9T9kh85LJ+H3acw2ryTbuOYG7is0JVXWb/Z3xqs9p5Jh3C
         tfBAWnRpHVkXtznjceGBPVxre7Bmk7kr5vtAFI9b3D1RPUBqW7zIIpXBrouRD4HZf9bO
         yIvxh+NoQIlS1KrWDfuQXrw3RdOHVe4+j0dMvc+8LupzlD8dx7NN9nkSx+zQ20ECN+2k
         Giz7XozoXqMm0w/Fi3PEFpdvkN3WjoG/6SyvScimrEFIilfblW0bxaEXJuiN6GpmlVAS
         HOSnGWZEEBMdI3UkjAGPeSmuqFNyqxdm7lRe4K5eKxgC4K2jc/tne+YPW3rdXBFuWD0s
         gHYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7HJuxS291se7h0pWa8RwOF5pMXHcq2hWKO/DuoK0nSw=;
        b=Xa2AfCWHsyd0KCT7149E6U1pOhudQhvotVKIw/xu6XNCOq4kZtkVaomfIZdfmJIZuk
         DVffF7Go7pVE8cn5roTldkKw6tA1jsg4hfFgoZ1kSfmQBEvesRCqR1TXimpIvvGgbw3c
         Lol11PyV1s2m+KSYPCol+HqZovPf5Nyj4YPyZ6VX6LLPtsNtFhlmHMFooekjtiC9qAJH
         rTyRuQQvItmoM84ZMjrxszDuksMlpiceTG2CH3mvySbz21/XDNrbBGoNmORrH/+Kmoek
         NWHtyuYj7bLD710wGNxhwTPgFb4rkPVi/bMu0aaQsQXC/3Wx3G8a8mKYlrJyj9GTxwls
         4aew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YcuSryWc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id w20si917783plq.2.2021.09.14.12.32.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:32:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id d18so21974pll.11
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:32:03 -0700 (PDT)
X-Received: by 2002:a17:902:ab5c:b0:13c:87ab:15f5 with SMTP id ij28-20020a170902ab5c00b0013c87ab15f5mr3703119plb.79.1631647922974;
        Tue, 14 Sep 2021 12:32:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p5sm11377017pfp.218.2021.09.14.12.32.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 12:32:02 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:32:01 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: x86@kernel.org, Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3 08/16] lkdtm: Use an opaque type for
 lkdtm_rodata_do_nothing
Message-ID: <202109141231.CD2DE05@keescook>
References: <20210914191045.2234020-1-samitolvanen@google.com>
 <20210914191045.2234020-9-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210914191045.2234020-9-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=YcuSryWc;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636
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

On Tue, Sep 14, 2021 at 12:10:37PM -0700, Sami Tolvanen wrote:
> Use an opaque type for lkdtm_rodata_do_nothing to stop the compiler
> from generating a CFI jump table entry that jumps to .rodata.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Acked-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202109141231.CD2DE05%40keescook.
