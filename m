Return-Path: <clang-built-linux+bncBDRZHGH43YJRBMU7XKCQMGQEJE2PK5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 25627391EC4
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 20:13:07 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id h10-20020a0cab0a0000b029020282c64ecfsf1896259qvb.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 11:13:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622052786; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vic1G3v2DUQYcKl4k6cmV+H0ehZoV5RSDuItLWg2HavtMI2RCu578lhBT6p525P82G
         xeSW1ZaEaklQl4u2RFh2IKzYdJxREv3ZwMJMU6VFpSjCQ6mpRgsIVTTrqLNAA66k4ebh
         NEGCfmD6SrSX55BUMdMSTknWSuHeM6c9nYPyru6srtPvJ0NY+0OpegPMgB/PxkV2X1mb
         7JlAp2C7SEHpWas1Cd/gmDoBTiBLoRz6RpRkhRrs8o+S2Is3MSHoHLwA/Z+bXzqLS3zg
         rFHMxwbFsvuWOxa8N/5kvQCanlSMyIDVe+W0SAOI2omYUKmZeNK/yUzA+nx45XxQh5tK
         o1Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=tJHCfeqx9Arz2mxGMihC4VOxr8Mlzf6kglKZnVIUbwk=;
        b=RVfiHYMztSwkcNqNk0TiGRYivLQ51nHGqoCidxOC46p/i9H9rcBXx9hvV8sybguoIf
         6Ee2ojo7pW4yg+HRvRMJBe8OpAnEX8W9Vfm7AVSKBKUXdNLd1Xi8teKUHxAv6x3dbCJe
         iANO60/gInTp+Sc1af2+G1CztZAl4h8P8yqbWNHiW68LVa/ujLFqcZi0UGnbHlThgJhJ
         GeCkBz/beTi0yXy35qx4ZPsgQ6LD2c0nQFvjEPCv9Y5chHp23HhNMrPMhnxuXi5R5l/E
         bBM3dw9LrqsFCUB6twvvVPFELhdVDpydiNtskMgJlVkVtA+1aZ9m1UdrTHryc7f4M+xA
         qu7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rita3KRr;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tJHCfeqx9Arz2mxGMihC4VOxr8Mlzf6kglKZnVIUbwk=;
        b=OfhXN7SC5eGFjJB6MR7ksBI1D32VwAFMIy1Jcg4cptHSIUeZ41A+vCS5Xk8+AdNAk7
         xKEpgLlj2ietEvlKiOCB2dZkqwUUph2Mdc81uHZp0u1Ui5dqPrBU19o5SIW9P93k+Fz8
         LP1CkCsuBumg5fixkzEZYzCuPvZffcZPvmMj746ycxNinYMccScT/MCaCFU7EatuDly0
         nUpk0tYV64uLMSZ+IluKeGtMNDU3NmYbGebtlbUbIs6PCaWo9shjI3Rl+ok2urFQ9MuE
         nGficJ+WXu5ml03fMPnJ9aMASzqULtiXu14PC9Rf1loxV1pEPUT8F8bq8aGBTcTZLRPR
         KT2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tJHCfeqx9Arz2mxGMihC4VOxr8Mlzf6kglKZnVIUbwk=;
        b=nbVbtFipfCeYsSjQ8n5+zmjIF+8+zK4gs8fNH0sB7ddAXPuwuHDThzkl5emPpl0VhN
         DdMljBGjBgir3YHyNWZ6W8CM2Lgfnj2WCWgrovChg5HsfNC0PtKYVwqzPJqFtnSZduyj
         /hjpRKPfzPVakiC+TUcHA7T4KLzr7jSVHoHKlWDihBJs42W+A+jk4QX08rNzkqZO4p6V
         XfDf6u3X8NArPpb7tEg2s92LN41O2oxN30LTLThl+uEJVhYKKJRO+aWxAFvDXvhAQnZK
         YYO5AKquSxrGZQHpZsFCMrMxesJbYPgr+0LSKiAvwWukV/UJSViKGasdqTAx1BJvO63/
         fQmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tJHCfeqx9Arz2mxGMihC4VOxr8Mlzf6kglKZnVIUbwk=;
        b=t2uwR8hFA5+zFTi2IoAB2Y+xPElcFQqCGhoedCy7aoO1vxR7dE5pibjTFCljA1dJ1q
         BzQxWW4N5tTl/p8R/JR57wJGAu1DanPpIA1DTdqaYVmbq2JOsP7wV8+f0Vb1KDRzZHIE
         jCaGNf3sQ3rDKyh7yRndTMzNVZtgwMVamEeRI4qf617HWZS63StV9ltfD9Bv/Ud1Enb4
         pBbFQH4BOen0NrlUDS5th4Y4wQkVUJfVQjv0SAjEZ98NHEhAw3LT11z+VSCQW0wGOAy3
         1U5g7zHbLoZlQEO4FF48mU7LH+VEewtFnJh5FIghiHAFzgzT78WeccAGeqDn61lRprcn
         nXKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GrBxOCdKlqNw30sJrfcN/g2wENpTjhg4P8V/5xdNq3q9CVwbn
	ireQsMP6/una5QfKt4bYtUk=
X-Google-Smtp-Source: ABdhPJzcQibjCnc70jSURRFDfx3NDZVSo2WSpnCv04Y8zCen4aYHshk/HcHfctbiRQO99Rtl6uscRQ==
X-Received: by 2002:a05:620a:15af:: with SMTP id f15mr41531833qkk.62.1622052786179;
        Wed, 26 May 2021 11:13:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:64c1:: with SMTP id y184ls382524qkb.10.gmail; Wed, 26
 May 2021 11:13:05 -0700 (PDT)
X-Received: by 2002:a05:620a:2019:: with SMTP id c25mr40259767qka.163.1622052785677;
        Wed, 26 May 2021 11:13:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622052785; cv=none;
        d=google.com; s=arc-20160816;
        b=PWdjz1WKoF7MD3v4d+TvsWsv5wMPbTWGK+InAp8Spc0Qmw9+LyM7ugnYVFyGjeWPZr
         ezPxkNviq7Otj+AjsxDsvDVTmaJco91q5yeNkCvy8m8rFqavNriKicitlkkRzZA2gEYl
         6bF2MYgkEIAK46IKtITJZKYjFq/T6OatumDeX2RFjs4gzDCzuCwwh/bv5h/SPO3thDPN
         +qW3mePFVH56e5gGZEYb8V/XSvtxLt/u6XIlNy401GTu6RkLSJdsmlud/p5KIk+IxNbe
         IvPPpZ0TP7X8Q0xAZPWO/K+nKMWakmA50P93S5MVYdyFgmKvr7/sJ4ZOSSuH5OBXUDuT
         8RYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AJRgrV/KJZf7Av1Ux4awu6D8rhGGLmpRYzc2gHJYb5k=;
        b=LlTdcyukF6Ye1HHLfDpkGeGEzX/m6XXIp1w7AdpfdtPJllQUS/MadW+lGBI6OX8tGm
         trlwltx002Z7kBTW7wiUt2vnSb06yoYiFaIHAo+Gqh3lGBmgvi61jNpMrYHoRZnUgf4B
         /vkCIvRKiNK85CdfQqgBAHscjYo1UAuU+4ehg7bLfD3WcPB6mXEIkFgDGv7pLA0fH8Kw
         s/hNn3bG+SAPYzHktCqe2+/rYKe6kFoNlj0FGRQneWP0QkgfqWukgZoZ+b6ZdDA7RVSu
         OzPaiiwX7E4Uc0s5vx4MD0m+UDX+5sBRMowX2oeWxI44lcpvnCO4tThHmDiLVE68RQuc
         F+ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rita3KRr;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com. [2607:f8b0:4864:20::b2a])
        by gmr-mx.google.com with ESMTPS id v64si247335qkc.1.2021.05.26.11.13.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 May 2021 11:13:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2a as permitted sender) client-ip=2607:f8b0:4864:20::b2a;
Received: by mail-yb1-xb2a.google.com with SMTP id b13so3344965ybk.4
        for <clang-built-linux@googlegroups.com>; Wed, 26 May 2021 11:13:05 -0700 (PDT)
X-Received: by 2002:a25:9112:: with SMTP id v18mr19094203ybl.26.1622052785437;
 Wed, 26 May 2021 11:13:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210525175819.699786-1-elver@google.com> <CANiq72krX9PU14wFsQyW_CJEjTS-TT8wyhBVZZbC132Gz5XO-Q@mail.gmail.com>
 <CANpmjNPGUAv-d3yEusyF11ip0zEdht7eMGi4pSoQsRYns-MvJA@mail.gmail.com>
 <CANiq72kCkej_ONwSWjRHWLVrr+g0BZygAUAQVx+FQf7DEdg3cQ@mail.gmail.com>
 <CANpmjNM_fP-ziy204=1rd52hOO4WfCsxAwQgJ-t1WF_yFo=UzA@mail.gmail.com> <CANpmjNOkX5NFFekezDSntjVBp2mVgxTprjV1QK56DsE2fv-w3A@mail.gmail.com>
In-Reply-To: <CANpmjNOkX5NFFekezDSntjVBp2mVgxTprjV1QK56DsE2fv-w3A@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 26 May 2021 20:12:54 +0200
Message-ID: <CANiq72n8OT7mw0comw+mJtr_+Zzz+kv8Pd_eR0H6Ccqrd3T+ew@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=Rita3KRr;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, May 26, 2021 at 2:38 PM Marco Elver <elver@google.com> wrote:
>
> Ok, let's wait for response to: https://reviews.llvm.org/D103159
> If that lands in the LLVM repo I'll change to use
> __has_feature(coverage_sanitizer), and send a v2. That __has_feature()
> is a bit of a lie though, because fsanitize-coverage has long been
> supported, but it just so happens that if we get it, then its
> availability implies availability of the no_sanitize("coverage")
> attribute.

Thanks a lot for that! Appreciated :)

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72n8OT7mw0comw%2BmJtr_%2BZzz%2Bkv8Pd_eR0H6Ccqrd3T%2Bew%40mail.gmail.com.
