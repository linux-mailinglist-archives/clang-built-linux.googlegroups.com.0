Return-Path: <clang-built-linux+bncBC2ORX645YPRBNFBQP6AKGQEAJGQNSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B44289A26
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 23:05:57 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id z1sf4406085oid.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 14:05:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602277556; cv=pass;
        d=google.com; s=arc-20160816;
        b=U7JZYspsG+wtmGAfp61EUiildPH/zvWeULSL8Aj5NxdWjoxWeHLfJwca/5MKELaRG1
         58LmHgYBl16Cx1rW8BDSW4TlxF7auVLHXDZtgmuSEOxW185uMI5QzB6Di+EJH7X7hU8x
         cy1hXciuDuRNvMrCfNaDw1BAYn2RVLTENVcvEllz3uG1cu7Dh6cq/6ORwKZzHmknTVOO
         bEHdRvuXt28I/vJKga1JhQXSc3UEZl3WPQ+IK6q5QX3JuzkBccqC5ZA1BM7x0bkH8Psp
         yJMb4KN+8m3YooNMa0tzoRZktKUOEloqx39gpe9s22wtHsxws+krFADXHJmowM48VCXP
         6iBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=s9IGtrfoDL3rrEYw5VFWNsygZYeM3v2gD6wc/llDkMo=;
        b=SdG6R7AqYl6Mx0F/VNMYAmH04mFKoNcw1dzQgkAuUkZG0Vi+OUMhMzbcri+Zo3Eiy4
         qIgvj6r6JaOtBYbb3BDVh6QlilrGS/yseULT3e9q3X08Du8e74FX2Jia5NarOg3sDwgV
         zloyXjKRuoaaoaoOreyCWEwY4i8ZHn7zkdFpVP9mrmbiogYysZPnwwn0QRAMyZUF42KT
         xxODxCp0Uqc50WtQze7KP49MLJjJ4C/xbFpuMTrx3q+O5rRQzlJuQVpbZDFRcT9aQazz
         i8EkSFi5Zp9Ou7pLuf96YLOdKkyiVq31YMGaBxodLJE8Ja12eYA5nOBfuSO7lbSh/4lK
         WLdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JoSdKxNw;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=s9IGtrfoDL3rrEYw5VFWNsygZYeM3v2gD6wc/llDkMo=;
        b=XXmjoRNzR8wGssUMIxIrQR4/rqUgO1ffHyjT9FzYEF8xvzuosherM2hBHGasrHebbB
         dDDJ658ZX5KkHD0+Pb6rWWMu3mGPyZ6DBMQGhnquJ3j1OWwxCdN0s8sXW3u9w/E65vDF
         qBEuWPQls7lPws7UIsdvFr79Uz/Ox0SNtZhcm+7++fj1fFf8B/yHKr7M39u2sezvlGO5
         PATop0C8Hi377HfwhO1q8RnRYCR1xmGKKNelE53W722j0LSvURo3g+JvvkwWB05+MORN
         Oghx5+hbU/jmyod97btr16Kr2hbJatMNiwmYb7npNZpsAu9SinUrLPiQCtjk652ysQ46
         qGFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s9IGtrfoDL3rrEYw5VFWNsygZYeM3v2gD6wc/llDkMo=;
        b=OoJYJ7dZhl5KOcblj35wizrUkKOFqTs1UdA/U3kro88mKVN17SkoPsYG+Dfz00CS2E
         2w3eHed41JroxrOy2aghRNrw2doT7d8Y89Bx+J9pE9N3H/nQ3c9XddFnwv0hKjAWyRFg
         q7PnEyFIzq4rLD03R3Q2HUvN3XLJu4u+XUSgGhybUMa+iVRbQi5ethW/khpTNUHDenK9
         fA6l8SdJFrrB0qUll4gm5U0SGIYNaUKVN1HUfF0j+MJ+DHteMlcNA+LIU86DDi+snc2R
         dE8YFTVqNwyUzKUqUArTvt32Ta/GRmnm30HcUKFi+t4HhEPwBpgOVPGO0KaZbwbMrliB
         T8ZA==
X-Gm-Message-State: AOAM530doirMhnoyMt3aP8jVJgA10maaR0dxqR2958rlDfd7ncpCaAyl
	GTbenfT64n+KHJ2Spv5E0Vw=
X-Google-Smtp-Source: ABdhPJwJPApqZ6YHzugD8+m2Bv5BzkUohmolgLuI4rGb8tf6D8G5m0MqDmBwpejCc7T0cjDCWigkiw==
X-Received: by 2002:a05:6830:22ce:: with SMTP id q14mr9949153otc.72.1602277556499;
        Fri, 09 Oct 2020 14:05:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4011:: with SMTP id h17ls2427391ots.5.gmail; Fri,
 09 Oct 2020 14:05:56 -0700 (PDT)
X-Received: by 2002:a05:6830:1651:: with SMTP id h17mr663053otr.23.1602277555969;
        Fri, 09 Oct 2020 14:05:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602277555; cv=none;
        d=google.com; s=arc-20160816;
        b=OqNmjKHp+p5xmoMUg+7CKe55ZEs90qZysSicWrMkBkBDBUcEYCgeesTPPPsAvZ1eOL
         yfeNcUlk1ExHf4Kyz1UCTOOppzboJ2eTAZ/2IAMsGi1EFTz1MdNvcBwpXUDQN/61ep7F
         szQtMCuliMMtl/72HEDVa44tot+vvjg/UJgTvn99uM4dCwPToPQcHP8q6r/BurItus1Y
         HSWgICLcoYFZYbzXG7PkGHXIfTR7oDgO7nBAuwjH5JACErIEBLqgdX4W/v14CCeZnYaH
         rqOzH+rDr9ASVV1NUtAgl9eCFcDSDQ9ugTn+5MmH0WsPRRgIibdK9fHBvtC2fqye5Ib4
         +kIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QXQaBaNS7A6eVo/ydORo8r5bdU1C9Le836RTdHwCBbM=;
        b=IZANcgexawDfOBPTS72o61zRFOnUTydiCcJsWmeEIXLnnsRM8LQcEgSF0IAk8lMgWn
         A2UG5BSsJkHNKnnphZsrgbTRjIv2LTIKBuKrqXU/3whn/TTjKUwkhQ/ngOa6CkzF8ZZX
         pDbXUOe8T93HQxYmo/m25Q+q6g0z8mYEPUGV8o7240dx+Nh8MbE4gZrkufq8/KdqUi+T
         F8VvWAJURrZ5++leoKNQOur5pxdBzIQyR3NgBO7a92G9jaFpBt1YVd0XOy2gAinGogcR
         WA1HKLeLC9fGI7zzo+8OHOreLLayo8v/WMV0as9SpcRFOO+EQ4SxDF1eykQ3oIPk3euL
         f9Xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JoSdKxNw;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id u15si1112585oth.1.2020.10.09.14.05.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 14:05:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id h6so8215979pgk.4
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 14:05:55 -0700 (PDT)
X-Received: by 2002:a65:64cc:: with SMTP id t12mr5047545pgv.106.1602277555126;
        Fri, 09 Oct 2020 14:05:55 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id t13sm12057753pfc.1.2020.10.09.14.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2020 14:05:54 -0700 (PDT)
Date: Fri, 9 Oct 2020 14:05:48 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v5 00/29] Add support for Clang LTO
Message-ID: <20201009210548.GB1448445@google.com>
References: <20201009161338.657380-1-samitolvanen@google.com>
 <20201009153512.1546446a@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201009153512.1546446a@gandalf.local.home>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JoSdKxNw;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Oct 09, 2020 at 03:35:12PM -0400, Steven Rostedt wrote:
> On Fri,  9 Oct 2020 09:13:09 -0700
> Sami Tolvanen <samitolvanen@google.com> wrote:
> 
> > This patch series adds support for building x86_64 and arm64 kernels
> > with Clang's Link Time Optimization (LTO).
> > 
> > In addition to performance, the primary motivation for LTO is
> > to allow Clang's Control-Flow Integrity (CFI) to be used in the
> > kernel. Google has shipped millions of Pixel devices running three
> > major kernel versions with LTO+CFI since 2018.
> > 
> > Most of the patches are build system changes for handling LLVM
> > bitcode, which Clang produces with LTO instead of ELF object files,
> > postponing ELF processing until a later stage, and ensuring initcall
> > ordering.
> > 
> > Note that this version is based on tip/master to reduce the number
> > of prerequisite patches, and to make it easier to manage changes to
> > objtool. Patch 1 is from Masahiro's kbuild tree, and while it's not
> > directly related to LTO, it makes the module linker script changes
> > cleaner.
> > 
> 
> I went to test this, but it appears that the latest tip/master fails to
> build for me. This error is on tip/master, before I even applied a single
> patch.
> 
> (config attached)

Ah yes, X86_DECODER_SELFTEST seems to be broken in tip/master. If you
prefer, I have these patches on top of mainline here:

  https://github.com/samitolvanen/linux/tree/clang-lto

Testing your config with LTO on this tree, it does build and boot for
me, although I saw a couple of new objtool warnings, and with LLVM=1,
one warning from llvm-objdump.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009210548.GB1448445%40google.com.
