Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNV7RL2QKGQEHYHP63Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E371B6F9B
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 10:13:43 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id n18sf7021024plp.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 01:13:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587716022; cv=pass;
        d=google.com; s=arc-20160816;
        b=beAV0L4TTmN0CtA4zA/mLtCLlChWKot7t15ONE51LNLoLVfCZ/qlqCkEdkPL5AsY0f
         //awILSXwaw6nBhYh38xl/dvX+LJG7uFD6QpJjzRSnsZhBA/ZypGlKCcmURBxHGecX00
         YXYD9mFuD0AkN0cCjIArDfT4uf+zup8uR9DBrswP+StNJrW9clL37NXT+agFJzmcE69V
         rAHlf5zmmxIM7Fq96L2Ht4r/Xsbc3SumrW9aQEFc3GyRLLmwY0MndWp864oIAlgQvUsi
         SkH4bV8OGqh1BcAoNbxPSf5+VNen+a+hFzZV9CfBsYsDnKXIZ3m7VkHM3XBk4MKQqHEW
         B4Zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=8pUDIJ9sIQ+0hpOj4BUutIgZsLhI8j6K0a87kIs3Lc8=;
        b=jeEsOE/TMIGwDbubGpnk0jYALteEs3neqIsjqQ93SwSzySu8V2/Mw4R+6VI4PBRs3k
         cbrmlfKvlY6NbiW/A0yJHkOlMX8Oaxj6y6f+/J5ZxPyvWZm6PFDMuz+whwllJBICxKH9
         wqZ8w0BqYEXERJZnpxwFh01qO4jF9V4/kgpNKNmVIocGjSdnQYuTnryFI5zvvgcR6HJq
         e5a6dkHaVGLg1eDySoAwIyhPAJbG64vz1yDOBG+roP3A2pOMBbJJpOJAmT+5BeXN8af4
         97hlZED4TDoVr5RjWSow16cSHWpb+KC/1VLvAIStEGop8USZMEkDoOfZwEnS+Fj8lFUK
         ndXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lKqcmeOk;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8pUDIJ9sIQ+0hpOj4BUutIgZsLhI8j6K0a87kIs3Lc8=;
        b=ovfvZCqro9RkFF7B12zTpfS8zQx1/3PpFWU7wZtMBMXmFW40+ENkV6iYdjBqf/WvWp
         ziFHoh7/cbNoSoH1wJUMrtD8gtFuuO9mFnpQLJo8FNiRpLSgiAbDGPeXnxSIvaVqdnns
         xAbG19aaOEPJR1GNHgEu4fyzxe56/pcSVslGn446x7YiUcSzK7K7+9oS0EckbfyGU/S/
         8iweb/76KtaVjx8St1pFAzqjHy15MfYcPDSTFb6qObhOpvEYBCVLReFmYQMkzhmZzYiH
         gRXYDe8yQGICdRv99KxEx8w4i91tEORl05NX7GSVcsCTduLQE7qgShEGvnyrlabE/7fF
         uW3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8pUDIJ9sIQ+0hpOj4BUutIgZsLhI8j6K0a87kIs3Lc8=;
        b=a/Xry71uA8GpuiTZeHwLnjgPEAuAq5k23vQ3S4UmaHvI1FU5P7AUFTJRGqlYOi/AD/
         +HX9b7H8ydzE5Gqx1qCWJ2shrqK3A4yHu4tTjKuTbo6D2PGw4URBaTE3riK6Tt2Fb9N4
         ykb63iKIjvm5vy675cZs/L+2gfGkFatIQXUEYEHBFnkSkYWSvpner7crNsBlxbOMgutT
         JJM0lpFXIz4IHYBFwBG76EVe1wv5CytUTOGBX6CigGyM57GzWPlol0IQTpXu3x0aqrjk
         +aoDAeE5IV4FzRzTnPqGvfkyhIdwHvRdKbX5O8qTtR4CxjGdmSvRXkbKfvtqFw9VSWp3
         LUuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8pUDIJ9sIQ+0hpOj4BUutIgZsLhI8j6K0a87kIs3Lc8=;
        b=oeSEBVgm/ytc3qEFJvRY8c7nTiqzHVEHxesEUgh3bKhr+v1NbJX1ze3D/bJd9oPuKK
         kUf/mAXtk2L/SMO7GwPKqqm0eoVgsckhC7L6t1dhjKU59WfSvDfASjyroeyEp97rgLr5
         /HI9OYxC7ysyd84gfsmphl0F+0/kzgXkfdz+oI6rve+t9r8tse09aLURsTt+VkoURHFS
         fNoy8ud936AJ9JdpqCWzYWmGaLBe7fpvRHj+mJpOZoa12HFYvDxuyE5VNyugswFpcoKR
         AVg/jLKeHfl5LY/MFrykqzISS7DKDLD5LQyPNwlTJWJ6tTKRKxLONBkbzaRCJAwhT34U
         dctA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYqaSTo1VpkharfBoS1zC5sCUAthwDiJYwytRp4vHQNcmC6JQqG
	ZodKUZHl+Q0IDRKlMYUduhc=
X-Google-Smtp-Source: APiQypJO/bZKmw3stz0iVjHPhooiTGGE/7FuvwXGsNiliyN01GFMkLSbkokEgYrqPU9qyIgzLV5rPg==
X-Received: by 2002:a63:360f:: with SMTP id d15mr7713419pga.102.1587716022093;
        Fri, 24 Apr 2020 01:13:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:e319:: with SMTP id g25ls5837304pfh.10.gmail; Fri, 24
 Apr 2020 01:13:41 -0700 (PDT)
X-Received: by 2002:a62:be19:: with SMTP id l25mr8047224pff.304.1587716021668;
        Fri, 24 Apr 2020 01:13:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587716021; cv=none;
        d=google.com; s=arc-20160816;
        b=VtJQqLKmUFq65IKJ7A6M025uBtb6KIf25+cyUXFqhg5m4QXEO9rzwJWkC2PV0fSF/5
         n9miezd0ieWsYI+7IkoKznN8ilmTj5IqranCBXDSX/26uloPq4eRQIJrOmd4iRCIkW1f
         Y8Zs0gSRNQ/RvLUd/L/+nuF5InoexxLlZDHPJC/F/O74/ONz/uSIp7JbVdzhKs8KjlGI
         8wvaHOnkO8eZ51Xgx7Fp31v33007RpNzluQxw0BPvV/cwwMMgiQQ7y3gJW3Oc/qgoFwI
         mhPF0Wxs4TiPSE+u7SeCVDjmBQXxNjkUT3NpH4DiCM14bitg5lDVEk+k25/vwMLpzJat
         1zMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9dfPGeraK4o9r9iyl1y9Yo9qcc+FG0ESeUD3dyGuhgw=;
        b=qvoTPRhIU/h1/cr1j6q3P1bv48IAf9HPwPxtFjTq8wvpb4A7kE6wh5RCeQqT29+kIp
         A1jBHrn318q+WBgVKJHNAkK7LHTwjCl+PBneJC6dLith2nIBilqxyruetuDokFFWonuo
         NUUmnVpX6RNRx5KjdOtYvyNOpOLyR+X7SdBbzfh4hJntL/Bvd8ZL5VIf+j9zs8afbLBD
         iYEhm2eDOQCUT7yLFLsFHohRICgA2QAOT+AwSUKMBcjcJQgs4oPqavT2ArFERWwL80Qn
         RNC3uotum/BYduPFwWYKFf3DKPD0DiBCzBNomD2EhvDnch46gYMtocq2xuFMUxsAegRu
         uFvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lKqcmeOk;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id t141si407616pfc.5.2020.04.24.01.13.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Apr 2020 01:13:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id b13so11009796oti.3
        for <clang-built-linux@googlegroups.com>; Fri, 24 Apr 2020 01:13:41 -0700 (PDT)
X-Received: by 2002:aca:b487:: with SMTP id d129mr6408822oif.115.1587716020784;
        Fri, 24 Apr 2020 01:13:40 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id m189sm271658oig.12.2020.04.24.01.13.40
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 24 Apr 2020 01:13:40 -0700 (PDT)
Date: Fri, 24 Apr 2020 01:13:38 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, linux-crypto@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH] lib/mpi: Fix building for powerpc with clang
Message-ID: <20200424081338.GA32106@ubuntu-s3-xlarge-x86>
References: <20200413195041.24064-1-natechancellor@gmail.com>
 <20200414135731.GA8766@gondor.apana.org.au>
 <20200423163602.GA18872@ubuntu-s3-xlarge-x86>
 <87eesdh8hy.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87eesdh8hy.fsf@mpe.ellerman.id.au>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lKqcmeOk;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Apr 24, 2020 at 01:23:37PM +1000, Michael Ellerman wrote:
> Nathan Chancellor <natechancellor@gmail.com> writes:
> > On Tue, Apr 14, 2020 at 11:57:31PM +1000, Herbert Xu wrote:
> >> On Mon, Apr 13, 2020 at 12:50:42PM -0700, Nathan Chancellor wrote:
> >> > 0day reports over and over on an powerpc randconfig with clang:
> >> > 
> >> > lib/mpi/generic_mpih-mul1.c:37:13: error: invalid use of a cast in a
> >> > inline asm context requiring an l-value: remove the cast or build with
> >> > -fheinous-gnu-extensions
> >> > 
> >> > Remove the superfluous casts, which have been done previously for x86
> >> > and arm32 in commit dea632cadd12 ("lib/mpi: fix build with clang") and
> >> > commit 7b7c1df2883d ("lib/mpi/longlong.h: fix building with 32-bit
> >> > x86").
> >> > 
> >> > Reported-by: kbuild test robot <lkp@intel.com>
> >> > Link: https://github.com/ClangBuiltLinux/linux/issues/991
> >> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> >> 
> >> Acked-by: Herbert Xu <herbert@gondor.apana.org.au>
> >> -- 
> >> Email: Herbert Xu <herbert@gondor.apana.org.au>
> >> Home Page: http://gondor.apana.org.au/~herbert/
> >> PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt
> >
> > Might be better for you to take this instead. 0day just tripped over
> > this again.
> 
> Sorry I missed the ack. Will pick it up today.
> 
> cheers

Thank you!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200424081338.GA32106%40ubuntu-s3-xlarge-x86.
