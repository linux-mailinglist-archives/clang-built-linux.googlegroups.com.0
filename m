Return-Path: <clang-built-linux+bncBCK2XL5R4APRBOHC36BQMGQEONVKA3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B223603BB
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 09:54:33 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id a4-20020a2e98040000b02900b6af7f347dsf1522903ljj.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 00:54:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618473272; cv=pass;
        d=google.com; s=arc-20160816;
        b=eS7F+jb/rQ3nYwWp40PGlLD+TklihTrl6l0XHVCOVZUAw1MQKx69D3Z1OCQIfn2vZm
         tUpHEorotVXwATxK/UQqmGh6O5Z8FILYRzrvNEc3CbtRE5azfDeZuP49+TILkP1W07Ji
         LaC7CNO9VV9IsJiy0HO2by8TAn+yR0IApTovUH9WUg1yEXksUP+pZMKTOCsnAMg+VQYK
         WYcKQM1iVFzwcDKcNwxVNkDBTSfTG4kPEgo3A1cyCSoig15JZ4GIj0VGGrAkp8TAgOi3
         ZR01fJYhM0jBtwpW+sfZeuTA/S2XcQIVi0heMjH6Xw++28TehmxiV0Avm3kDH/WJJy5K
         fFaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0zCFZAIH3fMsWWuORlimoo6Oi0VqVGcEZw3CPfio+OU=;
        b=JkRDrUfm+4E6KJa1rtQQRpXGtUNBL0T6Ij4qGg2LrHzDbyqWwwQWJLpVKXeRwM2FfK
         ool7ZURXamYCB5gEpwQiylnLjgeZ8oq+PaqBNjRAh5SJwOx9Ru49zrUd4YPBDKKy3v7h
         aIkItovE9Q/mguHfYhuRC9bsMviTrBptvbBhYKZVfcJXd60Zg/mLU7Z3BgikCB93W/9Y
         iFDoWFxJTlWSwDWiBGJGIhTIiRlS/2dfuT603XjRQm+koik0OOfoxWdyaR8KPoBV8wHi
         FDS5Gu2ZTDJPnKY67zH0XBATPoE+BLMZqSY6SkXZIKS+Uhr2ODZDpTYZvAnjeRaVLr4U
         9C5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=pnJGXgH2;
       spf=pass (google.com: best guess record for domain of batv+115b914b7fdab25b019b+6444+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+115b914b7fdab25b019b+6444+infradead.org+hch@casper.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0zCFZAIH3fMsWWuORlimoo6Oi0VqVGcEZw3CPfio+OU=;
        b=RODGT0IKVk3VPXKmMH3o7jlOPIkW1CRxxBWc+xE6Hi1flma+edVxMmCvTHHVCc+Ctq
         l/P2vbk2Pzbkx5pGUGdQfst6ooyYgnNfHAGVr1AUnw0dlCKp+TIsVQ38tvlTLxS+V6/g
         Mf3VSIM+WEOXLaOME3EMh7H/w+ZLEcESN5e04hWKqWvcOfRsuSVuvi+ru4WaVMlRDfEI
         U6ibB/UojrCzn+8zKZitYPj33saHh1S3EoMxeb2eVPIQ2RGOgFqLz4idU+NEhIxJpjOy
         P+n5pN8c9G8XIFSCs3hPTG9YjxMkkdMQg6uQ+tVakNweAI1rrGbjJPIbbeqayW/3UZqV
         ctkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0zCFZAIH3fMsWWuORlimoo6Oi0VqVGcEZw3CPfio+OU=;
        b=fvLs0tewnxRfX0stHPlh3/HGE25IUDvSoEycLa3RS57WD3npV/eL4NWnis2RsDLn9Q
         2FK3m0NIrnJdRDUWrHq13/VUWIuLe6aqXIKASA0jpe8IaPGuLE0iTRkgb+MX8zeKZJQw
         6gGRzMo6O6jhG+PJzSdDJusWqWLhqox25E08JnA9hZR1lQD8c7n8t03Lc/QNtgKAaGLp
         yHRnLTwP3jGxJcAYdaZD8DQnjq+6//slZuflqxglZjNzDFocP9GMYlRewSLXCkgvaSN1
         G0IEYIhkisfFNHZlaF3wH2WheLLpDMm+Z4n6XolVAl5FJq1jY3hS2INrbo608EeDNMRI
         6QmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GZefpJAG+IiPS79gSAaeJ6Qa9EBR0EmsUnABqBDGzaGIF0yqY
	bQnYCELH9kAgflwPzEWNzDs=
X-Google-Smtp-Source: ABdhPJzXv1IvqmU9sHpXfxYgebjOtQxRhj8otvWuvrP2zbzon2mbVWFdtS8zVdAoBl283/5vP5Y+2g==
X-Received: by 2002:a05:6512:6d6:: with SMTP id u22mr1639111lff.386.1618473272624;
        Thu, 15 Apr 2021 00:54:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:86c7:: with SMTP id n7ls198697ljj.3.gmail; Thu, 15 Apr
 2021 00:54:31 -0700 (PDT)
X-Received: by 2002:a2e:a40c:: with SMTP id p12mr1079915ljn.358.1618473271542;
        Thu, 15 Apr 2021 00:54:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618473271; cv=none;
        d=google.com; s=arc-20160816;
        b=oSvurXGRrboo0WqA+LJvmvrHdcHvdLHa7fyqxEz/IZw/dIOXd3q9gbYQxW3+wsKtLZ
         Vu5+MTwkgTB6NkphqdqtC37n7i8bPTwrIdwjZlG6m+JRF3p0reGt4YoN4NG4FAWyZ42i
         w34bthiE49045vqNuSwwQeYzG/PvyEoECmIxR3pnCZ3AoDgLhOBcBeymhaoiwUxBavJE
         Y2mk6FQZbG05tET2sX4cK1DcK0UJ7HElh87zpEyo4AtIJUWO944AdPaJ5zxPPtVBa9rO
         i0bLAxwfE95PiSk3godZu5clh6sOdm3EUAu0B/XUrE/vKlL6DO92k6z6kxfN1zbEToVK
         df7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fQSaKqfHXsydzEO757KlFYiV/nEVO1igCa5PgxiPGBo=;
        b=qIvMDUfOsawdXa8GgmD4nm07dmhipgiHPgkf0YfdBnO+ntkGx2ruarMwH3XJK6tq9f
         5JMw2YgY0PVCzWTmPJ8spZVs0PyAoYzkpdxkkdIL0twF8ZX5jzBO6RT1NH5SWrGGjk/o
         chPpuIzMnvkCU4wDV+y8/he20mGvre6/C8FqTJbAQh7CdvDg2J27LmHfL2zMXIGk5A1q
         gCqxtJRPQU3E1GXPTKRJck0ZruY8XFqmpT8IHdAQsmGAnASojuRyRI6YV6U9oim7Tm5k
         SlmQPXgyvhcgmO+yWHYdKxhCLPiDCSkviqyHFTZ2EpJG06gFL9QIEHn/5x8OmgXQUD1b
         Quzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=pnJGXgH2;
       spf=pass (google.com: best guess record for domain of batv+115b914b7fdab25b019b+6444+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+115b914b7fdab25b019b+6444+infradead.org+hch@casper.srs.infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id y11si98837lfg.8.2021.04.15.00.54.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 00:54:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+115b914b7fdab25b019b+6444+infradead.org+hch@casper.srs.infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from hch by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lWwoh-008FsS-Db; Thu, 15 Apr 2021 07:53:43 +0000
Date: Thu, 15 Apr 2021 08:53:35 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Borislav Petkov <bp@alien8.de>, x86@kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] x86/events/amd/iommu: Fix sysfs type mismatch
Message-ID: <20210415075335.GA1954964@infradead.org>
References: <20210415001112.3024673-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210415001112.3024673-1-nathan@kernel.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by casper.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=pnJGXgH2;
       spf=pass (google.com: best guess record for domain of
 batv+115b914b7fdab25b019b+6444+infradead.org+hch@casper.srs.infradead.org
 designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=BATV+115b914b7fdab25b019b+6444+infradead.org+hch@casper.srs.infradead.org
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

On Wed, Apr 14, 2021 at 05:11:11PM -0700, Nathan Chancellor wrote:
> dev_attr_show() calls _iommu_event_show() via an indirect call but
> _iommu_event_show()'s type does not currently match the type of the
> show() member in 'struct device_attribute', resulting in a Control Flow
> Integrity violation.

While the fix looks fine I think we need to solve this kind of problem
by better type checking.  The fact that we can use the wong type here
without a compiler warning is the real issue.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210415075335.GA1954964%40infradead.org.
