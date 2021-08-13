Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFUC3OEAMGQELAWKTSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D96C3EBC53
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 20:59:34 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id r17-20020adfda510000b02901526f76d738sf3250388wrl.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 11:59:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628881174; cv=pass;
        d=google.com; s=arc-20160816;
        b=k08tvH1KcuoLR4qY8YsDOYo9tMUSCXn8LND61SRThlW6NcTS9KqyW2sYQUQ6GG8Ydt
         OaDt5GtcsXNs+zdrc1tFRB8LpzM+VLXPmajngZCGaljzHDC9N+om7l7DJdoKE/sw1OBJ
         zBFLAodzIroMDbx+Oe0HOnY7Zyb693wbTnqdsh1ySZ/n3SfphI3PQN2K/Jvcq9L7Qzfc
         t3NoYid14JQ0AM1MFpjVF4qyEYF9T7u8dC1p+GMqDc3EfESbzbgj6MFlQpP4P6hpllvY
         0gHJO+uuwb5XjWHjQd6sR5UrrnYTVv/Hk+yafUpmYJgDPAMwO120SDt7qohPgFgMdMza
         b7cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Ba2KXXLAEPcXQQuhmwxLoWPLL3r4xH/gcA9VSdNBRco=;
        b=i8Pf6RS7kwUCL0ngHSAPg84jt8Q5owZt3D/iG/aKzJASp3qGRvFGGFy96oIXSW+WOX
         FeP70nIRNrS6YoDL+zKOfKDm+5sYbdc8gW3ouwuJX/JYy9McsPL9AddpmjUi5BfhaaV6
         jdmz/blF19Wt5jnex/M+onWXBF7/N8charOQj29fdMxjw/BCPKyTVqM65cBcPKqmROrz
         0SiqC3ovzne011nDWt3LLWrXz8gFeEkna6QmLsp+eUBBgnB82N0+pqsR3lDVNa7ukTvk
         I6ag6DeWgwnT29X95qcE/N/Q7dSMOa3TsBRDu/9YBIFVQoBkf5RVpyHMAMK3Q5O0EMsW
         eokQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RLK3xUK3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ba2KXXLAEPcXQQuhmwxLoWPLL3r4xH/gcA9VSdNBRco=;
        b=EVhdanp3R+v57wGB4Ihrky7R4xVHz+j2reRUvkJb97wemqhxtXS4yt5NTofUsp5NZh
         ihJ6Ml3s5MjBwOpuf0K8VtkaB8ThCAXTS9dcWvORtPb797oCb3/ZlWqZOXlv4PpBso7X
         II90eKGj0dmmfhE2lj2zRH0fO2o9hY5XUtM6D7hvwCG2aDjBzhZyQVZY5PKnPjlUih7f
         7VJHIBs9evBrr3Gi1mn1oyKFYdAgXyDV7ScwmxMT7gGgtkxxZWyQBkXuyQTWoWyPDT86
         6b6YQSP1/PDSRb0e+/Qj1WxssQQo2yDONkvhWEyyKd85I+NO0kEAMb5M9ZiMdo5iwObB
         Q5VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ba2KXXLAEPcXQQuhmwxLoWPLL3r4xH/gcA9VSdNBRco=;
        b=AOZEMovGKZHzJ5XSHw0NPyBASP3ySKKGSAI+X9Ff0ZeUIYNxtNl4xafo/ruThUqwbT
         oZC7Laa5MRO41mbRq+hm1A4/i7ZL3iry8CKnc7tciO0Z7rnjQ+Zw6hGhUvIOtw4/KfTx
         CqLltK+NOfMhFAGI5IXrKrr3tUVdQEHv6gTUGB2SypEicg+gMjtwqw+FmdfLhBerWbqv
         F6/1XCh2FppCHFTmHXSUvtiQotMaagTWwnam6W9mGy9ZXVQviWKMARNUKLImZY4ytrPO
         AN5AzpR1uXPXnIP2hPLToZNcmbkIPqMQu5VILqxPLWtlDMcoT3sekAo3oL5nyiJ94xji
         RlMw==
X-Gm-Message-State: AOAM531bTo1736hq7ybsRDIe14/7lD0DmdRwWwxPuZVlWapFZ02qtinA
	kA24wWTRdivfwshKpzIO1JE=
X-Google-Smtp-Source: ABdhPJy7km0Z9Phv5f6+NiHa9a18st//2x7ALfGLF156UNU39jbgu+zSqrgfILjpDG8pp++LJjny9g==
X-Received: by 2002:a1c:1f07:: with SMTP id f7mr4024817wmf.116.1628881174332;
        Fri, 13 Aug 2021 11:59:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:c8:: with SMTP id 191ls1285698wma.0.canary-gmail; Fri,
 13 Aug 2021 11:59:33 -0700 (PDT)
X-Received: by 2002:a1c:f414:: with SMTP id z20mr4147465wma.94.1628881173475;
        Fri, 13 Aug 2021 11:59:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628881173; cv=none;
        d=google.com; s=arc-20160816;
        b=h2hYMN2BFwgsVWFhJxxX6IG8Qx5ei0ZYZz+oDavyM5NOsiWVK29wMyUyTdtOGHwWSO
         n9o8GYy+pePupEvLSNck6iOzliLl0KW56mhyWbCqTr/52y54bimb/L/Ir3114WGNMBWU
         EsoG7SDt1kaBCpdm6ts3SL1mMuS0GeIdObInj5GCpF+Ntdpe725ouKksRNVYrqvlSlMa
         8CcjiroQ3+bSXuDAeYtZT1Xn5q9LGNtUzrrc8nsMPpxvYs3br1XeJxsvHpBPdsTtaL8f
         3Q41ZX8oN2woHm6dbUjZRUE9Ndk0FGoGON5kb06PrPvUWLDd0mp/2G1NEmS7adCO5t8T
         H1lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IkdhgNopT40xrLBIwsMwp7xot6YqUnlD6M0VTKI4Un8=;
        b=RUOD33zslyKcb6fgU+39NFo5+9zLw6CKOwsid6TAEHEvL/nGwvKBCld+dNXzsTHMpt
         W2v1+g5yAeejQyjYnDH/48ovSLgjsOCl5wdTM5/Hqsq4H5SsJvMa2PKdVw8tis8Z/7y5
         wB0+k1Q6uuKk4eokVCiZOKEhvKOyxoIKbKfIRDrdNFCEhiXB9MP2YlE3ZDJt5tVgVSS5
         E03aaUC25OI0CYnlayAPmUZQtcLpjYhEyyQ7W/01Z9NQ3yG38zJ3oq3iw9LiTvHAC6B8
         YKBHkTRpgxQH8jg4+aQ0jSTt68jIERb30zFTWse3wYJwO4o3lSBscIAT7AIdXUyqz3SQ
         Iggg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RLK3xUK3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id g129si10684wmg.2.2021.08.13.11.59.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Aug 2021 11:59:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id x27so21600617lfu.5
        for <clang-built-linux@googlegroups.com>; Fri, 13 Aug 2021 11:59:33 -0700 (PDT)
X-Received: by 2002:a05:6512:3041:: with SMTP id b1mr2588473lfb.122.1628881172555;
 Fri, 13 Aug 2021 11:59:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210812204951.1551782-1-morbo@google.com> <87sfzde8lk.fsf@linkitivity.dja.id.au>
 <CAGG=3QUz2LNgC8Hn6rU68ejjv4=J9Uidef0oH9A7=sKTs+vf7g@mail.gmail.com>
In-Reply-To: <CAGG=3QUz2LNgC8Hn6rU68ejjv4=J9Uidef0oH9A7=sKTs+vf7g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Aug 2021 11:59:21 -0700
Message-ID: <CAKwvOd=rN9s5YBtt-AMnaqXhYCsAT=6yp29_oomRvTaev6Q6zw@mail.gmail.com>
Subject: Re: [PATCH] ppc: add "-z notext" flag to disable diagnostic
To: Bill Wendling <morbo@google.com>
Cc: Daniel Axtens <dja@axtens.net>, Fangrui Song <maskray@google.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, Nathan Chancellor <nathan@kernel.org>, linuxppc-dev@lists.ozlabs.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RLK3xUK3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Aug 13, 2021 at 11:24 AM Bill Wendling <morbo@google.com> wrote:
>
> BTW, this patch should more properly be attributed to Fangrui Song. I
> can send a follow-up patch that reflects this and adds more context to
> the commit message.

Sounds good to me. The TL;DR is that LLD has a different implicit
default for `-z text` vs `-z notext` than BFD.  We can emulate the
behavior or BFD by simply being explicit about `-z notext` always.

Or we can dig through why there are relocations in read only sections,
fix those, then enable `-z text` for all linkers.  My recommendation
would be get the thing building, then go digging time permitting.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DrN9s5YBtt-AMnaqXhYCsAT%3D6yp29_oomRvTaev6Q6zw%40mail.gmail.com.
