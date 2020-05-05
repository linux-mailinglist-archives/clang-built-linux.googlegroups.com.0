Return-Path: <clang-built-linux+bncBCLI747UVAFRB2F6Y72QKGQE5YIEBXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5FB1C6367
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 23:49:29 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id r11sf1438634ual.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 14:49:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588715368; cv=pass;
        d=google.com; s=arc-20160816;
        b=siRAwIzGB3mdyDUIlmZbpFfQi2MZ8wB4BSKQWjSzkPBqTsTpXYW63H7SgxhxmBHMcV
         zIwMIGlsZqm1zSOydXttgdFEHpAA4a5izbJjVQ1Py+9iQoxC/nCPCBR+jJX5ZlFkVGwL
         TtBVYGZU5+sRYGGL6kx/UPV/BfpGEm5gMobfbjGS/prcR3TY2DlaZ1ccKfbPxg/+11sL
         thA8GzvfxQn0vGHflCKLKgnl7eojLik6ILe7o6VRR/BoPN4TERHVScw2/xQkFm7Mb3BS
         zqabxLsQkKn6IoqovBK/AzlY27ESAiR0TWeQVw5xs5Y+uv631+9kC2SzWR1c7tUFgPNv
         Jodw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=fI01woV1HHHmCUbvM6BKTWMzvoe/juMLp20LXeXb6qQ=;
        b=fhmuSV9HlcJnEkqo7+TWR0dw09C/d0utfUo8VCkQqxINnzUPIvgUiI0PphC7UwQCEz
         DhBV6+8dS+H1EYOpZN0qtRNPYUsev34DhA1CbkT35ZsroyANppIqp0PXEDZavn+n4dzY
         w4CN09mpIzkoD+LdDq0z65Ied3iw0PXnEGxWNGdMPaGvrlhG34x36kKtM0ES1mki5dco
         7sXaUG6ahFGrS7O0H8a4PaJrlsqq6+8eEBgx1Y8Wg3Pqhkaq8a+yzU6UG8lfizA06dQG
         nJw4fM30a5VD309yAFAkNt+qPpYfssDaCpKG/I4SDRn7XqSySKUAnigl5mmk0wdysyUd
         Pz/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=xveQVoXP;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fI01woV1HHHmCUbvM6BKTWMzvoe/juMLp20LXeXb6qQ=;
        b=CvTlSfgOdUDw7dG/lRwrCFEQ53pOwsHX7tzJZZGUYd4SkAdZshzt6fQsCrFF4J3Xed
         7l5J1xIVCOb1TaxibWT+gaftuRXKxJfQI6B4GFl6a4zA2JpZnLK4u1sEf7SNM8MzoIFU
         Y+ujz1kAckW5tH7Wi3B81UEl3ikpMvWmCcFoSDWYPZFrOhi83E/4mxZedRHdCECkMFQb
         p4A4QJfuO0KUCWbL/8d0mMZ3yHXgo3Uka9aV5qVlqniaDI/nGOoY8G1Gq4tzfeY3s7fq
         9kPqq+5KUA0hB0L/dFW3x50kYGdxRg1zBms9cTvLw9ev7C/G1/5/lGWu2rsExoufJn6h
         QIEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fI01woV1HHHmCUbvM6BKTWMzvoe/juMLp20LXeXb6qQ=;
        b=IvOT4VJs97s3mykZslrfHPXcmhDKmLpRVpokTwtpJ7K/tr828+lvGSGVCaL9a9AQf4
         t30EfpG0AiD6YIa+WqEAildIRNzMax6wlunRJw66LFeM+hZtsTeMpWXQJbTHnPHGSs6D
         V94eVHWumuhNEssl8CWh3ByCvVrUkHfJBr/WX3ILWrUtehxmCxOAHdpBHyDB0B3C7bDf
         zg+ysFZ6YSSOy0pIxBPtaMyvcMCKu7yF13q4YeioSus7fcsltLqtENgo0+O9f6fUv3Mt
         OuEmQnbg84RiQ7QCpAYBCIjqNxt+wtaqpihSJ3heYxzRfENeP1AE9o1l89nHFQM8BK8T
         97pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZmTRG7qfWWS7+nMyYZCymxW5tRuWdlSi4YRWyx7sSHyrSFnr3u
	TacJSJ1nkMp3/JpXSQuY9rE=
X-Google-Smtp-Source: APiQypKZSIjyRMNbd0q17DKlgDVHvh71dtzYyI5GWq7Qsy5AvJhbf5w6t0hPHV9dU1+xUWI43gYAfA==
X-Received: by 2002:a67:fc46:: with SMTP id p6mr5331808vsq.169.1588715368120;
        Tue, 05 May 2020 14:49:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:b14c:: with SMTP id z12ls673189vsl.0.gmail; Tue, 05 May
 2020 14:49:27 -0700 (PDT)
X-Received: by 2002:a67:f60f:: with SMTP id k15mr5082521vso.92.1588715367775;
        Tue, 05 May 2020 14:49:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588715367; cv=none;
        d=google.com; s=arc-20160816;
        b=Ru/gp/GWBtrMBRyPValjktWkdyz6aqAqlBCfNJAZT4LzSl1CDwek8VvwaOA0F9wJZp
         b6Azd/SC78JbCgq8lqhUmWWkI7LGQcwQ+dS73B+YcXqlcb9cw+zhxxvoCU8ItESItGTl
         KfhrIZT1NACZsxV7gxjtzjM8Yxih87vObACv9M9EAMg87zaAy+8+KUpcgVmUfDFw3q2G
         7JAR7GwTS2wY21R8IW9UK2O30YA1laDma2XsIjUyaUgp+kedvnmzEySdvTMuK2Nnn2Ib
         j8xbCfuRlIsdaf+PqQg6udGnAk7MFVjeRwoCOxr99pyA9xO/Gg9ttlO2m7fqDb6KvF8Q
         gthw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=t6t9jGqKFNStEBzy7J3gn8h0ZrOzi19cVq92NL/u2I8=;
        b=Hvj5nTcdCUv1YA4ofzJZUdcutrCSrV5vwj1KPi9+Is880ZBTUOsdfoejb0vLr5or/I
         ROub6yRTWms11JA/rDqjTxO7BERTFa8sGbPjuGvaL7goSdKUYvZHKLURQ7UlPCcriVIj
         ybdILlToZeyaZPIDhsNzV8dS43nDplWqI/IWMVtvACxwhHdbYHruk8tmjYuLHg9UQy9i
         2Asl/gliEgClX9LaP3yeda8wj4M+lrK1Yqga+XzhywEQ4Ypq8I5lKaCxAKAStwFpCHo8
         wKqEqOaVquVIwNDpQhHXCiH6CYH2ZoA66YmS9EEs3zyTIiy0B7MoVbVglWleO5CjNH/E
         L3XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=xveQVoXP;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from mail.zx2c4.com (mail.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id v22si13615vsl.1.2020.05.05.14.49.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 14:49:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id c3f43dc4
	for <clang-built-linux@googlegroups.com>;
	Tue, 5 May 2020 21:36:50 +0000 (UTC)
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 14be3092 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Tue, 5 May 2020 21:36:50 +0000 (UTC)
Received: by mail-io1-f44.google.com with SMTP id e9so3627200iok.9
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 14:49:25 -0700 (PDT)
X-Received: by 2002:a02:7f12:: with SMTP id r18mr5706843jac.75.1588715364406;
 Tue, 05 May 2020 14:49:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200505135947.216022-1-arnd@arndb.de> <CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq=034=Vw@mail.gmail.com>
 <CAKwvOd=OiMUfbNVzQ-Z-bLrsqvPKgG867NBX379rzop62TB0-g@mail.gmail.com>
In-Reply-To: <CAKwvOd=OiMUfbNVzQ-Z-bLrsqvPKgG867NBX379rzop62TB0-g@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Tue, 5 May 2020 15:49:13 -0600
X-Gmail-Original-Message-ID: <CAHmME9q70DdyOBQTbG5RhYrXVF6RysZWNqVFmETqA1QtSn59rg@mail.gmail.com>
Message-ID: <CAHmME9q70DdyOBQTbG5RhYrXVF6RysZWNqVFmETqA1QtSn59rg@mail.gmail.com>
Subject: Re: [PATCH] crypto: curve25519-hacl64 - Disable fortify-source for clang-10
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Herbert Xu <herbert@gondor.apana.org.au>, 
	"David S. Miller" <davem@davemloft.net>, Ard Biesheuvel <ardb@kernel.org>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>, 
	George Burgess <gbiv@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=xveQVoXP;       spf=pass
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

On Tue, May 5, 2020 at 3:48 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> + Kees, George, who have started looking into this, too.

I have a smaller reproducer and analysis I'll send out very shortly.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9q70DdyOBQTbG5RhYrXVF6RysZWNqVFmETqA1QtSn59rg%40mail.gmail.com.
