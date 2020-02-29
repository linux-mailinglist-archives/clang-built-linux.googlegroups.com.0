Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMMI47ZAKGQEQQ3GUYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9E117445B
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 Feb 2020 02:53:55 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id q5sf3236960pfh.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 17:53:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582941233; cv=pass;
        d=google.com; s=arc-20160816;
        b=fvv6/riFrHE9mqU0nsDZgxelBUexsyNhkxvHCDI8uiSHOgFw6ncsY8Qs+aw2V9v6w+
         3A2fKeVj7C/JqdtimTzQUbfj+kJPOS1sswQv7NakiH6AE+Vn9u3vQu0UDqKWhogFs/bZ
         rXT2LYmH1ggoC8/qVPTLhVzL+b2YM5bqwBZOG5N5IHgoOxJvWCLITkOFIR72DrGPdY4V
         FSXLJUXi0o2m+H2FPOHe4H7/2a2Lu2rpigJPL8bLv/LOQw0Jbr/5u6iheZd8d9+0Qne8
         ptm06khq/rK0tfqzgH6p/+cMq7NZ/cboNR9SxiFVM7Wj3Q2yx6wQhTuLtpbGDbwsWb1T
         Pn/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=q2FOF2tOAp6BBsMxf6rXusRK1t27I9Ynnw0U2LRPNaA=;
        b=S1JLzktJfvNVwsh5nrllp5R54+IATKMKqGzZC9j1YEWpz7/f1Kml5lxgZSR8hz9DVA
         zuPn05jgans49csJglCzI/PN1E1yT0zB3kipzfZwlNCs5MeFEwFU/aP/SJ8Z/Vap/Yk7
         UU6VFDS3Cgr/yA/lgjRTdHlMG64yGKEAM7cEHO+OkNLF5l9Fe5fk9wqQMgeCLrbkgtWX
         fMPEFxPlYR3BQ2Nk0RLlvS549GNhHZ6WxdDnRhOfzghimLrNQTSNMhqChWRMGxoPsiDz
         l7pIM0weBHkfIlC/9XFBtj+Rs2BnikUrfubLZyCxoG2wbLT7lGAtFise2VbLEe9bqdTH
         J9ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dMwE0kW6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q2FOF2tOAp6BBsMxf6rXusRK1t27I9Ynnw0U2LRPNaA=;
        b=Zk66TCj2qNNa3/Jze0b+2n+NmBnL5I/HWyiyTZP/eOrORSEPG85C/mF6taYuUULazY
         gU1T31KbP0RunXGUHat3oUXDaNtRDmlXTKN/+iXgWpMrAwT7iKqycQPwNJbj2cnzuKC8
         fOjJVG7HYyh8oS2LFqh2Hjzjsk/3Nk0vTan9y6S3O5sFkf/kdJUdpZnVluH44QONmorq
         ABbCCujwEaU871pGoGqbONlKsz7akd6zljomuZktiGW7sFXTghDCBiWvYmCazqFRAqaH
         gka3WMZ/5ibSXKstWu8BUMnIq2sj9IAhWcCG/UQULUxCfI2GNsOKEptr/XRhlswnd0F7
         uRXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q2FOF2tOAp6BBsMxf6rXusRK1t27I9Ynnw0U2LRPNaA=;
        b=MmXgeYDnqLXphMnkFkH8sh/ko0QJ0CBt8ZvvSJj3YHPK9Y9Vj7dfsFlkMx2H2dULsh
         usp3GFmyggKfySEEya+uMsUFNM/w4DECSoMBnqEhJiUi1nXH8xIpXwPsEfJqlHHEoBJf
         xHCvcNGIZmSfkSAtkADq5K1/izQex0PtUlxiCHxNNhARuuUgWRXXujI/xNjfycEo3Osy
         TIsW3pt6NLkLNI+0FXS7Dt8Vh6flhN+2OyHHSs1IM6oqCbWKe6dnnlI0X63oGBWBIM7k
         E795d5U68JkSiFQ//J0753zP2Cq94nUAwsuVo1s5x3eQpXJf/cos1fOOQHZ8fRsV+MU+
         sAMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q2FOF2tOAp6BBsMxf6rXusRK1t27I9Ynnw0U2LRPNaA=;
        b=iOYGdrM8FrVRSdHCMmJkbHiv13BqeYnYK4//8MgE/2bfyJqSTCqJR54iZjK+BJ9KJB
         o4+ilC/JGNpNdy4HOO0cQjKMOlpQnot6VKXej8v/ibtGwTDMCE88bMS1jChOnV/A1kZR
         zWmpkluwolvFtQwvhauWo4lytALgDQw12LHUN245DgUIJgES4cwtlX0HeJkCZl6Y0cTL
         s+++pnCxL3CuEpoVB88hmqRGeH4+3xF6S82TtFeNqhWBnd6X50DFRmeNFia7aYYO1EVB
         KqhkVA5Yv40TnEnFtb/X87LTWkljFUvQKCmVKy0+YXWUMcN7uzv4c5/GJ/3Ta0DIw97m
         ielA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWkAAkVU7KFZ0rSNKP4HFlk2VzF5SOn62sB1+K8BfFKnKeg1miO
	Y46aVTzyOb08czRvb9e/0+I=
X-Google-Smtp-Source: APXvYqzOeEB3Yx+Zo1GaQQiul8Y8g7UlLTQ1s5OIRVtP9QKLO4hZrpW0xIr1VLzOP5MmIeup+ZiawA==
X-Received: by 2002:a17:90a:aa83:: with SMTP id l3mr7953214pjq.5.1582941233567;
        Fri, 28 Feb 2020 17:53:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:84d9:: with SMTP id x25ls1591169pfn.2.gmail; Fri, 28 Feb
 2020 17:53:53 -0800 (PST)
X-Received: by 2002:a63:7f17:: with SMTP id a23mr7615268pgd.47.1582941233113;
        Fri, 28 Feb 2020 17:53:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582941233; cv=none;
        d=google.com; s=arc-20160816;
        b=oadzn0Ws9f9JepKQHQBUS5GygDkYb8UnlHkBvFNI/L4BEnC7Gv7SoETqzhMVz29v5n
         I3+Gkd80xUT9hkvYBWqk1OSKeMfd36zIY1IbGgd3dbTaHqvSmYcgTBPj+zM+7QgpQ/sO
         Js0YqEXooVpOmaUvvaqWu7Ogn2iEWfoXBFRZjCa1ZVCQTVSRzGopYRzTRppvdnBUlBMu
         sInslyzla6rjA4tioYNgd0rspKVfiIeh3cJgfCEEUSCBCdBO0l8FQu88/hjsm5lnZLUc
         AcIk3QfUVKKzvsXmyUfEQD9268F21z4UZfj7WgwHfulEL68QFj1Dha69s6etzPev4Wcw
         joIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=crY7I29q65NogjvIQrh/RfmKj4YUeYhp8OQxxv1sYQo=;
        b=V3gYIYOk034SsFWpgbGGgXWHslIF62RcawbBsGLcmuPOXdyhQZoG84yfMx5/WX17/G
         4Dyl2AaJFM2IUBMYbRboN9znXIQLszbtHiKOJsUcvJbHevHE+BMHNvjTjbEH6v4jGAFD
         TNnrRvAPhkjYWOPIe0z9VFkIM5CBrSStsxrak7mH9miHn4g3YJ8Aq5f/07eTmIREtKBd
         U17EJJ5F+C9b2djP3FqXJwTepF2KxILK7Rwn8K+hac2SNg433xtax47KjnkZEy1Os8uF
         J/tSH3Tt6LUh2+bk+RTWOysMcG5ztkdNsGC+F51LW5l/vOVHr9ybHDG+zXXz9gPilY9r
         TIFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dMwE0kW6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id l12si208730plt.5.2020.02.28.17.53.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2020 17:53:53 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id r16so4459884otd.2;
        Fri, 28 Feb 2020 17:53:53 -0800 (PST)
X-Received: by 2002:a05:6830:1284:: with SMTP id z4mr543547otp.291.1582941232393;
        Fri, 28 Feb 2020 17:53:52 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id u3sm3782265ote.50.2020.02.28.17.53.51
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 28 Feb 2020 17:53:51 -0800 (PST)
Date: Fri, 28 Feb 2020 18:53:50 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg Thelen <gthelen@google.com>
Cc: Brendan Higgins <brendanhiggins@google.com>,
	linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kunit: add --make_options
Message-ID: <20200229015350.GA26612@ubuntu-m2-xlarge-x86>
References: <20200227063134.261636-1-gthelen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200227063134.261636-1-gthelen@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dMwE0kW6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Feb 26, 2020 at 10:31:34PM -0800, 'Greg Thelen' via Clang Built Linux wrote:
> The kunit.py utility builds an ARCH=um kernel and then runs it.  Add
> optional --make_options flag to kunit.py allowing for the operator to
> specify extra build options.
> 
> This allows use of the clang compiler for kunit:
>   tools/testing/kunit/kunit.py run --defconfig \
>     --make_options CC=clang --make_options HOSTCC=clang
> 
> Signed-off-by: Greg Thelen <gthelen@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200229015350.GA26612%40ubuntu-m2-xlarge-x86.
