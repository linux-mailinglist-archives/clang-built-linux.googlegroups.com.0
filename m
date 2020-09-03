Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRHDYX5AKGQE3S74H4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id EC34425CDF0
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:44:21 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id h8sf3138430ioa.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:44:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599173061; cv=pass;
        d=google.com; s=arc-20160816;
        b=mgPYmxYVUdRPVgCWKFo3ikXokbyNr9Lq5yScNLiL1W9pImiIX94MImGMIKJfHvA6t+
         /yWcNbBrlHyGkN9rZ2E7cyFbD5pbALi5plFSQi0H6geDOSPap5vAOAMaESKZqbY+NUsC
         SePH0BdYKSeYM7C3i/nXEcfEk3zx9Epw6MxGytrIHjblgFu8VdoP4AKQZAUAzuZFc/8Y
         YWuC2NUSpKmhGWHnBjbSxn0gcDDPWEdyyC/K88qncIuB+u8mRIssmsCrXwvpn1IprCD4
         FQLyHUmChdAPLjQ8CAVi987s0kKYFgyz07SefdD/B/S3xxjT1oxdP1Y2RVKS2OUIwcBU
         eESA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Dxn2q9DYmpJbkuXSWsaIVX57HXyKI5PfyTgpiM8qTDM=;
        b=hblPA/Ft0gqHQNMM4OcmOQ1lwC8BlGKgQT5C4Il59WZ8U0bqNdIEwRROo4NmZTIblb
         w6RdpmitaZ9/bFcixjgt/2UY38eqYZAkso6NQKr6UEmNDR/sT0GyrIdwoLUZKqakF0rI
         BWvknTNkFYtNpGJxf1TPiGwJf2PfutzXUJc2k8uSjk2QbujMAZwMFKuJ08y17Ni2XtgD
         xCdGXrpY0TyGXIuBAtU539EDHh6up48CvD+tHSh6x2H/e3PxIwa0Wz7Y0W8k7zyRpaMr
         +DHqmdV4w2IAxdSOKC6Uu9oYp1m4Ps9s42tG1wl8KkUIoFVTp2Rq8PNW+AHIX9/TEu4v
         IFiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MBK0WKmd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Dxn2q9DYmpJbkuXSWsaIVX57HXyKI5PfyTgpiM8qTDM=;
        b=li5BJqorUvDniBpB/ZsTu18ZvSwrM8l36OuffE5mb5VKh3o6b9Ce7yUbuLKZgdlV3A
         VZ/IPdt9kzEceUdpykR6TciIqZn5bScT9SuxRk4OXc3RliBI7Vclw4WXuTeVIn/yzuby
         LVs61jiKlRGta73YIqH/TQqT9OtRqo7AOz2QguA5IOSc6STC6Pvr/CUlquKCsbM2RUpz
         x73cuKJjM3wndRfOWEEdwBRjos/4RAAUE+YZGB/8j270lL3IsFhlpIRDFnr2KUVk+PLf
         LuEp1UmWSTcGa8TqUgfK6BrIiDuyWtxiMRLE5FdMNZ/9eojXzdRY6iAsr+xXunGUigCt
         0i0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Dxn2q9DYmpJbkuXSWsaIVX57HXyKI5PfyTgpiM8qTDM=;
        b=YJ0kkgEqA9FYV2YcWKJj/BRnzqHgfoy9opdnPRZ7ErLtpAWgfrJIxFSpKJRrThVkx0
         YnNhTe7MwXMk5KDeUKcC2n+rdwRkvSp32elje4T/c/TkcAeIYP0q2VP9moc00wzfV6L2
         ffsbUT9/Kw1QJpPtfwCCpJb1MVamlqiTS8fU0LYIdv0mZiREt/WPnluuse3BKfXYECjA
         NgeC7i/4AlnycGDXSb1CzzirehfF5tbncRXJDzMMhnLjaq+u7ZX0MSWIOrkG/hhYo8aQ
         lraLjfTOJZpVoOwMLDQp2vl766LTm0/a1Fln+Kd3K0aTEho/bKdo5ZZqRFavbTprpgAA
         ym0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tE2Ns5Ulj3VMUyN04vHq7HYXf2TnzkfJaIO6rnLeAqxJuxmTm
	1e+UoiBOFW+VU9+xMSpmNyc=
X-Google-Smtp-Source: ABdhPJyxY9Ag4Oir7QVeH1hTa6kj3D25Wr/4kAj3mDmNxbQ2C8tWoY35BrSt18595HKxCmqH4bC0+Q==
X-Received: by 2002:a92:9190:: with SMTP id e16mr5481772ill.166.1599173060909;
        Thu, 03 Sep 2020 15:44:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:a48f:: with SMTP id d15ls1017406jam.5.gmail; Thu, 03 Sep
 2020 15:44:20 -0700 (PDT)
X-Received: by 2002:a02:834a:: with SMTP id w10mr5595131jag.63.1599173060581;
        Thu, 03 Sep 2020 15:44:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599173060; cv=none;
        d=google.com; s=arc-20160816;
        b=cwrYJgSSBaJJK8xvSxWj0Zv/6ksfMK8O+Jgyo0lAIu0sI6M7Khpb3vNGmV+V0sCcFb
         0aypc7Li+zlBTnUr2RuBMBkelGxAdDWc1xs1F0eeUFz/zX9A3l+0j8oxdjodZmuYu7Ou
         41q5d5l0ZlNiahxGZLOc+QyL1stPYqae03hBhKcFn6ZZOnG4t16bm6ERi7mF2KKN15vJ
         b5MaYfN1EVAsJaGkocJlRZizkQjVoRQMBwcs8n/Zyp3MbgVqSeM8cYbB2CMwi4uVZHmI
         Bf64QFzTAXWTo62BG3/ezSQ8gvnzt46ni69/3+NADA4wIJH4b31Z3+UcvtUsIv6x7E4y
         uC5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=52NN7zmbWj8pqq618ReYhqgg44nUMSxhK8Ic7l6b9IQ=;
        b=VH5XpVxf+PBqfs/jM5WS/BAmCsNflParqUNw30B8APYaj2h8jcGRmnh/N0S7e7y3dO
         6YCJb+o+RbMJVVkW5z6K6YxGGf/ZG7hZQQXqH270qRUrPIrK0d15Kc/aHrtx7OUpEHgP
         7icgBWl+d+EFCf+OOkJnCASjM1d94O2tPJTOHLtfMY+1cKwwoMuMeuMTmnTL3aQ/v7Jv
         PKJusiw6jIQwZA8KtonIVefQNLRIXR75xu8BspsRt6gWlQqc7DAxX3S9uAROXyr3qD+x
         pf/7+cpvxYvxWjcZ+kGbDnSR2t02GSzy5kSk1Aj9lj0MR60U4dy8H6a25My1FcCIR4BA
         951Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MBK0WKmd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id k88si336827ilg.0.2020.09.03.15.44.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:44:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id k15so3480049pfc.12
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:44:20 -0700 (PDT)
X-Received: by 2002:a17:902:121:: with SMTP id 30mr6136106plb.205.1599173060307;
        Thu, 03 Sep 2020 15:44:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m25sm4297846pfa.32.2020.09.03.15.44.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:44:19 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:44:18 -0700
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
Subject: Re: [PATCH v2 22/28] arm64: export CC_USING_PATCHABLE_FUNCTION_ENTRY
Message-ID: <202009031544.D66F02D407@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-23-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-23-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=MBK0WKmd;       spf=pass
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

On Thu, Sep 03, 2020 at 01:30:47PM -0700, Sami Tolvanen wrote:
> Since arm64 does not use -pg in CC_FLAGS_FTRACE with
> DYNAMIC_FTRACE_WITH_REGS, skip running recordmcount by
> exporting CC_USING_PATCHABLE_FUNCTION_ENTRY.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

How stand-alone is this? Does it depend on the earlier mcount fixes?

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031544.D66F02D407%40keescook.
