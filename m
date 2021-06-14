Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBZHTTWDAMGQE7SSW2EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFE73A6AD4
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 17:46:44 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id k11-20020adfe3cb0000b0290115c29d165csf7196745wrm.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 08:46:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623685604; cv=pass;
        d=google.com; s=arc-20160816;
        b=oVe7q3KERkXezNVPf6ZpmtlTY38Dco2JWelHhl2kfaaVIdckXmTBVrrRrgERFTqC9j
         orO/wmR05ZhshBizHGxNnnE3ckOsYj9idihZmQBdhhg6TJltNMiHq93ujrct5dq5lXJh
         bgJwEWRL/grlxZ9qrNvbA2oNyVC9GsaYXweLWr33mgXbjHEsCqT4+8Oj1IAD3ZQJHdsq
         84weaF41OwG2smEnki3X5XT2nB9z2dn24FOyzbyg8eO9uswPtLAjOVSVUPIhMkq9Y2iF
         mq6sx8QbbOI1nsv00lkXB5sdT75UYnShV/CLBX26adrumLWD/QcoNbbmE5V0KWVCs8zX
         OB9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=m+iCX2jB7LFms5Gk2kSWctemoyIU8ThAvU1c7SAHxn4=;
        b=RJKNAx4A5r3Y8e5BD6gzgFhaOTV1WmA7L7hRmEaHXEKbORXcoXqRGgZfO3NO9ZI0T1
         q4y1tGCTaRX5OdvYz4g3LGqGY60We5B/erTEFkLiWzf32zj+SzKc4iu7Qg2hg4jPfHrs
         Cb+JmMJntvjWYrs6MM4GTwcznKISODwPCLuWDueSXl97rxgGu5J99l4r+6K8dWLdIyyN
         hkPgmn/lv5qCeolP9Jz9c/yujWeTz7/08AqnbufLdyM7fKF4gMwDR9+vTDRWAz+EwJ9l
         D4sLIOcUce894538vImOOaL28SP+zdBDR1ODm2nhDSqtQY4oaPeLOiVeilO0s5GPmv1w
         UoxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=ng9emBsk;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m+iCX2jB7LFms5Gk2kSWctemoyIU8ThAvU1c7SAHxn4=;
        b=tUHe+xA0EtKS7q0ekPGq+iMoEhnp7DMnPpbii1IuiSW4u831a6TF19j4YsYE1CQZAo
         YyvtSGcEf2GcVMy5LR+VNSMaJRlTqJa4AlNRu+wSPlEnqwXbjW4sR0uS3zArUVhy2llz
         /4Qc0I9m2vE7kqTPEmbACyqVS3iFSXk3YUo/Hcu5fiJaJXHR6bpfoHSi0tydaL9VEHqC
         co5Hu6e0q4oFcD6Io4sbFkSDMPy8uj8Wbvw/Yp665mvRqKZKvZMy8jzHaq9ygdGEAstA
         avgRW7hfiqgKOV/+pV3rKZIzUxdIcZu8MsFt3LmPBsehWWDcMh2e1noUMg11Dlv7ET4U
         tTTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m+iCX2jB7LFms5Gk2kSWctemoyIU8ThAvU1c7SAHxn4=;
        b=PWVGyeXn0TcX2+8xQyFXeHIGMpW1njXcPL8BLHfj+LHMG2IkogoPKkyw+rvtF70H7j
         J49gF8QXRgn0/8hhyOI+DEFEWzJgVcsQhkl1D1z4dBdkEBWnZmbmSXGWFLbJrclDuI/A
         fF2Qf6abOxyn5F8vjoz+iST/gdX2RVLh9EqZZZrR94JpN3b2VVi4JNCROGkCe3QaHdqN
         kxLUBC6gocxuKdoe7yYhNIAN+21AwEGKALyhCnuu5bCDk574nk8GIf3GQvVO2gnCre8T
         RiQ1jWEWUKkPRU0LrG3dPkbApfBMd4Po4A5aUVTgeCUZjwc6T+vVdLqL1LoEumGuxfEk
         h/ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532F85on9IOUcgzi5vUqPQF1n0YLYz7S0TFzSw8eAuYEM8p7eoMo
	QkVPPpWNm5tkqwVvpc652rY=
X-Google-Smtp-Source: ABdhPJxWU+xhoiD37zojYITLRqaOp6GhqJoJYv6E2Aoh49XKeXVv2XCN1ZdVXmDhWX9CThBM3Orf/Q==
X-Received: by 2002:a05:600c:4ecc:: with SMTP id g12mr34026031wmq.40.1623685604333;
        Mon, 14 Jun 2021 08:46:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a141:: with SMTP id r1ls12478822wrr.3.gmail; Mon, 14 Jun
 2021 08:46:43 -0700 (PDT)
X-Received: by 2002:adf:e109:: with SMTP id t9mr19483268wrz.372.1623685603491;
        Mon, 14 Jun 2021 08:46:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623685603; cv=none;
        d=google.com; s=arc-20160816;
        b=B4V3fFnZRM0Lyk/W/stkFmb69M/YsgzWxzXkvqCuVgfTqkzqLuzNVwzQfZqohHlvpd
         1wTT0Jyh0+TA1SheXzyZ6yM4uJGWAknU+foRpZqudhYOq/RcORN+yTT/fOxB+xnrTdMb
         P1mYS+rz0Hsf6CYHBu4nnA9lcpq6vjQbEA/12j6vPR26ErjT87n2R8JtS3jTGNUI1yZm
         NO1owvoUBqOXTZqvNca3OcnQZMEJfTy5XNhwpqSDR4s3tS7jWv+UTH4rWTjCTxnAXn7/
         /DZcFweszG47WqwaKaNn/mJI20IEgPz/KyM+pUBu3OX8oWe4k+i2ZdtvxcG0SBNeybs6
         R2Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QYZbYwbmFAlPHZAyueGumfXzbFC24Yyq8ZlF/TwUjkw=;
        b=AKvXShutqWbwy/eWBgW0V6G4JxRrtW4xBKd4p7DBkBaRy7aE9Aqykbl6DN/2MFiHVM
         HH/4LaAaEasr7Uh7gOZiKPP22+Q8eRafPRJgdoIAGUOOgoYE3J0mElcTLe9NJEPTXxGd
         rW3JSKBd2XhG2i7S+DO5wwD0bMBKFRa5YSzA36VekykGBUStpVgLS0Xo67hBP7Ce3ejG
         lzVM7G/q8OZ2z5iQqpvgG0EyzTItP519wLVrGve1oiHnNidPUnFwRrA4EjuexifjQxoV
         4jDQnIk20zvoh61rIfOUV8Tdw3LV0WmInzAmZymm0AmG9w+LlJ4HyfT3mj7cMPnVe8hU
         AJyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=ng9emBsk;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id h7si17434wml.3.2021.06.14.08.46.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 08:46:43 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsonJ-0074ny-On; Mon, 14 Jun 2021 15:46:40 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id CF1C59831CA; Mon, 14 Jun 2021 17:46:39 +0200 (CEST)
Date: Mon, 14 Jun 2021 17:46:39 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Kees Cook <keescook@chromium.org>
Cc: Marco Elver <elver@google.com>, Bill Wendling <morbo@google.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Andrey Konovalov <andreyknvl@gmail.com>,
	Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com,
	oberpar@linux.vnet.ibm.com, linux-toolchains@vger.kernel.org
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <20210614154639.GB68749@worktop.programming.kicks-ass.net>
References: <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
 <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
 <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
 <YMca2aa+t+3VrpN9@hirez.programming.kicks-ass.net>
 <CAGG=3QVPCuAx9UMTOzQp+8MJk8KVyOfaYeV0yehpVwbCaYMVpg@mail.gmail.com>
 <YMczJGPsxSWNgJMG@hirez.programming.kicks-ass.net>
 <CANpmjNNnZv7DHYaJBL7knn9P+50F+SOCvis==Utaf-avENnVsw@mail.gmail.com>
 <202106140817.F584D2F@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202106140817.F584D2F@keescook>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=ng9emBsk;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Jun 14, 2021 at 08:26:01AM -0700, Kees Cook wrote:
> > 2. Like (1) but also keep GCOV, given proper support for attribute
> > no_instrument_function would probably fix it (?).
> > 
> > 3. Keep GCOV (and KCOV of course). Somehow extract PGO profiles from KCOV.
> > 
> > 4. Somehow extract PGO profiles from GCOV, or modify kernel/gcov to do so.
> 
> If there *is* a way to "combine" these, I don't think it makes sense
> to do it now. PGO has users (and is expanding[1]), and trying to
> optimize the design before even landing the first version seems like a
> needless obstruction, and to likely not address currently undiscovered
> requirements.

Even if that were so (and I'm not yet convinced), the current proposal
is wedded to llvm-pgo, there is no way gcc-pgo could reuse any of this
code afaict, which then means they have to create yet another variant.

Sorting this *before* the first version is exactly the right time.

Since when are we merging code when the requirements are not clear?

Just to clarify:

Nacked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

For all this PGO crud.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210614154639.GB68749%40worktop.programming.kicks-ass.net.
