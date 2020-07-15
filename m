Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBQ4OX34AKGQELK2LTXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEA12217E9
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 00:46:29 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id k4sf3935363pjs.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 15:46:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594853188; cv=pass;
        d=google.com; s=arc-20160816;
        b=ijLnNdg0cI5Pw4MzuyCROpcExvwi2OgKq61jGyy6htFIIVggxPdKsXPYoOy4IuBZht
         rXFZXE5MDNThQ9p0KHLnQ/GkC+44tVinw5aTHeW58aKHUTu38j1n29zXnQgev0T7J+tj
         vqiG/rviieks/SY7nGPXlFTBwEINmeSrzg/2zKY3DOiKcQJVYoB7seEx7zeK8BPKmMLb
         kRLLGmribF38PEZy2ypy0xo/CascUiXKTjBmY90OTLkNkdMeifVIiAltKha1Bifq/sOB
         uRP+DX+Q6yvHFd1NmtnpnvpwwxMT9BS4pxTWnaWZdlADC6tiietRGRuPTmProNjxboST
         Grdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=qzlZlqGmRSBu5iDFFqiFVSh8qvrDJfiOLPenLvi3sOk=;
        b=SswsuSUD92T05pYSgLexQrjJAwile9epDVX30RIsQ8AuKeqiaGyw1h5DdOJoiIOhV1
         4qrY9++gDlpSKBDhMwielq0F1pSFvMJCyjZq7htXnA3yupCuvzsfn5S0gzb+nxqPa5Cn
         PEAxMZp8+W/TnMo35LE1WjgJ+/yeaEyJyPmtXacVLHfSrvDiwz3tUoTIvo07L4ZpoUF6
         BagcvjgSVCZSYSE7Y/QkaM8pJlMEL3orgm7i4PMpSUA+ZBZvqQP6oA4V1briKS7L8pXq
         NP+Df8gh+bCGtVUNLbrdHgYrh11xgwU9grmF6cKVD+iLOWvJhs749agyFQYkGIyFzIzv
         pHHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ce5cCx9M;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qzlZlqGmRSBu5iDFFqiFVSh8qvrDJfiOLPenLvi3sOk=;
        b=nHF91Y+JiZHRb6FHJl5HY3C1FqUdMJJu/BJG6mLu6w+1L2DQNiM4ljx/Sl4sMFLf8J
         ZwIBZIlAaddEfwj4yVRkMFrCZyDoc3VSzbCevACIb1yispTv2vBS77ByVYacF7dO0rqc
         6omzia6VrAmuC2bIYBQjA/zKswX/igcB52M9LnrvCnd2BRep3nmu/yrzwZDagab/HnRC
         IUbFOP6tYDO+iebHEYsIymtp+S4auIDya3S08td/8NS3posuzCnotyworWwlVL0Fga5G
         lyONsnlQggc/+ZXyPwSwxyD5zA/+vrVW+GD4GFrvl9vFKBHxDjjPQzsI4Mjf11b7bEJF
         3a5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qzlZlqGmRSBu5iDFFqiFVSh8qvrDJfiOLPenLvi3sOk=;
        b=idnoTiBribmnLFj6lI6ilb7+ca+9LfGxLqjqCOlYuxIL8cmD4OgwUrR7q2l4r5fuvX
         wNnru6yLOamQByOIToFANgwFBiTpoLKAQA+eeEa+AodcaOZYHqrhjYuh5K0JpZxdezYD
         5U79vNzb7w0AYmlof8lKAPMk+wPmw2SBy4cy7GclPs3MopX4QdiZFTwCU+6R8zRGW3QT
         ugkX130HAMjr6inYzYQMo0iTmg1T78yyAa5SXPEWbD05sxOiOApUVJH3iRAO9DCxPPdH
         Z/0P7fm9edo0zzR4k6sEbCQYiBobU6KixylmLSVQfsM2I41217Q3tz3PEQT4DdgfVFE5
         189w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qzlZlqGmRSBu5iDFFqiFVSh8qvrDJfiOLPenLvi3sOk=;
        b=M44x6ceUDgoVzajgJQLLLiJGy+al4smyx1r+B0ldcUi949bS0PWPNh3e+byh7ov5XP
         z7CqunpRoQu90NNnk15AzNnpKGcGjpTs1D0x8a1rJSRg7JGK6lAUBjwxH0VSH2SDpw9X
         jC1pkXCCQPl18eFlJ7gC+slR1ghG8ywkNnvKIQSHDQFv+pQlAjEdpiGpDlyUycsg0R66
         GqVahh365paiJ3505dPW22WiJKIbl7e0Of8X3METEgMuUbKYtJFO+0xT/s1nUJdPATLt
         hbS+ZRJO39SmrRJGBlbmLc3l82ecLEt3o/LA/8PzOATOo9durFjCwElEDnxznnxEnhF6
         Y08w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530KIbqH/pWRqr/MMp8ge/OEojzGYkpYZGb+F2y0XiJ+oi4J+QwX
	gaZaXay21fjAk1ctQSlP8O0=
X-Google-Smtp-Source: ABdhPJyye0qgwqMfMu0nkVVjmgUbYg7Bj6RsXcFjB5gMm//bL+Cnw1DH9PHhNx+tHn7UWWgKrarHwA==
X-Received: by 2002:a63:d74c:: with SMTP id w12mr1741978pgi.260.1594853187564;
        Wed, 15 Jul 2020 15:46:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:534b:: with SMTP id w11ls1227386pgr.4.gmail; Wed, 15 Jul
 2020 15:46:27 -0700 (PDT)
X-Received: by 2002:a62:dd91:: with SMTP id w139mr1276343pff.40.1594853187085;
        Wed, 15 Jul 2020 15:46:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594853187; cv=none;
        d=google.com; s=arc-20160816;
        b=YSZhxw/cRmz4LomrqP56A/YmPngfx7yN6bXdDDHNWxPB8FiLOwb6+xJm4jpRdM6L9g
         7oY7N/cH74kCp2oMcdn+FxdUTnNxqwIJx434hGkS5zZbLjEZ6J+wO0d1BMqaRQ/SzXbl
         cw3unnfLwg913IXh0Wrcg2t/qozfbrkmES4w2iXLSKRM22w55Eofi51CfeSt8J/LVYNj
         CVqR2GCo4Di/tlsAwJMpxcul/Uqf3iYWXYAhT9pm+CXrFnYw6TbbUat2l12pLuOhXeVQ
         18axviD/drG9Ma0x9pCZy9d4FtKoLmhYBdtKUKBsDgTuXJ9ttxk97LJKRebS5iqf8au6
         Ha4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=87eT2YPZF7AxPepz36tgSGEAz+l4mG6If7K49OwQw5Q=;
        b=rEuWedcudeujFF4ugmICALQ6OcUfPW7mDRdGY8rRwdr+R5rc0hJ9acn/CgpZD8osSW
         izXzyCWukp+TBWb0H1rhZ1/zHJ9IIgYlLTKI7PsZAqmHDr3nRCY6tu+qGzFyoyhRq5Y5
         Qx/+HxhYJRimFnnYfMoHNvhuQhLQkovwLytwti9k2GrdpF2s/NCYGl8ThUcSbC/HpJY2
         wbjZf3SPUUG0HVfWlkHCrdvIxZloEzpcYw4xQLh3s7ASKuABXE0B7Rbwg29uib8oUsH8
         3oxDsNK2CPMSF8cFOpqZ/zUFHYOcUXPqFMuvlyHb2ppWlUzEUcdHNWf6Q5vzKLA1Nj1F
         z+Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ce5cCx9M;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id n68si224745pgn.1.2020.07.15.15.46.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 15:46:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id o3so3416973ilo.12
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 15:46:27 -0700 (PDT)
X-Received: by 2002:a92:d843:: with SMTP id h3mr1815700ilq.255.1594853186620;
 Wed, 15 Jul 2020 15:46:26 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000035d7f505aa80a87a@google.com>
In-Reply-To: <00000000000035d7f505aa80a87a@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 16 Jul 2020 00:46:15 +0200
Message-ID: <CA+icZUX=d80UOx3Htczgs7vAwePJ-xAwjZe7fJYaehm9DD04kw@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - July 15, 2020
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: android-llvm@google.com, clang-linux-fellowship@google.com, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ce5cCx9M;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Wed, Jul 15, 2020 at 10:20 PM ndesaulniers via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> http://go/clang-built-linux-notes
> Meeting: Hangouts Meet
>
> July 15, 2020

Thanks for your report Nick.

> Asm goto regression needs to get cherry picked to new clang-11 branch

Can you point me to  a link?

> Apt.llvm.org may going away

Oops, that's a pity - do you have a link?

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX%3Dd80UOx3Htczgs7vAwePJ-xAwjZe7fJYaehm9DD04kw%40mail.gmail.com.
