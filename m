Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPWL7KCQMGQELBM2H6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D15BC39E9E0
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 01:03:27 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id y6-20020a92d0c60000b02901e82edc2af9sf6821216ila.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 16:03:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623107006; cv=pass;
        d=google.com; s=arc-20160816;
        b=Us6CUpzVYKvsB5qz3O6x5rGYP8KRszAbCsj6+9utT3sq24baE5Vvqr0uZHl3Z7aCO7
         J7ivsi2QAbz62KA2qmlAPPN0Gg4GdNKFQl9leH7CIygw4e896FJoDrY7xvbfkztxnbhi
         RylEFa1ahhfk3go/pMGMepUtxC5OANYIaunyCetjd1ZmUxz6w8tescAcgGNVE3/bK7bg
         FHq2YaTpQQovgBfkwsUbX0wY35kDPwqTqXgTe0KDToJ1onYYHHN8qbVdypQtGOzS90Tt
         OgsqYAyDb67sHyUawXFIbSwS9YAMoBwgQMp++BSdeJ/Y/reIr+ljsu5Ss4RvJH3nDlxe
         x1Sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dSN6XIrM4gsEXIVh/e+kpR2o+0nUkbChAnXvW3KdORc=;
        b=o68hR3DUxZKvcadzETXKM2Iq4is+cJamHLBbOoJQmsElDIfdTwGiLgDtrRwoEM1Oeu
         MPPJqGxWro4uYJ6a3JlP/UT02sVSFu4nQLCs5YNK7Ex2hSJoIN7rxJBW6WDSWX9n+9JM
         JJMs4dOUzyBbgOLKLQaXEnKzOA/nPNW3Tne33HBGbJqtmr/drpxbvhZdiXzvFt27yikg
         diFCdy0Mtw1ZRsRSEw3/J2GLNaDwIu7Uc1myOxtNrH3SL2KbHuHHl2BiqSIkTkYDEteE
         FIWVVWcdBOTKq9U6jbHeMYKEqgR/W2LAj9lsAtPqfue6SzVATeDf/g6lHYIecHN6Ivuw
         KSnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MMHel72N;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dSN6XIrM4gsEXIVh/e+kpR2o+0nUkbChAnXvW3KdORc=;
        b=KJGHXibgabPxADDK7lQaL+opR1poCojYvJpB/3Snse0UdwEUgLvV7iCkJAQyHGYZCe
         XpqPuSekys7XUctgYfTEhwVQVuaJWNU6iT23i6Qm8FWkAqtsFe3W7ThgviCTrn+0tKcA
         n44zCdaEuw2LJTaGMNWT+pUm2QXoWadcOS+GokeAIchlbZuINGSVKmk3UJRAQmZjn2O/
         yZuLG2ahUFkZ9uZaG4O8GPsAeevZYpqO/MdnUyHtKvpSMghps46H1sKU17J4RKaPxSH1
         mWxHvlem+MTbOX1Na+1gG0k8YGLC5c3dSZDDLc7vONpKcm517j2HyJedQn56lTeu4Ada
         hFjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dSN6XIrM4gsEXIVh/e+kpR2o+0nUkbChAnXvW3KdORc=;
        b=Ds9OsE5BawwKivl4uvShA+qiV6qrXvLS2sagAnFHOAsHFzyHI2dFTwttlsi0ujgKOv
         t6okb21K7mpUbvzz+qr95zDbQos2BXpB7xRYSj/McQoQ2xauc4VpFdg3k5CkRJep7nMr
         y1awJeVaiqQ5EAYxzYt2Ec4Tvdc6F1Shv7ulMndlKbuzYUf6T7SIx9TidAztK4q+2L7I
         ElEHFmaON6BegYlRCtuldnjTgVo9QhT8v+0YD5SF3VC1RekBfnNbr4pzorns3BBFoZMe
         2p1b5AEmhYhxJLNDwihxpE+NJGBYbyPbeCO1BGA+zA7FffVLc42fnlOn7Zd/otqP6uHI
         x2fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sY4TDn+HSJjvNqF6Sa3rWDNg2qGE5AbBXYducDVHezg8q1q8o
	lFmnyhP08ei7h581xOKGJao=
X-Google-Smtp-Source: ABdhPJweChrBgebhM2Ekiybd0nnJfyWrDwhhXbRT95HCJdVYYZphigQzgsw1RF3Ft7gzWDbS5ayTsA==
X-Received: by 2002:a05:6e02:1053:: with SMTP id p19mr7117165ilj.241.1623107006366;
        Mon, 07 Jun 2021 16:03:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ce87:: with SMTP id r7ls823930ilo.6.gmail; Mon, 07 Jun
 2021 16:03:26 -0700 (PDT)
X-Received: by 2002:a92:7d07:: with SMTP id y7mr17200821ilc.68.1623107006032;
        Mon, 07 Jun 2021 16:03:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623107006; cv=none;
        d=google.com; s=arc-20160816;
        b=UWZmUE7JEo2pFCOCQmgpjocX/Y7P6hyqpBzxNDKNUCCZ6EZE0JLMXFabRHH5u+GsJJ
         1OjDk/i5xzbfz8yEg3QXIX4mjO/QAK8PS0YdGae+zXcrVC5OvEpJ9b/P1BSZDKFEbn9B
         lj2mUbVrxM+DpU9fgfmM7y99xX2mCoiNKGrrXMN4dhB1ID8yNsO5nT8H4Pr+GvvN+I42
         3NCKRNWJqfwtG0Z/IYaxHvekRAaKSxKs6bDGXVf4Hzn70L08fG8I7QkEO4iX11YqO9rD
         I6O+E7YtgWJAg1PNMrleMxiJb4XtcQrfiDue2FlNoFvVJVHYCio95+RISQw+wz53ygOm
         FcCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AC7ETe/Kt1WLEutUgZPZdc1iSopXvmHhdI0/unFkmvs=;
        b=DWBmZAI4hPQWUwTetjz8T+KWYtpwVXExrGVCCRV9ecENjdn/OgFWtaMJ0jxoOmI+1N
         wAJ7W2lT/Z+LV5PmiTSEQIbBot3/KTMiBy23QthP3Eb3zq6Zxy9VyYxmwJJRBagx0NKe
         onxfhycmJmLjK2C5AKTWYUcPSadssyUbOPpyC5IXM4Kp48XkkNXHexk3YoFPWO60bFEd
         zD5JmU/d2e/KXVQVbIt+xtL5dm4QQh00EEC1OcITjFwQ0JhJQUJGNTJz0lAeggzaTuok
         XxvyURmqN8C3+nkIWQd+GiLy7ElWpNfGqJQeDj4tqNdDQza/E6avhyE+Pipd9esm1FMQ
         T3rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MMHel72N;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id h17si1558190ile.3.2021.06.07.16.03.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 16:03:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Received: by mail-pf1-x42d.google.com with SMTP id x73so14243253pfc.8
        for <clang-built-linux@googlegroups.com>; Mon, 07 Jun 2021 16:03:26 -0700 (PDT)
X-Received: by 2002:a65:4289:: with SMTP id j9mr19957133pgp.165.1623107005679;
        Mon, 07 Jun 2021 16:03:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id gn4sm13179703pjb.16.2021.06.07.16.03.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 16:03:25 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org,
	Nathan Chancellor <nathan@kernel.org>,
	clang-built-linux@googlegroups.com,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	Bill Wendling <wcw@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	morbo@google.com
Subject: Re: [PATCH v3 1/1] pgo: Fix sleep in atomic section in prf_open() v3
Date: Mon,  7 Jun 2021 16:02:51 -0700
Message-Id: <162310696843.3797458.16031727600580374864.b4-ty@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210605183128.129614-1-jarmo.tiitto@gmail.com>
References: <20210605183128.129614-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=MMHel72N;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42d
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

On Sat, 5 Jun 2021 21:31:29 +0300, Jarmo Tiitto wrote:
> In prf_open() the required buffer size can be so large that
> vzalloc() may sleep thus triggering bug:
> 
> ======
>  BUG: sleeping function called from invalid context at include/linux/sched/mm.h:201
>  in_atomic(): 1, irqs_disabled(): 1, non_block: 0, pid: 337, name: cat
>  CPU: 1 PID: 337 Comm: cat Not tainted 5.13.0-rc2-24-hack+ #154
>  Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 0.0.0 02/06/2015
>  Call Trace:
>   dump_stack+0xc7/0x134
>   ___might_sleep+0x177/0x190
>   __might_sleep+0x5a/0x90
>   kmem_cache_alloc_node_trace+0x6b/0x3a0
>   ? __get_vm_area_node+0xcd/0x1b0
>   ? dput+0x283/0x300
>   __get_vm_area_node+0xcd/0x1b0
>   __vmalloc_node_range+0x7b/0x420
>   ? prf_open+0x1da/0x580
>   ? prf_open+0x32/0x580
>   ? __llvm_profile_instrument_memop+0x36/0x50
>   vzalloc+0x54/0x60
>   ? prf_open+0x1da/0x580
>   prf_open+0x1da/0x580
>   full_proxy_open+0x211/0x370
>   ....
> ======
> 
> [...]

Applied to for-next/clang/features, thanks! I made some additional tweaks
on top of this, in a separate patch I just sent out.

[1/1] pgo: Fix sleep in atomic section in prf_open() v3
      https://git.kernel.org/kees/c/d13b0485a7bb

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162310696843.3797458.16031727600580374864.b4-ty%40chromium.org.
