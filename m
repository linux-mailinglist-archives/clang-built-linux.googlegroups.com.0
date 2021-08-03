Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPOKUOEAMGQEO2V3EUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2733DE6CD
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 08:42:07 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id e78-20020a2569510000b029059206351038sf6801599ybc.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 23:42:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627972926; cv=pass;
        d=google.com; s=arc-20160816;
        b=aizDeiA34HVu0TVrkIpegF6cS06eOITBjL3bfExX3oQJX/ZV6sB2CTlfe8Am1rOkYE
         VI7Jd5iks9EShZD261MbRW640THZDCv3IpwHLOH2IotQa9sAGvMzlnuecP7IFK3KXfva
         rXCSc50o1aH92CLRb+bJwUl55pAhcL/E6NJbvQGchU/RAJJPMwF8mEfePj6gG8vsOvd0
         kmzYxJAqE9Z3pnLa3YySgobgk3N5KVxUbDNOxcezM2GkBcnfNTkQzTrQhivRATiBGHN6
         4G+fISw34n9vywRNupRtFWlF/wo8ffrUhlKjpAZuGrU3UVYbhDuPlrNF0Gwlt6Lzz+p7
         Xmvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kbwErBb5iLg7LB9xbuxwkT7vfeVJ98qoZkvHPiYGvGE=;
        b=yvHYS5QRZ5w8O5ZGZIO6cjdofQcnmoCURiXuZLvBLJKObcgLJxOzYFDocwWHmrObRG
         ilISpcWqsKW1/D2I5ZOqC0H8xau66MeMkYx6jZGyimDQ+tdLPoHwPhAWxb3YM6MxmQWJ
         ZU4br5rFeQ2aYGZDK1XK4R77D+F2MX49foVVnKWEjT/tPb/seLsFiwiuqsPz6SmnVU1p
         bLQ/iLBHTPx/rBRrc9+blbYsOsJRTpe5FxxF+IsJGD1C+9gJ1AoMIs+w5/KPU7zul/98
         9CzhD7W6S3GWoUInhp7/8fLrU/p4okeCQGwDuyUPIvTIM9Y3JSpjmf8WoHqBy2j/Khrj
         Pa6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JMZ1FFIn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kbwErBb5iLg7LB9xbuxwkT7vfeVJ98qoZkvHPiYGvGE=;
        b=MyFBCyb47TDxbZfzf+foM5plEYmD87QD9779NiAmPyrb37KeLFpOWhLtOWi4gU4qom
         JUF3+ok43EL4F2nXNcrRll32zvMoPvwJAZy/Ahg5YczIN3PTbtG1Ks5DweVhetg97jaE
         BWg+OkX1zDWmHDr/PPEVGRiCrzwsANGz6H75kFXC7Rkr9/AvLfib+6/ZwldKM4po3w1g
         cjSe/+A+PzimcAz/ifviITFEC3opC8GuST1gWVAWUhqld0pYy+JYgnOHp8P3qGO5Lo2A
         Ja3pBzGZ6bYAv88dDugCd8/yvy9AilVqwyb4w4KCFzWzR8Sguz+3ryEQJOJ9v4q09zpQ
         1wxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kbwErBb5iLg7LB9xbuxwkT7vfeVJ98qoZkvHPiYGvGE=;
        b=polpinn8ZytEpHLagPOSwEPqK6LOwefzpr8Hgb9Rky2pISzrTKnjKN8s2H7tIj29dZ
         bNyTa0X8juRRKQgl78HLJR8VRy1cEYvEfe4PL+UDp7ltZQDbkZiOSWkOKIUCPkObUo3r
         BcU1AV0m0COxe62AtfX+INRE8Oyebhu5F6W/uxMlX2nD8MBwCsN/kS6e4mJBcO0JdUIH
         HhBKljctk54O1SvxUycHPStmk0p3n6h3bGpEBJ3AX3YKrGul5eNtMCRgY0yOw6y5Mvf3
         iziS+XlpER6rNhAbE1A7bixQjhOOPfsVNWx1ZeTCWSEZtc2ecrd++ZZJLWM1owwtIkME
         vvfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533w5Ou/CHOJaDWc8Usiq7qyevDPQqqDVy1XExiObtGRoeqrnBSd
	ROIBrkxpfSgFJWwPUASwTUA=
X-Google-Smtp-Source: ABdhPJzjnfvErFBPk7ESfWqDj2IJq6z0iQDmfqjSHnnHriemiURJFc9UHsL1MVEMcuWHk8pGivp/2w==
X-Received: by 2002:a25:8093:: with SMTP id n19mr26499501ybk.414.1627972926037;
        Mon, 02 Aug 2021 23:42:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9808:: with SMTP id a8ls62603ybo.11.gmail; Mon, 02 Aug
 2021 23:42:05 -0700 (PDT)
X-Received: by 2002:a25:c083:: with SMTP id c125mr11278884ybf.43.1627972925590;
        Mon, 02 Aug 2021 23:42:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627972925; cv=none;
        d=google.com; s=arc-20160816;
        b=c9EpLNaHoVLy7m/vBm2CRnTQeQBD5AGtK/1lEebOytkO34sMM+7J2mwlshhY9IjTtB
         nELnMu5E3/29qEReyOmXs/IUM/QT83o/oWHZX/uxwXKV6jmtyUYyH8J3UDH4quG0kuda
         /DU9KKk1L/YSL8CcsTjUng4OEYAtPEaA9JMs4M3wzs1IIWhU41KAkwErVPHI85jyU2Ab
         vEeCr1+XZQ6VPvuRGTKm26t4n0KbLvTzgW1S3FobjQ/EzYA3LS84hcQhVPzftRaGrq90
         P8gW+1iLC5iXpvkhvtBeHiMvTOkGgS5AtlWChr4oIX/JrJZ02vVm/XHLWw1pOZ/ernEZ
         X0Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AOXfrDIBSrb8A0VQUvY+TBcWqM660sA1rmEZT8mFt0s=;
        b=Rpifo0l6jvUw70i9gZR5OSNMk9TqJWu3dXYAr11YEat/eZ4k7b9EF8Rt7pMBJ+UUBg
         DFb1xedR48hDWVayoPeHtIhouaWuUdFIgDXkze7ih7bE1Ujui0EdJjTHSZ2h48xrdJIO
         ZTo0MHzla9ZY8RtTdfESP2L2TZMNmUsyAy56E5rZagURZTroqMD8W2xlh+4+e8D3k7A4
         dRGBj9F6HEqDs1BR5jw6d95lZywumv6BpmG/oUFNJnkYgNaeN7jlbgkFhJAK9AspX8nG
         /8QOQJOWP+UmDnKMltMkVwqwJfsNOy9plYydfiS4FgtN5tmPejRdr9jgBLEk/3qDEohz
         g19g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JMZ1FFIn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id d10si1137570ybq.1.2021.08.02.23.42.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 23:42:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id a8so5415725pjk.4
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 23:42:05 -0700 (PDT)
X-Received: by 2002:a63:f804:: with SMTP id n4mr1526796pgh.341.1627972925206;
        Mon, 02 Aug 2021 23:42:05 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j25sm13953813pfe.198.2021.08.02.23.42.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Aug 2021 23:42:04 -0700 (PDT)
Date: Mon, 2 Aug 2021 23:42:03 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <ojeda@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Marco Elver <elver@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Will Deacon <will@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ardb@kernel.org>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] compiler_attributes.h: move
 __compiletime_{error|warning}
Message-ID: <202108022341.BB8EEA7@keescook>
References: <20210802202326.1817503-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210802202326.1817503-1-ndesaulniers@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=JMZ1FFIn;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030
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

On Mon, Aug 02, 2021 at 01:23:20PM -0700, Nick Desaulniers wrote:
> I'm working on adding support for __attribute__((__error__(""))) and
> __attribute__((__warning__(""))) to Clang. To make use of these in
> __compiletime_error and __compiletime_warning (as used by BUILD_BUG and
> friends) for newer clang and detect/fallback for older versions of
> clang, move these to compiler_attributes.h and guard them with
> __has_attribute preprocessor guards.
> 
> Link: https://reviews.llvm.org/D106030
> Link: https://bugs.llvm.org/show_bug.cgi?id=16428
> Link: https://github.com/ClangBuiltLinux/linux/issues/1173
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

I'm looking forward to having this working in Clang! :)

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108022341.BB8EEA7%40keescook.
