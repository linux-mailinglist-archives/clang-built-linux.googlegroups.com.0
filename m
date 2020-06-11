Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLXHRL3QKGQEEENR5OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B4C1F707F
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 00:43:59 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id fa9sf5337270pjb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 15:43:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591915438; cv=pass;
        d=google.com; s=arc-20160816;
        b=I9sVgCfgXuMbguCfuEB2BGYwYdYXM5d8MN5tkFikwXLJqBAdiAYIzbsESq78MSanIV
         zL2EPaD1re7xVlrMFsFwNvSdV6+ZJ4axGYnLQeGaMWTKz8+ZuGjO9PwilPkVNo2xVxF0
         v6RFBmuQolkR4+jiggSNYwPEb4EDmiA7hb+8p+I4MmfJj7FmVHeB0H0/2lPSuZ/gSn78
         UWF+/jbX1jSozIbsaz6lI0Zzzz7g+LuiNXnjg0rzwXfsaUpjiWwJF05Hwc0Sx8aVUVrQ
         NftOiVExlmgq/FS0ktmZEMpKbTD99nAM9NMvEiHjU5ifj6MM+YUpJ/uSYzWOSNxRATWt
         CjiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :reposting:references:mime-version:message-id:in-reply-to:date
         :dkim-signature;
        bh=SMYziHMCsk36BV2Q4brJny70u9+CHBaYvYX6GJL0nVk=;
        b=huEpBKDtmznARc7Z/KNeBfE+cQKPVG9kD1m2bDk+FPxuKoktPi4RmWqv3JzkJ0O2Za
         m4uDg4ZJAUfDBBGGm3JWQWeZCMmdGgOmcSAQxyf1RSfIFWEZzjj2JRl80whigFk/Bjs2
         73WTaH0exvXyz1ruY/ewHYeE7URqSYNq5GBADcb2QMl89z1WpLNC0ShPiFd4emd0tMqZ
         KDX2lQ9rEESrW/xCh/7wh9WyTvAtPK9E7rNjpgbUXUV7D5Sa/oX4v7ojqGqZvmBS24ug
         ZgkUFDekHLWJTLc23rSDC6O97cqNm68bpc5QZITYkbusm/DWeIkAzeKHN+6r6QZhp1IV
         Wa/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="hb9eprX/";
       spf=pass (google.com: domain of 3rlpixgwkajsi89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3rLPiXgwKAJsI89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:reposting
         :subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=SMYziHMCsk36BV2Q4brJny70u9+CHBaYvYX6GJL0nVk=;
        b=arBhm8upnqF8ISoL3v6y5VnT4uHm/tP/eRNYTbFY9v6uWHQv1kJc6jbUiFYsaje00Z
         3SKgn32ji0SMvPS0cH09s/YXC72L9kq5jh0XmY5tAx/o9iOJxMGjGoD4yeXMAt5W3Faj
         qUJ5a2t+MtLfFVXtsqt0d1yjHYGP/H16xRFXC3cAbSt+qV6NmAwEXYep5hQxR/D3X504
         RwG8f8etCDlSrKAV++n3K92p4eS2TWVC/sDfA5uLY6oB20GVk/GZ23H/3uE6s+aP3VHT
         OeCQigTDpHqXgEftMa6VsyzkRgpSZ3I2aC7OzyGi2bSi1ky0okyTnJuWD6FJyynxgZQF
         rtnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:reposting:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SMYziHMCsk36BV2Q4brJny70u9+CHBaYvYX6GJL0nVk=;
        b=N6miMjNBQd/7B5Ia9w4orZnoD9ybSVIafM0NImXRUyIbxW88vEG//50OAVaE+75WFC
         NCkxDLB66ed1ubZ/bnQ1eoF1jdpAhOY7WmKaO0gQG/tNS5AqqBGUBiBsTi3wJXWpa98Q
         iS8AciG0pZpqaEYuGipQt8LP0RGS7+6iiMNYFf9kmIStiQOuQQ3soIlRW/LjdgXx9LW2
         ZcvvikzbPLjdW7331LjpTWlxCBg785R0b2xhIK6MR/nmhfr5nPMIZGRUiI2wGyMaitYU
         X4qPw8S1p/c06Nx8jAO2IQYVOAGqJWdKY6lIYSAo1fzWemLz0aIxxywNmREcZdaIJ+JU
         GwMg==
X-Gm-Message-State: AOAM531DsJrh7SzzUmwRrh5fPZFYqTCA8zxzAd0h7aghhTo1h0EFMgIu
	i7cKiXrwt2r3EGxvGg+a0w8=
X-Google-Smtp-Source: ABdhPJwlKQBS59Y6YCMCi6thX1pgRDZzMpQusLImkZhW72EIVIeWo3oiJ0+uSkRf9gx/ozUnhO2Y/w==
X-Received: by 2002:a17:902:9f8d:: with SMTP id g13mr8870554plq.292.1591915438192;
        Thu, 11 Jun 2020 15:43:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:94b5:: with SMTP id a21ls1103296pfl.5.gmail; Thu, 11 Jun
 2020 15:43:57 -0700 (PDT)
X-Received: by 2002:a63:e60a:: with SMTP id g10mr8815221pgh.210.1591915437755;
        Thu, 11 Jun 2020 15:43:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591915437; cv=none;
        d=google.com; s=arc-20160816;
        b=KfgciCNKQ8V1i5zVagwSBP/ZyB1BJie2abWxLQeSXyPKEhxGhuGgs6lsp49Az3Dq8h
         Ep3LwCQenL26dtDDzdsmdZvMO1VrHeDzmwDYiwe9cPqx6NJ6uiQs5meDxc31di1WnpVh
         M9+C9u/vmZqrAuVbu1SMiOequ1zt+h74HB2gbJhHdELQKdRJUH4gy9MCQYQ7o0Ah5jl5
         ojjvXZefDvWC7TIF6DfpJ3a0EJLfhJNiqD1wSsYJD/wmIDKKetD+gKU+GVtCU9NkIpPI
         Xsz8xvVRJwusbPRpQfIXA83psLPwaTIsZx8GcdfIeekGo5WBJtWKQLf1p7qE0jGYC3jX
         zzsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:reposting:references:mime-version:message-id
         :in-reply-to:date:dkim-signature;
        bh=dX94irw1MxHKi/T+Vqgi6+rzlQqYZ5xffMiSd9HTX8E=;
        b=Tb9A0LkliraDX5tcZEmPoJZ5ldYFcI49izhm1hCrNkaMDk+bOVIaDLWwe+8Yk3kkdJ
         N4jBes7AQvCFP8Ig2KUVh/EDvRWF+G1j7MgU/X99Oem4YzWckyaxAGmQ9Yx1A1ZSctE3
         IvaD7WzKR14nnlLwmMtgYbO89ST2CqSo5yCW0Ucf90FEKmuQI2suM7LgW6tVeZNs2sl2
         3jgaMiYmRCury52Z2c7aJlhTN7c9cvH2Cmyk7zlRteS1Gc6CytDV6S0E0GfZWG9cwtBt
         hzWiEcGeIvQjqYIS206oBSqp2soLl87St8V9tPJZXsUPJSVlugJM90V2nZyCahWHUSWO
         lKbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="hb9eprX/";
       spf=pass (google.com: domain of 3rlpixgwkajsi89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3rLPiXgwKAJsI89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id a22si776573pjv.3.2020.06.11.15.43.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2020 15:43:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rlpixgwkajsi89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id r4so5529173qvh.10
        for <clang-built-linux@googlegroups.com>; Thu, 11 Jun 2020 15:43:57 -0700 (PDT)
X-Received: by 2002:ad4:43e3:: with SMTP id f3mr9767525qvu.115.1591915436835;
 Thu, 11 Jun 2020 15:43:56 -0700 (PDT)
Date: Thu, 11 Jun 2020 15:43:55 -0700
In-Reply-To: <49YBKY13Szz9sT4@ozlabs.org>
Message-Id: <20200611224355.71174-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <49YBKY13Szz9sT4@ozlabs.org>
Reposting: https://groups.google.com/g/clang-built-linux/c/2dGVKSjE5Es
X-Mailer: git-send-email 2.27.0.290.gba653c62da-goog
Subject: Re: [PATCH v4 1/2] powerpc/uaccess: Implement unsafe_put_user() using
 'asm goto'
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: patch-notifications@ellerman.id.au, christophe.leroy@c-s.fr, 
	segher@kernel.crashing.org
Cc: benh@kernel.crashing.org, linux-kernel@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, npiggin@gmail.com, paulus@samba.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="hb9eprX/";       spf=pass
 (google.com: domain of 3rlpixgwkajsi89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3rLPiXgwKAJsI89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

Hello! It seems this patch broke our ppc32 builds, and we had to
disable them [0]. :(

From what I can tell, though Michael mentioned this was merged on May
29, but our CI of -next was green for ppc32 until June 4, then mainline
went red June 6. So this patch only got 2 days of soak time before the
merge window opened.

A general issue with the -next workflow seems to be that patches get
different amounts of soak time. For higher risk patches like this one,
can I please ask that they be help back a release if close to the merge
window?

Segher, Cristophe, I suspect Clang is missing support for the %L and %U
output templates [1]. I've implemented support for some of these before
in Clang via the documentation at [2], but these seem to be machine
specific? Can you please point me to documentation/unit tests/source for
these so that I can figure out what they should be doing, and look into
implementing them in Clang?

[0] https://github.com/ClangBuiltLinux/continuous-integration/pull/279
[1] https://bugs.llvm.org/show_bug.cgi?id=46186
[2]
https://gcc.gnu.org/onlinedocs/gccint/Output-Template.html#Output-Template

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200611224355.71174-1-ndesaulniers%40google.com.
