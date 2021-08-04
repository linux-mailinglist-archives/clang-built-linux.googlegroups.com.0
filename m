Return-Path: <clang-built-linux+bncBDRZHGH43YJRBDNGVOEAMGQEKMPJT6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F8A3E06ED
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 19:49:03 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id p1-20020a17090a3481b029017757e8c762sf3142404pjb.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 10:49:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628099342; cv=pass;
        d=google.com; s=arc-20160816;
        b=G3pMztPTGZ9gkrwv5Tl3EhV4RpGOrv0ICVcsQnKRKD9REaqxrw4Thku3Vx5Ab2yCNZ
         mtC4Cz7fYhXmANTGYrJEkFmeYtka300a/0LSQZBYcKOX7x3VW9/Y3ClcpJ4apgO58n/d
         4KRd2GsJmoGkFkVEa8n1NA7gZDwfBtz6b4kUz4YzKaG9qiMHSk16MDUnuBssyAQ4zKlU
         x7zrBOu2uGXN9mtW0lbrnRVHnaZga2aZvXxNZhy2Lk+vPa1uAo9P3ROoSrUphS5uVuHk
         1GoWzbZC7ZS6SazB8A5724ikH8F/z0tzOjOTFIfaUTGApv3ZOtEdXWG3YeWA+nPmW0M8
         VAmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=1/UANLy1yLwPhsiFTat+NQViS/AFzCuCDTpZNfclLf8=;
        b=ezifbH8JaY65TVt6G+MuERJaeNIBZ8qGBKilly5o75g5QBLlZXLS5OfPt1ZBK5sfK9
         tjjTVKafi9ms0mchSwPdU383yFMqZSrvknILFiSu4HXWArsOzWmtJDh2JS8u8xWUdw7x
         O8QbBLwkPePXPSJsObCY3VxXxGD5JzfVBO207a/Vqg7E7NJ85joYZ7sFvRn22YlEbDAT
         H7+PmtWFl5xuLjsJKwf8OPWIS65COTZ45fqCUEv2AcmrIZsX2zlDIADLv0XPeEiH2Rvl
         C9N5RmbOS/9EqHN6pg1gt8ZBd9TEW0bOcHkshQB3DT0ICPlySJZNuGDuDplNj9/TnEKG
         69fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GlX1ALSN;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1/UANLy1yLwPhsiFTat+NQViS/AFzCuCDTpZNfclLf8=;
        b=qUAaAgXF+Ylv9GGJfR0PE5jH0yEn7qgFBDrR+sVg+krgj7mb8YF/VMfSxxZjt7Liib
         3KjuPXK6LfRg5zjHgokNIxmv1f+GhjoXNjNqtrcEXubkQ7vmlOOPXqkmrhWHlI+J6ukN
         9EKmtTdVGySRXIkZK78BiWYKz7NJdqhjQY/7myJKkWYlhPR0oBS03oq3Wxti46PkcFlQ
         MN4zChR7fXN+LYl9aNuJyrUQXhOQH8zfQK3gJ50nAfl7cXJTKaekH2ESq42pNvW7R6cd
         TwEn/wpRQ+I9tYq5h/eiheLsQKgDeskzLtPpg/8cRACrY/z/93DtfceUx4lnkXw0Kwp2
         WCqQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1/UANLy1yLwPhsiFTat+NQViS/AFzCuCDTpZNfclLf8=;
        b=hkY2CZkRB5BIPN5h3nyDmmyd2m0Im2rGr3HdKa4nVbiL0xmyVdkGM89lf09IJ69GyH
         SPtwApXfV/bMqVB8F5PY3DMadw81Bqt9MVhVkkEX7aIGBPSweJGT902lBvejAKGHP7Xr
         Wxhn1VujPMWMurZsO6sKw4wlbvhqTcx18pAaEebp2Qvc5EEpbbfpuhIqmi592T9HTHRi
         Fge/H7VDG1cJKSLHRGnQSe+JtdxTBuy3YPkX1+DX7TkfTvaWGav2KYd3tlyI+2hetXfj
         1KQjKgTiZAehBF9UmYEWF3wYAVNQc6sAfCAjOay+qT4Qs8iP3QXNSjlv4yhoIDytdML4
         urww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1/UANLy1yLwPhsiFTat+NQViS/AFzCuCDTpZNfclLf8=;
        b=gGJQFkzfr+jUeHU8XIeute9gw78Ve/IDNWj2zfwEqV12A8bJqeEszEJpT0c1zhOaur
         oRBzMuss8MVNTkIxpDUGhDaqSYOEmVmn9WZ8qHMGXvV/JVApfWf52uhpsdAvYAgK3ChH
         xPXXcp1yAAxRxhANUO/pIWZ5VQNsDG9slPTb8rBG5cJKqdJijbATGlIUXyJRzJC6nV6M
         mlMgndl94ZK3HKc3uJ9Dhab6mcpNNtjbWz/7AGfit7OS++lKW1thUhnXUlVo86J2b6vl
         RpGpej+qYRAU2iS0cI0HPL0ib8Wft3U+xv2sVkwM9+Gc2naBCnBXisHZFyil7pZM+6pz
         Gc8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Dn0M3KBron9XpEkwMy17NZnUWpJuvBzUUhAxC6XahXSjIczdy
	m65YzqAHHWwvEnh2eQ8qZ9g=
X-Google-Smtp-Source: ABdhPJwYiulj6QYt3/ITqgA8/XAYnYEihAHLXQ0ir7s7WFl2BBSpM7PhXpFOyWWDtYZB/2ODS2dU5A==
X-Received: by 2002:a17:90b:1d81:: with SMTP id pf1mr329580pjb.88.1628099341997;
        Wed, 04 Aug 2021 10:49:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:656:: with SMTP id 83ls1385149pgg.9.gmail; Wed, 04 Aug
 2021 10:49:01 -0700 (PDT)
X-Received: by 2002:a62:b604:0:b029:39a:c5d6:58 with SMTP id j4-20020a62b6040000b029039ac5d60058mr724244pff.51.1628099341375;
        Wed, 04 Aug 2021 10:49:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628099341; cv=none;
        d=google.com; s=arc-20160816;
        b=tCgdfOUT7XvmuJ8YeMMJVq8SG8XHy1e7arax945fbDedW/JZyrCCSEbvpIaAjUKq8a
         qRtq+sm8UvuYCQsYJT73kc75g9BaJwkiD0HWzXrYy3X0AegTagJDJmMgI/4i1KjoXAti
         aJcTYot8CPGFpzijHJnNnsu+gsBhZ6kt7qoutuF40zZKSE3fjLLWEVBKwfSF+NeKRqYk
         FKzsWWPMoO+jdP6t2GztjbmGYQm0+4Jd5BLJl8mAuNczKoLGODGnyMctiDn/t32vFjWv
         Gn1leNt837sYwL18PvD+O1q3cEFp7Z0AOrOXARY5+lNci2gxIocbuiF44guJCoPAG0XF
         pHIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=V1tRU+J2S/v/0zLqyOv0CCFlndM1M4TGM5gcBC/vm+0=;
        b=Kk5k0rGVs/JfweEFAI1fKFVeYKgv/qsazWRHSjCpgMpkCtPCcl/DSiW2yPcYGsQsu3
         Hx9et/iaT/I+gsc4CyOh+mNgD6hloUrJsu06/IrUfUyvNELpCpXBVT+6DKZAJNe+wi6H
         EDCwEoi9OUBp/TQMIzcoyzt8+rVpnVsRbyXGb+BYq67TNVGDMCfjPz5SWuQxBU0sCrja
         S/dajVWWUYpPC7x2vTLBcQvzXDitsm6EC5aj6TIgWWCmEqy9TgSoi2eV5LmErhi/x3Fm
         znVJRrYcwU8tkSEgXmw/3Cfd+NLXjZ1PTxt9zyB2W/cyyoARh7aYeDLZM2OHQvCSWVX/
         Ch2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GlX1ALSN;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com. [2607:f8b0:4864:20::d2e])
        by gmr-mx.google.com with ESMTPS id 136si183180pfz.2.2021.08.04.10.49.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 10:49:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) client-ip=2607:f8b0:4864:20::d2e;
Received: by mail-io1-xd2e.google.com with SMTP id 188so1663812ioa.8
        for <clang-built-linux@googlegroups.com>; Wed, 04 Aug 2021 10:49:01 -0700 (PDT)
X-Received: by 2002:a05:6602:2bc9:: with SMTP id s9mr445272iov.64.1628099340837;
 Wed, 04 Aug 2021 10:49:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210802202326.1817503-1-ndesaulniers@google.com>
 <1847b77a-093a-ce59-5c3b-1a21d3bb66c7@kernel.org> <CAKwvOd=F_OexmHctcW6x7d6up8+zOb5-iLWU9-Ji1dv9-S3F+A@mail.gmail.com>
In-Reply-To: <CAKwvOd=F_OexmHctcW6x7d6up8+zOb5-iLWU9-Ji1dv9-S3F+A@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 4 Aug 2021 19:48:49 +0200
Message-ID: <CANiq72mGnjy50kd4gMrOsWwmnM3YFp01qO5JzSyZyPGwCL0CwA@mail.gmail.com>
Subject: Re: [PATCH v2] compiler_attributes.h: move __compiletime_{error|warning}
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Marco Elver <elver@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Will Deacon <will@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	Ard Biesheuvel <ardb@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Tom Stellard <tstellar@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GlX1ALSN;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, Aug 4, 2021 at 7:44 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Ah, I forgot the release/13.x branch was cut before I sent this.  I'd
> rather this feature "ride the trains" so that it gets more soak time.
>
> Miguel, would you like a v3 updating the comment above (and the
> comment below) to s/13.0/14.0/g, or can you simply fold that change
> into this one when applying it?

I can do the replacements on my side, no worries!

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mGnjy50kd4gMrOsWwmnM3YFp01qO5JzSyZyPGwCL0CwA%40mail.gmail.com.
