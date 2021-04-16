Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBI6I5CBQMGQEJVVTAZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id AF21E362C13
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 01:56:21 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id p11-20020a17090ad30bb029014dcd9154e1sf5005317pju.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 16:56:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618617380; cv=pass;
        d=google.com; s=arc-20160816;
        b=pzYl6hxgLEaROb97WVkOtiec/juhIwuykSPHQE58gegPciId5o9wx66JPhN6aod1HG
         S0B9hQHpQvdIWdgdusXzmwv41ta1f3u8+WFoU1mmP+HHULd47J41Sc6ZD76wDg9XNn/X
         SGAxDW39MonTj4Qiz+Y7uXbXYG4zk4BTLcL3Jih4v9ShgrvgKt5Jv7uxUIzW2eCIysVm
         ykenNMxZZ1cqsS/1j4l8epiuVqOYpqH9ZrDkFkIRciJKvP3Bhwx8Md31U9A1jsRqu6tc
         8RTY+VbhKZmoaI/Y1wddxVyvJKAZvGpeVZ9V68ReHRmPnzEyi0FROFKmMg09N6kxrrDo
         6J0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=TG82rQxODDpG7UBCzOPX4GTIXJmFZDBrW1tJYd825Fs=;
        b=AJsR71hod27sGerhmmuu9OhGEwxLj6CqJH5kSdb/SFJcw8/Nu0UoiXc+TwjqbXgPpp
         k6h4x5kXlxFy7gD5ZymV8JLS25/9o5wiGTdAGp5xZNuduJyGY10jLzmoVyNpAaDY92Pf
         0+oOzdstW9NqQNPYTV0T3hdJuJPOwNGyKbMVVfNPUszR00BpjTyf3Y0p/DgQFHn6LpC+
         r8dFHk8cuzUmxLnfGbIm/kESceVrpYhuoLQ/FhE99jsPMoMmm7DXM9BNVDNbgeuF08t1
         7M0F8Uv5wJInjZw43LW0RN632QaXS3tl33FhN5S5wj/DhV+njTdf7WxGF5XFZV4kT2WU
         YAEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fzHg1spc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TG82rQxODDpG7UBCzOPX4GTIXJmFZDBrW1tJYd825Fs=;
        b=DSqdgpxMKNgw13qdn8ovijpUizryT6Wbo1ZnukXGrkYOElF0twLfJZnRl3bxjPtIU4
         waymX0pRXs4Yz/CkPGCsPQnj4FeqB26JC5Rs7Gk9Ct8LeaIERfeVTnRS/yJUiMt5MRN9
         9xVBEaXSbNV8Vj2Lhzh2S+LbYJ+SZAdKN1N8sbls9sqYxLO7XaAf6HPs0LmsVA+HKQbM
         1auFr8sYhhDWAs2WXjsi4Z0nLI8U70abXrAxoe4+3kqfvRgJigIwprufw76dPXn3kgz+
         dIV7H4/kp85C4qb81FF9dPBm2tcG9c/Gy2v6oFDG0qLLz0LNY2PGai8FO2Pjf22baoGb
         gG6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TG82rQxODDpG7UBCzOPX4GTIXJmFZDBrW1tJYd825Fs=;
        b=t+ZEtNIi6IR5KOH6jk9K6eQcrbKVW6FGbPhdpV00C3cobSddqxaxHA1YD3uZ14E5er
         EgmxYWtco06n7Zfgi3NKuNMkQxEOnSFK+5zYWr8khIc+Znz2WRJR0+xvr0OZgy0/tS25
         0WS8zEiUw3WSao1LWaJNc/HB6YlYuR4ocPD0PPI4jmwc1BMfu3O2NoFGR0DlTss7ck4m
         PhYjG0/bx7mRjO9YKXp2CgndvLPNXE9cU1r00hTf1zjd71+w1pK2B2NFbjU3Ngza7PCM
         9lMc6w30LnUaOIuaAuptqhPs0yf0oiuIjdwEnbUJytcfm7IgmEc08le5DywCP3PHRAHT
         xSbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NdEF3hzs+0bX6JfmlxIcMmWejMsJCh3U9VrhY/kxfmUB1JLlB
	PoTK1jmruUVpYxIBJWeEMto=
X-Google-Smtp-Source: ABdhPJySfTJIGG4SNtnyEbYmZwHx7TkM6K6AeJ5hFTROqnM9j2Y80gxtrhC8CZ2OZbN1mHpOh4Q3Yg==
X-Received: by 2002:a63:220d:: with SMTP id i13mr1324585pgi.446.1618617380440;
        Fri, 16 Apr 2021 16:56:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:860c:: with SMTP id f12ls5797962plo.5.gmail; Fri, 16
 Apr 2021 16:56:19 -0700 (PDT)
X-Received: by 2002:a17:90a:5103:: with SMTP id t3mr12327784pjh.68.1618617379268;
        Fri, 16 Apr 2021 16:56:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618617379; cv=none;
        d=google.com; s=arc-20160816;
        b=M2iiTnB63eapCK5RMYbhbxik0QiE/2VqbdTMMLI9gUw9bVyobRzrBPPNeFK5JnDE47
         Wharm7BexzF2316Qj6GcYEHjiaDM/kwVuQXl+4pJG7WISNZAa/MN35Rce1khjXO5YPKC
         Lw4vMl/z1BvU5OepQ8brH/XWfearauR9R28sRny8V7WXFrCRiOpm4ivD1nmyogDOhI/W
         E2EPWn2ZxxTGY6ua/b1vEMqDYiLLcekVwKtVoHZe1gf+ti1jZNVXdip7xrJxfrYJ0eap
         otIjLUvvJb2Lnia0ifhy7ZOR4Dsn22Ie8aC/UUciLwvN+IogGBypKZOiMned8ho7IoEs
         BBkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0ROwS2iwVkP5MLz3ud+/DGta/Lb7M4iHXAMw79DXVDA=;
        b=hDaGoUtW4+F11CCME8wPC2tmowRFjbAdwbrbtvcNdu7Z6162JED9iQvT4JYBypxyFs
         MSl9k7xX+n7eUPtvL5F3HNpGSEnlpmGaGsoBpXXN6rKf2uaAWX2RasIpIBqwJjMwXY31
         YapbokdOU3QvIUY7+w9u0WAeVnplEWCLTAdc7LMZOyU6DtB3PDJn2l9n0/OiK2Jlx1Xv
         z1fIPPTz6znVdLAnRLwphrlZ+dA/z/McEcNgxsAaGZhF8EUgkAfou5nG7JzuK9oxFkse
         D92c/b2scLmQBdpzPnRVC0Af9c+aJxUvD+AkBm+gCrNFTZ2Smvx34euK24h3qmc8vw/f
         eROg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fzHg1spc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id fy20si433926pjb.2.2021.04.16.16.56.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 16:56:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Received: by mail-pl1-x633.google.com with SMTP id d8so14785166plh.11
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 16:56:19 -0700 (PDT)
X-Received: by 2002:a17:902:e5d1:b029:eb:7ec2:648e with SMTP id u17-20020a170902e5d1b02900eb7ec2648emr10275443plf.30.1618617379040;
        Fri, 16 Apr 2021 16:56:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j26sm5588829pfn.47.2021.04.16.16.56.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 16:56:18 -0700 (PDT)
Date: Fri, 16 Apr 2021 16:56:17 -0700
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Sami Tolvanen <samitolvanen@google.com>, x86@kernel.org,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 06/15] x86: Avoid CFI jump tables in IDT and entry points
Message-ID: <202104161642.B72BD68@keescook>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-7-samitolvanen@google.com>
 <87im4luaq7.ffs@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87im4luaq7.ffs@nanos.tec.linutronix.de>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=fzHg1spc;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::633
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

On Sat, Apr 17, 2021 at 12:26:56AM +0200, Thomas Gleixner wrote:
> On Fri, Apr 16 2021 at 13:38, Sami Tolvanen wrote:
> > With CONFIG_CFI_CLANG, the compiler replaces function addresses in C
> > code with jump table addresses.
> 
> Fine.
> 
> > To avoid referring to jump tables in entry code with PTI,
> 
> What has this to do with PTI?

Short answer: in earlier development of this series, entry routines
were attempting to jump to the (unmapped) jump tables, and IDT code had
similar issues. But yes, the commit message can be improved; I'll let
Sami explain the details.

> > disable CFI for IDT and paravirt code, and use function_nocfi() to
> > prevent jump table addresses from being added to the IDT or system
> > call entry points.
> 
> How does this changelog make sense for anyone not familiar with the
> matter at hand?
> 
> Where is the analysis why excluding 
> 
> > +CFLAGS_REMOVE_idt.o		:= $(CC_FLAGS_CFI)
> > +CFLAGS_REMOVE_paravirt.o	:= $(CC_FLAGS_CFI)
> 
> all of idt.c and paravirt.c is correct and how that is going to be
> correct in the future?
> 
> These files are excluded from CFI, so I can add whatever I want to them
> and circumvent the purpose of CFI, right?
> 
> Brilliant plan that. But I know, sekurity ...

*sigh* we're on the same side. :P I will choose to understand your
comments here as:

"How will enforcement of CFI policy be correctly maintained here if
the justification for disabling it for whole compilation units is not
clearly understandable by other developers not familiar with the nuances
of its application?"

This is a completely justified position to take. Thank you for calling
it out; we'll make it better.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104161642.B72BD68%40keescook.
