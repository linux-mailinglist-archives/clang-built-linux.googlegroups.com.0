Return-Path: <clang-built-linux+bncBCLI747UVAFRBG4O6TZQKGQE3TBOBZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3511947D5
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 20:48:45 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id y4sf5156564plk.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 12:48:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585252124; cv=pass;
        d=google.com; s=arc-20160816;
        b=e4+kSfoTtTS70m3SHeZ7ZEBPNEihoI7enqJ7aKwEgRXT4X6fMbqIg+rKdbB52UZr1T
         sjQZv6QScIgL48BipWFFQnGWY1Dc1zgkqGYhDnY5owcx3E5J9iI+B1UcqJ0SYiw2m//l
         WBXEFlsQ0qs1a5j3WeCEywEXg5PkXCfaP54nf39gNa/IhDGLu7SbhzKPSETDumXuPrck
         +7HNDwc1tFDwdnW+62MmlPiEyD4EffuP/3bh+YxliFr0bokt7lIvsyf/lqKBfFo7gP04
         ut9o2PqVrvqqjCWqTvqTBKLvZh3spgZhCyyuFG7fet1sLsND9cmNiY/ivHVD5P7YXSfC
         4iWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=uukKExvIJa2vLPTF+gVThw4l9rosQHfMg/M72EzKXe8=;
        b=G5ceY7Li7Ofqr17bJCRlEtuGl14a0mbpicwPDV5SMtZvJPBvLtVJHBEyRDCbfQ0euU
         hId2ba+276a1TQhPBRc52CJAwkUu1I5DkMUOPWlBp3IiSkJVvdUtpG2ZpM97kGVEHTxh
         uV73CnTMVB8D8hUgbpTkYMoJzAy4BgKYCFYHgtn7xupjBVlt/5Qc4KcOcLub5K6Cqm4M
         4P5cmhXds+k4E7e2Gu7fy1BVuQr2BtjS8CQsRUuXmgu+BO5EHMVhSm9OQojAZJuUBhfQ
         Se+lcqZrDF4bCCfI+Lfs97CgmZL+WyoiyoOMw5RnvuncSmtdMpXENixKUO+7ApsI//hO
         IUjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=J0fGwC6M;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uukKExvIJa2vLPTF+gVThw4l9rosQHfMg/M72EzKXe8=;
        b=c2p3nzvvCYHR9TahLQTgG5qVkmYqU0/ULhNd9MydE+If9Ojapm38ZUYwnNeY4c3zsl
         0vFq6sLfIowEEv2+96IybipXdpN41IsFquu4ApQZrUN6OaoDkgNGSl6BYmIabB4hO6rS
         H9Iov7tj17Omte7KLJykGmlKF77Rx8htKlw4vSe7RmNkGzI/BXZCLCeurYiywHVSUFKD
         X+FLf54vAxF3/aGq81X98q1bLDFUEWBSuGXSvib7Soki9yotIPHvTzgpMzzO1QtG7uHZ
         pz+zckkCrX23HMr2WU+3vwVWZHGvrDMQuYF7bR6BT9OTvOwFFdBwwMv1BdWbVmMdb+qs
         K+PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uukKExvIJa2vLPTF+gVThw4l9rosQHfMg/M72EzKXe8=;
        b=rz3zRyHKE1b0dUERp44zMqxYvVVQkhoGJ9Z9Bd+4F3boRuh0Jz/kVCEj5qtGzdxmEt
         xwcd2CRtC2HIWC1/rZBrQtlqlz2BEJsuE3Y1mM5fPUeOpA79epFxc1l+X+oLBzw0kZ76
         NTha+r4jmNFjjSjikuYY+351Hwc8Hx0XCnDnyMnq9NF9H7unCpbYsmJwO5aL+ZOhD5PU
         +sz3adzYkBq1FniFEKBN/ipzSndqXBZqGqNkPEOI7TYmokbV0B8o0X+FR/2Af9W6vjEM
         5FLzyiNt8/FQcbaGSu829VqCEPl8LkymPMtA/n52pH5SRpwd0Z85RNlDs7gLjwQKamHe
         SIXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3ETfbu+dDrfG2bt+O9PVy+tBNtO9hPWHqPnclsggv9KCFbsW0t
	/rHkXiiCWnYHw4c/bmOVHBw=
X-Google-Smtp-Source: ADFU+vtgS7L3C1U7On/LFdBYuB5tgXYcaYxfi7ck3pR86pwszHeIU0xIIejQ+wBvoRe5o4Hw+ssD7w==
X-Received: by 2002:a17:90a:dc83:: with SMTP id j3mr1779509pjv.64.1585252123882;
        Thu, 26 Mar 2020 12:48:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9708:: with SMTP id a8ls4102973pfg.9.gmail; Thu, 26 Mar
 2020 12:48:43 -0700 (PDT)
X-Received: by 2002:a63:18b:: with SMTP id 133mr10436310pgb.422.1585252123414;
        Thu, 26 Mar 2020 12:48:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585252123; cv=none;
        d=google.com; s=arc-20160816;
        b=VzWU/XAfSPFtdA212rlWk+hdcSa3HxefOySNMPBxKsJdZVroEZOr1TdDpJ5w+OvPdD
         vLXxgNnruSCOzK07SuVo6nf/nLQ6w3ZJnx3JYab6r9AEenOTABkHXUPbsIacIgkaOC66
         LlU7R0qHSEk3VML1sRs/Gi2lSlSTFtVgMXtdFoLJ5Uai0gM27QDpbBUFyx9BEOVvBN3a
         inGAvIXyURIo+w6GO0c5lz8PFdmyYoMY4iOUHmYsl2okx+2nbPoF4fycCymnKbZr6P0v
         Bqite3pKIkOEfm4iYQsqj/o82U1/fq0tk2zM0IcQnyo0GhSIREvs09myxtEPdUIEGe2e
         jwKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E7FQCaWkqdZYYRMPcc1fWUsgI6wwdpsftrrjIPRhGL0=;
        b=CDURPo2DaI4odg1eyj5m9z6i7VqImAIjc3ucx9INMPubjPFTncMVFefhI7VsyoUt7g
         9mjZtRLkaDQqOy3WRTq7dWq1KIMxqN4/K6mWkb8ZpxIrgyNJOGrcRON2RP7ldkHGxgxh
         ST76mjl4N/DePUOjcdyLS2C0/31BuafxwSmDrLset843J9mn+gjHE9xhKN73CI/t0uBw
         Jb8cuqv2yR4gcjCpqSZH1b26Tg0MYcFBq/d/A3nfaci2o4yXiL24Zq3/LyLNDRDji3/q
         aeYH2c0rUGVcJSNM9/0rVC5UBVbQRUAPfTFxytZbZWpimMfP1UameVOPBcNT63aXW43g
         jxMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=J0fGwC6M;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id c16si285089pgw.4.2020.03.26.12.48.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 26 Mar 2020 12:48:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 9a96dd6a
	for <clang-built-linux@googlegroups.com>;
	Thu, 26 Mar 2020 19:41:15 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id ea7ee524 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Thu, 26 Mar 2020 19:41:14 +0000 (UTC)
Received: by mail-io1-f51.google.com with SMTP id h131so7435488iof.1
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 12:48:39 -0700 (PDT)
X-Received: by 2002:a6b:d012:: with SMTP id x18mr3320426ioa.80.1585252118168;
 Thu, 26 Mar 2020 12:48:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200326080104.27286-1-masahiroy@kernel.org> <20200326080104.27286-16-masahiroy@kernel.org>
 <CAKwvOdnG4F6+Ndfj+=BoV6OidJjWS_dYtjvyCEJ6nyxkSQc3rg@mail.gmail.com>
In-Reply-To: <CAKwvOdnG4F6+Ndfj+=BoV6OidJjWS_dYtjvyCEJ6nyxkSQc3rg@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Thu, 26 Mar 2020 13:48:27 -0600
X-Gmail-Original-Message-ID: <CAHmME9p_N2cpMt20Gf1kWTRnj36nwrceFxEui2MU0kFu3WOdww@mail.gmail.com>
Message-ID: <CAHmME9p_N2cpMt20Gf1kWTRnj36nwrceFxEui2MU0kFu3WOdww@mail.gmail.com>
Subject: Re: [PATCH v2 15/16] x86: update AS_* macros to binutils >=2.23,
 supporting ADX and AVX2
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, "H . Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	"David S. Miller" <davem@davemloft.net>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Ingo Molnar <mingo@redhat.com>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=J0fGwC6M;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

On Thu, Mar 26, 2020 at 11:55 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
> I see four checks for CONFIG_AS_AVX2 in:
> net/netfilter/nft_set_pipapo.c
> net/netfilter/nf_tables_api.c
> net/netfilter/Makefile
> net/netfilter/nft_set_pipapo_avx2.h

That code isn't in Linus' tree right now is it? Does it make sense for
us to see which subsystem trees (crypto, netfilter, raid, etc) are
submitted to 5.7? Or would you rather this patchset be rebased now on
next?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9p_N2cpMt20Gf1kWTRnj36nwrceFxEui2MU0kFu3WOdww%40mail.gmail.com.
