Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBX7TYH6AKGQEMCTPZOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F82295203
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 20:11:44 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id x5sf2279877qkn.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 11:11:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603303903; cv=pass;
        d=google.com; s=arc-20160816;
        b=bPVkCtSOhyjfAuH1Rdvqa4Tvyx9rx2kf12BXCbxgpnckGV9Waby+TnuS16cM0YZhWU
         eE2qKSM9MiuYXZ2HvY8qsgqcgw910volmW1j7g+wCOpUiPqzFS6XLG3l5pvYa5ANFTlj
         nylW6EcX7nb4ZgMYd6qKpV/ZkJFe2iYobmbmGO6HtXR1Ci49nv2DAWaLM8sNUpexky6X
         Z3AxVVuIlqaWv7PvtxvGZdCb2TjmOkHLDZcHo0oIBI655/IFkfwXlnbOVrz14tyXJIVU
         RdbOk7+7pqn0sg/m0NX6mA9B715xPSrA5LeYS8KV7uF4AqlPp/FerYxkbBRFpWs3ihSh
         GLSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dH+U3GVtbcn6olCcjcOSomx0yOoK798cKd2SpmDtZGI=;
        b=E27L0V2052fOpa9lg2s70Vml094aXUIB5Yi47XN6Z+1qigVirMDq6GFD33Vmk2/jYx
         K0M/b4FAcd3qgqsVT4IG7dOQlflPHAA30Cj5NpJgm2c+u/fLD7COzpPKkY57SRboGelB
         fDqU49t++u8Y5rV4EThK19vzrh+WQBznpr912IQNOoGcPwrk4FwLB/rsq8+zz3+8OKUu
         gKkvHOZIBpCYde7j0PsU3qMLMlrVqmvYyLvUBUZshq5NW3gV7i393wQO7kPACC8PE10p
         HDIyL17DB5QkC5ZauEilhQ9hk3G84aDOaRHhLQZKWTddb49omOx+fYjjb/gvWir9gxIW
         8R1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=n0wZaSkF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dH+U3GVtbcn6olCcjcOSomx0yOoK798cKd2SpmDtZGI=;
        b=VUvFNq1Qgh2US1ZkAKuvTYbOsADQap5WDwmjDzBz0WOEb90qfhL25Zv2sxgteSMPyM
         YBTNz/Pvtbkr9BU0mc3dBIMVvfdh+fgiu4G/wpDV0NOSp5c1ZyjQdFkjClStuD6Sa/Pd
         ifVZ9f38FMhd5cC1frKUJGT7CueWQSEJUHTDi+RIgXC50M8AwfJ4OQL0IYk5Kdo8O8Nc
         DIr+vrQOXGbCeQCEh9dbzi1EpanwCOM9vEwM1Hi9ewfcBMqe8l0eFIHD3t8u9xqOVA+n
         K34nZ7gdDJxAmBzMqYl7cjhtSafaosVKILDOGNVii4RMTCe9AbWmSWgKHX/AzUEQCOXp
         KgGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dH+U3GVtbcn6olCcjcOSomx0yOoK798cKd2SpmDtZGI=;
        b=VD1P4XTXVFdNVWmheZFHDUQjKJGaMYwPAKRm/va2YiEbXE30Xhd2TMzAb4Jd+0f1fC
         YnljKBjFpEKG32UBzK/2h1VLptKIAlBFNpqQFRmfv3xvufsFtWSyze7GPpgHvHjTG/7O
         UnBe3U9dozT0rGhC2k6R6SXMmSJzlrthsO7tVLSVoTUb2e2pwotpVQ+L9PjgEsCMxLVd
         vXLff2gqdeyHFn95O7wQfDM2TBCOwGpn1ThKXYXqW7ywnQvFaArCNtDq0KZcTqoaXwLD
         tRCbCkAAdpKlM6we+vGivyb0IunEC91HSJEWx68E7yNCDzLy8YbjXJAoC6RSzAWgojmp
         oZog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314rsfPOg48b9u5V4UBQDt2xT1wmXeMefy+5rtR7wCs5PEwBxA2
	IMbgWjgw1htTQXnlpfMIX+I=
X-Google-Smtp-Source: ABdhPJw9QPIB/DWGBNeF5X73T7TdVgl09Pn8Ur6b7/5s+6c/sat+7NTeoO6j+RDy56RnsOLbeF5mrw==
X-Received: by 2002:a05:620a:235:: with SMTP id u21mr4562165qkm.500.1603303903160;
        Wed, 21 Oct 2020 11:11:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:efd2:: with SMTP id a18ls150040qvt.3.gmail; Wed, 21 Oct
 2020 11:11:42 -0700 (PDT)
X-Received: by 2002:a0c:bd2d:: with SMTP id m45mr4120876qvg.36.1603303902709;
        Wed, 21 Oct 2020 11:11:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603303902; cv=none;
        d=google.com; s=arc-20160816;
        b=zMLSQX/Gw6GjhDwRIlWIUVFfHq5Ilhii//bzO9vuo+pKw3Hx3liwnYJTCBoWi9O/wD
         kqNlhOV5Lzm+q98MTGRmG7tiI/MFT+IKN6fL47PeUOTIBJc7GSt1SL3ZZ0sVhYr3zLlb
         X/SichSD/+2xqtfF12RMc8GaPIRMnUQ8DdHlwdYHaRZBYd1jvFyuCEor9wypb3HmaCyT
         Y3y9sfs0agEuyXTKGoB2AccL2hyU0JfTlbE2M8PKuvNjX7D4GksBdlT6MGoQzHFJDZP9
         pCDc/DUEEZoPhPTMS9MpjIBM1F9tsTAxorqvsGE+XaFBX3wImPprKpgbe+PvjntDGUNG
         UY1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=z9KDC3xdJxcsqVJz6Ezf3Q4yoVIc5WYYyUESqfueCzA=;
        b=Mm0wlaUyT9Sk7sHdZbIY/4G6C2Wnqn+h8WPuyJcOmjfKGVJCqoGTsIXPaKdmwPXjjN
         vFN+k7EOcBlx2MRiZ6Ok6i+ud24L5GnQHzSohIHqy5UvwayYncKIO9FtoTr2BChcB38W
         th6VxyUDF3t+sLJJStljbXfB/HZsioDMXVYYgxXBs4yc/Lm7cqrqrGjohu9PJ437o0+Q
         4qfZIe8w2pK+8tDOTA21GlmtrXbCJrsHytH45cX1441aRuHSl1b5NnCA2VZfnDBrS2LJ
         JfEwHyucn22qWW4Nj9vvpiLaMBtTuBwPUzsCAPqZRba0UelNlXKFJXHA7Akr2vTrUv3X
         5l8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=n0wZaSkF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id r40si203158qte.5.2020.10.21.11.11.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 11:11:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id n16so1927571pgv.13
        for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 11:11:42 -0700 (PDT)
X-Received: by 2002:a63:794e:: with SMTP id u75mr2280814pgc.235.1603303901883;
        Wed, 21 Oct 2020 11:11:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g22sm2997916pfh.147.2020.10.21.11.11.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 11:11:41 -0700 (PDT)
Date: Wed, 21 Oct 2020 11:11:39 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Sedat top tester, Kees top dev
Message-ID: <202010211110.85B3F5E@keescook>
References: <CAKwvOdksY9bakKwNLS3v1YqkS3wwqy3cUxzRVLCx5grqMB3fbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdksY9bakKwNLS3v1YqkS3wwqy3cUxzRVLCx5grqMB3fbQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=n0wZaSkF;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e
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

On Tue, Oct 20, 2020 at 11:12:59PM -0700, Nick Desaulniers wrote:
> https://lwn.net/Articles/834085/
> 
> Congrats Sedat and Kees!

Woo! Thanks and congrats Sedat! :)

I couldn't have done it without all those uninitialized_var() uses. ;)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010211110.85B3F5E%40keescook.
