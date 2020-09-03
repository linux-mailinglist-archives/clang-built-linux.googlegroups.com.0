Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4XDYX5AKGQE2RB5AZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4DA25CDF9
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:45:07 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id z75sf1927918ooa.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:45:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599173107; cv=pass;
        d=google.com; s=arc-20160816;
        b=j8opyiTDP9uYJyPqxqZjuquKadgR3PKwN3CVXswhBlZzvsgBrjmM6tGtLanrrwtNLz
         sUixy5P6oCNH+wPcPyl1Lo/hbuZl0KC7X7qCE9CgmfdwCe2jFO4N6tpOiHPkh32WwaJP
         yuW3ak/sLTJC/pSIboAUNjoO1ki+ir9xd545fGI0fEC4f0vXkbamiTYuS4UhnBjTGuMr
         y/0FG/8W2DvQ9gi0Z+l2okx+wCpJN8e7QOg3jTRATymc+ImpTUsISJxL7BLGZ0Z2jiiq
         VpnMhSjTu2chmw/WMDfdDyiNZgVl7/I4pnKc4ZTMaG4g4Fs7WzWRtZbftHE8imCi4Wz/
         Yz5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pENTpd2/MEY9RRcJqxztY1Fz03oCYm87kvWp5wA8f+Q=;
        b=BzB5yR3Z3UAm43ZuWuhMH5q/B3wKCisz+cNvfnK9T4GT6yBA//AZpi1KGQtHy3fcNT
         8KDD4FeU3GqpThreFvVO3XKjTPkBZMK97ddjl7Hicjo8qLDYphwLEY8W2VOGohkvhkS6
         MqO077Jd/j7ltBWPo+YRx1fTRRvIP87Vx9EBQxLFXj3sJrixmmvo2FA2NWK4214mnPqc
         E494A5s+z9chcw+85TGDpjla7b57fruNAM/Fmo9Xxr7iPropQ3+fete2Dx/R7POA2XzA
         0U9HcsIpEBRP9RriZ3tFI+c1DssmGMJbY7qf3GOx+rqbZyrxqUi3YIFEro0/Db0mKf5c
         fmnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EnTAgexJ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pENTpd2/MEY9RRcJqxztY1Fz03oCYm87kvWp5wA8f+Q=;
        b=Jd/Pf3OtxX1x2M/ZegpIoKAzXgDf8cHp+L3+nuqHosCgiDi8LzRNTj+ZC+kj4vsuEn
         WOF8cTGZ675mrkcidNedRGj/hHj1WneJi1/yzGEg46tE+XexO7YwYqUSJEaWGSJYyLHz
         QN6SyXqTFt/XsX3EYBOihZ3csyb1vxs3sjaBpsWWR7pUb+LGSrFXIon5P7XlwCNVaYiT
         +Aii60bov8DDpS8IgrLFwv0pKOwI1USH1BU3IkIKpitKydp5n54kW+CyBR6FB+bKm7gh
         a/xxVvUIzbNP/lNl7oi3dWCXcRgVxUV4+PRUZ0U5MPPb+92H0pnNNw03O+D/yFNKf/o+
         8+8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pENTpd2/MEY9RRcJqxztY1Fz03oCYm87kvWp5wA8f+Q=;
        b=Wacf5WLYy+bhWDLDTeuk+/jg2UV4dBYObYM+HyljAw8HEdmoSm6LV8HhMY2CV4Swiu
         XpLfPYyg/I8gXS57JYV9lrebgLNggz9kz4VYztct0TVeAQnzxeK2gZpLMuCT2eXKKr1T
         HPhrtZBa2sGGaiaF1jp0jLF6zTPLxmuE5OzEBGLdOczz+tocmOQhj63xp56v7TuN3JVs
         ddFhf+qGgAxN+3moLMPdwR4ib2jTiOpzzj+S16Ey1BGzcCMHH40IF/u8Ywn8b+5m495O
         C7Qh3tEaeuoDV5LwS00FD10DJ3HDnXr25FpZnPx+Dqz78DXMWpLzr3ArYM7QBGRCWCS4
         0M5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vP9HVg7nvMnyOcYM42WO9wliqihYGcCpZJTjVUxUt2nJKG2Cu
	bsxte4L2gJ2hPD0WrT6eOOU=
X-Google-Smtp-Source: ABdhPJwmxHXWZl1ZrE244Twz6QrgtRIIDZLRkKaVTa8UIxRIF9c/5L+lvqv09mCktAqhpq9UyNQorg==
X-Received: by 2002:a9d:586:: with SMTP id 6mr3512652otd.232.1599173106911;
        Thu, 03 Sep 2020 15:45:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:157:: with SMTP id j23ls1890937otp.1.gmail; Thu, 03
 Sep 2020 15:45:06 -0700 (PDT)
X-Received: by 2002:a9d:2ac5:: with SMTP id e63mr3460289otb.94.1599173106619;
        Thu, 03 Sep 2020 15:45:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599173106; cv=none;
        d=google.com; s=arc-20160816;
        b=u9SAtZd8OCySwmGo+4vUlTCx8hTBzccjiLfEf10C4iNx34oemhPvnzPeOsSxNB06KJ
         OGA1oXOarsyopR4lVge1fIpxQ6/88Wyq74JFZTvqOKT+5eVKZWS+eYWJ2+9wt/3lg/Xb
         /Mi1w0shNxz4qvKMbbcpriF8W6A7I1ZN7ALd7WS6rl99I0szRna7n1xm3ZruvcEJq2Y7
         otIh6JHocDTSuKJQ66ladFFWsK6fmAMoh6oa8JYBsBqn3lEsd2eJ2q2fJQAxbA7DFQGw
         Od5+jTHvvVXBjkQs2bX4dAT3X/mt5iJDUMJnpcTzx3MfjYCEPTupYHD0GDblmyqIUZrc
         FEvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eNUX/+cTGqvgJ3/bHzJkiLjPir7L2OtlnI7Fkl+Xb2A=;
        b=tclWgyeIrXjZF+r83wACiwkjyB1+y+ZyTyot8JJBJXQ0Y71am1/jkTAOgjNbDJv/2I
         cn0nIsssCHcD2S1FKPAFH0/v4uBNxOE+8PlfM4gmgMeIa3IouJnxLwc6s7IUrBNo9uPf
         Iw7ZiFgo7p5YUYp1nnlk4cNRSE1t34vvHjWrOgQ8Ff0dAkP9p7QkiSgM5vPQQWJa7TBn
         ZhL4NDcK0oVyIeAJCFZCThMpDWDSdOkDVW1HhE0Kz/587AeqcJOlmcx7Xz8UUyjardW8
         o1Kg3r6+qDLayh8GMJL65UE3HRjqggc0jvrD7BgmIh1rAJ47TBfM4+Me9gP982g38R+w
         JzpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EnTAgexJ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id d1si301180oom.0.2020.09.03.15.45.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:45:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id k15so3482230pfc.12
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:45:06 -0700 (PDT)
X-Received: by 2002:a17:902:7045:: with SMTP id h5mr6014077plt.4.1599173106022;
        Thu, 03 Sep 2020 15:45:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id bv7sm1885610pjb.55.2020.09.03.15.45.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:45:05 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:45:04 -0700
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
Subject: Re: [PATCH v2 23/28] arm64: vdso: disable LTO
Message-ID: <202009031544.61133BF@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-24-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-24-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=EnTAgexJ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
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

On Thu, Sep 03, 2020 at 01:30:48PM -0700, Sami Tolvanen wrote:
> Disable LTO for the vDSO by filtering out CC_FLAGS_LTO, as there's no
> point in using link-time optimization for the small about of C code.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Yup. (And another replacement of the non-functional DISABLE_LTO...)

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031544.61133BF%40keescook.
