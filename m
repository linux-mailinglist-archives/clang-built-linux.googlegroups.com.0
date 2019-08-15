Return-Path: <clang-built-linux+bncBDRZHGH43YJRBIGC2TVAKGQE42DDFBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E2C8E7CA
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 11:08:49 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id x24sf190438lfq.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 02:08:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565860128; cv=pass;
        d=google.com; s=arc-20160816;
        b=c3EzUGIe15mhZCiLmL+2iGMILsXWac24m8D04mKjvWup5+Hmo3YuEqajuSmavBqSvj
         Ck8//PLloylIpLNo3EST4Dv39Sexk7JlnGfrqj6VgeMEvYXpLMxbK7h2ttrCAPIyiJ6b
         VUMhUsTKeQQUqwMw5AZMqj3ZOWiHUKIV3WaQWHpEErXxeemY17IgGuykCuZYlrXfMINS
         HTKdNyLgnyi2YUI7hO2TVhwYNzy6ujKIbDa3JpwHNv8bzyqcScaL94JLJMVVV3mMwNaQ
         Bg08KW+RklLbKZF2fGCmWQun6404CwCJlW7OGpbhhW6bQya5tZqkbYWAkpItGfCqSh20
         C4SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=D4zu0jlNVbwV/QJUvKXneOMTRJlavo2eg/kGd2MiWEU=;
        b=wP0iBtvk/vj9jHIFn3VXImVRWmrf4TjMdpUeV348pJjWzZ6GVXbx9WXqDNuYEMSOGe
         BswtaIJswI5gwuo/g5EUqG7VZKA2bLktOSfc9uYOcyVlrz2W7RmTwtKF/n29eMiuZYis
         BYVF4hdDuppnpnM8K5qXiA9fEq0UX2SBUG8i8uEF8sjWTVQeFjOxy1yfMJfysUaSwjsb
         h63tBNdaEwA6w2/A+EcGTQWP1Gz1B6JP+VNbw7rYPjwgVYY6tqQoZl52ClFpxk828aBX
         GjkzgBarVgnZG1PIZdmexzu9kmYHMfa8ymjmPBJD3ChruPTcl7GrKQew1Gzlcmj+D41w
         wH2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XlyDTQw/";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D4zu0jlNVbwV/QJUvKXneOMTRJlavo2eg/kGd2MiWEU=;
        b=SIRnRoPX6lbJH21z0zz6xCTlmbM/UVBPhdKhv87z/kLrw3zZIcyn5m59tWDQmYDI7E
         R9wXXRR0Oagbqdaj8cxitNkyZ0nWxrsznSvWw1TONNDNwHtNnfj1IzJxi5pJoSAaDqkC
         cEsPbq4j3EwnUEv+8ZS/4G5S5euqcj2Pbnwh/cvIDTL69TN8sqoKevUKQRzRtfUKPrTh
         v8dXzOrHN1L2SLaSQ09pk803muaPPPsBAHUEy/UGoxIQvY6xtBnG63OxI2Da9jH1L/Y3
         vg4O4ePm0xqCM+0/DV3q2+Gx/9wpTNbFq6CVDovD4pHKdlmLvsyp7/9lTncbz5352Qa/
         sDFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D4zu0jlNVbwV/QJUvKXneOMTRJlavo2eg/kGd2MiWEU=;
        b=S8vasLmqN4D10tlGkVU5mzHx+wzouiKj2jJlHT0f7Cg9ku9Z9RRoQ6lTICOM0d7qSE
         a0M9gIMLMAXpJ2QB4EBOTlXYBSWG4n3T4DCqx61D7kcWly4R1fqAZl4qaXmOCNrEDOPI
         rGgetNrNRGSN+qeCENOVGEJWh+ryfKky8C9et07Lj5XgGT6DbbbNeF/KSmE4TOAxErxK
         mKfCyYf0HwJ1k/F2r6TGJCDyrujWaO5tjXYvgI+RTKdGKdCHY/GUHlUg5b4ivU3CitKL
         De+qkonv4dzhhkOaX99EWqQJozNL+pgyNLlgDMRcs4xHmgVItfNmL2kdx8g4GSsk7OMG
         mZJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D4zu0jlNVbwV/QJUvKXneOMTRJlavo2eg/kGd2MiWEU=;
        b=pEv6Mbj9Tr1EEvH5Sc05r7XhCRS9L+rNscSXcGmQXwl3b4geWZgHMBDCZN2EHMCtsf
         /3aIS26flneYIXV19dSmJF17a9YahPyJquZ2D8/1ToaMN7HLvLcN4yl2SxyQlzU1ZzrS
         Odds4N4R5rxIzLfCNhCWM6W5rIDI9h36F779yCu/eHMm/hICqzkVZ5A397jt5WtTMikh
         2y38Km6EM8NyH2M+8qHSbbYN1ix4kYyH/KkCEDGZ8rNiSI7EgVjwg5mXZHkQujL2/0Pc
         xpwX069FM3tfPN3x1v15VicEDS1oIFJeaA5liMF6Vt09dutcXBLgv1+GdNTxWIr+Sd9n
         pYJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU0sRCzNSCQkX0Tng2VVPOSK5RcfvH8TdITMt23w14ZpzqIFsuF
	Y2mpfE+8bra9bFW1p9g6cqI=
X-Google-Smtp-Source: APXvYqyDLnjTOz6V8s1pYYpoDIytme/xgs+OCvnqSNVxRqKWaQiW3ddCwn6mDlpUy0oqgj8e8kp/cA==
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr1819471lfm.104.1565860128693;
        Thu, 15 Aug 2019 02:08:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:87d5:: with SMTP id v21ls560521ljj.5.gmail; Thu, 15 Aug
 2019 02:08:48 -0700 (PDT)
X-Received: by 2002:a2e:9f45:: with SMTP id v5mr2157809ljk.8.1565860128044;
        Thu, 15 Aug 2019 02:08:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565860128; cv=none;
        d=google.com; s=arc-20160816;
        b=FweFlpT6fPJkg2IVEKyjlaCD3vgSKLKS1PrryM1letyjJG1C9G+FSjHrj6hIWo0eCd
         8TyqnGI8Qypr9Sxm/CxzIRJHfS2mQoCCG61zNvaWHvFB8G3bJkkA4JWAqwOIlWRcW4i1
         7gs8T4hkW69ZoKhLBrVIxCG57ZoayvROBtUy/xWhwbfuHv1Ddp7T+szce8qYE6AHpcf1
         I0wjilNHGGhAL1p7Tpb4MJDPMO/POiyDCedpAUJK7OlGhmfrkkzlCLoOr+mpQVGS8vQl
         kONZZRHnvZ2Kmm4eUas/m5JnoNELQOu664T6eRQsDv/zAJSwulcwjZqJqYV38tkvH7zs
         yM6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0UE6srbxTSzeQEGUqQmtIA5ElC0/7wYx3fPkt29gctA=;
        b=GUzuwmUctmMgqhNEfbTZ+pRIjmIVy6YXB1BPyraPzLyiK8r/HIytTu2WccW2CS/SIc
         nwahVry8MymiKQaRUVSUkp6Nk1Ev7q367XLvf3ImIr9iQQklW8rA5UzEuk/im9DmMDUd
         GVx6pjLASSLFS4ecRTbRbMXo6uZiGly1aEskKIiYopRK1l+5ozgmqAJUSM4WLTiNxQUC
         BIfvsiZCVcKi5vfdHJkeUh0Dx/4gzTCzKvlj4Pz4r86yEefvSBqYstCVsM2PfuF72XZ9
         rnigrIm6mBWuk/wF/+Rp7fzQCsJJx3q9oDIwSxPfmzMXP+/GjB5Ay7bkP2FaZPEnI8hk
         HyJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XlyDTQw/";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id i21si77675ljj.1.2019.08.15.02.08.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2019 02:08:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id t14so1646789lji.4
        for <clang-built-linux@googlegroups.com>; Thu, 15 Aug 2019 02:08:48 -0700 (PDT)
X-Received: by 2002:a2e:9252:: with SMTP id v18mr1033100ljg.93.1565860127855;
 Thu, 15 Aug 2019 02:08:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com> <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
 <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com>
 <20190813170829.c3lryb6va3eopxd7@willie-the-truck> <CAKwvOdk4hca8WzWzhcPEvxXnJVLbXGnhBdDZbeL_W_H91Ttjqw@mail.gmail.com>
In-Reply-To: <CAKwvOdk4hca8WzWzhcPEvxXnJVLbXGnhBdDZbeL_W_H91Ttjqw@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 15 Aug 2019 11:08:36 +0200
Message-ID: <CANiq72mGoGpx7EAVUPcGuhVkLit8sB3bR-k1XBDyeM8HBUaDZw@mail.gmail.com>
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Josh Poimboeuf <jpoimboe@redhat.com>, Yonghong Song <yhs@fb.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Andrey Konovalov <andreyknvl@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Enrico Weigelt <info@metux.net>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>, 
	Shaokun Zhang <zhangshaokun@hisilicon.com>, Alexios Zavras <alexios.zavras@intel.com>, 
	Allison Randal <allison@lohutok.net>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, 
	bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="XlyDTQw/";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Aug 15, 2019 at 12:20 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> This lone patch of the series is just cosmetic, but patch 14/16 fixes
> a real boot issue:
> https://github.com/ClangBuiltLinux/linux/issues/619
> Miguel, I'd like to get that one landed ASAP; the rest are just for consistency.

Ah, interesting. It would be best to have sent that one independently
to the others, plus adding a commit message mentioning this in
particular. Let's talk about that in the thread.

> Miguel, how do you want to take the rest of these patches? Will picked
> up the arm64 one, I think the SuperH one got picked up.  There was
> feedback to add more info to individual commits' commit messages.

Yes, I told Will I would pick up whatever is not already picked up by
individual maintainers.

> I kept these tree wide changes separate to improve the likelihood that
> they'd backport to stable cleanly, but could always squash if you'd
> prefer to have 1 patch instead of a series.  Just let me know.

Since you already did the splitting work, let's take advantage of it.
I prefer them to be split anyway, since that gives maintainers a
chance to pick them up individually if they prefer to do so.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mGoGpx7EAVUPcGuhVkLit8sB3bR-k1XBDyeM8HBUaDZw%40mail.gmail.com.
