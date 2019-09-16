Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBEW477VQKGQEGTK6ZQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFA4B41A8
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 22:18:26 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id z24sf281044lfb.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 13:18:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568665106; cv=pass;
        d=google.com; s=arc-20160816;
        b=NaxGxlglAIzRBiQfvdE5/RWgeBaTB2UGNSAgE1Z7G777SmYbfUPhd9NjjhAvoPUsq0
         Oi2eD65ypMVs9cG2ktpW9/qFMSs4dOqsBmWTEce87RXEnlJ09FSYf5nshM2YPxe7kb7r
         0F1Bxii4oFzb6JRfxeP/DAKFknPEblgtqfcHPjYs4P8pC6XYmRBg5wTKdTdval5Z3FYh
         y+qzhrOPRRjJiS/F2H3OaG4xrudDFQdZZiCx6VoocvZ+kbUIKLle5w82/Xrdo0lTnk2q
         75/h2iKE2hY8j20dg3daxUNIV8DsB1+6S7sBtIstMRluakxA5yqjza/u2Qlb1tjEkLtP
         cS6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Wo4tgvLYDKUpLq1n6uN+BDRUMyP9ARVWCNLfj9AI7BQ=;
        b=nCEoOCpqyeCtV9os7iIl6nMBbnyLf4ARVVuJAq+x85psnlyfwklCxC+3qM0x7Aqmcp
         sWpJwmFh6W+L1kXijuxMN+/dfGHm1w1hwbqdyiDUyl3xHMu2SqnRr7rF94xNIVKUtrD0
         g+Q7n6DsHN0tc+JYvcdNAAZL+QCve64ODHWLDFsj+lAV5tojdHb1OAZ9wKBpxWPy44m2
         3AlU5RYu2nIlzHoApnEcTF2EbsH+ZTC4AwErtO38vGXMdH0NR4hnYcv9Vr+cwjeXvR0u
         T93JBLJwx5/njxmgMmVzEuUinhokwX2z6hUYU/1okzee38aTSVChwVeI01VhMaSwy4v3
         RfvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RZ6erArd;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wo4tgvLYDKUpLq1n6uN+BDRUMyP9ARVWCNLfj9AI7BQ=;
        b=nArrnClOzKoY2SP/0TpIBFZZrNL3Kcat/LViegpC0nblMsrun5TGkX+88p6FfrxIE3
         avAdbBk5GRZw4iwJh+A/Az+3hvTTjl12GEb7FQcUBgnaSZg54wH88F3zIhmmKonCBLna
         pdXMYWnTlyOCOa1LW+aVEN7dhlZmfbc7RRd76wrbpcrZWmNo92OKUfQ7Q5arg/2kwQrU
         IMKRAmphaqqFcgxYQl92sNTjAs/QJJfUT7JzQNT6nkt1DBqoSX/JNWa3vBVF1c0nMbea
         bVhrHzm3cgTRUtymEwh2x57HFVK5li/ikkpXpgC2xKpn2q5scIV5TRRSIUvOWUwZtwHc
         ixWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wo4tgvLYDKUpLq1n6uN+BDRUMyP9ARVWCNLfj9AI7BQ=;
        b=MAuKOY4XIQ8zQDn6p6g6b2pawfCm9idrhpncgO2iJSpM52QpllrRUBuxG6mt/cCDun
         A8MWSAf0eTlYXn8rnHnnfyrqe4XAaOknwgVsFkwQ0y99BQ+xWjqcajoRm8BYeEQV9FLU
         B3QSDY7d8cYJd0c31DSUXVeH6DyIalSiiFXmRmtvE1oLWG9iH838okfZSzESXFzFSuit
         wJ2zE/jy2ZFwojzl0peRNKcxMgoDV7O7o/cK4T33/J5aWg5EBjRJ+plnInIXhNCMzEQF
         SyH1Av10v2eOanGA4dUMZ8auw3ZcSlWWG1LX6gpvkiSWQJRo0CMpWg7vrv7rgibT1v2Q
         a5SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wo4tgvLYDKUpLq1n6uN+BDRUMyP9ARVWCNLfj9AI7BQ=;
        b=Y9IwaXtdhhryPvHQgDJMa+pVXEr/J0hNuwoW25oOug1XCgNT0ceTpntlZcVFvUTDwN
         pn/qU14UkgrmkkqETBTPoKdFDhLW1hPbanWSYpFnSkBoL+5tizcX3CzEWgRHCgGj2mHF
         9702WEumvJmzEGuP2jPXkifvGWaBaCeKqv/ETBYI2ZWQGUALRSGH5jxunMr91qzxKUsz
         RDMfmDFBdjpOPHxNiSPlscPST7rJcBiZhUeMr8tyMfJAUpGhMh1BbZn25n9a19K90VxB
         Eqkg3r6DyDNUGSuqZNVS5VhOkmSLcX/4lg9yVhQ+ORzsvr3flPdxVLWih4laaaw2RfiH
         y+HQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVOeKisSBMnV/4wc1IGzaLVUOHiAusETqRVkAS7djj0ukbnKD3X
	iT+0rwZaa7+pdJ++39rCptk=
X-Google-Smtp-Source: APXvYqyJL3vT9H5BF4dj7vZ49pVQUH7pOj6TISJDE68DzZWr2IB7tsWiN9dkVcA+pWi+IEmOh1Ir/Q==
X-Received: by 2002:a2e:9750:: with SMTP id f16mr735255ljj.239.1568665106525;
        Mon, 16 Sep 2019 13:18:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9c55:: with SMTP id t21ls104522ljj.1.gmail; Mon, 16 Sep
 2019 13:18:25 -0700 (PDT)
X-Received: by 2002:a2e:5d98:: with SMTP id v24mr797011lje.56.1568665105936;
        Mon, 16 Sep 2019 13:18:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568665105; cv=none;
        d=google.com; s=arc-20160816;
        b=0KkdGsmgkVI4Xa7ZdHEcyIdocDRQfuFEh1HzOHsUN4+KT7Ri9XdlDvlT/97o9HssWE
         PvnlGKh2mH9vj4lIMQegC6ZGI9/eC0l8llCi1wgkcnfGFAdgGMbCcBOJAoLzU+AjINhQ
         DmNi5HgN9QyeEYxD3u0uds4Pg4PRPc55K8yu5GsyfFAUA8H4Sy86ZwBU/Y9pr/2xm6Xo
         Bc0wzJFdcg9cjZ68GWs/VI8w1ggybE5kPgRZrz1Az8G5Z2RWPF9RCyVoRQbpW6+jAIYg
         T0qz8hPRt7PZA45wnO9Diojk1Qv7G/ukOAsMsc1JZr493D1cgi02v0Wo6xEv0JjZpSPZ
         6Kcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QEfTUH7Dj5bEKXTFuGOQc+OAP+VdIgkp+YMXyKatLYY=;
        b=pmerVwW1VJTT0XmJJofgdOkCuujo6JWFkyM759GPBiGy0al+KbiZA3RDdPrhnguBKF
         ImBy8lAq/XrKHLkwJv0A+k12LcrljwRy68jyetNw+ezz+8Bv8rgRtn4diZmDL26jy6so
         bdNGKNrXxLAusvQaRA/9xOCCODKl++S0NEnH2LBUknGP2hmse437e3bZRV3lwWOsU5Ni
         X/KhW6hzYk5QxhxQrbfwK0rlIcbu4OOZeviDdJshI5kj+wBBVO8ezFud5Aa6LR1/Sx8L
         W8AAceY3ra0erEZpm4cMPEFk4ygvUqTBcsJDVO24tl+hM4frD5mW2dMx1vygtyQk3Eqj
         Nonw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RZ6erArd;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id o30si43331lfi.0.2019.09.16.13.18.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 13:18:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id c21so1421551qtj.12
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 13:18:25 -0700 (PDT)
X-Received: by 2002:aed:2726:: with SMTP id n35mr188114qtd.171.1568665105443;
 Mon, 16 Sep 2019 13:18:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org> <20190916105433.11404-3-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190916105433.11404-3-ivan.khoronzhuk@linaro.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 16 Sep 2019 13:18:14 -0700
Message-ID: <CAEf4Bzbsud6HPdOCswB6JyMNiQPCAhog3Qqe4-2oKZrA8btgvQ@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 02/14] samples: bpf: makefile: fix
 cookie_uid_helper_example obj build
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	sergei.shtylyov@cogentembedded.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RZ6erArd;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Sep 16, 2019 at 3:59 AM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> Don't list userspace "cookie_uid_helper_example" object in list for
> bpf objects.
>
> 'always' target is used for listing bpf programs, but
> 'cookie_uid_helper_example.o' is a user space ELF file, and covered
> by rule `per_socket_stats_example`, so shouldn't be in 'always'.
> Let us remove `always += cookie_uid_helper_example.o`, which avoids
> breaking cross compilation due to mismatched includes.
>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---

Acked-by: Andrii Nakryiko <andriin@fb.com>

>  samples/bpf/Makefile | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index f50ca852c2a8..43dee90dffa4 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -145,7 +145,6 @@ always += sampleip_kern.o
>  always += lwt_len_hist_kern.o
>  always += xdp_tx_iptunnel_kern.o
>  always += test_map_in_map_kern.o
> -always += cookie_uid_helper_example.o
>  always += tcp_synrto_kern.o
>  always += tcp_rwnd_kern.o
>  always += tcp_bufs_kern.o
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bzbsud6HPdOCswB6JyMNiQPCAhog3Qqe4-2oKZrA8btgvQ%40mail.gmail.com.
