Return-Path: <clang-built-linux+bncBCIO53XE7YHBB74TVT3AKGQEISQQS3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9BD1E0405
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 01:57:52 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id b15sf7744666oti.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 16:57:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590364671; cv=pass;
        d=google.com; s=arc-20160816;
        b=0pmo3OXAcfprA0J9xpjt0PZNzTGJhrtjLxMQAeIIlloqjvLluqIqhZP56NeTnq5KGa
         mNpGVawjNMOV6FTLn+5/1EVwNdynfSbTVVej9d6O0jNj8bj28lEUgP6HzVbdpdrus7RK
         UMMChnvq6hJXKq7NHB2tqc4UoFfTKLDYb7nC9QHfBHuDKe0vEUvC8jNbnMIns/rNWREl
         nSu+T5F5UW0fzAiPJLfcJZ5uktd/hLj5t0js5knnDl+jErSGqymn975JRRU6XYzIglnQ
         CMTKNZPcscBOO4hquZd/upuVp1Q5VYh9nUTRdfdcF9n9fQZ7MS7QQPRMG7veom+ZGiYR
         B1yQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=/BqoVIFiLNVQ95LLHKiKmKiqJrDg7dnIccl7XmIIPw8=;
        b=jSqdVI6kKMYGbwY5acUtdDA+iARIpnJh+bwPdRNA3qxMacUVPueN9ySZAGp9CDC1FJ
         jU6JwCBKgad3D4t2upVBpTB8zQIUrCXJkmPxSETWc3zgA6lihadwWqD524BSls3Xo1SE
         wtTqh1zwoHCUZEAwMBQIcWvQpPH23swwVz2vyDZx5lOB98xEpBDmC+aKNpni3VfpCrrB
         jQkYaOdkiSSzf4rIrvmnt7zCfLKoldewpdDeCmilW5Tx4eN0w7gjcre0Bh/5rDRspkS/
         gX3spWPhDdIjQ7M9dmjY9oee0lqJWhJyqg5yhT35sHS9ffJ2TNOfLVjtTxyaaugfv7n1
         wDoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F6VsXuGE;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/BqoVIFiLNVQ95LLHKiKmKiqJrDg7dnIccl7XmIIPw8=;
        b=OWKxjF2A1aDA4jU13gfNsJm9LBUmAd779PrQvkUTRFBRuffV+CWmF0X5b63a40DACj
         N0DSEU5U9Csr1Z/gi7vT/WEi0YttYPcq93+n9l4w9aSeXW0llyZIyEJz7RsMyZfVEEN9
         8Pu/Kdy7OHNNfVpIJ0rlBIDxXrOoJh27eNp4HN3yHm2F7S2g0jmaG+9967SMLm32OmC0
         ndfXLNO9FAh5VPJYIJ00LbEQodKit7EUrnLk/TUqsBDeTeORS8Ws6AgQhTDvTJpDEfPy
         U9yrz1yjot6Wt4VV5Br8ZO3BdSuj2Vt2HoDmmA4aOKFzk/3xnEbJvmCkg0dBXi5b0/is
         R49g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/BqoVIFiLNVQ95LLHKiKmKiqJrDg7dnIccl7XmIIPw8=;
        b=UjtDGtOzPJdwpxykg8S395bKU2yajdUegm8nejhp5323vLZKxWIO5tYtoscVEYPWQR
         w2Cd0XaEoG9lZWpI6Gs4wBEcuafrnWr/3aBy8t8kimAZp0wmdF10YjWhOFwr309ZNUK7
         UIcjJ5tqjMKvOkNw0I7x19Co4aOyWMmL+sEOJW/PHI2inAQ0nQBVd74AZoTgMJjRiUs7
         kAY8TzbIjKTPBN0oiQsZovByWQzcO5dQivExwyIeNdEzMlDwhxbnXifNMe0DZMS/A4pR
         w3lZPqkNBUMh+zAhnL0ryflOrXjbCSYcD7H47qEib3SkWVyRY0jNA7Td7jw8URVcMyIg
         P8IQ==
X-Gm-Message-State: AOAM531b7sDJFba1T4peEBA6cBSfRooQT3dQ6G/nd6tSsPyrQmnQA/qK
	xAKi80mtBahoWIiDN6GSTtI=
X-Google-Smtp-Source: ABdhPJzFrU8b5v0BcldQoYVFwxvRGyZlYGrI6JO1Kg6n+25RxsO5wxkqpFAnMuacc+ETPYtSxOKBKw==
X-Received: by 2002:aca:72ca:: with SMTP id p193mr10052173oic.34.1590364671792;
        Sun, 24 May 2020 16:57:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:731a:: with SMTP id e26ls1333288otk.3.gmail; Sun, 24 May
 2020 16:57:51 -0700 (PDT)
X-Received: by 2002:a9d:2da6:: with SMTP id g35mr19941663otb.195.1590364671454;
        Sun, 24 May 2020 16:57:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590364671; cv=none;
        d=google.com; s=arc-20160816;
        b=vNoYny/2pOCqV4S41UwLHV7vwi5nNwthKkkbQy/oR614uY5zTN8Y8i6m27JkMoo2fc
         6U+29ZTAsA4ul9Bh9AkNIi5g+yC/4WE4TbDSYlVuWvYuju2ktvB0xhduEw47Jfx24kuw
         3wVqpk8cbSFyi5DImy/OLy74Od5Wwm0TvQbOSMjyjOXEduX0GSGamJ/FX+UTrDvlCHer
         /1efNmY2jcuX/jIUeWF2uX8XA0vrBgCRdLkoc8mLtGmtO1CzCVcYdx8beadxKaP8jajw
         DBGuTCi1id8jh/ht7pR7hB/lN35U3A1OSqstTsowvH13O2Sg3XV98i2dQ0UWZJJGBZ8p
         kuVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=KnCrzlEjsfoAQJ2vuCQBZGIyVUirCRVTyeXStV4i7EM=;
        b=bX61zFRqj7VNibLXaIpxmJY0On5ycL66DOQY45Dh1C9vlXbW6N6dKBHl4bq5Qi6yIZ
         0S+aOWtQf6yUv882fC0haIppxnZSMhLTgLkX7424kEHpYtG/hOhIaP9sPvCJ8uVZ1H9m
         RydNQhso028FLwfuMRqufmwoyGwitL4OFk3TcknJBlGBdRsGaVuXM5N3o+gtHPjZXvEF
         wA7PWqe9FqTZIGDfWNVetdbxKTkc4vj56xJxp3yq2w0D83wAbJwUAMa8sZXbVJ7x9Fy9
         jW+17S8dgabA1YhnOleRGTF5vt8qes38d3UwildiBA/cbxQss8BJPVPH1uuLn5gY6jTQ
         c6Sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F6VsXuGE;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id u15si1158704otq.2.2020.05.24.16.57.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2020 16:57:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id z80so16275069qka.0
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 16:57:51 -0700 (PDT)
X-Received: by 2002:a37:84c5:: with SMTP id g188mr23223696qkd.344.1590364671056;
        Sun, 24 May 2020 16:57:51 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id f33sm15093959qta.44.2020.05.24.16.57.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2020 16:57:50 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sun, 24 May 2020 19:57:48 -0400
To: Fangrui Song <maskray@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] x86/boot: Check that there are no runtime relocations
Message-ID: <20200524235748.GC280334@rani.riverdale.lan>
References: <CAKwvOd=qB+EoJwfAYUA9Hg7f9op4Q4W+TDnht8pLRG5bPX=29Q@mail.gmail.com>
 <20200524212816.243139-5-nivedita@alum.mit.edu>
 <20200524233607.cihnsmxuaqoy7xi4@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200524233607.cihnsmxuaqoy7xi4@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=F6VsXuGE;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Sun, May 24, 2020 at 04:36:07PM -0700, Fangrui Song wrote:
> 
> `grep -qF .rel.local` from 98f78525371b55ccd1c480207ce10296c72fa340
> may be incorrect.. None of these synthesized dynamic relocation sections is
> called *.rel.local* ...
> (it probably wanted to name .rel.data.rel.ro or .rel.data)
> 
> 
> Reviewed-by: Fangrui Song <maskray@google.com>

At least from gcc you get .data.rel.local sections if you have, for eg:
	struct { void *p; } foo = { .p = &bar };
where bar is defined in the same file. These aren't relocation sections,
foo is actually placed in the .data.rel.local section instead of .data.

But yeah, it's incomplete, you wouldn't catch it if bar was external
(foo goes in .data.rel) or foo was const (foo goes in .data.rel.ro*).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200524235748.GC280334%40rani.riverdale.lan.
