Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB2HIY72QKGQEY65IUTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DF71C6456
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 01:19:06 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id z2sf251161pfz.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 16:19:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588720744; cv=pass;
        d=google.com; s=arc-20160816;
        b=tzCtwEuY6KxBjVX3s4J1dYea0t6vSDX9FDyyskO1kKih8SpSsV+AtQF5th8u0+ZZn7
         Sl31TwSQXppoaCdnaFJThzq/330GZmcgpG44f3Xxg5150MY4dnmmyoBXMswDXDKKyUyX
         PtyOVKrZY/IwHSJ4YBxKN/j2OH2A0+voNSLl6r2/23Xwtzq4d+caFvYJOeC5YMTB7lam
         Ju3rHQ1oek9mCzdSIG9kJMoDudMbAGRB8DvEioOxBIFTxaV9E10bjq1IGWHXmZqko6TK
         eG4VCgQI4SIjsxwwPAw9+k3TLyVx6Q17yVm5PAyN0uqqH1k9VODMHqejP1ekRq0VIPHC
         85rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=J3Q3GM647Tryd868sUhXDWY85+rVdxF5Zfk8YLRu7ak=;
        b=ec/F9RC6gR/IwXAJ1vaUFyJdsDpHN2xDVtiNQwSKcGQO746w3C3kg8e8BN6yUQkvzL
         lcuo50rH4BEbSpD2RnoEpnxLzBdNfdBwq2YY+/SzP8yXYZAJig5qyGOhWumUn+otpAt1
         XMxu6/RA3oMX1/hG2Fu90DptbcccJsmWAZhJvqGQe706SCT+x08TroG0psnBFK20Yw48
         guKgdvZhRXNa9gQT/8Z+j/Suz4H/ag/nPmo/k3q63g14nK37xv/VVQf8Xwsj00NEfxRr
         K2TwFs6OjIU2dV1NTXYg/vjy/ek1ubeSdwajzYGpDnY0d943BuANIuuQ07MxI+FKj6KP
         jUAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jwmVKyJd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J3Q3GM647Tryd868sUhXDWY85+rVdxF5Zfk8YLRu7ak=;
        b=e8Imd5CHTIq1INGNNSxVkI5gDieFQYZthpy7w9P9kQutaZjmMtpU0dLUuW9t/Bw9oK
         fy7tmFwIXK8VGgptB4lr2vQOIzIfqZb/HJi+xlUozil594+eCOFBPCTgip6EmrTpiU8x
         NuH3RUlhEHugW6EAkDaAWNACdJDcKpnW6rg+o75mJ68ou18LR+K+O7k9KGsfXmfdAqjj
         gc55PPt1J4Iopzcko+YBSo8Bqmrf5L1vZuHFeQuuxBa2SprIDvcNJDp5jTvgvFNf9ZSZ
         YkQnwohzNpmdJ4AlwJMRjB1MD4cVUbv4/GScqq7WSiJrPT6CWSnolwA9KJi6wjOhAdX0
         jgAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J3Q3GM647Tryd868sUhXDWY85+rVdxF5Zfk8YLRu7ak=;
        b=aZ0EjVnsjjz9z/6YOq6JKzsb2a9NQn6iFuYkx3xm9D/i2WvvEortTly/VkSuhfVc0N
         saR7QlWnuMWkAv9WOReYd5d09TR9/TClR4eiI7pUtema07g5tCYEqAMJ1kbBrlg1GELD
         MlCUcwc0MBAnR6UHVzEgsYtRe63GB3vacDSnXnMq1AQkiNJHfOaixjuIhbuAKvsEkeXz
         4PpBJGSTYH6x5nWkbV6P82ZS5Mb5pt2i4At3bRP8BY7NY0Y3bfcWq+hC0LTXMx4QemRj
         7r7zUQD3AQo8Q4QYG7TXBlgtUoAH60IfZz46tu/OKY+95GNTn2t1vzIZs7fg9ujlfZgU
         7Hpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZHDGe+Pn/rjGvG48w0h6sVMG83tJlENNVRwRbhWP2dazh7qieh
	YFB667AYxSdPx0VHCwDNQSA=
X-Google-Smtp-Source: APiQypLUcnksnTnni8OodZYOh3FNCpi0jW9rQF0ILWd520qDlgst9zGiniNYce5nnt344Q68N+rWcA==
X-Received: by 2002:a17:90a:77c6:: with SMTP id e6mr6175131pjs.84.1588720744633;
        Tue, 05 May 2020 16:19:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b82:: with SMTP id w2ls767500pll.1.gmail; Tue, 05
 May 2020 16:19:04 -0700 (PDT)
X-Received: by 2002:a17:90a:138c:: with SMTP id i12mr5907933pja.36.1588720744272;
        Tue, 05 May 2020 16:19:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588720744; cv=none;
        d=google.com; s=arc-20160816;
        b=HvHFw5gXiiXeSTHL2tnvS9hjmib7UCLLLfh6ua+s5FuT2XEOGExi0bqf0BrXNYF4w/
         rvRCT104bloaMEprTfsIlGnI4fQHdS6fkF3YyTV8nmijmZnf2WY219FckmC6TTQq10Fs
         bE/gNVCvFmBmmI6EsGAReU+RCQKEADFyCttsdmOmayClGdphEO/qFpk/c6HjLtLGWr5Y
         OjVm87ZKg8zgP1C2YW1s1FIMHYJ22Ko93dGk9N9ibs+fNK9b/wwuWbFHyJR4UDoH9Yjr
         oaP/dK36SrJZcwupTlxt7GwWDDq+VsDzxxvkmBmP/E0VE6ZIIx2Ebj3yFRgIhoT4oiPk
         6SSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=owNe/yVivLu8lnuA6nUAqNW2cBSryrNQc9w98UalwzM=;
        b=Q/OlRBeiDerwo66U+3v+eoR2R6z2uHxAxd9S3/LXtQwid+kBOEkSxtNW2LPBy4WRlm
         NygxeNZNfb23GwMIh62m02/WEs2DAm914Bfi98buaJxC3pw9vSYmcg6G0aLjWJ1GDtNA
         sAz8JQoodzd4mDuv1vTgxe/+zR8J7CANOulSyJqyItFzZUzkWBdAHpEZ6ZNDAiT1RQE4
         nQW7Tu5D+w/t7m2XFK99EtHgyMHcRExCgzfTtdK2IXmB6Latv+O5vQTi2FfVv55gCope
         5Rdt4gqL9Nu+wzZcy7r1bvE65DKAqiwfvzfxkMrP2RDYV5S2H8W3EgcO1o9v0zYW3bp6
         yQLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jwmVKyJd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id t141si34938pfc.5.2020.05.05.16.19.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 16:19:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id y6so26551pjc.4
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 16:19:04 -0700 (PDT)
X-Received: by 2002:a17:90a:a484:: with SMTP id z4mr5672933pjp.40.1588720743964;
        Tue, 05 May 2020 16:19:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s123sm71340pfs.170.2020.05.05.16.19.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 16:19:03 -0700 (PDT)
Date: Tue, 5 May 2020 16:19:02 -0700
From: Kees Cook <keescook@chromium.org>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Arnd Bergmann <arnd@arndb.de>, George Burgess <gbiv@google.com>
Subject: Re: [PATCH] Kbuild: disable FORTIFY_SOURCE on clang-10
Message-ID: <202005051617.F9B32B5526@keescook>
References: <CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq=034=Vw@mail.gmail.com>
 <20200505215503.691205-1-Jason@zx2c4.com>
 <CAKwvOdk32cDowvrqRPKDRpf2ZiXh=jVnBTmhM-NWD=Ownq9v3w@mail.gmail.com>
 <20200505222540.GA230458@ubuntu-s3-xlarge-x86>
 <CAHmME9qs0iavoBqd_z_7Xibyz7oxY+FRt+sHyy+sBa1wQc66ww@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHmME9qs0iavoBqd_z_7Xibyz7oxY+FRt+sHyy+sBa1wQc66ww@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=jwmVKyJd;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
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

On Tue, May 05, 2020 at 04:37:38PM -0600, Jason A. Donenfeld wrote:
> On Tue, May 5, 2020 at 4:25 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> > I believe these issues are one in the same. I did a reverse bisect with
> > Arnd's test case and converged on George's first patch:
> >
> > https://github.com/llvm/llvm-project/commit/2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
> >
> > I think that in lieu of this patch, we should have that patch and its
> > follow-up fix merged into 10.0.1.
> 
> If this is fixed in 10.0.1, do we even need to patch the kernel at
> all? Or can we just leave it be, considering most organizations using
> clang know what they're getting into? I'd personally prefer the
> latter, so that we don't clutter things.

I agree: I'd rather this was fixed in 10.0.1 (but if we do want a
kernel-side work-around for 10.0.0, I would suggest doing the version
check in the Kconfig for FORTIFY_SOURCE instead of in the Makefile,
as that's where these things are supposed to live these days).

(Though as was mentioned, it's likely that FORTIFY_SOURCE isn't working
_at all_ under Clang, so I may still send a patch to depend on !clang
just to avoid surprises until it's fixed, but I haven't had time to
chase down a solution yet.)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005051617.F9B32B5526%40keescook.
