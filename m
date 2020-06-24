Return-Path: <clang-built-linux+bncBC2ORX645YPRB34LZ73QKGQEPHRR2BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6544E207E8E
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 23:30:24 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id r13sf2442426oic.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 14:30:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593034223; cv=pass;
        d=google.com; s=arc-20160816;
        b=uE8C9EzsEock7NGQGOPf0UCFFI7vu+uu9aWbQJam1E2T04BYYfJiFpAk6fjTWu39+T
         LbGOETTpdn7+/+YB9MSdGMZmibltt1EznwL8J+FzGLHunqkVoMfcgZWsM/rITOkBmRJR
         xX0xqb1NUY538CF3xTt6OwgMiEJwiKqym8UQOg4lrlZWGhaHHdyoQxAAo5I3rUYS4L3N
         CbJj1MH1/kJMNCSxMr1rZ3RtQBefOipO7Rhq1y9VFcX1jf+GALafU3uY7pfF8UyOTndv
         WlxbDSJ6gUK13GZMaAg3E7FM1WMmyIDLPbjAHiloCIAVxJsitNUSmeIxI0fxMlt/GtEI
         s6/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=eCEZrkUYmD+XWp2w+ujjsXMwfwBk/SEUYPb2JvrPmko=;
        b=rn5zUjrqfMbE27aaDqmTQbqXVYOxtGEJir8Tmx3QHK67KmRsFh16ufHgddUz+Uz5n7
         7QJIBB+SQHuoFj8r/YYJOyOvmszVrEygmgmdxBM0si3u4pCwm5Z5SSri2JE+BYqTtMTa
         YkZrqyKdRNS9kkHkyA9GxLg4fAJ30eE+S1y/lRX3CNOSCjUAkfBGgyfsxIsqYEkBhXzd
         uc4+kwZri7UXb0O0h/vTyTYMnXo8C8EIAPxDNARQyedXRoOJCfJ99AVpeo++8J8I3q5G
         EGAfj4rSrW8oeezNY8gF9TO9+TkqR3CobQ8HIf6dRFJHa+gEFt/dirCJuoWCagsNWo2C
         LORw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UTpKVD20;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=eCEZrkUYmD+XWp2w+ujjsXMwfwBk/SEUYPb2JvrPmko=;
        b=hsGjnmTUUz9LER5erPB+KivT4lwYwGFmmH64rdU2pOL3VN2sYVw+EoUgQ0khJMu+N0
         +VEUPBKzLtvea8WTCy0HmJOLrVFErmrABLAIm66msuSF4gDHXCZeuMAFve3rkVGNGw0U
         V2JfCr0/KkItmSZHXSX0xkMB0GIE3mJ9s02XpYcFkeW8uqIsXVzt2ADxg09oj4MChWKs
         VU6H5Bpkb0s4651J+yt6ElrBC1TbhJv+abjBs62LAeLVf9vJjHQclHuuff0Xy6gIlHE9
         /ZGIMRqIYZyh/CoTK1MZnZp8iGzZa94zXnQLJqbevF81itH7bVMhl6HHhV7Kbe3woqeS
         Ypsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eCEZrkUYmD+XWp2w+ujjsXMwfwBk/SEUYPb2JvrPmko=;
        b=RPHhn+STX2cwX2aIDn+vlbRnyh561RkpXuumPo5iTw1dhGW0nqkcsNbAtzO5HPpHGU
         85JyKJNc1CdJoicvb+3uCz72Tw0CeZUV2H67mcFCSYsrTc9vh+h2My5odKmZHV0F0IDD
         +iOtyD2c/KtvgE5I4vdDwJqj24R7XsTaG0bppp2z5jEmOE8tClr3mSUvgUAhoz7zS/Xc
         TQR1ivgHDRkBv2C703Bz3n5qmw8lzpBueSFNEePlvF8b1eZgY4DRGBlHklNDALAcDsIl
         9NmJOzdYA3jwMpxLTz/Wp+kHmOdQhqxwXpHcLjV2rOAI8KnoiZoWeVVU6HrpnHrSY/9B
         DIkg==
X-Gm-Message-State: AOAM5305bzmo9w2JoR0yivjL44wWUqntQTC40oPirwZa7CFa7xGNBszX
	elmVtLloeuISLwLsVOWXPt8=
X-Google-Smtp-Source: ABdhPJya4OWY/Bwab17CWlUYrRefpAWtgeqJEV2VwJcGmZeNIMj6Ln+TiWJIGK7H26xVZM0T+MQQlg==
X-Received: by 2002:a54:4694:: with SMTP id k20mr6355935oic.145.1593034223169;
        Wed, 24 Jun 2020 14:30:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e19:: with SMTP id s25ls762797otr.5.gmail; Wed, 24
 Jun 2020 14:30:22 -0700 (PDT)
X-Received: by 2002:a05:6830:2368:: with SMTP id r8mr24734219oth.120.1593034222819;
        Wed, 24 Jun 2020 14:30:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593034222; cv=none;
        d=google.com; s=arc-20160816;
        b=G2+wU9v6a8mu+XvXL1MjlOzoFIzM0YRm9uqPESt/LTXywqlVBPjLYoPaibmapS+7MT
         dM8RX5t/k/NTX1BggNsq0gQ20mgcIx1Vd30k0Az9Pq6XGi7eNJsiDxIRVqCYDQn9rQnB
         2I/uPteKQ081jc3uXt1O7QuoELhXj0Lw4NlJjTm0F+tXBhCYlqi2zE2WvwDmPsuiktcS
         kJuOfBegduLYo+QZuWeRaRzE8pBZJ2LZ4SsMUsn9eASJkn20UAQILJKFImE01p6/HlBh
         X4f07U+EEydV/2qsE4OeStFSvTob9jPL0qAtkYvWoXwDho27Ymb8RRjjAvqH13tjpk43
         5L/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BLAueZueQmLo+U3ff1yWRTxI4RTBZr5ie/D1r3LUxVk=;
        b=ihwlWH2a8eSA5GJscESpgucrYsP6njq22QrLReGvSnqB1eOuIAt4Eui6stIr7Gk06+
         WthXdWwzlUMPkEsqRlu9LDmGHPNIioConFLcdDZASr+NLUjw3cqOe/eXp3QgSeP8sC8Y
         3mMrSCOeF/lYWnfUW+98mP8CxFV9LZUqXDdGJlZyLtAAxjwS+/rdjR7tq+be8Qrv45sz
         PIEuE0pkj0W5a5Z5VJ8jJVQBbOZiSYD6jg1INWEBgOJPKRaoje+xMOv00ovMoWGo3ugk
         XAF4IlnhPaPJMRbrlW8dvuW2N/oKdaKzQbbpk/offIzze6SrobF4gB7hUY8NLen3QWuq
         aSFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UTpKVD20;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id a13si1132636otl.0.2020.06.24.14.30.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 14:30:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id f9so1846611pfn.0
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 14:30:22 -0700 (PDT)
X-Received: by 2002:a65:6393:: with SMTP id h19mr6687231pgv.278.1593034221896;
        Wed, 24 Jun 2020 14:30:21 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id g17sm6052460pju.11.2020.06.24.14.30.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 14:30:21 -0700 (PDT)
Date: Wed, 24 Jun 2020 14:30:14 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200624213014.GB26253@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624211540.GS4817@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624211540.GS4817@hirez.programming.kicks-ass.net>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UTpKVD20;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Wed, Jun 24, 2020 at 11:15:40PM +0200, Peter Zijlstra wrote:
> On Wed, Jun 24, 2020 at 01:31:38PM -0700, Sami Tolvanen wrote:
> > This patch series adds support for building x86_64 and arm64 kernels
> > with Clang's Link Time Optimization (LTO).
> > 
> > In addition to performance, the primary motivation for LTO is to allow
> > Clang's Control-Flow Integrity (CFI) to be used in the kernel. Google's
> > Pixel devices have shipped with LTO+CFI kernels since 2018.
> > 
> > Most of the patches are build system changes for handling LLVM bitcode,
> > which Clang produces with LTO instead of ELF object files, postponing
> > ELF processing until a later stage, and ensuring initcall ordering.
> > 
> > Note that first objtool patch in the series is already in linux-next,
> > but as it's needed with LTO, I'm including it also here to make testing
> > easier.
> 
> I'm very sad that yet again, memory ordering isn't addressed. LTO vastly
> increases the range of the optimizer to wreck things.

I believe Will has some thoughts about this, and patches, but I'll let
him talk about it.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624213014.GB26253%40google.com.
