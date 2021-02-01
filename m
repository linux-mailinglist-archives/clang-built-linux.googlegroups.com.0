Return-Path: <clang-built-linux+bncBCTZ5O62V4ORBLWS4CAAMGQEXIPEMJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0492630AC65
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 17:15:43 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id b74sf702227lfd.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 08:15:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612196142; cv=pass;
        d=google.com; s=arc-20160816;
        b=dSK/A8JR4lo4CQ7Nf7W5Mc6+7Mq42Ch84D/Adz7XWJ4/05VcbWujMlGCAb87RaN01V
         uJtTcyjwVdVR0qmF/g6SRcdLccmd2SDLhip+sUA5kYZq6mOgvjzAkd3gueYRtWK5ovf/
         QWJK3BqKWZhc4e73ymCFwIUVf/ma4Val/ao3ye3XZ6qipHp6CheJzRznSJO8b0H3Llk0
         j/W0/OjynYjMDX3yOvEPa2CkExHyLqgbS69LznUCo3r0Z7K5n3ksdCux+VlcLRZ23QDt
         0dV7esvZgZIwNkK9vWUPgHNrvdxzAf0dxcaxxDY8HZ7D6Lh1M2kg6UA7LIrIvW06KUNL
         jINQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=lelJ+JsNbS/PXMm0HNd06/F+APJwUwrl6NS4/2Ra7tA=;
        b=U+r5jyhV5POu9tgCodOPbd7d96cNju5lIlJgN/UVxV7Bs05lj2eSwjbEhfjYp1FhcL
         gHrKRS8OmZuf6QVYXMd2KhknXSRWqtRZVPoKZTOTzh1I+z6NbJbrulibA3O80U6e+pLT
         DeAFMK8rjmjsAKxLW0+O03JWtCT3IHaYWyutQIY9RfzhemopgAr1qjK/zlxNjOkYDQqK
         K6ffVUuVZTYXOaKk4CguCaUIweTaZ9XH99TgqPW4+tsd3Rn0z8qjJsNatwujxqQe/JU7
         9gm0sTe7eSv6VvZgsEXsn3DasUhu9wZEV+Ec9KsWJm6yBOvUq9WicuKoTDLE6SAsQqGp
         8Z1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jd50eoQH;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lelJ+JsNbS/PXMm0HNd06/F+APJwUwrl6NS4/2Ra7tA=;
        b=iGmduMSSXKE2aYZTC+1zhHg6g6kxce0bU4W4LoYb/NXva3I+snCI9EIJbdW2GIT1sR
         TZv9QF7RRKkEQCwcyfEwsx4kahRL1HuqKkc6obsXTpC6LQ0nXUaDOQdEn1xVJL6VU1Ye
         u+UhZkpzBzCQ1W2cPR2kx0aohVQf8h/wXNTBblhpcb/yR52vtBZsoULFRmX0kT/hUX1d
         c2Uvi0b35FF+wnBtQqjT2c7g/5nefT1XZs8ZH/+X9yyvD42DjTX9PD1Ts6KrIcllHaX0
         aPjMGZ6+Oq2IzCJT8WPhe6ZifawPu5xI7kaciIpXR+RJKYDjr0N9gHd9IU0QOL1Eq8Yn
         4Dew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lelJ+JsNbS/PXMm0HNd06/F+APJwUwrl6NS4/2Ra7tA=;
        b=IVI/AP6LseKW3ze3ZpUmUtV9djcWIiuDobzs+tFaELrMsEAs6DLzYuu1voIjV1Srie
         9Q+u6ET0BbKG0b0ZzhOuKJITWjNeTZCMpNcSL1K5EUxqFk83YlJLThboUalIY4nCrGNg
         ZWXnfg+x4i89ivRR1JQLddwc+1ngFAHnoZswgLMNRbGdw7gIhKGjicbYqi/Re8EOsdji
         lNWTvbM9S5nc05IgU5QOFroEwhdMatHuIe8ab12dy7pSICvIfjTScUZAnBxFByu0P3uU
         yHmMCXD9z0fUXWWfwgBJBN1jJSffNT4whtzpiRQb3cq+G2aiIH3bB0jhSiMsOcpRF9KX
         jPuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lelJ+JsNbS/PXMm0HNd06/F+APJwUwrl6NS4/2Ra7tA=;
        b=CCDFH7Wbm46syKhbWAIxcq6p50dHyDmkgpHHNJr84UOySfYCsK3bbZSDyg5TnhcQfT
         7a/e40wQBECDIAxFhO+626RxvqvQxuPJJzbW+/dqnS7rmLsOapqpgAO3KZqJk1AK8fOv
         4KkGveYwgC0gAZTh/kKDzfSVby3fPDbFimFxIxXogRQ77P8rOLHXfAn72bkrUVn5b8TS
         tlZ4ji2Aw9t4Rr7r8mJ6ywSHYvxu+Fr4fXeDq5vaYkpzl8wUuFGzqAZE/pFPrlY0ind7
         53T0q40Gt804XBdvVgYDTROkitSYO0U6M8Te0aOntmSofZ5DxTO45rcVjgWjrmv7TQvj
         HVGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530I0GGssgEXc+r4HUj2jNdr/8PFCRe+zFz265LBKwSsNLT/vHsL
	8i0eqpqqpcTVrinNvKX5C+U=
X-Google-Smtp-Source: ABdhPJyFJzMFIP8TyZfmpLj4OvWA4NkvgBxmJn03ZmPvSIjTswnEAb1YtAtJ5uzTElncOBfQStGApg==
X-Received: by 2002:a05:651c:c9:: with SMTP id 9mr10734081ljr.102.1612196142568;
        Mon, 01 Feb 2021 08:15:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a58c:: with SMTP id m12ls3230190ljp.2.gmail; Mon, 01 Feb
 2021 08:15:41 -0800 (PST)
X-Received: by 2002:a2e:9a19:: with SMTP id o25mr10820516lji.413.1612196141549;
        Mon, 01 Feb 2021 08:15:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612196141; cv=none;
        d=google.com; s=arc-20160816;
        b=Nfy1IfhAgSrv8WhsEpKbLYWWBXLja9re9DzVJn+CEOBHHGcXLadYiNg0UOascxoA2A
         w65k+vh4aZNCEaXHFXf0zGp+mkofeafRqGePNZJUTE41G/Kc889hHRPF80Xw4JC9reLd
         nyYSS3cW/sLAhBqQ/5MItZI4+fJwhZRAxQbGDCsUrEa17ZwemwGvNDbsLznEWoJ1hdAP
         WAK9hkOtk4TebuWm0CRQmZ9wbFTdPq3Ez4CO88SXK1YYRKU+cuI5GLQqYwpfht/qwDd8
         lMzXRTiIV01f6WTIEWlFqLK1qIcD9/OvP6KDY+I34Qvr2KICNnjTLh5ekAD9/fLq0a8+
         MDJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZDuWWmP/CpWd2/GjAQP26lhvef68ZdIbhiH4GoBTIfE=;
        b=rpHfQ6I0BVHtUJa93D0FZfm6EcXJ5wOOT9flNO8tNau/5Lzu3aNqRj1TtcPi3d1OYZ
         XtycNhIzoVOgnjAXrlhIdgoORNE9SqmEQPUY+x4sPz7YRPhWDqFYNsLiyoXCiMt2/Nga
         n5xXco9J5W/0tDa9cR5NV6aZRhL38QKmg6qJDTkG5dujryNQ+jI3rSDOwSy6+R4djdDY
         CqKKRgfyF8RdlWQBF3yVr3eRgHv+BYqwJKVXSHA3MjtEWJXClzrnMEpOHB3GY48DHvX4
         9b8dNEK760pvM9chNQA0bvFheVUB34AjVO9AqfREPXcWin/D9OSdttBy5kKHsB+X+oQn
         SVog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jd50eoQH;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com. [2a00:1450:4864:20::430])
        by gmr-mx.google.com with ESMTPS id m12si546355lfq.6.2021.02.01.08.15.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 08:15:41 -0800 (PST)
Received-SPF: pass (google.com: domain of viniciustinti@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) client-ip=2a00:1450:4864:20::430;
Received: by mail-wr1-x430.google.com with SMTP id m13so17211343wro.12
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 08:15:41 -0800 (PST)
X-Received: by 2002:a5d:69ce:: with SMTP id s14mr18382220wrw.206.1612196140971;
 Mon, 01 Feb 2021 08:15:40 -0800 (PST)
MIME-Version: 1.0
References: <AAB32610-D238-4137-96DE-33655AAAB545@dilger.ca>
 <20210201003125.90257-1-viniciustinti@gmail.com> <20210201124924.GA3284018@infradead.org>
In-Reply-To: <20210201124924.GA3284018@infradead.org>
From: Vinicius Tinti <viniciustinti@gmail.com>
Date: Mon, 1 Feb 2021 13:15:29 -0300
Message-ID: <CALD9WKxc0kMPCHSoikko+qYk2+ZLUy73+ryKGW9qMSpyzAobLA@mail.gmail.com>
Subject: Re: [PATCH v2] ext4: Enable code path when DX_DEBUG is set
To: Christoph Hellwig <hch@infradead.org>
Cc: Andreas Dilger <adilger.kernel@dilger.ca>, Nathan Chancellor <natechancellor@gmail.com>, 
	"Theodore Ts'o" <tytso@mit.edu>, Nick Desaulniers <ndesaulniers@google.com>, linux-ext4@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: viniciustinti@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jd50eoQH;       spf=pass
 (google.com: domain of viniciustinti@gmail.com designates 2a00:1450:4864:20::430
 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Feb 1, 2021 at 9:49 AM Christoph Hellwig <hch@infradead.org> wrote:
>
> DX_DEBUG is completely dead code, so either kill it off or make it an
> actual CONFIG_* symbol through Kconfig if it seems useful.

About the unreachable code in "if (0)" I think it could be removed.
It seems to be doing an extra check.

About the DX_DEBUG I think I can do another patch adding it to Kconfig
as you and Nathan suggested.

What do you think?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALD9WKxc0kMPCHSoikko%2BqYk2%2BZLUy73%2BryKGW9qMSpyzAobLA%40mail.gmail.com.
