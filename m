Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTEASP6AKGQE6UVY6AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A6628C2DE
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 22:45:02 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id x24sf13360904pfi.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 13:45:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602535500; cv=pass;
        d=google.com; s=arc-20160816;
        b=zJWg7JVvzxlXIu+eLHZtXQAp+fj06a53mwxA+zvm5NXISkS2A3uOJ0nLqx3C25j6dP
         TUw7BJW85pDOUE5a3qWAlxo867BPIKCZZOKyC02w+x4MxlHXKgDapIQXa7VvTOC7l4mP
         +1Mfc+hj6YOui1619g7S5Waot8XqilGy14cbWBhAFJDLRCxHLVs6yxsMqe1pA3inMt6t
         CNDDC/ozAKdm+78yuEMzdqJSf1WJdEx5JjfmZt3RcGvKSj2KtzLkazMRukVQOEU6Q26D
         Y0B+KgL6KS6A21DKhSpxDQdryNCcYSM3DRA4pt++EyQuKSQDm9enry5MxhaqGKbUIjYq
         ikjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=njLA252bHAlEoANlhG9g+vYcgeWV9YNRlQi3qu5YFR0=;
        b=tVpTNMi14SjmR7UHRstcPQoOksuSudg7GyDSyDTfWcSbV6RUCUPYXUAIe5ktZjBL8J
         WGO7At+I2m+CaK+nsX9wOSIofNKKF2jkQKdTmXApm4RHeUCkoOj19KoL/YwpDV3Sc217
         7j6lgYP+KbDYydvohL0il2VHH3hJXkE2fQSpUfFhpozkbMF8jI9VPb6tER1LcI75RgIB
         hk9dbl9YVIImMsH9JPmyM68acvuoq0R6RVe2CiO5F/i/WszuZDkX/WbnYH2i+dy9zSUG
         umi+f2TAcmbf26BOxUcZNW6HxSJgm0GNkAC0pNmPY/1rpe5tgX+nS8B4/RE8kGAfQGzQ
         9nXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iBvAVUob;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=njLA252bHAlEoANlhG9g+vYcgeWV9YNRlQi3qu5YFR0=;
        b=lRLzt6lBqjE+vWlRwW716qAVaBV22aUJohxURkGqE7GvVMLZnLiiMLIoe4HMxCvDOP
         3Nn7xdanlvfZslYOf+dONaDzPlyfaM+q8D0JUWm9mNyPV+QZnUUOcPuoT1kO4yntMAbB
         KG0OQOYW6tEtRhZw/xGHgXNpSemWm/VNENeknGIYI7M9md2vJLlXKNtJGpc+avvrYDN4
         bh97Z8Ty8macmrN+pgryd1oeRDVlt9Dj+CopIIj0+3ELUvdv1rqa/a/z/0hjV12gb47u
         7KUoOFlsmKBe7KEybBzkSuXnjGTtGbREKVD1LuP9LRUN0/1d4kXcKWs92kIg53SN3K8p
         rcDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=njLA252bHAlEoANlhG9g+vYcgeWV9YNRlQi3qu5YFR0=;
        b=DfkqVcPIFh7BWZI30j7+SS/g+K4pD/98vAa/XTiFR5aUu1dMRmu206NWFGoXYcre71
         WelFGZwPs0XIlG7dIfclxrXJchaqxu9pIjLWEgiSDHkjniJPKGBE7tY4vHQsxQz2yC7j
         DmDWyyT+kpztw6S4C4fL8+kPSMTFITmpFrTbcz54u8ofbuB9rPWB44TxTpCQcqmNZ/gM
         3ccvuMq4kUVe4iTASBF5RybBo4+SnAoOvZDhfU0f4aIiUCFoXI1UyzfRSAGxuh4za6pV
         OtYs7R6o9iah8mnE435nuSrT5Yog38vP2wGaM/SugehKz2lq+JJtatoLObZYI8N+S9yG
         hJ+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MHsMhqKz7YetpYSMxEYe2+10z9vAvtqo3ha8iQpdPeVrguawt
	wx2c02A2A+58KNTViCXdtWY=
X-Google-Smtp-Source: ABdhPJyyH1XU000NR6VO+R1NTZ0xjC0ZgVsbbasE/jZZUTLgOG+k+SDFYIo1enAP/PY2DRlSO6fN1g==
X-Received: by 2002:a17:90b:3314:: with SMTP id kf20mr22129563pjb.19.1602535500713;
        Mon, 12 Oct 2020 13:45:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7786:: with SMTP id o6ls2024614pll.0.gmail; Mon, 12
 Oct 2020 13:45:00 -0700 (PDT)
X-Received: by 2002:a17:90a:2841:: with SMTP id p1mr21437545pjf.222.1602535500221;
        Mon, 12 Oct 2020 13:45:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602535500; cv=none;
        d=google.com; s=arc-20160816;
        b=XuIeW+YW4OtHUuF2SOa3VF008XKjrcDtplGay68lDj+LaIcUs9PLHX/3glQ6FBiAMj
         MIXfVKwA4kGBP7s0iVf6lCc2cMqKtFq9UXKWyIM4JGFofXs6SwySY9Q8af43+fxI5w0J
         Ay4AYHgaoFl2gL5m7/fx6Np4j7l+d8SoOsEKtwDB9TBpg62vZtNyTBWgSELdOFyHbnp6
         YqVHymFt0ly8SQr/55X7v8SNGaKg2YrOuV7iLIJVr0AL7k+I1rNzjhbGwF8Ll/ur4xFj
         BoFej1jzZlAqggI7SS2dq/07XPpcvkBvSXI6VQ/GSF0kjrJjDeq5xteej9jrvGIMpRsi
         fikg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/je9IGonHzFsuF/SNifo0ZcXgtv4yeAu6zOR0qhli4g=;
        b=JfWE9OpC3TZOD71OiJhs8cy6RbpeAgfDC9Z9AtSSxJgKvD1fidG3Q4vPqf4a5tefC9
         oHDHIHkgXFy7iOYeLed6HfLsoNOhoKfxano8L5BXb0OEb4ciYTHFUu2zMycHHkEXVEli
         L5Xm8dpJaKUYdNJOCcStJQx5eYlpIgUSWLTIsM9O5OReQjHJ066NGpz41d+7DMBQdPnw
         hByPd3OQjKgurjhvEOJuydW8ly9zsA7i1CLRIqfZmEzdKwTvr9oIi02w7FP6sWafZxEQ
         vUPZTu+gUMRD6HKPWUC4xSoOtvccdy7PDdlVSGNqfNqFhF4RZ0dqTaU73P2PYuB47DjD
         Dmvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iBvAVUob;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id m62si1322238pgm.2.2020.10.12.13.45.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 13:45:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id p11so9322977pld.5
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 13:45:00 -0700 (PDT)
X-Received: by 2002:a17:902:cd07:b029:d3:9be0:2679 with SMTP id g7-20020a170902cd07b02900d39be02679mr25530237ply.68.1602535499967;
        Mon, 12 Oct 2020 13:44:59 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v20sm16032300pjh.5.2020.10.12.13.44.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2020 13:44:58 -0700 (PDT)
Date: Mon, 12 Oct 2020 13:44:56 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v5 25/29] arm64: allow LTO_CLANG and THINLTO to be
 selected
Message-ID: <202010121344.53780D8CD2@keescook>
References: <20201009161338.657380-1-samitolvanen@google.com>
 <20201009161338.657380-26-samitolvanen@google.com>
 <20201012083116.GA785@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201012083116.GA785@willie-the-truck>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=iBvAVUob;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
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

On Mon, Oct 12, 2020 at 09:31:16AM +0100, Will Deacon wrote:
> On Fri, Oct 09, 2020 at 09:13:34AM -0700, Sami Tolvanen wrote:
> > Allow CONFIG_LTO_CLANG and CONFIG_THINLTO to be enabled.
> > 
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > ---
> >  arch/arm64/Kconfig | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index ad522b021f35..7016d193864f 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -72,6 +72,8 @@ config ARM64
> >  	select ARCH_USE_SYM_ANNOTATIONS
> >  	select ARCH_SUPPORTS_MEMORY_FAILURE
> >  	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
> > +	select ARCH_SUPPORTS_LTO_CLANG
> > +	select ARCH_SUPPORTS_THINLTO
> 
> Please don't enable this for arm64 until we have the dependency stuff sorted
> out. I posted patches [1] for this before, but I think they should be part
> of this series as they don't make sense on their own.

Oh, hm. We've been trying to trim down this series, since it's already
quite large. Why can't [1] land first? It would make this easier to deal
with, IMO.

> [1] https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=rwonce/read-barrier-depends

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010121344.53780D8CD2%40keescook.
