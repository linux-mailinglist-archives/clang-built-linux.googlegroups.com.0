Return-Path: <clang-built-linux+bncBCUY5FXDWACRBJ5GZD2QKGQEQX5S5VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id CA57E1C6583
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 03:30:15 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id b5sf228882lfg.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 18:30:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588728615; cv=pass;
        d=google.com; s=arc-20160816;
        b=m9fj6tQ0cXyDL+B9o4kg8VSKhsApYGbmkTJd+2NeNOQSNv2LZcH44cPaaEywbo5TIF
         +wvBiEZYUUMBaCNIokj/okhIxETrj7F2tDCwDVTL8nq6hDlpxdn16U+uOekv2KmCyKIO
         VVmJze3LSG9zljIzjAFstIz+HQZYsy3qlQspG7vROq7SXAXTJmBV7Nb1v/cj+emtSmhL
         ap8Y9+6kUgOGFDAlNZ76NZf+kTTLFuuQ77abHpfUZX+RMxerTf5lBbxDizHEsyqzpvMC
         OGTZzLtxLTLrcq/una50+/xaPeLREjp8EQ/Lsv8lHDtGtXwKyE1QF3fHb9GIJrOHR18h
         OALQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=vtaSctbL20HuoGGtkcoGTy0IwEGRXhVjmRadiEgd/rY=;
        b=kAt5aeooYa5xi0VebKdj36dwie+Kro+Yx5ClLpGK/4YN8Moe1UcCP4ok9E2GrXCXbq
         DgLDQj2gK9x0Utk0h0VTOMa8PahIC2cFokac1V8K1sFFrXMDUaAZhRAfr/xGTiMLBa2H
         DwEM6CM35BuWeNeUPGjVz+Ighihn1NyhxlOOR2M+n29ST0JxQQ6bEMvMXnDvS9xO+fpW
         5tG1QTgTa+iCgAMoUek97V4E5MoulVYeK8HRZo2hJ7RMWcBQNuCXsBoOza3UaqGrNJjY
         EB4REM8BYqFm7Hl+q0iwEBCteXXWQCZX2c0UvAeovdyk8DV9GOvj54qHYJra9AU5ib4X
         Suuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=boz+EkaJ;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vtaSctbL20HuoGGtkcoGTy0IwEGRXhVjmRadiEgd/rY=;
        b=WYUPZwkVpvht/gYMheDFECfOvIQpz6MNh8ashY29y80/29bbxwa/kWl0Rh9viWibXw
         I2rTvNxvKxV1Bl9Drn/oUO2sRrYwh/rk74fiyPcBshXpXoh/xPNo6XGL3y98bWVr0EQP
         RfeU7MCdjlJ2Gmw9dolCKL4aA8BAHrUBVqbum144O+jqgUYmWzlyQ6baUAHLPnPAeIQ5
         Syz0RvCD9QRkEtVQPbreUc4tHxKXcKDMRWbADioZpZpIQe6M1sDrE/Bs/3w1AjAx8RXu
         17jLbDj6r0zAlpp3QOoVNx9dbrNw1Cik3W8PmGEISE0HTm1F50iXTFSEXZPE4cJIrsd8
         B8MQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vtaSctbL20HuoGGtkcoGTy0IwEGRXhVjmRadiEgd/rY=;
        b=Yuz082OKei0j2H1oOni5JOn0nckXFTxYtJUGwQB3TGlu8sSvEdrr1YcGrQVStbmhap
         DEr2XIHBdavHcbWP0Ec+P5jLxqPJOwgvZVuduLIJGRkzuM/pa0XHRnfM0E8PSjtJuHuy
         I6x9Ic/oezgoc4B35qiKz9ml0el7+s7IHbx+rsxOcp2HeP/ZvOvzkOKKwUu1lngVcygq
         Nvc7pOveSvxRUK5z9wxYYd6vlGv3p2Z0rUQpY2W47/707uF9zEMQti4g7eBFRQUHqaqg
         uqZQ6Kf55Hbctg5Yw4ekd7bAjasR/FFJkdxXAa8DjhX5k4fUXSz4LHSTaqYR+/mWAJS5
         QxdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vtaSctbL20HuoGGtkcoGTy0IwEGRXhVjmRadiEgd/rY=;
        b=ZuFzCQcmroXfp2wP8mGIG8dL3PG4+OfzwpvMExbCigvvxZYiDWx6y68F9W8djDUrfL
         ADSx23UfQ1M1+1oLC4d4h1wJiw19SuuJFCf1MVh3bmAJ5ahjsmg5pwNYhp5uSIXkrZj0
         gecnO9aYU4ZCsBFlkYyJZn0Vww2lkPI0kd+zAWIZCGGl82mysQjtBPASRnpJinISmWJ/
         D2FrDQWThsAzKCUMUgJWjCw38d6vcl0L1ipUYya1WV9sATsGEjMG+zSNtYPup1W60pXK
         uWqEfbj8CnVuXETHYjGg4vX7doBWnFLyjU7qEEQZF4MjhQV2AoSffUjRfm42xySckRGc
         tgVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYG8e/QcSS+1QRNS6oInQi093HoNH1Yh5eXdflYvRuQY6v4/SvN
	1w1FbkAnZLDTOPu2g/6Wmm0=
X-Google-Smtp-Source: APiQypLxSj0z9je/Z47zPmW6UzNzJeFw0S02VCnxt60rE+giN6kwKA7HpHj69nQwci4YG7ZiCLzfFw==
X-Received: by 2002:a2e:9e43:: with SMTP id g3mr3561770ljk.4.1588728615293;
        Tue, 05 May 2020 18:30:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9ad6:: with SMTP id p22ls91327ljj.9.gmail; Tue, 05 May
 2020 18:30:14 -0700 (PDT)
X-Received: by 2002:a2e:9bc3:: with SMTP id w3mr3442165ljj.170.1588728614546;
        Tue, 05 May 2020 18:30:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588728614; cv=none;
        d=google.com; s=arc-20160816;
        b=HhK3UnOiccMJg/Ak7fqxhLnqMGYvl0yH0ZcZmMWkN7PAIFApEbad+7V4IzRF/djh1q
         M+AkeneRopgAGqIgFbw85XJicVPAIzItAEn6vAQ7iBVehYL3oTCel+WA4JstyLjPO5xA
         ou+m/r1GCIZsAXYf9FKWqJIaBtTb6p/575Na7m6aFZ9p+osXSZDx1UcHVU1bguJ71KZL
         23w44hxlq/fHfHDTWaMygOza62YsiYwwobUqQXiGEpTi663qm9FuAIK3X6ZJGTPJKBLT
         aV4tvxLWNA3OUqxoAxuCa5SCWWFvpPyDthWiK79oo4IyYHmyOzMI0CkTqcRAcB73jYbw
         AQ5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hj8S2KHc69NEk+qWOC+GYPiuiIXNaHZxXAt5jsTgngs=;
        b=wVCXI9zo3nZk8qhBhkJCTvPtS38doiEuvfq9SmAqmbOJ7HYBAb3QiHiTcGwzGm423i
         M29PXKkgOLbteXQeYBKBgC31hFHAIPrzCeuDbZU4JApKxqvbonkWeZnv8nPDNqBf6AT3
         s1qtD0X0vP8O/Yivq9tP8UobiiyOTtSBO+hxyDmdX8WaNiT6UB7AtXKdBgxXFV8hAPXI
         sQL0P6F+1hWk/VSzmN4SEtXjfXxAFZT3P48X+7z+dq32tx1eTnWEQZtEzJbsj5eFjkI0
         dwh51Vm9betqtS+DvjB+s6M5C6c9+hwIpU9uqZJteuvppkzFufT716WcZmo5gR0OP/Gz
         mFDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=boz+EkaJ;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id x16si27852lfn.0.2020.05.05.18.30.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 18:30:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id 188so2979985lfa.10
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 18:30:14 -0700 (PDT)
X-Received: by 2002:ac2:442f:: with SMTP id w15mr3241305lfl.73.1588728614209;
 Tue, 05 May 2020 18:30:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200424185556.7358-1-lmb@cloudflare.com> <20200424185556.7358-2-lmb@cloudflare.com>
 <20200426173324.5zg7isugereb5ert@ast-mbp.dhcp.thefacebook.com>
 <CACAyw98nK_Vkstp-vEqNwKXtoCRnTOPr7Eh+ziH56tJGbnPsig@mail.gmail.com>
 <185417b8-0d50-f8a3-7a09-949066579732@iogearbox.net> <20200504234827.6mrogryxk73jc6x2@ast-mbp.dhcp.thefacebook.com>
 <a5829cb4-3759-6cd8-c9de-62e9813f00d6@iogearbox.net>
In-Reply-To: <a5829cb4-3759-6cd8-c9de-62e9813f00d6@iogearbox.net>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Tue, 5 May 2020 18:30:02 -0700
Message-ID: <CAADnVQKjZoaPgWWTKrADLv73VuYaC+WsdgNdo-h_mW1FW7VmFw@mail.gmail.com>
Subject: Re: [PATCH 1/1] selftests/bpf: add cls_redirect classifier
To: Daniel Borkmann <daniel@iogearbox.net>
Cc: Lorenz Bauer <lmb@cloudflare.com>, Shuah Khan <shuah@kernel.org>, 
	Alexei Starovoitov <ast@kernel.org>, Theo Julienne <theojulienne@github.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=boz+EkaJ;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
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

On Tue, May 5, 2020 at 6:37 AM Daniel Borkmann <daniel@iogearbox.net> wrote:
>
> On 5/5/20 1:48 AM, Alexei Starovoitov wrote:
> > On Sat, May 02, 2020 at 01:48:51AM +0200, Daniel Borkmann wrote:
> >> On 4/27/20 11:45 AM, Lorenz Bauer wrote:
> >>> On Sun, 26 Apr 2020 at 18:33, Alexei Starovoitov
> >>> <alexei.starovoitov@gmail.com> wrote:
> >> [...]
> >>>>> +/* Linux packet pointers are either aligned to NET_IP_ALIGN (aka 2 bytes),
> >>>>> + * or not aligned if the arch supports efficient unaligned access.
> >>>>> + *
> >>>>> + * Since the verifier ensures that eBPF packet accesses follow these rules,
> >>>>> + * we can tell LLVM to emit code as if we always had a larger alignment.
> >>>>> + * It will yell at us if we end up on a platform where this is not valid.
> >>>>> + */
> >>>>> +typedef uint8_t *net_ptr __attribute__((align_value(8)));
> >>>>
> >>>> Wow. I didn't know about this attribute.
> >>>> I wonder whether it can help Daniel's memcpy hack.
> >>>
> >>> Yes, I think so.
> >>
> >> Just for some more context [0]. I think the problem is a bit more complex in
> >> general. Generally, _any_ kind of pointer to some data (except for the stack)
> >> is currently treated as byte-by-byte copy from __builtin_memcpy() and other
> >> similarly available __builtin_*() helpers on BPF backend since the backend
> >> cannot make any assumptions about the data's alignment and whether unaligned
> >> access from the underlying arch is ok & efficient (the latter the verifier
> >> does judge for us however). So it's definitely not just limited to xdp->data.
> >> There is also the issue that while access to any non-stack data can be
> >> unaligned, access to the stack however cannot. I've discussed a while back
> >> with Yonghong about potential solutions. One would be to add a small patch
> >> to the BPF backend to enable __builtin_*() helpers to allow for unaligned
> >> access which could then be opt-ed in e.g. via -mattr from llc for the case
> >> when we know that the compiled program only runs on archs with efficient
> >> unaligned access anyway. However, this still potentially breaks with the BPF
> >> stack for the case when objects are, for example, larger than size 8 but with
> >> a natural alignment smaller than 8 where __builtin_memcpy() would then decide
> >> to emit dw-typed load/stores. But for these cases could then be annotated via
> >> __aligned(8) on stack. So this is basically what we do right now as a generic
> >> workaround in Cilium [0], meaning, our own memcpy/memset with optimal number
> >> of instructions and __aligned(8) where needed; most of the time this __aligned(8)
> >> is not needed, so it's really just a few places, and we also have a cocci
> >> scripts to catch these during development if needed. Anyway, real thing would
> >> be to allow the BPF stack for unaligned access as well and then BPF backend
> >> could nicely solve this in a native way w/o any workarounds, but that is tbd.
> >>
> >> Thanks,
> >> Daniel
> >>
> >>    [0] https://github.com/cilium/cilium/blob/master/bpf/include/bpf/builtins.h
> >
> > Daniel,
> > do you mind adding such memcpy to libbpf ?
>
> We could do that, yeah. Is there a way from BPF C code when compiling with clang to
> get to the actual underlying architecture (x86-64, arm64, ppc, etc) when compiling
> with `-target bpf` so that we can always fall back to __builtin_*() for those where
> verifier would bail out on unaligned access? Keep in mind the __bpf_memcpy() and
> __bpf_memzero() from [0] are fully compile time resolved and I did the implementation
> for sizes of 1,2,4,..., 96 where the latter is in two' increments, so no odd buffer
> sizes as we don't need them in our code. If someone does hit such an odd case, then
> I'm currently throwing a compilation error via __throw_build_bug(). Latter is a nice
> way to be able to guarantee that a switch/case or if condition is never hit during
> compilation time. It resolves to __builtin_trap() which is not implemented in the
> BPF backend and therefore yells to the developer when built into the code (this has
> a nice property which wouldn't work with BUILD_BUG_ON() for example). Anyway, what
> I'm saying is that either we'd need the full thing with all sizes or document that
> unsupported size would be hit when __builtin_trap() assertion is seen.

I think it would be fine to simply document it.
Most structures have at least one 'int' and don't have 'packed',
so they are multiple of 4 typically. Multiple of 2 limitation should be
acceptable for most cases.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAADnVQKjZoaPgWWTKrADLv73VuYaC%2BWsdgNdo-h_mW1FW7VmFw%40mail.gmail.com.
