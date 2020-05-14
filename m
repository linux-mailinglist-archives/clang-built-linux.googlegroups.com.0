Return-Path: <clang-built-linux+bncBDPPFIEASMFBBMVO6L2QKGQE2QY73UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F45A1D245C
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 02:56:20 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id c6sf17543534oib.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 17:56:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589417779; cv=pass;
        d=google.com; s=arc-20160816;
        b=UJj1k5sPwSz/SwTAshaRntg7lx4S2q7Ux8jNYmCnCJVAUhfEOaBv19gdE/3P13yFuo
         ttInfKCeglgywYZck1nIQyanEJSWW2To4j/awLV7MhnDtd8I+ERb6+DQcx114UiZLqnF
         bYbJE6IIjGNGkVPkNVspe23JRjLf/bA9GvmuLwedL4X2oS5tmSNPQm4t6K8WEX9ShKZw
         XyCMbHeQRhOK2Zzfuw9gXotm0YnCWhxm8NxOpKsumwGIV93k0k8jPB3lbyRNFVBPDIHy
         jxPfnyhlsZdWF5ruymBjVJ1ztEcNbXqzhIE5Vnqz5QdC9ljp7c/WcqgohBUEUBY8sNz7
         kl6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FR2ABHIGRqVf8qyQgQV3fkn9iIdSzUWKcdnUCUL1kCI=;
        b=bl94/OZq/VLi0DEu5B5EYlFdJKB5rETTSeB+imdJECkY2uqVzPhetMXLMgcXHUhPhZ
         b7vDOfBiNunA5bMOwlNNabTBUO8HNG+QN78thgb1TITV96VwE3jecT2K/Pv+hqHAb0Mz
         UCFRDBSCE5H9yFIlYLeMMfCA6mvzlgeSkKEkj90OmjOqRuWGqa5xSMDOfO6gPOl+ujC/
         H+sVHa/SVa1UJprRX1RwrBjoT/Tv5A6NZqdeQv/lizQ16Sh+2MhMeq5VRp7yQY3oGiHg
         Ul5goshHHxr/3/3zA3LSnyIoQBCP4ISdg7KVDy6ifjHrMd29ksjgKVTngPbmDul49tiU
         yqaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OkxWSxaX;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FR2ABHIGRqVf8qyQgQV3fkn9iIdSzUWKcdnUCUL1kCI=;
        b=lpVPz8tnrFBM91Oo00vTVUBn316z/TmFou0ElulfGEXtJFpJR81wIsQ2Ad4S1rjb9k
         LPxf3xVNCoOAd9hP+rcFnwPgjpuddPNxJgZsGygBYheC6TwSTQkhAacTHVjA7hEGgR3Q
         VNb9KJKrDnqW+ftiCInHJHH0aVnNxM1HJu6QMYFmkbynYI1WVMZqf5FXrEgVI6U84Ulw
         Uwg7FoUcyaR4EitLyvjq8NQUPnawo1jAK9oE1EYkQ1RKtW1Yu3a8zl6X626N/ApBLdIM
         y1Zppph2E8DVXQbX2jmgv2vQXDSp4PXShMp01c2AnZEltXePhya+V2BgDvDDmQKd+Xh1
         MrPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FR2ABHIGRqVf8qyQgQV3fkn9iIdSzUWKcdnUCUL1kCI=;
        b=UJl4CIP2Tkome6pfCHhKFRRcGNixYDIE5ZSLWRfjn2rTMJuBYH10qII5Fh/Kz7uWw2
         vQ335Aftm28xqyIZ15HJpkEjYIN7VApLjOml9N+FOdg7o4m5jn25l1dmgJSsNP6MxMpf
         uC/3Uh3xosrfHhb1qQSXEqIWQMzdYnM7dCxOnuQuBnTXmufo4qgoU+XPb+4KCLNFuetm
         bdfWEeloW2gwhwftrJ1BjDlsGA9CwFpnNMrNNW/mxDnRuEzIJQkrpneKE2LxCitEMt9O
         gYX3An/NtpedC3YyN3uVXUwJnpJRm1ACjOFD/f6ccNpWeV0wM0PoyUE2yqTrZZeiqdkh
         jc/A==
X-Gm-Message-State: AGi0PuZxmfBaErsiBOR4ocDvKN2i8Uicxf+29NM6dWCVO5mbWvYjE5sC
	+QGzj/6rrxUmQDu1pbjeNzk=
X-Google-Smtp-Source: APiQypIlav4klMzcC/WgT7e07bjUIEX9mOyU/ntgBqXo+KfQ0HhPJ3DrtD0gP4veB1RgIxltfckP0g==
X-Received: by 2002:aca:5708:: with SMTP id l8mr28393748oib.93.1589417778939;
        Wed, 13 May 2020 17:56:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c748:: with SMTP id x69ls856682oif.5.gmail; Wed, 13 May
 2020 17:56:18 -0700 (PDT)
X-Received: by 2002:aca:fd93:: with SMTP id b141mr29463433oii.177.1589417778626;
        Wed, 13 May 2020 17:56:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589417778; cv=none;
        d=google.com; s=arc-20160816;
        b=H5qcxXDcklXeNLom5f5+QajAxchdYII9Lh8lh/kjGBs7HZAPxMadtQSiAkPghlPr1M
         LjJM5JN7PLma36ArVfkwXUgcVn569plCepZJuCYo5gul6Y1MPcCsG9266VrPtjjW89I6
         7E/YLq57UYBF2QqsWyEQzA7b4peG8bpGYixbHqFyO5x+quPmMzr5pj0mYRsTXqN9YHuX
         RqkxKDCEXi5ZVx7dgWanoMRiHKZ/uVw7bVzBo4SGJgDY3juDsJgXOfp8QU3gJX89UqEP
         +mINZYttE+SDglTp8f6I9QMfbb2y0O4Dvnc2C29SlFBZ2vHxJFi6QI+ThwXX9Q+MjXwd
         x2rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ywtmfrQ4bvC5mZcT0l80a/uW5Hgu+UN45Tyqwdq32Is=;
        b=DWqexBf1isnTt5Fu7gEw5+APbkmcEcNSYz8wjs5T1ld2GkCAZFhRVdGJzQUKaECjjc
         /nTTPvz8PSe+FLQa8RKQsTv4mdbBjKehBzkCMVpGGIl6arAbW7z3fzY16evUsCKcIdMF
         hBwUcI+QVAgtWEvUqAHaIqyGQ3QUPW2f7z4SeWS+ddOUi2Al7sQaifRKGFqgvmvbQjCY
         MzPWom1r/Q44sH3wXAv9APCco+/xfSEBhgGR9K2R4mGtlCN0b3jdh8MteBvsMOjaRosx
         gC0Ceu3FdapxBWud6pIT71LZH+odbOLAun98lPXYlvRWb4co5MZPNIdN+POSl8bmpKCr
         yWuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OkxWSxaX;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id s69si1684058oih.3.2020.05.13.17.56.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 May 2020 17:56:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Received: by mail-yb1-xb44.google.com with SMTP id q206so692109ybg.1
        for <clang-built-linux@googlegroups.com>; Wed, 13 May 2020 17:56:18 -0700 (PDT)
X-Received: by 2002:a25:c08b:: with SMTP id c133mr3006026ybf.286.1589417777831;
 Wed, 13 May 2020 17:56:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200513234738.GA21211@embeddedor>
In-Reply-To: <20200513234738.GA21211@embeddedor>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 13 May 2020 17:56:06 -0700
Message-ID: <CAP-5=fV=hQQvafgp8saDUadZch7vwtBsEKqf==qmSm8htq3Ugw@mail.gmail.com>
Subject: Re: [PATCH perf/core] perf intel-pt: Fix clang build failure in intel_pt_synth_pebs_sample
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OkxWSxaX;       spf=pass
 (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44
 as permitted sender) smtp.mailfrom=irogers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

On Wed, May 13, 2020 at 4:43 PM Gustavo A. R. Silva
<gustavoars@kernel.org> wrote:
>
> Fix the following build failure generated with command
> $ make CC=clang HOSTCC=clang -C tools/ perf:
>
> util/intel-pt.c:1802:24: error: field 'br_stack' with variable sized type 'struct branch_stack' not at the end of a struct or class is a GNU extension [-Werror,-Wgnu-variable-sized-type-not-at-end]
>                         struct branch_stack br_stack;
>                                             ^
> 1 error generated.
>
> Fix this by reordering the members of struct br.
>
> Clang version 11.0.0 was used.
>
> Fixes: f283f293a60d ("perf tools: Replace zero-length array with flexible-array")
> Reported-by: Ian Rogers <irogers@google.com>
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Tested-by: Ian Rogers <irogers@google.com>

Thanks!
Ian

> ---
> Here to fix what I break. :)
>
>  tools/perf/util/intel-pt.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/tools/perf/util/intel-pt.c b/tools/perf/util/intel-pt.c
> index f17b1e769ae4..b34179e3926f 100644
> --- a/tools/perf/util/intel-pt.c
> +++ b/tools/perf/util/intel-pt.c
> @@ -1799,8 +1799,8 @@ static int intel_pt_synth_pebs_sample(struct intel_pt_queue *ptq)
>
>         if (sample_type & PERF_SAMPLE_BRANCH_STACK) {
>                 struct {
> -                       struct branch_stack br_stack;
>                         struct branch_entry entries[LBRS_MAX];
> +                       struct branch_stack br_stack;
>                 } br;
>
>                 if (items->mask[INTEL_PT_LBR_0_POS] ||
> --
> 2.26.2
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfV%3DhQQvafgp8saDUadZch7vwtBsEKqf%3D%3DqmSm8htq3Ugw%40mail.gmail.com.
