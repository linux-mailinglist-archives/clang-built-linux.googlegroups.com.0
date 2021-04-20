Return-Path: <clang-built-linux+bncBD2INDP3VMPBBNOO7SBQMGQEXBMZ7AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7CC366012
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 21:10:46 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id b21-20020a0568080115b029018764f93fdcsf256528oie.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 12:10:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618945845; cv=pass;
        d=google.com; s=arc-20160816;
        b=JY7U+LVFtt3tZ7HdlmiWvBlRZ1D3cSnuidQJhBnhRRY5wU4iyywN793nMoM4ONfrp0
         wuFlHg8IGHk0szUPLDLUgBIbNjwD+KuIx8ld9g9jWBa7wphrMxjF2LtLAY9cxtpu4TJI
         nOmKo21IFdZ5h3BwfjC4V8TD08wqPZ+HhDggLE3R60xyurkAvajBw0L8uXUi0dXcghP0
         PwKSxUyV+vFBhJOQk/69NWx9h0BArgss0vpFRjzLgsaEYen2ztFCcERUSDLtCzraZzAP
         kDR5fO3yqtxjzU+UAQr3kEoR1TusNgw+WKbN0s9vRIwEcHeW603VuQ4NK9IntTpNnERv
         P1Eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=Oo0toGF+TArCjTcCjg1Q5+p0FxWFwPxkJB/1ERVYFiE=;
        b=uTsnAxKywyZOwW/Pbja/KAAKXhGfQh0kRC+B/GWqziDGVrAmY1UojBmqChk4k4VAPb
         8yIu6zpwhzwECVejL+nOcXtcSqYpkc2AoPKKrXL4jwwqKMBXPSnpm7l06XblUSwdDSas
         S1CL2Injnc6crJ9Nk1PceCyF2RXuMBbd1kOj4ys+gXv1M9NY4d7CbmxlfoqYEuKLfVkr
         eQo+rS1o1G1RLyx6r3f2SNS3By8Nc5mirnCl0DJhnhpt0LDvjGb+ccz+ZwZBCkqBQk6g
         qKx5gBDOVPOqrpGIultjHLeaUvnh5zJJlJ7tSo/3xlqMQHcoJc0pkDP+QQ7yWieGNWaK
         uH/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XkMEI+Oj;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Oo0toGF+TArCjTcCjg1Q5+p0FxWFwPxkJB/1ERVYFiE=;
        b=fErKd+SbqFo6qkQfy4WyNuy0aWDSc4e03OZn38IAUb8J9Qzk/DPofdmoxyXodX6o2E
         ja1EerkwAZEvBUivVH5cKhfHoVyw4x91tj6Zh5TXGdgTiDb8D7Fm3kmqVu6PVUuxZKl/
         dNwnsl21mjtZKiX8HDAWy52fkjA9j8hJ/BERhSXz1UM/mapVAHIHsOly80k7pynCfFNz
         GyHbsrQZta9MlmNVbm+f5x8aINnXmfkAso6KGoKax8nNRxhCAn5tgkyIO2y09gDK5YqA
         4fCS8uD3kFeTj0mVwIovwgJ4lOUf2uFX7iGsifY/mcpC25WcQIzBaOfWoHLAVpYIcm2Y
         aVaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oo0toGF+TArCjTcCjg1Q5+p0FxWFwPxkJB/1ERVYFiE=;
        b=ksbhuRl3xXdmGo9AgHWf9+u3j3TpZ6wP2NDwy7FHc1YULC0Uo+T8AKTjLjMbKh5R2v
         A6T1GvfX/76J2exVh+lilRQxLC1ekxqOd69msmZf4LPLz+ck/Bl5OegMekpSB14fpidT
         Ym9W+SZkUudmuIUKBeqacdYoiPJAkPRJ5deknsepfvbmJBE1PjWktD2xmYBg0d/9fvex
         a6O+xgiimGRmdgyFlFiicEEaH7f1Qh6sDAqoAwKfb9fF7FHjnjvhpB/xYm2W6GqxmZZD
         q2fpve26eQ29hKcWhgLnlYwkV7spjzISEoRyNzYZ5EAZvrDYQr1Bx1ngDLMq9ZmOHAC+
         zYsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532r3amFf5iLnb8JcePDI03qtI5SbJ0XKKgrXMZYxJgYuzzqg0O7
	giywyLhdJjYx6lZNsBzqozk=
X-Google-Smtp-Source: ABdhPJxCgduP9FrKLh3ytTDQy4jTJFL+UkrV3GuXUqJKQjYvEWumJDWZmascTvt/Y9seLMlLT2W2pA==
X-Received: by 2002:aca:ba09:: with SMTP id k9mr4215884oif.178.1618945845678;
        Tue, 20 Apr 2021 12:10:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7dd4:: with SMTP id k20ls5280613otn.5.gmail; Tue, 20 Apr
 2021 12:10:45 -0700 (PDT)
X-Received: by 2002:a9d:37b4:: with SMTP id x49mr19725351otb.237.1618945845342;
        Tue, 20 Apr 2021 12:10:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618945845; cv=none;
        d=google.com; s=arc-20160816;
        b=F7Lo0uQnF1RUQ4nWfrGLhi7a8rXEN9tf6hOG3o3pTyiMkrMVbF9vVVbIsmh7he1z9Y
         NKFP83zmk6IonzznJZT+LiKqhRN+PIOeHy1tcMVjL0Onxv+HHwhSnCp63ZXeDtQNgEgP
         l+BAvdFiR2CXdKAsl3tnxDVL61S5SovnBp2GRAfLEBG+DOCf7p6nXfkLVbdViwCuKZxs
         EYG+u682U8GC3CvdCjSmhvsUR8gdZDob7iSMVmNb1AHjcezzy7GVweb2VOfww0kHXAk/
         XcJO49OLVrIBIFeYl8V9aLYuAeY0kuIy+J7lg/FUJpsBoLTjJrqAYcWX7Kdqo/HIBIrP
         TPZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=a5n3wGy7DgfFWhHeggplxhAWu+1dp4NYqrnny8w9BKQ=;
        b=BgslLWsqAGD76pqDdodzm5L8oFEuTtaEyFpLFG0/WYm0BzNEQ4O00zg4c3EbnZLUdO
         XraSvVxcXe8vZLzVIyCD0417gNNwyuFHRzxu5NFkdOLXO5kMKhE3A0ap1Lv4VjhXVYOl
         D2F/N1+dQUcT0vE6raPsrc4JG4ptV/uQ787lv8b0mH+W8yAxqm8rxb9/HYmQDfNwVU1M
         RbK0LQm6i3nWqBFF92Pq3Y2YuECRCsZllnl/Ej4H5sVS0yg7Q3bRx6AVz4yLmpkm/rw2
         /TUMU7kSLI8byBiOl3nljMsVXv+JryytXqhCFredhXppgTPP46kxBCfqOp/OTbIB8yyR
         ctiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XkMEI+Oj;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id x38si1600407otr.3.2021.04.20.12.10.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 12:10:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id p12so27312980pgj.10
        for <clang-built-linux@googlegroups.com>; Tue, 20 Apr 2021 12:10:45 -0700 (PDT)
X-Received: by 2002:a17:90b:1190:: with SMTP id gk16mr6398246pjb.57.1618945845057;
        Tue, 20 Apr 2021 12:10:45 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:201:bf8b:4b8b:2315:3719])
        by smtp.gmail.com with ESMTPSA id w123sm12213408pfb.109.2021.04.20.12.10.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 12:10:44 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20210420174427.230228-1-ndesaulniers@google.com>
References: <20210420174427.230228-1-ndesaulniers@google.com>
Subject: Re: [PATCH v3] arm64: vdso32: drop -no-integrated-as flag
From: Stephen Boyd <swboyd@chromium.org>
Cc: vincenzo.frascino@arm.com, Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
To: Catalin Marinas <catalin.marinas@arm.com>, Nick Desaulniers <ndesaulniers@google.com>, Will Deacon <will@kernel.org>
Date: Tue, 20 Apr 2021 12:10:42 -0700
Message-ID: <161894584244.46595.3366888884991252865@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-Original-Sender: swboyd@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=XkMEI+Oj;       spf=pass
 (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::52a
 as permitted sender) smtp.mailfrom=swboyd@chromium.org;       dmarc=pass
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

Quoting Nick Desaulniers (2021-04-20 10:44:25)
> Clang can assemble these files just fine; this is a relic from the top
> level Makefile conditionally adding this. We no longer need --prefix,
> --gcc-toolchain, or -Qunused-arguments flags either with this change, so
> remove those too.
> 
> To test building:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
>   CROSS_COMPILE_COMPAT=arm-linux-gnueabi- make LLVM=1 LLVM_IAS=1 \
>   defconfig arch/arm64/kernel/vdso32/
> 
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---

It boots for me and compat vDSO seems to work properly per
tools/testing/selftests/vDSO/, userspace programs aren't crashing right
and left, must be good:

Tested-by: Stephen Boyd <swboyd@chromium.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161894584244.46595.3366888884991252865%40swboyd.mtv.corp.google.com.
