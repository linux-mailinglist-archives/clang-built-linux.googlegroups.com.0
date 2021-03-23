Return-Path: <clang-built-linux+bncBCAIHYNQQ4IRBCVS5CBAMGQEPQITAAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4B0346552
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 17:36:27 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id s18sf2449070pfe.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 09:36:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616517386; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Sh0Y5mRDS7QLLQ9HP4Uz2nz3dfAcSbDIAO9SB+hadYMEJBa6/Hfgj4mYOAbJi64a/
         6ddtbewyIRJBZGxkrOmkDCqiUSyopiR2oKcnyNyNApG7Ty04YU5hCvkGTZOnCHX3fCIX
         cZpS/PmTom6Ur+syjkF62DDm9AQ63gv25tlK6XZLiasLIlfVL/cYamKcceqI6dUQjO+w
         UB2cHfzHFqWQm/0t/SBprIHNQ9eJ8RwBe+fhijvQiWrBTfQ3AcjsWFpcTai86XYU7kQa
         VlYYs9u0LzbnKk4KGlFNaLgELqaef+iHb16aJhfyG/9VHu9lPaUHJBCI0qiNNEF1R3lB
         3JaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=mq6izn0O3M5U9a7cd2GYTdFfwzvxiMs/hPGdfF3H+z0=;
        b=x3wAwYMjjkVy0lDFaVJYg2iKJxTnkPgURpm0N6XNriIo9ilTz17OXtZWpZcr15bNaV
         t4rm3JmtfyXtsH/gbt3wiFvqPZFbIgKq2b+J6uoqY+Pe3h9VlrQrLo999gtXZZ78Vjaa
         gGde3NeqVvoRyjQ+jA4XMqnxCxST37y6UICqMfEi0VRkymBBeTTmcju5Dz5UyUi7Z8SK
         AUCg3U/KdWK9zMOVX9sTVtblXxzAB9/Y6wkOJ1oKST8IqTSX4CfzMMmJkPhqZeoBW6Jw
         MbquhfisUE8UBhzfM637GULfJkwffn1Du85zDKrsHEzkcGxBcf55qhNOzB3vEH6StNzO
         h+cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="caAT+/Y9";
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=mq6izn0O3M5U9a7cd2GYTdFfwzvxiMs/hPGdfF3H+z0=;
        b=RLafI/as0YlDcqLf73ifJT9u10RlTr0fzSnjzDivNDVzLVR6nAz0yjRIiQFgx3b2X4
         qR6WiG6FNYyKfSCymJKJE8638FFmWSu4bwUzorf8DvS9SMtkBL51uW/6W+UO0ZvloOy5
         F8e6UCwmE8IWEUFV4M61sXVNVOdZoHtz4j61tFgbTQyVNMgrQby9ffE1REOOMqU0i7t6
         IDoC0hcbRDHla9Q855O1v0GeXhfpM4aHo61AR5slfGuQpHeZzzK7LQDX6SWQZnVxIW7s
         45i6wTVThhalk/1jV6iLOB4PTEVqudhEVvSKheDfACg42p4KH6t/LUe23DbKC05esk09
         wqiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mq6izn0O3M5U9a7cd2GYTdFfwzvxiMs/hPGdfF3H+z0=;
        b=Pi8b2LEnjEqxcGJ5r6Wmh6E0J40kQ4oouIxcEiQXcIi5cPM6VS9pXoI4Mz82/kC+ji
         C84kmKEvBP2lHSIklrLJ+DZplrJjWP4k4sVpXDPMCfxP3ahhf6tlHrnLBoV+JSWaHqTv
         ePxm5e4oi+F7WGScluPylE1lIApldW3ti3CTgbwV+d8ymB8u6gOz/TGegJja2HnfskaQ
         fmq+m9ViMrWSDsOSSiR5PINpRiysVfiSBmoG44h42YXtc/b2U99Iu1pxaJG+kzKWW6xw
         g+gzJQYJuqanXyxwPUqLkzzVHCz7a8cRNIGwShGaoiNYBmVEB0P0Rzlh/+8RB6HALccr
         sY+Q==
X-Gm-Message-State: AOAM531mSIb/vsAindwt7Ku52gtdUPH+vrmdMXAJhV3Te9CLSIbbZL/X
	fWA64Nexfv/KE3TGKnBlkw0=
X-Google-Smtp-Source: ABdhPJyvWMOUQ+hHD4cinZn3wmCOwI4TTfMfroQFCK+VNIzkxXDU2bdY5DHAGOLxU2FEjf2zdYUsOg==
X-Received: by 2002:a17:902:d4cc:b029:e4:9cd9:f189 with SMTP id o12-20020a170902d4ccb02900e49cd9f189mr6689743plg.53.1616517386355;
        Tue, 23 Mar 2021 09:36:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2147:: with SMTP id s7ls5750660pgm.3.gmail; Tue, 23 Mar
 2021 09:36:25 -0700 (PDT)
X-Received: by 2002:a65:560b:: with SMTP id l11mr4633911pgs.362.1616517385841;
        Tue, 23 Mar 2021 09:36:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616517385; cv=none;
        d=google.com; s=arc-20160816;
        b=Inu3rZ9J9c1qqRz/rXxdVeTXALGkQArTk4xol36s4L+kzdDuXkDC+x1aI39Zi8ksXN
         m2UqNpC3aeHzgbQ21uNO6cYPsqofyAsKUXqblizGwbGnEjxmRx7veV2juBSKOuMbMfuk
         m7Yv3siByasPtLqy/RYtfBRcJ/b9eUB5WgzBjxdSJx8aNPk/6nkZZ7RzyZkYJ6IcNizH
         jYP4wJYUu38YFfDDbtPTplmEhWQztjTRV1IKtB47Sdaupev0+iYfUfWiTe/Ue7QWklTY
         xWdyv/lR7xSOrMs8/gL0z+U+wvYiBlrp5rq7rXspweK9+Gvppon/ze0zWuITXCVAsag1
         wm4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Jr5FYe+pG7gGnI4NPChSWjNH7YK3vC58byQZ9zBCWWU=;
        b=M1nUlPfT6F3dmutbhkBX7fnLRiRPSbQ+qjaL7xT1GVIuZrp/Yi5yvIeSOtNM1aDMR2
         tyAdvAbZGHOBAs+q3GANWv8bTFk0I35mlHnEJu0lSke9KtxeyybldJ3Un89R/0j6y3Vr
         MEeBbMz03UbizkUkIGOJ7RVC4Lvz5g7oO9OHcK8MP94SoFzjG1OpIlKihKWHjWJizlm0
         nG4nWxXm9nTYAzFu27o2R01fgU1m7okOFmpCNrBpsXAWseEXTOtl7nei2hmDGer7fXzJ
         VPMXha4/1I3BKQnyvSz0FANghwvZgHiouiDmNH06zXuGT2D/qAaZjg/TMg3nAoaHB3aB
         TBxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="caAT+/Y9";
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id s9si780717plg.2.2021.03.23.09.36.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 09:36:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id s21so10339439pjq.1
        for <clang-built-linux@googlegroups.com>; Tue, 23 Mar 2021 09:36:25 -0700 (PDT)
X-Received: by 2002:a17:90a:c087:: with SMTP id o7mr5353039pjs.38.1616517385469;
        Tue, 23 Mar 2021 09:36:25 -0700 (PDT)
Received: from google.com (240.111.247.35.bc.googleusercontent.com. [35.247.111.240])
        by smtp.gmail.com with ESMTPSA id c24sm17595799pfi.193.2021.03.23.09.36.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 09:36:24 -0700 (PDT)
Date: Tue, 23 Mar 2021 16:36:21 +0000
From: "'Sean Christopherson' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] kbuild: Merge module sections if and only if
 CONFIG_LTO_CLANG is enabled
Message-ID: <YFoZBY1SqilWAmx4@google.com>
References: <20210322234438.502582-1-seanjc@google.com>
 <CABCJKudMQ9CP1zhvywTf-_=PY5zmeviURR+=PqsMn_bqa_MV-g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKudMQ9CP1zhvywTf-_=PY5zmeviURR+=PqsMn_bqa_MV-g@mail.gmail.com>
X-Original-Sender: seanjc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="caAT+/Y9";       spf=pass
 (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::1034
 as permitted sender) smtp.mailfrom=seanjc@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sean Christopherson <seanjc@google.com>
Reply-To: Sean Christopherson <seanjc@google.com>
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

On Tue, Mar 23, 2021, Sami Tolvanen wrote:
> On Mon, Mar 22, 2021 at 4:44 PM Sean Christopherson <seanjc@google.com> wrote:
> >
> > Merge module sections only when using Clang LTO.  With gcc-10, merging
> > sections does not appear to update the symbol tables for the module,
> > e.g. 'readelf -s' shows the value that a symbol would have had, if
> > sections were not merged.
> 
> I'm fine with limiting this to LTO only, but it would be helpful to
> understand which sections are actually getting merged here.

It doesn't appear to matter which sections get merged, the tables only show the
correct data if there is no merging whatsoever, e.g. allowing merging for any
one of the four types (.bss, .data, .rodata and .text) results in breakage.
AFAICT, merging any sections causes the layout to change and throw off the
symbol tables. 

> Are you compiling the kernel with -ffunction-sections and/or -fdata-sections?

I tried both.  Default off, and forcing those flags by hacking the Makefile had
no effect.

> Does this issue only happen with gcc 10?

gcc-7 shows the same behavior, I haven't checked anything older or anything in
between.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFoZBY1SqilWAmx4%40google.com.
