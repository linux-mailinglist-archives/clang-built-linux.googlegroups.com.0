Return-Path: <clang-built-linux+bncBDIPVEX3QUMRBRPJ474AKGQEZY3LUDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4CD22B7E1
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 22:36:22 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id v25sf4772373pfm.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 13:36:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595536581; cv=pass;
        d=google.com; s=arc-20160816;
        b=qooAGQjoZuQHi9A4aCGNnA5Sf9VsHpM64gXQeUBu4f/CjFTlvHHvpb7J4mdxafkpMa
         SeUIAt8tZZ7RcgwCA7mXhrPx9d4XZ86m58mHK4E0ozdgiWkJje3LkIuQa+rFnLDZBgLo
         03oKLcbJUO+D6kbvEyf6/UuESR3kdWiur+NykZdgooaJ5sINQ7ZimXMfniPdqewp7nXe
         jsOru4XBFNN5xidYl+l/s4yoilW/yZs4GheL0TReRLNs2WhtkmZKFGLwiZiD1kPhQIr2
         q8+5UPt1RQyRb1E/BRUs6e6bPo5N69HJQKLbAT2BcyN0Lp4jISNq1WdQL1KmvCtya0JW
         /4IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=aBB3atuJHq71RY7zv4BxdomJzPNh3uZMZcivK3k2Jvk=;
        b=V3ZOZYLKXduqes4p65wgur0NhdZLgTj9yHGMjDncBrLIfIqqsl8zvPqBsdIc6CsWMw
         4AcSg96YocwjJ5dw7l6z4GBlKf+diawbcOIV2YFNFLcVkQEWkxFFiTNxHPHzaEth+tsZ
         nQdIf/X6rNMkgLXfDGV0UZuAaolXTQJFlqAKR949mLYG5NHfvDB6m5DKgIHVK/cLtdm6
         MpN9EUZKrSvyE2LoPlSc9nT8eKuEQyMySrumUrBdep1S9rvwtKkCuB0CGWDXHmFCzGju
         MSRwmwAhXp9CkIDAVzqhtZ7KOAxWpdnf7zbng6JpqDAqMFPyXl3xTofrf/5Da/hwMaIc
         FNIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aBB3atuJHq71RY7zv4BxdomJzPNh3uZMZcivK3k2Jvk=;
        b=nZq6VYZUoECQ29VMcckU9AyQGgO0u7+Tkw8C7rGyjWPv15n4ymJPWiKCVTVSYp5as0
         SxettfU8joV+Vcy/qNf3BrJt8ZEqFTjQ65ssLrEjJaAuLq4n9dSIrJSEx7yRvthtPshM
         x2Lw24A09plF4bZqb89+fzz08ChS+ktrIZNl4u7u8CMbGP9TIws9m4QZZlxRORVRVl7f
         UsDSxTotS19VfO+xnKqsQMNgbllH9WLBxekfURpjIJSYYBpLczQNUxh5R9Wpwt3lTb6r
         fvtmYRWuYzF/j2HJDQqRklruegzAHft866BjX//eNSSzpsGwfyw9D7rg8CYxPhyPI5Wm
         qakQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aBB3atuJHq71RY7zv4BxdomJzPNh3uZMZcivK3k2Jvk=;
        b=dlJpwYlj17w4mB7MSvB+ZQpUqBVJS7DMbGzb40dO806YmXJL3/Vvvk/JbegL1n5YHl
         xyl4h2C408/5NpoGBvnXcDOl4HfvGlLk8H/bs/RxpoZ500LLBVlhLnElMN1MRe7b84YY
         Fam2Zcvu3WdM/xZPyRB6GZkaHGn482sDwoB1FpvO6/JiNafUxcHusI0LswZtmlCOmKC/
         TseBE7RSEqVAKuh6oIdIskV8nmPSc0R8EqQRKEjlweHwfJAJW5l4JoV3KnN6yADhD2SW
         z42Kes9nPmTZ0K20hgNZO7dstJXi9PgFkSKM0IIM2Yk05/xqeQYOaP0ACpmr8wnvFjAB
         AtFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UaYCbxWT/H18ih2G9jN3jrXVxWhYJevVjVLfLscHIdWzAvW/1
	sYWI5SG/LRfK362mvufdr+Y=
X-Google-Smtp-Source: ABdhPJx3NfPymsBfack2XeA2YjoR1DfszrWXJhDGXbRxtx+yV1E46ZsH/auhGG5AgV4Ec9WDMgKXjg==
X-Received: by 2002:a17:90a:3770:: with SMTP id u103mr2217383pjb.102.1595536581191;
        Thu, 23 Jul 2020 13:36:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:684d:: with SMTP id q13ls1889055pgt.2.gmail; Thu, 23 Jul
 2020 13:36:20 -0700 (PDT)
X-Received: by 2002:a63:4956:: with SMTP id y22mr5749263pgk.380.1595536580750;
        Thu, 23 Jul 2020 13:36:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595536580; cv=none;
        d=google.com; s=arc-20160816;
        b=hV0r49h0cfhytgfqEe5Lz42nFeMutC1H01fEQBddbSXviezVrMZpKSQYeSNAnimYRC
         1uyBTl8E3JtfRj/knVjBO1It05pdaE1RwAQ1kaIZ5CKoi4wVo5ogdtU4hZFFGG9vK2Mq
         3Ni5MAXhZzif18ZQG28XQ+N3AjkRmr2iFclGQTpLp8SIjVmTN5rS3HClpIuMeaw0ZF/u
         RxduVhRuiT7LqYmstz+OC49oLEZy/QP6qyb4V0WDGEFNQuF52SWNrZtTCmHU9yC5ePHa
         USWF1ky2PhhuEYYbkJ693oJTXlmVYl5M8OsL9iWQQHOxmOe8oiuoDT7N6D5on35JPJO8
         OuAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=yXJqbaAqNc569abe0dHF+1w0HlLTVR5anA6ZVq9SfS0=;
        b=cG0rc8ps0A1oTtKdPNdMVRfpcyFjmB+MrhwkVlVzheaIqDDp0v6lJ7CrJPPgLxxAI4
         es7RSponM3YQt2+FbTlilrvDt10JyLil+X/qn2ZWbD8Xyng85pFfCfhVBs+X8MmzKWZP
         V+CYIzZm1kStYzAdno2Bg/SAO1dXJGSQM84Iab73FaBJ3H+hB2SZJjIQrqCLzphMuoJN
         /EdaApNL+xCrShdclOCkdDRjXH9Uikv7YjkL8uBdrmybU5w8tfhmD94tvrqiT4dOHF/z
         FZ9IZgkYQrxuqeCA+bsGdXMhmt6urDIWglE2y0kcTzRDoqs9KepayJPSkzqhPr3o8bGO
         fMkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [2600:3c01:e000:3a1::42])
        by gmr-mx.google.com with ESMTPS id q85si121721pfq.5.2020.07.23.13.36.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jul 2020 13:36:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as permitted sender) client-ip=2600:3c01:e000:3a1::42;
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 2715D2BA;
	Thu, 23 Jul 2020 20:36:19 +0000 (UTC)
Date: Thu, 23 Jul 2020 14:36:18 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>
Cc: ast@kernel.org, daniel@iogearbox.net, kafai@fb.com,
 songliubraving@fb.com, yhs@fb.com, andriin@fb.com,
 john.fastabend@gmail.com, kpsingh@chromium.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] docs: bpf/ringbuf.rst: fix reference to nonexistent
 document
Message-ID: <20200723143618.6be62996@lwn.net>
In-Reply-To: <20200718165107.625847-7-dwlsalmeida@gmail.com>
References: <20200718165107.625847-1-dwlsalmeida@gmail.com>
	<20200718165107.625847-7-dwlsalmeida@gmail.com>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corbet@lwn.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of corbet@lwn.net designates 2600:3c01:e000:3a1::42 as
 permitted sender) smtp.mailfrom=corbet@lwn.net
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

On Sat, 18 Jul 2020 13:51:01 -0300
"Daniel W. S. Almeida" <dwlsalmeida@gmail.com> wrote:

> Fix the following warnings:
> 
> ringbuf.rst:197: WARNING: Unknown target name: "bench_ringbuf.c"
> 
> There was no target defined for 'bench_ringbuf.c'. Also, the
> syntax used was wrong, in the sense that it would not highlight
> the entire path in the browser.
> 
> Signed-off-by: Daniel W. S. Almeida <dwlsalmeida@gmail.com>
> ---
>  Documentation/bpf/ringbuf.rst | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/bpf/ringbuf.rst b/Documentation/bpf/ringbuf.rst
> index 75f943f0009df..8e7c15a927740 100644
> --- a/Documentation/bpf/ringbuf.rst
> +++ b/Documentation/bpf/ringbuf.rst
> @@ -200,10 +200,13 @@ a self-pacing notifications of new data being availability.
>  being available after commit only if consumer has already caught up right up to
>  the record being committed. If not, consumer still has to catch up and thus
>  will see new data anyways without needing an extra poll notification.
> -Benchmarks (see tools/testing/selftests/bpf/benchs/bench_ringbuf.c_) show that
> +Benchmarks (see `tools/testing/selftests/bpf/benchs/bench_ringbufs.c`_) show that
>  this allows to achieve a very high throughput without having to resort to

But this still doesn't lead to anything useful, right?  That file is not
part of the documentation...  It seems better just to take out the "_"...

Thanks,

jon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200723143618.6be62996%40lwn.net.
