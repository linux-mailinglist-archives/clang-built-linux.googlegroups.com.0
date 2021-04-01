Return-Path: <clang-built-linux+bncBDRZHGH43YJRBOWFS6BQMGQEX7DDEMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0533515E8
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 17:11:55 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id 184sf2926044oof.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 08:11:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617289914; cv=pass;
        d=google.com; s=arc-20160816;
        b=k6u4uROo86No63/AlDPdwwfLmgRMDdmeCjSz1vnWb5asBfVtnVDOZfVn8ewqn2X4qT
         UjhrCqNFg7msH0bOZAhRUewx0nKGDQQCvp9JTHCScR1RRe0S1ayrUGXEttie1WIyekjh
         96JXpRaENTQTbzPuMVExTUK9Ysajp31AMx/XSC8/+3MmaL4CqtYV4BgeQL5qCbLKPxDT
         JYeG7s3mWWgv+ypio3NZJqZOdcnpLruLphI5bpU3dyu2OZimxiGW+99iGkwfsMZHXbh/
         4yoxh19QkAQufSljk9PW7pOa6sunxEAyC9dUJ7hatGIH073WO5vLsqHVcmN3w3NxQFTy
         oP5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=1u7RxxNhP4ItEeoZ7LSNXqmGvtFsmMkOF1+VyRb+9sk=;
        b=wYe4/5679eAVEYZ7bBzB268uiCI0KI97aInVtCR+otcZdxdha9GQwog+rtDMN+lP7P
         eRc8K7wwp0Q8jh82dgGtE6cH8WHesbmrQKTktNjdBBwy6MsWubGpT5P5N0bJBgjE9VpF
         1FmS+T9naefpSa+tj4rjh5wN/6bzvalornqIkORt1pBbOUgIpyDfY1DilHJD6kr8YV1S
         LoeVag3qmNlNH8OXSkQuWhmppMULVnDVARc8nuhpPtWVglbRHdIIifVHMk7PaALzeZzy
         VJb/92R8g2cPB2ut7yLrM5nPTIBkxkNoWkUqFqBFqnS9QZwTRy5y90shPOCGwQG8zOo4
         48uA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q12bI8Oy;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1u7RxxNhP4ItEeoZ7LSNXqmGvtFsmMkOF1+VyRb+9sk=;
        b=iHAH9XmgUic/OAeFoj4pXjQPxLcYOwr90hcujDsXbAyy6iqyohOxQbjb7RVs33SgYq
         kgCm6oGHUkZo6VlH37mgpwsCHpL/MMYfDr3yqwVWtGx+J+/vg218jVRE1j74CSlnOkfs
         4Cor8FKT8HjCPr5tX3Z5yIH9bfO3afy4pCJVqhF02IMlim7A6FWJqXN2sLFKWIrVHR2D
         P9O+L32kxVwIHDZdxWg0lEMvoycrXXDA2eG5cvL1vjKnH+CNIm12LTjTHAJSNw0Z0tDr
         xls9a42pgbx/NtBZj+WE3jHug6DQB2omPJxxqS2KGH0W03xhMTiFq7juvMK3iVe0Pi0b
         BrjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1u7RxxNhP4ItEeoZ7LSNXqmGvtFsmMkOF1+VyRb+9sk=;
        b=giroMGmEgZbli5mY/hb7OmAnDfnZxOujzTMfzydrtfpaU9yQzQHhuuKMpAg3xJbJxj
         L3ESKJ8OR4e/rlAhXNK0qf4hZiDsCcaIYjN2mrnJmKrFOBvhTGGCCIqEmiiYd/8xS9XV
         LVAdai03ZcOl/2sMmTjvsZ/Y3jMGiSiypr4dN5HjUOc6Zcpyce+J/GAzx5mNnPQ0K4Pe
         DgnQLcQF7rAw5OdVTVUNw5tjCZ5vE2A1Tb2dm5eEDr2GEbe6m0k77ooFx9/AccjNA4oH
         3R6wWnkeDY5YOBoSoA9poREpy/bbSoEfhE0jP7M3mpM2XtDesE+Hb7rrNTZSyrm870RD
         y0Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1u7RxxNhP4ItEeoZ7LSNXqmGvtFsmMkOF1+VyRb+9sk=;
        b=W1LnW6+/IXwbM7a1YN33JG3YPRWKuzYc5Z+V5sNRNOBRk4swOgSOAgdTAspifAMYgC
         UoVa5I19ls5mtse6SN7fwsNQ05iKRueUM8V8sS9clj3DC0uS05ioc3jyYsvAWsJS0fGX
         39EbmJNA6vt9hgO4KNhm6FPXKusnlfuvAjAYsVPv7PNyHsmItbvILUAQkB5HagsKHCz8
         NqNhN7XwFahiVnqV8ZohqIGWOTgvLo31PhVDd8A+8FKpfFB/HV4WquHiS6l7v3l5dTut
         Z8DsgdZOXz/32v3DNp3BG8AyRyQr2AVZHOBB1oB8vHBQz34FzT1mRi2e8EMvoX/XN+CA
         4xAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530G9cTMdnBUSUhcNm03sGkexBBwQTg2LDUCdITnYL1ff//xuftd
	l9JNNZF68zB/d3H9bqoGUdU=
X-Google-Smtp-Source: ABdhPJxPtdbio8TaY4roEUNXCIHurYeh60atkWSg4aEYEQBXbKFY6w93NyQ8tD+s8w5Wj3+aeu1oDg==
X-Received: by 2002:a05:6830:23ad:: with SMTP id m13mr7059456ots.121.1617289914254;
        Thu, 01 Apr 2021 08:11:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7456:: with SMTP id p22ls1454055otk.11.gmail; Thu, 01
 Apr 2021 08:11:53 -0700 (PDT)
X-Received: by 2002:a05:6830:1e3b:: with SMTP id t27mr7234139otr.209.1617289913892;
        Thu, 01 Apr 2021 08:11:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617289913; cv=none;
        d=google.com; s=arc-20160816;
        b=s3ot4HBrG1eifM3RQb6zSsSF+yZm98EOcrkHvxNaCWBCTrwaou6ex+73w3PvNRiPCF
         7hUrr1skDV1IRKLtB3fpwa81QQIRRsZOWW9l48IJT3TMnrc/RE+vPTbsqZ+1V1jm/taT
         jK8SiOceP311ZADgZOfSV18q0SrzoLI8TBBEb7FWbo0WKnz360jELykUA/o6OYL+uCz/
         Gah3TQMZtlpHd8gre3CohAlmLXNvoqAA70Wc5xrSiYvuk74V5VlAVyM7YlJmb/jjoDtR
         zHVwvp9kQjHEXn+/fPCwIZK7MzcmdfVWGxmrsInZFGDMngi5Exa6IK++VNKZyREVj1rx
         oouQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dlZkpE2TZjKD6v1o6m13JzHMtFvcdyLRO1VZcMABkoY=;
        b=LfYqx+GaqB/MeWzQuraow6M8184wqB3HZsprpanCWX73w9CPNsOyp5ZJtTHT6jCQ4j
         +MjFNeo3Eg3TnT8XMnjVArgQWyd65t9wRE2HiQmHn883qukO4wlZBZ80uH3aOpS/rEZU
         ZqREHaTeiA5iAJf0LPdidci86SdQIme/Bwyc01fF8CZFIWR63LhN4XsX2qtOAVOskYyk
         E2l0UfJyCHR0LIDgib11qIfKYnDCGcL+qDPKREus85wGAGR1WOQmJQpoIXX9PTxAP5PK
         S6cVBH7msIDvvASGZHSImWVTNOpWZ5dK237z9UKf+t6HYP6QbJEGtx3OgmkNsd1nFo0n
         jccw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q12bI8Oy;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com. [2607:f8b0:4864:20::b2f])
        by gmr-mx.google.com with ESMTPS id y26si804109ooy.1.2021.04.01.08.11.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 08:11:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) client-ip=2607:f8b0:4864:20::b2f;
Received: by mail-yb1-xb2f.google.com with SMTP id 8so2092263ybc.13
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 08:11:53 -0700 (PDT)
X-Received: by 2002:a25:ae4e:: with SMTP id g14mr13737493ybe.26.1617289913717;
 Thu, 01 Apr 2021 08:11:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <87o8fa3oua.fsf@gnu.org> <403153ed-7953-c42e-40a2-6ad313acd661@oracle.com>
 <CAKwvOd=aCn9WqcZe8KgvvZmW0C0nUVL9+sjE_xh0A-ru-995Hg@mail.gmail.com>
 <20210401092935.43d3ed54@gandalf.local.home> <fd5d8059-69ea-cc6f-d8a6-0467906235ab@oracle.com>
In-Reply-To: <fd5d8059-69ea-cc6f-d8a6-0467906235ab@oracle.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 1 Apr 2021 17:11:42 +0200
Message-ID: <CANiq72ndpybn0qKJR2OSD9A4JSdZrQx8Z4sWnnnfaYYQp41eRw@mail.gmail.com>
Subject: Re: Plumbers CF MCs
To: Elena Zannoni <elena.zannoni@oracle.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	"Jose E. Marchesi" <jemarch@gnu.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>, 
	Florian Weimer <fweimer@redhat.com>, Christian Brauner <christian.brauner@canonical.com>, 
	nick.alcock@oracle.com, Segher Boessenkool <segher@kernel.crashing.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=q12bI8Oy;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Apr 1, 2021 at 3:50 PM Elena Zannoni <elena.zannoni@oracle.com> wrote:
>
> Just like last year the toolchain track would be a substitute for
> Cauldron and it would be a completely different thing 100% focused on
> the toolchain. Here we are talking about discussing topics of interest
> to the kernel as well. IIRC last year we had a llvm toolcahin MC as well.

Not sure if it is too early to talk about it / request it, but
something on Rust support in the kernel ("Rust for Linux") can be
interesting, even if only on the toolchain side of it.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72ndpybn0qKJR2OSD9A4JSdZrQx8Z4sWnnnfaYYQp41eRw%40mail.gmail.com.
