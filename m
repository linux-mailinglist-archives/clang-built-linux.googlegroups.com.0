Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBUOEUT7AKGQEGSBUOJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4262CDC84
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 18:37:21 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id g186sf689584lfd.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 09:37:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607017041; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xpg4to13cve0iuMDoycCc/axrcjroRXYyyNgxc7fnMuv1PyU18XwHG3k23tLbD9YbI
         AAkRemMEaJkzmMo17H1lQ+Bc4vxXBXQjgYGMtwP/WdCbeyYt5w3O+n8ruET03oK1B0pm
         kPQh2Y4F+acuZXoqgZt0d1SeA30xVPyr/1PVGgO3s+B+4swFXrOjQNVhLBhZWQboF16j
         OrUj2ACw3cgvHBGwRe9yhE7ntyyM3KzZ9JU2/mIN41kH45Um+TEtxJz5/jfIdRRkdQip
         tlthSuCw3biBLS8jtkOSkv4d5v7a6kyW/tJpMZYdJQ8CmVmwBQ61JnbtrFvHLP590ZOC
         T1Eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=7HTca54qV13CDJUiQxTa8dyi/2mj2501DmCxKlSZ44I=;
        b=FaLBoGrXm2iwBteiUqiGVThRcy3e52GhjDb+2FkIzLRud84ys+U5x/FQimOvuG9W40
         Pguui+H0imhDcQ/bGHVvWRYjAw9uxxJ7d0B+iYGzwpGm7hMGGvsIbk9YARYpEn3knUtw
         DKMQ4m86L5cAPkSVeczQ2Sm+hL9S7iAxqJGK3AOZlcAUugeVM72tAyqTVu2O6cD0K/qH
         JzGzqD9GuAU8U9ZDvEVtOK6JIaYSTvv7NvHOdHe4DU+NH+iToI585gQccRvcNvdLhQRG
         qgSOIuR/uz0IfjgHsBoVfOQ7fNyLGCxShxwG57mCRiD9upv2Kweb5DWEVKUF40nrreX5
         VFPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b="g0RuxTC/";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7HTca54qV13CDJUiQxTa8dyi/2mj2501DmCxKlSZ44I=;
        b=RBOxqXCYdBApGW5pl9PFjjFhZudQgNOMqrq7gDXF75TW5TW3iWjAQavDfca6Y6XtFL
         rPkF1vpqKCe14KS1OVAfQ2DHSrd6ZxFJrYJn7JuRIdZN8yU/Md6Y81HbtkHlSmGM0rqn
         zN8kgxr7sIXtaOPOVJePjh6JGDcchlb2c3/heUoJ3CK7fQkym+jdpa4/1Jn6Wpj5XoQW
         baCKYC32XNoKd4J5cFXTP6iKF2en9fRFSQ+ku7NorZ70OmuKSVR4L6DyC6jrzrq/RVQQ
         kGWYyP6O4wgLeJGZTiExFEzzxLZ5LN/ErB2prY1q01WSMnVvFpYfqWtSi7//999GV7rI
         D66g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7HTca54qV13CDJUiQxTa8dyi/2mj2501DmCxKlSZ44I=;
        b=CexisSRSfNOUMcQ7fArzOQm//i5AfKMrD4yXd9gIHiuvujVY8N/GtBF5R2nURYTXcD
         NgYA6cueWZgclPw0jrd60PwSugLWKLMwLcfHkloImyUmn8zJ8BDdmiPRGwUCoEpOOOrU
         3PI5XrCYYhQq0KJlq2VxiW2y1Guk3hCZIRsyuWji8ECPQWEltWqZSFV92qqJ6U3HA4aH
         etYyQu2PKNGFJzAP5uM+fuD48TXQ+pv6fy4tpfpnZsdPy2kHqZVa0qTtAoUO6e4q1DFW
         KPV1uRJdJkyz6VX++j6vGAGEektDQSakFTIh7NkEmmhIuQZdNZ4iMyqDZKe16zP5MtZ2
         Z8Og==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329ZXq6CcGjvwfVVHi/4jZymbCb5AmILsnRGpXfyf6dg0K0Lj8f
	qeIuzIIXdoGL79ssqcHN0qc=
X-Google-Smtp-Source: ABdhPJwzC3zstK0MH56HRZcrS7fC6CNKgkaEnd4fGrJZy0y8BjAUkMwm7hl3K1fAOot6iujhg81wfg==
X-Received: by 2002:a2e:7c0a:: with SMTP id x10mr1716489ljc.119.1607017041249;
        Thu, 03 Dec 2020 09:37:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5a02:: with SMTP id q2ls1008751lfn.1.gmail; Thu, 03 Dec
 2020 09:37:20 -0800 (PST)
X-Received: by 2002:ac2:46f2:: with SMTP id q18mr1653222lfo.229.1607017040147;
        Thu, 03 Dec 2020 09:37:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607017040; cv=none;
        d=google.com; s=arc-20160816;
        b=bwLV/yjIutslCPQh2KxHKIciTbcaTA8C3XQ2OU3DTmkdlEEdUvoGIsEwwV2jNk3aaB
         YMVhTsS9kKemXJSO72Qfa/wHXl+ExZ8gGUpzBu+wMzaxRylUggNq0pWfenIoM/yuK4Fm
         4G1qCa+8oayYi0U9+a++19iWhvM+VrHuPmNvQx5BvAas3HP7ymSsIJDl6sApjXPY8p5+
         B0olpDF5Qe2dchqTBDrQs08h174RBCMlVRkKB0I6ER6e6C932d9XZbDLUE9OKOiRy3jf
         HsW9sG4bJlMJKJPF3WVJVe9Tz0R4UPkU46lTKr+1tjuKtlxQG3BNuLkQwGQfeh5uTFWS
         GGKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IAYzt5aWmV7k8rYu1oRqo0Iimqerq25dwLnLWK087IQ=;
        b=0Uv1gmDoQdtcL2z6+IcZCACEp3LbfD0DBeCHIu/fEWniascyhuE4R2FRswO2ceWHuK
         e5nVHiSk9jm80und+P9D85PRUMwufidcOoeCFGaNw34wy41+4/jHm3MAyaWJP266toRC
         3xH0ZcregiTPQM04qF/NbzMVt5id2zXtPPhWs2nmEQVRJTp2HutZvNb55EC2seRonRH8
         nr77nt23E1YuF6zNR6ls1Q6b41LSAuCWlInyC0Xar0lwxcFZTOCc3l7SMHVzAuED/6jY
         ZvtgI61Ihk4dszyCCatUIG9fNfOklOaKcdLXlfl8TgjEfMwelHbdyyuxQSdIzwSsjQOg
         iAaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b="g0RuxTC/";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id y21si83785lfl.7.2020.12.03.09.37.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 09:37:20 -0800 (PST)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id y7so3441800lji.8
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 09:37:20 -0800 (PST)
X-Received: by 2002:a2e:7005:: with SMTP id l5mr1631902ljc.175.1607017039477;
        Thu, 03 Dec 2020 09:37:19 -0800 (PST)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com. [209.85.208.170])
        by smtp.gmail.com with ESMTPSA id c70sm753136lfd.87.2020.12.03.09.37.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 09:37:18 -0800 (PST)
Received: by mail-lj1-f170.google.com with SMTP id a1so2119328ljq.3
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 09:37:18 -0800 (PST)
X-Received: by 2002:a2e:a543:: with SMTP id e3mr1691756ljn.421.1607017037787;
 Thu, 03 Dec 2020 09:37:17 -0800 (PST)
MIME-Version: 1.0
References: <20201203125700.161354-1-masahiroy@kernel.org>
In-Reply-To: <20201203125700.161354-1-masahiroy@kernel.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 3 Dec 2020 09:37:01 -0800
X-Gmail-Original-Message-ID: <CAHk-=wgRV9VHO2RVwn+iMfH_WFjQV1dsZtEQhgrUBQfM9QBPmQ@mail.gmail.com>
Message-ID: <CAHk-=wgRV9VHO2RVwn+iMfH_WFjQV1dsZtEQhgrUBQfM9QBPmQ@mail.gmail.com>
Subject: Re: [PATCH] gcc-plugins: simplify GCC plugin-dev capability test
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Kees Cook <keescook@chromium.org>, 
	Emese Revfy <re.emese@gmail.com>, linux-hardening@vger.kernel.org, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b="g0RuxTC/";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Thu, Dec 3, 2020 at 5:03 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Checking the existence of plugin-version.h is still needed to ensure
> the plugin-dev package is installed. The test code is now small enough
> to be embedded in scripts/gcc-plugins/Kconfig.

Ack. I think the "plugin" directory name should be quoted, but that's
a pre-existing bug.

          Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwgRV9VHO2RVwn%2BiMfH_WFjQV1dsZtEQhgrUBQfM9QBPmQ%40mail.gmail.com.
