Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBLGUYX5AKGQE4COMMTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8F625CD34
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:11:58 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id o5sf2609234pgm.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:11:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599171117; cv=pass;
        d=google.com; s=arc-20160816;
        b=inf+Bfl1wSXMeIkw0uM7ztcbPbYJO6BUBnYItjyz3q1kowNLgiE11lMY2Cm/G4Gk9d
         jr4g/cN6tRO1SPx2S3wqRJeW+ovaO2374zVt5O4Hngbc6LD9mdjt5f9EOqN4baCRcBOu
         /K5Bkgit8/5YAovtoFAgRParJGNcLUpt2iW+ga7I4bcEhpUaPJjf+l14YZ7Kb/f+5LkT
         qyczXG33icyaN/y59H51ZkMLU6LLTETkwoRFyYKyBMPmSv5a0RKoiKmJ6NK5/NteKgSn
         KB8GURlx9U7lFabDb/uXOLLrtV8er8n629b6eme3gvAMa5r7Pc4AkKlIw2n8bbCPfnry
         Je0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZXEBWXZtGTvJBsUNwsRCKdOGjIo222Yhs9YzfjOt6n4=;
        b=sRErx+6wp6vvFCf20S9waqiLK7ZV3Um300kTD8tZ6MyLgHb+MSvUOGNB5eV6BTRlpk
         HewulUQr+UoF5mT7UOQVBUNdQh7vux1NEGm41bz+AiEUyF8fJiZDkJ5XokKN9eMnmFlV
         HDUNpb9lBIpYRBPDtWULIQeLZVE5RyTxBugpFyGxCa+WfmoG9aclKo+zon1BVF3pKX8+
         r8+s5Q1oj/8lBvHKHG3MBqO3Uo1EBEg2OrE62Clz6O9uqUQ+kHsTHD2xKdTAOpncfSWr
         CFu0PGW/fFuyeTLY+xAMdkwP/mYPgc9UyVFcdpnG8oCNBITxEJN22lCwSWQ/aFyBtjt1
         mCVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IGPy3Ev8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZXEBWXZtGTvJBsUNwsRCKdOGjIo222Yhs9YzfjOt6n4=;
        b=b86RdtUJFR5S/ZhSmaJDVWRLoMinHjpA8S7zaXAYbMKch73NHS72oSfhqew5wGLJ3P
         r9nS21kMdpZbRkjqxb4Nmmb8eu8YgxjjzwpeL718080JR/AHo0dWcoES22hG6olmDMMp
         pyqcR6xpAd5/iJG9/Nqz3HykP4IiGTe29srI9yA75jny1on7V2UMgGoH8achLwAHhrLP
         bwb4xb2IjK0TCMLAFoEGo2+8FjqIuCVV5QZeMDYC7C37c6Je9ENTjWSQgbJiiGHMmaeZ
         NprAM/Bqk2k7vO1XndKOLqZOCXaEj8tCoMJ4aXwX400Ar1o89L1o0nfPgmHDW/YRmdOB
         adMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZXEBWXZtGTvJBsUNwsRCKdOGjIo222Yhs9YzfjOt6n4=;
        b=rsLlGvlGaN4sh/izgRggrYjSnZ4bhlDhCMjEiYRDl9ZgW8XDQAZOqPIYZDW5KYgxKF
         B6YsLEeT1KL+rQWS5rpJRwTwbDoAMt2UMaVFF+N4X6K34m3DQ0mDMi51AbMfFLOwroMA
         qbyzU2+hwNc064EqxUgtEm6yEb8GdoBl6+HKrxCFgYVoGSVivtKotdy4tLsxzlbwuTmy
         /U4iqT0fLu741q0L4IDJadeCIgUXRD53d/B+Vh0bhPmEbY3ixyKFf6XNh5B3LqoZ7C2m
         uLNLmIQRWxSg289+gS3C23e8uXK0Hf0iMoCjfrDrsmeQSt5qg9iCzuMRr21S8BZBwURq
         XTmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322JkRlGGcGGsJkzFt+xZ261sOCBZupNnUZOkGdN37ARjhr5FA9
	TTiRnAauP27ebFaRonmNxF4=
X-Google-Smtp-Source: ABdhPJzBqb2eul7P7Vnvs+0x8dQrdqACXF6qG3IYebmw4jeFU3XbQNoKc/JJGAJruvlQZ4nxtU0u0A==
X-Received: by 2002:a17:90a:fcc:: with SMTP id 70mr4981057pjz.220.1599171117012;
        Thu, 03 Sep 2020 15:11:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:774a:: with SMTP id s71ls2915960pfc.11.gmail; Thu, 03
 Sep 2020 15:11:56 -0700 (PDT)
X-Received: by 2002:a63:747:: with SMTP id 68mr4632961pgh.90.1599171116578;
        Thu, 03 Sep 2020 15:11:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599171116; cv=none;
        d=google.com; s=arc-20160816;
        b=TxSQoWoW/Pymhj75a1sh5LkPPrlF1WVNB1xGhavBsamfMEDuQLnwlVr4hEIAZL95SQ
         AlAM9fNbR0/2EarHleXWjhFgxigLj+RlddPePrMt1BcI9U/CPoA8MeYrvFcSUcKW3WaX
         jO0NxcOulemX+IBb2I7aE02Z2p/EqN/DChRzqVkMSEeqhlodWudckRU/l/2p9YBVdyrV
         nJrvUxjOWNnYSBsonDqBxx+WD/lV8kklysVP3IMoY1dmDRSdDryjseshFP7fzHObFpCZ
         fOiRkYziHHQs/mP8aF3ArkMX+r4371Y0rTb1a1dDstKH0h78LMdZuRNcmbkIiD7NkOwL
         fVyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5FkC7ZydcYZ7OvnDcVYU3cxvw/A+RLXuwzidT1u3ktE=;
        b=Dow1SwTF2CMnq5MnwkMpHig7mtOANePdMAJ1G0m2EPiryaPJ2EwSt9m0EHU+TOilAy
         gBwY7cFTmexLuJyiV9M1mxJS+Oj3c3g0+OMD61hs8D/FmgOKqnVxXZcFZ0A7dDsmeTe1
         OpfJk1RnC55cKW2u3iGn+7y+gNt2I+utq+u2Ab9DbTKjXbiZZi209UhPKOESPgPVsQ54
         Pifcopl1wSy4WjUS8ZcfSO1ORH5ytdHlhYn6RGnbPemljjuW3rxU+qVU1hSdMOp2zCj7
         5PAET1yiOYRUVLPLSQOBgQ8Hg3xnLUbqeUluGo75N9/TmlnKaG3JWQpCNZWjf0v6euHG
         1x1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IGPy3Ev8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id bg1si262063plb.5.2020.09.03.15.11.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:11:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id u128so3444795pfb.6
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:11:56 -0700 (PDT)
X-Received: by 2002:a17:902:d702:: with SMTP id w2mr6057532ply.53.1599171116270;
        Thu, 03 Sep 2020 15:11:56 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a6sm3721602pgt.70.2020.09.03.15.11.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:11:55 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:11:54 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 10/28] kbuild: lto: fix module versioning
Message-ID: <202009031510.32523E45EC@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-11-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-11-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=IGPy3Ev8;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Sep 03, 2020 at 01:30:35PM -0700, Sami Tolvanen wrote:
> With CONFIG_MODVERSIONS, version information is linked into each
> compilation unit that exports symbols. With LTO, we cannot use this
> method as all C code is compiled into LLVM bitcode instead. This
> change collects symbol versions into .symversions files and merges
> them in link-vmlinux.sh where they are all linked into vmlinux.o at
> the same time.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

The only thought I have here is I wonder if this change could be made
universally instead of gating on LTO? (i.e. is it noticeably slower to
do it this way under non-LTO?)

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031510.32523E45EC%40keescook.
