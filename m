Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBKW777VQKGQE674V4WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8688AB41B8
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 22:25:14 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id m24sf282700lfh.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 13:25:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568665514; cv=pass;
        d=google.com; s=arc-20160816;
        b=YF6dR3rjP2DMVU6v8xBE12AZZYvJ7sIABYr7S2DNYx1gpLYN3ey/PcFABHfNIMHadb
         km8zOvm3eDsU+f5DKdAFjUqIXphVIPOZL5Bq4t8/4HN8U+ZSiAnOKPFY31qBksRU08+s
         9X8AFmzYMU0LOdn78SHP6j1dXSvx6fn8U/PY6EME/HzT8VEPysiLuBFNPVUq9lX3SPtK
         m2YDlQ6XJwuia8zNhjU7p2i4CvzQ/FZX2RyrOB744kUVt8dBK/0NKtYBaWfH05eDsyM5
         wdIm6oYWsoCLcGtFpMZ2bmVVl+b4gXbFe8gvNgD8sWUBnlt3HB7J4BfeF20Ski0j91sn
         +hFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=QkAHQ5QlZD+AM1JyPypISEOGrKs4DosWUQhDqKey/5Y=;
        b=VxsEE0tC1L6b483/j+bc3Ueoym0I0eLR/MI71LXK99RK8g45JEriw8RA8citmR2cKv
         iXwuix+FgbN4M3MXs1GM/xGJJwHBSiyygUG2s3h3CTG7G+3GKuK7vjFScQO1wW1qt+BP
         Z2pbCLqXjQodwqjGJPIBKoPOX64TVcbAEIdcDHqIS4iNFBzuL4BiNdsL43I+ooIc/KE7
         kvmASpxgmJlv+wvwNOnLHJMUh/I9Eu3178aRtBxiXffVeG5XlEkqW2cH6HOg1griT2kf
         CxOu3WiPmUzL9Ok/QBiyiS55YRWxw79/9Pels8QYH2yyiSmJ+/zt/EqPkJec9w5wVRs9
         JhrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PPncx+oi;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QkAHQ5QlZD+AM1JyPypISEOGrKs4DosWUQhDqKey/5Y=;
        b=ng24x4XOQede8b2hFub2GPzf1fYeDDx6YizUOsemg04614j61EX/AZq5es9uayAjox
         jMQocHL5hr5yPZuB+TGEw7BMU+On4BxYoOrcEcK1+KY94nG7j+3ROJpJe8Wm61TctIYp
         B0P3Ah9D3fa+VXmHgAK9voPNoAATI8Cr3IggivqsWBby3+xqW7hINfa1gWxKCOrPOG4C
         HU9UZwcFp++evABTfFzA31BLS4CTXWq4PNBtpRFmuOMWsv2KiQ9i8VWIPEzy6tdOuDLh
         KhxQgd4LENvllyP6TaW5z9tktQ48jbAkw1mhLqWCVzYS1nstnq0iLJfsLLHgM5ZzZqs+
         O+4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QkAHQ5QlZD+AM1JyPypISEOGrKs4DosWUQhDqKey/5Y=;
        b=Mot7MA9pTRgA+4BvH3aHU/L2LZCC36q6fU5cO1ZAEpj2DyfXG0zEZyzWIjKefvR8YQ
         8Lbh6K9NchI0vJ7FxgjnmzPtKAscU0c54WFI8oHfINDioa7916b664qetZK5LRdQGv7z
         IpJITlzqnBEJIOCzB39BFLpQCXiZKoGdtjlEpbAw12HezbPF1zklE3UqlRWYfUhrye5C
         dJVuR97N0etqk4W5DWXMnvUB7PgKOncQytLFjeEaTTRStUWUYLnThIKXYW78amVEl6Xe
         8+RKEZB3j/M9tIvSQBenpTUtIRPmfZhqNbFGHuUd9oKtj1Y1jinLByap4ISoN68Cvm5+
         4N6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QkAHQ5QlZD+AM1JyPypISEOGrKs4DosWUQhDqKey/5Y=;
        b=iF3RymXYlVpujSWiUDexOdmtvUgGGXqP2mGmreDg51VT6GTbOj31+2hQqY0FiwuOzQ
         5PMV9eO6WoABoQhtFP9K6wuszJvYdhMXybc75LKyBWU0QhBUqK4gRWdAVbYS4gPlwZQ2
         fSr7JIHIYfVM7Zi22d9ujbl4+VbNRod+yalVrK+hno4oaKGfcbNMSDVQZuAomLtK4CoW
         WdevPAEPEIgimFOFfPqVqM/4I+5s9OfI08aXp7vBtwQmpLZx+rp3+NpXznH0LujHtsZY
         Lz2a2WizVzQ/oVw7GrvX3ie3mzRhVvyJ2Ubkr52c9DFBW2spLwewSo1xj7C4SYhLhoua
         jkrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVmX0OPkzprtG02y8JkZjT0ah7ujCHaeCkeMLAwlEfE2QSEyeGq
	RRBwuK2QfOmpRBRXBIPnLtA=
X-Google-Smtp-Source: APXvYqw27sjVg/696RYroKsjE1EqLxzfndQDxgiD50tIokKJPC7zxP5WAZVPClYWFYZPwU3Wg2K5xg==
X-Received: by 2002:a2e:58a:: with SMTP id 132mr728080ljf.132.1568665514149;
        Mon, 16 Sep 2019 13:25:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7d02:: with SMTP id y2ls11208ljc.8.gmail; Mon, 16 Sep
 2019 13:25:13 -0700 (PDT)
X-Received: by 2002:a2e:89ce:: with SMTP id c14mr767408ljk.145.1568665513570;
        Mon, 16 Sep 2019 13:25:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568665513; cv=none;
        d=google.com; s=arc-20160816;
        b=ki+0uLeX9Ma1PbACem8XfLrrDkyAF/ivOWtZ7sOqkYsk0G48G32WAH+3PZFPXsTK7g
         A4AsfdE3RU9Bw+1nFejWssljmpnpu7Ort3VxcY4RGLEVB3JXawj3Zcny+2vE0xllAfu7
         gIf22oUQtJhFNprUw/uPQdI7W12i9feVHLgMw9OnJPbuC7QBadRHeAUVpXxlZAMwcR22
         NMnUWB5AML7ONjAeBQM0b2n95fotGJVyfq8G0Bfmb+boOt/nTPECLUnaaWgqPw8FvPAI
         orKu8HByR7E5z7KyRTWkQu3OHEs03lG9l6JFkvpAamQa2+leHaCVgItENCb7i4UwCvle
         BCCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=C1t82i6X11aZoLXvnOKNwH+tVPB4SBAU5NMbxltAh8Q=;
        b=WlNAJeXxKbc1UQ8FJzw0YTPD6rtt9A0CUXwLpW2BV66Z+w3zT6E/yZiAI9SobRS8lb
         QbyVTak4LX9BnXaaUz34vPuaf0sxcKkGWqxs2pc4jaMH8JcOU2bFQIqm8W+WTSRSSryg
         kq/MMOUY8uk0a9CL8UgYVSR5wtbMROp4pC1kGHgYJN5Y7MIZ+kIrVQtuRxWuscL9RLvP
         /UGKC1L/9OIcgUtfhSNJCrmCtYB4tcr4jNzwGU4f9iVtI6pbIUZxNw+xWl7dK4VnB5Up
         WrSB/gqEiNBkTjTlJc/7xbk9KkJvl/4zXIvVowyL6QyKQLC/yW5BBDfWTYS1EOaaVQjJ
         OSzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PPncx+oi;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id y6si66813lji.0.2019.09.16.13.25.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 13:25:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id j1so1553283qth.1
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 13:25:13 -0700 (PDT)
X-Received: by 2002:a0c:e48b:: with SMTP id n11mr166604qvl.38.1568665513084;
 Mon, 16 Sep 2019 13:25:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org> <20190916105433.11404-4-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190916105433.11404-4-ivan.khoronzhuk@linaro.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Mon, 16 Sep 2019 13:25:02 -0700
Message-ID: <CAEf4BzY+5YQpfJBOVzBfSdZAEcCFjZ9WbeFng8W6tb4M_UwGVQ@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 03/14] samples: bpf: makefile: use --target
 from cross-compile
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
 header.i=@gmail.com header.s=20161025 header.b=PPncx+oi;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Sep 16, 2019 at 4:01 AM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> For cross compiling the target triple can be inherited from
> cross-compile prefix as it's done in CLANG_FLAGS from kernel makefile.
> So copy-paste this decision from kernel Makefile.
>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---

Acked-by: Andrii Nakryiko <andriin@fb.com>

>  samples/bpf/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index 43dee90dffa4..b59e77e2250e 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -195,7 +195,7 @@ BTF_PAHOLE ?= pahole
>  # Detect that we're cross compiling and use the cross compiler
>  ifdef CROSS_COMPILE
>  HOSTCC = $(CROSS_COMPILE)gcc
> -CLANG_ARCH_ARGS = -target $(ARCH)
> +CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
>  endif
>
>  # Don't evaluate probes and warnings if we need to run make recursively
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzY%2B5YQpfJBOVzBfSdZAEcCFjZ9WbeFng8W6tb4M_UwGVQ%40mail.gmail.com.
