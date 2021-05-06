Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBPEBZ6CAMGQEWIEBCMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DD837520F
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 12:11:10 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id y184-20020a1ce1c10000b0290143299f39d7sf2473229wmg.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 03:11:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620295869; cv=pass;
        d=google.com; s=arc-20160816;
        b=fi/F7t39m8kuwWvPUk6JlNPM8DliQBbgHd55mK7F1HTYr2Pidml/Zw4BS9WZAX3Tic
         OIrAGf2RS45p5MKuRWQ+1Wqzun0Qm3zIDFm/QGkEPVu9TBiRwzbBI72/h5zOcL0d7IbB
         GJoN3Vj6TzKKfMs97jq3D4GPOcKQqUIWil76pj/XxWFremGEgVYCzHTLHZzlBOupOs4I
         HUvEptjNFsNU2RTD8xLbEapN8cIT4vxTSRq21wm2zNCOocQRnhJy1eUF+MULRpfhOUhA
         zpZA/MdxHeSfCqlDvsfJAgBhuSB3ZiyfVyXM4DOn6BJ5Pgjstin5/qTz2CZCjAewgM2H
         MEJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UJeWaWnCx9EZabTRT08QqjsgoNCtK2HO5gwLBpHJvsA=;
        b=pU1QRxiYCr4LtXoIfjYMHYiellvgIBc6kps0iCcQMmjdCRRsOqx725r/NNhbyD1uYR
         5OteWyk+2WhxkLXoA/Oj9L8ka4fNwycV35/PpKFohXHgfc1n30zbiNGvGzOrI+R5uIxE
         12FuMju69XwIMBoDxwPe6SnxRWUZtaF7OowFECfufVANgdRERtge2jPUVYTeuEQoQua6
         7Hi2unMovbcVRYdbw3VZ82s1w3peOLeCOb1XTqNDFXyyw56wTi3eJ0aGsh+/b+PbTr8u
         Huc/QAE6WKBPgH5WHIK+70CdvGbjXusx9ljBZ+93laE6BUt0CCkwRt5n2UUsA2azm20y
         WzbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=dfQLtmxA;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UJeWaWnCx9EZabTRT08QqjsgoNCtK2HO5gwLBpHJvsA=;
        b=U+LcrrYaKxoj/Fj39BlKEXH6mKtOKY+d1dFR/Jg7xhbVRkV6LY+uxeXgqz2VRVy8TG
         nE70BQ6XovmSixZrAOkfdGJqSJ9joUkffvbFAaqFqYbEanM15EX/esZwoPiUwIbNQ1D6
         ZWaDjCB6wlZtfD27SCpk8j+C5YqSysoo40C4mWO85K+kaPQYMtAkLOIehIBfqGj5N2GG
         iBormOWvRcuENnhsSVUeeF6vLvUXyVGb0wnANcS3traKxYWVotnBKSavh0KBFp+6LOZG
         qzmYbBQc2jHD2IeVrrWPr5abXjC6qSrfynLMhBJX3+yxvV2j8QnIz/aF6tmdB/Ll1NXf
         HvGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UJeWaWnCx9EZabTRT08QqjsgoNCtK2HO5gwLBpHJvsA=;
        b=dF8ggipJ5sHOkS5iqi4bKcnZFz3BZG5usvypRi/bJ7c+w3qqSiFnDIOwo5065HYlGh
         cqOvY9LEmoxAkFOPLjpmJX97Cd0RFG5JaslU2bGWi7k7va2RPBVZ3uVbeC6B7g6Des8d
         WP6O/UxevakumEWbqghKFOe7IDLtGYCQUg2S8A02HXMB1GS5TmfWQl9xznU7BhVajLvR
         MujzXuITr9AA1ovCfNsjxkGviTYwHfMclSVulSyGoAYcsmrcAXaPU6I2o5+AB5iTAkr+
         1L9ILMOyGy8MUtV2x+OkKKHEM1HH/rR25Zpv01r7/4psiYQdKJfFRZHo9RdtMTAoHJiu
         GT7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315A+tzhuYBpQT+v0enE0sm345E4BJYnW3F6z9xJx1k/NcGZCra
	rIzL3m92IE+Tkw5cMDqkTUA=
X-Google-Smtp-Source: ABdhPJweZqH1dAA1nujl5fx7ihyWTlriJ8KDZqsV92zWi23auZseQipuyzaD4NZ1XkAP8m4Lcwu3ow==
X-Received: by 2002:a1c:7e82:: with SMTP id z124mr14512152wmc.51.1620295868683;
        Thu, 06 May 2021 03:11:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1287:: with SMTP id f7ls2471962wrx.3.gmail; Thu, 06
 May 2021 03:11:07 -0700 (PDT)
X-Received: by 2002:adf:ef90:: with SMTP id d16mr4109122wro.359.1620295867824;
        Thu, 06 May 2021 03:11:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620295867; cv=none;
        d=google.com; s=arc-20160816;
        b=TSyvBdcRRhlnUxYm5lJMb9cOWR5ydJI3Hxg9CzWaCyp3S1qviPPhbQpJf8/KbTDJnQ
         eavRaAY0sPyfCye1PvhZiuJYzwidaGUezt2WHgnpnHkQzXYI8LN+RBg+TnERFcA49fhn
         hYSuuhoZ3wXXtRAOpFdsHIl4hkEsHiglHidfAV65oY1qGdo32a7CGrwPkfDwc9bxq/M5
         YUYKsSAyqLsqwErVB4BywhGuuQh4bsHyOhXZ2FVhSYc6fk6TZmKZumkS1zavSNGnujrd
         Ospw+yPtubmK4MNPCwSO4pFQZgdgguQ/6mZNtm8oW7SSby+dOejb01ns3qWyRo0b5Y8o
         MlAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xlhv1ia1iEUnAYb6RvKO2shIlkWWFE4kCXLfGsroUMM=;
        b=ddDR84hbGveP9Tz7XtJoBvbG3m26JicKnYVwpdH3rVoDPDvqya0Z63X3YDiwNcFUzy
         2uyhFv2IUnEtCopafocUHt1tx5fyR7goLZh5PiB6agScJjMtZDyknGbuDmLpP2BUo1bj
         SPcnZFrQAN9arFPThCTE1GBF2vFWwVF/lzmKEv4mLn1xp0Eg+hNuTHhGMTICRi0xrE5A
         v4NIxDmTJwGmVLF/OCoMlD8t4QzWiMId/c8bL44plewbjwCz9BI/tWfDqbKaDaFeQ2Gj
         Gxm1HgoR2wK1Zh9UJqNe2VFJclHcWuiiAyGMCwytrB6kTq79JK/NtRL0wJ0b1uAV799v
         vfCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=dfQLtmxA;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id t187si95061wmg.1.2021.05.06.03.11.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 May 2021 03:11:07 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1leay7-003vIJ-0V; Thu, 06 May 2021 10:10:57 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 25113300103;
	Thu,  6 May 2021 12:10:53 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id EC22E2D84CAD6; Thu,  6 May 2021 12:10:52 +0200 (CEST)
Date: Thu, 6 May 2021 12:10:52 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Jens Axboe <axboe@kernel.dk>, Jian Cai <jiancai@google.com>,
	Guenter Roeck <linux@roeck-us.net>,
	"Huang, Ying" <ying.huang@intel.com>, Borislav Petkov <bp@suse.de>,
	Eric Dumazet <eric.dumazet@gmail.com>,
	Juergen Gross <jgross@suse.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ingo Molnar <mingo@kernel.org>,
	Frederic Weisbecker <frederic@kernel.org>,
	He Ying <heying24@huawei.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [v2] smp: fix smp_call_function_single_async prototype
Message-ID: <YJPArKvd+GuiBwRk@hirez.programming.kicks-ass.net>
References: <20210505211300.3174456-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210505211300.3174456-1-arnd@kernel.org>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=dfQLtmxA;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, May 05, 2021 at 11:12:42PM +0200, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> As of commit 966a967116e6 ("smp: Avoid using two cache lines for struct
> call_single_data"), the smp code prefers 32-byte aligned call_single_data
> objects for performance reasons, but the block layer includes an instance
> of this structure in the main 'struct request' that is more senstive
> to size than to performance here, see 4ccafe032005 ("block: unalign
> call_single_data in struct request").
> 
> The result is a violation of the calling conventions that clang correctly
> points out:
> 
> block/blk-mq.c:630:39: warning: passing 8-byte aligned argument to 32-byte aligned parameter 2 of 'smp_call_function_single_async' may result in an unaligned pointer access [-Walign-mismatch]
>                 smp_call_function_single_async(cpu, &rq->csd);
> 
> It does seem that the usage of the call_single_data without cache line
> alignment should still be allowed by the smp code, so just change the
> function prototype so it accepts both, but leave the default alignment
> unchanged for the other users. This seems better to me than adding
> a local hack to shut up an otherwise correct warning in the caller.
> 
> Link: https://lore.kernel.org/linux-block/20210330230249.709221-1-jiancai@google.com/
> Link: https://github.com/ClangBuiltLinux/linux/issues/1328
> Acked-by: Jens Axboe <axboe@kernel.dk>
> Cc: Jian Cai <jiancai@google.com>
> Cc: Guenter Roeck <linux@roeck-us.net>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: "Huang, Ying" <ying.huang@intel.com>
> Cc: Borislav Petkov <bp@suse.de>
> Cc: Eric Dumazet <eric.dumazet@gmail.com>
> Cc: Juergen Gross <jgross@suse.com>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJPArKvd%2BGuiBwRk%40hirez.programming.kicks-ass.net.
