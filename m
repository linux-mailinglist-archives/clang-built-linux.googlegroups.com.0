Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBU6YSCEAMGQE45O7LQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9914A3DBD33
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 18:44:04 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id o2-20020a05620a1102b02903b9ade0af31sf5598417qkk.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 09:44:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627663443; cv=pass;
        d=google.com; s=arc-20160816;
        b=B6oZ7GDDpfAZbJASlgevCC75JcLu8Bb/CHlslaP7TBlujei7l7PohQXJJSO3aWvfuF
         4gb6lsOzGBVvPiOSgJu4HR0k9YmMkr4AuihNB6A2lNj6QWajK6t+hQ4os1QDyH0Lvy1Q
         vZhP9g1mYKfgcNOJQTZK9jhxY9ljoEbd2hK2g1UhdXpoAcJnhRhYJPUgcSjCza/fGBxt
         RzeWl9rOyNUqjBoHRIyCPjw8F11AzjAhx/fjB+fmsunup+EqO5pPf16HcFVIloKLp2Kw
         msMNeP/zPtsrKkKjgpbnwXMxb0WX+yeUTNIk7oY2UJyixH9LCj/La4oSQXn1Jy9083Ef
         RKCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=F6OEbtUfjrBL8FoIj+GqV+vlxOyb+b/5g3yqqVccFck=;
        b=x6ae+zqgJEiodxPKckorK4kBaX1rGJ82rH75CqxTTWJE8eMgNRn+PvIBB/7YaEzly7
         uMWv5fO5u+35sfiB0XHHDlVubnQO3lk1Ee+64AbtBYnUFPFoQyeWUbYGT8vGkBzkQZV2
         g00EA7g1iKhKL3CdMb/OazV62DI877/y02E5IZWJbzLysRSqbiH1mbpzMqdsVTB7pYeg
         Qd3AH+6UQvGc3+eNxpLCRoJ9Qvo9cEKorNwcwVS7JHZFrZbhQwXdfJGCXl//muIgJqt7
         4+16vOxudVGIGe3GNUYOqnQTIg1WVTBJmT7p/EzAuGiXnjukRyEkOZe7ZIN7aH/Upxm/
         OpJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZYvKVIon;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F6OEbtUfjrBL8FoIj+GqV+vlxOyb+b/5g3yqqVccFck=;
        b=eTeXIBmsTJ0hQvArSpEeVjvcENu1sRqAWvCN++MbGdEQdAJteMu878UiJdBV7rpEwK
         WJ5TRRZD5wB83bIpckbx4CTcV8yIxTOtGdIGDeOpyRFpXIWlIiESO+1mXhjovsVEusZc
         J4VmhIwpu6wpA5pBG/pL2SXpnO+oUu25REM7GnB2IfemJH/vGgc2WkRfcP8tkOSZ+lc9
         LmRlYRgA/Sv6KLM2+o4w+0ER+AhmaSZQQX+cocZd1qVNU+DnAHjTwwpEopIKSiLSqc29
         L0O81/5l66cW9uTY29oTaIxkAgb4RmQE/oclP4/gx58Hxu3s8zxxWTJvvxcR2L0pPBlp
         ERiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F6OEbtUfjrBL8FoIj+GqV+vlxOyb+b/5g3yqqVccFck=;
        b=H3yo7hXt94pl0Zv6k82Hpu5332h9hB3kCumym123dRHEmLXCzkFQrz61UbMxe1jPtC
         ACTN8JLE7F5AZyw90H2V/6JP/AilPyo8qPnexgd/YjJVVZo8sdL+RMvilIg6jVUWG3l8
         qRe0mXG63Lk4dBLrA/ylD5O8Z7JCf24DSwnqdD93FTs1uyBwPZq+et9x2WUkT5XW0uEc
         6LIwJ4zK21GotJvIAGdQLhyS+TslYNoNfrwHj9h4Cwa2FVaAn0aR/rIs46eXmXWcUWT0
         np55LfyNl0Q2PSds5Hn9ZtnWLc2raX7VLQyDOdbd7SLGpXTxLx4/Ta46o4aGmWt1F4T5
         QENg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nBZ45uZ5leqzqJ9qkVdAwbZ6MgDrOX8ozoKVZx07xTqI0VbyG
	FZfVZYswK0vNOS5yx27ocWA=
X-Google-Smtp-Source: ABdhPJxZapFWCdEfIpIwyFIU7lay9Ng9rsZEKdW8FEohP9WVB2qrZs6g31COPxBYNW9ecRFuL1Ankw==
X-Received: by 2002:a05:6214:184e:: with SMTP id d14mr3676280qvy.13.1627663443645;
        Fri, 30 Jul 2021 09:44:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:240d:: with SMTP id d13ls1360123qkn.1.gmail; Fri,
 30 Jul 2021 09:44:03 -0700 (PDT)
X-Received: by 2002:a37:9cf:: with SMTP id 198mr3195103qkj.60.1627663443198;
        Fri, 30 Jul 2021 09:44:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627663443; cv=none;
        d=google.com; s=arc-20160816;
        b=WcM4FMrxjQFsM1/Yc0gkkLHvVijd//yeOOSVQkf/WiOizPqWkrSrNDZDof64GWHL/T
         aNWqmBiNkaB2+LtBPig2hBmpfHT0XFJkcff9C61+3sAXTLqXOjAZoUSybNoA8vj1sDRb
         TUg4QmlEJXNrLjBG/EHDqMQ9Cn6Twe0nsCtkDNinsP60R6ePMJ2rTA7wCX9nfEAEIXFI
         qR4/ABsgW9l7zGyUDp/3LHL0XXGLdSiXTgpRHlBf68k9qQsF5F8wMiMHwtSHdwHMUo+G
         uDf28pJUjUJcBiuIIdWfb5Chu0xTniQB9BUZS9rqbTpedbRcMREDSLb90cmAkv/LP1aR
         YA1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GyUcUuoM8BKbuKoLNn2u+7d0XlxZhH0DNdY0Zh2rhYM=;
        b=f+UO3WDWIGwAqUYpJ+6YjO8jNAtJYV+gP20ljT0JbshNRJW1hGKPS8yUs9ljI9kZwk
         NbQ2wEDLFxZrMLKjK1UG5bLeJICrUzTan3Yje2VBH3Q3KXIx36kNKtUbO3q4Z35nmC5S
         J5RY0HUHatPzfvNHPvQOWlzsNbAimMcliyhwYWmV630WarocxTnqwFhHGg07gXC7kA8L
         WwJRv+oDibgrl87rAf3pTLZzwXECDsTWxwDyoWMbtfa09amV0gJe9gQnzLRxDki+wMjU
         UfSskVAFdDh027LsNWSjOUiN36bT9fLVfaS52T1Z2k7+AOmAMTza+gaWzvksUw2C8GU9
         4mNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZYvKVIon;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id bi21si63124qkb.3.2021.07.30.09.44.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 09:44:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id pj14-20020a17090b4f4eb029017786cf98f9so4494961pjb.2
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 09:44:03 -0700 (PDT)
X-Received: by 2002:aa7:9541:0:b029:32c:cefa:123f with SMTP id w1-20020aa795410000b029032ccefa123fmr3683021pfq.24.1627663442344;
        Fri, 30 Jul 2021 09:44:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y15sm2952160pfn.63.2021.07.30.09.44.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 09:44:01 -0700 (PDT)
Date: Fri, 30 Jul 2021 09:44:00 -0700
From: Kees Cook <keescook@chromium.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: dsterba@suse.cz, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bart Van Assche <bvanassche@acm.org>,
	linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	nborisov@suse.com
Subject: Re: [PATCH 01/64] media: omap3isp: Extract struct group for memcpy()
 region
Message-ID: <202107300937.C7016A82@keescook>
References: <20210727205855.411487-2-keescook@chromium.org>
 <20210728085921.GV5047@twin.jikos.cz>
 <20210728091434.GQ1931@kadam>
 <c52a52d9-a9e0-5020-80fe-4aada39035d3@acm.org>
 <20210728213730.GR5047@suse.cz>
 <YQJDCw01gSp1d1/M@kroah.com>
 <20210729082039.GX25548@kadam>
 <202107291952.C08EAE039B@keescook>
 <20210730083845.GD5047@suse.cz>
 <20210730090054.GX1931@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210730090054.GX1931@kadam>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ZYvKVIon;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e
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

On Fri, Jul 30, 2021 at 12:00:54PM +0300, Dan Carpenter wrote:
> On Fri, Jul 30, 2021 at 10:38:45AM +0200, David Sterba wrote:
> > Then is explicit memset the only reliable way accross all compiler
> > flavors and supported versions?
> > 
> 
> The = { } initializer works.  It's only when you start partially
> initializing the struct that it doesn't initialize holes.

No, partial works. It's when you _fully_ initialize the struct where the
padding doesn't get initialized. *sob*

struct foo {
	u8 flag;
	/* padding */
	void *ptr;
};

These are fine:

struct foo ok1 = { };
struct foo ok2 = { .flag = 7 };
struct foo ok3 = { .ptr = NULL };

This is not:

struct foo bad = { .flag = 7, .ptr = NULL };

(But, of course, it depends on padding size, compiler version, and
architecture. i.e. things remain unreliable.)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107300937.C7016A82%40keescook.
