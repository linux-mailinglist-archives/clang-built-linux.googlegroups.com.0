Return-Path: <clang-built-linux+bncBCS7XUWOUULBBLMVVL3QKGQEJDDNUKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6B81FD72A
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 23:27:10 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id d5sf2599204qvo.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 14:27:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592429230; cv=pass;
        d=google.com; s=arc-20160816;
        b=J5hlsFwcbpvh0Axky6VN+47z3ZvcK9sNgQFnpuMDE+ORLPqMmuQ9DGF4qGZv15zPaV
         y/oP/Y3rJ12G+pPBfhe7KUGe2Q70tII/VwP4vsNwm9tffGK5Y1tIpCkoctun/mLyZwJv
         XPXM0Ih6Vqjyw0rpbm65LssY3X87tSonFfUVaL8+JSci5TIpNYinY9MeENgMlWB+/XVG
         X9/Xf+SjUpELnPA1jPP/GJlNs1FOWNM4k2CluYoCqm0qftnoQbry5YfarCb6ouHVbFGB
         +s6CDluDiKnquvAj1zPAvutSn/5EKyKCcwjHebkuzTXFaI3DLtpIFBd6NEUT37ENJv8V
         TAqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=RZZ6BG4QtF2CouJqkc472aL47jUACZMkCTULbgbiAL8=;
        b=vGIiYbMzvqpq5P134eqUdR78sYlJqTR7gexIjteyxaPuLGalQrK3m2gBQUn3uaNkGJ
         PXFJV8Swoo6YlPKISX8ZNsn57lu4MOTg9aLyS3G3ve6i/518pdrD1ITiZuG9Lde233g0
         xLZmTXtsfEDVLOfV2kPHKE6Ogx01POatuKGIiPSjZfWmz96+2Gfd0ME5RiWuB+F+fg7N
         P1q2B6KxNIaLkyrKwrky6/bXOm+D8cgWUKdBAKcHwtSCy2VijBSZDKBpfNkQUQS9MhLS
         6rYFLV+8oxT0Mpb9EwakTGZQkmteGYy7/P01IImDbbm1DJwzO3Ews9dkq6xE5B/qpLQA
         ZzZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iS5qr4j2;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RZZ6BG4QtF2CouJqkc472aL47jUACZMkCTULbgbiAL8=;
        b=KUoh7JSsInrPzNxvlIdehRAfXqjKFDhnfQVuKicjPWQipnCQauEr4xBFGBr57HOn8W
         iRnH4axik2tb8LT+BS0olkrpH0kd6LCMaIDJty6IxxbI0otXRbJQy+R2NoZdXrcgx6t5
         yacpifCyx4nVR6+c/ibGGxLc9n+u3HIHCpU2LTtvIfZ22Ss7qHEXvi8atvyAJlc8+NWC
         Msw+Y3K0wkrmnRuGocPyg2qnXj3JcWAcKl8SIVomi2Yud8PY8VCgEpsdDNY3+NZKkhmL
         DIanp40uie+il9QVRF4fCNtynxk3L/PvxNQCRoEtzvrXOtjQH8DzVtzZWcoPGGW3sycb
         Atjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RZZ6BG4QtF2CouJqkc472aL47jUACZMkCTULbgbiAL8=;
        b=VmRge0YEIHqw6EppKZTozJ9X34k6/NX+3Bo7MYDXijrKJkU92v253ksaQxvVyORVYf
         V7MCJlu7EiDbx/AtKxn56T7DIWeQoid2puByYL/X16NIrpkWTk41vaUEUzq4FDWT3Zdr
         NrxOQwJQxc0xbOflxYKdP1kXBHptxodtSsjKA5l18VuHgChZVhmcGl72lCUIELz8tG7G
         h39h+4kUoN+kbkaRAILB2jAzIhCJtgWqXN2kHReRJ6dKP7e9s0rgCTzyi8fab1V0dbrF
         dFssKLBl2vUncK08tvtzM+PTVjMog+qBWDO4RnZdT/HdQXMgjpdP0tnxoJBWaeIfEnRk
         eL8g==
X-Gm-Message-State: AOAM532KAj1EWz+Q34l0f8Wr5SZVfzVULMQO5zvlCj6RFwJU/mR9R/yD
	P0/ttS8YlUZOIYcW9IGUZZw=
X-Google-Smtp-Source: ABdhPJzpfMd8CQtvtK8OifeDwjJIscO4Ose6DuWJj0KlcpdgO60LSMiFr4EDoKXv2FIUoMjih51q/g==
X-Received: by 2002:a05:620a:142a:: with SMTP id k10mr685270qkj.182.1592429229977;
        Wed, 17 Jun 2020 14:27:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:40ca:: with SMTP id f10ls1306718qtm.10.gmail; Wed, 17
 Jun 2020 14:27:09 -0700 (PDT)
X-Received: by 2002:ac8:1b99:: with SMTP id z25mr1182586qtj.209.1592429229675;
        Wed, 17 Jun 2020 14:27:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592429229; cv=none;
        d=google.com; s=arc-20160816;
        b=LhUL9rePQxlNQRCKJ0zZw9vt3zNEM84brNLUVG4CCnFcwMo6q35fWcvmjviIYCbYYk
         TeQO80zaVqmGRgwSAM2aGwDziTNetA1d7FQrFqzg4kOH+rQ1xPs2EKdkfgy5dRM83sVS
         ezni4RRARcWUgq5EIOGPV7KmC3OErAlMppZ27HGH8rm/GK7HLZA35m1MW8Hlz6T2gpQo
         1WWOr6xoB987eGqs4lQSc3rLpHh+L13hAP5ibIu87Akytw3t7F5N5XBezTy9d5qBQWk3
         Xd9uq1r16tvpw/YA0mYXccjbpQ5A//poCyKmBcAgf0vjpboVRfdwnREJy9ilju4Akd1s
         XR+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=2nweBLFqBZAQdpGCmNWKSAsTxcg83keuNMEngTx9xf4=;
        b=AyM/14qObGXf4Rnkm6memHObQkVTWV0KHe8B+Rrh3RTSPZAvbSRtOI3IoFdkpxmMnu
         ZWXNrKrmoHgUdA+cLO4aPfVywR5rJgdbeWt9NrR8SW0IW/NieyGPagYaZ0/BAovwiCHk
         1uNgfuiF+NXPFlpiWbFbeCAE2E8vlwBe/L3BVGdZjRBDkrS/+PcXZCXKgEDRXLhVKbqL
         IMRgckBBGK0B5aaWmsr1xsV+VJ+m3gURqpvnNUcQ9erWbUK1oZonue5b52NMynPTj/8E
         9CMf+ejrBcodt1ssQdouVb0WxTrFVAzOykVXti2UY173khG2J+HTp9z9jUmLHHf5Lfu+
         M06g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iS5qr4j2;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id w123si62649qka.1.2020.06.17.14.27.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 14:27:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id x22so1772518pfn.3
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 14:27:09 -0700 (PDT)
X-Received: by 2002:a63:5307:: with SMTP id h7mr702582pgb.28.1592429228594;
        Wed, 17 Jun 2020 14:27:08 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id m4sm644574pgp.32.2020.06.17.14.27.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2020 14:27:07 -0700 (PDT)
Date: Wed, 17 Jun 2020 14:27:05 -0700
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, clang-built-linux@googlegroups.com,
	Kees Cook <keescook@chromium.org>, stable@vger.kernel.org,
	Jian Cai <jiancai@google.com>, Luis Lozano <llozano@google.com>,
	Manoj Gupta <manojgupta@google.com>, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] vmlinux.lds: consider .text.{hot|unlikely}.* part of
 .text too
Message-ID: <20200617212705.tq2q6bi446gydymo@google.com>
References: <20200617210613.95432-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200617210613.95432-1-ndesaulniers@google.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iS5qr4j2;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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


On 2020-06-17, Nick Desaulniers wrote:
>ld.bfd's internal linker script considers .text.hot AND .text.hot.* to
>be part of .text, as well as .text.unlikely and .text.unlikely.*.

>ld.lld will produce .text.hot.*/.text.unlikely.* sections.

Correction to this sentence. lld is not relevant here.

-ffunction-sections combined with profile-guided optimization can
produce .text.hot.* .text.unlikely.* sections.  Newer clang may produce
.text.hot. .text.unlikely. (without suffix, but with a trailing dot)
when -fno-unique-section-names is specified, as an optimization to make
.strtab smaller.

We've already seen that GCC can place main in .text.startup without
-ffunction-sections. There may be other non -ffunction-sections cases
for .text.hot.* or .text.unlikely.*. So it is definitely a good idea to
be more specific even if we don't care about -ffunction-sections for
now.

>Make sure to group these together.  Otherwise these orphan sections may
>be placed outside of the the _stext/_etext boundaries.
>
>Cc: stable@vger.kernel.org
>Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=3D=
add44f8d5c5c05e08b11e033127a744d61c26aee
>Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=3D=
1de778ed23ce7492c523d5850c6c6dbb34152655
>Link: https://reviews.llvm.org/D79600
>Reported-by: Jian Cai <jiancai@google.com>
>Debugged-by: Luis Lozano <llozano@google.com>
>Suggested-by: F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@google.com>
>Tested-by: Luis Lozano <llozano@google.com>
>Tested-by: Manoj Gupta <manojgupta@google.com>
>Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>---
> include/asm-generic/vmlinux.lds.h | 4 +++-
> 1 file changed, 3 insertions(+), 1 deletion(-)
>
>diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlin=
ux.lds.h
>index d7c7c7f36c4a..fe5aaef169e3 100644
>--- a/include/asm-generic/vmlinux.lds.h
>+++ b/include/asm-generic/vmlinux.lds.h
>@@ -560,7 +560,9 @@
>  */
> #define TEXT_TEXT							\
> 		ALIGN_FUNCTION();					\
>-		*(.text.hot TEXT_MAIN .text.fixup .text.unlikely)	\
>+		*(.text.hot .text.hot.*)				\
>+		*(TEXT_MAIN .text.fixup)				\
>+		*(.text.unlikely .text.unlikely.*)			\
> 		NOINSTR_TEXT						\
> 		*(.text..refcount)					\
> 		*(.ref.text)						\
>--=20
>2.27.0.290.gba653c62da-goog
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200617212705.tq2q6bi446gydymo%40google.com.
