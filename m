Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBYWG3L3AKGQEU4WFPGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id F37211EC257
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 21:07:15 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id g21sf3359016pju.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Jun 2020 12:07:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591124834; cv=pass;
        d=google.com; s=arc-20160816;
        b=s2EY/Vx7Enza+1GB++0ZeybHebJh4l3K3YOa/jJck0sVZysRbH40n40FDeMOtfC4fu
         tciqNI4cu9F0g4noqkesOxE+DTZjhSHpgFy07uX3DxdzUMpXoXCOrP14KDMNkJZKMQpI
         1JmJJSHBvaaMJi6Y96JGcwtDgu4Fw98MrYts71dETn0M0YzAsGqZ2vQ3uNVgqNlugF5Q
         BqI+ai75SDrobAjr+xWgiZjrUgLmy7ChjwxPUMSB/JXdh7Nb2XxNttzqLILQlACxKo0b
         ejOriEJtGaVHZi/Oh9GUURNgtnu8mI3wMbGa9PnseyrV1bCVksOvC/WJ1YERrSdO7UHw
         feTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=7y+e3mNsWK8SPWjQ1xAAXdMaznDjI435rVYzGy9j+i8=;
        b=zA7eLmomx9y4hY33SqlIqjHKyJrc/dmbiSDY0/GZ1aXP06kFtpm4y+CFkGY1ImhRoc
         u4PJok7NYiM6bZpV6gnMA92XeaVBVRx7RnCMhFlvRQVZXgJG29YCT6AkJ58Xq+xH4yu5
         R/18Gvx+7X1u96/0ThKUkr6UlvlqYOseB8D1ftMcJerRBazAQBQbl+M0ZLSvmJfI8lw5
         /ff+9lNQiNkdvO2ZX7mSozEDT27ytJuecFQ+LMd43EiS7B4R1YN7bpQuRuQoBesofEzX
         x9Jct74KfYNwsCPX1BjmJuhNhIPkwsyo5oW2lEERGD3QcdmCb++2PNdEz9foFFJxfx3/
         T2OA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VyfN57zV;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32c as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7y+e3mNsWK8SPWjQ1xAAXdMaznDjI435rVYzGy9j+i8=;
        b=creXkd+MBVenNBoF8OXheDOJP8MuB1OHqxSbOSO16WdiPrg/geE2U/DNLiJzy6DI1y
         ZEiajDAr9bIbq9NvHjUxcDCoBlcjW+uwsHwxHF0IKuap5EezPvAhrJ6CVZAEC4WactTg
         sSnN6F0V13MkK+7Qvpkx4Y/bB2CLSFX2earGk0B7R/RIE7foUQiwQAMF8rkBZosrFgVn
         YUlqawWfa9fEoklB8SfibTvWqJINKfwrHfKlI1zhPBIaA5yTVxL9Lyrmfvvlife4Ru+0
         skiOAomsruA4ZeAEjBzhLwvQE0ISdDVtwrJsMIRlDOBo2080IBWL3YeDHHSOZwirqZL8
         SxOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7y+e3mNsWK8SPWjQ1xAAXdMaznDjI435rVYzGy9j+i8=;
        b=YmvPoYaws5ohkPQeVRYMCwLGATV9F20fX6jD4OOdLjryTF3IVnVGvlkHbIdcusn9Kf
         25iEI4J8xP4s3SpkQZFJtTTYn9iMwF6qYRwE17tGPuqJr+ip4BuYl74EJzvrwg19Ty7w
         H9Dck8ioYQVrKcELuRlVsSCisM/z/ZvkkbmksLjjaureclgqk2wS/hzRk2qKzxEDtCTF
         /mX+o1QkDOHru2krmdU6CMTTGZicI+vgIYyRvnoojjtgzssyyj/ytBPn98DCLaY2ddxp
         QlNoJy0lOGi0ZMB5jmj6iWQloe8UcVVbzMifiJ27JdsyGfO38y5cvPXhQrYGLxOocJ+M
         jOBA==
X-Gm-Message-State: AOAM5304yYzhn4x1Dq/NlnwtZYFamnp12dC1TB8MoV0eRbpnuUZMX0zo
	O+rnBu0dgbR1OKTPH7FvSnA=
X-Google-Smtp-Source: ABdhPJwHTu1XFQJWnbXX3j/U6Qsfmld+PP5PBBAAVk+Vb5WUUSTOzDPLaC+tr0ipPQcnJWVTEkiQAA==
X-Received: by 2002:a17:902:760b:: with SMTP id k11mr25960164pll.19.1591124834653;
        Tue, 02 Jun 2020 12:07:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b02:: with SMTP id o2ls1169909plk.7.gmail; Tue, 02
 Jun 2020 12:07:14 -0700 (PDT)
X-Received: by 2002:a17:90a:f40e:: with SMTP id ch14mr676623pjb.197.1591124834183;
        Tue, 02 Jun 2020 12:07:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591124834; cv=none;
        d=google.com; s=arc-20160816;
        b=F1AUqMsf0KqF9whBPpGT2UtosEdYJNurtJhN1X4l9nfpJ55Q7KdYrJUJiTIB+SOEF3
         oIRmJVnKpdTQOX5yL80Nhw0pb4Iff7y+QIEOp8e9yCMWzLuMmzEHGnv89raOqCr8dzzx
         IlfJhfklM7VxWwvDCnld7l+vZzXme3nxRG6Qo1C3au+fZ+CovQph9cZ515U+RQqracDy
         2VtLE7Y1lAEUGq9AI3AlM9U3LMiad1Og3GwgRnaxZ9YW/y/56MeUU8nYP4SiDHaQAPGj
         TK7oMG3PmEIlyC18uLSxFE73Y6xkM9XzKLWZqqHdkI1WS7cwAwg3zI83NtIRyu9jtZhR
         zHiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RSAfpRmu4NBGjmiVQ1lcYcxOmmXpwec5mF9PhUPKqU0=;
        b=CAZ9s5PUwoE9wiYxo2sY6+EcewtX43ncGTtO1km73ZOFJZwId3rhL0rMGhmnOv3ixL
         bK/oW9CbQTcAnP9gdthO6zloZ0Jd8dpGdt6u4Wy7AvZgBzkmUGhoID+UXNSqtb9suPdJ
         1oA/VWKRdUwDzyRYOM9l9egjjU9x+JCoIPg8Nf8OvgmDkSNxwRc7EFPxmVMSp2fRGM7N
         pmDYyw8qtufj1YK0M6JLAqXrLOp9gjhn0knVJk2QrLfdhEf1aX/nUnjU8raxyDxU8OZb
         ekQ5nSJweRma4Oxnu2n4F/liKUD2swJiDn6Vd63tIFUeVngDUg/E8za20yL3vXUFw/qS
         xGeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VyfN57zV;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32c as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com. [2607:f8b0:4864:20::32c])
        by gmr-mx.google.com with ESMTPS id o9si228894plk.0.2020.06.02.12.07.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 12:07:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32c as permitted sender) client-ip=2607:f8b0:4864:20::32c;
Received: by mail-ot1-x32c.google.com with SMTP id m2so9865451otr.12
        for <clang-built-linux@googlegroups.com>; Tue, 02 Jun 2020 12:07:14 -0700 (PDT)
X-Received: by 2002:a9d:7dc4:: with SMTP id k4mr477503otn.251.1591124833330;
 Tue, 02 Jun 2020 12:07:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200602184409.22142-1-elver@google.com> <CAAeHK+wh-T4aGDeQM5Z9tTgZM+Y4xkOavjT7QuR+FHQkY-CHuw@mail.gmail.com>
In-Reply-To: <CAAeHK+wh-T4aGDeQM5Z9tTgZM+Y4xkOavjT7QuR+FHQkY-CHuw@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Jun 2020 21:07:01 +0200
Message-ID: <CANpmjNPi2AD5jECNf6NBUuFk0+j+0-RA6ceFCOPPvw5PtoQu2g@mail.gmail.com>
Subject: Re: [PATCH -tip 1/2] Kconfig: Bump required compiler version of KASAN
 and UBSAN
To: Andrey Konovalov <andreyknvl@google.com>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E . McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VyfN57zV;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32c as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Tue, 2 Jun 2020 at 20:53, Andrey Konovalov <andreyknvl@google.com> wrote:
>
> On Tue, Jun 2, 2020 at 8:44 PM Marco Elver <elver@google.com> wrote:
> >
> > Adds config variable CC_HAS_WORKING_NOSANITIZE, which will be true if we
> > have a compiler that does not fail builds due to no_sanitize functions.
> > This does not yet mean they work as intended, but for automated
> > build-tests, this is the minimum requirement.
> >
> > For example, we require that __always_inline functions used from
> > no_sanitize functions do not generate instrumentation. On GCC <= 7 this
> > fails to build entirely, therefore we make the minimum version GCC 8.
>
> Could you also update KASAN docs to mention this requirement? As a
> separate patch or in v2, up to you.

I can do a v2 tomorrow. But all this is once again tangled up with
KCSAN, so I was hoping to keep changes minimal. ;-)

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNPi2AD5jECNf6NBUuFk0%2Bj%2B0-RA6ceFCOPPvw5PtoQu2g%40mail.gmail.com.
