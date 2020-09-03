Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBNHEYX5AKGQECYYDGJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2A025CE0C
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:46:13 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id n189sf2494425qkf.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:46:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599173172; cv=pass;
        d=google.com; s=arc-20160816;
        b=T6NeSceReNNLfHF7Gj6WtMHrKn6rHQodLyvONgddPTwJZ/dcx0C5DZzSQn4EXEb+IU
         MaMlq7g8ab4OvM95eva9mxwS/y5nv0lOGZsL3kp7wjpMXR7boW1vCKMcqHhF34vf0Te8
         KMF2o8nldulC1CPacgDMDBYzvBZy8tbVWvEzZ/VMZHztH2Ai2P1rWsjHMbGwOhbMuazr
         t+t4kvc1g986a2Zv7YLI5/qvZ8WJqrZ8gdPnSqFUkBQ+Jt7yF4ZqAG06D5qOOO/2oBq8
         JxG1/qIXrRUWXPF/DCjjNwXKc8Ir/zMHnUewXW77oIT1Qf+7fxAn23B1pYGV0JSE9aTa
         xGyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zFy9Zqv1zaLKzoRmntHFuCAp5HPL0dLwuiT4LJD28O4=;
        b=KopNSDCQV0l2GzYb+D6YMy/EJzMd6KRvjy6qTQlZcinQFGOpEamTt8dqS58XoQes62
         Ij3kJhhbxG+lVjMVCnLoEjlR5OURJCO9rr+RyQyJXHBxcy0mny8ZjcV77G3osUJRkNwp
         j8PIXoHYveIgXnjXo1vZ4WEGlkaorbF87GdEYMIcTk25GwEtK+pDppxoNBRC8t39xSJd
         zfVOXWpwBRoGVS+1nWAHRN4vCE+mqjwA1yC1Geqp7j1gz5YrTORqAdU7oaDJOXhWhhZ1
         DsREkRLx5nemPZbLfvIa0TJJ+RKBapQpeUzd6zAiyUN6ROEfPW+aLUYNMoZWKSfkJQao
         3yAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oZ5KzCEi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zFy9Zqv1zaLKzoRmntHFuCAp5HPL0dLwuiT4LJD28O4=;
        b=Nosnzspu3rTUT9QfmcpyNte19ohIjxW0zA04z6dcZ0EI7IyuSPorVzgJEUgsDwNwQW
         yCYe6daq/ILXr17Rt4gJFcBtewVlHvgLRH3p5mMhqSmnKk+/yMAOKZWo0sbeCPWYK8Lj
         H7L20xTLU2YL6DUS8Zm7B3u9K+0tuHOGRlOnjFj6tUXlK93P9vFkYELdqjECkYkvICOp
         1DmpxbbE8NYu0/v3KbblqcaOJuaDdiy7q4/XxxKlRTSbZVCvbg63wHMMsH6WAWKRAN+N
         AlHPUdz0Zdz/V4GkcF3ZWFxvIkE86E0T6qyBA1uDMtOBecmHfyXte9daA03XDNI7S7wX
         EaUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zFy9Zqv1zaLKzoRmntHFuCAp5HPL0dLwuiT4LJD28O4=;
        b=HkmIFLMKkDn0fAfPuB8cK1suBamaOoWLISo2easRjFafPUgoqDa+NbUcDE9YbSyUUT
         nXbRKSsnvH2GVa+RV/evBLYAYVxqUDgKG74zpQqTQr8comOKzJdaa66o/gBq5TUF2UYO
         WC9afLbDrWEk8ICNnB4YKicvnEQNRqULXXHCBACExi7m2gnjo0AU35JinpTWUfFJTIaI
         L0oj7GyHms1MOapHWoFxFZ6U0dPCj2c1dat2JIPMvUbRyF/1RuTHfX/XXY8GBE84Ahy+
         gmF7Mfb7ihPAg9aFl3FdTmUnahLjevjt4m8X+M1fMlCGsizVoKUGzSx60JLFck/BYdgj
         IANA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530WynzYIiQVwBrv2LtPT3BjFDp2IM9lYaP5ZhDEWM2wyagcMtWw
	ypCG0BsA6ag7BsLar+rsH1U=
X-Google-Smtp-Source: ABdhPJw1gKO09XjF5KX5ltTQAghgA8Mmo2rvi5WLuOdNua0ouVlHT7CUFAb/Zh3BNp948mhYoJpH8A==
X-Received: by 2002:ac8:2962:: with SMTP id z31mr5823299qtz.88.1599173172252;
        Thu, 03 Sep 2020 15:46:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:226:: with SMTP id j6ls1713229qvt.9.gmail; Thu, 03
 Sep 2020 15:46:11 -0700 (PDT)
X-Received: by 2002:ad4:430d:: with SMTP id c13mr5058236qvs.49.1599173171939;
        Thu, 03 Sep 2020 15:46:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599173171; cv=none;
        d=google.com; s=arc-20160816;
        b=JQLjBryjdJpcRiboRw62JsWOXnioDjp3K9eO+XuqCVoBMaVRpzsvL/xrUaDfh30lKg
         wH9Pt7GHx5UIF8B0ZseiR0Qge2lk4zOUw7WIaRRwLQydxG2HqVIBge87OahyeE1cORjz
         su4Z0KjJ8mUJTg/z6LK3DIlDAEeJXy46y3H1Rds7TS6koMrIvYVvx0zjEiliK59ujJoF
         L3QjEX0qkLNRbifC79sSpZ2KxHTFvompg7RYPmgrmhMNrGYqFAznc8q8tJzkpvXw9uI9
         7xN33gLNkyGEJ2JH54hQ6JgRAqiRriPTQLC5csI0RoNBYv9R1qT7q96e9oubIjC94aWo
         98FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5TqmD5EyVPuB9TiyITqacSmLzI3cDbmlqWUeyi+ujCg=;
        b=FW8YxirLNYM8msmJZdHE9IPVRMyOIjTc8PzlCGpl36wUIH7j9FpUtOEUC4UVPK9LRQ
         ItoKGJpKaeDsCvrCq1ntaRHw3ebbA0xhZLDSc2aVH21SfTXsZGjP5bwpFV3VzQ95cWWC
         UnEO1aQ34tG15WzWvI/tEci9bJ+tRiLFfx2BTDS+vQbYTM39X2+WpTDjzrpbzZDQJ3WB
         K/1DesHFz8KJ/qhmZInfKgG90MU4OE7TP2I12BWk4rwViiHq28mWAi4ZCsfPzdtgP1T9
         2+H7xBTT5StFAUGRs+2lcWfv1S6bwc2/x5/pm9wfq3hleV7ehkjrVQ2RPdi8vljugpo1
         5E3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oZ5KzCEi;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id n26si301504qkg.5.2020.09.03.15.46.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:46:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id l191so3275899pgd.5
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:46:11 -0700 (PDT)
X-Received: by 2002:a63:ca12:: with SMTP id n18mr4721941pgi.371.1599173171199;
        Thu, 03 Sep 2020 15:46:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b18sm3633660pgk.36.2020.09.03.15.46.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:46:10 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:46:09 -0700
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
Subject: Re: [PATCH v2 26/28] x86, vdso: disable LTO only for vDSO
Message-ID: <202009031546.98CA2EF4@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-27-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-27-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=oZ5KzCEi;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
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

On Thu, Sep 03, 2020 at 01:30:51PM -0700, Sami Tolvanen wrote:
> Remove the undefined DISABLE_LTO flag from the vDSO, and filter out
> CC_FLAGS_LTO flags instead where needed. Note that while we could use
> Clang's LTO for the 64-bit vDSO, it won't add noticeable benefit for
> the small amount of C code.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Moar DISABLE_LTO...

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031546.98CA2EF4%40keescook.
