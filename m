Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB66MYX5AKGQEWHNSG7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DABB25CCE3
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 23:56:13 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id d30sf2648894qve.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 14:56:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599170172; cv=pass;
        d=google.com; s=arc-20160816;
        b=EhPsjoj9c/dhjoBZQk1BQ3ZlwQ3F897Wv9aKvXCmQJLJDKycRHo0mJXgyFx94PA3dl
         AsKwD+QNsACv5zk/+ui+PS3PCuGBZhal+WL115F1JqeC+rpxcSquWr54e8DioCO2hFCI
         nZ3eISNwy8mPhoRS++jKWszE8AkT5RWunGbm+EMBEqY108RKZ8i4MmL//epve68LToaq
         xixLqpZmRCyEQ0d8Cwxqc+8t9emdWnbgyxEyOSQrd50dDOx6jfzoiwa1F7vd1AARKmAA
         EA6id3FUx1fzLYALGpQ4EUt1OaxJpCzGYQUxTAe3kKrNnnwtjUVM0iWJ225m2ynWX6dC
         1w2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=r2zx/Ya/Sg5IPJG+4fDp7aGalo5NKsCyd3E1h+6xarI=;
        b=NnX1F265F+2IMTBhGERwhPaswWPTUdQhzpvGpPpU7+xuePW+DFnE0kd4/QO7i1FOGO
         c4fsxFQrZvz3yiu6j9U6a5T9kXqHZx9VVQ3xVR1zoXzNHUE2VwDJou9qIGdNe+JrZY5D
         Ucd8M2LZfgo6OxaEsgSo+5ZefcuhKNDJSZwS/Lz5Y97HaUeMObQuFuhtIkKHGVouaQ83
         mc3qexFT5nPkf+ZXSAEdP/+GWegMfeLEsYSR7GRq934lwyE54xYWJv3PkjjrGUqMBAPC
         +VWfrk61F4qik0ZtJJ/ADZvB+He1oMCwrgebGEiY5wIJNfUgRJ9BiX4Su7rDOV01Zia4
         t5jQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Seros2DT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r2zx/Ya/Sg5IPJG+4fDp7aGalo5NKsCyd3E1h+6xarI=;
        b=nrFkNnM3FEOAIArL3HtRPzyA4IhzVeJh071Awh+BK3iWvQZWbYXjuvUDow1/6dX9wZ
         ug0NftgtvQppFfZLmg3yT3ebO4hQ/6kQChp97DqVyhdmkX+7XRNf5mZdxSg9TFjXSe9s
         BoypiIwLvOGDPVnC04w6z6PMRAJ09ZcH5xlkO1iKICPNhJfGUVDWXRq0CZELuPGrmVuN
         QCPrYP9IEEe0oslEzdU+j964b+zgRMJos2x0julAYXc3CIF0juD+XJ6U3cpLZI/Ktnlm
         9eh+KVdWT42qA6Ia2ZDxHlHhMtgaIH2uJrxZ0M3LZALJNnBeojbjcRbEc5UEmmg0e/tr
         vWlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=r2zx/Ya/Sg5IPJG+4fDp7aGalo5NKsCyd3E1h+6xarI=;
        b=prBLCRRcDLMLGeUg80L6k/me83D3MrD4n+zK10j/UflmU5P3C4WqZ5RgU5XRKaxNVg
         3lz5Ift7Ad1G0UaWlaEYjsThnk9T9bR21QrHpCmlNsgsfnxYSrGIP9/ySrvdsip8pX0S
         TxC76ZHeJulyUD+ygNuCTd81MTd+PoOXEBZuyVERumktlH/9dxjYoO3G+1ifP136K52i
         7H3dhaBvXWk3eJTEZOvM5bCtjKi+k+SoSM7GnawWmFCTN1zwy7HA3GRbFfP0BT+LqkvA
         Xogdlg5bFIfHUREaE6xS28eAj7qMGJcQiSQnIsrAh/yb9Sfj56fxVwwIVuUYxGqNXAKH
         hzbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qZGbVR2//4Kh0ExMjJp09+cQf88EE7qkkE36xEUMce1YD9l3w
	Y3446RyQPskX9+9nFeB8zfw=
X-Google-Smtp-Source: ABdhPJzgmIFMbr3P1+wUv99APzB/nwwPYwzCewfdtVU/6VvlRmLK2KJekwdAMD99Ka6Hpo2QE8DBFg==
X-Received: by 2002:a37:ef13:: with SMTP id j19mr5278897qkk.184.1599170172165;
        Thu, 03 Sep 2020 14:56:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:146b:: with SMTP id j11ls3112380qkl.0.gmail; Thu,
 03 Sep 2020 14:56:11 -0700 (PDT)
X-Received: by 2002:a37:de17:: with SMTP id h23mr5547264qkj.368.1599170171707;
        Thu, 03 Sep 2020 14:56:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599170171; cv=none;
        d=google.com; s=arc-20160816;
        b=dYRyaLu4Ln60Jg+tSpykyaTRU/zfwVOgjaVpXo4SeDNfsXMPFLmqkcIRvEoNjc0jWo
         zth4ggBC9zjHRQCHy6b0THb8DJADSzrg0QpvTUHDLp2iuko0+qH3bARJCp66Kf383fHE
         jWJsSuOQp2Vu9PUvNkaBsBx3jiUg1MuhmCEEW8YLsiV0fcgdIp6ohfyPyWFlWxtN8VPs
         Jey7ftMfkZn00843aSDvKcjQ6e8CkJAWL8lhe3amY7O7n3PnY4lsiRtQIYD1JW9MqZml
         P88oReXCuLtsEBUvkJWMHjSLYYDcdRfOc0gaxgI5LyfCrCSMGzl6hueBud1/y82RIg0u
         EIRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+qkcq0KaVk7HSQBAkByrnKJ1sZBfvqUX0j4GLf7P4Ho=;
        b=MlasmGSf/rBKC4L+c9gP35XnRqTYlkf7SK2bipkmLxnLVBMjNT7d6FfwLMQnxnxS8J
         a3xsbsP553xz6ERSng/ChelflrSpuUTS0X0UW5avWovmp0CP5GRb2Cw3iOPJjjM/tktj
         aUb0daJaWxolI4kqD9yjFzo/6l+MUvkDh0ZenVb+xd+gqits0I3oouottOMLYeINQCVb
         xR4tMca7EuD0mC2lhBbNw11oDF2YVW2Cch19T9jk8W6lM8oxQUdM3bnXky3hWFcj3pjU
         Rp/uW/bh/cuHrjh5y+ZYchRjp15oZ4b9GvDRiKTPC3N5kanUzfhSTYtFQhNTJRrSFQUq
         D+Sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Seros2DT;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id q5si274298qkc.2.2020.09.03.14.56.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 14:56:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id l191so3190791pgd.5
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 14:56:11 -0700 (PDT)
X-Received: by 2002:a62:fccf:: with SMTP id e198mr5659849pfh.183.1599170170933;
        Thu, 03 Sep 2020 14:56:10 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r3sm4349799pfh.88.2020.09.03.14.56.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 14:56:10 -0700 (PDT)
Date: Thu, 3 Sep 2020 14:56:09 -0700
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
Subject: Re: [PATCH v2 07/28] kbuild: add support for objtool mcount
Message-ID: <202009031455.A305DD4F97@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-8-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-8-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Seros2DT;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
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

On Thu, Sep 03, 2020 at 01:30:32PM -0700, 'Sami Tolvanen' via Clang Built Linux wrote:
> This change adds build support for using objtool to generate
> __mcount_loc sections.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Looks right to me. (There is probably an argument to be made to do all
of the tooling detection in the Kconfig, but that's a larger issues and
orthogonal to this fix, IMO.)

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031455.A305DD4F97%40keescook.
