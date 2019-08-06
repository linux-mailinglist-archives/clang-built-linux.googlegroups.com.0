Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBZ73U7VAKGQEAFFJT3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D3F83D4F
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 00:23:35 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id l24sf42776906wrb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 15:23:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565130215; cv=pass;
        d=google.com; s=arc-20160816;
        b=mDUg010gMKCCRsbsAQ7XcgHySZbuq1vTwPnbFH4m5BFN0vwpd9Cp8nCFtmz+/N7ENl
         OVyUx2sMjSDab76kLHw0ck1WTnxUXShRJxUx5FCxKqd5lJZjeXAfqj+20jGVymL1rWsB
         mhGXsNqIgB5bNlfmFLC4b4FADj33XpQHzj8oFe4OPgiHqvq12FRyLimV1HErBT8irNS5
         WdjicvbCL7HdjfcwSNSJvp9gkz2aN8qHabgTol7AhakKJjbDqiuR5hnKYvd7lK1aYLj+
         JkCeYv5oMnWzh2Ds9vkY2nK/j3ix3O0ekx7essGOMUMa5laK0dZX47Iejy+R7OoaTmJk
         RUcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=y8drQ2v6s9ErHzANAwdtR+ZOXr2FcLfQJAzHo+GhN4E=;
        b=B4wkO9kUmw4r8HULtUR5iHS39/3NHkxjMfP+U4doyODoK2Rx+fp2Z1eHg2HTUVLLwG
         1jGewWnLD5DXpayv/tD+4p9qh17iiMlFb03cfZKUmyhodAO6ruHNM9VAORfNj38TNgpZ
         An0rmkPJ2sfCM/z7J46FRwnEJ/lv7mNJt4/D7gxiiHlaFVTMffHfAxHNxNNUBk5ndrU8
         0nHn0LE2uNbJ83iFsUGHcXR0xkbxTvorIJbHn/YlPZQ3sz7Ouqedy8gz9RRVlnfrffij
         ryKFGIShpl5v5RnuoWMoZ59ieBpQZmtZuDgKTgh7+sJPfyg+brOmXXfYb3YSv1sYSoHn
         dsMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gAeQneQT;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y8drQ2v6s9ErHzANAwdtR+ZOXr2FcLfQJAzHo+GhN4E=;
        b=otwjPlQIV3pKumW68jAzelwNkqDLDJ+jHAnl5Qf52CWGQ72rgAl+EQn39quqaqlEKD
         InQxm9s1tcdvw72VpD3YWo7jLoL02NbbZJ89jH1iIDYkj/dD/6UYsGcOIsJ+JiUyZKIQ
         5TlQoY8WfJabRT+rx3z5qZqhBvsJ/71vAKjR993bzVucNovqzaWDDalfVV/FBoW7dZsp
         v4dew27SQTTapFWwOFjF/3JzR2SmXyDkhG8fy2M1TWIUyDQ/ox7B3ZDQ/h21Nu1Am3cr
         l52ehCLBr/7wlHeQSnTZIh3gSmCDSfE5mDvSbjiwrts6EGop+fKUzp2hzjhxu6rmxIaT
         pusg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y8drQ2v6s9ErHzANAwdtR+ZOXr2FcLfQJAzHo+GhN4E=;
        b=NP2dUL+mQ8cj5RQCKl93l5jZN0GrE+Aid9Al+4bu4/aRttJJlQ5gTAV7dtdIBHonPn
         n4vEDkIFr5shWdftT7akqzQmmNlbrMH3h/r0JH94LEA6eBuDUKDJ+ffFG7AUy38PuMOs
         k680gOpo5TLnuR9DhSfQRGwkl+p8pL7Fzi10XNGkcGXewGhhaSiy4cAvaeHkkXQVTkPK
         zzd4V8vhbb/lzFrpDIFvnZttv0qiBgci94H2jIM7vCPrsEhWCQsob6F2rYLBtcfbHtxw
         TQuc200MKO4SWo6b8rpAqF85o3GAkCHHiGoO89vEBKEVdFMtgbfKcpxNKCi6RjrPbuWf
         ytOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y8drQ2v6s9ErHzANAwdtR+ZOXr2FcLfQJAzHo+GhN4E=;
        b=b2ZUvXS0tlZkS2G7NrI4irYBv2de9HJWv4HabW87Neb9aeUtANp/avCw4oo9sWUwCs
         vO9GykRf8dnyLQ0kxodjgYD13Xgu+ceh+i6gc3wbO1bFu1RvaymD/nC8mCtwKyJ8Ahk9
         4nzsgWjSxQeURFa/lonYI1DA8MGvZPhC2FyfDfiCy266Ec1jRphjggwmQs3qdQtKvWLS
         J2FxjvL3gR+43MQe2IVVrQJR+4VyWFsPZAVUQRVRkzY64kz2GzQV/vTDbMesB0lSO5OB
         R8ISA/8R+1Uisc5sTDNdobmWnPHk2azwuC/+gzlHQmoT0dFzO2EIxGQp0cg6o4N2gJIa
         jqtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXxyMQgxe1zMYwwheqnGuxtD2ptUbeCenzg2Gf/CqI9+CkIp8F6
	PBS+Z35TsU9SGh61qQf7/Nk=
X-Google-Smtp-Source: APXvYqy6/TnkIYK3oq7Ftx784qaqEZ/3SoLUjSsIAqsW6adXwJJWrX1VsvLVrQ16ThLegLS1xU7w3w==
X-Received: by 2002:a1c:7414:: with SMTP id p20mr6270907wmc.145.1565130215626;
        Tue, 06 Aug 2019 15:23:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a386:: with SMTP id l6ls25658071wrb.16.gmail; Tue, 06
 Aug 2019 15:23:35 -0700 (PDT)
X-Received: by 2002:adf:e94a:: with SMTP id m10mr5201303wrn.245.1565130215137;
        Tue, 06 Aug 2019 15:23:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565130215; cv=none;
        d=google.com; s=arc-20160816;
        b=Cj1TswcUz2O9yRG1/QbK4INx80jOEyDLp4VkGtFiY6HA7o7jnYWA/kb8dqT/H4NxHU
         yJfMkECZVKGuunTr1+AgD9tVUV1wsE3qhGyK2ILGyouEFDha7yYEBwDMKFX3dRGvR3kI
         Qq840SwHupQzAFKj9AiHUn5glhYrzIvwsustHBobdwWYENj71QeCad6rb8aiTeo6KKwD
         7R2zg1pTTbQZDxVJwoxjQK3RVDfpmjyOZBSosWzskli+Nz8F91W7gwGGAVWg5GbT1Mk7
         4I5qo07HJdyIEZ09gq8K603sucFta0/2qCOfB9g6hfIZlZ17GoC1UDg0lz6jlVdhPINJ
         43xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ou8H+on4xhtmjLNpIIEEq2Og7/oP70RYFL+tq0EXlzM=;
        b=wJj+Ws893whIRzwbxr6pmA13FaOth8wa0oWgR0UAKmqh90WDS32CDdAPZryDqW2u6c
         KICMB2k5/TIHoDdquZDWe32yrLnKbX0mYIM5vm9y9XyWa93HEZ9/2F+nNhP9cX49qFe/
         4aTDzlKKi1T66ebhkeyuViJgQ6v4Cy7kuN+J0DQoBCeMrNU0FR+BEcJFU+L6ZX0BWZML
         vr/EOfskLgOATbh+LjAVbUkKseh41HJXYdCiErErm7EyK+ifmM+o3qTptDWHchi1QReW
         FeYdVEYvekvE70q/c4bLsxWELB13MMi2HTzYWraqmiBxBuLeyfpyUuR/n/Uddg8dtK9p
         +Tsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gAeQneQT;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id q14si4744616wmc.1.2019.08.06.15.23.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 15:23:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Received: by mail-wr1-x434.google.com with SMTP id c2so86156198wrm.8
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 15:23:35 -0700 (PDT)
X-Received: by 2002:a5d:4101:: with SMTP id l1mr6901735wrp.202.1565130214932;
 Tue, 06 Aug 2019 15:23:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2FecM1Phd7HRK3Mx1rD92MuU8a1N3++DHX4sq-R0S-nA@mail.gmail.com>
 <CAKwvOdmXMAeNQ_abJehDhXigYWeqZjnUWjxeE+y29QWcQczFzg@mail.gmail.com> <CA+icZUWY=tCijnsDEvP=cTsTvQVEt4jdcXywOGeZ0DtKfLf8KA@mail.gmail.com>
In-Reply-To: <CA+icZUWY=tCijnsDEvP=cTsTvQVEt4jdcXywOGeZ0DtKfLf8KA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 7 Aug 2019 00:23:22 +0200
Message-ID: <CA+icZUV2ZgvwVeQQATsZ6c34kZJGv_G5sYW8qK4ppJySiaJ9OA@mail.gmail.com>
Subject: Re: apt.llvm.org builds
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Sylvestre Ledru <sylvestre@debian.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gAeQneQT;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::434
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

> $ git describe --contains c4f245b40aad
> llvmorg-9.0.0-rc1~322
>
> AFAICS llvmorg-9.0.0-rc1 Git tag has this commit.
>

Indeed.

$ git tag --contains c4f245b40aad
llvmorg-9.0.0-rc1

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV2ZgvwVeQQATsZ6c34kZJGv_G5sYW8qK4ppJySiaJ9OA%40mail.gmail.com.
