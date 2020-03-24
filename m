Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBLXK47ZQKGQEPX53HMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 53616190CCB
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 12:55:28 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id f14sf13779415pfk.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 04:55:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585050927; cv=pass;
        d=google.com; s=arc-20160816;
        b=P0V68t0Pa5znPBYXFrv1na5GEMPpXWxYBK6+UBhOQvlVSPTsfHorrhcXT1SeRA2Qzq
         iTionQaXfLehVnIbJWfSofcYdsR4/uo74aNXjtgdLhNsPRFzcGoVAKM6maYZWWKdzFKj
         X+9jabP1r2uIVkZvt0GlNc4LsbXkTnqCp0ywpdet3Ok7hLKxZuuVcl+iXt+O7rfk5PlY
         M6eU8RNfn5Ap+DnfqQ7aPZzED+tbC/y4awy/nWHwuRE5sSXho921z2HUHBlTGO0S1oOA
         ooainMPKCTEhclWXVr+h9PO8ByotOdxpE8XaOLoOmiWxuAtxPiBu89Cqy4rvZ7aafo5t
         qY3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ntssCnPQj/ExdpBijRkRupUMgCdVY8tNZZamZTZem98=;
        b=l6YSZwPn4TlgJI1p0UAXdH22xH4GyGeHf4Kdp+SAe3XwLNBdnbMwxd6ZlosXDekjKS
         rYu3VMDEGM3vFllfuUtHfsP6unu3fSvO9Pp31EjGWT3bSePUMn3Buk1RiOppuTRr86w9
         aciGDL8Nuwb5/pWnulnoz7GrJbX+9MJxlz0iJista9PUOoPn3FTcYnBLWXUeSDa5f2Y9
         rLxDPusu/fg4OCStKtdDJ8DaQ1jBSXKnqPsKMedPx4PvoRUj2U/02hQPqAeXJQ7mCarv
         54hTmc+Y2SZwXz2AplBRiPnVWdB0iMEmCkE3u1zZwYfizOpry1ki39raRENjtGjkeNHf
         FChA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ntssCnPQj/ExdpBijRkRupUMgCdVY8tNZZamZTZem98=;
        b=OD96ezB83fsgNGxHgyqepI0PbH37oZFG0YUaaeiK/njFRR3PHmEwnfApLQ1v9xALuU
         zKLBVR7VdXfFULna15cHKCgsmPaKVSWPdK8zonWjIfhX+Lcqf2XssjliFSJTnDP48r04
         qlTT2xwcixPqczWorbpqbP/UUJzYk7aFwQqye88xcWXMgysBOdarbWI+kjINTA/1HIFA
         28qc71BK/T2W8VB1miati3x8zDejTfRyWHVC85wbfd0ZcnURDXkSMYvCri1+ZKQTBrV2
         F+f8bbv6g4Xs3bFAmHJKWiOBOfDwu2Ruav5tWd/gFJsotUnOni61zGRhOd0JrTSsW7k4
         PHNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ntssCnPQj/ExdpBijRkRupUMgCdVY8tNZZamZTZem98=;
        b=ExEzSsOgDrtqFIaEFatSJWdH0zd5mO9hKK1qL6Eyc0HBJ9/vUPBfkh2YXyZE6AHCiC
         jWRwOB0suuE/ZwjTIJLhfV7LUxVkuVsYUwHh93E+3BZ9QELZHYjhdf1WIdoUKwZmUYyx
         wCLjrgXdoG/mtOYhB7Yde/ZvZS2Mk8sH/43WdRsZZyPyd3J7qOUfUbyUeyMlAuKoit4g
         4TyvrBAH5F3/Bgc38bmzWZI6M5AagOq34EwjPKpHIES7FtFSimTWtMAPlNN6CH5Hfdcy
         nrFdkv+ojhK8GbdpCebFdIvPnnNMev8BdFTrXozYqqYKFiBHMi8qjHU0+aYX6xl97u1P
         4thg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3Y7Rutfq93stP7ZWLcDWVmSuV5erlCE3LpezlvNJ5FofFlt42U
	7npCpWyW1cIS9VGQkL9jfxk=
X-Google-Smtp-Source: ADFU+vunBRv2qNYKdxpk2KjzJM0t+1EJzAM0jQ+btqFb87r4TmZxBRbKU3UloFWJFPT0dJ97pAa38A==
X-Received: by 2002:a17:90a:8c83:: with SMTP id b3mr4974413pjo.1.1585050927058;
        Tue, 24 Mar 2020 04:55:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9708:: with SMTP id a8ls9128144pfg.9.gmail; Tue, 24 Mar
 2020 04:55:26 -0700 (PDT)
X-Received: by 2002:aa7:8a99:: with SMTP id a25mr3338972pfc.76.1585050926489;
        Tue, 24 Mar 2020 04:55:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585050926; cv=none;
        d=google.com; s=arc-20160816;
        b=VKrhpB9WvJySOqRNixqXc7CqkBjTIPm5TifAMV8WOqPPT4iDEqWwo9kSxw5nAck7U8
         UXmyKfrNLPY63gfPuj/LS48L0lLDFsNnC1qDZ9c1pzZ++2VsbAIVanHsK6UTUI3/eFSy
         ZvGRZNW3HcI4vJwht3405XAhyl+dxLIcUxRncKOt/DYPV1pSSwny7LS0miKk1kuuULrH
         JDCh87J6yGyeuQQ7l4t1h4j7cTKTYkULnrYVy72l3yyu65yYheSxVGg2B+w2/9fTuZS5
         T7Hoim3np9Y0kADfl1XXK07eerqmnIIvKB7L69AIULNY7M8lgMxs2jdEc6GGJVlgFOMn
         BvrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=SqbccwuRTTkP/C1ed01v4flrZ64jgaWQG3D1wcy2G6A=;
        b=iiK+AbT3ALdzlEj1s1C4ot3vxrdnqDXbiv7W8zSkRpmePL0NZtokdgWjK7FOfeqp3t
         FLhxbdqVu+vAOSI7sZfr9Xwbv/Pdh99kjE+oDpWHP/7DrtaPTcJmfAwml5tG29ErKRWJ
         0gHlstfR+Hx8nfcwk+lhBr0tMlYWkcYzBtofCUSMCsgpm8Qj4gG776Rw2qz7stQI4PqD
         lRYrVt30zqTBuP18DclshoA9cVu/dOjnuoljVitwKUM3G4nCVUcdR4ALCGHVO5LdxxwA
         O1JMa3xe9lWM8Zgw49ZbTxNCfGaz/vVSuOdsyy1+KbWGKL6G2NSudmz12zCJDZTBPwnG
         M2LQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id 19si454820pgb.2.2020.03.24.04.55.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 24 Mar 2020 04:55:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.me.apana.org.au ([192.168.0.7] helo=gwarestrin.arnor.me.apana.org.au)
	by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
	id 1jGi91-0005xF-TT; Tue, 24 Mar 2020 22:54:57 +1100
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Tue, 24 Mar 2020 22:54:55 +1100
Date: Tue, 24 Mar 2020 22:54:55 +1100
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux@googlegroups.com, linux-crypto@vger.kernel.org,
	Ingo Molnar <mingo@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Borislav Petkov <bp@alien8.de>,
	Peter Zijlstra <peterz@infradead.org>,
	"H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	linux-kbuild@vger.kernel.org,
	"Jason A. Donenfeld" <Jason@zx2c4.com>
Subject: Re: [PATCH 13/16] crypto: curve25519 - do not pollute dispatcher
 based on assembler
Message-ID: <20200324115455.GB31003@gondor.apana.org.au>
References: <20200324084821.29944-1-masahiroy@kernel.org>
 <20200324084821.29944-14-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200324084821.29944-14-masahiroy@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Tue, Mar 24, 2020 at 05:48:18PM +0900, Masahiro Yamada wrote:
> From: "Jason A. Donenfeld" <Jason@zx2c4.com>
> 
> Since we're doing a static inline dispatch here, we normally branch
> based on whether or not there's an arch implementation. That would have
> been fine in general, except the crypto Makefile prior used to turn
> things off -- despite the Kconfig -- resulting in us needing to also
> hard code various assembler things into the dispatcher too. The horror!
> Now that the assembler config options are done by Kconfig, we can get
> rid of the inconsistency.
> 
> Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  include/crypto/curve25519.h | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

Acked-by: Herbert Xu <herbert@gondor.apana.org.au>
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324115455.GB31003%40gondor.apana.org.au.
