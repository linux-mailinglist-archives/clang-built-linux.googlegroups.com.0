Return-Path: <clang-built-linux+bncBC7M5BFO7YCRB6VF3OAQMGQE3PSYA7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C01613246D0
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 23:28:11 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id t23sf1891470oou.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 14:28:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614205690; cv=pass;
        d=google.com; s=arc-20160816;
        b=jo5Nf7+WFYv4SmlovtD30lBoGzGgDfrkUYFM1EynJgSXqu5xhYfFIb7sgbqAI5RpON
         J3YGNDkNjS4zzcYBGn+eNJlcGITL4FsoI7PwroyL6a3TOUoaYy0H2Br/4LRYkjhWvEia
         Nmk+NkVBCQoez49dbXa62YN0IspndSVngWfNXMP+d2RMf6gmy0sRVHePTf1lE5Q18bBh
         8T5Y1MDZWl1W+qAYdFYaXwgb5ivX+Gu4Lz+MNUHvHyQMsEr/UtqWYZ2MiJ3FEb/Wcirm
         im1KTD8KT8894+79J1STR+v989qro97iquo4HMXrafmJ4TXpXicKOU7DP9OJwsvKlKyh
         o6zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=TgX0XgAxB8jJAfyjCwCU/y3XuDGSwyh/LzR63xD6hVU=;
        b=ZuJ0nCmwUnDoCtK6UlM6obJILFiLB/qf3varHgnZivRhzxf6IZygvOZ8a51I2sFWuC
         UoKylIRkWpDsm/4p51c0DmASOf7mMxg6C5LPHOaH+CsSV1YG3AQVIS7GuAJxr4kxWgD8
         z+eqT8uwRsgVqK3yWxR0Vl0ymTxgn8DqRLxu9YwN8Tx4sVBc6ZzaunFGiult+H+hUrMz
         fIGCuPwqXMNoG0QhwiLHRYTRfsxt3Dmy1OCSOxelZyurpjkaLTydLXUlQC5k0k/0et+L
         aRzJ8r7siaKJXVYIk+MLz3821TYR3k70ofosoFfvpr3zuP6tO9EgRp9/Jzk7efASgdEX
         HZUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ohs7z461;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22b as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TgX0XgAxB8jJAfyjCwCU/y3XuDGSwyh/LzR63xD6hVU=;
        b=P5R2y0R2p8lw4W+BmgkzsayGpjmX5hHZcpyKdQtJ+LYHMBgbgS6yYI3dTrCM+qm9m2
         M4+3VYaKp2DGObW5gtCKf2WNhZEtJqMo9Ub/OhnriPXijrWiSunXUzmVFftjQtqA1Qqd
         Vtz+mK8OdPpAqtT2P1zDPWxzuPgERV2J5kM5p+InBfTm6jYdELW90ibuPhkfYGkHAmhb
         0OA3WjjKvnr5t6sqglpowkR5NU2HZ376F72RZisZ9brT4hP6k3nYL+arrMavokw6bWT7
         /TJAIwRTXCFEhiH5MzIqWfYiYoYL5/pWnZ2swKvb0iBfcmJ5C1Z6xZWumEmxV5i0cZJx
         mWZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TgX0XgAxB8jJAfyjCwCU/y3XuDGSwyh/LzR63xD6hVU=;
        b=meSGKvoBmRSppzqirhbCnCbpeJCUvfiGVGy1f2Va9GvDbl2zic9XyQ6qBENr9q8WUj
         lop/rNvRgJm5OwtUUl+ql9MdBDy/zEy81uRcHY9DBxvmlzm/vsAo0IKLEvrCR/eG8jZR
         xQTuHJklEtHfpmN+hQHqbGE3uDduOtkSsXCUk627GU7SY21TVBzFmufvLOmxAkh48j9S
         5aslkrtvAHBYM4cIOgQw/SJtRhPeZ4lH6zSgwd2tKEQ+tbWG5K54CHsgZGZBQaw8FPyy
         DwUof8iNhRoui0naUDAGttfD3QwY3wYfpTMeTdRxtToSjUFGW1ixU9gEoNWJueQWKfAA
         6VSA==
X-Gm-Message-State: AOAM530+fTGQVEeuiWQaePBITaTUT74XOTyiMiZbIkzPWyLOVzwYOmKp
	znoPDUm3xg8lj6C9t4Eescw=
X-Google-Smtp-Source: ABdhPJwmG32cAQ9rluM4nzvLrsWuKPeWYUekVAp3/nG612uR6E1p6nY48uDVAi/nlInlJYEYskOSRQ==
X-Received: by 2002:a9d:2945:: with SMTP id d63mr20321948otb.70.1614205690604;
        Wed, 24 Feb 2021 14:28:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:bb82:: with SMTP id l124ls958957oif.0.gmail; Wed, 24 Feb
 2021 14:28:10 -0800 (PST)
X-Received: by 2002:aca:33c1:: with SMTP id z184mr130197oiz.24.1614205690167;
        Wed, 24 Feb 2021 14:28:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614205690; cv=none;
        d=google.com; s=arc-20160816;
        b=HkQ8aXtIgalnOHHbaBlUujX4zFOB722X2M4/E5kXcHXJozcJOUV3sgCvdhd3xFnNQu
         gOrZ8slGmaIhw+FdM+8NO8QhVxOEZnB9FsfLod3M/nxw42/NG+bklu3GYnRBs2Z8lGVJ
         Lcsdwe2wRGHKv9PabhH3TKtmLK24FEjGyIkrZHI/1LketvabO6wRmn3a8Mw/DL/OkzBL
         zOVd9Ejx+d0uUX15vyxb4YEUk+i+ACPaWnW/Is4gA91g/fi/DkvA+oiKRdf0RkdrkymX
         KdTasbTQsTb/0RQ8+3yo9WrnuiI3iPRvAirG+0MshwdLIt6IC6cCGLC51i2tCaeOVEfA
         9P5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ml1ODi0kbhU+05qftW0EgSQZXlvbak4aIvECP0XMcr8=;
        b=sGiJbfphXnZHxvS9ktdJkP8zr+grT44Ps8l7GMl4bkcFcuKINa23oHZg1ReLNF8oRk
         5Zv2eLswyi1E4NOrXUGW7jfZ/hq7wqeCggGVLxj6WdM9psMGCdb7nU4tNVzUH9rnt425
         X3WhRu+k+6avMzbClDF1XxLWxpDGcU/rs2JYskYeo2prqiZY3nAHqyzmEVONkKtMpPUs
         Uxp09cXPFXXWU38wPbo6DxsLgnRj/PMiRrf/a+XukPeKi4TsjUuPi5GqLSUeUVwBf2Jo
         qWLPAHwOVI2L9YlMfFK1SdOkdW2pvlWpvxYL+k3laFsD2bPrbcb3LHf4lG9UOXzgs3BF
         /ATw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ohs7z461;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22b as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com. [2607:f8b0:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id x25si240785oie.4.2021.02.24.14.28.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Feb 2021 14:28:10 -0800 (PST)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22b as permitted sender) client-ip=2607:f8b0:4864:20::22b;
Received: by mail-oi1-x22b.google.com with SMTP id i21so1823757oii.2
        for <clang-built-linux@googlegroups.com>; Wed, 24 Feb 2021 14:28:10 -0800 (PST)
X-Received: by 2002:a05:6808:1290:: with SMTP id a16mr4146086oiw.161.1614205689974;
        Wed, 24 Feb 2021 14:28:09 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id l2sm636595otf.44.2021.02.24.14.28.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 24 Feb 2021 14:28:09 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 24 Feb 2021 14:28:07 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-parisc@vger.kernel.org, Helge Deller <deller@gmx.de>
Subject: Re: [PATCH v9 01/16] tracing: move function tracer options to
 Kconfig (causing parisc build failures)
Message-ID: <20210224222807.GA74404@roeck-us.net>
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <20201211184633.3213045-2-samitolvanen@google.com>
 <20210224201723.GA69309@roeck-us.net>
 <202102241238.93BC4DCF@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202102241238.93BC4DCF@keescook>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ohs7z461;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22b as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On Wed, Feb 24, 2021 at 12:38:54PM -0800, Kees Cook wrote:
> On Wed, Feb 24, 2021 at 12:17:23PM -0800, Guenter Roeck wrote:
> > On Fri, Dec 11, 2020 at 10:46:18AM -0800, Sami Tolvanen wrote:
> > > Move function tracer options to Kconfig to make it easier to add
> > > new methods for generating __mcount_loc, and to make the options
> > > available also when building kernel modules.
> > > 
> > > Note that FTRACE_MCOUNT_USE_* options are updated on rebuild and
> > > therefore, work even if the .config was generated in a different
> > > environment.
> > > 
> > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > > Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> > 
> > With this patch in place, parisc:allmodconfig no longer builds.
> > 
> > Error log:
> > Arch parisc is not supported with CONFIG_FTRACE_MCOUNT_RECORD at scripts/recordmcount.pl line 405.
> > make[2]: *** [scripts/mod/empty.o] Error 2
> > 
> > Due to this problem, CONFIG_FTRACE_MCOUNT_RECORD can no longer be
> > enabled in parisc builds. Since that is auto-selected by DYNAMIC_FTRACE,
> > DYNAMIC_FTRACE can no longer be enabled, and with it everything that
> > depends on it.
> 
> Ew. Any idea why this didn't show up while it was in linux-next?
> 

It did, I just wasn't able to bisect it there.

Guenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210224222807.GA74404%40roeck-us.net.
