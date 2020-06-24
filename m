Return-Path: <clang-built-linux+bncBC2ORX645YPRBO6HZ73QKGQEMQVNKIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 42837209732
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 01:37:33 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id 40sf2416472otc.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 16:37:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593041852; cv=pass;
        d=google.com; s=arc-20160816;
        b=DZBOG6cG7x/aLYaaEM55xlDm5J7BTNSBHKDkKmJSYla0dSUMtzTJGHX9gI3u/3/GOC
         T1szozrMvO5ZWwkoSc4DXb7eUmRb6ngey58w3C0Eht0Z5Hp0EbDdPmF0c9MhyD/MN+Ri
         TYRtws7bVJiAA2BErQIYgannEf+VX2E520ch0UdRwdJpbC2l4em9fDLAWJfVK9J7sr89
         ZctK5sdZMBpuBdBtgkwNf3G11fKWWEb+i7Ji35AYDpOcR7KYyIaDNIKUDFxFXqSAueU1
         i64RPDXKKvufYCm8+Ky22Q8DIuoFjJmZhJx/YFKpv34jXlWSh8bNcssd4yAWXeyJugmf
         HZ1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=3gTo/xfk+cj3eOvpNww1wMzonhoonINexUO9qJKJvrM=;
        b=C2B0uakwr8iGKWq+hBndw9GzX8iXVIUiRqUOdDVweakAE6e0Ba9wHOBy6uvwT9nXZn
         WjwvHHJJy34cieN11ijiBpyiCePz3xKfU4HElimWVDM29me7XMN/XDhn2C9LucwwIcXB
         1pFyTYjXHunSXTz9/ZgdE24GgK6LxbEqLa312kDDxRsSk+L9bajVCBzWOgzZQ61c2txM
         94c3BO5ypkmxkonLN5nAa2Ys6olv4eH+4ZfCHNspRaH0NWjl8wsMeQwvjfgwftyKcAaf
         yxKV5szTFj7DU0HVDVkk78Mypr6Keb19Txc0i2gJtW3Zk82OR/sLbnYloc2+l8aixg9O
         kVpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ghe0LNHZ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3gTo/xfk+cj3eOvpNww1wMzonhoonINexUO9qJKJvrM=;
        b=tnuMG7fTRXquqds/7VDJ4dFinbnwiX20LOexuv8w7hhO6e58mxb8kXMDk47rAIvWpr
         KsAU3VG5fh8CL9YoCaGXQ8Zr0LyrDoaSNL+hGW5wD9Hh3dIXOrVco46FvHOf61+iV8AF
         D100rcMkhNoWDPScjxoXgZ9152YPJuCXcwFSKqrtLO5P41wk/DfXfD+8+VN+eDtL0sV1
         vWBgEE2How4p1VVfNs8vQoC5SgEyaJwlryOLTHWaZCjJ0fmoGM5f1WLfyexjXa8orguK
         febLwHEQEzKHwNSxMZduQowSitc1YpTYo3NeSA/K+9yiTLkrlnGZnN9zxuqDZsb2a0c7
         1iEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3gTo/xfk+cj3eOvpNww1wMzonhoonINexUO9qJKJvrM=;
        b=R4JHjfaNAHH2dAr9BB5kCWsZSVekcBlyP4VC6yN1a/YIJK3BvPf+jS1v6kEVuY0dop
         4yGhTfcUYp8O9FOt7wWU62jA/pu5hP1/R+D5kY9FMXBy7Z1aQG9bLB9P8rvCOeyQI00R
         97FChWsnsulNL3afPlbA2UxIdD8ovcteTi8llG2K6zKxkhVuBP7CiVRzXP8APBgZUKYf
         pxZYx2i7ZO7NITjD4E8ppE5MGgNcAgA0ubF3Hyo6zbJZMfbUu546GrdUwSvmdtUFlp0F
         h/wGH4Co2GPTO86FmyuxzXdErzS0GXb8nOL43GppRMCJkqmPlFWtGpAJnEzg1LMV2Y2a
         t6jA==
X-Gm-Message-State: AOAM5334KgAbD/f1xzVQhG7DCaD1M2/EL+YqWbTuZ8wKJKEnApKUkj/L
	+B14zGQgfgqNIlY+ksXy+hk=
X-Google-Smtp-Source: ABdhPJwPXcpTpJIYo2AAMqCgYYRq8AWzgaa5MunbxGOyHIKhxHeAApkjbqHQ4LKA0t6p0LbclEwstA==
X-Received: by 2002:a9d:4c13:: with SMTP id l19mr23469364otf.341.1593041851886;
        Wed, 24 Jun 2020 16:37:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:eac1:: with SMTP id i184ls733745oih.4.gmail; Wed, 24 Jun
 2020 16:37:31 -0700 (PDT)
X-Received: by 2002:aca:5342:: with SMTP id h63mr172394oib.9.1593041851534;
        Wed, 24 Jun 2020 16:37:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593041851; cv=none;
        d=google.com; s=arc-20160816;
        b=07e0meZ4Eg59B58nOrbAAQ3g9FyZAWpOQe39YfKVZol+pmm5VQBs0nO3/ptoV4OEyo
         7REFq7uWWXCq5mXHVqf/Nxrl4GTuMZ14AhW+RuXnvYYRNtsnTZyaSiTdVGnpZG82txqu
         lPgtl+osFz+nmxWW94dHEsbzO68IN+4nF4hzRqGoRs43W9jAJOy1S11RoWUJ/QDIqNwT
         A9Lj/A8xse+x4slNJmll81onGMmFVxTR4gPFMqW+jaKej0eK2IuDy3dZP2+bnD9VrjCc
         ecrOoB3HjbptBhUgC0K4Tyxwl3zlrIXN0Ey1VK7zQDwXLmlLuoBw/0pnr8ppG0ZJHu8H
         3nDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mo7Dwe07kJhP63QLmOzciNFvW218NBaVIlEPp4HbWlg=;
        b=HLYFD5AvK6NoYx9j4zVGxMh/ougWiF5fu8feJS5W2/89sS71P56Yf4/pdE5AjIPl1b
         4MlpDlGGmrGh/n61lw1dGfSy+Fd+TFsiSklVPtN8meq2ASf/C345xhWaDrOzVOnPZ9eM
         uFs5nuevt+wRO5kOQ6Xo3hgLVCK5KAR9JrI+kbVh6bzg+hd8ZamVtiRTAPV4LVaYddA9
         peX50wRO38W3iGr9C+ch9GuDO5aCIMAubmXATh4ThIm43FQ/KRsYP+E/Tw4LMOY8NYx7
         r+dNrS7/KCGIp3c+S4OGSi+7FiDoVDF8gghFPUvF0mK9HOjn9F0vhcOxKlB3fhE/ShLW
         BYcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ghe0LNHZ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id c22si1793075oto.3.2020.06.24.16.37.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 16:37:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id k1so1865920pls.2
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 16:37:31 -0700 (PDT)
X-Received: by 2002:a17:90a:9d8b:: with SMTP id k11mr267919pjp.10.1593041850610;
        Wed, 24 Jun 2020 16:37:30 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id c9sm21338811pfr.72.2020.06.24.16.37.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 16:37:29 -0700 (PDT)
Date: Wed, 24 Jun 2020 16:37:24 -0700
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
	x86@kernel.org, George Burgess IV <gbiv@google.com>
Subject: Re: [PATCH 06/22] kbuild: lto: limit inlining
Message-ID: <20200624233724.GA94769@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-7-samitolvanen@google.com>
 <20200624212055.GU4817@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624212055.GU4817@hirez.programming.kicks-ass.net>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ghe0LNHZ;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::644
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

On Wed, Jun 24, 2020 at 11:20:55PM +0200, Peter Zijlstra wrote:
> On Wed, Jun 24, 2020 at 01:31:44PM -0700, Sami Tolvanen wrote:
> > This change limits function inlining across translation unit
> > boundaries in order to reduce the binary size with LTO.
> > 
> > The -import-instr-limit flag defines a size limit, as the number
> > of LLVM IR instructions, for importing functions from other TUs.
> > The default value is 100, and decreasing it to 5 reduces the size
> > of a stripped arm64 defconfig vmlinux by 11%.
> 
> Is that also the right number for x86? What about the effect on
> performance? What did 6 do? or 4?

This is the size limit we decided on for Android after testing on
arm64, but the number is obviously a compromise between code size
and performance. I'd be happy to benchmark this further once other
concerns have been resolved.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624233724.GA94769%40google.com.
