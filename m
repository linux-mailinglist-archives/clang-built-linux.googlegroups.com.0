Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEHSQOFAMGQEOZMN5IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E9440B81A
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:33:37 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id t6-20020a056808158600b00269838692desf234605oiw.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:33:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631648016; cv=pass;
        d=google.com; s=arc-20160816;
        b=izUxcDh7RYmZGtaK6rP/6MHKAr1EtM7KNOw5IhLmlBekCPRGB4KMzHiBCSbfeviRtq
         CkhXsSpNKx0euGyEE4r3x7LfizbQVb8mBBjjbAJkc4gmekg3bhh+JwnRpt/uQFlOsEq2
         n86osATSkhS2xrAnRquyLzhKgdPBUD2u2OedMhvg0ZiUMBrYcuslHZf2U1x0+HcOwdRY
         XA2A7vEaSmJJw0yWYra4+SRM2FlI7VMJv5rzKS8rxvxMgICbUKXBmxb9eK4v5oNsqPVN
         2jW19KNtBI8cPDVyw92nAjh3LM+E9eknqO9fA4hp6o75TsOuojkbs71vecXGUxGmJine
         APaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lWs8tHlSdezzsma1TzzFHh+dZbWeiHok3Aq0GcekFXk=;
        b=aUP2xnXz0GXbBSfBO1POSluHCjEtqK3E/E+nhUcpWWuI6FK3wDx4BZwDT4h0c0EXJQ
         aUbGZicSUMkIIRKJwEtjb0bntKa4VthtI2lng+aqgU01NrEAIUUkKx9GVns6XNUdkrNt
         WgVw5YIPgWfBijw/4TKC+QYV27Ly0xtS31tmnoFHYJFfcRbl+adJaCxwXp1j01Cp3VHQ
         lskKasFrI2wWfvblSP7wlYBSngOepk7EjbqfHkU1GilzyZJqSt5d1DjNntPJAd748or1
         npmaXQQQ6L+pFWEQIfgAmUaKZsi08gJ5WLPgrIFycQAp/6r3xIlb1j4LQCSytf5dIl5z
         S3fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RHFMNiuV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lWs8tHlSdezzsma1TzzFHh+dZbWeiHok3Aq0GcekFXk=;
        b=Qb8QLHqGnH7LA0JEFvV/XUikrB18mofA+Edf408Jnk36xgws0bixSB283nF2moyrCW
         UufW4WUTvamd3kPe+0NeZlvw50ZIXQL/0m0xMnbHUqb9xo0C5bc0/bAi9FzHVwMkbLHG
         LokRvLy1lgiB6jl54tXJZznY4P0agy/6Qppi8Aqxq7jBhQJLkO023U9eGgo1oitiQZ/a
         69mJpFwQgbmCE+DaKVTZ23OPe3kk/UZJQ/aN+5NrN6uwBKfy673da9BR6CBBVvY4tb7t
         aTFB7W1/t3Q7RoJbIw5ipxuhTDUFe1GzXMTNq0liYnrDgKoI+E7nsJUN/ANveRcPlxoz
         ip8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lWs8tHlSdezzsma1TzzFHh+dZbWeiHok3Aq0GcekFXk=;
        b=Db2b2jBrPbBExeGrfjO7oZMJhoSQnsz5ByghKEFaz34bdwGNefhfbe/GE1lPvEv/Yx
         rt/kzsDlpewrzpzfDxg+w7z8mIj4NhUE4Cs77b4c+C8Y4iAyAmLWAj3LqXUyIrk0rrs2
         H6c6BKNIromhLFo6OuYR5MjbHEJm9AalM8cm1peF6Bu081k3XGlhuxS6aldpnkOkc1jI
         hV7NKTDvHDOBqbLa1JG0UDUhtDUqjvZIxzPqmwuR+i/5vz2znYgc9/vv00S3QLGSxiQC
         xuNrmyYKJ7PMUHus4nrS8joWp3RlYng73FyYWzagKLuVTNQiBz1EtArRVR/euJTobrdQ
         B/mg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qujm4+hjDJMdAT6Ua1N/adKGCLD7U4XXXCO9plNuYIR/r7evl
	h7PxzomYfGYrUsh8bAmB5IM=
X-Google-Smtp-Source: ABdhPJyYwrb5cDWG2od/irPwm998Jap//o5YjB+/8TVUi7lw1FiYDIGSAIEVX5UKZq/USW8MEe20Ew==
X-Received: by 2002:a4a:d752:: with SMTP id h18mr15456156oot.13.1631648016123;
        Tue, 14 Sep 2021 12:33:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:14d1:: with SMTP id f17ls2329501oiw.4.gmail; Tue,
 14 Sep 2021 12:33:35 -0700 (PDT)
X-Received: by 2002:a05:6808:14c:: with SMTP id h12mr2744080oie.24.1631648015778;
        Tue, 14 Sep 2021 12:33:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631648015; cv=none;
        d=google.com; s=arc-20160816;
        b=vMGz9ZmntLlojosPf6B59COyzaGsaQNV9pnCMcmIuyM742OLmLY17a81t9a3RBGKc7
         HTr+etsKUhAfvSxGCwOC9nHEX66953W0ZiQlOxAP8DFtHAZzw6e34N+yyxgcErcXc3DZ
         e3zKQRig6KkiGqYoEcvP4w+A+n31Yym7TVElp7c5kA95ONpiqFLp+zY9bunw+spkPtU5
         FXxsP/i2AI8mYWcd08jXOg2caa5MjThkcq6PLezuDyjWCOUgPmsSVE+vNBj1ktfC8zVu
         49+s6IHIegNpHWK5YVR+8nu7W5jLR1ImykzRScrelIXz28SamGY0fRuKtkAQeFDLdlpY
         FgNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9HtM5LJiLlnoib4lYiLRFHMJjkrTtS7BIKN49Lg7zyU=;
        b=yawnISK3Yct+oSLG1NNhzToQ1qd4f7BHifPfjA1O6Bo3H9QFqymk9ft/TeT1UuVJn+
         WlW0yK1s+uC9gNJI0hNyCQpZaignrBbNqTxwW+Fx9QU20QN3DI791HdHEYRzA1L5DvdZ
         tL7hHMrGylKzt6X5cxcsxdYNvFw68J9HIxIiT3vEgsuUH4VWp5Vgu7JRfSN7OU3GP9a0
         eY3XvILlUFW7owALRzB6N0AyKo5rCALrG0ChheIRJ/3lxNAwtpMa36dS80ACrPqzRuqV
         Y5rblJHo4hgGf7N/lUsFhMJdv6U8Qzzxha+V/mWJShmcO9h+f9d/zPdLvAMswyGB1HNk
         ST2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RHFMNiuV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id d24si973416ote.2.2021.09.14.12.33.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:33:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id on12-20020a17090b1d0c00b001997c60aa29so2691833pjb.1
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:33:35 -0700 (PDT)
X-Received: by 2002:a17:90b:4c8f:: with SMTP id my15mr3924149pjb.131.1631648015192;
        Tue, 14 Sep 2021 12:33:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i1sm2464576pjs.31.2021.09.14.12.33.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 12:33:34 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:33:33 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: x86@kernel.org, Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3 09/16] x86: Use an opaque type for functions not
 callable from C
Message-ID: <202109141233.01761C8@keescook>
References: <20210914191045.2234020-1-samitolvanen@google.com>
 <20210914191045.2234020-10-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210914191045.2234020-10-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=RHFMNiuV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032
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

On Tue, Sep 14, 2021 at 12:10:38PM -0700, Sami Tolvanen wrote:
> The kernel has several assembly functions that are not directly callable
> from C. Use an opaque type for these function prototypes to make misuse
> harder, and to avoid the need to annotate references to these functions
> for Clang's Control-Flow Integrity (CFI).
> 
> Suggested-by: Andy Lutomirski <luto@amacapital.net>
> Suggested-by: Alexander Lobakin <alobakin@pm.me>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

This looks clean to me.

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202109141233.01761C8%40keescook.
