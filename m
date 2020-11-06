Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYU7S36QKGQE2OIEANA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 846E62A9B83
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 19:03:15 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id u8sf795819otg.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 10:03:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604685794; cv=pass;
        d=google.com; s=arc-20160816;
        b=LFEC0tyI9RjWi3bfjXW/dUTXy7l9K1tfon15t9JLyal3QeVn5Rv++e0L/+D5qJg+9G
         XnRMBXB63Zs+h8AkseCl98ahteR2X4SMPDkpI8oEAFfsCtVkX+cKSvgB59/X8xVnw7Ky
         DxrZX8UGQs9s+iB392ptChZykRXMHH7kyqHBSm11dcGI+qm+j+72/6/d0UAZ1vobYj65
         Q7/oIDX7xXPajc2k2wKRAj2bxvdQtBuD31fG9N921LEzdS/0XtVv7y1FULz8zYssK/W8
         EFlsrsEC4Z1Y9Zg4q3bNFmS3yfNKxqqYNQ5H8fNROhXk0PD2vaZCMWcEhR/YTELOPxe4
         F2Aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=woXpuGNAhVbXiORSslAQuxduKncKQ68X4RQuVNTSeSg=;
        b=eF3CUMJg+swSniqo4NCbBQiRu0QmJoSRLlGJ2O+Qu6YbBmDQF/BVI9+6TuyrYsQ/Sl
         1asexv7UC9B2dHTQs5iDXxTQNugiJa/IEPsVgnG+YHy/x+E6c4F120D+IJTauYTOA5tG
         Q94iHcYmx6xTQEASFPPqZBGInXmsmKH7RWqNS+N6kunirOPhUCyUr4vGnJBoSDlAy2oS
         Gjei8UBBohF+grYugM9BL5Wmh0faZYQKkAawzqfcJ2aOFBW4A4yCo+aRDNjT78qtrzxR
         N8+zNwyjv8Z6TB7K1+NN6PrMjLHZF/Urnb9B4MN9VCXpMZpVUDVlfiCgy6LrEyv3EsXv
         LOzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M24HNHlp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=woXpuGNAhVbXiORSslAQuxduKncKQ68X4RQuVNTSeSg=;
        b=l51RaUftjIEQFJyatilIaid/Zo1bprdqdt8dvLbRfu4OY6BMyBlv1J+kv4NgGg6qTy
         fpQaDyc+dENh1dd5TBMCp0GtqvrB41sRh9lruHZbHBEL2iE/D3fPRJm2DMrEQurHWtSM
         6ODxTwH/bUHXWSlufsMp+e1UCsRJOpD8N9wuYmIrcVkIwozHO2+35ihm+RKvZfdPeOp4
         CXWNKzzaNQimQlbh+arNschpXCtTrSMRWLUYV+0AOCzoPIw5xVooWPaSKoHn61vICnwj
         7yF9qE5UClv6OqeesnFwNoQrYyEyXBaMJSBBplA7+FA3sGgxeFJMQGVxowAbzTTGVrkN
         M3tA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=woXpuGNAhVbXiORSslAQuxduKncKQ68X4RQuVNTSeSg=;
        b=l9R4T+JoNmQaMs8BYkux4TiutpJYeMwi3HHu7t9+N8aJIYkmzipkMedrrXvI2Vs+AH
         QH4Efvib4q0XCTzumXWlzfINEvt4LCIH0aklHFcXQOxrljwuTHWG41a8ups/mpKpqisK
         Q/AMYKRd+DHtxOG2HHlBgf1AU5cKHL274hr/V7FrSXkIYatMa2QF99sh3qvoFXOvt1ti
         oLlMcEUXEGeCTWUnvIbplHtYa4mWqEylyY6V+U+g07Ci+B6gPFrOWeUqRDK/DvJkTxFk
         shVkR75gtTuS/KOB2XC9K+TPKmQ/OPMfuQB8kRfNipTrT783qole/Cyx4BVWIKELfktM
         j+VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=woXpuGNAhVbXiORSslAQuxduKncKQ68X4RQuVNTSeSg=;
        b=St3S4mGW1gUHJzaNnfHbj5cxtAnwPfnsgyAWBdL3sup37Mydbn/QVidY+PYnNZ6a5N
         m7bgWU/9QB7v7FaMVYWfqEqcCrgQs30vPd/H2kEqVtSxzJdYgE+KkcJOU+wgohYD+XA9
         7gthbJW0/QAw34yKWs8/94ojFRoFtfKyhnRpSCPzCPG+FZk3mP7l+L03PcWgrphWYaFh
         VzKM6hc+OnTWMsDGNj6aVkYgT+7nCfIDxu/nKEjxatosyNOJKsj2jU0wotEOnxYq9k8N
         RdjI+7RCNLjtXkoUAX5QLkVFBJFpzWDZtGV2LDf69oT/+OSz8zQbejpv5zRBsiv55QNq
         SDpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ca9xFIE7ccQLt1Lh2+vM02AA8DHt0b74OhtPR+qYVts6gO+O3
	4h2PAjBYf9JBsc2xnL3yqB8=
X-Google-Smtp-Source: ABdhPJwv+ZTYMZNOyx7vmD+/ba8SIYQGw6p0mojo2/H/a52gYq6aufOqmQQ5xDAehTeQTRGhxSXFiQ==
X-Received: by 2002:a4a:1e43:: with SMTP id 64mr2046214ooq.57.1604685794500;
        Fri, 06 Nov 2020 10:03:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:5e41:: with SMTP id h62ls137270oob.4.gmail; Fri, 06 Nov
 2020 10:03:14 -0800 (PST)
X-Received: by 2002:a4a:be14:: with SMTP id l20mr2043110oop.27.1604685794172;
        Fri, 06 Nov 2020 10:03:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604685794; cv=none;
        d=google.com; s=arc-20160816;
        b=Hae3eUeYj+Yw19dDjgXK1DJEwAeWbnrGqyiGk3mApb6H1xYvYGfdcgQSTKleKfzc5U
         QalvvSFIcKmKIZEsJ4Qy0ON2CQ1vJf1M6NZnvYEcwfD43S0CEv+O5Ey0UY+OkXrHbICp
         1YMv7fPFW4lxXLaAtK3ceBf3/TDkFVy2dfCDI6Xin4dkuLGbmS7h7fT0vziXaWZQqUNt
         f24vwNanE1R4ohkqbKAO1kSMehObw6c8w6lnxzXyAeJ+WQYMjKSxo97aTNMUkl2Q+Xx/
         rFwsGB/UzxlKkI+NiOGBsbpz/Cbg/I8PS62RO87QaWK97Dl2YqVPmpm1+LM8y/jdtpCd
         iL2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=p1CcGa5j+LtJL5zURX6fDA5w3O8+Vz5UmqHSHkyTHyI=;
        b=kX78RJ5gFa+Sala3gOP1Ygb1sDJp/7NwkSHVs5XjDPGQxR9j4CNzEpqgfEqpBtTC+Z
         lYA4f9jGlCF99V8c8kLxMbOD+SElPOa/8ABhHzTcHLJ4ogG+JH0RDnsVbbIy6ssH9Gnt
         Sr38DqLnErj809POhcfGM+rL+o6dD7+b+gQQGk5fZY5d6s+HJRPhS/kdVh/6kcCj9yP5
         EMPfNE1VYubJqdVBfRaJopaeJGlN3zM62nFm7ozmq307AVEOCKlh4xok0LQhTzABtyu5
         1XyvOW0MIeIFp1bf0y7Qg/CxVOpuRK3xl4IYUXZaj8Kz+zqJvCiASn/ankUMICm/fQ5V
         Q++Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M24HNHlp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id d22si186257ooj.1.2020.11.06.10.03.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 10:03:14 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id f93so1364500qtb.10
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 10:03:14 -0800 (PST)
X-Received: by 2002:ac8:705b:: with SMTP id y27mr2626562qtm.192.1604685793651;
        Fri, 06 Nov 2020 10:03:13 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id d18sm996591qka.41.2020.11.06.10.03.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2020 10:03:12 -0800 (PST)
Date: Fri, 6 Nov 2020 11:03:11 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Adrian Ratiu <adrian.ratiu@collabora.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Russell King <linux@armlinux.org.uk>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Collabora kernel ML <kernel@collabora.com>
Subject: Re: [PATCH 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6
 warning
Message-ID: <20201106180311.GC2959494@ubuntu-m3-large-x86>
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-2-adrian.ratiu@collabora.com>
 <CAK8P3a0kXkoeAbNiPH5-7-73V2nAsnCMkQSrPZq4ysVYNyE-WQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a0kXkoeAbNiPH5-7-73V2nAsnCMkQSrPZq4ysVYNyE-WQ@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=M24HNHlp;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Nov 06, 2020 at 03:46:36PM +0100, Arnd Bergmann wrote:
> On Fri, Nov 6, 2020 at 6:14 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
> >
> > From: Nathan Chancellor <natechancellor@gmail.com>
> >
> > Drop warning because kernel now requires GCC >= v4.9 after
> > commit 6ec4476ac825 ("Raise gcc version requirement to 4.9").
> >
> > Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> > ---
> >  arch/arm/lib/xor-neon.c | 9 +--------
> >  1 file changed, 1 insertion(+), 8 deletions(-)
> >
> > diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> > index b99dd8e1c93f..e1e76186ec23 100644
> > --- a/arch/arm/lib/xor-neon.c
> > +++ b/arch/arm/lib/xor-neon.c
> > @@ -19,15 +19,8 @@ MODULE_LICENSE("GPL");
> >   * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
> >   * NEON instructions.
> >   */
> > -#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
> > +#ifdef CONFIG_CC_IS_GCC
> >  #pragma GCC optimize "tree-vectorize"
> > -#else
> > -/*
> > - * While older versions of GCC do not generate incorrect code, they fail to
> > - * recognize the parallel nature of these functions, and emit plain ARM code,
> > - * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
> > - */
> > -#warning This code requires at least version 4.6 of GCC
> >  #endif
> 
> I think we still need the #else path, otherwise we don't warn about
> clang being broken here.
> 
> If it is intentional that we now silently build this code with clang
> without it working as intended, that should be mentioned in the
> changelog.
> 
>       Arnd

Maybe patch 2/2 should come before this one? With that patch, we are not
even going to build this code so this patch purely becomes a "we do not
support this GCC version anymore" cleanup patch.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106180311.GC2959494%40ubuntu-m3-large-x86.
