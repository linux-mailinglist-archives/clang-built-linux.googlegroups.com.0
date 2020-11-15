Return-Path: <clang-built-linux+bncBDRZHGH43YJRBYVSYT6QKGQE44N3PPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 551F22B34C4
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 13:04:52 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id fz1sf1847075pjb.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 04:04:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605441890; cv=pass;
        d=google.com; s=arc-20160816;
        b=IVly+rZPcIK3KPtmUAndujPUO09TiVj82NINpsF7PYA+hZwlP6ABsqeN1EjX69DJ0x
         NUmPEzto6iAwxbLBzYcTh/9vrzmKXl/mPFGE94cVwsyTMNkaRiW0DudL8tvvpJmEAJBo
         GzIVM+we87mtX7jV5SeYtty+3tnQlS9JTA/Uc09dlf/pAE3NqUIBtUh1zTRWA9M89dFA
         VcWrHJx/89U6zLDC17Hp1q4fKXPfLBYztTiHdeT0jvqEtwVxDyyhlpp4MkNpPZOBaCh+
         3U/pu2fwGTZhDFCqx74zgnNEzlOt7SMQyearAHK7x5KM6qSYnuHzJWUPYbIYIYAJjcM6
         Fnxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=LZGhG66PDYLAKmI6SRDB/R1xn8C1+OolV24BDxXijZ0=;
        b=DPzSX/2PcCT4Az2b/nZcK/SmJLoekpS6TaeWKJkurJIXysXEROkOJkoPtYh/dZfyLc
         ddQuzxyiOkLYO4bxUjT0GNEsbYNzI/MtLLOstKm98ONhKvIucifrTkUFzXipK8sjQMal
         ZoObLF3uXmBptR3cZyyLqMCUdw8Q2t0ya3/LPn2o17L7aEpH1SoccCiAx6R3c/G0utvH
         9H+CVJ2yheQA/qFAiAuqgDVbQusHa0iUVqxNgS0EFn2SM/IT0vsAfz6Y2spXmUh1TVLX
         jSGdOnF6P11VFI2hizGWNvM3w1Xr6zKnyZ5Y7x3mk5XUDf8B5vFK++hIksnXHbgzZLHY
         ogRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jjX2I5YF;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LZGhG66PDYLAKmI6SRDB/R1xn8C1+OolV24BDxXijZ0=;
        b=CDC+FJcswnHqTpytSCLMDO8X8PZ9Z3djp0UE885zl596fq89xJZRCcN/z0uNu4a7Rn
         ONKW4awGIZR1hu//mVsL+233xqtLBc36FZ6cjbubtvBZmdZBMDXEcHwVdfPRq8lkUhaW
         OB8okJpXJnwvZVZYAQ7cKE5R+UMynOEqK32uqM9YRT+wZDboKXry38RuIaRk28JmWQrh
         WKOdN2A9gFZViRBzElPoqFcEgSYh9MTg1esIYKP40hL43cMeSmxQXWuEtJ4hdBCEDw82
         NilmsNSsm16QmVqBf93s/7raChjvJyriE3tw6TMH44SSHp3QQWvWtX3gT1PcKv60bQ1c
         EVMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LZGhG66PDYLAKmI6SRDB/R1xn8C1+OolV24BDxXijZ0=;
        b=ZplY/SlW5778IMtYK1DZWONeVJJO9bxnNVlQiGfrcP22x84j5ZDtoKeafzB/PiMxQF
         DKs+8XJDZBgkD+6q6v2NdfmZbE7vtQADQCRT2xBkTHufLsrIYnFSRYW/ZvfoxH9MaE+U
         ww7Bk2t/Z76EFk8AR0Ea9rrhsZwas2qtQfKGfMM90Vo+f+e4wTcBlxXu2WNRxWxlwIKg
         KzMaz7NpPRp8WDwjilTMb5HnR5KziIHXvQIebiA1ekvbg1qlZQW5Mr5xiSmJ4LmUI9Qy
         DW+HwrFEHalGBsGtGfcndMY/CBeuJPNOq2+Vyywl9AVglON6mZ5G2y2C1xA8cjbkerGV
         6TBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LZGhG66PDYLAKmI6SRDB/R1xn8C1+OolV24BDxXijZ0=;
        b=YKHeA/HDV9vZEgw+UuErSoUP7ypu6syK/jEkhZu2HcazEQUKliwl9I5nno7BbIBj9l
         mloZpdUUZhbZu7P3aGeStxdcoAao5YXqoKH6if1cvNX3Wm4VDlNSWhBp9zPhrwHvACMq
         iPqlbZZenUnvBS/bt3bniDTtAWggBj4NijuOFXXaAPmduo+PnJEaDWgyQjrdJ2z7zwVX
         g2D40o+twZp3UYPfVwUmMz/3nnNfNRcgQZP0zXKTUZdHHpq/0kSKXUOl9ZCY2HnrT1x0
         ULlCQygm3yH/ZexXtdMCIEpcj5nuh19appOCjx4gANAkV2tKEhwp4adp2EqtPiQvKo1F
         Q6Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XnkBtmmtTsav4t8/QZKc7MObyrppGTp4OeXssQtbPMJwGYagw
	Xlaf3FqiOjBV7+fh5A5IyM8=
X-Google-Smtp-Source: ABdhPJyK7z13H29LA/6trzPm5O6Kv5ILhUkeF87ZfOE75vUETT+X+vPdcaAyaEpWBPg7beZAwiGVcg==
X-Received: by 2002:a62:77d6:0:b029:18b:ab12:de60 with SMTP id s205-20020a6277d60000b029018bab12de60mr10255297pfc.11.1605441890617;
        Sun, 15 Nov 2020 04:04:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd46:: with SMTP id b6ls5073173plx.10.gmail; Sun, 15
 Nov 2020 04:04:50 -0800 (PST)
X-Received: by 2002:a17:90a:648b:: with SMTP id h11mr11111089pjj.221.1605441890016;
        Sun, 15 Nov 2020 04:04:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605441890; cv=none;
        d=google.com; s=arc-20160816;
        b=YE4MR9owVG7XW+6ih/OgpYxPmrDJpq+D2Zat7gAHtleqle9QJZsp99LiN2T6Pg1bGk
         KfytUThOrQ75J4BM5Ynx5c1D8d2kLhA5dcRBg7N88EGWVLOrqyoU7ndEtlukb+hhJCgD
         6G1nSCCEEV4JYqBBlw5qAZyB7rJF9IR/MFIVUi+/Xpzm7DIYIX55eORyDDoAvT2o2fSe
         euMyG6I4MdOaUMXsoCiI3gMBiuJewIRvGtTAD/eG0U+uubENjshHWGRsvWYw/8vOg3t+
         C86OcgPOyZctDaVaDDp2tTwermJYH56HJV22m8MzcBVhsdVrmGJweA48RDX1DfwQ5qpG
         /1Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/P+BFJm9V3bCqq77piSFzAunqU+dBwl/J23GLcO6iVA=;
        b=Oc/K/Esq+mPLXfQZ3DCZh9j/jGuK1h2HL521DAw4F+OZr7SN9k3juWsXI7ec9SBjsI
         7O8x6pwVnsRTBMqGMJpjSH8p6mOos169lVCraKiJxCzh01R//eFhmJZUS6z/K7pGvRWH
         nMvSaZttOiuX7wDw45PNLB3TSSVMSctv1DaMIVf2PnrGs5fdu1duHrzy6sil+vcYEKwB
         QTWZ7uwMXgseyD1l3yKCc2XJznMkg5a4RIUDh568RJFlPaHLXLo962WpRdjgCEMjL5cZ
         yUnUQYuY39VHQtPbHUKbjCcxZc+IbBCvTZQFyv4OB640NYHnRI4UDviopXTcq1twJRE9
         IA+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jjX2I5YF;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id mu3si990622pjb.3.2020.11.15.04.04.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2020 04:04:50 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Received: by mail-yb1-xb42.google.com with SMTP id k65so13100408ybk.5
        for <clang-built-linux@googlegroups.com>; Sun, 15 Nov 2020 04:04:49 -0800 (PST)
X-Received: by 2002:a25:bcc7:: with SMTP id l7mr12597079ybm.115.1605441889375;
 Sun, 15 Nov 2020 04:04:49 -0800 (PST)
MIME-Version: 1.0
References: <20201114000803.909530-1-irogers@google.com> <CANiq72m=OK2bF2Nc-ht=ibNa2m6RcBCjFuhrv9kyoxE6yaMqVA@mail.gmail.com>
 <CAP-5=fV0xe-8GEbnrh8Y4C8nWK2E2mGo1iiNpRCs+590VwJVEA@mail.gmail.com>
In-Reply-To: <CAP-5=fV0xe-8GEbnrh8Y4C8nWK2E2mGo1iiNpRCs+590VwJVEA@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sun, 15 Nov 2020 13:04:38 +0100
Message-ID: <CANiq72kV-hcmf17_rzywuKXe5U0kwCOb52SihwZHUK0z0AsECA@mail.gmail.com>
Subject: Re: [PATCH] perf test: Fix dwarf unwind for optimized builds.
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Stephane Eranian <eranian@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jjX2I5YF;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Sat, Nov 14, 2020 at 9:14 PM Ian Rogers <irogers@google.com> wrote:
>
> Unfortunately no GCC version actually has this fixed.

Then we can say GCC <= 11 does not support it yet or something like that.

> This seems overly complex and unnecessary.

How is 1 condition more complex than 3 different ones?

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kV-hcmf17_rzywuKXe5U0kwCOb52SihwZHUK0z0AsECA%40mail.gmail.com.
