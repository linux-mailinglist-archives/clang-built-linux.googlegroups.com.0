Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUEP3KCQMGQEDQSGACY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 827D3397A90
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 21:17:37 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id h6-20020a92c0860000b02901e0cde08c7fsf1875283ile.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 12:17:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622575056; cv=pass;
        d=google.com; s=arc-20160816;
        b=iHtWa92Bb/KDtJOnnR4xzgrqwZhEHNAErdUhEByluGiw5HrdObR77iuMWYSWLbnb+1
         FEoX9bVdyPJuZx3daXVCNfEJJEsYHYBTsFY7tyrKar7SBRNUQexU740RNJr3srCejoFJ
         iuTMKln6aFCY5hZTjJA4cxPZ4Y1UNKS84qTIgrIpqCmobXVuA+7mKY/PPvfbIeaRdb1L
         gxBuICAAYd2+/U1CORCfusNtsoWxQocBI9To6uyuGBGU7eT8kqDlz/pL+d6R0yRdLscL
         LpPw/SfnG0OoUmIvTDUk2eqD7aTE7caBE99CpVbnUJmAVwivUYEY2CNg+0GE3AK/a47F
         E8rA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qIRHtWw8eX7+FTUF8CMMsJ9A+nbMub5mFxfy7us+22Y=;
        b=RLflJluIzNnCduLRB/IhH84Fy7P4wXWJIqlI0869GQwkmdHY4aqZIevrsfocWWKn9c
         GzyT4UUwxr7d6oenX9LiMEmSN8VkS3FmVGQqKL1NWM7XBc6q71/LPxroAHN+oClG0yX3
         cBMASfUz65rff5biCY6Ega5ULeef7A60cgpqx3c3BQ+S7Y+hhfNretEABoJw3FZzb2kk
         sVCta/A9uP5WL2MwkNyqiIXa2boQPPj07tDcAydeYEZOir/yb7imdlJC5isdxpSkysdT
         6gmSHhLZtOD6b8GXqK2IqwOf5r16u3K+tZsODvCfLTpHngpMoQTf0Wx4RiXD4rHsp153
         xlnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dbBQtsyL;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qIRHtWw8eX7+FTUF8CMMsJ9A+nbMub5mFxfy7us+22Y=;
        b=RR4MUQy8CVenxmodi7s5ZUpS+wVFitLvFcIYP31gXIkU0R8Ozpi/btzhrH0aEBfSZq
         h+Lfg0AZabuI0JIuzEkFFZDzLrXjwfVZbvnZwyp9jSI0M240FgvJheFQMrLrSIR8opGR
         aSfES4+0GwiWlMeSrYtdwCUbuLKb7f10PMTGDQaNLpyQiFXpyU/yBGyvxftFAj4R74Bp
         JukfR0aWzun6CmgJjL2TbQcYDDcgBsFprTtIYmrVO8VnxdhAjHYITTdRm3Gdv91bIupM
         nUm+VV5LPi9h0KHvboY78vQbxKGIbuQF6Z4yzkKfnBzqgRUQxhGWa+I/VhyXiyaVmOEu
         Wmwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qIRHtWw8eX7+FTUF8CMMsJ9A+nbMub5mFxfy7us+22Y=;
        b=tqOXTNlWr93LdDV7lBYs3rn7tDTK1cZxJsJBhLgNk2cg7XczZC7kxFOLEVIyJDC+It
         JozjXkIbJlufrcnqhlJIHLnS6gAEyDTepydoUc37QGnakyMqMDvk4IxoWFaA4vf6+DhY
         0Dx9iFo0+ZlMf410cvwCbxR9XeW9ypa9hlWDHnOJr69ca/eOzrnZaBliD/vihDh9Vr1Z
         gh6VqVPXVPNqW2VCvP+CZsu+59CAiWU2LLYTBB1kpmAxREWZHYFmFn2AoqjuIn8wnAXi
         eUX7IhOjSGLxqlByq3uxt3cMjxGCnwhAvxzyiJEcsKb0Dws4R+7mQ08p+zVzJ4h7UVjp
         eNbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332EzI6wMzXC/WCAZi5amNN5LS+xhl0SEumlFCkz1DrZVpdDv1l
	kueGWey7d+5AXLMavGx5mZc=
X-Google-Smtp-Source: ABdhPJx0J8QrZYwhGFssBGNYFwuLNTrFf34xeeuLKjDSdCqbpfl/MLrD5YkYRL8/ffbY8eOBilndgA==
X-Received: by 2002:a92:da0d:: with SMTP id z13mr13186242ilm.18.1622575056397;
        Tue, 01 Jun 2021 12:17:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:15c9:: with SMTP id f9ls2903756iow.1.gmail; Tue, 01
 Jun 2021 12:17:36 -0700 (PDT)
X-Received: by 2002:a05:6602:5ce:: with SMTP id w14mr2739315iox.155.1622575055987;
        Tue, 01 Jun 2021 12:17:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622575055; cv=none;
        d=google.com; s=arc-20160816;
        b=X6i66vWhmHAQDjiB3oGMdy8Py1DnZVf4BN+hSHYsFKH9XoVuYx/Czz5BDXXVO7cvJK
         pteyDxPE97C5xgiFITEXQIeOzen0gjebaGiTORue7abI0yr1+7cEVnNo8/e0E0MpW1TS
         xG0QJwS6LFRgn5T2i6tc7k2r9721URussDBuLZpTuIjHWAbCtMzcLcwh8EF6AXECj3cI
         dNilmOcPzau0d389SJPoVBnP7JKYTNDCD4AUNYCuU7M8QYsLbdAT8oytyqYoqyLbuMOB
         d9Cl8GRmFxOAFIIm9Kl3KovsZLFr0KxaIvSoCocV7CTF/SNeVK9E88JlZJZlmJmiqDt8
         e/Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tXSpBBbp8umZDX2eRcS2QwQNb4xIATBt0dQ003Ln9Ig=;
        b=AJXm/tV5DOcbIa4l3LFRuaBjWX2akXkleHgaUMqbngez9Uikfs4yPQ42bZqpmUvcRh
         THGLayBKVwIMTxLPJxs1dFt6XQI1Z8lT4+eu3jC0smp4VGfrr2av6R33DewT30DtzDMb
         xSUX5rfnh2tSlM/Xm3ZWUUQ5DMI9vviVyI9JrptomANswvU7t1M0PN46qkQk3WniR8+f
         fCJIAnilx3iiisx8izEFAdOnlxSIi98CY5TqETfGu5Z41kZ/CQz+QBJYvaGSRUUdf91R
         r7pse+57EoZkkZu4FAHJuwzRgiMp9j8JV8kU//uGLMn4A0CoYsfl2Os57a+BrpUeOQub
         CyOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dbBQtsyL;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id h15si1499772ili.5.2021.06.01.12.17.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 12:17:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id h12so7406935plf.11
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 12:17:35 -0700 (PDT)
X-Received: by 2002:a17:90a:8902:: with SMTP id u2mr26520768pjn.143.1622575055757;
        Tue, 01 Jun 2021 12:17:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s15sm10891489pjr.18.2021.06.01.12.17.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 12:17:35 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Jonathan Corbet <corbet@lwn.net>,
	clang-built-linux@googlegroups.com,
	Bill Wendling <morbo@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@google.com>,
	linux-doc@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] pgo: rename the raw profile file to vmlinux.profraw
Date: Tue,  1 Jun 2021 12:17:24 -0700
Message-Id: <162257504238.1460767.9253353990996275101.b4-ty@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210531202044.426578-1-morbo@google.com>
References: <20210531202044.426578-1-morbo@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=dbBQtsyL;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, 31 May 2021 13:20:44 -0700, Bill Wendling wrote:
> Future PGO features may create other files in /sys/kernel/debug/pgo. So
> rename the kernel's raw profile data file to "vmlinux.profraw" to make
> which part of the kernel the file is for more explicit.
> 
> Note that future files in /sys/kernel/debug/pgo should follow a similar
> naming convention.

Applied to for-next/clang/features, thanks!

[1/1] pgo: rename the raw profile file to vmlinux.profraw
      https://git.kernel.org/kees/c/001eaf3fd0e3

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162257504238.1460767.9253353990996275101.b4-ty%40chromium.org.
