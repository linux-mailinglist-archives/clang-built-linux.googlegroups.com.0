Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBIOYYX5AKGQE7T46HDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FBC25CD60
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:20:18 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id h8sf3106450ioa.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:20:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599171617; cv=pass;
        d=google.com; s=arc-20160816;
        b=W4fPBtuNRehnQeiFiWm2bTS1Go8THsq63ppau5DvsPh656AZPMEYzY7RLzLR81KCaG
         DpCLNdP+hvVumC0StrIDNmLpxt0d6MMG+PmvxL4gNLjYfL7gzPw7QLQ+hgn6OxXhajQg
         MzVYQc6hoXuK5GQsrOZ/lXyekiX6ZGUjpWoJSUJJdUvQMcL5wCoshM+DbNJlzE2Yv7YE
         PFmTbdH9xNDJtMboaQfYnVBjwZ7/xRV6XJpmaX1+O2f1o7cX262M2nGPawiEG3+whC+0
         LEoktd0donfKBXvISMRltM9tQu5uQ/prJL8S3W6gtMOtvzvWO9f8jzL7Hm43F8fFxyhl
         JdrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=g7H5M5llRCHUWN5/aI2HZ+PwwqSW8ewU0mv3IblCKmo=;
        b=GHrezj3lEzJtgJfiB5DBqOuJcKYnhBjMxI9eDG8VxdnHU5ZhWoF/eQWoiFZOfmyQmh
         ThkvYHRqzpWqOBJ2zIPHSN27xIg13Z0jMjJsF/qrf1FlFzBZ3fQdNq0h+dDJnQa5sNLJ
         Te04IO1Nrx4ZxdLXkdb053JdEJ6ChQ+zCn98XV6KlRP+1BpF0tPWh/3n9KQeCWO6zcUE
         w6IICGT3LfKo3xeHOyh5l6ayB9zRbv2Nn+orKtJia5JE5lH35i510QRRkgU6IDhZxxhI
         8FFt/9eDc65alMuBw5iqoQp2tFXs+STRJGocuzumoFf1FJ8ceAsDHf9tMFUq8YqbW88b
         p3dQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=R+gBqR6j;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g7H5M5llRCHUWN5/aI2HZ+PwwqSW8ewU0mv3IblCKmo=;
        b=tIJ6dctm+96gErmTDo+YP3pqkIgGbDAQexL9VUIHlmtTNrRtUbhyHqTN8Nbp9byOhl
         pNFZIHwhxs03cwSCWYN3ExXltRoovJBH1jH/1JD87l9M16ZX6THSlfdUrlRqSUuzcVtk
         zNQXSGxWWU3loDJnoiMVvUBhG5HV6k9YDicx3JnkDd/E0CNk1ZMJXDHn2FcWSIorBt+7
         chSBEjMZwvzXqD/JLFF4jljO+6D+SzAF41djmLyoto8zDyCVKv6KOL64NxsjO+viUDe0
         eMwEL9Uocigfug5FvKe3g+5Qlr4PI0RM83WVPsMOmShSnzpH9l/xYweeY7d9WIJOPoVZ
         4WaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=g7H5M5llRCHUWN5/aI2HZ+PwwqSW8ewU0mv3IblCKmo=;
        b=t4AYhqDJR5+Wb28BV4ANJ7sM/kJC5dQkVA0R2VqKIH3fvZqLuJ0cHC5ETR5O+1qZag
         2JEUYudW+aWUVwIRqrRHHJey2mvJOEJ9jdAfOCJbGCeAuuI3ihkJ8YB5JyLRRuf5Ic/l
         9k5J4cT2ayC9xb8LMjZrpfqqP+FEtDQKCWQxyZcpeFQA4s9q1yGNBZ3OnQT7BWtGAMYm
         zrZ0q1yhnVeUngTaACpuWGatc2icNCD80dggBz8pLvcKmpIJEOwk/kSVBy94lsMxfOO7
         ExOli0X1eRuECeGfdNxdSY3THqZYXjbj6ugb8LKxgeJR5faSgvIj1wHaWhrpBWoEA7Qt
         JxRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532A+6udLAuOIKW6hlV4oNHtgvddbdtEH5WS+fDBt9nZLyl/1BG/
	IuoOFDToTDu63EdMUJzfMx4=
X-Google-Smtp-Source: ABdhPJyuEoFNbdKHHkpELX9J5kYaxVRlZFGHL4v952OhLKRyBG8wlm6/fUY4JyFzXsGrNFjCkRtk+w==
X-Received: by 2002:a5d:819a:: with SMTP id u26mr5089115ion.151.1599171617470;
        Thu, 03 Sep 2020 15:20:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c64b:: with SMTP id k11ls1005579jan.1.gmail; Thu, 03 Sep
 2020 15:20:17 -0700 (PDT)
X-Received: by 2002:a02:ce8c:: with SMTP id y12mr5542483jaq.53.1599171617187;
        Thu, 03 Sep 2020 15:20:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599171617; cv=none;
        d=google.com; s=arc-20160816;
        b=Lntwpllpag8HcVD20a+NGcvqvOAEIXpd26OeqgKBpWhbHx/8rIwIS4835twFZHPWko
         no+1xhIes6TnataMKEOgXwoypecO5YArbR1pxgdAmw4VZr2tJjTxIuNyzUUF51KR1mxT
         EBewd2T9x1m9YHjM6bSmH1+oesLWSnCmxVOchJZXw8VjZL0eUzYvQA3LVP74HnZhSWPZ
         a9A0creELUGUnceXl78yOwG1+dyJDMGzXACumABndASKYuXYDtRmhXcCCb21Zj2cq0Hi
         ZK450E9IOr70W7Ac0Rw0Eii4Duh0DqsTJJDVhtScxBECD+xypPQvFR5ki/TNFMOU/fGZ
         TvnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dmzINT6p66dX/e1LULkP+IK8q8rhLoHpFzoaZ62doLA=;
        b=hVGHCFgo1crEQ4ajBirQff5rIdSvcLej7pTZDieYbl77zEmTlDtsHJsQ4TuAXAsm+U
         +GFVUFZwD8pXS/rqNXo8jgNUXVPCSgdnYXn+ViiOBHpSYC1mYfAWBjlpIFPGEEbGaagN
         ooqohWs4UZ+XGRK0QIhJ66iB6Zx1f1xBd3eV/VoJDH8FhmsNxc514SmkACOZr3enDJyD
         JAhBINpAM2PMSprQRsQgJKg/rMrCK42GeK2IMkkTrI9rDAaWwMnjgkVt4x4x6GgwJ/An
         dGBBo7yPbtMs+BUSoG7NbKQWb7zAMmmen+RmA+nNq5IG8fkO1x2eL4Obltq64uCBGMeZ
         hbcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=R+gBqR6j;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id a26si317483ill.4.2020.09.03.15.20.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:20:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id d19so3218853pgl.10
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:20:17 -0700 (PDT)
X-Received: by 2002:a17:902:aa91:: with SMTP id d17mr5955717plr.27.1599171616614;
        Thu, 03 Sep 2020 15:20:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o6sm3294870pju.25.2020.09.03.15.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:20:15 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:20:14 -0700
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
Subject: Re: [PATCH v2 12/28] kbuild: lto: limit inlining
Message-ID: <202009031520.DCF0B90B65@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-13-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-13-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=R+gBqR6j;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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

On Thu, Sep 03, 2020 at 01:30:37PM -0700, Sami Tolvanen wrote:
> This change limits function inlining across translation unit boundaries
> in order to reduce the binary size with LTO. The -import-instr-limit
> flag defines a size limit, as the number of LLVM IR instructions, for
> importing functions from other TUs, defaulting to 100.
> 
> Based on testing with arm64 defconfig, we found that a limit of 5 is a
> reasonable compromise between performance and binary size, reducing the
> size of a stripped vmlinux by 11%.
> 
> Suggested-by: George Burgess IV <gbiv@google.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031520.DCF0B90B65%40keescook.
