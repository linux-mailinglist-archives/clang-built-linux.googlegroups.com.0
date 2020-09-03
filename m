Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBR7FYX5AKGQE2EXJHFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 9618325CE19
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:48:40 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id x3sf2658933pga.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:48:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599173319; cv=pass;
        d=google.com; s=arc-20160816;
        b=loPWxXn4gPe8k5yHKU+cu1WWBx0f3kNIHuJpPIYakfa7/vAHUR0Or6+ksDbizkbMTd
         lUhprQO25dKQiDvBWW7JY60eWzu+u29jCn/PlMn+WmbQ18dFUQf6vI2dTYM4aokyn7Vl
         3uoDF7RUVThRI5NwWv3mSAIWGk7PikHqPSkTLkQ36uIQtxyh1WEiWItk5n4o7P2yyvjl
         1LBB0ZO0T3grWthYI1/4CSg136u5IlRiKBkWFxIvB7qKr0T4hETek+7tYgeCilgBFXey
         BuNT1nz3HVoV6HofganAACVOIg3veAth9GI8PLAPurwxxfAhqYKiobUIQWCPS4q4AZuA
         TvdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NCqEoHcZ+7vBU0oGfO/NcA2A1+BtLb9exopg+nqv4eM=;
        b=piYSJ5962rqNUC/eW3VrQTlvb8MZB33zro8GQEpimGMj9MWWN15SQxtR5kTvRJAZ/s
         YF6gw6+VpfqEiM4f4GnTzAUAmUDu2TBO9i7nuwgrzcA2rTvjKuGe9HMAsRO2Gs5VAuD4
         +BeOHqplcJEZGqwCwFPQ7gr97L8MJfnOwpUGfQBBEfAy/2pv8jYZ7FYhlMQ20zH++xQD
         ETMhytpLCfnzVRwBZp8nPIBsWyvCj2MvwiqiQssgrDTED6qVRwngkYUm68f20YxLKt6j
         1crQ0nM0G4zeM1iteOWIfUlWvIJp1r/c9D/PWP8vyJwe0Ad2lK5LS9M84V5QXOrJx8tz
         9xbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Oywi+Oec;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NCqEoHcZ+7vBU0oGfO/NcA2A1+BtLb9exopg+nqv4eM=;
        b=XXOgyi5Zrd3/hS4ikWyi9/igLXhnKpnxBDuQYC9Ak4KtwVEH1BLXc7nXyg2fa48EmN
         mSdEI2IC9I7iZV9DNtrI9HhCViVKp2IR2nW/zm8KsR9APHQQSNnt1U5OUO6p7DE0+3cJ
         cJ6+9AfWLFa2/Z+9jm6TBLXzlacq97Jn7fV1d5sIypUXYzYHSKrOMB/w7BCFi2MCx9H0
         gM4FCT3Yg7lslirJdwzMpa7XT48evVTI6Cp2b9ftm+4w1N3v3gquaXSCO8ya+6EDzkIv
         aZO1o0SaG25ImlHgStLyUo8MwIUFazHHbNtK+Rm+sQpEPsC8GiZ67P/g65mVY4+blvE5
         yPLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NCqEoHcZ+7vBU0oGfO/NcA2A1+BtLb9exopg+nqv4eM=;
        b=cFz2HngwVB0hEoo3uGKsaC4hPCl2vRflv+01uSmlMGBWeskMEKZtKNXvMHHO6stF4I
         mhwgaDWSFeN+9CDjgibDTD3ww5owjoQ5e9t3IWZAnJ8s/6y5rwb1bQkpgDoilMWTw/RE
         4otw6dF/6yWgVhiuxEYe+5pHdwxJnzOGM7eORGtJZZpsxjaFH9RSxm9wZyTM/YQMKAK/
         DGZbtZtZzSvjE7UDp1FUZW0YuorREXcIWVSQaZo37asZ3d0LdYqFm5vmTWOdLL64tjA1
         owFKdiE4YAj304NQGUAqbz3sb6+CbsZxIbdOgorfaLyZYv4Cw2HXjNdTOGuU8k451x6D
         1Apg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+vEDQG2vzvmMgIg+ywL0Lx0bs054Ud2/MTdnemTF8+2HzHXBo
	2k5ND8Gm+mGpRQIBmPXTpWI=
X-Google-Smtp-Source: ABdhPJziFeFiApa9Rzm+Uqkm0PCp2DvYJZal6ZT6rNbgen4cj5qxDrDjvxE0yMzAnV/ogSuWNooeVQ==
X-Received: by 2002:a17:90b:1256:: with SMTP id gx22mr5464333pjb.47.1599173319227;
        Thu, 03 Sep 2020 15:48:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:be04:: with SMTP id r4ls1910958pls.2.gmail; Thu, 03
 Sep 2020 15:48:38 -0700 (PDT)
X-Received: by 2002:a17:90a:307:: with SMTP id 7mr5440906pje.37.1599173318841;
        Thu, 03 Sep 2020 15:48:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599173318; cv=none;
        d=google.com; s=arc-20160816;
        b=MViNkcm4+GkvuwY5Zj6p0vmmN1POpEwEr3vhhJvHrqKCNa8Cy8fvsTiSNe/nPWM0s/
         iIT9meJslepWXW1B5E0agjRN8Pr+vGPDYje0kD+fgZzn/gRAUZ90hICTKINnfZ1o/9gh
         c2HZqzQE0I9QTd/Al3+mVDETmkX53e5NeeXjZoUmUd1gLxGw1LztTl13huZOltagKKHu
         GOu8OCBlDE8qLxpHHveEw88BtyVPXqzK/6Ll5hrHH7ifDXidZCaBrKBuCkXwxwyVqLOR
         gAEgrsjVL40uIWueNbzVgYIhVLzxh/QtXBLuUdeGbhuZPLoUtOojU/or8A5y+YmKcXVD
         aC1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=N0kZAZSHXumzFlr+P3KSPa/xm/RvLBA66H9sz+ks+Hk=;
        b=RYjbn4L3iFs34yFZxh/LhnB7WjjkfNsOmt2P5ttVq90R24tq/BjnRkaBGEsXFKaVh+
         oCuScHQOCsLJFxIkBxu79d0xPw1PPvi5Ley/3BRbV7fTtIBe8PMEBICDYQcMhu4gQiFQ
         V3HQqgDgbUNmolW76xSHnpPisspNL8S1vSkvkTobCOJZlFM1NZ/A9a0OzafkM0BkUJv1
         9Db6KQWHe4d85yheZTcPT7RZwFVRQjFvGhtUo3+gI2ogmeFiwTqdON5qARjp9L9aUWNi
         +JFSi0fFjdhkFeJ646dtuZ+hF4R175LGB8WJzVhmOAkfSFy5sW0J+EoRNa2t7Fn3cBA5
         wxUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Oywi+Oec;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id bj6si257578plb.4.2020.09.03.15.48.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:48:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id g29so3288984pgl.2
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:48:38 -0700 (PDT)
X-Received: by 2002:a63:f546:: with SMTP id e6mr4666553pgk.7.1599173318626;
        Thu, 03 Sep 2020 15:48:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q71sm3612032pja.9.2020.09.03.15.48.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:48:37 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:48:36 -0700
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
Subject: Re: [PATCH v2 28/28] x86, build: allow LTO_CLANG and THINLTO to be
 selected
Message-ID: <202009031548.84902F3F@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-29-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-29-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Oywi+Oec;       spf=pass
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

On Thu, Sep 03, 2020 at 01:30:53PM -0700, Sami Tolvanen wrote:
> Allow CONFIG_LTO_CLANG and CONFIG_THINLTO to be enabled.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

I think it might be worth detailing why these arguments aren't handled
in the normal fashion under Clang's LTO. Regardless, it's needed to make
it work, so:

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031548.84902F3F%40keescook.
