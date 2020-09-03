Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBJOLYX5AKGQEQUGGQBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBE425CCCD
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 23:52:38 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id m1sf3345329iln.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 14:52:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599169957; cv=pass;
        d=google.com; s=arc-20160816;
        b=gvgXv5JZtPbqbW3uVDkIYfsNjoB02ng/N5jPF0GW5T0qeQCC1ZK1gv/Hvx6HYX5j/C
         /BOGc0BKmIDigyy049PqOWCrcOf039ODDssMCp3OdR2pRQPkwX/eHzrxMEblPfFR0Sq7
         hu2wzIv/WtSgLTZZmU9flJl42YLsa7RrAM4WApYhu26FdkZwjU935caSShIwZnGovjHj
         /X0rSQv1pfPBL0HPWKpsQryA3zVHqX5YE81L9ZfGjp/jc4jMzlm0ASVT3yUa1ZJ7kzAr
         dyOUoizM4US2OY+o5YciMZM7DW31QKcBiO/+0qtq/EXv/3fFt+pW19lWQ1IfwGnJ5V1J
         1Oyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=edSkhGuzEA9OB6GtbOhCIiEg6hEAl7CiRLIttFINrb4=;
        b=Ei/yfX5Jje8B+y8jHsNv4fOuNDjXmr+A8JjlfH9FUfAXPop2eRV7g8IwG4BUJWoBXs
         VifqwKtxqfLmxlpqqE8BLl8LimYUJkfjTtS0remPbvmGpVkKVZiy9bYZ69z2fl7+vcAD
         X+opc/tHadQYvIqT47AO/GdsX8DEwUKwMeW9Pc1QvBBqObXGQRXySU0xOPxolaYl+O/B
         TxzMiwJWOQIRhtxnHAZe6sa0FAXKUEP+2tMN/pZx5ny3omAQu+2u2eHgf95vvs9ZmGee
         8PJ6bD2kfejFn3WOZcUQOVChziYcU2uOfACxY6BKDiz/94FlV53TAUUT0fdstecs8JEK
         zzRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KicJSqu+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=edSkhGuzEA9OB6GtbOhCIiEg6hEAl7CiRLIttFINrb4=;
        b=P94Z+CwI7TYk5FmGvY2yrM7Jd3831/jr2XOKyOh2w8BUlcpRvbrgetTTkGrBQ8g39h
         Gw7AsLyeuMbxtSOHVxd7ThzNwKOaDIpHdV7r2tw8wMsFGTpCCzq6BRfiqI32iDEMIOHE
         d25veBzTlAAJUXemSTB2A4mcwuRsfM71FKqjF5+vUdnYMou4OdF2jDv9YP19deReWv+c
         gfBSeGkXkKBrPVl/7OHAKtM292Ji1pLZYiFs/E8/NKYchyejHD8SlqO+zLj2lTGx3hEp
         6gJbftlUp+HrsKFhlo4Rtleo5VVpa8zBAhUxCFHKjLX0Niu6/R5qsGS9rjIdgdJTyaSN
         wPCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=edSkhGuzEA9OB6GtbOhCIiEg6hEAl7CiRLIttFINrb4=;
        b=ry8RMc70DESwMBLfR0O8zTwxX9IXjh4iK8xIvtCL3zeWnWmbQrQLR4kKa2y21JyMPL
         6WEy7ubaOm7rmlhqWgCBc1NFudQyOGhBUyauPtzP2X8YbpIyOzipPimZssV4FZYybGua
         fOE2d53hSHV8c3lOX16QnaYetpkrb1GGmHJ72eZyeyj+A+3LEWbYN1jE9qHfffkD5Gin
         mONMcXWkfSkxo3H8KxewEsu34fZ8FXlgsHgfeejmhfZNAy1je4/I2r6EbNUHPeSSnNkn
         jTSdYE9ruFwodh7W3S4DmoS4r82kJ0vgo5o1+2Mff2RyKFPeKBOUFJDvA6DzuFQgkIyD
         yCCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PONU564yD1ba27mHmHcYYpK9QVa17tZ2iarMPlsepMURwKjWg
	TiksGc65vSDx8z1rO1GwbEM=
X-Google-Smtp-Source: ABdhPJzzuWT4GnBfLBjbCpZceKENl8T+5i6hIPdunmy5NFtF2oF38Ob32B/aTJrJZ5L/QTj+inLL6g==
X-Received: by 2002:a92:7113:: with SMTP id m19mr5173545ilc.175.1599169957609;
        Thu, 03 Sep 2020 14:52:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c081:: with SMTP id h1ls1848460ile.4.gmail; Thu, 03 Sep
 2020 14:52:37 -0700 (PDT)
X-Received: by 2002:a92:98c5:: with SMTP id a66mr5275497ill.50.1599169957330;
        Thu, 03 Sep 2020 14:52:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599169957; cv=none;
        d=google.com; s=arc-20160816;
        b=ro59pkKyr6utbfJ4el31Bd5u76zcwR4T3ktqcJNyhCo31r/a0KzwxuwD+G3l/W+zxd
         J3pbNGDF76b4Ln7gxixMu4QwEBVPI8Y4HmtOtQWUVehvVomKYVhigGBX0ZEH7am5tHmS
         BummB7NUc8PTy2AOxBWn+1t8VAnBMWS8z9WHstYbAVuiXh1r9w87eb2Uqyt0S6sFsCmb
         nnle/4NChCUVU1edvdrlHO3iYCjEfVps41n1Wv/Ds5h7Q0V93Chb65modINkIDbnqsBa
         1gxEMrTW2uInA3E7WRa3Q7dLbb7JYGlX2dGgBcqYX6/wWSOVnAY+/SQmKC/u+jbFkOnd
         9tzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=niBSeaSbgvRvlB35MBxx98Nw+20RftQpbuI5pjBM80I=;
        b=H7rYeqt7O7TEW5zIncIIkowALcloE+JMMh0MoaPa4ni3+tYe9ZOLY5wF3Q5gtw/QsI
         RRIA4ORA2wFddze09kDtsT92giuhzF8rxUA3vBI+vId8b5zBjgAaNMgNSzktM6F5DbHa
         ZODCIChVoCMn9IL01LTvOqvveejZ/iMAZG8QaQdmg+EjoTbpk7iNxWOq1QIEZJkjv4mq
         TMoiYVf2S3LlLPT2G+tOYNQrCjSkyV6ALVD07jCHzDmjpw6SOZp2GH4XrEMPZAROjHH0
         kjhKZ46NuJ8l3PULK2Z9d4xIQCfDz6yOvlFl/ue5+q2DkAaPOuu9JuOH4/xJ9q18choH
         jsbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KicJSqu+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id h11si314776ilh.1.2020.09.03.14.52.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 14:52:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id n3so4273139pjq.1
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 14:52:37 -0700 (PDT)
X-Received: by 2002:a17:90a:f198:: with SMTP id bv24mr5394608pjb.117.1599169956918;
        Thu, 03 Sep 2020 14:52:36 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 31sm3746762pgo.17.2020.09.03.14.52.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 14:52:36 -0700 (PDT)
Date: Thu, 3 Sep 2020 14:52:35 -0700
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
Subject: Re: [PATCH v2 06/28] objtool: Don't autodetect vmlinux.o
Message-ID: <202009031452.FD826A9748@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-7-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-7-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=KicJSqu+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
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

On Thu, Sep 03, 2020 at 01:30:31PM -0700, Sami Tolvanen wrote:
> With LTO, we run objtool on vmlinux.o, but don't want noinstr
> validation. This change requires --vmlinux to be passed to objtool
> explicitly.
> 
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Looks right to me.

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031452.FD826A9748%40keescook.
